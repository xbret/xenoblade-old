.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_803D4864
func_803D4864:
/* 803D4864 0039DE24  90 83 00 04 */	stw r4, 4(r3)
/* 803D4868 0039DE28  4E 80 00 20 */	blr 

.global func_803D486C
func_803D486C:
/* 803D486C 0039DE2C  90 83 00 08 */	stw r4, 8(r3)
/* 803D4870 0039DE30  90 A3 00 0C */	stw r5, 0xc(r3)
/* 803D4874 0039DE34  4E 80 00 20 */	blr 

.global func_803D4878
func_803D4878:
/* 803D4878 0039DE38  90 83 00 10 */	stw r4, 0x10(r3)
/* 803D487C 0039DE3C  4E 80 00 20 */	blr 

.global func_803D4880
func_803D4880:
/* 803D4880 0039DE40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D4884 0039DE44  7C 08 02 A6 */	mflr r0
/* 803D4888 0039DE48  3C E0 80 52 */	lis r7, lbl_80520840@ha
/* 803D488C 0039DE4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D4890 0039DE50  38 C1 00 08 */	addi r6, r1, 8
/* 803D4894 0039DE54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D4898 0039DE58  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803D489C 0039DE5C  7C 7E 1B 78 */	mr r30, r3
/* 803D48A0 0039DE60  90 83 00 18 */	stw r4, 0x18(r3)
/* 803D48A4 0039DE64  83 E3 00 24 */	lwz r31, 0x24(r3)
/* 803D48A8 0039DE68  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 803D48AC 0039DE6C  38 61 00 10 */	addi r3, r1, 0x10
/* 803D48B0 0039DE70  90 81 00 10 */	stw r4, 0x10(r1)
/* 803D48B4 0039DE74  38 87 08 40 */	addi r4, r7, lbl_80520840@l
/* 803D48B8 0039DE78  90 A1 00 14 */	stw r5, 0x14(r1)
/* 803D48BC 0039DE7C  38 A4 00 05 */	addi r5, r4, 5
/* 803D48C0 0039DE80  4B FC 1D FD */	bl SJ_SearchTag
/* 803D48C4 0039DE84  2C 03 00 00 */	cmpwi r3, 0
/* 803D48C8 0039DE88  40 82 00 18 */	bne lbl_803D48E0
/* 803D48CC 0039DE8C  7F E3 FB 78 */	mr r3, r31
/* 803D48D0 0039DE90  38 80 00 00 */	li r4, 0
/* 803D48D4 0039DE94  38 A0 00 00 */	li r5, 0
/* 803D48D8 0039DE98  48 00 15 D9 */	bl sfxzmv_SetTagGrp
/* 803D48DC 0039DE9C  48 00 00 14 */	b lbl_803D48F0
lbl_803D48E0:
/* 803D48E0 0039DEA0  80 81 00 08 */	lwz r4, 8(r1)
/* 803D48E4 0039DEA4  7F E3 FB 78 */	mr r3, r31
/* 803D48E8 0039DEA8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803D48EC 0039DEAC  48 00 15 C5 */	bl sfxzmv_SetTagGrp
lbl_803D48F0:
/* 803D48F0 0039DEB0  38 00 00 01 */	li r0, 1
/* 803D48F4 0039DEB4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 803D48F8 0039DEB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D48FC 0039DEBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D4900 0039DEC0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803D4904 0039DEC4  7C 08 03 A6 */	mtlr r0
/* 803D4908 0039DEC8  38 21 00 20 */	addi r1, r1, 0x20
/* 803D490C 0039DECC  4E 80 00 20 */	blr 

.global func_803D4910
func_803D4910:
/* 803D4910 0039DED0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803D4914 0039DED4  2C 00 00 01 */	cmpwi r0, 1
/* 803D4918 0039DED8  41 82 00 14 */	beq lbl_803D492C
/* 803D491C 0039DEDC  38 00 00 00 */	li r0, 0
/* 803D4920 0039DEE0  90 04 00 00 */	stw r0, 0(r4)
/* 803D4924 0039DEE4  90 05 00 00 */	stw r0, 0(r5)
/* 803D4928 0039DEE8  4E 80 00 20 */	blr
lbl_803D492C:
/* 803D492C 0039DEEC  80 03 00 18 */	lwz r0, 0x18(r3)
/* 803D4930 0039DEF0  90 04 00 00 */	stw r0, 0(r4)
/* 803D4934 0039DEF4  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 803D4938 0039DEF8  90 05 00 00 */	stw r0, 0(r5)
/* 803D493C 0039DEFC  4E 80 00 20 */	blr 

.global SFX_GetZfrmRange
SFX_GetZfrmRange:
/* 803D4940 0039DF00  80 63 00 24 */	lwz r3, 0x24(r3)
/* 803D4944 0039DF04  80 84 00 4C */	lwz r4, 0x4c(r4)
/* 803D4948 0039DF08  48 00 16 4C */	b SFXZ_GetZfrmRange

