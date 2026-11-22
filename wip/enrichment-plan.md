# Deep research and enrichment plan for the Data Center MEP-QS book

## Context

The book has 22 chapters. Almost everything in the outline has been carried over, but the content is uneven:

- About 55 of the 114 `##` sections have fewer than 3 sentences of prose.
- The thinnest chapters are Ch 16 (449 words), 15, 14, 19, 18, 17, 04 and 12.
- There are no figures at all (`lof: false`).
- 11 bibliography entries are `[REVIEW-SOURCE]` placeholders (job ads and Scribd uploads), and one of them, `ref10_lvi_epc_manager`, is cited 18 times.
- About 20 standards are named in the prose without a bib entry: NFPA 2001, 72 and 76; ISO 14520; IEC 61439, 60364, 62271, 61850, 62040 and 62305; NEC (NFPA 70); UL 9540/9540A; EN 50272-2; TIA-942 and TIA-607; the SCL Protocol; ISO 19650; COBie; and Incoterms 2020.
- The cost figures date from the original outline. The $9,000/min downtime figure, for example, comes from an old secondary source.
- Small items were lost from the outline: the "60+ weeks" generator lead time is missing from Ch 9, and the flow figures don't quite match (12.47 vs 12.48 L/s).

You asked for all four kinds of content:

- topics the book doesn't cover yet,
- primary-source citations,
- outline items that were never migrated,
- current market data.

You also asked for all three kinds of figures: diagrams drawn as code, Python charts, and openly licensed images. The research comes first and is saved as a cited findings brief. Chapter edits come later, in stages that can each be reviewed on their own.

**Prerequisite:** the other agent (Antigravity) has uncommitted Stage 1 cross-reference edits in 21 of the 22 chapters plus the intro, and it plans a glossary in Stage 2. No chapter editing in this plan starts until that work is committed, so the two agents never edit the same files. The research phase (Stage R) touches no chapter files, so it can run now.

## Stage R: deep research (run now, no chapter edits)

Use the `anthropic-skills:deep-research` skill, split into five tracks. Each finding is recorded with: the claim, the value and unit, the source's title, publisher, edition and date, the URL, the access date, the licence (for images), the target chapter and section, and a confidence rating. Use primary or official sources first. Paraphrase only, never copy standards text, and record nothing without a URL.

