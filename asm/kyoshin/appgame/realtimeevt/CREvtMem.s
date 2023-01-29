.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_80167C40, global
/* 80167C40 00131200  C0 02 9B 90 */	lfs f0, lbl_80669F10@sda21(r2)
/* 80167C44 00131204  3C 80 80 53 */	lis r4, __vt__cf_CREvtMem@ha
/* 80167C48 00131208  38 00 00 00 */	li r0, 0x0
/* 80167C4C 0013120C  90 03 00 04 */	stw r0, 0x4(r3)
/* 80167C50 00131210  38 84 42 00 */	addi r4, r4, __vt__cf_CREvtMem@l
/* 80167C54 00131214  90 83 00 00 */	stw r4, 0x0(r3)
/* 80167C58 00131218  90 03 00 08 */	stw r0, 0x8(r3)
/* 80167C5C 0013121C  90 03 00 0C */	stw r0, 0xc(r3)
/* 80167C60 00131220  90 03 00 18 */	stw r0, 0x18(r3)
/* 80167C64 00131224  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80167C68 00131228  90 03 00 20 */	stw r0, 0x20(r3)
/* 80167C6C 0013122C  90 03 00 24 */	stw r0, 0x24(r3)
/* 80167C70 00131230  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80167C74 00131234  90 6D A9 D0 */	stw r3, lbl_80666B50@sda21(r13)
/* 80167C78 00131238  90 03 00 10 */	stw r0, 0x10(r3)
/* 80167C7C 0013123C  90 03 00 14 */	stw r0, 0x14(r3)
/* 80167C80 00131240  4E 80 00 20 */	blr
.endfn func_80167C40

.fn func_80167C84, global
/* 80167C84 00131244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80167C88 00131248  7C 08 02 A6 */	mflr r0
/* 80167C8C 0013124C  2C 03 00 00 */	cmpwi r3, 0x0
/* 80167C90 00131250  90 01 00 14 */	stw r0, 0x14(r1)
/* 80167C94 00131254  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80167C98 00131258  7C 9F 23 78 */	mr r31, r4
/* 80167C9C 0013125C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80167CA0 00131260  7C 7E 1B 78 */	mr r30, r3
/* 80167CA4 00131264  41 82 00 80 */	beq .L_80167D24
/* 80167CA8 00131268  3C 80 80 53 */	lis r4, __vt__cf_CREvtMem@ha
/* 80167CAC 0013126C  38 84 42 00 */	addi r4, r4, __vt__cf_CREvtMem@l
/* 80167CB0 00131270  90 83 00 00 */	stw r4, 0x0(r3)
/* 80167CB4 00131274  80 6D A9 D0 */	lwz r3, lbl_80666B50@sda21(r13)
/* 80167CB8 00131278  80 03 00 04 */	lwz r0, 0x4(r3)
/* 80167CBC 0013127C  54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 80167CC0 00131280  41 82 00 20 */	beq .L_80167CE0
/* 80167CC4 00131284  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80167CC8 00131288  2C 03 00 00 */	cmpwi r3, 0x0
/* 80167CCC 0013128C  41 82 00 14 */	beq .L_80167CE0
/* 80167CD0 00131290  48 2C C8 09 */	bl func_804344D8
/* 80167CD4 00131294  80 6D A9 D0 */	lwz r3, lbl_80666B50@sda21(r13)
/* 80167CD8 00131298  38 00 00 00 */	li r0, 0x0
/* 80167CDC 0013129C  90 03 00 10 */	stw r0, 0x10(r3)
.L_80167CE0:
/* 80167CE0 001312A0  80 6D A9 D0 */	lwz r3, lbl_80666B50@sda21(r13)
/* 80167CE4 001312A4  80 03 00 04 */	lwz r0, 0x4(r3)
/* 80167CE8 001312A8  54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 80167CEC 001312AC  41 82 00 20 */	beq .L_80167D0C
/* 80167CF0 001312B0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80167CF4 001312B4  2C 03 00 00 */	cmpwi r3, 0x0
/* 80167CF8 001312B8  41 82 00 14 */	beq .L_80167D0C
/* 80167CFC 001312BC  48 2C C7 DD */	bl func_804344D8
/* 80167D00 001312C0  80 6D A9 D0 */	lwz r3, lbl_80666B50@sda21(r13)
/* 80167D04 001312C4  38 00 00 00 */	li r0, 0x0
/* 80167D08 001312C8  90 03 00 14 */	stw r0, 0x14(r3)
.L_80167D0C:
/* 80167D0C 001312CC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80167D10 001312D0  38 00 00 00 */	li r0, 0x0
/* 80167D14 001312D4  90 0D A9 D0 */	stw r0, lbl_80666B50@sda21(r13)
/* 80167D18 001312D8  40 81 00 0C */	ble .L_80167D24
/* 80167D1C 001312DC  7F C3 F3 78 */	mr r3, r30
/* 80167D20 001312E0  48 2C CF 0D */	bl __dl__FPv
.L_80167D24:
/* 80167D24 001312E4  7F C3 F3 78 */	mr r3, r30
/* 80167D28 001312E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80167D2C 001312EC  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80167D30 001312F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80167D34 001312F4  7C 08 03 A6 */	mtlr r0
/* 80167D38 001312F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80167D3C 001312FC  4E 80 00 20 */	blr
.endfn func_80167C84

