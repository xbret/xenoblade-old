.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16

.fn MEMCreateFrmHeapEx, global
/* 80349770 00312D30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80349774 00312D34  7C 08 02 A6 */	mflr r0
/* 80349778 00312D38  7C 84 1A 14 */	add r4, r4, r3
/* 8034977C 00312D3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80349780 00312D40  38 03 00 03 */	addi r0, r3, 0x3
/* 80349784 00312D44  54 86 00 3A */	clrrwi r6, r4, 2
/* 80349788 00312D48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034978C 00312D4C  54 1F 00 3A */	clrrwi r31, r0, 2
/* 80349790 00312D50  7C 1F 30 40 */	cmplw r31, r6
/* 80349794 00312D54  41 81 00 10 */	bgt .L_803497A4
/* 80349798 00312D58  7C 1F 30 50 */	subf r0, r31, r6
/* 8034979C 00312D5C  28 00 00 48 */	cmplwi r0, 0x48
/* 803497A0 00312D60  40 80 00 0C */	bge .L_803497AC
.L_803497A4:
/* 803497A4 00312D64  38 60 00 00 */	li r3, 0x0
/* 803497A8 00312D68  48 00 00 38 */	b .L_803497E0
.L_803497AC:
/* 803497AC 00312D6C  3C 80 46 52 */	lis r4, 0x4652
/* 803497B0 00312D70  7C A7 2B 78 */	mr r7, r5
/* 803497B4 00312D74  7F E3 FB 78 */	mr r3, r31
/* 803497B8 00312D78  38 BF 00 48 */	addi r5, r31, 0x48
/* 803497BC 00312D7C  38 84 4D 48 */	addi r4, r4, 0x4d48
/* 803497C0 00312D80  4B FF F4 D1 */	bl MEMiInitHeapHead
/* 803497C4 00312D84  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 803497C8 00312D88  38 00 00 00 */	li r0, 0x0
/* 803497CC 00312D8C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 803497D0 00312D90  7F E3 FB 78 */	mr r3, r31
/* 803497D4 00312D94  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 803497D8 00312D98  90 9F 00 40 */	stw r4, 0x40(r31)
/* 803497DC 00312D9C  90 1F 00 44 */	stw r0, 0x44(r31)
.L_803497E0:
/* 803497E0 00312DA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803497E4 00312DA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803497E8 00312DA8  7C 08 03 A6 */	mtlr r0
/* 803497EC 00312DAC  38 21 00 10 */	addi r1, r1, 0x10
/* 803497F0 00312DB0  4E 80 00 20 */	blr
.endfn MEMCreateFrmHeapEx
/* 803497F4 00312DB4  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803497F8 00312DB8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803497FC 00312DBC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn MEMDestroyFrmHeap, global
/* 80349800 00312DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80349804 00312DC4  7C 08 02 A6 */	mflr r0
/* 80349808 00312DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034980C 00312DCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80349810 00312DD0  7C 7F 1B 78 */	mr r31, r3
/* 80349814 00312DD4  4B FF F6 3D */	bl MEMiFinalizeHeap
/* 80349818 00312DD8  7F E3 FB 78 */	mr r3, r31
/* 8034981C 00312DDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80349820 00312DE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80349824 00312DE4  7C 08 03 A6 */	mtlr r0
/* 80349828 00312DE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8034982C 00312DEC  4E 80 00 20 */	blr
.endfn MEMDestroyFrmHeap

