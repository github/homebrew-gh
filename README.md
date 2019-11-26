# Public releases for GitHub CLI

## Homebrew tap

```sh
brew install github/gh/gh
```

## Debian/Ubuntu Linux

1. Download the `.deb` file from the [releases page](https://github.com/github/homebrew-gh/releases/latest)
2. Install it with `sudo dpkg -i gh_0.2.4_linux_amd64.deb`, changing version number accordingly

_(Uninstall with `sudo apt remove gh`)_

## Fedora/Centos Linux

1. Download the `.rpm` file from the [releases page](https://github.com/github/homebrew-gh/releases/latest)
2. Install it with `sudo yum localinstall gh_0.2.4_linux_amd64.rpm`, changing version number accordingly

_(Uninstall with `sudo yum remove gh`)_

## Other Linux

1. Download the `_linux_amd64.tar.gz` file from the [releases page](https://github.com/github/homebrew-gh/releases/latest)
2. `tar -xf gh_0.2.2_linux_amd64.tar.gz`, changing version number accordingly
3. `chmod +x gh` ensure the binary is executable
4. Copy the uncompressed `gh` somewhere on your `$PATH` (e.g. `sudo cp gh /usr/local/bin/`)


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