.fn func_80167D40, global
/* 80167D40 00131300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80167D44 00131304  7C 08 02 A6 */	mflr r0
/* 80167D48 00131308  90 01 00 14 */	stw r0, 0x14(r1)
/* 80167D4C 0013130C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80167D50 00131310  7C 9F 23 78 */	mr r31, r4
/* 80167D54 00131314  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80167D58 00131318  7C 7E 1B 78 */	mr r30, r3
/* 80167D5C 0013131C  4B FF EA 11 */	bl func_8016676C
/* 80167D60 00131320  80 8D A9 D0 */	lwz r4, lbl_80666B50@sda21(r13)
/* 80167D64 00131324  90 64 00 08 */	stw r3, 0x8(r4)
/* 80167D68 00131328  4B FF EA 11 */	bl func_80166778
/* 80167D6C 0013132C  80 8D A9 D0 */	lwz r4, lbl_80666B50@sda21(r13)
/* 80167D70 00131330  2C 1E 00 00 */	cmpwi r30, 0x0
/* 80167D74 00131334  90 64 00 0C */	stw r3, 0xc(r4)
/* 80167D78 00131338  80 6D A9 D0 */	lwz r3, lbl_80666B50@sda21(r13)
/* 80167D7C 0013133C  80 03 00 08 */	lwz r0, 0x8(r3)
/* 80167D80 00131340  90 03 00 18 */	stw r0, 0x18(r3)
/* 80167D84 00131344  80 8D A9 D0 */	lwz r4, lbl_80666B50@sda21(r13)
/* 80167D88 00131348  80 64 00 08 */	lwz r3, 0x8(r4)
/* 80167D8C 0013134C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80167D90 00131350  7C 03 02 14 */	add r0, r3, r0
/* 80167D94 00131354  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80167D98 00131358  80 8D A9 D0 */	lwz r4, lbl_80666B50@sda21(r13)
/* 80167D9C 0013135C  80 64 00 18 */	lwz r3, 0x18(r4)
/* 80167DA0 00131360  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80167DA4 00131364  7C 03 00 50 */	subf r0, r3, r0
/* 80167DA8 00131368  90 04 00 20 */	stw r0, 0x20(r4)
/* 80167DAC 0013136C  80 6D A9 D0 */	lwz r3, lbl_80666B50@sda21(r13)
/* 80167DB0 00131370  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80167DB4 00131374  90 03 00 24 */	stw r0, 0x24(r3)
/* 80167DB8 00131378  40 82 00 08 */	bne .L_80167DC0
/* 80167DBC 0013137C  3F C0 00 10 */	lis r30, 0x10
.L_80167DC0:
/* 80167DC0 00131380  80 CD A9 D0 */	lwz r6, lbl_80666B50@sda21(r13)
/* 80167DC4 00131384  7C 7F F2 14 */	add r3, r31, r30
/* 80167DC8 00131388  38 63 10 00 */	addi r3, r3, 0x1000
/* 80167DCC 0013138C  80 06 00 20 */	lwz r0, 0x20(r6)
/* 80167DD0 00131390  7C 03 00 40 */	cmplw r3, r0
/* 80167DD4 00131394  40 80 00 50 */	bge .L_80167E24
/* 80167DD8 00131398  80 A6 00 24 */	lwz r5, 0x24(r6)
/* 80167DDC 0013139C  80 06 00 1C */	lwz r0, 0x1c(r6)
/* 80167DE0 001313A0  7C 65 F2 14 */	add r3, r5, r30
/* 80167DE4 001313A4  7C 03 00 40 */	cmplw r3, r0
/* 80167DE8 001313A8  40 81 00 0C */	ble .L_80167DF4
/* 80167DEC 001313AC  38 80 00 00 */	li r4, 0x0
/* 80167DF0 001313B0  48 00 00 28 */	b .L_80167E18
.L_80167DF4:
/* 80167DF4 001313B4  54 A0 06 3F */	clrlwi. r0, r5, 24
/* 80167DF8 001313B8  38 80 00 00 */	li r4, 0x0
/* 80167DFC 001313BC  41 82 00 08 */	beq .L_80167E04
/* 80167E00 001313C0  20 80 01 00 */	subfic r4, r0, 0x100
.L_80167E04:
/* 80167E04 001313C4  80 66 00 24 */	lwz r3, 0x24(r6)
/* 80167E08 001313C8  7C 1E 22 14 */	add r0, r30, r4
/* 80167E0C 001313CC  7C 85 22 14 */	add r4, r5, r4
/* 80167E10 001313D0  7C 03 02 14 */	add r0, r3, r0
/* 80167E14 001313D4  90 06 00 24 */	stw r0, 0x24(r6)
.L_80167E18:
/* 80167E18 001313D8  80 6D A9 D0 */	lwz r3, lbl_80666B50@sda21(r13)
/* 80167E1C 001313DC  90 83 00 10 */	stw r4, 0x10(r3)
/* 80167E20 001313E0  48 00 00 2C */	b .L_80167E4C
.L_80167E24:
/* 80167E24 001313E4  48 2C C5 7D */	bl func_804343A0
/* 80167E28 001313E8  7F C4 F3 78 */	mr r4, r30
/* 80167E2C 001313EC  38 A0 00 20 */	li r5, 0x20
/* 80167E30 001313F0  48 2C C5 FD */	bl func_8043442C
/* 80167E34 001313F4  80 8D A9 D0 */	lwz r4, lbl_80666B50@sda21(r13)
/* 80167E38 001313F8  90 64 00 10 */	stw r3, 0x10(r4)
/* 80167E3C 001313FC  80 6D A9 D0 */	lwz r3, lbl_80666B50@sda21(r13)
/* 80167E40 00131400  80 03 00 04 */	lwz r0, 0x4(r3)
/* 80167E44 00131404  60 00 00 02 */	ori r0, r0, 0x2
/* 80167E48 00131408  90 03 00 04 */	stw r0, 0x4(r3)
.L_80167E4C:
/* 80167E4C 0013140C  80 CD A9 D0 */	lwz r6, lbl_80666B50@sda21(r13)
/* 80167E50 00131410  57 C0 08 3C */	slwi r0, r30, 1
/* 80167E54 00131414  7C 7F 02 14 */	add r3, r31, r0
/* 80167E58 00131418  80 06 00 20 */	lwz r0, 0x20(r6)
/* 80167E5C 0013141C  38 63 10 00 */	addi r3, r3, 0x1000
/* 80167E60 00131420  7C 03 00 40 */	cmplw r3, r0
/* 80167E64 00131424  40 80 00 50 */	bge .L_80167EB4
/* 80167E68 00131428  80 A6 00 24 */	lwz r5, 0x24(r6)
/* 80167E6C 0013142C  80 06 00 1C */	lwz r0, 0x1c(r6)
/* 80167E70 00131430  7C 65 F2 14 */	add r3, r5, r30
/* 80167E74 00131434  7C 03 00 40 */	cmplw r3, r0
/* 80167E78 00131438  40 81 00 0C */	ble .L_80167E84
/* 80167E7C 0013143C  38 80 00 00 */	li r4, 0x0
/* 80167E80 00131440  48 00 00 28 */	b .L_80167EA8
.L_80167E84:
/* 80167E84 00131444  54 A0 06 3F */	clrlwi. r0, r5, 24
/* 80167E88 00131448  38 80 00 00 */	li r4, 0x0
/* 80167E8C 0013144C  41 82 00 08 */	beq .L_80167E94
/* 80167E90 00131450  20 80 01 00 */	subfic r4, r0, 0x100
.L_80167E94:
/* 80167E94 00131454  80 66 00 24 */	lwz r3, 0x24(r6)
/* 80167E98 00131458  7C 1E 22 14 */	add r0, r30, r4
/* 80167E9C 0013145C  7C 85 22 14 */	add r4, r5, r4
/* 80167EA0 00131460  7C 03 02 14 */	add r0, r3, r0
/* 80167EA4 00131464  90 06 00 24 */	stw r0, 0x24(r6)
.L_80167EA8:
/* 80167EA8 00131468  80 6D A9 D0 */	lwz r3, lbl_80666B50@sda21(r13)
/* 80167EAC 0013146C  90 83 00 14 */	stw r4, 0x14(r3)
/* 80167EB0 00131470  48 00 00 2C */	b .L_80167EDC
.L_80167EB4:
/* 80167EB4 00131474  48 2C C4 ED */	bl func_804343A0
/* 80167EB8 00131478  7F C4 F3 78 */	mr r4, r30
/* 80167EBC 0013147C  38 A0 00 20 */	li r5, 0x20
/* 80167EC0 00131480  48 2C C5 6D */	bl func_8043442C
/* 80167EC4 00131484  80 8D A9 D0 */	lwz r4, lbl_80666B50@sda21(r13)
/* 80167EC8 00131488  90 64 00 14 */	stw r3, 0x14(r4)
/* 80167ECC 0013148C  80 6D A9 D0 */	lwz r3, lbl_80666B50@sda21(r13)
/* 80167ED0 00131490  80 03 00 04 */	lwz r0, 0x4(r3)
/* 80167ED4 00131494  60 00 00 04 */	ori r0, r0, 0x4
/* 80167ED8 00131498  90 03 00 04 */	stw r0, 0x4(r3)
.L_80167EDC:
/* 80167EDC 0013149C  7F C3 F3 78 */	mr r3, r30
/* 80167EE0 001314A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80167EE4 001314A4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80167EE8 001314A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80167EEC 001314AC  7C 08 03 A6 */	mtlr r0
/* 80167EF0 001314B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80167EF4 001314B4  4E 80 00 20 */	blr
.endfn func_80167D40

