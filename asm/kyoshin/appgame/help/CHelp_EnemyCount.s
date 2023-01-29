.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_802B7F54, global
/* 802B7F54 00281514  38 00 00 00 */	li r0, 0x0
/* 802B7F58 00281518  90 03 00 0C */	stw r0, 0xc(r3)
/* 802B7F5C 0028151C  4E 80 00 20 */	blr
.endfn func_802B7F54

.fn func_802B7F60, global
/* 802B7F60 00281520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B7F64 00281524  7C 08 02 A6 */	mflr r0
/* 802B7F68 00281528  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B7F6C 0028152C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B7F70 00281530  7C 7F 1B 78 */	mr r31, r3
/* 802B7F74 00281534  80 83 00 0C */	lwz r4, 0xc(r3)
/* 802B7F78 00281538  2C 04 00 00 */	cmpwi r4, 0x0
/* 802B7F7C 0028153C  41 81 00 68 */	bgt .L_802B7FE4
/* 802B7F80 00281540  4B DF EC FD */	bl func_800B6C7C
/* 802B7F84 00281544  80 A3 00 04 */	lwz r5, 0x4(r3)
/* 802B7F88 00281548  38 80 00 00 */	li r4, 0x0
/* 802B7F8C 0028154C  80 65 00 00 */	lwz r3, 0x0(r5)
/* 802B7F90 00281550  48 00 00 0C */	b .L_802B7F9C
.L_802B7F94:
/* 802B7F94 00281554  80 63 00 00 */	lwz r3, 0x0(r3)
/* 802B7F98 00281558  38 84 00 01 */	addi r4, r4, 0x1
.L_802B7F9C:
/* 802B7F9C 0028155C  7C 03 28 40 */	cmplw r3, r5
/* 802B7FA0 00281560  40 82 FF F4 */	bne .L_802B7F94
/* 802B7FA4 00281564  2C 04 00 00 */	cmpwi r4, 0x0
/* 802B7FA8 00281568  40 82 00 0C */	bne .L_802B7FB4
/* 802B7FAC 0028156C  38 60 00 00 */	li r3, 0x0
/* 802B7FB0 00281570  48 00 00 64 */	b .L_802B8014
.L_802B7FB4:
/* 802B7FB4 00281574  4B DC EF 91 */	bl func_80086F44
/* 802B7FB8 00281578  90 7F 00 10 */	stw r3, 0x10(r31)
/* 802B7FBC 0028157C  38 60 FF FF */	li r3, -0x1
/* 802B7FC0 00281580  38 80 00 00 */	li r4, 0x0
/* 802B7FC4 00281584  4B DC ED FD */	bl func_80086DC0
/* 802B7FC8 00281588  80 8D A5 A4 */	lwz r4, lbl_80666724@sda21(r13)
/* 802B7FCC 0028158C  38 00 00 3C */	li r0, 0x3c
/* 802B7FD0 00281590  38 60 00 00 */	li r3, 0x0
/* 802B7FD4 00281594  60 84 20 00 */	ori r4, r4, 0x2000
/* 802B7FD8 00281598  90 8D A5 A4 */	stw r4, lbl_80666724@sda21(r13)
/* 802B7FDC 0028159C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802B7FE0 002815A0  48 00 00 34 */	b .L_802B8014
.L_802B7FE4:
/* 802B7FE4 002815A4  34 04 FF FF */	addic. r0, r4, -0x1
/* 802B7FE8 002815A8  90 03 00 0C */	stw r0, 0xc(r3)
/* 802B7FEC 002815AC  40 81 00 0C */	ble .L_802B7FF8
/* 802B7FF0 002815B0  38 60 00 00 */	li r3, 0x0
/* 802B7FF4 002815B4  48 00 00 20 */	b .L_802B8014
.L_802B7FF8:
/* 802B7FF8 002815B8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802B7FFC 002815BC  38 80 00 01 */	li r4, 0x1
/* 802B8000 002815C0  4B DC ED C1 */	bl func_80086DC0
/* 802B8004 002815C4  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 802B8008 002815C8  38 60 00 01 */	li r3, 0x1
/* 802B800C 002815CC  54 00 04 E2 */	rlwinm r0, r0, 0, 19, 17
/* 802B8010 002815D0  90 0D A5 A4 */	stw r0, lbl_80666724@sda21(r13)
.L_802B8014:
/* 802B8014 002815D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8018 002815D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B801C 002815DC  7C 08 03 A6 */	mtlr r0
/* 802B8020 002815E0  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8024 002815E4  4E 80 00 20 */	blr
.endfn func_802B7F60

# 0x8001BD88 - 0x8001BD90
.section extab, "a"
.balign 4

.obj "@etb_8001BD88", local
.hidden "@etb_8001BD88"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BD88"

# 0x80033914 - 0x80033920
.section extabindex, "a"
.balign 4

.obj "@eti_80033914", local
.hidden "@eti_80033914"
	.4byte func_802B7F60
	.4byte 0x000000C8
	.4byte "@etb_8001BD88"
.endobj "@eti_80033914"
