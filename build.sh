set -e

# common shell functions

die()
{
  echo "$0: $@"
  exit 1
}

test -d "$1" || die "instrument directory $1 doesn't exist"

cd "$1"
pwd
rm -f ../tmp/build-$1.zip
zip -r -q ../tmp/build-$1.zip .
cd ..
smwavset build tmp/build-$1.zip instruments/standard/${1}.smset || die "unable to build new instrument $1"
smtool instruments/standard/${1}.smset strip-all > /dev/null
