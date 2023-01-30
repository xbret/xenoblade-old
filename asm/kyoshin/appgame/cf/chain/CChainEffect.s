.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900



.fn func_802A07F4, global
/* 802A07F4 00269DB4  2C 04 00 00 */	cmpwi r4, 0
/* 802A07F8 00269DB8  41 82 00 08 */	beq .L_802A0800
/* 802A07FC 00269DBC  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A0800:
/* 802A0800 00269DC0  4B DA 49 D8 */	b func_800451D8
.endfn func_802A07F4

.fn func_802A0804, global
/* 802A0804 00269DC4  80 84 00 00 */	lwz r4, 0(r4)
/* 802A0808 00269DC8  2C 04 00 00 */	cmpwi r4, 0
/* 802A080C 00269DCC  41 82 00 08 */	beq .L_802A0814
/* 802A0810 00269DD0  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A0814:
/* 802A0814 00269DD4  4B DA 49 C4 */	b func_800451D8
.endfn func_802A0804

.fn func_802A0818, global
/* 802A0818 00269DD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A081C 00269DDC  7C 08 02 A6 */	mflr r0
/* 802A0820 00269DE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A0824 00269DE4  BF 41 00 08 */	stmw r26, 8(r1)
/* 802A0828 00269DE8  7C 7A 1B 78 */	mr r26, r3
/* 802A082C 00269DEC  7C 9B 23 78 */	mr r27, r4
/* 802A0830 00269DF0  3B 80 00 00 */	li r28, 0
/* 802A0834 00269DF4  48 00 00 08 */	b .L_802A083C
.L_802A0838:
/* 802A0838 00269DF8  3B 80 00 01 */	li r28, 1
.L_802A083C:
/* 802A083C 00269DFC  4B E1 63 F9 */	bl func_800B6C34
/* 802A0840 00269E00  80 83 00 04 */	lwz r4, 4(r3)
/* 802A0844 00269E04  7C 7F 1B 78 */	mr r31, r3
/* 802A0848 00269E08  83 A4 00 00 */	lwz r29, 0(r4)
/* 802A084C 00269E0C  48 00 00 5C */	b .L_802A08A8
.L_802A0850:
/* 802A0850 00269E10  80 7D 00 08 */	lwz r3, 8(r29)
/* 802A0854 00269E14  4B E0 BD BD */	bl func_800AC610
/* 802A0858 00269E18  2C 03 00 00 */	cmpwi r3, 0
/* 802A085C 00269E1C  7C 7E 1B 78 */	mr r30, r3
/* 802A0860 00269E20  41 82 00 44 */	beq .L_802A08A4
/* 802A0864 00269E24  A0 03 00 8C */	lhz r0, 0x8c(r3)
/* 802A0868 00269E28  7C 1A 00 00 */	cmpw r26, r0
/* 802A086C 00269E2C  40 82 00 38 */	bne .L_802A08A4
/* 802A0870 00269E30  2C 1B 00 00 */	cmpwi r27, 0
/* 802A0874 00269E34  41 82 00 1C */	beq .L_802A0890
/* 802A0878 00269E38  80 63 00 9C */	lwz r3, 0x9c(r3)
/* 802A087C 00269E3C  2C 03 00 00 */	cmpwi r3, 0
/* 802A0880 00269E40  41 82 00 08 */	beq .L_802A0888
/* 802A0884 00269E44  38 63 C1 64 */	addi r3, r3, -16028
.L_802A0888:
/* 802A0888 00269E48  7C 1B 18 40 */	cmplw r27, r3
/* 802A088C 00269E4C  40 82 00 18 */	bne .L_802A08A4
.L_802A0890:
/* 802A0890 00269E50  4B E0 FF 59 */	bl func_800B07E8
/* 802A0894 00269E54  7F C4 F3 78 */	mr r4, r30
/* 802A0898 00269E58  4B E1 31 F1 */	bl func_800B3A88
/* 802A089C 00269E5C  38 00 00 01 */	li r0, 1
/* 802A08A0 00269E60  48 00 00 18 */	b .L_802A08B8
.L_802A08A4:
/* 802A08A4 00269E64  83 BD 00 00 */	lwz r29, 0(r29)
.L_802A08A8:
/* 802A08A8 00269E68  80 1F 00 04 */	lwz r0, 4(r31)
/* 802A08AC 00269E6C  7C 1D 00 40 */	cmplw r29, r0
/* 802A08B0 00269E70  40 82 FF A0 */	bne .L_802A0850
/* 802A08B4 00269E74  38 00 00 00 */	li r0, 0
.L_802A08B8:
/* 802A08B8 00269E78  2C 00 00 00 */	cmpwi r0, 0
/* 802A08BC 00269E7C  40 82 FF 7C */	bne .L_802A0838
/* 802A08C0 00269E80  7F 83 E3 78 */	mr r3, r28
/* 802A08C4 00269E84  BB 41 00 08 */	lmw r26, 8(r1)
/* 802A08C8 00269E88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A08CC 00269E8C  7C 08 03 A6 */	mtlr r0
/* 802A08D0 00269E90  38 21 00 20 */	addi r1, r1, 0x20
/* 802A08D4 00269E94  4E 80 00 20 */	blr 
.endfn func_802A0818

