FILESEXTRAPATHS:append:buv-runbmc := "${THISDIR}/${PN}:"
SRC_URI:append:buv-runbmc = " file://0001-Revert-Remove-HMAC-SHA1-from-Authentication-Integrit.patch"
SRC_URI:append:buv-runbmc = " file://0001-Add-RemoteIPAddr-support.patch"
SRC_URI:append:buv-runbmc = " file://0002-add-server-type-and-oem-id-to-meet-MS-spec.patch"
#SRC_URI:append:buv-runbmc = " file://0003-set-channel-security-keys.patch"

RMCPP_IFACE = "eth1"
