# Disable GPLv3 software (need to remove ptest as well due to dependence to GPLv3 software)
INCOMPATIBLE_LICENSE = "GPL-3.0-only GPL-3.0-or-later"
DISTRO_FEATURES:remove = "ptest"
