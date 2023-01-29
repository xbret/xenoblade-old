.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn MPSGET_Init, global
/* 803BCA80 00386040  4E 80 00 20 */	blr
.endfn MPSGET_Init

.fn MPSGET_Finish, global
/* 803BCA84 00386044  4E 80 00 20 */	blr
.endfn MPSGET_Finish

.fn MPS_GetPackHd, global
/* 803BCA88 00386048  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BCA8C 0038604C  7C 08 02 A6 */	mflr r0
/* 803BCA90 00386050  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BCA94 00386054  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BCA98 00386058  7C 9F 23 78 */	mr r31, r4
/* 803BCA9C 0038605C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803BCAA0 00386060  7C 7E 1B 78 */	mr r30, r3
/* 803BCAA4 00386064  48 00 05 B5 */	bl MPSLIB_CheckHn
/* 803BCAA8 00386068  2C 03 00 00 */	cmpwi r3, 0x0
/* 803BCAAC 0038606C  41 82 00 18 */	beq .L_803BCAC4
/* 803BCAB0 00386070  3C 80 FF 02 */	lis r4, 0xff02
/* 803BCAB4 00386074  38 60 00 00 */	li r3, 0x0
/* 803BCAB8 00386078  38 84 02 01 */	addi r4, r4, 0x201
/* 803BCABC 0038607C  48 00 04 65 */	bl MPSLIB_SetErr
/* 803BCAC0 00386080  48 00 00 28 */	b .L_803BCAE8
.L_803BCAC4:
/* 803BCAC4 00386084  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 803BCAC8 00386088  38 60 00 00 */	li r3, 0x0
/* 803BCACC 0038608C  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 803BCAD0 00386090  90 9F 00 00 */	stw r4, 0x0(r31)
/* 803BCAD4 00386094  90 1F 00 04 */	stw r0, 0x4(r31)
/* 803BCAD8 00386098  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 803BCADC 0038609C  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 803BCAE0 003860A0  90 9F 00 08 */	stw r4, 0x8(r31)
/* 803BCAE4 003860A4  90 1F 00 0C */	stw r0, 0xc(r31)
.L_803BCAE8:
/* 803BCAE8 003860A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BCAEC 003860AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BCAF0 003860B0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803BCAF4 003860B4  7C 08 03 A6 */	mtlr r0
/* 803BCAF8 003860B8  38 21 00 10 */	addi r1, r1, 0x10
/* 803BCAFC 003860BC  4E 80 00 20 */	blr
.endfn MPS_GetPackHd

