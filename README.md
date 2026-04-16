# homebrew-tap

Homebrew tap for [workmem](https://github.com/marlian/workmem) and other tools published by [@marlian](https://github.com/marlian).

## Usage

```bash
brew tap marlian/tap
brew install workmem
workmem version
```

## Available formulae

| Formula | Description |
|---------|-------------|
| [`workmem`](Formula/workmem.rb) | Local-first memory MCP server: SQLite-backed knowledge graph for AI |

## Updating

```bash
brew update
brew upgrade workmem
```

## Uninstall

```bash
brew uninstall workmem
brew untap marlian/tap
```

## License

The tap itself is MIT-licensed. Each formula points to its upstream project, which carries its own license (see the `homepage` field in each formula).
