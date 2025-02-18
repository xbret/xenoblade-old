.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn SFX_Init, global
/* 803D5828 0039EDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D582C 0039EDEC  7C 08 02 A6 */	mflr r0
/* 803D5830 0039EDF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D5834 0039EDF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D5838 0039EDF8  3F E0 80 62 */	lis r31, sfx_init_cnt@ha
/* 803D583C 0039EDFC  3B FF CE 38 */	addi r31, r31, sfx_init_cnt@l
/* 803D5840 0039EE00  80 1F 00 00 */	lwz r0, 0(r31)
/* 803D5844 0039EE04  2C 00 00 01 */	cmpwi r0, 1
/* 803D5848 0039EE08  40 80 00 58 */	bge .L_803D58A0
/* 803D584C 0039EE0C  3C A0 80 52 */	lis r5, sfx_ver_str@ha
/* 803D5850 0039EE10  38 7F 00 10 */	addi r3, r31, 0x10
/* 803D5854 0039EE14  38 A5 0A 90 */	addi r5, r5, sfx_ver_str@l
/* 803D5858 0039EE18  38 80 00 00 */	li r4, 0
/* 803D585C 0039EE1C  90 BF 00 08 */	stw r5, 8(r31)
/* 803D5860 0039EE20  38 A0 05 28 */	li r5, 0x528
/* 803D5864 0039EE24  4B C2 EA ED */	bl memset
/* 803D5868 0039EE28  38 7F 00 10 */	addi r3, r31, 0x10
/* 803D586C 0039EE2C  38 80 00 08 */	li r4, 8
/* 803D5870 0039EE30  38 00 00 01 */	li r0, 1
/* 803D5874 0039EE34  90 83 00 04 */	stw r4, 4(r3)
/* 803D5878 0039EE38  90 03 00 14 */	stw r0, 0x14(r3)
/* 803D587C 0039EE3C  4B FC 63 6D */	bl CFT_Init
/* 803D5880 0039EE40  48 00 17 8D */	bl SFXSUD_Init
/* 803D5884 0039EE44  48 00 05 41 */	bl SFXZ_Init
/* 803D5888 0039EE48  48 00 03 91 */	bl SFXA_Init
/* 803D588C 0039EE4C  80 7F 00 00 */	lwz r3, 0(r31)
/* 803D5890 0039EE50  38 00 00 00 */	li r0, 0
/* 803D5894 0039EE54  90 1F 00 04 */	stw r0, 4(r31)
/* 803D5898 0039EE58  38 03 00 01 */	addi r0, r3, 1
/* 803D589C 0039EE5C  90 1F 00 00 */	stw r0, 0(r31)
.L_803D58A0:
/* 803D58A0 0039EE60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D58A4 0039EE64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D58A8 0039EE68  7C 08 03 A6 */	mtlr r0
/* 803D58AC 0039EE6C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D58B0 0039EE70  4E 80 00 20 */	blr 
.endfn SFX_Init

.fn SFX_SetErrFn, global
/* 803D58B4 0039EE74  3C A0 80 62 */	lis r5, sfx_libwork@ha
/* 803D58B8 0039EE78  38 A5 CE 48 */	addi r5, r5, sfx_libwork@l
/* 803D58BC 0039EE7C  90 65 00 08 */	stw r3, 8(r5)
/* 803D58C0 0039EE80  90 85 00 0C */	stw r4, 0xc(r5)
/* 803D58C4 0039EE84  4E 80 00 20 */	blr
.endfn SFX_SetErrFn

