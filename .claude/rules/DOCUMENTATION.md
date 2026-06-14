# Documentation

Keep documentation current as part of every implementation — not as a follow-up.

- Update this directory when architecture, APIs, or configuration patterns change
- Add new rule files here for domain-specific guidance (e.g., `DATABASE.md`, `API.md`)
- Keep files concise: the right detail at the right altitude, not exhaustive prose

## What to Document Here

- Architecture decisions and their rationale
- Environment-specific configuration and gotchas
- Patterns and conventions used in this project
- Setup and deployment procedures

## Example: Domain Rule File

Create `DATABASE.md` (or similar) in this directory when your project has
meaningful domain-specific conventions. Example structure:

```markdown
# Database

## Connection Pattern
All services connect via the `DB_URL` environment variable (set by entrypoint.sh).

## Migrations
Run migrations with: `make migrate`
Never edit migration files after they have been applied.

## Naming Conventions
- Tables: `snake_case` plurals
- Columns: `snake_case`
- Indexes: `idx_<table>_<column(s)>`
```

Replace this file's content once you have real project conventions to document.