.global func_803D494C
func_803D494C:
/* 803D494C 0039DF0C  80 63 00 58 */	lwz r3, 0x58(r3)
/* 803D4950 0039DF10  4E 80 00 20 */	blr 

.global func_803D4954
func_803D4954:
/* 803D4954 0039DF14  80 63 00 5C */	lwz r3, 0x5c(r3)
/* 803D4958 0039DF18  4E 80 00 20 */	blr 

.global func_803D495C
func_803D495C:
/* 803D495C 0039DF1C  80 63 00 64 */	lwz r3, 0x64(r3)
/* 803D4960 0039DF20  4E 80 00 20 */	blr 

.global func_803D4964
func_803D4964:
/* 803D4964 0039DF24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D4968 0039DF28  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 803D496C 0039DF2C  54 80 0F FE */	srwi r0, r4, 0x1f
/* 803D4970 0039DF30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D4974 0039DF34  7C A6 2A 14 */	add r5, r6, r5
/* 803D4978 0039DF38  7D 00 22 14 */	add r8, r0, r4
/* 803D497C 0039DF3C  80 C3 00 08 */	lwz r6, 8(r3)
/* 803D4980 0039DF40  54 AA 00 3C */	rlwinm r10, r5, 0, 0, 0x1e
/* 803D4984 0039DF44  54 A0 0F FE */	srwi r0, r5, 0x1f
/* 803D4988 0039DF48  80 83 00 18 */	lwz r4, 0x18(r3)
/* 803D498C 0039DF4C  7C 00 52 14 */	add r0, r0, r10
/* 803D4990 0039DF50  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 803D4994 0039DF54  7C 1F 0E 70 */	srawi r31, r0, 1
/* 803D4998 0039DF58  81 23 00 0C */	lwz r9, 0xc(r3)
/* 803D499C 0039DF5C  7C EA 31 D6 */	mullw r7, r10, r6
/* 803D49A0 0039DF60  55 0B 00 3C */	rlwinm r11, r8, 0, 0, 0x1e
/* 803D49A4 0039DF64  55 00 0F FE */	srwi r0, r8, 0x1f
/* 803D49A8 0039DF68  80 C3 00 04 */	lwz r6, 4(r3)
/* 803D49AC 0039DF6C  7D 4A 48 50 */	subf r10, r10, r9
/* 803D49B0 0039DF70  81 03 00 1C */	lwz r8, 0x1c(r3)
/* 803D49B4 0039DF74  7D 20 5A 14 */	add r9, r0, r11
/* 803D49B8 0039DF78  7C 0B 32 14 */	add r0, r11, r6
/* 803D49BC 0039DF7C  7C DF 40 50 */	subf r6, r31, r8
/* 803D49C0 0039DF80  81 83 00 2C */	lwz r12, 0x2c(r3)
/* 803D49C4 0039DF84  7D 67 02 14 */	add r11, r7, r0
/* 803D49C8 0039DF88  80 E3 00 14 */	lwz r7, 0x14(r3)
/* 803D49CC 0039DF8C  7D 1F 21 D6 */	mullw r8, r31, r4
/* 803D49D0 0039DF90  7D 29 0E 70 */	srawi r9, r9, 1
/* 803D49D4 0039DF94  80 83 00 24 */	lwz r4, 0x24(r3)
/* 803D49D8 0039DF98  7C 1F 60 50 */	subf r0, r31, r12
/* 803D49DC 0039DF9C  7C E9 3A 14 */	add r7, r9, r7
/* 803D49E0 0039DFA0  91 63 00 04 */	stw r11, 4(r3)
/* 803D49E4 0039DFA4  7C E8 3A 14 */	add r7, r8, r7
/* 803D49E8 0039DFA8  7C 89 22 14 */	add r4, r9, r4
/* 803D49EC 0039DFAC  7C BF 29 D6 */	mullw r5, r31, r5
/* 803D49F0 0039DFB0  91 43 00 0C */	stw r10, 0xc(r3)
/* 803D49F4 0039DFB4  90 E3 00 14 */	stw r7, 0x14(r3)
/* 803D49F8 0039DFB8  90 C3 00 1C */	stw r6, 0x1c(r3)
/* 803D49FC 0039DFBC  7C 85 22 14 */	add r4, r5, r4
/* 803D4A00 0039DFC0  90 83 00 24 */	stw r4, 0x24(r3)
/* 803D4A04 0039DFC4  90 03 00 2C */	stw r0, 0x2c(r3)
/* 803D4A08 0039DFC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D4A0C 0039DFCC  38 21 00 10 */	addi r1, r1, 0x10
/* 803D4A10 0039DFD0  4E 80 00 20 */	blr 

