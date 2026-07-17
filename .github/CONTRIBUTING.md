# Contributing Guidelines

Welcome! This repository enforces a high bar for engineering rigor, code quality, and architectural documentation.
Please take a moment to review these guidelines before opening a Pull Request (PR).

---

## 1. Documentation-First Workflow

We do not write code without a clear understanding of *why* we are writing it and *how* it impacts the broader system.
Every non-trivial feature or system modification must navigate our documentation pipeline:

1. ***PRD:*** Located in `docs/01-prd/`. Defines the user problem, scope, and target metrics.
2. ***ADR:*** Located in `docs/02-adr/`. Required whenever introducing a new technical tool, changing the system design,
   or shifting architectural paradigms.
3. ***TDD:*** Located in `docs/03-tdd/`. Maps out API contracts, database schemas, sequence diagrams, and implementation
   phases before coding starts.

*When opening a code PR, you will be expected to link back to the relevant PRD, ADR, or TDD that justifies the change.*

---

## 2. Branching Strategy

We use **Trunk-Based Development**. Long-lived feature branches are highly discouraged. All feature branches must be
short-lived and merged directly back to `main` via short, targeted PRs.

### Branch Naming Conventions

Structure your branch names using the following formats:

* `docs/[Ticket-Id]-[short-description]` — For updates to templates, guides, or specifications.
* `bugfix/[Ticket-Id]-[short-description]` — For resolving a production or development issue.
* `feature/[Ticket-Id]-[short-description]` — For new functional capabilities or architectural components.
* `refactor/[Ticket-Id]-[short-description]` — For code reorganization without functional changes.

*Example:* `feature/VOQE-1-v0.1-walking-skeleton` or `bugfix/VOQE-2-redis-connection-leak`

---

## 3. Commit Message Standards

We strictly enforce the **Conventional Commits** specification. This keeps our Git history exceptionally clean and
allows us to automate changelog generation.

Commit messages must use the following structural format:
