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

| Hook | When | Frequency |
|------|------|-----------|
| `session-start.sh` | Fresh session start | Once per session |
| `pre-tool-use.sh` | Before every tool call | Very frequent — keep fast and silent |
| `post-tool-use.sh` | After every tool call | Very frequent — keep fast and silent |
| `stop.sh` | Claude finishes a response | Per response |
| `subagent-stop.sh` | Subagent finishes | Per subagent turn |
| `session-end.sh` | Session terminates | Once per session |

### Hook Output Rules

**stdout** is consumed by Claude as hook response context. **stderr** is shown in the terminal but not sent to Claude.

- Informational messages (install progress, debug): `echo "..." >&2`
- Blocking reasons (exit 2): `echo "Fix this issue" >&2`
- Stub hooks with no work to do: stay completely silent (no echo at all)
- Never write raw text to stdout — it pollutes Claude's context window

### Dual-Environment Pattern

Claude Code Web runs in ephemeral containers where Dockerfile tools are not available. The `session-start.sh` hook detects the environment and installs tools:

```bash
if [ "${CLAUDE_CODE_REMOTE:-}" = "true" ]; then
  echo "[session-start] Installing tools for web session..." >&2
  # Install tools here (curl, apt-get, etc.)
else
  echo "[session-start] Local devcontainer — tools pre-installed" >&2
fi
```

### Entrypoint Health Check

The `.devcontainer/entrypoint.sh` runs via `postStartCommand` on every container start. It validates that tools are installed and prints a version summary table. Add your project's tools to the `check_tool` calls.

## Notes

This file was generated from the template-repo starter. Replace all TODO sections
before using this repository in production.
