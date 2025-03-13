# connman-client is disabled because it needs readline which has GPLv3 license
# ltp depends on many GPLv3 software, thus not usable if those software are excluded
RDEPENDS:${PN}:remove = "connman-client ltp"
