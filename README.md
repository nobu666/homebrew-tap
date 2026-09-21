# nobu666/homebrew-tap

```
brew install nobu666/tap/localai-audit
brew install nobu666/tap/mcp-exposure
brew install nobu666/tap/claude-thinking-stats
```

Casks for [localai-audit](https://github.com/nobu666/localai-audit), [mcp-exposure](https://github.com/nobu666/mcp-exposure) and [claude-thinking-stats](https://github.com/nobu666/claude-thinking-stats). Binaries come from each project's GitHub Releases (macOS and Linux, arm64 and amd64). Each project's GoReleaser config writes the Cask here on every tagged release; `tap_migrations.json` moves users of the old formulas over on `brew upgrade`.
