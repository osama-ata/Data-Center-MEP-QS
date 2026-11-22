# Agent Instructions & Design Decisions

Guidance and architectural decision record (ADR) for AI coding agents (Claude Code, Antigravity, Codex, Cursor, Windsurf, Copilot) and maintainers working in `Data-Center-MEP-QS`. Human contributors should also read [CONTRIBUTING.md](CONTRIBUTING.md).

---

## 1. What This Repository Is

An open, practitioner-grade technical book and interactive engineering calculation reference:
**Mechanical, Electrical, and Plumbing Quantity Surveying in Data Center EPC Delivery: Commercial Architecture, Technical Takeoff Methodologies, and Comprehensive Table of Contents**.

The research and outline baseline lives in [Data Center MEP-QS Outline.md](Data%20Center%20MEP-QS%20Outline.md), and the publishable Quarto book source lives under [book/](book/).

---

## 2. Hard Rules for AI Agents

- **No AI attribution, ever.** Do not add AI attribution to commit messages, pull request titles, or PR bodies. No `Co-Authored-By:` lines naming an AI, no `"Generated with ..."` lines, and no mention of AI tools as author or co-author.
- **Never commit, push, or open a PR unless explicitly instructed by the user.**
- **No bare footnote digits in book prose.** The source outline contains legacy numeric footnote markers (e.g., `...$9,000 per minute4`). When migrating or authoring prose in `book/**/*.qmd`, always replace bare digits with valid Pandoc/BibTeX citation keys (`[@key]`) defined in [book/references.bib](book/references.bib).
- **Primary sources over secondary sources.** Entries in `book/references.bib` marked with `[REVIEW-SOURCE]` in their `note` field are legacy job postings, Scribd uploads, or vendor blogs from the initial outline. Whenever expanding a chapter, replace those citations with authoritative primary standards from Part A of `book/references.bib` (e.g., `@fidic2017silver`, `@rics2021nrm2`, `@uptime2018tier`, `@bicsi2024002`, `@ashrae2021tc99`, `@ashrae2023liquid`, `@iso8528_1`, `@nfpa855`, `@nfpa75`, `@csi2020masterformat`) or regional handbooks (`@ref37_aecom_meh2024`, `@ref02_linesight`). Never copy copyrighted verbatim text from standards or Scribd uploads.
- **Keep code blocks, BibTeX entries, and printed console outputs within 72 characters per line for A4 PDF fidelity.** Even though `fvextra` (`\DefineVerbatimEnvironment{Highlighting}{Verbatim}{breaklines=true,...}` and `\RecustomVerbatimEnvironment{verbatim}{Verbatim}{breaklines=true,...}`) is enabled in `book/_quarto.yml` as a safety net, every Python source block, BibTeX snippet, and `print()` table output must be formatted to $\le 72$ characters wide so code boxes and ASCII tables never overflow or wrap awkwardly across A4 PDF margins ($25\text{ mm}$).
- **Preserve the canonical repository layout.** Do not add ad-hoc folders or duplicate files at the root or inside `book/`. Keep the exact 7-volume, 22-chapter file tree documented in Section 4.

---

## 3. Core Architectural & Design Decisions

### Decision 1: Authoring & Multi-Format Publishing Engine — Quarto Book (`book/_quarto.yml`)
- **Choice:** Quarto (`.qmd`) book project (`project: type: book`, output directory `_book`).
- **Why:** The book combines multi-volume hierarchy (7 Volumes as Parts, 22 numbered Chapters), LaTeX thermodynamic and electrical equations (`$$...$$`), wide multi-column BOQ and demarcation pipe tables, cross-references (`{#eq-*}`, `{#tbl-*}`, `{#sec-*}`), BibTeX citations, and executable Python calculation blocks. Quarto builds a searchable HTML website, a print-ready A4 LaTeX PDF (`documentclass: scrreprt`, `papersize: a4`, `25mm` normal margins, `scrlayer-scrpage` running headers/footers with chapter title, page number, CC BY-SA 4.0 / MIT license, and DOI `10.5281/zenodo.24439435`, plus `fvextra` line wrapping on both `Highlighting` code blocks and `verbatim` output blocks), and an EPUB from a single source tree.
- **Math rendering:** Uses KaTeX (`html-math-method: katex`) for fast, deterministic client-side and agent-parseable math rendering.

### Decision 2: Dual Licensing & Citability (`LICENSE`, `LICENSE-CODE`, `CITATION.cff`)
- **Choice:**
  - **Prose, Tables, and Documentation:** Creative Commons Attribution-ShareAlike 4.0 International (**CC BY-SA 4.0**) in [LICENSE](LICENSE).
  - **Code, Scripts, and Embedded Calculators:** **MIT License** in [LICENSE-CODE](LICENSE-CODE).
  - **Academic / Industry Citability:** [CITATION.cff](CITATION.cff) (CFF 1.2.0) at the root for GitHub and Zenodo DOI (`10.5281/zenodo.24439435`) citation integration.
