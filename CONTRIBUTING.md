# Contributing to Data Center MEP-QS

We welcome contributions from Quantity Surveyors, MEP Cost Engineers, Commissioning Managers, EPC Contract Administrators, and Mission-Critical Design Engineers.

## Ways to Contribute

1. **Primary Source Upgrades**: Replace secondary sources in `book/references.bib` with authoritative primary standards (FIDIC Silver Book 2017, RICS NRM2, CSI MasterFormat, ASHRAE TC 9.9, Uptime Institute Tier Standard, ANSI/BICSI 002-2024, NFPA 75/855, ISO 8528-1).
2. **Chapter Expansion**: Expand subsection stubs in `book/volume-1/` through `book/volume-7/` with worked takeoff examples, BOQ item descriptions, and demarcation checklists.
3. **Regional / GCC Benchmarks**: Add regional regulatory and utility coverage (e.g., Saudi Building Code SBC, Civil Defense fire codes, SEC and DEWA utility interfaces, AECOM and Linesight Middle East handbooks).
4. **Live Calculators**: Add or refine Python cells in the `.qmd` chapters.

## Authoring Rules

- **Format**: Quarto Markdown (`.qmd`).
- **Citations**: Always use BibTeX citation keys (`[@key]`) defined in `book/references.bib`.
- **Equations & Tables**: Include Quarto cross-reference labels (`{#eq-name}`, `{#tbl-name}`). Tables produced by executable Python cells use `#| label: tbl-name` and `#| tbl-cap: "..."` instead.
- **Cross-References**: Refer to each table and equation from the prose that discusses it (`@tbl-name`, `@eq-name`), and link to other chapters with their `@sec-*` ids when the other chapter covers the topic being discussed. Keep it to one or two references per sentence.
- **Headings & Captions**: Do not put links, cross-references, or citations in headings, table captions, or display equations; they leak into the TOC, list of tables, and PDF bookmarks. Reference-style headings that should stay out of the TOC take `{.unnumbered .unlisted}`.
- **New Claims Need Citations**: Every added figure, percentage, clause number, or definition needs a `[@key]` citation, preferably to a Part A primary standard. Paraphrase standards; never copy their text.
- **Code Blocks & Console Outputs (A4 PDF Width Rule)**: Keep all lines inside fenced code blocks (`python`, `bibtex`, `bash`, etc.) and their printed console table outputs to **$\le 72$ characters wide** so they fit cleanly inside A4 PDF shaded boxes ($25\text{ mm}$ margins) without overflowing or mid-column wrapping.

## Local Preview & Rendering

```bash
quarto preview book
```

```bash
quarto render book
```

Before opening a pull request, run the source lint and the post-render cross-reference check in [AGENTS.md](AGENTS.md), Section 5.

## Licensing & Architectural Decisions

- All architectural and AI-agent-friendly HTML design decisions (Quarto `llms-txt`, Schema.org `Book` + `TechArticle` JSON-LD, W3C WebMCP `document.modelContext.registerTool`, two-tier BibTeX database, and semantic `data-agent-*` attributes) are documented in [AGENTS.md](AGENTS.md).
- By contributing, you agree that your prose and table contributions are licensed under **CC BY-SA 4.0** (`LICENSE`), and your code/calculator cells are licensed under the **MIT License** (`LICENSE-CODE`).
