# .claude/rules/

Domain-scoped rule files that CLAUDE.md doesn't need to carry in full.
Claude Code loads files in this directory by path when it's working in the
matching area of the codebase, so each file should be narrow and
load-bearing — the convention a plain read of the code wouldn't reveal, not
a restatement of it.

Keep each file concise: orientation plus the one or two things that would
trip someone up, with a pointer to the real source of truth (a package doc,
a script, a schema) rather than a copy of it. If a rule file is only
duplicating what's already in the code or in `docs/`, delete it instead.

Examples:

- `DATABASE.md` — connection pattern, migration procedure, naming conventions
- `API.md` — endpoint contracts, auth patterns, error formats
- `DEPLOYMENT.md` — environment-specific configuration and deployment procedures

This directory is empty until a project has conventions worth capturing —
that's expected, not a gap to fill preemptively.
