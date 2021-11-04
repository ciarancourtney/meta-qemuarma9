# WR qemuarma9 configuration, not supported in Yocto
KBRANCH:qemuarma9 ?= "v5.4/standard/arm-versatile-926ejs"
KERNEL_DEVICETREE:qemuarma9 = "vexpress-v2p-ca9.dtb"
COMPATIBLE_MACHINE:qemuarma9 = "qemuarma9"

# https://github.com/mendersoftware/meta-mender/blob/ce2108a3b889503eaa1981cb3385be8811f56e1f/meta-mender-qemu/recipes-kernel/linux/linux-yocto_%25.bbappend#L26-L28
# This doesn't appear in our config so remove it to avoid spurious warnings
KERNEL_FEATURES:remove:qemuarma9 = "features/drm-bochs/drm-bochs.scc features/scsi/scsi-debug.scc"
