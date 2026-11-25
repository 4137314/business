# Business Organization and Management

English exam-preparation knowledge base for **Organizzazione e Gestione Aziendale**,
using the same Org-note layout and shared Emacs reader as `../computer-science/`.
Start with [the study map](study/kb/revision/business-map.org).

The base contains **63 connected notes**: definitions and models, the course's
company examples and numerical cases made explicit (Apple/GE/Nike structures,
Coca-Cola five forces and Ansoff, airline strategic groups, the telephone
segmentation, GE-McKinsey weighting, vendor grids, aluminium-oxide TCO, ABC,
purchasing leverage, Ford V8 VSM, Inventata sas, ALFA ratios, the KM-system
CPM, and more), comparison tables for every matrix, 56 TikZ/pgfplots diagrams,
pitfalls, recall prompts, 30 MCQs and 16 numerical exercises with answers.
Italian course terms are kept as aliases (`f` finds them). The study map adds a
matrix atlas, a formula sheet and a company-example index.
The 2026 PDFs already in `asset/` are the primary sources.
[The source map](study/SOURCES.md) records coverage and corrections.

## Layout

| Path | Contents |
|---|---|
| `study/kb/organization/` | 8 notes: performance, structures, processes, theories, governance |
| `study/kb/strategy/` | 5 notes: strategy, five forces, generic strategies, value chain, resources |
| `study/kb/marketing/` | 10 notes: STP, portfolio, marketing mix, pricing, product development |
| `study/kb/procurement/` | 9 notes: buying process, supplier evaluation, TCO, sourcing, portfolios |
| `study/kb/operations/` | 15 notes: process design, quality, Lean, digitalization, supply chains |
| `study/kb/accounting/` | 8 notes: statements, accruals, depreciation, liquidity and profitability |
| `study/kb/projects/` | 4 notes: WBS, scheduling/CPM, RACI, earned value |
| `study/kb/revision/` | Study map, conceptual comparisons, 12 MCQs and 7 numerical exercises |
| `study/kb-config.el` | Domain/area order and reader configuration |
| `study/study.mk` | The `make study*` commands |
| `study/cerebro-base.el` | Registry entry for the Cerebro hub |
| `asset/` | Existing local PDFs, excluded from version control |

## Study

From this directory:

```sh
make study            # open Business in its own reader
make study-check      # validate metadata, links, graph, formulas and diagrams
make study-install    # optional: add Business to the application launcher
make study-uninstall  # remove that launcher/profile; keep notes and reading state
nix develop path:.    # editing and PDF utilities
```

In **Cerebro**, select **Business**, press `RET`, and use `f` to find
**Business Organization and Management: study map**. `]` and `[` follow the
prerequisite order, `b` returns to the reading bookmark, `H` returns to the list
of bases and `?` shows the available keys. Restart an already-running hub after
its registry changes.

A practical sequence is organization → strategy → marketing → procurement →
operations → accounting → projects → revision. Follow prerequisites when a note
crosses those boundaries. For each note, explain the idea from memory, solve its
example, and answer the recall prompt. Repeat difficult material on later days.
The practice questions are original revision material, not an official exam or
a claim about the current exam format.

## Reader and Cerebro integration

The standalone instance uses command `business-study`, Emacs server `business`,
and state in `${XDG_STATE_HOME:-~/.local/state}/business-emacs`. The Make targets
set `BUSINESS_ROOT` explicitly and use the sibling `../../personal/knowledge-base`
checkout when available, matching Cerebro's workflow. The copied `flake.lock`
retains the same pinned inputs as `computer-science/` for the fallback reader;
local overrides do not rewrite it.

For a direct Nix launch, set the root because this directory currently belongs to
the parent repository:

```sh
BUSINESS_ROOT="$PWD" nix run path:.#study
```

Cerebro reads `study/kb` and `study/kb-config.el` directly. Its registry is
`../../personal/cerebro/bases.el`; the complete entry is:

```elisp
("business" :title "Business" :root "uni/business"
 :notes "study/kb" :config "study/kb-config.el")
```

The root is relative to the `dev/` superproject. No copying or conversion of
notes is needed. Cerebro keeps its own Business cache and bookmark under
`cerebro-emacs/bases/business/`.

This is an existing local study folder, with no independent remote assumed.
If it becomes a separate repository/submodule, register its actual URL and
`uni/business` path together in the parent's `.gitmodules` and
`registry/projects.yaml`.

## Editing conventions

One concept per `study/kb/<domain>/<id>.org`; filename and `:ID:` must agree.
Use English prose, `#+title`, `#+summary`, `DOMAIN`, `AREA`, `KIND`, `REQUIRES`
and `SEE`. Prerequisites form an acyclic graph; lateral links use `[[id:...]]`.
Keep each concept self-contained and record source references in `study/SOURCES.md`.
Use supported reader kinds, Org tables no wider than 86 columns, LaTeX math
delimiters and native TikZ diagrams. Run `make study-check` after changes.
