# Copyright 2012 Evgeny I. E. Omelchenko
# Distributed under the terms of the WTF Public License v2

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Purely Functional Lazy Interaction with the outer world"
HOMEPAGE="http://hackage.haskell.org/package/oi"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/comonad[profile?]
		dev-haskell/parallel[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