.fn func_80167EF8, global
/* 80167EF8 001314B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80167EFC 001314BC  7C 08 02 A6 */	mflr r0
/* 80167F00 001314C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80167F04 001314C4  80 6D A9 D0 */	lwz r3, lbl_80666B50@sda21(r13)
/* 80167F08 001314C8  80 03 00 04 */	lwz r0, 0x4(r3)
/* 80167F0C 001314CC  54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 80167F10 001314D0  41 82 00 20 */	beq .L_80167F30
/* 80167F14 001314D4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80167F18 001314D8  2C 03 00 00 */	cmpwi r3, 0x0
/* 80167F1C 001314DC  41 82 00 14 */	beq .L_80167F30
/* 80167F20 001314E0  48 2C C5 B9 */	bl func_804344D8
/* 80167F24 001314E4  80 6D A9 D0 */	lwz r3, lbl_80666B50@sda21(r13)
/* 80167F28 001314E8  38 00 00 00 */	li r0, 0x0
/* 80167F2C 001314EC  90 03 00 10 */	stw r0, 0x10(r3)
.L_80167F30:
/* 80167F30 001314F0  80 6D A9 D0 */	lwz r3, lbl_80666B50@sda21(r13)
/* 80167F34 001314F4  80 03 00 04 */	lwz r0, 0x4(r3)
/* 80167F38 001314F8  54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 80167F3C 001314FC  41 82 00 20 */	beq .L_80167F5C
/* 80167F40 00131500  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80167F44 00131504  2C 03 00 00 */	cmpwi r3, 0x0
/* 80167F48 00131508  41 82 00 14 */	beq .L_80167F5C
/* 80167F4C 0013150C  48 2C C5 8D */	bl func_804344D8
/* 80167F50 00131510  80 6D A9 D0 */	lwz r3, lbl_80666B50@sda21(r13)
/* 80167F54 00131514  38 00 00 00 */	li r0, 0x0
/* 80167F58 00131518  90 03 00 14 */	stw r0, 0x14(r3)
.L_80167F5C:
/* 80167F5C 0013151C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80167F60 00131520  7C 08 03 A6 */	mtlr r0
/* 80167F64 00131524  38 21 00 10 */	addi r1, r1, 0x10
/* 80167F68 00131528  4E 80 00 20 */	blr
.endfn func_80167EF8

