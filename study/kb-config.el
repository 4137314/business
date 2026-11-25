;;; kb-config.el --- Business study base -*- lexical-binding: t; -*-

(setq kb-domains '("organization" "strategy" "marketing" "procurement"
                   "operations" "accounting" "projects" "revision")
      kb-areas '("foundations" "structures" "theories" "competitive-strategy"
                 "market-analysis" "marketing-mix" "product-development"
                 "purchasing" "supplier-management" "process-design"
                 "quality" "lean" "digitalization" "supply-chain"
                 "financial-statements" "financial-analysis"
                 "project-management" "exam-practice")
      ;; Keep the concepts self-contained; provenance lives in study/SOURCES.md.
      kb-forbidden "\\b\\(?:TODO\\|FIXME\\|[Ss]lides?\\|[Ll]ectures?\\|[Ll]ezion[ei]\\|file:\\)\\b")

(kb-preamble-add "\\setlength{\\textwidth}{40cm}")