.fn func_802A08D8, global
/* 802A08D8 00269E98  3C 80 80 54 */	lis r4, __vt__cf_CChainEffect@ha
/* 802A08DC 00269E9C  38 00 00 00 */	li r0, 0
/* 802A08E0 00269EA0  38 84 D0 20 */	addi r4, r4, __vt__cf_CChainEffect@l
/* 802A08E4 00269EA4  90 83 00 00 */	stw r4, 0(r3)
/* 802A08E8 00269EA8  90 03 00 04 */	stw r0, 4(r3)
/* 802A08EC 00269EAC  90 03 00 08 */	stw r0, 8(r3)
/* 802A08F0 00269EB0  4E 80 00 20 */	blr 
.endfn func_802A08D8

.fn func_802A08F4, global
/* 802A08F4 00269EB4  38 00 00 00 */	li r0, 0
/* 802A08F8 00269EB8  90 03 00 04 */	stw r0, 4(r3)
/* 802A08FC 00269EBC  90 03 00 08 */	stw r0, 8(r3)
/* 802A0900 00269EC0  4E 80 00 20 */	blr 
.endfn func_802A08F4

.fn func_802A0904, global
/* 802A0904 00269EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A0908 00269EC8  7C 08 02 A6 */	mflr r0
/* 802A090C 00269ECC  38 80 00 00 */	li r4, 0
/* 802A0910 00269ED0  38 A0 00 00 */	li r5, 0
/* 802A0914 00269ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A0918 00269ED8  38 C0 00 00 */	li r6, 0
/* 802A091C 00269EDC  38 E0 00 00 */	li r7, 0
/* 802A0920 00269EE0  39 00 00 00 */	li r8, 0
/* 802A0924 00269EE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A0928 00269EE8  7C 7F 1B 78 */	mr r31, r3
/* 802A092C 00269EEC  48 00 00 25 */	bl func_802A0950
/* 802A0930 00269EF0  38 00 00 00 */	li r0, 0
/* 802A0934 00269EF4  90 1F 00 04 */	stw r0, 4(r31)
/* 802A0938 00269EF8  90 1F 00 08 */	stw r0, 8(r31)
/* 802A093C 00269EFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A0940 00269F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A0944 00269F04  7C 08 03 A6 */	mtlr r0
/* 802A0948 00269F08  38 21 00 10 */	addi r1, r1, 0x10
/* 802A094C 00269F0C  4E 80 00 20 */	blr 
.endfn func_802A0904

