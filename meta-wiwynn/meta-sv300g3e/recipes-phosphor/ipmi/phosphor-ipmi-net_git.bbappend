FILESEXTRAPATHS_prepend_sv300g3e := "${THISDIR}/${PN}:"

SRCREV = "07bb095158b39cedb49dae0972e489a6a2776faf"
SRC_URI += "file://0001-netipmid-Skip-SOL-payload-activation-checking.patch \
            file://0002-Limit-the-host-console-buffer-size-to-1M.patch \
            file://0003-Add-HMAC-SHA1-to-Authentication-Integrity-Alg.patch \
           "
