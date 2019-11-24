EAPI=6

inherit autotools

DESCRIPTION='Fish-like autosuggestions for zsh'
SRC_URI='zsh-autosuggestions-0.6.3.tar.gz'
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

