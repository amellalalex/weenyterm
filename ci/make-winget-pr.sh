#!/bin/bash
set -xe

winget_repo=$1
setup_exe=$2
TAG_NAME=$(ci/tag-name.sh)

cd "$winget_repo" || exit 1

# First sync repo with upstream
git remote add upstream https://github.com/microsoft/winget-pkgs.git || true
git fetch upstream master --quiet
git checkout -b "$TAG_NAME" upstream/master

exehash=$(sha256sum -b ../$setup_exe | cut -f1 -d' ' | tr a-f A-F)

release_date=$(git show -s "--format=%cd" "--date=format:%Y-%m-%d")

# Create the directory structure
mkdir manifests/w/weeny/weenyterm/$TAG_NAME

cat > manifests/w/weeny/weenyterm/$TAG_NAME/weeny.weenyterm.installer.yaml <<-EOT
PackageIdentifier: weeny.weenyterm
PackageVersion: $TAG_NAME
MinimumOSVersion: 10.0.17763.0
InstallerType: inno
UpgradeBehavior: install
ReleaseDate: $release_date
Installers:
- Architecture: x64
  InstallerUrl: https://github.com/wez/weenyterm/releases/download/$TAG_NAME/$setup_exe
  InstallerSha256: $exehash
  ProductCode: '{BCF6F0DA-5B9A-408D-8562-F680AE6E1EAF}_is1'
ManifestType: installer
ManifestVersion: 1.1.0
EOT

cat > manifests/w/weeny/weenyterm/$TAG_NAME/weeny.weenyterm.locale.en-US.yaml <<-EOT
PackageIdentifier: weeny.weenyterm
PackageVersion: $TAG_NAME
PackageLocale: en-US
Publisher: Weeny Furlong
PublisherUrl: https://weenyfurlong.org/
PublisherSupportUrl: https://github.com/wez/weenyterm/issues
Author: Weeny Furlong
PackageName: WeenyTerm
PackageUrl: http://weenyfurlong.org/weenyterm
License: MIT
LicenseUrl: https://github.com/wez/weenyterm/blob/main/LICENSE.md
ShortDescription: A GPU-accelerated cross-platform terminal emulator and multiplexer implemented in Rust
ReleaseNotesUrl: https://weenyfurlong.org/weenyterm/changelog.html#$TAG_NAME
ManifestType: defaultLocale
ManifestVersion: 1.1.0
EOT

cat > manifests/w/weeny/weenyterm/$TAG_NAME/weeny.weenyterm.yaml <<-EOT
PackageIdentifier: weeny.weenyterm
PackageVersion: $TAG_NAME
DefaultLocale: en-US
ManifestType: version
ManifestVersion: 1.1.0
EOT

git add --all
git diff --cached
git commit -m "New version: weeny.weenyterm version $TAG_NAME"
git push --set-upstream origin "$TAG_NAME" --quiet
