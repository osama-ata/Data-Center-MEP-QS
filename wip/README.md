# Work in Progress (staging area)

Everything here is draft material for the book: research findings, draft
prose and tables, draft BibTeX, and figure prototypes. Quarto never
renders this folder (it sits outside `book/`), and the source lint in
[AGENTS.md](../AGENTS.md) Section 5 only scans `book/**`.

Items move into `book/` one at a time, once they are marked `ready`.

## Layout

```text
wip/
├── README.md                 # this file
├── enrichment-plan.md        # approved research + enrichment plan
├── research/
│   ├── 2026-11-findings.md   # source register + chapter map
│   └── image-register.md     # candidate images and licences
├── sources.bib               # draft BibTeX, not loaded by the book
├── chapters/
│   └── NN-chapter-slug/      # one .qmd per new section or table
└── figures/
    ├── fig-*.py              # figure prototypes (matplotlib/schemdraw)
    ├── fig-*.mmd             # Mermaid prototypes
    └── candidates/           # downloaded openly licensed images
```

## Draft front matter

Every draft in `chapters/` and `figures/` starts with:

```yaml
---
status: raw        # raw | sourced | reviewed | ready
target: book/volume-4/14-fire-detection-vesda.qmd
under: "## Heading the draft goes under"
sources: [nfpa72_2025, en54_20_2006]
owner: claude-code  # agent or person working on it
---
```

| Status | Meaning |
| :--- | :--- |
| `raw` | Notes and research excerpts. May contain unsourced points. |
| `sourced` | Every claim carries a key in `wip/sources.bib` or `book/references.bib`. |
| `reviewed` | The maintainer has read it and agrees with the content. |
| `ready` | Approved to move into the book. Only the maintainer sets this. |

## Promotion checklist (one item per commit)

1. The draft is `ready`, and its target chapter has no uncommitted
   changes from another agent (`git status`).
2. Move its BibTeX entries from `wip/sources.bib` into Part A of
   `book/references.bib`.
3. Paste the text under its target heading; figure code goes into a
   `#| label: fig-*` / `#| fig-cap:` cell.
4. Run the AGENTS.md Section 5 lint and `quarto render book`.
5. Delete the draft from `wip/` in the same commit (git history keeps it).

## Rules

- Paraphrase standards and reports; never paste their text.
- Every number needs a source, a date, and a region (US, UK, GCC).
- Images: only licences compatible with CC BY-SA 4.0 (public domain,
  CC0, CC BY, CC BY-SA), with author and URL in `image-register.md`.