.fn SFX_Create, global
/* 803D58C8 0039EE88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D58CC 0039EE8C  7C 08 02 A6 */	mflr r0
/* 803D58D0 0039EE90  3C C0 80 62 */	lis r6, sfx_libwork@ha
/* 803D58D4 0039EE94  7C 67 1B 78 */	mr r7, r3
/* 803D58D8 0039EE98  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D58DC 0039EE9C  38 C6 CE 48 */	addi r6, r6, sfx_libwork@l
/* 803D58E0 0039EEA0  7C 85 23 78 */	mr r5, r4
/* 803D58E4 0039EEA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D58E8 0039EEA8  3B E6 00 18 */	addi r31, r6, 0x18
/* 803D58EC 0039EEAC  93 C1 00 08 */	stw r30, 8(r1)
/* 803D58F0 0039EEB0  80 06 00 04 */	lwz r0, 4(r6)
/* 803D58F4 0039EEB4  7C 09 03 A6 */	mtctr r0
/* 803D58F8 0039EEB8  2C 00 00 00 */	cmpwi r0, 0
/* 803D58FC 0039EEBC  40 81 00 1C */	ble .L_803D5918
.L_803D5900:
/* 803D5900 0039EEC0  80 1F 00 00 */	lwz r0, 0(r31)
/* 803D5904 0039EEC4  2C 00 00 00 */	cmpwi r0, 0
/* 803D5908 0039EEC8  40 82 00 08 */	bne .L_803D5910
/* 803D590C 0039EECC  48 00 00 10 */	b .L_803D591C
.L_803D5910:
/* 803D5910 0039EED0  3B FF 00 A0 */	addi r31, r31, 0xa0
/* 803D5914 0039EED4  42 00 FF EC */	bdnz .L_803D5900
.L_803D5918:
/* 803D5918 0039EED8  3B E0 00 00 */	li r31, 0
.L_803D591C:
/* 803D591C 0039EEDC  2C 1F 00 00 */	cmpwi r31, 0
/* 803D5920 0039EEE0  40 82 00 0C */	bne .L_803D592C
/* 803D5924 0039EEE4  7F E3 FB 78 */	mr r3, r31
/* 803D5928 0039EEE8  48 00 01 84 */	b .L_803D5AAC
.L_803D592C:
/* 803D592C 0039EEEC  7C 83 FE 70 */	srawi r3, r4, 0x1f
/* 803D5930 0039EEF0  38 00 30 1F */	li r0, 0x301f
/* 803D5934 0039EEF4  7C 00 20 10 */	subfc r0, r0, r4
/* 803D5938 0039EEF8  38 00 00 00 */	li r0, 0
/* 803D593C 0039EEFC  7C 03 01 14 */	adde r0, r3, r0
/* 803D5940 0039EF00  2C 00 00 01 */	cmpwi r0, 1
/* 803D5944 0039EF04  41 82 00 40 */	beq .L_803D5984
/* 803D5948 0039EF08  3C C0 80 62 */	lis r6, sfx_libwork@ha
/* 803D594C 0039EF0C  3C 80 80 52 */	lis r4, sfx_lib_strpool@ha
/* 803D5950 0039EF10  38 C6 CE 48 */	addi r6, r6, sfx_libwork@l
/* 803D5954 0039EF14  81 86 00 08 */	lwz r12, 8(r6)
/* 803D5958 0039EF18  38 84 0A C4 */	addi r4, r4, sfx_lib_strpool@l
/* 803D595C 0039EF1C  80 A6 00 10 */	lwz r5, 0x10(r6)
/* 803D5960 0039EF20  2C 0C 00 00 */	cmpwi r12, 0
/* 803D5964 0039EF24  80 66 00 0C */	lwz r3, 0xc(r6)
/* 803D5968 0039EF28  38 05 00 01 */	addi r0, r5, 1
/* 803D596C 0039EF2C  90 06 00 10 */	stw r0, 0x10(r6)
/* 803D5970 0039EF30  41 82 00 0C */	beq .L_803D597C
/* 803D5974 0039EF34  7D 89 03 A6 */	mtctr r12
/* 803D5978 0039EF38  4E 80 04 21 */	bctrl 
.L_803D597C:
/* 803D597C 0039EF3C  38 60 00 00 */	li r3, 0
/* 803D5980 0039EF40  48 00 01 2C */	b .L_803D5AAC
.L_803D5984:
/* 803D5984 0039EF44  7F E3 FB 78 */	mr r3, r31
/* 803D5988 0039EF48  7C E4 3B 78 */	mr r4, r7
/* 803D598C 0039EF4C  48 00 01 39 */	bl sfx_InitHn
/* 803D5990 0039EF50  48 00 04 81 */	bl SFXZ_Create
/* 803D5994 0039EF54  2C 03 00 00 */	cmpwi r3, 0
/* 803D5998 0039EF58  40 82 00 78 */	bne .L_803D5A10
/* 803D599C 0039EF5C  3C C0 80 62 */	lis r6, sfx_libwork@ha
/* 803D59A0 0039EF60  3C 60 80 52 */	lis r3, sfx_lib_strpool@ha
/* 803D59A4 0039EF64  38 C6 CE 48 */	addi r6, r6, sfx_libwork@l
/* 803D59A8 0039EF68  81 86 00 08 */	lwz r12, 8(r6)
/* 803D59AC 0039EF6C  38 63 0A C4 */	addi r3, r3, sfx_lib_strpool@l
/* 803D59B0 0039EF70  80 A6 00 10 */	lwz r5, 0x10(r6)
/* 803D59B4 0039EF74  38 83 00 29 */	addi r4, r3, 0x29
/* 803D59B8 0039EF78  2C 0C 00 00 */	cmpwi r12, 0
/* 803D59BC 0039EF7C  80 66 00 0C */	lwz r3, 0xc(r6)
/* 803D59C0 0039EF80  38 05 00 01 */	addi r0, r5, 1
/* 803D59C4 0039EF84  90 06 00 10 */	stw r0, 0x10(r6)
/* 803D59C8 0039EF88  41 82 00 0C */	beq .L_803D59D4
/* 803D59CC 0039EF8C  7D 89 03 A6 */	mtctr r12
/* 803D59D0 0039EF90  4E 80 04 21 */	bctrl 
.L_803D59D4:
/* 803D59D4 0039EF94  2C 1F 00 00 */	cmpwi r31, 0
/* 803D59D8 0039EF98  41 82 00 30 */	beq .L_803D5A08
/* 803D59DC 0039EF9C  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 803D59E0 0039EFA0  38 00 00 00 */	li r0, 0
/* 803D59E4 0039EFA4  83 DF 00 30 */	lwz r30, 0x30(r31)
/* 803D59E8 0039EFA8  90 1F 00 00 */	stw r0, 0(r31)
/* 803D59EC 0039EFAC  48 00 04 A1 */	bl SFXZ_Destroy
/* 803D59F0 0039EFB0  7F C3 F3 78 */	mr r3, r30
/* 803D59F4 0039EFB4  48 00 02 F5 */	bl SFXA_Destroy
/* 803D59F8 0039EFB8  3C 80 80 62 */	lis r4, sfx_libwork@ha
/* 803D59FC 0039EFBC  80 64 CE 48 */	lwz r3, sfx_libwork@l(r4)
/* 803D5A00 0039EFC0  38 03 FF FF */	addi r0, r3, -1
/* 803D5A04 0039EFC4  90 04 CE 48 */	stw r0, sfx_libwork@l(r4)
.L_803D5A08:
/* 803D5A08 0039EFC8  38 60 00 00 */	li r3, 0
/* 803D5A0C 0039EFCC  48 00 00 A0 */	b .L_803D5AAC
.L_803D5A10:
/* 803D5A10 0039EFD0  90 7F 00 24 */	stw r3, 0x24(r31)
/* 803D5A14 0039EFD4  48 00 02 49 */	bl SFXA_Create
/* 803D5A18 0039EFD8  2C 03 00 00 */	cmpwi r3, 0
/* 803D5A1C 0039EFDC  40 82 00 78 */	bne .L_803D5A94
/* 803D5A20 0039EFE0  3C C0 80 62 */	lis r6, sfx_libwork@ha
/* 803D5A24 0039EFE4  3C 60 80 52 */	lis r3, sfx_lib_strpool@ha
/* 803D5A28 0039EFE8  38 C6 CE 48 */	addi r6, r6, sfx_libwork@l
/* 803D5A2C 0039EFEC  81 86 00 08 */	lwz r12, 8(r6)
/* 803D5A30 0039EFF0  38 63 0A C4 */	addi r3, r3, sfx_lib_strpool@l
/* 803D5A34 0039EFF4  80 A6 00 10 */	lwz r5, 0x10(r6)
/* 803D5A38 0039EFF8  38 83 00 48 */	addi r4, r3, 0x48
/* 803D5A3C 0039EFFC  2C 0C 00 00 */	cmpwi r12, 0
/* 803D5A40 0039F000  80 66 00 0C */	lwz r3, 0xc(r6)
/* 803D5A44 0039F004  38 05 00 01 */	addi r0, r5, 1
/* 803D5A48 0039F008  90 06 00 10 */	stw r0, 0x10(r6)
/* 803D5A4C 0039F00C  41 82 00 0C */	beq .L_803D5A58
/* 803D5A50 0039F010  7D 89 03 A6 */	mtctr r12
/* 803D5A54 0039F014  4E 80 04 21 */	bctrl 
.L_803D5A58:
/* 803D5A58 0039F018  2C 1F 00 00 */	cmpwi r31, 0
/* 803D5A5C 0039F01C  41 82 00 30 */	beq .L_803D5A8C
/* 803D5A60 0039F020  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 803D5A64 0039F024  38 00 00 00 */	li r0, 0
/* 803D5A68 0039F028  83 DF 00 30 */	lwz r30, 0x30(r31)
/* 803D5A6C 0039F02C  90 1F 00 00 */	stw r0, 0(r31)
/* 803D5A70 0039F030  48 00 04 1D */	bl SFXZ_Destroy
/* 803D5A74 0039F034  7F C3 F3 78 */	mr r3, r30
/* 803D5A78 0039F038  48 00 02 71 */	bl SFXA_Destroy
/* 803D5A7C 0039F03C  3C 80 80 62 */	lis r4, sfx_libwork@ha
/* 803D5A80 0039F040  80 64 CE 48 */	lwz r3, sfx_libwork@l(r4)
/* 803D5A84 0039F044  38 03 FF FF */	addi r0, r3, -1
/* 803D5A88 0039F048  90 04 CE 48 */	stw r0, sfx_libwork@l(r4)
.L_803D5A8C:
/* 803D5A8C 0039F04C  38 60 00 00 */	li r3, 0
/* 803D5A90 0039F050  48 00 00 1C */	b .L_803D5AAC
.L_803D5A94:
/* 803D5A94 0039F054  90 7F 00 30 */	stw r3, 0x30(r31)
/* 803D5A98 0039F058  3C A0 80 62 */	lis r5, sfx_libwork@ha
/* 803D5A9C 0039F05C  7F E3 FB 78 */	mr r3, r31
/* 803D5AA0 0039F060  80 85 CE 48 */	lwz r4, sfx_libwork@l(r5)
/* 803D5AA4 0039F064  38 04 00 01 */	addi r0, r4, 1
/* 803D5AA8 0039F068  90 05 CE 48 */	stw r0, sfx_libwork@l(r5)
.L_803D5AAC:
/* 803D5AAC 0039F06C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D5AB0 0039F070  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D5AB4 0039F074  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D5AB8 0039F078  7C 08 03 A6 */	mtlr r0
/* 803D5ABC 0039F07C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D5AC0 0039F080  4E 80 00 20 */	blr 
.endfn SFX_Create

