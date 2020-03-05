FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

# Disable the CPU sensor Tcontrol threshold setting
EXTRA_OECMAKE_append += " -DBMC_CPU_SENSOR_TCONTROL=OFF"

SRC_URI += "file://0001-Support-temp2-and-share-the-same-threshold.patch \
            file://0002-s7106-add-supported-pmbus-name-cffps1.patch \
            file://0003-s7106-add-cpu-and-dimm-sesnor-via-ME.patch \
            file://0004-Add-gpio-dbus-sensor-for-caterr-feature.patch \
            file://0005-s7106-ipmbsensor-add-DIMM-temperature-channl-4-7-sup.patch \
            file://0006-Filter-out-FAN-threshold-event-during-power-transiti.patch \
            file://0007-s7106-new-processor-sensor-to-replace-gpio-sensor.patch \
            file://0008-s7106-add-ipmi-ACPI-sensor.patch \
            file://0009-Support-system-restart-sensor-for-IPMI.patch \
            file://0010-pwr-button-sel-log.patch \
            file://0011-s7106-add-OCP-NIC-temperature-sensor.patch \
            file://0012-version-change-sel-log.patch \
            file://0013-add-ipmi-power-status-sensor.patch \
            file://0014-Add-BMC-reboot-sel-log.patch \
            file://0015-hidden-peci-core-temperature-sensor.patch \
            file://0016-add-psu-status-sensor.patch \
            file://0017-Enabling-NVMe-sensor-support.patch \
            file://0018-change-power-match-to-pgood-event.patch \
            file://0019-f5i-modify-temp-and-Die-sensor-threshold-setting.patch \
            file://0020-Add-prochot-sensor.patch \
            file://0021-Add-Invalid-Value-property-for-power-on-sensors.patch \
            file://0022-Add-type-sensors-to-support-the-invalid-value-proper.patch \
            file://0023-Add-thermtrip-sensor.patch \
            file://0024-disable-PSU-PWM-detecting.patch \
            file://0025-Add-VR-MOS-Margin-sensor.patch \
            file://0026-support-leaky-bucket-sensor.patch \
            file://0027-add-event-sensor.patch \
            file://0028-Support-FruStateSensor.patch \
            file://0029-set-sensor-reading-unavailable-bit-if-nvme-is-not-pr.patch \
            file://0030-add-sensor-reading-unavailable-bit-for-VR-sensor.patch \
            file://0031-Fix-the-cpu-sensor-display.patch \
            "

#SYSTEMD_SERVICE_${PN} += " xyz.openbmc_project.gpiosensor.service"
SYSTEMD_SERVICE_${PN} += " xyz.openbmc_project.processorsensor.service"
SYSTEMD_SERVICE_${PN} += " xyz.openbmc_project.acpisensor.service"
SYSTEMD_SERVICE_${PN} += " xyz.openbmc_project.hostresetsensor.service"
SYSTEMD_SERVICE_${PN} += " xyz.openbmc_project.pwrbuttonsensor.service"
SYSTEMD_SERVICE_${PN} += " xyz.openbmc_project.versionchangesensor.service"
SYSTEMD_SERVICE_${PN} += " xyz.openbmc_project.aclostsensor.service"
SYSTEMD_SERVICE_${PN} += " xyz.openbmc_project.mgtsubsyshealthsensor.service"
SYSTEMD_SERVICE_${PN} += " xyz.openbmc_project.psufaultsensor.service"
SYSTEMD_SERVICE_${PN} += " xyz.openbmc_project.nvmesensor.service"
SYSTEMD_SERVICE_${PN} += " xyz.openbmc_project.mostempsensor.service"
SYSTEMD_SERVICE_${PN} += " xyz.openbmc_project.hostmemoryeccsensor.service"
SYSTEMD_SERVICE_${PN} += " xyz.openbmc_project.eventsensor.service"
SYSTEMD_SERVICE_${PN} += " xyz.openbmc_project.frustatesensor.service"