.fn func_802A0950, global
/* 802A0950 00269F10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A0954 00269F14  7C 08 02 A6 */	mflr r0
/* 802A0958 00269F18  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A095C 00269F1C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A0960 00269F20  48 01 97 F5 */	bl _savegpr_27
/* 802A0964 00269F24  2C 04 00 00 */	cmpwi r4, 0
/* 802A0968 00269F28  7C 7B 1B 78 */	mr r27, r3
/* 802A096C 00269F2C  7C BC 2B 78 */	mr r28, r5
/* 802A0970 00269F30  7C DD 33 78 */	mr r29, r6
/* 802A0974 00269F34  7C FE 3B 78 */	mr r30, r7
/* 802A0978 00269F38  7D 1F 43 78 */	mr r31, r8
/* 802A097C 00269F3C  41 82 00 B4 */	beq .L_802A0A30
/* 802A0980 00269F40  80 03 00 08 */	lwz r0, 8(r3)
/* 802A0984 00269F44  7C 00 38 40 */	cmplw r0, r7
/* 802A0988 00269F48  41 82 00 1C */	beq .L_802A09A4
/* 802A098C 00269F4C  38 80 00 00 */	li r4, 0
/* 802A0990 00269F50  38 A0 00 00 */	li r5, 0
/* 802A0994 00269F54  38 C0 00 00 */	li r6, 0
/* 802A0998 00269F58  38 E0 00 00 */	li r7, 0
/* 802A099C 00269F5C  39 00 00 00 */	li r8, 0
/* 802A09A0 00269F60  4B FF FF B1 */	bl func_802A0950
.L_802A09A4:
/* 802A09A4 00269F64  80 1B 00 04 */	lwz r0, 4(r27)
/* 802A09A8 00269F68  2C 00 00 00 */	cmpwi r0, 0
/* 802A09AC 00269F6C  40 82 00 DC */	bne .L_802A0A88
/* 802A09B0 00269F70  2C 1D 00 00 */	cmpwi r29, 0
/* 802A09B4 00269F74  41 82 00 0C */	beq .L_802A09C0
/* 802A09B8 00269F78  80 9D 00 00 */	lwz r4, 0(r29)
/* 802A09BC 00269F7C  48 00 00 08 */	b .L_802A09C4
.L_802A09C0:
/* 802A09C0 00269F80  38 80 00 00 */	li r4, 0
.L_802A09C4:
/* 802A09C4 00269F84  2C 04 00 00 */	cmpwi r4, 0
/* 802A09C8 00269F88  41 82 00 08 */	beq .L_802A09D0
/* 802A09CC 00269F8C  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A09D0:
/* 802A09D0 00269F90  7F 83 E3 78 */	mr r3, r28
/* 802A09D4 00269F94  4B DA 48 05 */	bl func_800451D8
/* 802A09D8 00269F98  2C 03 00 00 */	cmpwi r3, 0
/* 802A09DC 00269F9C  90 7B 00 04 */	stw r3, 4(r27)
/* 802A09E0 00269FA0  41 82 00 08 */	beq .L_802A09E8
/* 802A09E4 00269FA4  93 63 00 B0 */	stw r27, 0xb0(r3)
.L_802A09E8:
/* 802A09E8 00269FA8  2C 1E 00 00 */	cmpwi r30, 0
/* 802A09EC 00269FAC  41 82 00 1C */	beq .L_802A0A08
/* 802A09F0 00269FB0  80 9E 00 00 */	lwz r4, 0(r30)
/* 802A09F4 00269FB4  2C 04 00 00 */	cmpwi r4, 0
/* 802A09F8 00269FB8  41 82 00 08 */	beq .L_802A0A00
/* 802A09FC 00269FBC  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A0A00:
/* 802A0A00 00269FC0  80 7B 00 04 */	lwz r3, 4(r27)
/* 802A0A04 00269FC4  4B E0 C5 D5 */	bl func_800ACFD8
.L_802A0A08:
/* 802A0A08 00269FC8  2C 1F 00 00 */	cmpwi r31, 0
/* 802A0A0C 00269FCC  93 DB 00 08 */	stw r30, 8(r27)
/* 802A0A10 00269FD0  41 82 00 78 */	beq .L_802A0A88
/* 802A0A14 00269FD4  C0 22 B1 78 */	lfs f1, float_8066B4F8@sda21(r2)
/* 802A0A18 00269FD8  7F E4 FB 78 */	mr r4, r31
/* 802A0A1C 00269FDC  38 60 00 00 */	li r3, 0
/* 802A0A20 00269FE0  38 A0 00 00 */	li r5, 0
/* 802A0A24 00269FE4  38 C0 00 00 */	li r6, 0
/* 802A0A28 00269FE8  4B F1 F2 11 */	bl func_801BFC38
/* 802A0A2C 00269FEC  48 00 00 5C */	b .L_802A0A88
.L_802A0A30:
/* 802A0A30 00269FF0  80 83 00 04 */	lwz r4, 4(r3)
/* 802A0A34 00269FF4  2C 04 00 00 */	cmpwi r4, 0
/* 802A0A38 00269FF8  41 82 00 50 */	beq .L_802A0A88
/* 802A0A3C 00269FFC  38 00 00 00 */	li r0, 0
/* 802A0A40 0026A000  90 04 00 B0 */	stw r0, 0xb0(r4)
/* 802A0A44 0026A004  83 E3 00 04 */	lwz r31, 4(r3)
/* 802A0A48 0026A008  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 802A0A4C 0026A00C  2C 00 00 00 */	cmpwi r0, 0
/* 802A0A50 0026A010  41 82 00 20 */	beq .L_802A0A70
/* 802A0A54 0026A014  7F E3 FB 78 */	mr r3, r31
/* 802A0A58 0026A018  38 80 00 00 */	li r4, 0
/* 802A0A5C 0026A01C  4B E0 C5 7D */	bl func_800ACFD8
/* 802A0A60 0026A020  80 7B 00 04 */	lwz r3, 4(r27)
/* 802A0A64 0026A024  38 80 00 01 */	li r4, 1
/* 802A0A68 0026A028  4B E0 C1 AD */	bl func_800ACC14
/* 802A0A6C 0026A02C  48 00 00 10 */	b .L_802A0A7C
.L_802A0A70:
/* 802A0A70 0026A030  4B E0 FD 79 */	bl func_800B07E8
/* 802A0A74 0026A034  7F E4 FB 78 */	mr r4, r31
/* 802A0A78 0026A038  4B E1 30 11 */	bl func_800B3A88
.L_802A0A7C:
/* 802A0A7C 0026A03C  38 00 00 00 */	li r0, 0
/* 802A0A80 0026A040  90 1B 00 04 */	stw r0, 4(r27)
/* 802A0A84 0026A044  90 1B 00 08 */	stw r0, 8(r27)
.L_802A0A88:
/* 802A0A88 0026A048  39 61 00 20 */	addi r11, r1, 0x20
/* 802A0A8C 0026A04C  48 01 97 15 */	bl _restgpr_27
/* 802A0A90 0026A050  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A0A94 0026A054  7C 08 03 A6 */	mtlr r0
/* 802A0A98 0026A058  38 21 00 20 */	addi r1, r1, 0x20
/* 802A0A9C 0026A05C  4E 80 00 20 */	blr
.endfn func_802A0950

