#!/bin/bash
set -Eeuo pipefail

git clone https://github.com/swesterfeld/spectmorph.git || echo clone fail
cd spectmorph
git checkout ae2117f726d4da3a90f1fdb6187e929627b2c27e
GIT_VERSION=$(git log -1 --format=%cd --date=format:'%Y-%m-%d %H:%M:%S')
cd ..

docker build -f misc/Dockerfile -t spectmorph-instruments .
docker run -v $PWD/output:/output -t spectmorph-instruments misc/build-docker.sh

echo "*** used SpectMorph version $GIT_VERSION"
echo
echo "### next steps before making a release on github:"
echo "  git tag -a $(git log -1 --format=%cd --date=format:'%Y-%m-%d')"
echo "  git push --tags"
echo "  git push gh-origin --tags"
