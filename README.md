# Windsurf Slash Commands

A curated collection of slash command workflows for [Windsurf](https://codeium.com/windsurf).

## Setup

Copy the `.md` files you want to use into your project's `.windsurf/workflows/` directory. That's it — no additional configuration required.

```
your-project/
└── .windsurf/
    └── workflows/
        ├── software.evaluation.md
        └── vulnerability.md
```

## Available Commands

### `/software.evaluation` — Software Evaluation Report

Performs a comprehensive quality evaluation of a specified directory, acting as a world-class CTO & Principal Architect. It scores the codebase across **five pillars**:

| Pillar | Focus |
| :--- | :--- |
| **Architectural Integrity** | SOLID, KISS, YAGNI, DRY, Idempotency |
| **Reliability & Resiliency** | Error handling, Timeout, Retry, Circuit Breaker |
| **Observability & Operability** | Structured logging, metrics, debuggability |
| **Security & Data Integrity** | Least Privilege, Defense-in-Depth |
| **DX & Cognitive Load** | Symmetry, Principle of Least Astonishment |

Outputs a structured evaluation report to `docs/evaluation.[directory_name].YYYYMMDD.md`.

### `/vulnerability` — Security Vulnerability Audit

Performs an offensive-security-style audit of the codebase, acting as an elite white-hat hacker. The audit covers:

- **Broken Access Control** — BOLA/IDOR prevention
- **Injection** — SQL, NoSQL, OS Command, Template Injection
- **Frontend Security** — DOM-based XSS, Cookie attributes, Security Headers (CSP, HSTS)
- **SSRF** — User-supplied URL validation
- **Data Protection** — Hardcoded secrets, PII exposure in logs

Leverages Semgrep for autonomous scanning, triages findings, and provides remediation with structured git commit messages.

## License

MIT