.fn func_80167F6C, global
/* 80167F6C 0013152C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80167F70 00131530  7C 08 02 A6 */	mflr r0
/* 80167F74 00131534  90 01 00 14 */	stw r0, 0x14(r1)
/* 80167F78 00131538  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80167F7C 0013153C  7C 7F 1B 78 */	mr r31, r3
/* 80167F80 00131540  81 0D A9 D0 */	lwz r8, lbl_80666B50@sda21(r13)
/* 80167F84 00131544  80 E8 00 24 */	lwz r7, 0x24(r8)
/* 80167F88 00131548  80 08 00 1C */	lwz r0, 0x1c(r8)
/* 80167F8C 0013154C  7C C7 1A 14 */	add r6, r7, r3
/* 80167F90 00131550  7C 06 00 40 */	cmplw r6, r0
/* 80167F94 00131554  40 81 00 28 */	ble .L_80167FBC
/* 80167F98 00131558  2C 05 00 00 */	cmpwi r5, 0x0
/* 80167F9C 0013155C  41 82 00 18 */	beq .L_80167FB4
/* 80167FA0 00131560  48 2C C3 F9 */	bl func_80434398
/* 80167FA4 00131564  7F E4 FB 78 */	mr r4, r31
/* 80167FA8 00131568  38 A0 00 20 */	li r5, 0x20
/* 80167FAC 0013156C  48 2C C4 81 */	bl func_8043442C
/* 80167FB0 00131570  48 00 00 38 */	b .L_80167FE8
.L_80167FB4:
/* 80167FB4 00131574  38 60 00 00 */	li r3, 0x0
/* 80167FB8 00131578  48 00 00 30 */	b .L_80167FE8
.L_80167FBC:
/* 80167FBC 0013157C  7C 07 23 96 */	divwu r0, r7, r4
/* 80167FC0 00131580  38 A0 00 00 */	li r5, 0x0
/* 80167FC4 00131584  7C 00 21 D6 */	mullw r0, r0, r4
/* 80167FC8 00131588  7C 00 38 51 */	subf. r0, r0, r7
/* 80167FCC 0013158C  41 82 00 08 */	beq .L_80167FD4
/* 80167FD0 00131590  7C A0 20 50 */	subf r5, r0, r4
.L_80167FD4:
/* 80167FD4 00131594  80 88 00 24 */	lwz r4, 0x24(r8)
/* 80167FD8 00131598  7C 03 2A 14 */	add r0, r3, r5
/* 80167FDC 0013159C  7C 67 2A 14 */	add r3, r7, r5
/* 80167FE0 001315A0  7C 04 02 14 */	add r0, r4, r0
/* 80167FE4 001315A4  90 08 00 24 */	stw r0, 0x24(r8)
.L_80167FE8:
/* 80167FE8 001315A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80167FEC 001315AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80167FF0 001315B0  7C 08 03 A6 */	mtlr r0
/* 80167FF4 001315B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80167FF8 001315B8  4E 80 00 20 */	blr
.endfn func_80167F6C

