# Contributing to template-repo

This repository is a starter scaffold for Claude Code-ready repositories. All changes go through the workflow below.

## Prerequisites

No specific toolchain is required for the template itself — the scaffold is language-agnostic. Edit `.devcontainer/Dockerfile` and `.github/workflows/ci.yml` to add your language toolchain when customizing for a new project.

The repository ships a devcontainer (`.devcontainer/`) with the full toolchain preinstalled — opening the repo in it is the quickest way to get a working environment.

## Build, test & lint

The CI workflow is a language-agnostic stub. Uncomment the section for your language in `.github/workflows/ci.yml` and run the same commands locally:

```bash
# TODO: add build / test / lint commands for your language.
# Uncomment and customize one of the following blocks in ci.yml:
#
# Go:
#   go build ./...
#   go test -race ./...
#   golangci-lint run
#
# Node/Bun:
#   bun install
#   bun run lint
#   bun test
#
# Python:
#   pip install -r requirements.txt
#   pytest
```

## Documentation

Keep documentation current as part of the change, not as a follow-up — update the README and any affected docs in the same PR.

Add domain-specific rule files under `.claude/rules/` (for example, `DATABASE.md` or `API.md`) when your project has meaningful conventions to capture: architecture decisions, environment-specific configuration, naming conventions, and setup procedures.

## Before you open a PR

- Make sure all CI checks pass locally first — run the formatter, linter, and tests.
- Run `pre-commit run --all-files` (this repo uses pre-commit hooks).

## Branching & commits

- Branch off `main`; never commit directly to `main`.
- Use [Conventional Commits](https://www.conventionalcommits.org/) prefixes (`feat:`, `fix:`, `docs:`, `chore:`, `refactor:`, `test:`, …).
- Sign your commits where possible (`git commit -S`).
- Keep each PR focused; delete dead code rather than commenting it out.

## Pull requests

- Open the PR against `main`.
- Every PR runs CI. Resolve **all** review threads before the PR is merged.
- An automated code review runs on each PR; address and resolve its threads like any other review.
- A PR can be merged once CI is green and all review threads are resolved.

## Releases

Releases are opt-in. Label a PR with `semver:patch`, `semver:minor`, or `semver:major` before merging to cut a versioned release on merge. Without a label, `auto-release.yml` defaults to a patch bump — add a `skip-release` label to prevent an unintended release. A release publishes a single immutable `vX.Y.Z` tag with AI-generated release notes.
