# homebrew-tap

Homebrew casks for [Luciano Arguello](https://www.lucianoarguello.dev)'s apps.

## Install

```bash
brew install --cask lucianoarguello335/tap/devshop
```

Homebrew taps this repository automatically on first use, so no separate `brew tap` is needed.

## Casks

| Cask | Description |
|---|---|
| [`devshop`](Casks/devshop.rb) | Every dev tool on your Mac, in one window. Read-only inspector for your development environment. |

## Uninstall

```bash
brew uninstall --cask devshop          # removes the app
brew uninstall --zap --cask devshop    # also removes its preferences and cache
```