.fn func_80167FFC, global
/* 80167FFC 001315BC  80 8D A9 D0 */	lwz r4, lbl_80666B50@sda21(r13)
/* 80168000 001315C0  80 04 00 18 */	lwz r0, 0x18(r4)
/* 80168004 001315C4  7C 00 18 40 */	cmplw r0, r3
/* 80168008 001315C8  41 81 00 10 */	bgt .L_80168018
/* 8016800C 001315CC  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80168010 001315D0  7C 00 18 40 */	cmplw r0, r3
/* 80168014 001315D4  4D 81 00 20 */	bgtlr
.L_80168018:
/* 80168018 001315D8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8016801C 001315DC  4D 82 00 20 */	beqlr
/* 80168020 001315E0  48 2C C4 B8 */	b func_804344D8
/* 80168024 001315E4  4E 80 00 20 */	blr
.endfn func_80167FFC

.fn func_80168028, global
/* 80168028 001315E8  80 8D A9 D0 */	lwz r4, lbl_80666B50@sda21(r13)
/* 8016802C 001315EC  54 60 10 3A */	slwi r0, r3, 2
/* 80168030 001315F0  7C 64 02 14 */	add r3, r4, r0
/* 80168034 001315F4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80168038 001315F8  4E 80 00 20 */	blr
.endfn func_80168028

