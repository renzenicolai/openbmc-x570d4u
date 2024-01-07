FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"
SRC_URI:append = " file://1u4lw-x570-2l2t.json \
                   file://x570d4u-2l2t.json \
		"
do_install:append() {
     install -d ${D}/usr/share/entity-manager/configurations
     install -m 0444 ${WORKDIR}/*.json ${D}/usr/share/entity-manager/configurations
}
