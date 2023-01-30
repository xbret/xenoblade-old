.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900



.fn func_80285928, global
/* 80285928 0024EEE8  3C A0 80 54 */	lis r5, __vt__CEIBCur@ha
/* 8028592C 0024EEEC  38 00 00 00 */	li r0, 0
/* 80285930 0024EEF0  38 A5 BE BC */	addi r5, r5, __vt__CEIBCur@l
/* 80285934 0024EEF4  90 A3 00 00 */	stw r5, 0(r3)
/* 80285938 0024EEF8  90 83 00 04 */	stw r4, 4(r3)
/* 8028593C 0024EEFC  90 03 00 08 */	stw r0, 8(r3)
/* 80285940 0024EF00  90 03 00 0C */	stw r0, 0xc(r3)
/* 80285944 0024EF04  90 03 00 10 */	stw r0, 0x10(r3)
/* 80285948 0024EF08  98 03 00 14 */	stb r0, 0x14(r3)
/* 8028594C 0024EF0C  98 03 00 15 */	stb r0, 0x15(r3)
/* 80285950 0024EF10  4E 80 00 20 */	blr 
.endfn func_80285928

.fn func_80285954, global
/* 80285954 0024EF14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285958 0024EF18  7C 08 02 A6 */	mflr r0
/* 8028595C 0024EF1C  2C 03 00 00 */	cmpwi r3, 0
/* 80285960 0024EF20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285964 0024EF24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80285968 0024EF28  7C 7F 1B 78 */	mr r31, r3
/* 8028596C 0024EF2C  41 82 00 10 */	beq .L_8028597C
/* 80285970 0024EF30  2C 04 00 00 */	cmpwi r4, 0
/* 80285974 0024EF34  40 81 00 08 */	ble .L_8028597C
/* 80285978 0024EF38  48 1A F2 B5 */	bl __dl__FPv
.L_8028597C:
/* 8028597C 0024EF3C  7F E3 FB 78 */	mr r3, r31
/* 80285980 0024EF40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285984 0024EF44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80285988 0024EF48  7C 08 03 A6 */	mtlr r0
/* 8028598C 0024EF4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80285990 0024EF50  4E 80 00 20 */	blr 
.endfn func_80285954

.fn func_80285994, global
/* 80285994 0024EF54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285998 0024EF58  7C 08 02 A6 */	mflr r0
/* 8028599C 0024EF5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802859A0 0024EF60  BF C1 00 08 */	stmw r30, 8(r1)
/* 802859A4 0024EF64  3F E0 80 51 */	lis r31, lbl_8050A654@ha
/* 802859A8 0024EF68  3B FF A6 54 */	addi r31, r31, lbl_8050A654@l
/* 802859AC 0024EF6C  7C 7E 1B 78 */	mr r30, r3
/* 802859B0 0024EF70  38 BF 00 97 */	addi r5, r31, 0x97
/* 802859B4 0024EF74  80 83 00 04 */	lwz r4, 4(r3)
/* 802859B8 0024EF78  38 63 00 08 */	addi r3, r3, 8
/* 802859BC 0024EF7C  4B EB 14 C9 */	bl func_80136E84
/* 802859C0 0024EF80  80 7E 00 08 */	lwz r3, 8(r30)
/* 802859C4 0024EF84  38 9E 00 0C */	addi r4, r30, 0xc
/* 802859C8 0024EF88  80 BE 00 04 */	lwz r5, 4(r30)
/* 802859CC 0024EF8C  38 DF 00 AF */	addi r6, r31, 0xaf
/* 802859D0 0024EF90  4B EB 15 39 */	bl func_80136F08
/* 802859D4 0024EF94  80 7E 00 08 */	lwz r3, 8(r30)
/* 802859D8 0024EF98  38 9E 00 10 */	addi r4, r30, 0x10
/* 802859DC 0024EF9C  80 BE 00 04 */	lwz r5, 4(r30)
/* 802859E0 0024EFA0  38 DF 00 CC */	addi r6, r31, 0xcc
/* 802859E4 0024EFA4  4B EB 15 25 */	bl func_80136F08
/* 802859E8 0024EFA8  80 7E 00 08 */	lwz r3, 8(r30)
/* 802859EC 0024EFAC  81 83 00 00 */	lwz r12, 0(r3)
/* 802859F0 0024EFB0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802859F4 0024EFB4  7D 89 03 A6 */	mtctr r12
/* 802859F8 0024EFB8  4E 80 04 21 */	bctrl 
/* 802859FC 0024EFBC  7F C3 F3 78 */	mr r3, r30
/* 80285A00 0024EFC0  48 00 01 71 */	bl func_80285B70
/* 80285A04 0024EFC4  BB C1 00 08 */	lmw r30, 8(r1)
/* 80285A08 0024EFC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80285A0C 0024EFCC  7C 08 03 A6 */	mtlr r0
/* 80285A10 0024EFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80285A14 0024EFD4  4E 80 00 20 */	blr 
.endfn func_80285994

