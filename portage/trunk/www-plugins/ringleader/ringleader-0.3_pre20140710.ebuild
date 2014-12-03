# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

FFP_TARGETS="firefox"
inherit mozilla-addon

GITHUB_REVISION="0c2c442fa222c094a408395d3f803881d73fa39f"

DESCRIPTION="FxPnH is a Firefox addon which makes it possible to use Firefox with Plug-n-Hack providers"
HOMEPAGE="https://github.com/mozmark/ringleader"
SRC_URI="https://github.com/mozmark/ringleader/raw/${GITHUB_REVISION}/fx_pnh.xpi -> ${FFP_XPI_FILE}.xpi"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND=""
RDEPEND="${DEPEND} || (
	>=www-client/firefox-bin-24.1.1
	>=www-client/firefox-24.1.1
)"
