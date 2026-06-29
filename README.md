# jpdarago/homebrew-tap

A [Homebrew](https://brew.sh) tap for my personal command-line tools.

## Install

```sh
brew tap jpdarago/tap
brew install <formula>
```

Or in one step:

```sh
brew install jpdarago/tap/<formula>
```

Or in a `brew bundle` `Brewfile`:

```ruby
tap "jpdarago/tap"
brew "<formula>"
```

## Formulae

| Formula | Description |
| ------- | ----------- |
| [`lazysnap`](https://github.com/jpdarago/lazysnap) | A TUI for browsing and restoring tarsnap archives |
| [`claude-statusline`](https://github.com/jpdarago/claude-statusline) | Fast, minimal statusline generator for Claude Code |

Formulae are generated and updated automatically by each project's
[GoReleaser](https://goreleaser.com) release workflow — they should not be
edited by hand.

## Documentation

`brew help`, `man brew`, or the [Homebrew documentation](https://docs.brew.sh).