.fn func_80285A18, global
/* 80285A18 0024EFD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285A1C 0024EFDC  7C 08 02 A6 */	mflr r0
/* 80285A20 0024EFE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285A24 0024EFE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80285A28 0024EFE8  7C 7F 1B 78 */	mr r31, r3
/* 80285A2C 0024EFEC  80 03 00 08 */	lwz r0, 8(r3)
/* 80285A30 0024EFF0  2C 00 00 00 */	cmpwi r0, 0
/* 80285A34 0024EFF4  41 82 00 48 */	beq .L_80285A7C
/* 80285A38 0024EFF8  88 03 00 15 */	lbz r0, 0x15(r3)
/* 80285A3C 0024EFFC  2C 00 00 00 */	cmpwi r0, 0
/* 80285A40 0024F000  41 82 00 10 */	beq .L_80285A50
/* 80285A44 0024F004  2C 00 00 01 */	cmpwi r0, 1
/* 80285A48 0024F008  41 82 00 18 */	beq .L_80285A60
/* 80285A4C 0024F00C  48 00 00 18 */	b .L_80285A64
.L_80285A50:
/* 80285A50 0024F010  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80285A54 0024F014  C0 22 B0 50 */	lfs f1, float_8066B3D0@sda21(r2)
/* 80285A58 0024F018  4B EB 19 ED */	bl func_80137444
/* 80285A5C 0024F01C  48 00 00 08 */	b .L_80285A64
.L_80285A60:
/* 80285A60 0024F020  48 00 00 C5 */	bl func_80285B24
.L_80285A64:
/* 80285A64 0024F024  80 7F 00 08 */	lwz r3, 8(r31)
/* 80285A68 0024F028  38 80 00 00 */	li r4, 0
/* 80285A6C 0024F02C  81 83 00 00 */	lwz r12, 0(r3)
/* 80285A70 0024F030  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80285A74 0024F034  7D 89 03 A6 */	mtctr r12
/* 80285A78 0024F038  4E 80 04 21 */	bctrl 
.L_80285A7C:
/* 80285A7C 0024F03C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80285A80 0024F040  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285A84 0024F044  7C 08 03 A6 */	mtlr r0
/* 80285A88 0024F048  38 21 00 10 */	addi r1, r1, 0x10
/* 80285A8C 0024F04C  4E 80 00 20 */	blr 
.endfn func_80285A18

.fn func_80285A90, global
/* 80285A90 0024F050  80 A3 00 08 */	lwz r5, 8(r3)
/* 80285A94 0024F054  2C 05 00 00 */	cmpwi r5, 0
/* 80285A98 0024F058  4D 82 00 20 */	beqlr 
/* 80285A9C 0024F05C  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80285AA0 0024F060  2C 00 00 00 */	cmpwi r0, 0
/* 80285AA4 0024F064  4D 82 00 20 */	beqlr 
/* 80285AA8 0024F068  7C A3 2B 78 */	mr r3, r5
/* 80285AAC 0024F06C  38 A0 00 00 */	li r5, 0
/* 80285AB0 0024F070  38 C0 00 01 */	li r6, 1
/* 80285AB4 0024F074  4B EB 15 84 */	b func_80137038
/* 80285AB8 0024F078  4E 80 00 20 */	blr 
.endfn func_80285A90