.fn MPS_GetSysHd, global
/* 803BCB00 003860C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BCB04 003860C4  7C 08 02 A6 */	mflr r0
/* 803BCB08 003860C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BCB0C 003860CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BCB10 003860D0  7C BF 2B 78 */	mr r31, r5
/* 803BCB14 003860D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803BCB18 003860D8  7C 9E 23 78 */	mr r30, r4
/* 803BCB1C 003860DC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803BCB20 003860E0  7C 7D 1B 78 */	mr r29, r3
/* 803BCB24 003860E4  48 00 05 35 */	bl MPSLIB_CheckHn
/* 803BCB28 003860E8  2C 03 00 00 */	cmpwi r3, 0x0
/* 803BCB2C 003860EC  41 82 00 18 */	beq .L_803BCB44
/* 803BCB30 003860F0  3C 80 FF 02 */	lis r4, 0xff02
/* 803BCB34 003860F4  38 60 00 00 */	li r3, 0x0
/* 803BCB38 003860F8  38 84 02 02 */	addi r4, r4, 0x202
/* 803BCB3C 003860FC  48 00 03 E5 */	bl MPSLIB_SetErr
/* 803BCB40 00386100  48 00 00 50 */	b .L_803BCB90
.L_803BCB44:
/* 803BCB44 00386104  57 E0 28 34 */	slwi r0, r31, 5
/* 803BCB48 00386108  38 60 00 00 */	li r3, 0x0
/* 803BCB4C 0038610C  7C BD 02 14 */	add r5, r29, r0
/* 803BCB50 00386110  80 85 00 48 */	lwz r4, 0x48(r5)
/* 803BCB54 00386114  80 05 00 4C */	lwz r0, 0x4c(r5)
/* 803BCB58 00386118  90 9E 00 00 */	stw r4, 0x0(r30)
/* 803BCB5C 0038611C  90 1E 00 04 */	stw r0, 0x4(r30)
/* 803BCB60 00386120  80 85 00 50 */	lwz r4, 0x50(r5)
/* 803BCB64 00386124  80 05 00 54 */	lwz r0, 0x54(r5)
/* 803BCB68 00386128  90 9E 00 08 */	stw r4, 0x8(r30)
/* 803BCB6C 0038612C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 803BCB70 00386130  80 85 00 58 */	lwz r4, 0x58(r5)
/* 803BCB74 00386134  80 05 00 5C */	lwz r0, 0x5c(r5)
/* 803BCB78 00386138  90 9E 00 10 */	stw r4, 0x10(r30)
/* 803BCB7C 0038613C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 803BCB80 00386140  80 85 00 60 */	lwz r4, 0x60(r5)
/* 803BCB84 00386144  80 05 00 64 */	lwz r0, 0x64(r5)
/* 803BCB88 00386148  90 9E 00 18 */	stw r4, 0x18(r30)
/* 803BCB8C 0038614C  90 1E 00 1C */	stw r0, 0x1c(r30)
.L_803BCB90:
/* 803BCB90 00386150  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BCB94 00386154  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BCB98 00386158  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803BCB9C 0038615C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803BCBA0 00386160  7C 08 03 A6 */	mtlr r0
/* 803BCBA4 00386164  38 21 00 20 */	addi r1, r1, 0x20
/* 803BCBA8 00386168  4E 80 00 20 */	blr
.endfn MPS_GetSysHd

.fn MPS_GetLastSysHd, global
/* 803BCBAC 0038616C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BCBB0 00386170  7C 08 02 A6 */	mflr r0
/* 803BCBB4 00386174  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BCBB8 00386178  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BCBBC 0038617C  7C 9F 23 78 */	mr r31, r4
/* 803BCBC0 00386180  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803BCBC4 00386184  7C 7E 1B 78 */	mr r30, r3
/* 803BCBC8 00386188  48 00 04 91 */	bl MPSLIB_CheckHn
/* 803BCBCC 0038618C  2C 03 00 00 */	cmpwi r3, 0x0
/* 803BCBD0 00386190  41 82 00 18 */	beq .L_803BCBE8
/* 803BCBD4 00386194  3C 80 FF 02 */	lis r4, 0xff02
/* 803BCBD8 00386198  38 60 00 00 */	li r3, 0x0
/* 803BCBDC 0038619C  38 84 02 02 */	addi r4, r4, 0x202
/* 803BCBE0 003861A0  48 00 03 41 */	bl MPSLIB_SetErr
/* 803BCBE4 003861A4  48 00 00 48 */	b .L_803BCC2C
.L_803BCBE8:
/* 803BCBE8 003861A8  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 803BCBEC 003861AC  38 60 00 00 */	li r3, 0x0
/* 803BCBF0 003861B0  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 803BCBF4 003861B4  90 9F 00 00 */	stw r4, 0x0(r31)
/* 803BCBF8 003861B8  90 1F 00 04 */	stw r0, 0x4(r31)
/* 803BCBFC 003861BC  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 803BCC00 003861C0  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 803BCC04 003861C4  90 9F 00 08 */	stw r4, 0x8(r31)
/* 803BCC08 003861C8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 803BCC0C 003861CC  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 803BCC10 003861D0  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 803BCC14 003861D4  90 9F 00 10 */	stw r4, 0x10(r31)
/* 803BCC18 003861D8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 803BCC1C 003861DC  80 9E 00 40 */	lwz r4, 0x40(r30)
/* 803BCC20 003861E0  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 803BCC24 003861E4  90 9F 00 18 */	stw r4, 0x18(r31)
/* 803BCC28 003861E8  90 1F 00 1C */	stw r0, 0x1c(r31)
.L_803BCC2C:
/* 803BCC2C 003861EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BCC30 003861F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BCC34 003861F4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803BCC38 003861F8  7C 08 03 A6 */	mtlr r0
/* 803BCC3C 003861FC  38 21 00 10 */	addi r1, r1, 0x10
/* 803BCC40 00386200  4E 80 00 20 */	blr
.endfn MPS_GetLastSysHd

