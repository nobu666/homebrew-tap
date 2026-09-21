# nobu666/homebrew-tap

```
brew install nobu666/tap/localai-audit
brew install nobu666/tap/mcp-exposure
brew install nobu666/tap/claude-thinking-stats
```

Casks for [localai-audit](https://github.com/nobu666/localai-audit), [mcp-exposure](https://github.com/nobu666/mcp-exposure) and [claude-thinking-stats](https://github.com/nobu666/claude-thinking-stats). Binaries come from each project's GitHub Releases (macOS and Linux, arm64 and amd64). Each project's GoReleaser config writes the Cask here on every tagged release; `tap_migrations.json` moves users of the old formulas over on `brew upgrade`.

## Upgrading from the old formulas

Until 2026-09-21 these tools were shipped as formulas. If you installed one back then, `brew update` shows a migration notice but does not switch you automatically, because Homebrew only auto-migrates to casks it trusts. Run the two commands it prints, for example:

```
brew trust --cask nobu666/tap/localai-audit
brew install --cask nobu666/tap/localai-audit
```

then remove the old keg with `brew uninstall --formula --force localai-audit`.

The binaries are not signed or notarized, so each cask drops macOS's quarantine attribute in a post-install step (`xattr -dr com.apple.quarantine`). If you would rather do that yourself, install with `--no-quarantine` or run the `xattr` command by hand.