1. **Bibliographic metadata for the standards.** Get exact titles, current editions, publishers and URLs for the ~20 standards listed above. Find primary replacements for the 11 `[REVIEW-SOURCE]` entries. For each of the 11 unused works-cited entries (ref13, 18, 20, 27, 29, 33, 36, 38, 40, 41 and 42), decide whether to cite it or drop it. Output: draft BibTeX entries for Part A.
2. **Market data for 2025–2026.** Collect:
   - published $/MW construction cost indices (Turner & Townsend Data Centre Cost Index, Cushman & Wakefield Data Center Development Cost Guide, Linesight, the AECOM Middle East handbook, JLL);
   - lead times for transformers, generators, MV switchgear and chillers;
   - the cost of downtime (Uptime Institute's annual outage analysis), to replace the $9,000/min figure;
   - commissioning cost percentages.

   Each figure is tagged with its region (US, UK or GCC) and an "as of" date.
3. **Topics not covered yet,** each mapped to the existing chapter it belongs in. No new chapters; the 22-chapter structure stays:
   - immersion cooling and the rear-door heat exchanger premium (Ch 7);
   - 800 VDC and high-voltage DC rack power (Ch 11);
   - battery storage and grid-interactive UPS (Ch 10);
   - on-site gas turbine and fuel-cell bridging power (Ch 9);
   - heat reuse (Ch 5);
   - prefabricated and modular power and cooling skids (Ch 18);
   - embodied carbon under RICS WLCA 2nd ed. (Ch 3 and 22);
   - water and WUE in the GCC, plus GCC utility interfaces such as SEC and DEWA connection charges and Saudi Building Code (SBC) fire requirements (Ch 8, 13 and 15).
4. **Facts to fill the thin chapters:**
   - Ch 14: VESDA sensitivity classes under EN 54-20 Class A/B/C, and measurement units.
   - Ch 15: leak detection, water treatment and RO, and drainage under NFPA 75.
   - Ch 16: TIA-942-C rating levels, and fibre and structured cabling takeoff units.
   - Ch 17: BMS, EPMS and DCIM point-count norms.
   - Ch 18: RFQ and bid-leveling practice.
   - Ch 19: the SCL Delay and Disruption Protocol 2nd ed., and liquidated damages under FIDIC.
   - Ch 20: what each commissioning level (L1–L5) checks.
   - Ch 22: COBie and ISO 19650 handover, and spares schedules.
5. **Openly licensed images.** Search Wikimedia Commons, US government sources (DOE FEMP, LBNL Center of Expertise, NREL, where public domain or CC-licensed), and other CC BY or CC BY-SA photos of switchgear, CRAHs, cooling towers, VESDA pipework and busway. For each, record the author, licence, URL and required attribution. Keep only images whose licence is compatible with CC BY-SA 4.0.

**Output:** everything goes into the staging folder described below, not into `book/`. Paywalled standards are cited for their scope only, from the publisher's catalogue page.

## Staging folder: `wip/` at the repository root

Material is drafted and sourced here, then moved into the book one item at a time once it's ready. It sits outside `book/`, so Quarto never renders or deploys it, and the source lint (which only scans `book/**`) ignores it. It is tracked in git so that you and every agent can see it. You approved the idea, so S0 adds it to AGENTS.md Section 4 and the README tree.

```text
wip/
├── README.md                 # lifecycle, status levels, promotion checklist
├── research/
│   ├── 2026-11-findings.md   # source register + chapter-by-chapter map
│   └── image-register.md     # candidate images: author, licence, URL
├── sources.bib               # draft BibTeX (not loaded by the book)
├── chapters/
│   └── 14-fire-detection-vesda/
│       └── vesda-classes.qmd # one file per new section or table
└── figures/
    ├── fig-ofci-cfci-seam.py # prototype figure code
    └── candidates/           # downloaded licensed images
```

**Status levels.** Each draft opens with front matter: `status`, `target` (chapter file and the heading it goes under), `sources` (the keys it cites) and `owner` (which agent or person). The levels are:

- `raw`: notes and research excerpts.
- `sourced`: every claim has a citation key in `wip/sources.bib` or `book/references.bib`.
- `reviewed`: you have read it.
- `ready`: it can be moved into the book.

**Moving an item into the book** happens in one commit per item. The draft's text goes into its target chapter; its BibTeX entries go from `wip/sources.bib` into the Part A section of `book/references.bib`; its figure code goes into a `#| label: fig-*` cell. Then the draft is deleted from `wip/` (git history keeps it). Before the commit, the AGENTS.md Section 5 lint must pass, and nothing moves until it's marked `ready`.

**Findings file contents:** the source register (claim, value and unit, source, date, URL, access date, licence, target, confidence), a chapter-by-chapter findings map, and the open questions where sources conflict or are paywalled.

## Action plan for the chapters (later stages, one commit each)

**S0: Set up the staging folder** (can run now, since it touches no chapters).
- Create `wip/` and `wip/README.md` with the status levels and the promotion checklist.
- Add the folder to AGENTS.md Section 4 and the README tree.
- Add a short AGENTS.md rule: drafts belong in `wip/`, and agents never write unreviewed prose straight into `book/`.
- AGENTS.md and CONTRIBUTING.md have just been changed by the other agent for its glossary work, so re-read both before editing them.

Stages S1–S6 below all work the same way: draft in `wip/`, take it to `ready`, then move it into the book.

**S1: Bibliography.**
- Add Part A entries from track 1 to `book/references.bib`.
- Chapter by chapter, swap `[REVIEW-SOURCE]` citations for primary ones, starting with `ref10_lvi_epc_manager`.
- Remove or cite the 11 unused entries.
- Add `[@key]` to each standard that is currently named without a citation.

**S2: Figure setup.**
- **Python figures:** charts with `matplotlib`, and single-line electrical diagrams and schematics with `schemdraw`. They run at render time in the same way as the existing calculator cells (`#| label: fig-*`, `#| fig-cap:`), so they work in HTML, PDF and EPUB without needing a headless browser. Add both packages to the `pip install` step in `.github/workflows/deploy.yml`.
- **Mermaid:** for process flows only (variation workflow, commissioning gates). PDF and EPUB need a headless browser for these, so add `quarto install chrome-headless-shell --no-prompt` to CI. Confirm that command name against Quarto 1.11 before using it.
- **Images:** candidates wait in `wip/figures/candidates/`. Only images marked `ready` move to `book/images/` (new folder; needs approval and a tree update), with the attribution in the caption plus an "Image credits" list.
- Set `lof: true` in `book/_quarto.yml`.
- Figure code follows the 72-character rule. Captions carry no links (AGENTS.md Section 6.3).

**S3: Figures (about 15).**

| Ch | Figure | Method |
|---|---|---|
| 1 | CapEx split (MEP / CSA / prelims) | matplotlib, from `@tbl-capex-distribution` |
| 2 | OFCI/CFCI terminal-point seam | schemdraw block diagram |
| 3 | Tier cost multiplier bars | matplotlib, from `@tbl-tier-redundancy-cost` |
| 5 | Chilled water plant and thermal storage schematic | schemdraw |
| 6 | Hot/cold aisle containment section | matplotlib patches, or a licensed photo |
| 7 | Facility water → CDU → rack loop isolation; flow vs ΔT curve | schemdraw; matplotlib reusing the Ch 7 calculator |
| 8 / 10 | Tier III catcher vs 2N single-line diagrams | schemdraw |
| 9 | Fuel autonomy vs tank size | matplotlib |
| 11 | Cable tray fill cross-section | matplotlib, reusing the Ch 11 calculator |
| 12 | Mesh common bonding network schematic | schemdraw |
| 14 | VESDA sampling pipe network | schemdraw |
| 19 | Variation and claim workflow | Mermaid |
| 20 | L1–L5 commissioning gates and payment milestones | Mermaid |
| 22 | Handover and final account timeline | matplotlib |

Extend the existing calculator code (Ch 7 flow, Ch 11 tray fill, Ch 21 IST) instead of duplicating it.

**S4: Thin chapters** (Ch 14, 15, 16, 19, 22 first, then 18, 17, 04 and 12, then the thin sections in Ch 20, 17, 11, 03, 02 and 13).
- Add the missing BOQ / measurement tables (`#tbl-*`) to Ch 14, 15, 16, 19 and 22.
- Bring each thin section up to a substantive paragraph using findings from track 4.

**S5: New topics.** Add the track 3 topics as new `##` sections inside the chapters they map to.

**S6: Market data refresh.** Update the benchmark tables and figures with dated 2025–2026 values from track 2, with "as of" notes and regional tags. Restore the "60+ weeks" lead time and fix the 12.47/12.48 flow mismatch.

## Rules that apply to every stage

These come from AGENTS.md, Sections 2 and 6:
- Every new claim gets a `[@key]` citation, preferably to a Part A source.
- Paraphrase only.
- One stage per commit, and nothing is committed unless you ask.
- `git status` is checked before each stage. Files another agent has left uncommitted are not touched.

## Critical files

- `book/references.bib`, `book/_quarto.yml` (`lof`), `.github/workflows/deploy.yml` (pip packages, headless browser)
- Representative chapters: `book/volume-4/14-fire-detection-vesda.qmd`, `book/volume-2/07-liquid-cooling-technology-cooling-systems.qmd`, `book/volume-3/08-hv-mv-power-distribution.qmd`
- New files: `wip/` (approved) and `book/images/` (needs approval when S2 starts). Both must be added to AGENTS.md Section 4 and the README tree.

## Verification

1. **Stage R and staging:**
   - Every row in the source register has a URL and access date.
   - Every image has a licence that is compatible with CC BY-SA 4.0.
   - `wip/sources.bib` passes a parse check.
   - Every draft has valid `status` and `target` front matter.
   - `quarto render book` output contains nothing from `wip/`. Check with `grep -r wip book/_book`.
2. **After each chapter stage:** the AGENTS.md Section 5 source lint reports `OK`. It checks for bare footnote digits, cross-references that point nowhere, links in headings, and code lines over 72 characters.
3. **Build:** run `quarto render book`. It must finish for HTML, PDF and EPUB, and the post-render check must report "No unresolved refs".
4. **Figures:** the PDF's list of figures has about 15 entries. Each figure shows up in the HTML, the PDF and the EPUB (open them and check a sample). The Mermaid figures render in the PDF, which confirms the CI headless-browser step works. Push a branch so the CI run can be checked before merging.
5. **Citations:** `grep -c REVIEW-SOURCE book/references.bib` is 0 for entries that are still cited, and every standard named in the prose has a `[@key]`.
