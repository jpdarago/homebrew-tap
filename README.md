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
| [`bip39key`](https://github.com/jpdarago/bip39key) | Generate an OpenPGP/OpenSSH key from a BIP39 mnemonic |

Most formulae are generated and updated automatically by each project's
[GoReleaser](https://goreleaser.com) release workflow and should not be edited
by hand. The exception is `bip39key` (a Rust source-build formula), which is
maintained directly in this repository.

## Documentation

`brew help`, `man brew`, or the [Homebrew documentation](https://docs.brew.sh).