.fn sfx_InitHn, local
/* 803D5AC4 0039F084  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D5AC8 0039F088  7C 08 02 A6 */	mflr r0
/* 803D5ACC 0039F08C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D5AD0 0039F090  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D5AD4 0039F094  7C BF 2B 78 */	mr r31, r5
/* 803D5AD8 0039F098  38 A0 00 A0 */	li r5, 0xa0
/* 803D5ADC 0039F09C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803D5AE0 0039F0A0  7C 9E 23 78 */	mr r30, r4
/* 803D5AE4 0039F0A4  38 80 00 00 */	li r4, 0
/* 803D5AE8 0039F0A8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803D5AEC 0039F0AC  7C 7D 1B 78 */	mr r29, r3
/* 803D5AF0 0039F0B0  4B C2 E8 61 */	bl memset
/* 803D5AF4 0039F0B4  38 1E 00 1F */	addi r0, r30, 0x1f
/* 803D5AF8 0039F0B8  39 00 00 00 */	li r8, 0
/* 803D5AFC 0039F0BC  54 06 00 34 */	rlwinm r6, r0, 0, 0, 0x1a
/* 803D5B00 0039F0C0  38 E0 00 01 */	li r7, 1
/* 803D5B04 0039F0C4  38 A6 04 00 */	addi r5, r6, 0x400
/* 803D5B08 0039F0C8  38 00 FF FF */	li r0, -1
/* 803D5B0C 0039F0CC  38 85 04 00 */	addi r4, r5, 0x400
/* 803D5B10 0039F0D0  91 1D 00 04 */	stw r8, 4(r29)
/* 803D5B14 0039F0D4  38 64 04 00 */	addi r3, r4, 0x400
/* 803D5B18 0039F0D8  91 1D 00 08 */	stw r8, 8(r29)
/* 803D5B1C 0039F0DC  91 1D 00 0C */	stw r8, 0xc(r29)
/* 803D5B20 0039F0E0  90 FD 00 28 */	stw r7, 0x28(r29)
/* 803D5B24 0039F0E4  91 1D 00 2C */	stw r8, 0x2c(r29)
/* 803D5B28 0039F0E8  91 1D 00 34 */	stw r8, 0x34(r29)
/* 803D5B2C 0039F0EC  90 DD 00 38 */	stw r6, 0x38(r29)
/* 803D5B30 0039F0F0  90 BD 00 3C */	stw r5, 0x3c(r29)
/* 803D5B34 0039F0F4  90 9D 00 40 */	stw r4, 0x40(r29)
/* 803D5B38 0039F0F8  90 7D 00 44 */	stw r3, 0x44(r29)
/* 803D5B3C 0039F0FC  93 DD 00 50 */	stw r30, 0x50(r29)
/* 803D5B40 0039F100  93 FD 00 54 */	stw r31, 0x54(r29)
/* 803D5B44 0039F104  90 1D 00 58 */	stw r0, 0x58(r29)
/* 803D5B48 0039F108  91 1D 00 64 */	stw r8, 0x64(r29)
/* 803D5B4C 0039F10C  90 FD 00 00 */	stw r7, 0(r29)
/* 803D5B50 0039F110  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D5B54 0039F114  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D5B58 0039F118  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803D5B5C 0039F11C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803D5B60 0039F120  7C 08 03 A6 */	mtlr r0
/* 803D5B64 0039F124  38 21 00 20 */	addi r1, r1, 0x20
/* 803D5B68 0039F128  4E 80 00 20 */	blr
.endfn sfx_InitHn

