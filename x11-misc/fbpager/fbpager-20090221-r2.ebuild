# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit flag-o-matic

DESCRIPTION="A Pager for fluxbox"
HOMEPAGE="http://git.fluxbox.org/fbpager.git/"
SRC_URI="mirror://gentoo/${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~mips ppc ~sparc ~x86"
IUSE="+xrender"

DEPEND="x11-libs/libX11
	xrender? ( x11-libs/libXrender )"
RDEPEND="${DEPEND}"

src_prepare() {
	append-cxxflags "-std=c++14"

	default
}

src_configure() {
	econf $(use_enable xrender)
}

pkg_postinst() {
	einfo "To run fbpager inside the FluxBox slit, use fbpager -w"
}
