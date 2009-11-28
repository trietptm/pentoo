# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x

inherit subversion
EAPI="2"
KEYWORDS="x86 amd64"
DESCRIPTION="One ebuild to rule them all and in the darkness bind them"
HOMEPAGE="http://www.pentoo.ch"
ESVN_REPO_URI="https://www.pentoo.ch/svn/livecd/trunk/portage/"
SLOT="0"
LICENSE="GPL"
IUSE="livecd"

RDEPEND="sys-apps/openrc[pentoo]"
DEPEND="${RDEPEND}"

src_install() {
	if ! use livecd; then
		dodir /etc/
		cp -R "${S}/" "${D}/etc/portage/" || die "Install failed!"
	fi
}

pkg_config() {
	elog "This ebuild is a meta ebuild to handle all the pentoo specific things which"
	elog "we can't figure out how to handle cleanly.  This will allow us our very own"
	elog "meta-package which can be used to make sure the installed users can be"
	elog "updated when we make fairly major changes.  This may not handle everything,"
	elog "but it is a start..."
}