.fn SFX_Destroy, global
/* 803D5B6C 0039F12C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D5B70 0039F130  7C 08 02 A6 */	mflr r0
/* 803D5B74 0039F134  2C 03 00 00 */	cmpwi r3, 0
/* 803D5B78 0039F138  7C 64 1B 78 */	mr r4, r3
/* 803D5B7C 0039F13C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D5B80 0039F140  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D5B84 0039F144  41 82 00 30 */	beq .L_803D5BB4
/* 803D5B88 0039F148  38 00 00 00 */	li r0, 0
/* 803D5B8C 0039F14C  80 63 00 24 */	lwz r3, 0x24(r3)
/* 803D5B90 0039F150  90 04 00 00 */	stw r0, 0(r4)
/* 803D5B94 0039F154  83 E4 00 30 */	lwz r31, 0x30(r4)
/* 803D5B98 0039F158  48 00 02 F5 */	bl SFXZ_Destroy
/* 803D5B9C 0039F15C  7F E3 FB 78 */	mr r3, r31
/* 803D5BA0 0039F160  48 00 01 49 */	bl SFXA_Destroy
/* 803D5BA4 0039F164  3C 80 80 62 */	lis r4, sfx_libwork@ha
/* 803D5BA8 0039F168  80 64 CE 48 */	lwz r3, sfx_libwork@l(r4)
/* 803D5BAC 0039F16C  38 03 FF FF */	addi r0, r3, -1
/* 803D5BB0 0039F170  90 04 CE 48 */	stw r0, sfx_libwork@l(r4)
.L_803D5BB4:
/* 803D5BB4 0039F174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D5BB8 0039F178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D5BBC 0039F17C  7C 08 03 A6 */	mtlr r0
/* 803D5BC0 0039F180  38 21 00 10 */	addi r1, r1, 0x10
/* 803D5BC4 0039F184  4E 80 00 20 */	blr 
.endfn SFX_Destroy

