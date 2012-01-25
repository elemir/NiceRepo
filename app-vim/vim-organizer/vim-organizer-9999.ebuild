# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-vim/session/session-1.4.16.ebuild,v 1.1 2011/09/19 06:12:02 radhermit Exp $

EAPI=4

inherit vim-plugin

MY_PN="VimOrganizer"
DESCRIPTION="vim plugin: emulates Emacs org-mode feature"
HOMEPAGE="http://www.vim.org/scripts/script.php?script_id=3342"
SRC_URI="https://github.com/hsitz/${MY_PN}/tarball/master -> ${P}.tar.gz"
LICENSE="vim"
KEYWORDS=""
IUSE=""

VIM_PLUGIN_HELPFILES="vimorg.txt"

src_unpack() {
	unpack ${A}
	mv *-${MY_PN}-* "${S}"
}

src_prepare() {
	# remove unneeded files
	rm INSTALL.txt VimOrganizerCheatsheet.org _vimrc intro.txt  || die
	rm -r contrib || die
}
