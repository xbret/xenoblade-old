.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_802B7D00, global
/* 802B7D00 002812C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B7D04 002812C4  7C 08 02 A6 */	mflr r0
/* 802B7D08 002812C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B7D0C 002812CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B7D10 002812D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802B7D14 002812D4  7C 7E 1B 78 */	mr r30, r3
/* 802B7D18 002812D8  38 60 00 00 */	li r3, 0x0
/* 802B7D1C 002812DC  4B DC B0 39 */	bl func_80082D54
/* 802B7D20 002812E0  4B E0 7F 49 */	bl func_800BFC68
/* 802B7D24 002812E4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B7D28 002812E8  7C 7F 1B 78 */	mr r31, r3
/* 802B7D2C 002812EC  41 82 00 54 */	beq .L_802B7D80
/* 802B7D30 002812F0  80 63 00 04 */	lwz r3, 0x4(r3)
/* 802B7D34 002812F4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B7D38 002812F8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802B7D3C 002812FC  7D 89 03 A6 */	mtctr r12
/* 802B7D40 00281300  4E 80 04 21 */	bctrl
/* 802B7D44 00281304  80 03 00 00 */	lwz r0, 0x0(r3)
/* 802B7D48 00281308  7F E3 FB 78 */	mr r3, r31
/* 802B7D4C 0028130C  90 01 00 08 */	stw r0, 0x8(r1)
/* 802B7D50 00281310  38 81 00 08 */	addi r4, r1, 0x8
/* 802B7D54 00281314  38 A0 00 0A */	li r5, 0xa
/* 802B7D58 00281318  4B EB CF 41 */	bl func_80174C98
/* 802B7D5C 0028131C  81 9E 00 08 */	lwz r12, 0x8(r30)
/* 802B7D60 00281320  7C 60 1B 78 */	mr r0, r3
/* 802B7D64 00281324  7C 00 00 34 */	cntlzw r0, r0
/* 802B7D68 00281328  7F C3 F3 78 */	mr r3, r30
/* 802B7D6C 0028132C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B7D70 00281330  54 04 D9 7E */	srwi r4, r0, 5
/* 802B7D74 00281334  7D 89 03 A6 */	mtctr r12
/* 802B7D78 00281338  4E 80 04 21 */	bctrl
/* 802B7D7C 0028133C  48 00 00 08 */	b .L_802B7D84
.L_802B7D80:
/* 802B7D80 00281340  38 60 00 00 */	li r3, 0x0
.L_802B7D84:
/* 802B7D84 00281344  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B7D88 00281348  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B7D8C 0028134C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B7D90 00281350  7C 08 03 A6 */	mtlr r0
/* 802B7D94 00281354  38 21 00 20 */	addi r1, r1, 0x20
/* 802B7D98 00281358  4E 80 00 20 */	blr
.endfn func_802B7D00

# 0x8001BD58 - 0x8001BD60
.section extab, "a"
.balign 4

.obj "@etb_8001BD58", local
.hidden "@etb_8001BD58"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001BD58"

# 0x800338CC - 0x800338D8
.section extabindex, "a"
.balign 4

.obj "@eti_800338CC", local
.hidden "@eti_800338CC"
	.4byte func_802B7D00
	.4byte 0x0000009C
	.4byte "@etb_8001BD58"
.endobj "@eti_800338CC"
