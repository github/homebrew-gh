# Public releases for GitHub CLI

## Homebrew tap

```sh
brew install github/gh/gh
```

## Debian/Ubuntu Linux

1. `sudo apt install git` if you don't already have git
2. Download the `.deb` file from the [releases page](https://github.com/github/gh-cli/releases/latest)
3. `sudo dpkg -i gh_*_linux_amd64.deb`  install the downloaded file

_(Uninstall with `sudo apt remove gh`)_

## Fedora/Centos Linux

1. Download the `.rpm` file from the [releases page](https://github.com/github/gh-cli/releases/latest)
2. `sudo yum localinstall gh_*_linux_amd64.rpm` install the downloaded file

_(Uninstall with `sudo yum remove gh`)_

## Other Linux

1. Download the `_linux_amd64.tar.gz` file from the [releases page](https://github.com/github/gh-cli/releases/latest)
2. `tar -xf gh_*_linux_amd64.tar.gz`
3. Copy the uncompressed `gh` somewhere on your `$PATH` (e.g. `sudo cp gh_*_linux_amd64/bin/gh /usr/local/bin/`)

_(Uninstall with `rm`)_


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

Thank you for trying out GitHub CLI! 🌟

### Development version (restricted access)

You can get access to features that are not yet in the stable release by
building the development version:

```
brew install github/gh/gh --HEAD
```

To upgrade it:

```
brew upgrade gh --fetch-HEAD
```