# 0x804FE880 - 0x804FE890
.rodata
.balign 8

.global cf_CREvtMem_typestr
cf_CREvtMem_typestr:
	.4byte 0x63663A3A
	.4byte 0x43524576
	.4byte 0x744D656D
	.4byte 0x00000000

# 0x80534200 - 0x80534210
.data
.balign 8

.global __vt__cf_CREvtMem
__vt__cf_CREvtMem:
	.4byte __RTTI__cf_CREvtMem
	.4byte 0x00000000
	.4byte func_80167C84
	.4byte 0x00000000

# 0x80664CA0 - 0x80664CA8
.section .sdata, "wa"
.balign 8

.global __RTTI__cf_CREvtMem
__RTTI__cf_CREvtMem:
	.4byte cf_CREvtMem_typestr
	.4byte 0x00000000

# 0x80666B50 - 0x80666B58
.section .sbss, "wa", @nobits
.balign 8
.global lbl_80666B50
lbl_80666B50:
	.skip 0x8

# 0x80669F10 - 0x80669F18
.section .sdata2, "a"
.balign 8
.global lbl_80669F10
lbl_80669F10:
	.4byte 0x00000000
	.4byte 0x00000000

# 0x8000DE34 - 0x8000DE54
.section extab, "a"
.balign 4

.obj "@etb_8000DE34", local
.hidden "@etb_8000DE34"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000DE34"

.obj "@etb_8000DE3C", local
.hidden "@etb_8000DE3C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000DE3C"

.obj "@etb_8000DE44", local
.hidden "@etb_8000DE44"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000DE44"

.obj "@etb_8000DE4C", local
.hidden "@etb_8000DE4C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000DE4C"

# 0x80028DCC - 0x80028DFC
.section extabindex, "a"
.balign 4

.obj "@eti_80028DCC", local
.hidden "@eti_80028DCC"
	.4byte func_80167C84
	.4byte 0x000000BC
	.4byte "@etb_8000DE34"
.endobj "@eti_80028DCC"

.obj "@eti_80028DD8", local
.hidden "@eti_80028DD8"
	.4byte func_80167D40
	.4byte 0x000001B8
	.4byte "@etb_8000DE3C"
.endobj "@eti_80028DD8"

.obj "@eti_80028DE4", local
.hidden "@eti_80028DE4"
	.4byte func_80167EF8
	.4byte 0x00000074
	.4byte "@etb_8000DE44"
.endobj "@eti_80028DE4"

.obj "@eti_80028DF0", local
.hidden "@eti_80028DF0"
	.4byte func_80167F6C
	.4byte 0x00000090
	.4byte "@etb_8000DE4C"
.endobj "@eti_80028DF0"
