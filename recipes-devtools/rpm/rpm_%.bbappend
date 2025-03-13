# debugedit was added to RDEPENDS of rpm-build from poky commit 00c9f3
# https://github.com/yoctoproject/poky/commit/00c9f39fcb821690934ef0eb9cf8e5bbbcf24676
#
# But debugedit has GPLv3 license, thus if user chooses to build image
# without GPLv3, error will always happens.
# (unless user changes PACKAGE_CLASSES to another system other than rpm)
# Workaround by forcefully remove this RDEPENDS in that case.
# Note that with this missing dependency, rpm-build may unusable.
RDEPENDS:rpm-build:remove = "debugedit"
