EAPI=6

inherit autotools

DESCRIPTION='ZSH plugin that reminds you to use existing aliases for commands you just typed '
SRC_URI='you-should-use-1.6.0.tar.gz'
SLOT='0'
KEYWORDS='amd64 ~x86'
IUSE=''

DEPEND='app-shells/zsh'
RESTRICT='fetch'

src_prepare() {
	default
	eautoreconf
}
src_configure() {
	econf
}
src_compile() {
	emake V=1
}
src_install() {
	emake DESTDIR="${D}" install
}

