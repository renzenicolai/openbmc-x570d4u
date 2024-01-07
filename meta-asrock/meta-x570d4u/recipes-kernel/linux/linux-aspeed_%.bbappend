FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI:append:x570d4u = " \
    file://aspeed-bmc-asrock-x570d4u.dts \
    file://x570d4u.cfg \
"

do_patch:append() {
  for DTB in "${KERNEL_DEVICETREE}"; do
      DT=`basename ${DTB} .dtb`
      if [ -r "${WORKDIR}/${DT}.dts" ]; then
          cp ${WORKDIR}/${DT}.dts \
              ${STAGING_KERNEL_DIR}/arch/${ARCH}/boot/dts/aspeed
      fi
  done 
}
