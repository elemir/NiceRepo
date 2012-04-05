# Copyright 1999-2012 Evgeny I. E. Omelchenko
# Distributed under the terms of the WTF Public License v2
# $Header: $

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Explicitly typed, checked exceptions with stack traces"
HOMEPAGE="http://pepeiborra.github.com/control-monad-exception"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/failure-0.1[profile?]
		<dev-haskell/failure-0.3[profile?]
		dev-haskell/monadloc[profile?]
		dev-haskell/transformers[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
