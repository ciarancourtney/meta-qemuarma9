# FIXME getting wic to be 1GiB exactly so qemu doesn't complain
# https://docs.yoctoproject.org/ref-manual/variables.html#term-IMAGE_POSTPROCESS_COMMAND
IMAGE_POSTPROCESS_COMMAND += "resize_wic;"
resize_wic() {
  qemu-img resize -f raw ${IMGDEPLOYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.wic 1G
}
