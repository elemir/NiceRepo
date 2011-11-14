# Copyright 1999-2011 Gentoo Foundation
# Copyright 2011 Evgeny I. E. Omelchenko 
# Distributed under the terms of the GNU General Public License v2

inherit font

DESCRIPTION="Microsoft's TrueType Arial font"
HOMEPAGE="http://corefonts.sourceforge.net/"
SRC_URI="mirror://sourceforge/corefonts/arial32.exe"

LICENSE="MSttfEULA"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~x86-fbsd ~x64-freebsd ~x86-freebsd ~x86-interix ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~x64-solaris ~x86-solaris ~x86-winnt"
IUSE="X"

DEPEND="app-arch/cabextract"
RDEPEND=""

S=${WORKDIR}
FONT_S=${WORKDIR}
FONT_SUFFIX="ttf"

src_unpack() {
	for exe in ${A} ; do
		echo ">>> Unpacking ${exe} to ${WORKDIR}"
		cabextract --lowercase "${DISTDIR}"/${exe} > /dev/null \
			|| die "failed to unpack ${exe}"
	done
}

src_install() {
	font_src_install
	# The license explicitly states that the license must be distributed with the
	# fonts. The only way to do that for the binpkg is to include it.
	# We just have to copy it from the portdir because it's not actually inside
	# upstream's own files...
	dodoc "${PORTDIR}"/licenses/"${LICENSE}"
}
