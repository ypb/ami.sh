
# Nothing here to see... merely exercise in 'git archive'

NAME=amish

VERSION=$(shell grep AMI_VERSION ami | cut -d '=' -f2)
GITSHA1=$(shell git describe --always)

APREFIX=${NAME}-${VERSION}-${GITSHA1}
ARCHIVE=${APREFIX}.tar.gz

arc: ../${ARCHIVE}

../${ARCHIVE}:
	git archive --format=tar --prefix=${APREFIX}/ HEAD | gzip > $@

.PHONY: arc
