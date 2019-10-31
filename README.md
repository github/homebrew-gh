# Homebrew tap for GitHub CLI

First-time:

```sh
brew install github/gh/gh --HEAD
```

That's it. You are now ready to use `gh`. 🥳

```console
$ gh help
Do things with GitHub from your terminal

Usage:
  gh [flags]
  gh [command]

Available Commands:
  help        Help about any command
  pr          Work with pull requests
```

To stay up to date with `gh` development:

```sh
brew upgrade gh --fetch-HEAD
```

Until `gh` gets on a release schedule, the `--fetch-HEAD` argument is unfortunately necessary to make sure that the project is rebuilt from the latest development version.

Thank you for testing GitHub CLI! 🌟
