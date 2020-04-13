EAPI=6

inherit autotools

DESCRIPTION='Good and sane zsh config'
SRC_URI='bkg-zsh-config-2.4.0.tar.gz'
SLOT='0'
KEYWORDS='amd64 ~x86'
IUSE=''

DEPEND='app-shells/zsh app-shells/fast-syntax-highlighting
        app-shells/you-should-use app-shells/zaw app-shells/zsh-autosuggestions'
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

