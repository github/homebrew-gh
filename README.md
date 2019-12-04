# Public releases for GitHub CLI

## Install for Mac
### Homebrew tap
To install:
```sh
brew install github/gh/gh
```
To upgrade:
```sh
brew upgrade gh
```
## Install for Linux
### Debian/Ubuntu Linux

1. `sudo apt install git` if you don't already have git
2. Download the `.deb` file from the [releases page](https://github.com/github/homebrew-gh/releases/latest)
3. `sudo dpkg -i gh_*_linux_amd64.deb`  install the downloaded file

_(Uninstall with `sudo apt remove gh`)_

### Fedora/Centos Linux

1. Download the `.rpm` file from the [releases page](https://github.com/github/homebrew-gh/releases/latest)
2. `sudo yum localinstall gh_*_linux_amd64.rpm` install the downloaded file

_(Uninstall with `sudo yum remove gh`)_

### Other Linux

1. Download the `_linux_amd64.tar.gz` file from the [releases page](https://github.com/github/homebrew-gh/releases/latest)
2. `tar -xf gh_*_linux_amd64.tar.gz`
3. Copy the uncompressed `gh` somewhere on your `$PATH` (e.g. `sudo cp gh_*_linux_amd64/bin/gh /usr/local/bin/`)

_(Uninstall with `rm`)_

## Usage
```console
$ gh help
Work with GitHub from your terminal

Usage:
  gh [command]

Available Commands:
  help        Help about any command
  issue       Work with issues
  pr          Work with pull requests

Flags:
  -h, --help                    Help for gh
  -R, --repo string             Select GitHub repository

Use "gh [command] --help" for more information about a command.
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