.fn SFXLIB_Error, global
/* 803D5BC8 0039F188  3C C0 80 62 */	lis r6, sfx_libwork@ha
/* 803D5BCC 0039F18C  38 C6 CE 48 */	addi r6, r6, sfx_libwork@l
/* 803D5BD0 0039F190  81 86 00 08 */	lwz r12, 8(r6)
/* 803D5BD4 0039F194  80 86 00 10 */	lwz r4, 0x10(r6)
/* 803D5BD8 0039F198  2C 0C 00 00 */	cmpwi r12, 0
/* 803D5BDC 0039F19C  80 66 00 0C */	lwz r3, 0xc(r6)
/* 803D5BE0 0039F1A0  38 04 00 01 */	addi r0, r4, 1
/* 803D5BE4 0039F1A4  90 06 00 10 */	stw r0, 0x10(r6)
/* 803D5BE8 0039F1A8  4D 82 00 20 */	beqlr 
/* 803D5BEC 0039F1AC  7C A4 2B 78 */	mr r4, r5
/* 803D5BF0 0039F1B0  7D 89 03 A6 */	mtctr r12
/* 803D5BF4 0039F1B4  4E 80 04 20 */	bctr 
/* 803D5BF8 0039F1B8  4E 80 00 20 */	blr 
.endfn SFXLIB_Error

