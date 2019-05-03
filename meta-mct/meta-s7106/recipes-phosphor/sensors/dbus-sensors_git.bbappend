FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-Support-temp2-and-share-the-same-threshold.patch \
            file://0002-s7106-add-supported-pmbus-name-cffps1.patch \
            file://0003-s7106-add-cpu-and-dimm-sesnor-via-ME.patch \
            file://0004-Add-gpio-dbus-sensor-for-caterr-feature.patch \
            "

SYSTEMD_SERVICE_${PN} += " xyz.openbmc_project.gpiosensor.service"
