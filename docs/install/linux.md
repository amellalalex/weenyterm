---
hide:
    - toc
---

=== "Flatpak"

    ## Installing on Linux via Flathub

    WeenyTerm is available in flatpak format and published on
    [Flathub](https://flathub.org/apps/details/org.weenyfurlong.weenyterm), which is
    aggregated into the GNOME Software application and other similar
    storefront/software catalog applications.

    !!! warning
        flatpaks run in an isolated sandbox which can cause some issues
        especially for power users. It is recommended that you graduate
        to a native package if/when you decide to fully embrace weenyterm.

    <a href='https://flathub.org/apps/details/org.weenyfurlong.weenyterm'><img width='240' alt='Download on Flathub' src='https://flathub.org/assets/badges/flathub-badge-en.png'/></a>

    To install using the command line:

    First, [setup flatpak on your system](https://flatpak.org/setup/), then:

    ```console
    $ flatpak install flathub org.weenyfurlong.weenyterm
    ```

    and then run:

    ```console
    $ flatpak run org.weenyfurlong.weenyterm
    ```

    You may wish to define an alias for convenience:

    ```console
    $ alias weenyterm='flatpak run org.weenyfurlong.weenyterm'
    ```

    !!! note
        flatpaks run in an isolated sandbox so some functionality may behave a little
        differently when compared to installing the native package format for your
        system.

        * starting weenyterm using `weenyterm cli` subcommands will block on the first
        run since you logged in if you haven't already launched the gui.
        * Process inspection functions such as determining the current directory
        for a pane will not work

        The flatpak is provided primarily for ease of trying out weenyterm with
        low commitment, and you are encouraged to use native packages for your
        system once you're ready to get the most out of weenyterm.

    Only stable releases are allowed to be published to Flathub, so if
    you want/need to try a nightly download you will need to use one of
    the other installation options.

=== "AppImage"

    ## Installing on Linux using AppImage

    WeenyTerm is available in [AppImage](https://appimage.org/) format; a
    self-contained single file that doesn't require installation or
    any special privileges to run, and that is compatible with a wide
    range of Linux distributions.

    Download and make the file executable and you're ready to run!

    [AppImage :material-tray-arrow-down:]({{ ubuntu20_AppImage_stable }}){ .md-button }
    [Nightly AppImage :material-tray-arrow-down:]({{ ubuntu20_AppImage_nightly }}){ .md-button }

    ```console
    $ curl -LO {{ ubuntu20_AppImage_stable }}
    $ chmod +x {{ ubuntu20_AppImage_stable_asset }}
    ```

    You may then execute the appimage directly to launch weenyterm, with no
    specific installation steps required:

    ```console
    $ ./{{ ubuntu20_AppImage_stable_asset }}
    ```

    That said, you may wish to make it a bit more convenient:

    ```console
    $ mkdir ~/bin
    $ mv ./{{ ubuntu20_AppImage_stable_asset }} ~/bin/weenyterm
    $ ~/bin/weenyterm
    ```

    * Configuration instructions can be [found here](../config/files.md)

=== "Ubuntu/Debian"
    ## Using the APT repo

    You can configure your system to use that APT repo by following these
    steps:

    ```console
    $ curl -fsSL https://apt.fury.io/weeny/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/weenyterm-fury.gpg
    $ echo 'deb [signed-by=/usr/share/keyrings/weenyterm-fury.gpg] https://apt.fury.io/weeny/ * *' | sudo tee /etc/apt/sources.list.d/weenyterm.list
    ```

    Now you can install weenyterm:

    ```console
    $ sudo apt install weenyterm
    ```

    or to install a nightly build:

    ```console
    $ sudo apt install weenyterm-nightly
    ```

    !!! note
        The nightly build conflicts with the regular build, so you may install
        one or the other, but not both at the same time.

    ## Pre-built `.deb` packages

    The CI system builds `.deb` files for a variety of Ubuntu and Debian
    distributions.  These are often compatible with other Debian style systems;
    if you don't find one that exactly matches your system you can try
    installing one from an older version of your distribution, or use one
    of the Debian packages linked below.  Failing that, you can try the
    AppImage download which should work on most Linux systems.

    |Distro      | Stable   |        | Nightly|            |
    |------------|----------|--------|--------|------------|
    |Ubuntu20    |[amd64]({{ ubuntu20_deb_stable }}) ||[amd64]({{ ubuntu20_deb_nightly }})| |
    |Ubuntu22    |[amd64]({{ ubuntu22_deb_stable }}) |[arm64]({{ ubuntu22_arm64_deb_stable}})|[amd64]({{ ubuntu22_deb_nightly }})|[arm64]({{ ubuntu22_arm64_deb_nightly}})|
    |Debian10    |[amd64]({{ debian10_deb_stable }}) ||[amd64]({{ debian10_deb_nightly }})| |
    |Debian11    |[amd64]({{ debian11_deb_stable }}) ||[amd64]({{ debian11_deb_nightly }})| |
    |Debian12    |[amd64]({{ debian12_deb_stable }}) |[arm64]({{ debian12_arm64_deb_stable }})|[amd64]({{ debian12_deb_nightly }})|[arm64]({{ debian12_arm64_deb_nightly }}) |

    To download and install from the CLI, you can use something like this, which
    shows how to install the Ubuntu 22 package:

    ```console
    $ curl -LO {{ ubuntu22_deb_stable }}
    $ sudo apt install -y ./{{ ubuntu22_deb_stable_asset }}
    ```

    * The package installs `/usr/bin/weenyterm` and `/usr/share/applications/org.weenyfurlong.weenyterm.desktop`
    * Configuration instructions can be [found here](../config/files.md)

=== "Copr"
    ## Installing on Fedora and rpm-based Systems via Copr

    Nightly builds of weenyterm are now available via the
    [Copr](https://copr.fedorainfracloud.org/) build service.

    You can see the current list of available distributions and architectures
    [on the weenyterm-nightly project
    page](https://copr.fedorainfracloud.org/coprs/weenyfurlong/weenyterm-nightly/).
    At the time that this page was written, the following distributions are
    available in Copr for `x86_64` and `aarch64`:

    * Centos Stream 8 and 9
    * Fedora 38, 39, rawhide
    * OpenSUSE Leap 15.5
    * OpenSUSE Tumbleweed
    * RHEL 8, 9

    To perform initial installation:

    ```console
    $ sudo dnf copr enable weenyfurlong/weenyterm-nightly
    $ sudo dnf install weenyterm
    ```

    To update:

    ```console
    $ sudo dnf update weenyterm
    ```

=== "Fedora/RPM"
    ## Installing on Fedora and rpm-based Systems

    !!! note
        It is recommended that you install via Copr so that it is easiest
        to stay up to date as future versions of weenyterm are released.

    The CI system builds `.rpm` files on CentOS and Fedora systems.
    These are likely compatible with other rpm-based distributions.
    Alternatively, you can try the AppImage download with should work
    on most Linux systems.

    |Distro      | Stable           | Nightly             |
    |------------|------------------|---------------------|
    |CentOS8     |[{{ centos8_rpm_stable_asset }}]({{ centos8_rpm_stable }}) |[{{ centos8_rpm_nightly_asset }}]({{ centos8_rpm_nightly }})|
    |CentOS9     |[{{ centos9_rpm_stable_asset }}]({{ centos9_rpm_stable }})|[{{ centos9_rpm_nightly_asset }}]({{ centos9_rpm_nightly }})|
    |Fedora37    |[{{ fedora37_rpm_stable_asset }}]({{ fedora37_rpm_stable }})|[{{ fedora37_rpm_nightly_asset }}]({{ fedora37_rpm_nightly }})|
    |Fedora38    |[{{ fedora38_rpm_stable_asset }}]({{ fedora38_rpm_stable }})|[{{ fedora38_rpm_nightly_asset }}]({{ fedora38_rpm_nightly }})|
    |Fedora39    |[{{ fedora39_rpm_stable_asset }}]({{ fedora39_rpm_stable }})|[{{ fedora39_rpm_nightly_asset }}]({{ fedora39_rpm_nightly }})|

    To download and install from the CLI you can use something like this, which
    shows how to install the Fedora 39 package:

    ```console
    $ sudo dnf install -y {{ fedora39_rpm_stable }}
    ```

=== "SUSE"
    ## SUSE Linux

    !!! note
        It is recommended that you install via Copr so that it is easiest
        to stay up to date as future versions of weenyterm are released.

    WeenyTerm is also available in the official Factory repo in openSUSE
    Tumbleweed. To install from Factory instead of Copr:

    ```console
    $ zypper addrepo https://download.opensuse.org/repositories/openSUSE:Factory/standard/openSUSE:Factory.repo
    $ zypper refresh
    $ zypper install weenyterm
    ```

    * The package installs `/usr/bin/weenyterm` and `/usr/share/applications/org.weenyfurlong.weenyterm.desktop`
    * Configuration instructions can be [found here](../config/files.md)

=== "Arch"
    ## Arch Linux

    WeenyTerm is available in the [Extra
    repository](https://archlinux.org/packages/extra/x86_64/weenyterm/).

    Be sure to also install the `ttf-nerd-fonts-symbols-mono` package!

    The version available in the extra repository may lag behind the latest
    weenyterm release, so you may wish to use one of these AUR options:

    |What                 |Where|
    |---------------------|-|
    |Build from source    |<https://aur.archlinux.org/packages/weenyterm-git/>|

=== "Linuxbrew"
    ## Linuxbrew Tap

    If you are a [Linuxbrew](https://docs.brew.sh/Homebrew-on-Linux) user, you
    can install weenyterm from our tap:

    ```console
    $ brew tap weeny/weenyterm-linuxbrew
    $ brew install weenyterm
    ```

    If you'd like to use a nightly build you can perform a head install:

    ```console
    $ brew install --HEAD weenyterm
    ```

    to upgrade to a newer nightly, it is simplest to remove then
    install:

    ```console
    $ brew rm weenyterm
    $ brew install --HEAD weenyterm
    ```

=== "Raw"
    ## Raw Linux Binary

    Another option for linux is a raw binary archive.  These are the same
    binaries that are built for Ubuntu but provided in a tarball.

    [Raw Linux Binary :material-tray-arrow-down:]({{ linux_raw_bin_stable }}){ .md-button }
    [Nightly Raw Linux Binary :material-tray-arrow-down:]({{ linux_raw_bin_nightly }}){ .md-button }


