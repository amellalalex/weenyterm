## Installing on macOS

The CI system builds the package on macOS Big Sur and should run on systems as
"old" as Mojave.  It may run on earlier versions of macOS, but that has not
been tested.

Starting with version 20210203-095643-70a364eb, WeenyTerm is a Universal binary
with support for both Apple Silicon and Intel hardware.

[:simple-apple: Download for macOS :material-tray-arrow-down:]({{ macos_zip_stable }}){ .md-button }
[:simple-apple: Nightly for macOS :material-tray-arrow-down:]({{ macos_zip_nightly }}){ .md-button }

1. Download <a href="{{ macos_zip_stable }}">Release</a>.
2. Extract the zipfile and drag the `WeenyTerm.app` bundle to your `Applications` folder.
3. First time around, you may need to right click and select `Open` to allow launching
   the application that you've just downloaded from the internet.
3. Subsequently, a simple double-click will launch the UI.
4. To use weenyterm binary from a terminal emulator, like `weenyterm ls-fonts` you'll need to add the location to the weenyterm binary folder that exists _inside_ the WeenyTerm.app, to your environment's $PATH value. For example, to add it to your `~/.zshrc` file, and assuming your WeenyTerm.app was installed to `/Applications`, add:
```sh
PATH="$PATH:/Applications/WeenyTerm.app/Contents/MacOS"
export PATH
```
5. Configuration instructions can be [found here](../config/files.md)

## Homebrew

WeenyTerm is available for [brew](https://brew.sh/) users:

```console
$ brew install --cask weenyterm
```

If you'd like to use a nightly build:

```console
$ brew tap homebrew/cask-versions
$ brew install --cask weenyterm-nightly
```

to upgrade to a newer nightly (normal `brew upgrade` will not upgrade it!):

```console
$ brew upgrade --cask weenyterm-nightly --no-quarantine --greedy-latest
```

## MacPorts

WeenyTerm is also available via [MacPorts](https://ports.macports.org/port/weenyterm/summary):

```console
$ sudo port selfupdate
$ sudo port install weenyterm
```

