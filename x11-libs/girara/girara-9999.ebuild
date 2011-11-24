# Copyright 2011 Evgeny I. E. Omelchenko
# Distributed under the terms of the WTF Public License v2

EAPI="4"

inherit git-2
EGIT_REPO_URI="git://pwmt.org/girara.git"

IUSE="gtk3"

DESCRIPTION="UI library"
HOMEPAGE="http://pwmt.org/projects/libgirara"

LICENSE="ZLIB"
SLOT="0"

COMMON_DEPEND="
	!gtk3? (
		>=x11-libs/gtk+-2.18.6:2
	)
	gtk3? (
		x11-libs/gtk+:3
	)
"

src_compile() {
	emake GIRARA_GTK_VERSION=$(use gtk3 && echo 3 || echo 2)
}

src_install() {
	emake DESTDIR="${D}" GIRARA_GTK_VERSION=$(use gtk3 && echo 3 || echo 2) install
}
