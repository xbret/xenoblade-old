.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn CRICFG_Read, global
/* 8038F4E0 00358AA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038F4E4 00358AA4  7C 08 02 A6 */	mflr r0
/* 8038F4E8 00358AA8  3C A0 80 5F */	lis r5, lbl_805E9D20@ha
/* 8038F4EC 00358AAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038F4F0 00358AB0  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8038F4F4 00358AB4  7C 7B 1B 78 */	mr r27, r3
/* 8038F4F8 00358AB8  7C 9C 23 78 */	mr r28, r4
/* 8038F4FC 00358ABC  83 A5 9D 20 */	lwz r29, lbl_805E9D20@l(r5)
/* 8038F500 00358AC0  2C 1D 00 00 */	cmpwi r29, 0x0
/* 8038F504 00358AC4  40 82 00 0C */	bne .L_8038F510
/* 8038F508 00358AC8  38 60 FF FF */	li r3, -0x1
/* 8038F50C 00358ACC  48 00 00 74 */	b .L_8038F580
.L_8038F510:
/* 8038F510 00358AD0  88 03 00 00 */	lbz r0, 0x0(r3)
/* 8038F514 00358AD4  7C 00 07 75 */	extsb. r0, r0
/* 8038F518 00358AD8  40 82 00 0C */	bne .L_8038F524
/* 8038F51C 00358ADC  3B A0 00 00 */	li r29, 0x0
/* 8038F520 00358AE0  48 00 00 44 */	b .L_8038F564
.L_8038F524:
/* 8038F524 00358AE4  3C 60 80 5F */	lis r3, lbl_805E9D24@ha
/* 8038F528 00358AE8  3B E0 00 00 */	li r31, 0x0
/* 8038F52C 00358AEC  83 C3 9D 24 */	lwz r30, lbl_805E9D24@l(r3)
/* 8038F530 00358AF0  48 00 00 28 */	b .L_8038F558
.L_8038F534:
/* 8038F534 00358AF4  7F A3 EB 78 */	mr r3, r29
/* 8038F538 00358AF8  7F 64 DB 78 */	mr r4, r27
/* 8038F53C 00358AFC  38 A0 00 0C */	li r5, 0xc
/* 8038F540 00358B00  4B F3 34 11 */	bl strncmp
/* 8038F544 00358B04  2C 03 00 00 */	cmpwi r3, 0x0
/* 8038F548 00358B08  40 82 00 08 */	bne .L_8038F550
/* 8038F54C 00358B0C  48 00 00 18 */	b .L_8038F564
.L_8038F550:
/* 8038F550 00358B10  3B FF 00 01 */	addi r31, r31, 0x1
/* 8038F554 00358B14  3B BD 00 10 */	addi r29, r29, 0x10
.L_8038F558:
/* 8038F558 00358B18  7C 1F F0 00 */	cmpw r31, r30
/* 8038F55C 00358B1C  41 80 FF D8 */	blt .L_8038F534
/* 8038F560 00358B20  3B A0 00 00 */	li r29, 0x0
.L_8038F564:
/* 8038F564 00358B24  2C 1D 00 00 */	cmpwi r29, 0x0
/* 8038F568 00358B28  40 82 00 0C */	bne .L_8038F574
/* 8038F56C 00358B2C  38 60 FF FD */	li r3, -0x3
/* 8038F570 00358B30  48 00 00 10 */	b .L_8038F580
.L_8038F574:
/* 8038F574 00358B34  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8038F578 00358B38  38 60 00 00 */	li r3, 0x0
/* 8038F57C 00358B3C  90 1C 00 00 */	stw r0, 0x0(r28)
.L_8038F580:
/* 8038F580 00358B40  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8038F584 00358B44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038F588 00358B48  7C 08 03 A6 */	mtlr r0
/* 8038F58C 00358B4C  38 21 00 20 */	addi r1, r1, 0x20
/* 8038F590 00358B50  4E 80 00 20 */	blr
.endfn CRICFG_Read

# 0x805E9D20 - 0x805E9D28
.section .bss, "wa", @nobits
.balign 8
.global lbl_805E9D20
lbl_805E9D20:
	.skip 0x4
.global lbl_805E9D24
lbl_805E9D24:
	.skip 0x4