.fn MPS_GetPketHd, global
/* 803BCC44 00386204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BCC48 00386208  7C 08 02 A6 */	mflr r0
/* 803BCC4C 0038620C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BCC50 00386210  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BCC54 00386214  7C 9F 23 78 */	mr r31, r4
/* 803BCC58 00386218  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803BCC5C 0038621C  7C 7E 1B 78 */	mr r30, r3
/* 803BCC60 00386220  48 00 03 F9 */	bl MPSLIB_CheckHn
/* 803BCC64 00386224  2C 03 00 00 */	cmpwi r3, 0x0
/* 803BCC68 00386228  41 82 00 18 */	beq .L_803BCC80
/* 803BCC6C 0038622C  3C 80 FF 02 */	lis r4, 0xff02
/* 803BCC70 00386230  38 60 00 00 */	li r3, 0x0
/* 803BCC74 00386234  38 84 02 03 */	addi r4, r4, 0x203
/* 803BCC78 00386238  48 00 02 A9 */	bl MPSLIB_SetErr
/* 803BCC7C 0038623C  48 00 00 58 */	b .L_803BCCD4
.L_803BCC80:
/* 803BCC80 00386240  80 9E 00 A8 */	lwz r4, 0xa8(r30)
/* 803BCC84 00386244  38 60 00 00 */	li r3, 0x0
/* 803BCC88 00386248  80 1E 00 AC */	lwz r0, 0xac(r30)
/* 803BCC8C 0038624C  90 9F 00 00 */	stw r4, 0x0(r31)
/* 803BCC90 00386250  90 1F 00 04 */	stw r0, 0x4(r31)
/* 803BCC94 00386254  80 9E 00 B0 */	lwz r4, 0xb0(r30)
/* 803BCC98 00386258  80 1E 00 B4 */	lwz r0, 0xb4(r30)
/* 803BCC9C 0038625C  90 9F 00 08 */	stw r4, 0x8(r31)
/* 803BCCA0 00386260  90 1F 00 0C */	stw r0, 0xc(r31)
/* 803BCCA4 00386264  80 9E 00 B8 */	lwz r4, 0xb8(r30)
/* 803BCCA8 00386268  80 1E 00 BC */	lwz r0, 0xbc(r30)
/* 803BCCAC 0038626C  90 9F 00 10 */	stw r4, 0x10(r31)
/* 803BCCB0 00386270  90 1F 00 14 */	stw r0, 0x14(r31)
/* 803BCCB4 00386274  80 9E 00 C0 */	lwz r4, 0xc0(r30)
/* 803BCCB8 00386278  80 1E 00 C4 */	lwz r0, 0xc4(r30)
/* 803BCCBC 0038627C  90 9F 00 18 */	stw r4, 0x18(r31)
/* 803BCCC0 00386280  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 803BCCC4 00386284  80 9E 00 C8 */	lwz r4, 0xc8(r30)
/* 803BCCC8 00386288  80 1E 00 CC */	lwz r0, 0xcc(r30)
/* 803BCCCC 0038628C  90 9F 00 20 */	stw r4, 0x20(r31)
/* 803BCCD0 00386290  90 1F 00 24 */	stw r0, 0x24(r31)
.L_803BCCD4:
/* 803BCCD4 00386294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BCCD8 00386298  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BCCDC 0038629C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803BCCE0 003862A0  7C 08 03 A6 */	mtlr r0
/* 803BCCE4 003862A4  38 21 00 10 */	addi r1, r1, 0x10
/* 803BCCE8 003862A8  4E 80 00 20 */	blr
.endfn MPS_GetPketHd
