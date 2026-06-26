# Project Name

@CONTRIBUTING.md

TODO: Replace this file with project-specific instructions for Claude Code.

## Overview

TODO: Describe what this project does and its primary purpose.

## Architecture

TODO: Describe the high-level architecture.

- Key components and their responsibilities
- How data flows through the system
- External dependencies and integrations

## Environment Variables

TODO: Document required environment variables.

| Variable | Required | Description |
|----------|----------|-------------|
| `EXAMPLE_API_KEY` | Yes | API key for the example service |
| `EXAMPLE_DEBUG` | No | Enable debug logging (default: false) |

## Hooks

Hooks are in `.claude/hooks/` — see the Hook Overview section in `README.md` for the full table and output rules.

## .claude/rules/

Add domain-specific rule files in this directory when your project has conventions to document. Keep each file concise — the right detail at the right altitude, not exhaustive prose. Examples:

- `DATABASE.md` — connection pattern, migration procedure, naming conventions
- `API.md` — endpoint contracts, auth patterns, error formats
- `DEPLOYMENT.md` — environment-specific configuration and deployment procedures