.fn MEMAllocFromFrmHeapEx, global
/* 80349830 00312DF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80349834 00312DF4  7C 08 02 A6 */	mflr r0
/* 80349838 00312DF8  2C 04 00 00 */	cmpwi r4, 0x0
/* 8034983C 00312DFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80349840 00312E00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80349844 00312E04  7C 7F 1B 78 */	mr r31, r3
/* 80349848 00312E08  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034984C 00312E0C  7C 9E 23 78 */	mr r30, r4
/* 80349850 00312E10  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80349854 00312E14  7C BD 2B 78 */	mr r29, r5
/* 80349858 00312E18  40 82 00 08 */	bne .L_80349860
/* 8034985C 00312E1C  3B C0 00 01 */	li r30, 0x1
.L_80349860:
/* 80349860 00312E20  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80349864 00312E24  38 9E 00 03 */	addi r4, r30, 0x3
/* 80349868 00312E28  54 9E 00 3A */	clrrwi r30, r4, 2
/* 8034986C 00312E2C  54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 80349870 00312E30  41 82 00 0C */	beq .L_8034987C
/* 80349874 00312E34  38 63 00 20 */	addi r3, r3, 0x20
/* 80349878 00312E38  48 01 03 E9 */	bl OSLockMutex
.L_8034987C:
/* 8034987C 00312E3C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 80349880 00312E40  41 80 00 54 */	blt .L_803498D4
/* 80349884 00312E44  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80349888 00312E48  38 1D FF FF */	addi r0, r29, -0x1
/* 8034988C 00312E4C  7C 05 00 F8 */	nor r5, r0, r0
/* 80349890 00312E50  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80349894 00312E54  7C 9D 1A 14 */	add r4, r29, r3
/* 80349898 00312E58  38 84 FF FF */	addi r4, r4, -0x1
/* 8034989C 00312E5C  7C BD 20 38 */	and r29, r5, r4
/* 803498A0 00312E60  7F DE EA 14 */	add r30, r30, r29
/* 803498A4 00312E64  7C 1E 00 40 */	cmplw r30, r0
/* 803498A8 00312E68  40 81 00 0C */	ble .L_803498B4
/* 803498AC 00312E6C  3B A0 00 00 */	li r29, 0x0
/* 803498B0 00312E70  48 00 00 6C */	b .L_8034991C
.L_803498B4:
/* 803498B4 00312E74  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 803498B8 00312E78  7C A3 F0 50 */	subf r5, r3, r30
/* 803498BC 00312E7C  54 00 07 FF */	clrlwi. r0, r0, 31
/* 803498C0 00312E80  41 82 00 0C */	beq .L_803498CC
/* 803498C4 00312E84  38 80 00 00 */	li r4, 0x0
/* 803498C8 00312E88  4B CB AA 89 */	bl memset
.L_803498CC:
/* 803498CC 00312E8C  93 DF 00 3C */	stw r30, 0x3c(r31)
/* 803498D0 00312E90  48 00 00 4C */	b .L_8034991C
.L_803498D4:
/* 803498D4 00312E94  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 803498D8 00312E98  20 1D FF FF */	subfic r0, r29, -0x1
/* 803498DC 00312E9C  7C 04 00 F8 */	nor r4, r0, r0
/* 803498E0 00312EA0  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 803498E4 00312EA4  7C 7E 28 50 */	subf r3, r30, r5
/* 803498E8 00312EA8  7C 9D 18 38 */	and r29, r4, r3
/* 803498EC 00312EAC  7C 1D 00 40 */	cmplw r29, r0
/* 803498F0 00312EB0  40 80 00 0C */	bge .L_803498FC
/* 803498F4 00312EB4  3B A0 00 00 */	li r29, 0x0
/* 803498F8 00312EB8  48 00 00 24 */	b .L_8034991C
.L_803498FC:
/* 803498FC 00312EBC  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 80349900 00312EC0  7C BD 28 50 */	subf r5, r29, r5
/* 80349904 00312EC4  54 00 07 FF */	clrlwi. r0, r0, 31
/* 80349908 00312EC8  41 82 00 10 */	beq .L_80349918
/* 8034990C 00312ECC  7F A3 EB 78 */	mr r3, r29
/* 80349910 00312ED0  38 80 00 00 */	li r4, 0x0
/* 80349914 00312ED4  4B CB AA 3D */	bl memset
.L_80349918:
/* 80349918 00312ED8  93 BF 00 40 */	stw r29, 0x40(r31)
.L_8034991C:
/* 8034991C 00312EDC  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 80349920 00312EE0  54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 80349924 00312EE4  41 82 00 0C */	beq .L_80349930
/* 80349928 00312EE8  38 7F 00 20 */	addi r3, r31, 0x20
/* 8034992C 00312EEC  48 01 04 15 */	bl OSUnlockMutex
.L_80349930:
/* 80349930 00312EF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80349934 00312EF4  7F A3 EB 78 */	mr r3, r29
/* 80349938 00312EF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034993C 00312EFC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80349940 00312F00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80349944 00312F04  7C 08 03 A6 */	mtlr r0
/* 80349948 00312F08  38 21 00 20 */	addi r1, r1, 0x20
/* 8034994C 00312F0C  4E 80 00 20 */	blr
.endfn MEMAllocFromFrmHeapEx