.fn func_80285ABC, global
/* 80285ABC 0024F07C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285AC0 0024F080  7C 08 02 A6 */	mflr r0
/* 80285AC4 0024F084  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285AC8 0024F088  38 00 00 00 */	li r0, 0
/* 80285ACC 0024F08C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80285AD0 0024F090  7C 7F 1B 78 */	mr r31, r3
/* 80285AD4 0024F094  80 83 00 08 */	lwz r4, 8(r3)
/* 80285AD8 0024F098  98 03 00 14 */	stb r0, 0x14(r3)
/* 80285ADC 0024F09C  2C 04 00 00 */	cmpwi r4, 0
/* 80285AE0 0024F0A0  90 03 00 0C */	stw r0, 0xc(r3)
/* 80285AE4 0024F0A4  90 03 00 10 */	stw r0, 0x10(r3)
/* 80285AE8 0024F0A8  41 82 00 28 */	beq .L_80285B10
/* 80285AEC 0024F0AC  41 82 00 1C */	beq .L_80285B08
/* 80285AF0 0024F0B0  7C 83 23 78 */	mr r3, r4
/* 80285AF4 0024F0B4  38 80 00 01 */	li r4, 1
/* 80285AF8 0024F0B8  81 83 00 00 */	lwz r12, 0(r3)
/* 80285AFC 0024F0BC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80285B00 0024F0C0  7D 89 03 A6 */	mtctr r12
/* 80285B04 0024F0C4  4E 80 04 21 */	bctrl 
.L_80285B08:
/* 80285B08 0024F0C8  38 00 00 00 */	li r0, 0
/* 80285B0C 0024F0CC  90 1F 00 08 */	stw r0, 8(r31)
.L_80285B10:
/* 80285B10 0024F0D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80285B14 0024F0D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285B18 0024F0D8  7C 08 03 A6 */	mtlr r0
/* 80285B1C 0024F0DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80285B20 0024F0E0  4E 80 00 20 */	blr 
.endfn func_80285ABC

.fn func_80285B24, global
/* 80285B24 0024F0E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285B28 0024F0E8  7C 08 02 A6 */	mflr r0
/* 80285B2C 0024F0EC  C0 22 B0 50 */	lfs f1, float_8066B3D0@sda21(r2)
/* 80285B30 0024F0F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285B34 0024F0F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80285B38 0024F0F8  7C 7F 1B 78 */	mr r31, r3
/* 80285B3C 0024F0FC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80285B40 0024F100  4B EB 19 05 */	bl func_80137444
/* 80285B44 0024F104  2C 03 00 00 */	cmpwi r3, 0
/* 80285B48 0024F108  41 82 00 14 */	beq .L_80285B5C
/* 80285B4C 0024F10C  38 00 00 00 */	li r0, 0
/* 80285B50 0024F110  98 1F 00 15 */	stb r0, 0x15(r31)
/* 80285B54 0024F114  7F E3 FB 78 */	mr r3, r31
/* 80285B58 0024F118  48 00 00 19 */	bl func_80285B70
.L_80285B5C:
/* 80285B5C 0024F11C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80285B60 0024F120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285B64 0024F124  7C 08 03 A6 */	mtlr r0
/* 80285B68 0024F128  38 21 00 10 */	addi r1, r1, 0x10
/* 80285B6C 0024F12C  4E 80 00 20 */	blr 
.endfn func_80285B24

