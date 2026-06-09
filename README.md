# Homebrew Tap for DartClaw

[Homebrew](https://brew.sh) tap for [DartClaw](https://github.com/DartClaw/dartclaw) — an
experimental, security-conscious AI agent runtime built with Dart.

## Installation

```bash
brew tap DartClaw/dartclaw
brew install dartclaw
```

Supported hosts: macOS (Apple Silicon and Intel) and Linux (x64 and arm64).

## Provider CLIs are not dependencies

DartClaw orchestrates external agent harnesses. Their CLIs (`claude`, `codex`, Goose,
Mistral Vibe, …) are **explicit operator prerequisites**, not Homebrew dependencies of
this formula. Install and verify the providers you intend to use separately, e.g.:

```bash
claude --version
codex --version
```

## Updating

```bash
brew update
brew upgrade dartclaw
```

## Uninstalling

```bash
brew uninstall dartclaw
brew untap DartClaw/dartclaw
```

## Maintenance

`Formula/dartclaw.rb` is **generated** — do not edit it by hand. It is published
automatically by the `Release Binaries` workflow in the
[main repository](https://github.com/DartClaw/dartclaw) on every `v*` tag, which renders
the canonical template at `package/homebrew/dartclaw.rb` with the release's verified
platform SHA256 digests and pushes the result here.

## License

DartClaw is available under the MIT license. See [LICENSE](LICENSE).
