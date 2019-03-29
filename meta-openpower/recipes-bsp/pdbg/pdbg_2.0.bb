SUMMARY     = "PowerPC FSI Debugger"
DESCRIPTION = "pdbg allows JTAG-like debugging of the host POWER processors"
LICENSE     = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=3b83ef96387f14655fc854ddc3c6bd57"

PV = "2.0+git${SRCPV}"

SRC_URI += "git://github.com/open-power/pdbg.git"
SRCREV = "deb577949a3505064f471e7b7c692e37c38ec8a4"

DEPENDS += "dtc-native"

S = "${WORKDIR}/git"

inherit autotools