.fn func_80285B70, global
/* 80285B70 0024F130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285B74 0024F134  7C 08 02 A6 */	mflr r0
/* 80285B78 0024F138  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285B7C 0024F13C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80285B80 0024F140  7C 7F 1B 78 */	mr r31, r3
/* 80285B84 0024F144  80 63 00 08 */	lwz r3, 8(r3)
/* 80285B88 0024F148  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80285B8C 0024F14C  81 83 00 00 */	lwz r12, 0(r3)
/* 80285B90 0024F150  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80285B94 0024F154  7D 89 03 A6 */	mtctr r12
/* 80285B98 0024F158  4E 80 04 21 */	bctrl 
/* 80285B9C 0024F15C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80285BA0 0024F160  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80285BA4 0024F164  81 83 00 00 */	lwz r12, 0(r3)
/* 80285BA8 0024F168  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80285BAC 0024F16C  7D 89 03 A6 */	mtctr r12
/* 80285BB0 0024F170  4E 80 04 21 */	bctrl 
/* 80285BB4 0024F174  80 7F 00 08 */	lwz r3, 8(r31)
/* 80285BB8 0024F178  38 A0 00 01 */	li r5, 1
/* 80285BBC 0024F17C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80285BC0 0024F180  81 83 00 00 */	lwz r12, 0(r3)
/* 80285BC4 0024F184  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80285BC8 0024F188  7D 89 03 A6 */	mtctr r12
/* 80285BCC 0024F18C  4E 80 04 21 */	bctrl 
/* 80285BD0 0024F190  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80285BD4 0024F194  38 80 00 00 */	li r4, 0
/* 80285BD8 0024F198  C0 02 B0 2C */	lfs f0, float_8066B3AC@sda21(r2)
/* 80285BDC 0024F19C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80285BE0 0024F1A0  80 7F 00 08 */	lwz r3, 8(r31)
/* 80285BE4 0024F1A4  81 83 00 00 */	lwz r12, 0(r3)
/* 80285BE8 0024F1A8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80285BEC 0024F1AC  7D 89 03 A6 */	mtctr r12
/* 80285BF0 0024F1B0  4E 80 04 21 */	bctrl 
/* 80285BF4 0024F1B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80285BF8 0024F1B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285BFC 0024F1BC  7C 08 03 A6 */	mtlr r0
/* 80285C00 0024F1C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80285C04 0024F1C4  4E 80 00 20 */	blr 
.endfn func_80285B70

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80018E38", local
.hidden "@etb_80018E38"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80018E38"

.obj "@etb_80018E40", local
.hidden "@etb_80018E40"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80018E40"

.obj "@etb_80018E48", local
.hidden "@etb_80018E48"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80018E48"

.obj "@etb_80018E50", local
.hidden "@etb_80018E50"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80018E50"

.obj "@etb_80018E58", local
.hidden "@etb_80018E58"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80018E58"

.obj "@etb_80018E60", local
.hidden "@etb_80018E60"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80018E60"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80031520", local
.hidden "@eti_80031520"
	.4byte func_80285954
	.4byte 0x00000040
	.4byte "@etb_80018E38"
.endobj "@eti_80031520"

.obj "@eti_8003152C", local
.hidden "@eti_8003152C"
	.4byte func_80285994
	.4byte 0x00000084
	.4byte "@etb_80018E40"
.endobj "@eti_8003152C"

.obj "@eti_80031538", local
.hidden "@eti_80031538"
	.4byte func_80285A18
	.4byte 0x00000078
	.4byte "@etb_80018E48"
.endobj "@eti_80031538"

.obj "@eti_80031544", local
.hidden "@eti_80031544"
	.4byte func_80285ABC
	.4byte 0x00000068
	.4byte "@etb_80018E50"
.endobj "@eti_80031544"

.obj "@eti_80031550", local
.hidden "@eti_80031550"
	.4byte func_80285B24
	.4byte 0x0000004C
	.4byte "@etb_80018E58"
.endobj "@eti_80031550"

.obj "@eti_8003155C", local
.hidden "@eti_8003155C"
	.4byte func_80285B70
	.4byte 0x00000098
	.4byte "@etb_80018E60"
.endobj "@eti_8003155C"