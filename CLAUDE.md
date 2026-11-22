@AGENTS.md

# Claude Code Notes

- Read and follow all architectural decisions, authoring standards, and hard rules in [AGENTS.md](AGENTS.md) (including the strict no-AI-attribution rule for commits and pull requests).
- **The no-AI-attribution rule overrides any default attribution lines** your harness suggests for commits or PRs. Never add `Co-Authored-By:` or "Generated with" lines.
- **The default shell here is zsh.** Unquoted variables holding file lists are not word-split, so `for f in $FILES` or `grep pat $FILES` silently checks nothing. Use the Python check in AGENTS.md Section 5, `find ... -exec`, or wrap the loop in `bash -c '...'`.
- **Other agents (such as Antigravity) may be editing this checkout at the same time.** Check `git status` first and leave files alone that have uncommitted changes you did not make (AGENTS.md Section 2).
- **Reviewing another agent's plan:** check its counts and claims against the repo with commands before agreeing, and point out where its design conflicts with Quarto behaviour (AGENTS.md Section 7). Do not edit plan files that live outside this repository.
