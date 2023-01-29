.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn __wStringRead, global
/* 802C6F2C 002904EC  2C 05 00 00 */	cmpwi r5, 0x0
/* 802C6F30 002904F0  41 82 00 18 */	beq .L_802C6F48
/* 802C6F34 002904F4  2C 05 00 01 */	cmpwi r5, 0x1
/* 802C6F38 002904F8  41 82 00 44 */	beq .L_802C6F7C
/* 802C6F3C 002904FC  2C 05 00 02 */	cmpwi r5, 0x2
/* 802C6F40 00290500  41 82 00 68 */	beq .L_802C6FA8
/* 802C6F44 00290504  48 00 00 70 */	b .L_802C6FB4
.L_802C6F48:
/* 802C6F48 00290508  80 83 00 00 */	lwz r4, 0x0(r3)
/* 802C6F4C 0029050C  A0 A4 00 00 */	lhz r5, 0x0(r4)
/* 802C6F50 00290510  2C 05 00 00 */	cmpwi r5, 0x0
/* 802C6F54 00290514  40 82 00 18 */	bne .L_802C6F6C
/* 802C6F58 00290518  38 00 00 01 */	li r0, 0x1
/* 802C6F5C 0029051C  90 03 00 04 */	stw r0, 0x4(r3)
/* 802C6F60 00290520  3C 60 00 01 */	lis r3, 0x1
/* 802C6F64 00290524  38 63 FF FF */	addi r3, r3, -0x1
/* 802C6F68 00290528  4E 80 00 20 */	blr
.L_802C6F6C:
/* 802C6F6C 0029052C  38 04 00 02 */	addi r0, r4, 0x2
/* 802C6F70 00290530  90 03 00 00 */	stw r0, 0x0(r3)
/* 802C6F74 00290534  7C A3 2B 78 */	mr r3, r5
/* 802C6F78 00290538  4E 80 00 20 */	blr
.L_802C6F7C:
/* 802C6F7C 0029053C  80 03 00 04 */	lwz r0, 0x4(r3)
/* 802C6F80 00290540  2C 00 00 00 */	cmpwi r0, 0x0
/* 802C6F84 00290544  40 82 00 14 */	bne .L_802C6F98
/* 802C6F88 00290548  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 802C6F8C 0029054C  38 05 FF FE */	addi r0, r5, -0x2
/* 802C6F90 00290550  90 03 00 00 */	stw r0, 0x0(r3)
/* 802C6F94 00290554  48 00 00 0C */	b .L_802C6FA0
.L_802C6F98:
/* 802C6F98 00290558  38 00 00 00 */	li r0, 0x0
/* 802C6F9C 0029055C  90 03 00 04 */	stw r0, 0x4(r3)
.L_802C6FA0:
/* 802C6FA0 00290560  7C 83 23 78 */	mr r3, r4
/* 802C6FA4 00290564  4E 80 00 20 */	blr
.L_802C6FA8:
/* 802C6FA8 00290568  80 03 00 04 */	lwz r0, 0x4(r3)
/* 802C6FAC 0029056C  54 03 04 3E */	clrlwi r3, r0, 16
/* 802C6FB0 00290570  4E 80 00 20 */	blr
.L_802C6FB4:
/* 802C6FB4 00290574  38 60 00 00 */	li r3, 0x0
/* 802C6FB8 00290578  4E 80 00 20 */	blr
.endfn __wStringRead
