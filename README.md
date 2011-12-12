# aRCH mETA iNFORMATION . shELL IS ami.sh

GIT organize work with **MANY** versions of Arch Linux PKGBUILD files.

## Install

Requirements:

* Bash (and "friends": grep, sed, cat, cut, wc, date, etc.)
* Git
* Subversion
* Aurget (can be re-configured with the same behavior in `etc/general`)
* Tig (optionally to 'ami view' GIT repo)

Then:

	mkdir empty/new && cd empty/new
	git clone https://github.com/ypb/ami.sh.git

And (for now) simply soft link `ami` to somewhere in your **PATH**s.
`ami` will use `empty/new/amish.cache.d` as root dir of all its _"stuff"_.
Or you can peruse `etc/` files. And while you are at it you should most
certainly set **AMI_USER** in `etc/init` to something more permanent.

## Usage

	ami cm|cmds

for help...; for now implemented, with short explication:

* import - package from Arch Linux SVN or AUR (including histor(y/ies))
* status - show current GIT/SVN/AUR state
* svn - only checkout from Arch Linux SVN or see log
* aur - only download AUR record (using aurget)
* view - browse GIT (with tig or GIT_VIEWER) or list cached positions
* init - 'pkg' copies chosen template PKGBUILD from pacman shares to CWD

calling each individual `cmd -h` will show current calling convention or
"use the force Luc, read the source";-) **TODO.md** contains ideas on other
possible cmds and their utility.

## Designesess (also see var/master.README.md for mud-clearer explanation)

each `p/<pkgname>/<repo>` (repo := `arch`, `aur` or `$AMI_USER`) is going
to be a separate git branch, whilst sets of packages will reside in `r/<repo>`
branches. Concrete, on the file-system layout:

	# from Arch Linux SVN
	pkgname/{packages,community,{core,extra,community,etc}-{i686,x86_64}}/PKGB...
	# the first two are renamed "trunks"...
	# from AUR
	pkgname/aur/PKGB...
	# "local" if it's brand new or forked&cp'ed; exact work-flow remains to be
	# experimented out
	pkgname/$AMI_USER/PKGB...
	# here git history should indicate provenience (hopefully).
