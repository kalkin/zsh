EAPI=6

inherit autotools

DESCRIPTION='Feature rich syntax highlighting for Zsh'
SRC_URI='fast-syntax-highlighting-1.54.6.tar.gz'
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
