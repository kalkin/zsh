EAPI=6

inherit autotools

DESCRIPTION='zsh anything.el-like widget'
SRC_URI='zaw-1.1.0.tar.gz'
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

