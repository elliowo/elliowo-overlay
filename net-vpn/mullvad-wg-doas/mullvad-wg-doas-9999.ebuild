# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Fork of phvr Mullvad script to run with OpenDoas"
EGIT_REPO_URI="https://github.com/elliowo/mullvad-wg-doas.git"
HOMEPAGE="https://gitlab.com/adihrustic/Mullvad-WireGuard-script/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
		app-admin/doas
		app-misc/jq
		net-dns/openresolv
		net-firewall/iptables
		net-misc/curl
		net-vpn/wireguard-tools"
BDEPEND=""

src_install() {
	dobin mullvad
	insinto /usr/share/bash-completion/completions
	doins completion/mullvad
}
