# aRCH mETA iNFORMATION . SHell IS ami.sh

These are some scraps of shell scripts to organize work with *MANY*
versions of Arch Linux PKGBUILD files.

## Install

	mkdir /path/to/new/empty/dir
	cd /path/to/new/empty/dir
	git clone some.git.host.ing/ypb/ami.sh

And (for now) simply soft link `ami` to somewhere in your *PATH*s.
`ami` will use `$(dirname $0)/..` as root dir of all its _"stuff"_.
Or you can peruse etc/ files.

## Usage

	ami cmds

for help... or use the force Luc, read teh src; for now:

* init - duh
* status - doh^2
* import - not really working yet (just the below)
* aur (get via aurget)
* svn (update)

each `pkg-foo` is going to be a separate git branch commonly forking from
almost initially empty `pkg` (just a placeholder README.md) and layout like so:

	# from svn
	pkg/foo/{packages|community}/trunk/PKGB...
	pkg/foo/{packages|community}/repos/blah/PKGB...
	# from aur
	pkg/foo/aur/PKGB...
	# named "local" if it's brand new
	pkg/foo/ypb/PKGB...
	# some others for sure
	# as we should have 'aur-ypb' or 'packages-trunk/core/extra-ypb'
	# to indicate WTF we borked it off... anywayz
