.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_802B8654, global
/* 802B8654 00281C14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B8658 00281C18  7C 08 02 A6 */	mflr r0
/* 802B865C 00281C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B8660 00281C20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B8664 00281C24  7C 7F 1B 78 */	mr r31, r3
/* 802B8668 00281C28  38 60 00 00 */	li r3, 0x0
/* 802B866C 00281C2C  4B DC A6 E9 */	bl func_80082D54
/* 802B8670 00281C30  4B E0 75 F9 */	bl func_800BFC68
/* 802B8674 00281C34  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B8678 00281C38  41 82 00 2C */	beq .L_802B86A4
/* 802B867C 00281C3C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B8680 00281C40  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 802B8684 00281C44  7D 89 03 A6 */	mtctr r12
/* 802B8688 00281C48  4E 80 04 21 */	bctrl
/* 802B868C 00281C4C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 802B8690 00281C50  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802B8694 00281C54  4C 40 13 82 */	cror eq, lt, eq
/* 802B8698 00281C58  7C 60 00 26 */	mfcr r3
/* 802B869C 00281C5C  54 63 1F FE */	extrwi r3, r3, 1, 2
/* 802B86A0 00281C60  48 00 00 08 */	b .L_802B86A8
.L_802B86A4:
/* 802B86A4 00281C64  38 60 00 00 */	li r3, 0x0
.L_802B86A8:
/* 802B86A8 00281C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B86AC 00281C6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B86B0 00281C70  7C 08 03 A6 */	mtlr r0
/* 802B86B4 00281C74  38 21 00 10 */	addi r1, r1, 0x10
/* 802B86B8 00281C78  4E 80 00 20 */	blr
.endfn func_802B8654

# 0x8001BE18 - 0x8001BE20
.section extab, "a"
.balign 4

.obj "@etb_8001BE18", local
.hidden "@etb_8001BE18"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8001BE18"

# 0x800339B0 - 0x800339BC
.section extabindex, "a"
.balign 4

.obj "@eti_800339B0", local
.hidden "@eti_800339B0"
	.4byte func_802B8654
	.4byte 0x00000068
	.4byte "@etb_8001BE18"
.endobj "@eti_800339B0"