.fn MEMFreeToFrmHeap, global
/* 80349950 00312F10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80349954 00312F14  7C 08 02 A6 */	mflr r0
/* 80349958 00312F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034995C 00312F1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80349960 00312F20  7C 9F 23 78 */	mr r31, r4
/* 80349964 00312F24  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80349968 00312F28  7C 7E 1B 78 */	mr r30, r3
/* 8034996C 00312F2C  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80349970 00312F30  54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 80349974 00312F34  41 82 00 0C */	beq .L_80349980
/* 80349978 00312F38  38 63 00 20 */	addi r3, r3, 0x20
/* 8034997C 00312F3C  48 01 02 E5 */	bl OSLockMutex
.L_80349980:
/* 80349980 00312F40  57 E0 07 FF */	clrlwi. r0, r31, 31
/* 80349984 00312F44  41 82 00 14 */	beq .L_80349998
/* 80349988 00312F48  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8034998C 00312F4C  38 00 00 00 */	li r0, 0x0
/* 80349990 00312F50  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80349994 00312F54  90 1E 00 44 */	stw r0, 0x44(r30)
.L_80349998:
/* 80349998 00312F58  57 E0 07 BD */	rlwinm. r0, r31, 0, 30, 30
/* 8034999C 00312F5C  41 82 00 28 */	beq .L_803499C4
/* 803499A0 00312F60  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 803499A4 00312F64  48 00 00 10 */	b .L_803499B4
.L_803499A8:
/* 803499A8 00312F68  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 803499AC 00312F6C  90 03 00 08 */	stw r0, 0x8(r3)
/* 803499B0 00312F70  80 63 00 0C */	lwz r3, 0xc(r3)
.L_803499B4:
/* 803499B4 00312F74  2C 03 00 00 */	cmpwi r3, 0x0
/* 803499B8 00312F78  40 82 FF F0 */	bne .L_803499A8
/* 803499BC 00312F7C  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 803499C0 00312F80  90 1E 00 40 */	stw r0, 0x40(r30)
.L_803499C4:
/* 803499C4 00312F84  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 803499C8 00312F88  54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 803499CC 00312F8C  41 82 00 0C */	beq .L_803499D8
/* 803499D0 00312F90  38 7E 00 20 */	addi r3, r30, 0x20
/* 803499D4 00312F94  48 01 03 6D */	bl OSUnlockMutex
.L_803499D8:
/* 803499D8 00312F98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803499DC 00312F9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803499E0 00312FA0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803499E4 00312FA4  7C 08 03 A6 */	mtlr r0
/* 803499E8 00312FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 803499EC 00312FAC  4E 80 00 20 */	blr
.endfn MEMFreeToFrmHeap

.fn MEMGetAllocatableSizeForFrmHeapEx, global
/* 803499F0 00312FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803499F4 00312FB4  7C 08 02 A6 */	mflr r0
/* 803499F8 00312FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803499FC 00312FBC  7C 80 FE 70 */	srawi r0, r4, 31
/* 80349A00 00312FC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80349A04 00312FC4  7C 1F 22 78 */	xor r31, r0, r4
/* 80349A08 00312FC8  7F E0 F8 50 */	subf r31, r0, r31
/* 80349A0C 00312FCC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80349A10 00312FD0  7C 7E 1B 78 */	mr r30, r3
/* 80349A14 00312FD4  48 00 EF 9D */	bl OSDisableInterrupts
/* 80349A18 00312FD8  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80349A1C 00312FDC  38 9F FF FF */	addi r4, r31, -0x1
/* 80349A20 00312FE0  7C 85 20 F8 */	nor r5, r4, r4
/* 80349A24 00312FE4  80 DE 00 40 */	lwz r6, 0x40(r30)
/* 80349A28 00312FE8  7C 9F 02 14 */	add r4, r31, r0
/* 80349A2C 00312FEC  38 04 FF FF */	addi r0, r4, -0x1
/* 80349A30 00312FF0  7C A0 00 38 */	and r0, r5, r0
/* 80349A34 00312FF4  7C 00 30 40 */	cmplw r0, r6
/* 80349A38 00312FF8  40 81 00 0C */	ble .L_80349A44
/* 80349A3C 00312FFC  3B E0 00 00 */	li r31, 0x0
/* 80349A40 00313000  48 00 00 08 */	b .L_80349A48
.L_80349A44:
/* 80349A44 00313004  7F E0 30 50 */	subf r31, r0, r6
.L_80349A48:
/* 80349A48 00313008  48 00 EF A9 */	bl OSRestoreInterrupts
/* 80349A4C 0031300C  7F E3 FB 78 */	mr r3, r31
/* 80349A50 00313010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80349A54 00313014  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80349A58 00313018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80349A5C 0031301C  7C 08 03 A6 */	mtlr r0
/* 80349A60 00313020  38 21 00 10 */	addi r1, r1, 0x10
/* 80349A64 00313024  4E 80 00 20 */	blr
.endfn MEMGetAllocatableSizeForFrmHeapEx
/* 80349A68 00313028  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80349A6C 0031302C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