- **Why:** CC BY-SA 4.0 ensures the Body of Knowledge and its derivatives remain open, while MIT allows quantity surveyors and engineers to freely embed the Python and JavaScript calculation functions into commercial estimating workbooks, BIM scripts, and ERP tools without copyleft friction.

### Decision 3: Two-Tier BibTeX Citation Architecture (`book/references.bib`)
- **Choice:** [book/references.bib](book/references.bib) is partitioned into:
  - **Part A (Authoritative Primary Standards & Handbooks):** FIDIC Silver Book (2017), RICS NRM2 (2nd ed., 2021), Uptime Institute Tier Standard: Topology, ANSI/BICSI 002-2024, ASHRAE TC 9.9 (Thermal Guidelines & Water-Cooled Servers), ISO 8528-1:2018, NFPA 75 (2024), NFPA 855 (2023), CSI MasterFormat (2020).
  - **Part B (Outline Works Cited `@ref01`–`@ref42`):** Preserves traceability to the 42 numbered references in [Data Center MEP-QS Outline.md](Data%20Center%20MEP-QS%20Outline.md) while explicitly tagging non-primary sources (job ads, Scribd PDFs, vendor blogs) with `note = {[REVIEW-SOURCE: ...]}` so editors and agents systematically upgrade them during prose migration.

### Decision 4: Executable Engineering & Cost Calculators (Python + In-Browser JS)
- **Choice:** Three core MEP-QS parametric models are implemented both as executable Python code cells inside the `.qmd` chapters (rendered at build time) and as client-side JavaScript functions in `window.DataCenterMEPQS`:
  1. **Direct-to-Chip (DTC) Liquid Cooling Flow & Header Sizing (Chapter 7):** Computes mass flow ($\dot{m} = Q / (C_p \Delta T)$) and volumetric flow ($\dot{V} = Q / (\rho C_p \Delta T)$) in $\text{L/s}$, $\text{L/min}$, and $\text{L/min per kW}$ (verifying the $1.5\text{ L/min/kW}$ rule at $\Delta T = 10\text{ K}$ with PG25 coolant: $\rho = 1020\text{ kg/m}^3, C_p = 3.93\text{ kJ/(kg}\cdot\text{K)}$), and selects Schedule 10S SS316L header nominal diameter ($\text{DN}$) maintaining fluid velocity $\le 2.4\text{ m/s}$.
  2. **Mission-Critical Cable Tray 40%–50% Fill Ratio Sizing (Chapter 11):** Computes total cable cross-sectional area ($N \cdot \pi (d/2)^2$), enforces the 40%–50% maximum fill mandate for thermal dissipation and future expansion, and selects the minimum standard tray width ($100\text{ mm}$ to $900\text{ mm}$).
  3. **Level 5 Integrated System Testing (IST) Utility Energy & Diesel Burn-In Cost (Chapter 21):** Quantifies full-load thermal test electrical energy ($E_{\text{IST}} = P_{\text{critical}} \times t_{\text{test}}$, e.g., $20\text{ MW} \times 8\text{ h} = 160\text{ MWh} = \$16,000$ at $\$0.10/\text{kWh}$) alongside standby generator blackout simulation diesel consumption ($\text{Liters}$ and $\text{USD}$).

### Decision 5: Five-Layer AI-Agent-Friendly HTML Architecture
To ensure the rendered HTML site is natively consumable by LLM crawlers, coding assistants, RAG pipelines, and in-browser autonomous agents without brittle screen-scraping, [book/_quarto.yml](book/_quarto.yml) implements five machine-readable layers:

1. **Quarto Native `llms.txt` & `.llms.md` Generation (`llms-txt: true`):**
   - Quarto automatically builds `/llms.txt` at the site root and generates a clean, boilerplate-free `.llms.md` Markdown mirror alongside every rendered `.html` chapter (with internal `.html` links rewritten to `.llms.md`).
   - Conditional content blocks (`::: {.content-visible when-format="llms-txt"}`) in [book/index.qmd](book/index.qmd) expose an AI-specific quick-reference guide only in the `.llms.md` output.
2. **Mandatory Per-Page YAML Frontmatter (`description` & `categories`):**
   - Every `.qmd` file in `book/` carries a concise 1–2 sentence `description` and `categories` array in its YAML frontmatter. Quarto uses these fields to populate the page summaries in `/llms.txt` and `<meta name="description">`.
3. **HTML `<head>` Markdown Alternate Discovery & Crawler Directives:**
   - Every page injects `<link rel="llms-txt" href="https://books.osamata.com/data-center-mep-qs/llms.txt">` and dynamically attaches `<link rel="alternate" type="text/markdown" href="<current-page>.llms.md">`.
   - Includes `<meta name="robots" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1">`, `<meta name="ai-content-declaration">`, and `<meta name="ai-agent-instructions">`.