.fn func_802A0AA0, global
/* 802A0AA0 0026A060  80 03 00 04 */	lwz r0, 4(r3)
/* 802A0AA4 0026A064  2C 00 00 00 */	cmpwi r0, 0
/* 802A0AA8 0026A068  4D 82 00 20 */	beqlr 
/* 802A0AAC 0026A06C  80 A3 00 08 */	lwz r5, 8(r3)
/* 802A0AB0 0026A070  2C 05 00 00 */	cmpwi r5, 0
/* 802A0AB4 0026A074  4D 82 00 20 */	beqlr 
/* 802A0AB8 0026A078  80 05 00 00 */	lwz r0, 0(r5)
/* 802A0ABC 0026A07C  7C 00 20 40 */	cmplw r0, r4
/* 802A0AC0 0026A080  4C 82 00 20 */	bnelr 
/* 802A0AC4 0026A084  38 80 00 00 */	li r4, 0
/* 802A0AC8 0026A088  38 A0 00 00 */	li r5, 0
/* 802A0ACC 0026A08C  38 C0 00 00 */	li r6, 0
/* 802A0AD0 0026A090  38 E0 00 00 */	li r7, 0
/* 802A0AD4 0026A094  39 00 00 00 */	li r8, 0
/* 802A0AD8 0026A098  4B FF FE 78 */	b func_802A0950
/* 802A0ADC 0026A09C  4E 80 00 20 */	blr 
.endfn func_802A0AA0

.fn func_802A0AE0, global
/* 802A0AE0 0026A0A0  80 03 00 04 */	lwz r0, 4(r3)
/* 802A0AE4 0026A0A4  7C 04 00 40 */	cmplw r4, r0
/* 802A0AE8 0026A0A8  4C 82 00 20 */	bnelr 
/* 802A0AEC 0026A0AC  38 00 00 00 */	li r0, 0
/* 802A0AF0 0026A0B0  90 03 00 04 */	stw r0, 4(r3)
/* 802A0AF4 0026A0B4  90 03 00 08 */	stw r0, 8(r3)
/* 802A0AF8 0026A0B8  4E 80 00 20 */	blr 
.endfn func_802A0AE0

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0



.global cf_CChainEffect_typestr
cf_CChainEffect_typestr:
	.asciz "cf::CChainEffect"
	.balign 4
	.4byte 0

.section .data, "wa"  # 0x805281E0 - 0x80573C60



.global __vt__cf_CChainEffect
__vt__cf_CChainEffect:
	.4byte __RTTI__cf_CChainEffect
	.4byte 0
	.4byte func_800D8D3C
	.4byte func_802A0AE0

.global cf_CChainEffect_hierarchy
cf_CChainEffect_hierarchy:
	.4byte __RTTI__cf_IObjectInfo
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600



.global __RTTI__cf_CChainEffect
__RTTI__cf_CChainEffect:
	.4byte cf_CChainEffect_typestr
	.4byte cf_CChainEffect_hierarchy

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0




.global float_8066B4F8
float_8066B4F8:
	.float 0.6 #0x3F19999A
	.4byte 0

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001A868", local
.hidden "@etb_8001A868"
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_8001A868"

.obj "@etb_8001A870", local
.hidden "@etb_8001A870"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001A870"

.obj "@etb_8001A878", local
.hidden "@etb_8001A878"
	.4byte 0x280A0000
	.4byte 0x00000000
.endobj "@etb_8001A878"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80032648", local
.hidden "@eti_80032648"
	.4byte func_802A0818
	.4byte 0x000000C0
	.4byte "@etb_8001A868"
.endobj "@eti_80032648"

.obj "@eti_80032654", local
.hidden "@eti_80032654"
	.4byte func_802A0904
	.4byte 0x0000004C
	.4byte "@etb_8001A870"
.endobj "@eti_80032654"

.obj "@eti_80032660", local
.hidden "@eti_80032660"
	.4byte func_802A0950
	.4byte 0x00000150
	.4byte "@etb_8001A878"
.endobj "@eti_80032660"
