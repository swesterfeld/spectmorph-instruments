#!/bin/bash
set -Eeuo pipefail

export CCACHE_DIR=/output/ccache
export CC="ccache gcc" CXX="ccache g++"

cd spectmorph
./autogen.sh --without-ao
make -j$(nproc)
make -j$(nproc) check
make install
cd ..
./make-dist
INST_VERSION=$(grep version index.smindex | sed 's/.*"\([0-9a-z.-]*\)"$/\1/g')
cp spectmorph-instruments-$INST_VERSION.tar.xz /output
