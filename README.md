# ami.sh (aRCH mETA iNFORMATION . SHell IS ami.sh)

These are some scraps of shell scripts to organize work with *MANY*
versions of Arch Linux PKGBUILD files.

## Install

	mkdir /path/to/new/empty/dir
	cd /path/to/new/empty/dir
	git clone github.com/ypb/ami.sh

And (for now) simply soft link `ami` to somewhere in your *PATH*s.
`ami` will use `$(dirname $0)/..` as root dir of all its _"stuff"_.

## Usage

	ami cmds

for help...