4. **Dual Schema.org JSON-LD (`Book` + `TechArticle`):**
   - Every HTML page embeds a site-wide `schema.org/Book` JSON-LD block (`@id: https://books.osamata.com/data-center-mep-qs/#book`, `license: CC-BY-SA-4.0`, `isAccessibleForFree: true`) and a page-specific `schema.org/TechArticle` JSON-LD block (`proficiencyLevel: "Expert"`) whose `encoding` property points directly to the page's `text/markdown` `.llms.md` URL.
5. **W3C WebMCP (`document.modelContext.registerTool`) & Semantic DOM Hooks (`data-agent-*`):**
   - Registers `calc_dtc_liquid_cooling`, `calc_cable_tray_fill`, and `calc_ist_energy_and_fuel` via the W3C Web Model Context Protocol (`document.modelContext.registerTool` / `navigator.modelContext.registerTool`) with full JSON Schema `inputSchema` and `annotations: { readOnlyHint: true }`, plus a fallback on `window.DataCenterMEPQS`.
   - Applies modern web accessibility and agent landmarks: `<html lang="en">`, `data-agent-role="primary-technical-content"` on `<main>`, `data-agent-component="boq-or-commercial-matrix"` on `<table>` elements, automatic `scope="col"` on all `<thead> <th>` cells, and `tabindex="0" role="region" aria-label="..."` on scrollable `<pre>` code/calculation blocks.

---

## 4. Canonical File Tree

```text
Data-Center-MEP-QS/
├── .gitignore
├── AGENTS.md               # Architectural decision record & AI agent instructions (this file)
├── CLAUDE.md               # Pointer to AGENTS.md for Claude Code
├── CITATION.cff            # Citation metadata (CFF 1.2.0)
├── CONTRIBUTING.md         # Human contributor & authoring guidelines
├── Data Center MEP-QS Outline.md  # Original research outline & works cited baseline
├── LICENSE                 # CC BY-SA 4.0 (Book text, prose, tables)
├── LICENSE-CODE            # MIT License (Code, calculators, scripts)
├── README.md               # Repository overview & quick start
└── book/
    ├── _quarto.yml
    ├── index.qmd
    ├── intro-commercial-architecture.qmd
    ├── references.bib
    ├── references.qmd
    ├── volume-1/
    │   ├── index.qmd
    │   ├── 01-epc-delivery-fundamentals.qmd
    │   ├── 02-equipment-demarcation-packaging-ofci-vs-cfci.qmd
    │   ├── 03-pre-contract-cost-planning-estimating-benchmarking.qmd
    │   └── 04-digital-takeoff-5d-bim-automated-measurement.qmd
    ├── volume-2/
    │   ├── index.qmd
    │   ├── 05-central-chilled-water-plants-heat-rejection.qmd
    │   ├── 06-air-handling-containment-white-space-cooling.qmd
    │   └── 07-liquid-cooling-technology-cooling-systems.qmd
    ├── volume-3/
    │   ├── index.qmd
    │   ├── 08-hv-mv-power-distribution.qmd
    │   ├── 09-standby-generation-emergency-power.qmd
    │   ├── 10-ups-energy-storage.qmd
    │   ├── 11-lv-distribution-white-space-power-delivery.qmd
    │   └── 12-earthing-bonding-lightning-protection.qmd
    ├── volume-4/
    │   ├── index.qmd
    │   ├── 13-fire-suppression-for-white-space.qmd
    │   ├── 14-fire-detection-vesda.qmd
    │   └── 15-mission-critical-plumbing-drainage-environmental-protection.qmd
    ├── volume-5/
    │   ├── index.qmd
    │   ├── 16-elv-security-access-control.qmd
    │   └── 17-bms-epms-dcim.qmd
    ├── volume-6/
    │   ├── index.qmd
    │   ├── 18-vendor-package-management-procurement-strategy.qmd
    │   └── 19-variation-governance-change-control-claims.qmd
    └── volume-7/
        ├── index.qmd
        ├── 20-the-five-level-commissioning-commercial-framework.qmd
        ├── 21-temporary-commissioning-infrastructure-power-utilities.qmd
        └── 22-handover-final-accounts-operational-transition.qmd
```

---

## 5. Authoring & Verification Commands

```bash
# 1. Validate YAML syntax of _quarto.yml and CITATION.cff
ruby -ryaml -e "YAML.load_file('book/_quarto.yml'); YAML.load_file('CITATION.cff'); puts 'YAML valid!'"

# 2. Check that no bare footnote numbers remain in migrated .qmd files
grep -rnE '[a-zA-Z\)\$][0-9]{1,2}(\.| |$)' book/ || true

# 3. Preview or render the book once Quarto is installed
quarto preview book
quarto render book
```
