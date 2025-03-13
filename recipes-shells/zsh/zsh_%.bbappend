# Allow zsh to be a complete replacement for bash.
# With this, it is possible to build system without bash (GPLv3 license).
ALTERNATIVE:${PN}:append = " bash"
ALTERNATIVE_LINK_NAME[bash] = "/bin/bash"
ALTERNATIVE_TARGET[bash] = "${base_bindir}/${BPN}"
ALTERNATIVE_PRIORITY[bash] = "100"

RPROVIDES:${PN}:append = " bash"

# Avoid depend on gdbm, which has license GPLv3
# In fact, gdbm is not used because EXTRA_OECONF already has "--disable-gdbm".
DEPENDS:remove = "gdbm"