.fn SFX_SetCcirFx, global
/* 803D5BFC 0039F1BC  3C 60 80 62 */	lis r3, sfx_libwork@ha
/* 803D5C00 0039F1C0  38 63 CE 48 */	addi r3, r3, sfx_libwork@l
/* 803D5C04 0039F1C4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 803D5C08 0039F1C8  4E 80 00 20 */	blr 
.endfn SFX_SetCcirFx

.fn SFX_GetForceSplitField, global
/* 803D5C0C 0039F1CC  3C 60 80 62 */	lis r3, sfxcnv_forcesplit@ha
/* 803D5C10 0039F1D0  80 63 CE 3C */	lwz r3, sfxcnv_forcesplit@l(r3)
/* 803D5C14 0039F1D4  4E 80 00 20 */	blr 
.endfn SFX_GetForceSplitField

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj sfx_ver_str, global
	.asciz "\nCRI SFX/WII Ver.2.48 Build:Nov 13 2008 18:22:09\n"
	.balign 4
.endobj sfx_ver_str


.obj sfx_lib_strpool, global
	.asciz "E201194: sfx_InitHn: work size is short."
	.asciz "E201281: SfxZHn: can't create."
	.asciz "E202011: SfxAHn: can't create."
	.balign 4
	.4byte 0
.endobj sfx_lib_strpool

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj sfx_init_cnt, global
	.skip 0x4
.endobj sfx_init_cnt

.obj sfxcnv_forcesplit, global
	.skip 0x4
.endobj sfxcnv_forcesplit

.obj sfx_dummy, local
	.skip 0x4
.endobj sfx_dummy

.balign 8
.obj sfx_libwork, global
	.skip 0x528
.endobj sfx_libwork
