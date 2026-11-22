# Mechanical, Electrical, and Plumbing Quantity Surveying in Data Center EPC Delivery

**Commercial Architecture, Technical Takeoff Methodologies, and Comprehensive Table of Contents**

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.24439435.svg)](https://doi.org/10.5281/zenodo.24439435)
[![License: CC BY-SA 4.0](https://img.shields.io/badge/Text_License-CC_BY--SA_4.0-lightgrey.svg)](LICENSE)
[![License: MIT](https://img.shields.io/badge/Code_License-MIT-blue.svg)](LICENSE-CODE)

A Quarto book project covering commercial governance, equipment demarcation (OFCI vs. CFCI), technical takeoff methodologies, and five-level commissioning cost governance for mission-critical data center EPC delivery.

## Repository Layout

```text
Data-Center-MEP-QS/
├── .github/workflows/deploy.yml
├── .gitignore
├── AGENTS.md
├── CLAUDE.md
├── CITATION.cff
├── CONTRIBUTING.md
├── Data Center MEP-QS Outline.md
├── LICENSE
├── LICENSE-CODE
├── README.md
├── wip/              # drafts & research, never rendered
└── book/
    ├── _quarto.yml
    ├── abbreviations-and-units.qmd
    ├── glossary-filter.lua
    ├── glossary.qmd
    ├── glossary.yml
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

## AI-Agent-Friendly HTML & LLM Architecture

When rendered with `quarto render book`, the HTML output implements a multi-layer machine-readable architecture for AI coding assistants, autonomous browser agents, and RAG pipelines:

1. **Native `llms.txt` & Clean `.llms.md` Companions**: Enabled via `llms-txt: true` in `book/_quarto.yml`. Quarto emits a root `/llms.txt` index and a stripped, token-efficient `.llms.md` Markdown companion for every HTML chapter (using each chapter's YAML `description` and `categories`).
2. **Markdown Content-Type Discovery**: Every HTML page injects `<link rel="alternate" type="text/markdown" href="<page>.llms.md">` and `<link rel="llms-txt" href=".../llms.txt">` in `<head>`.
3. **Schema.org JSON-LD (`Book` + `TechArticle`)**: Every rendered page embeds structured `application/ld+json` linking the chapter's `TechArticle` entity (with `proficiencyLevel: "Expert"` and `encodingFormat: "text/markdown"`) to the parent `Book` entity and CC BY-SA 4.0 license.
4. **W3C WebMCP (`document.modelContext.registerTool`) & `window.DataCenterMEPQS`**: In-browser AI agents can invoke three deterministic MEP-QS calculators directly without scraping DOM tables:
   - `calc_dtc_liquid_cooling`: Computes secondary TCS coolant volumetric flow (`L/s`, `L/min`, `L/min/kW`) and recommends Schedule 10S SS316L header nominal diameter (`DN`).
   - `calc_cable_tray_fill`: Selects standard cable tray width under 40%–50% maximum fill ratio mandates.
   - `calc_ist_energy_and_fuel`: Computes Level 5 Integrated System Testing (IST) utility electricity (`MWh`, `USD`) and standby generator diesel burn-in fuel (`Liters`, `USD`).
5. **Semantic Accessibility & Deterministic `data-agent-*` Hooks**: Enforces `<html lang="en">`, explicit `scope="col"` on table headers, keyboard-focusable code regions (`tabindex="0" role="region"`), and `data-agent-role="primary-technical-content"` / `data-agent-component="boq-or-commercial-matrix"` attributes.

## Quick Start

Install [Quarto](https://quarto.org/docs/get-started/) (`brew install --cask quarto` on macOS), then run:

```bash
# Preview the book with live reload
quarto preview book

# Build HTML, PDF, and EPUB outputs
quarto render book
```

## Citation

If you reference this book, its takeoff frameworks, or its engineering calculators, please cite it using its Zenodo DOI:

- **Concept DOI (always resolves to latest release)**: [10.5281/zenodo.24439434](https://doi.org/10.5281/zenodo.24439434)
- **Version 0.1.0 DOI**: [10.5281/zenodo.24439435](https://doi.org/10.5281/zenodo.24439435) ([Zenodo Record](https://zenodo.org/records/24439435))
- **Author ORCID**: [0009-0006-2951-5712](https://orcid.org/0009-0006-2951-5712)

```bibtex
@book{ata2026datacenter_mep_qs,
  author    = {Ata, Osama},
  title     = {Mechanical, Electrical, and Plumbing Quantity Surveying in Data Center EPC Delivery: Commercial Architecture, Technical Takeoff Methodologies, and Comprehensive Table of Contents},
  year      = {2026},
  version   = {0.1.0},
  publisher = {Zenodo},
  doi       = {10.5281/zenodo.24439435},
  url       = {https://doi.org/10.5281/zenodo.24439435}
}
```

## License

- **Text & Tables**: [CC BY-SA 4.0](LICENSE)
- **Code & Calculators**: [MIT License](LICENSE-CODE)
