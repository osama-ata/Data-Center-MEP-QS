-- glossary-filter.lua (MIT License)
-- Runs at `at: pre-quarto` to expand Nomenclature/Glossary Divs from
-- `book/glossary.yml` and turn body-prose `[TERM]{.gls}` spans into
-- format-aware links (`#gls-key` in PDF/EPUB; `glossary.html#gls-key`
-- in HTML, rewritten to `.llms.md#gls-key` by Quarto's `llms.lua`).

local glossary = nil

local function trim(s)
  return (s:gsub("^%s+", ""):gsub("%s+$", ""))
end

local function unquote(s)
  s = trim(s)
  if (s:sub(1, 1) == '"' and s:sub(-1) == '"') or
     (s:sub(1, 1) == "'" and s:sub(-1) == "'") then
    s = s:sub(2, -2)
    s = s:gsub('\\\\', '\\'):gsub('\\"', '"')
  end
  return s
end

local function parse_inline_list(raw)
  local items = {}
  local inner = raw:match("^%[(.*)%]$")
  if not inner then return items end
  for part in inner:gmatch("([^,]+)") do
    table.insert(items, unquote(part))
  end
  return items
end

local function load_glossary()
  if glossary then return glossary end
  local proj_dir = (quarto and quarto.project and
                    quarto.project.directory) or "."
  local path = proj_dir .. "/glossary.yml"
  local fh = io.open(path, "r")
  if not fh then
    fh = io.open("book/glossary.yml", "r")
  end
  if not fh then
    error("glossary-filter.lua: cannot open glossary.yml at " .. path)
  end

  local data = { terms = {}, by_key = {}, symbols = {}, units = {} }
  local section = nil
  local cur = nil
  local in_block = false
  local block_lines = {}

  local function flush_block()
    if in_block and cur then
      cur.definition = table.concat(block_lines, " ")
      in_block = false
      block_lines = {}
    end
  end

  for line in fh:lines() do
    if line:match("^terms:%s*$") then
      flush_block(); section = "terms"; cur = nil
    elseif line:match("^symbols:%s*$") then
      flush_block(); section = "symbols"; cur = nil
    elseif line:match("^units:%s*$") then
      flush_block(); section = "units"; cur = nil
    elseif in_block then
      if line:match("^%s*$") then
        table.insert(block_lines, "")
      elseif line:match("^      ") then
        table.insert(block_lines, trim(line))
      else
        flush_block()
      end
    end

    if not in_block and not line:match("^%s*#") and
       not line:match("^%s*$") then
      local dash_k, dash_v = line:match("^  %- ([%w_]+):%s*(.*)$")
      local prop_k, prop_v = line:match("^    ([%w_]+):%s*(.*)$")
      if dash_k and section then
        cur = {}
        cur[dash_k] = unquote(dash_v)
        table.insert(data[section], cur)
        if section == "terms" and dash_k == "key" then
          data.by_key[cur.key] = cur
        end
      elseif prop_k and cur then
        if prop_v == "|" then
          in_block = true
          block_lines = {}
        elseif prop_v:sub(1, 1) == "[" then
          cur[prop_k] = parse_inline_list(trim(prop_v))
        else
          cur[prop_k] = unquote(prop_v)
          if section == "terms" and prop_k == "key" then
            data.by_key[cur.key] = cur
          end
        end
      end
    end
  end
  flush_block()
  fh:close()

  table.sort(data.terms, function(a, b)
    return a.abbr:lower() < b.abbr:lower()
  end)
  glossary = data
  return glossary
end

local function is_single_doc_format()
  return FORMAT:match("latex") ~= nil or FORMAT:match("epub") ~= nil
end

local function html_rel_prefix()
  local infile = (quarto and quarto.doc and quarto.doc.input_file) or ""
  if infile:match("[/\\]volume%-%d+[/\\]") then
    return "../"
  end
  return ""
end

local function escape_title(s)
  return (s:gsub('"', "'"):gsub("%s+", " "))
end

-- Pass 1: Guard against `.gls` spans accidentally placed in headings
local function strip_header_gls(hdr)
  return hdr:walk({
    Span = function(sp)
      if sp.classes:includes("gls") then
        return sp.content
      end
    end
  })
end

-- Pass 2a: Resolve `[TERM]{.gls}` spans in body prose
local function link_gls(sp)
  if not sp.classes:includes("gls") then
    return nil
  end
  local data = load_glossary()
  local key = sp.attributes["key"]
  if not key or key == "" then
    key = pandoc.utils.stringify(sp.content):lower()
    key = key:gsub("s$", "") -- allow plural `[CDUs]{.gls}` -> `cdu`
    if not data.by_key[key] then
      key = pandoc.utils.stringify(sp.content):lower()
    end
  end
  local entry = data.by_key[key]
  if not entry then
    error("glossary-filter.lua: unknown glossary key '" .. key .. "'")
  end

  if is_single_doc_format() then
    return pandoc.Link(sp.content, "#gls-" .. entry.key, "")
  end
  local href = html_rel_prefix() .. "glossary.html#gls-" .. entry.key
  local tip = escape_title(
    entry.abbr .. " — " .. entry.term .. ": " .. entry.short
  )
  return pandoc.Link(
    sp.content, href, tip, pandoc.Attr("", { "gls-link" }, {})
  )
end

local function letter_bucket(abbr)
  local ch = abbr:sub(1, 1):upper()
  if ch <= "C" then return "A–C"
  elseif ch <= "F" then return "D–F"
  elseif ch <= "L" then return "G–L"
  elseif ch <= "P" then return "M–P"
  elseif ch <= "S" then return "Q–S"
  else return "T–Z" end
end

-- Pass 2b: Replace placeholder Divs with direct Markdown blocks
local function expand_placeholders(div)
  local id = div.identifier
  if id ~= "glossary-abbreviations-table" and
     id ~= "glossary-symbols-table" and
     id ~= "glossary-units-table" and
     id ~= "glossary-entries" then
    return nil
  end

  local data = load_glossary()
  local lines = {}

  if id == "glossary-abbreviations-table" then
    table.insert(lines,
      "| Acronym | Full Term | Domain | Primary Ref |")
    table.insert(lines, "| :--- | :--- | :--- | :--- |")
    local single = is_single_doc_format()
    for _, e in ipairs(data.terms) do
      local link_md
      if single then
        link_md = string.format("[**%s**](#gls-%s)", e.abbr, e.key)
      else
        local tip = escape_title(
          e.abbr .. " — " .. e.term .. ": " .. e.short
        )
        link_md = string.format(
          '[**%s**](glossary.html#gls-%s "%s"){.gls-link}',
          e.abbr, e.key, tip
        )
      end
      local ref1 = (e.refs and e.refs[1]) or ""
      table.insert(lines, string.format(
        "| %s | %s | %s | %s |", link_md, e.term, e.domain, ref1
      ))
    end
  elseif id == "glossary-symbols-table" then
    table.insert(lines,
      "| Symbol | Physical or Commercial Quantity | SI Unit | Defining Eq. |")
    table.insert(lines, "| :--- | :--- | :--- | :--- |")
    for _, s in ipairs(data.symbols) do
      table.insert(lines, string.format(
        "| %s | %s | %s | %s |", s.sym, s.meaning, s.unit, s.ref
      ))
    end
  elseif id == "glossary-units-table" then
    table.insert(lines,
      "| MEP Quantity | Imperial / US Customary | SI / Metric Baseline | Standard |")
    table.insert(lines, "| :--- | :--- | :--- | :--- |")
    for _, u in ipairs(data.units) do
      table.insert(lines, string.format(
        "| **%s** | %s | %s | %s |",
        u.quantity, u.imperial, u.si, u.cite
      ))
    end
  elseif id == "glossary-entries" then
    local current_bucket = nil
    for _, e in ipairs(data.terms) do
      local b = letter_bucket(e.abbr)
      if b ~= current_bucket then
        current_bucket = b
        table.insert(lines, "")
        table.insert(lines,
          string.format("## %s {.unnumbered .unlisted}", b))
        table.insert(lines, "")
      end
      table.insert(lines, string.format(
        "### %s — %s {#gls-%s .unnumbered .unlisted}",
        e.abbr, e.term, e.key
      ))
      table.insert(lines, "")
      local refs_str = table.concat(e.refs or {}, ", ")
      table.insert(lines, string.format(
        "*Domain:* %s · *Primary reference:* %s",
        e.domain, refs_str
      ))
      table.insert(lines, "")
      table.insert(lines, e.definition)
      table.insert(lines, "")
    end
  end

  local md = table.concat(lines, "\n")
  return pandoc.read(md, "markdown").blocks
end

return {
  { Header = strip_header_gls },
  { Span = link_gls, Div = expand_placeholders }
}
