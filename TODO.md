
## TODO

* PERHAPS have one "trunk" and add aur-$ARCH and $AMI_USER-$ARCH "repos"...
or "at least" do not rename "trunk" dir(s) to packages/community... hmmm...

* 'a fork' - p/pkg/{arch,aur} -> p/pkg/$AMI_USER (or how would you call it,
this operation?) 'a meta'? a me... heh. 'a meta split|own'?

* 'a clone' - of the git0 and still manage it with the same AMI install
and cached data (i.e. svn, aur, arch, even tmp...)

* 'a class'ify - i.e. "compare" against installed...

* 'a import pkg' do both?!?
* 'a import' should "try" to checkout "new" branch? which if both?

* 'a update'
* 'a sync' - clone...?

* 'a search' - 'pacman -Ss foo && aurget -Ss foo', too trivial...?

* the question of whole SVN history... perhaps not worth it...

## DONE

* ./ami don't work as expected...
* 'a view aur' - '{ cat PKGBUILD; ls -al pkg } | less...' same for svn?
* 'a view'... make 'a st aur' prepend aur/? but 'a vi svn' has no revisions,
useless... 'a vi all'
