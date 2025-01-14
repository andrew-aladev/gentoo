# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_AUTHOR=DCANTRELL
DIST_VERSION=1.87
inherit perl-module

DESCRIPTION="Check what OS we're running on"
SLOT="0"
KEYWORDS="amd64 ~ia64 ppc ~sparc x86"

RDEPEND="
	>=dev-perl/File-Find-Rule-0.280.0
"
BDEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-File-Temp-0.190.0
		>=virtual/perl-Test-Simple-0.880.0
	)
"

PERL_RM_FILES=(
	"t/pod.t"
)
