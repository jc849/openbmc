FILESEXTRAPATHS:prepend:evb-npcm750 := "${THISDIR}/${PN}:"

SRC_URI:append:evb-npcm750 = " file://NUVOTON-ARBEL-EVB.json"
SRC_URI:append:evb-npcm750 = " file://baseboard.fru.bin"

do_install:append:evb-npcm750() {
    rm -f ${D}/usr/share/entity-manager/configurations/*.json
    install -d ${D}${datadir}/entity-manager
    install -m 0644 -D ${WORKDIR}/NUVOTON-ARBEL-EVB.json \
        ${D}${datadir}/entity-manager/configurations/NUVOTON-ARBEL-EVB.json
    mkdir -p ${D}/etc/fru
    install -m 0444 ${WORKDIR}/baseboard.fru.bin ${D}/etc/fru
}
