# Avoid depend on gawk, which has GPLv3 license
# Can use awk from busybox
RDEPENDS:checkmk:remove = "gawk"
RDEPENDS:checkmk:append = " busybox"
CACHED_CONFIGUREVARS:remove = "ac_cv_path_AWK_PATH=${bindir}/gawk"
CACHED_CONFIGUREVARS:append = " ac_cv_path_AWK_PATH=${bindir}/awk"
