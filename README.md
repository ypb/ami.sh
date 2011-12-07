# aRCH mETA iNFORMATION . shELL IS ami.sh

These are some scraps of shell scripts to organize work with **MANY**
versions of Arch Linux PKGBUILD files.

## Install

	mkdir /path/to/new/empty/dir
	cd /path/to/new/empty/dir
	git clone proto://some.git.host.ing/ypb/ami.sh

And (for now) simply soft link `ami` to somewhere in your **PATH**s.
`ami` will use `$(dirname $0)/..` as root dir of all its _"stuff"_.
Or you can peruse etc/ files. And while you are at it you should most
certainly set **AMI_USER** in etc/init to something more palatable.

## Usage

	ami cmds

for help... or use the force Luc, read teh src; for now, in short:

* init - duh
* status - doh^2
* import - SVN almost actually working
* svn (update)
* aur (aurget)

## Designesess (also see var/master.README.md for mud-clearness)

each `p/<pkgname>/<repo>` (repo := `arch`, `aur` or `$AMI_USER`) is going
to be a separate git branch, whilst sets of packages will reside in `r/<repo>`
branches. Concrete, on the file-system, layout:

	# from Arch Linux SVN
	pkgname/{packages,community,{core,extra,community,etc}-{i686,x86_64}}/PKGB...
	# the first two are renamed "trunks"...
	# from AUR
	pkgname/aur/PKGB...
	# "local" if it's brand new or forked&cp'ed
	pkgname/$AMI_USER/PKGB...
	# here git history should indicate provenience (hopefully).
