#!/bin/bash
set -xe
TAG_NAME=$(ci/tag-name.sh)

python3 -m pip install toml aiohttp
curl -L 'https://github.com/flatpak/flatpak-builder-tools/raw/master/cargo/flatpak-cargo-generator.py' > /tmp/flatpak-cargo-generator.py
python3 /tmp/flatpak-cargo-generator.py Cargo.lock -o flathub/generated-sources.json

URL="https://github.com/wez/weenyterm/releases/download/${TAG_NAME}/weenyterm-${TAG_NAME}-src.tar.gz"

# We require that something has obtained the source archive already and left it
# in the current dir. This is handled by actions/download-artifact in CI
SHA256=$(sha256sum weenyterm*-src.tar.gz | cut -d' ' -f1)

sed -e "s,@URL@,$URL,g" -e "s/@SHA256@/$SHA256/g" < assets/flatpak/org.weenyfurlong.weenyterm.template.json > flathub/org.weenyfurlong.weenyterm.json

RELEASE_DATE=$(git -c "core.abbrev=8" show -s "--format=%cd" "--date=format:%Y-%m-%d")
sed -e "s,@TAG_NAME@,$TAG_NAME,g" -e "s/@DATE@/$RELEASE_DATE/g" < assets/flatpak/org.weenyfurlong.weenyterm.appdata.template.xml > flathub/org.weenyfurlong.weenyterm.appdata.xml

cd flathub
git config user.email weeny@weenyfurlong.org
git config user.name 'Weeny Furlong'
git checkout -b "$TAG_NAME" origin/master
git add --all
git diff --cached
git commit -m "New version: $TAG_NAME"
git push --set-upstream origin "$TAG_NAME" --quiet
