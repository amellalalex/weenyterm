#!/bin/bash
set -x
name="$1"

notes=$(cat <<EOT
See https://weenyfurlong.org/weenyterm/changelog.html#$name for the changelog

If you're looking for nightly downloads or more detailed installation instructions:

[Windows](https://weenyfurlong.org/weenyterm/install/windows.html)
[macOS](https://weenyfurlong.org/weenyterm/install/macos.html)
[Linux](https://weenyfurlong.org/weenyterm/install/linux.html)
[FreeBSD](https://weenyfurlong.org/weenyterm/install/freebsd.html)
EOT
)

gh release view "$name" || gh release create --prerelease --notes "$notes" --title "$name" "$name"
