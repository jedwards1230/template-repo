# Project Name

TODO: Replace this file with project-specific instructions for Claude Code.

## Overview

TODO: Describe what this project does and its primary purpose.

## Quick Start

TODO: Fill in the commands for this project.

```bash
# Build
# TODO: make build / go build / npm run build / etc.

# Test
# TODO: make test / go test ./... / npm test / etc.

# Lint
# TODO: golangci-lint run / npm run lint / etc.
```

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

Hooks are configured in `.claude/hooks/` — customize for your project.

- `session-start.sh` — Runs on fresh session start. Add tool installation here for Claude Code Web.
- `pre-tool-use.sh` — Runs before every tool call. Use to block dangerous operations.
- `post-tool-use.sh` — Runs after every tool call. Use to auto-format modified files.
- `stop.sh` — Runs when Claude finishes a response. Use to run linters or tests.
- `subagent-stop.sh` — Runs when a subagent finishes.
- `session-end.sh` — Runs when the session ends. Use for cleanup.

## Notes

This file was generated from the template-repo starter. Replace all TODO sections
before using this repository in production.
