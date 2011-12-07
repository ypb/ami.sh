# What

This is [GIT](http://git-scm.com/) repo of [ArchLinux](http://archlinux.org/)
[PKGBUILD](https://wiki.archlinux.org/index.php/PKGBUILD) files managed with
the help of [ami.sh](https://github.com/ypb/ami.sh).

## limiting Branch structure of the directory Tree namespace

#### tl;dr

Abstractly *foo* is a package, *bar* is you. Down to aur is `p/foo/arch`, then
`p/foo/aur` branch, followed by yours `p/foo/bar`. And below is concrete
directory layout:

	foo/packages/PKGB...
	foo/{core,extra}-{i686,x86_64}/PKGB...
	foo/community/PKGB...
	foo/community-{i686,x86_64}/PKGB...
	foo/aur/PKGB...
	foo/bar/PKGB...

_Obvious_ sets of foos can "live" in `r/arch`, `r/aur`, `r/bar` or `r/whatever`
repository branches.

## whilst

`master` branch should be able to contain everything, though the real work
should be taking place in `p/` branches and only final results merged into
`master` post factum (probably through intermediate `r/` branches of
individual repository sets of packages).

`p/<pkgname>/<repo>` each "package/source" should live in its own branch
(and *preferably* also a directory "pkgname/repo", though "p/pkname/repo"
can contain multiple of subdirs as long as they are widely understood
to exist), which should enable comfortable forking and merging between
individual source maintainers (`p/` because...

`r/<repo>` highly improbable but unfortunate may be the case of some pkg
having the same name as repo, but these are only "helper" view branches to see
sets of packages at once.

### trivial ami.sh `<repo>` names convention

`arch` encompasses all packages maintained "inside" ArchLinux distro (this
includes all "pacman repositories" i.e. core, extra, community, etc - but
their versions of PKGBUILDs reside inside appropriate "pkgname/repository"
subdirs, though constituting one ami.sh repo they share common package history.

`aur` well, obviously...

`~(arch|aur)` i.e. your name set with `AMI_USER` variable in `etc/init` file.
But for, now probably, obvious reason one should avoid calling oneself
**packages**, **community** or **extra**, either.


##### c&p'ed on *git init* with *ami.sh* version 
