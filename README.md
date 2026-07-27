# termio Homebrew tap

Homebrew cask for [termio](https://termio.sh/), the native terminal for AI coding agents.

## Install

```sh
brew install --cask termio-sh/tap/termio
```

## Upgrade

termio updates itself via Sparkle, so `brew upgrade` normally leaves it alone.
To force Homebrew to reinstall the latest version:

```sh
brew upgrade --cask --greedy termio
```

## Uninstall

```sh
brew uninstall --cask termio        # remove the app
brew uninstall --cask --zap termio  # also remove settings and data
```
