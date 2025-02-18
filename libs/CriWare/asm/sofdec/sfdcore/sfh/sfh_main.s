.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn SFH_Init, global
/* 803D0610 00399BD0  3C 80 80 62 */	lis r4, lbl_8061CE20@ha
/* 803D0614 00399BD4  80 64 CE 20 */	lwz r3, lbl_8061CE20@l(r4)
/* 803D0618 00399BD8  38 03 00 01 */	addi r0, r3, 1
/* 803D061C 00399BDC  90 04 CE 20 */	stw r0, lbl_8061CE20@l(r4)
/* 803D0620 00399BE0  4E 80 00 20 */	blr 
.endfn SFH_Init

.fn SFH_Create, global
/* 803D0624 00399BE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D0628 00399BE8  7C 08 02 A6 */	mflr r0
/* 803D062C 00399BEC  2C 05 00 00 */	cmpwi r5, 0
/* 803D0630 00399BF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D0634 00399BF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D0638 00399BF8  3B E0 00 00 */	li r31, 0
/* 803D063C 00399BFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803D0640 00399C00  7C BE 2B 78 */	mr r30, r5
/* 803D0644 00399C04  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803D0648 00399C08  7C 9D 23 78 */	mr r29, r4
/* 803D064C 00399C0C  93 81 00 10 */	stw r28, 0x10(r1)
/* 803D0650 00399C10  7C 7C 1B 78 */	mr r28, r3
/* 803D0654 00399C14  41 82 00 40 */	beq .L_803D0694
/* 803D0658 00399C18  7F C3 F3 78 */	mr r3, r30
/* 803D065C 00399C1C  38 80 00 00 */	li r4, 0
/* 803D0660 00399C20  38 A0 00 18 */	li r5, 0x18
/* 803D0664 00399C24  4B C3 3C ED */	bl memset
/* 803D0668 00399C28  2C 1D 08 00 */	cmpwi r29, 0x800
/* 803D066C 00399C2C  41 80 00 28 */	blt .L_803D0694
/* 803D0670 00399C30  7F C3 F3 78 */	mr r3, r30
/* 803D0674 00399C34  38 80 00 00 */	li r4, 0
/* 803D0678 00399C38  38 A0 00 18 */	li r5, 0x18
/* 803D067C 00399C3C  4B C3 3C D5 */	bl memset
/* 803D0680 00399C40  38 00 00 01 */	li r0, 1
/* 803D0684 00399C44  93 9E 00 04 */	stw r28, 4(r30)
/* 803D0688 00399C48  7F DF F3 78 */	mr r31, r30
/* 803D068C 00399C4C  90 1E 00 00 */	stw r0, 0(r30)
/* 803D0690 00399C50  93 BE 00 08 */	stw r29, 8(r30)
.L_803D0694:
/* 803D0694 00399C54  7F E3 FB 78 */	mr r3, r31
/* 803D0698 00399C58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D069C 00399C5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803D06A0 00399C60  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803D06A4 00399C64  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803D06A8 00399C68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D06AC 00399C6C  7C 08 03 A6 */	mtlr r0
/* 803D06B0 00399C70  38 21 00 20 */	addi r1, r1, 0x20
/* 803D06B4 00399C74  4E 80 00 20 */	blr 
.endfn SFH_Create

.fn SFH_Destroy, global
/* 803D06B8 00399C78  38 80 00 00 */	li r4, 0
/* 803D06BC 00399C7C  38 A0 00 18 */	li r5, 0x18
/* 803D06C0 00399C80  4B C3 3C 90 */	b memset
.endfn SFH_Destroy

.fn SFH_IsSfdHeader, global
/* 803D06C4 00399C84  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803D06C8 00399C88  7C 08 02 A6 */	mflr r0
/* 803D06CC 00399C8C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803D06D0 00399C90  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 803D06D4 00399C94  7C 9F 23 78 */	mr r31, r4
/* 803D06D8 00399C98  93 C1 00 38 */	stw r30, 0x38(r1)
/* 803D06DC 00399C9C  7C 7E 1B 78 */	mr r30, r3
/* 803D06E0 00399CA0  93 A1 00 34 */	stw r29, 0x34(r1)
/* 803D06E4 00399CA4  3B A0 00 00 */	li r29, 0
/* 803D06E8 00399CA8  93 A1 00 20 */	stw r29, 0x20(r1)
/* 803D06EC 00399CAC  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 803D06F0 00399CB0  93 A1 00 18 */	stw r29, 0x18(r1)
/* 803D06F4 00399CB4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803D06F8 00399CB8  93 A1 00 10 */	stw r29, 0x10(r1)
/* 803D06FC 00399CBC  93 A1 00 0C */	stw r29, 0xc(r1)
/* 803D0700 00399CC0  93 A4 00 00 */	stw r29, 0(r4)
/* 803D0704 00399CC4  80 03 00 08 */	lwz r0, 8(r3)
/* 803D0708 00399CC8  28 00 08 00 */	cmplwi r0, 0x800
/* 803D070C 00399CCC  40 80 00 14 */	bge .L_803D0720
/* 803D0710 00399CD0  38 00 FF FF */	li r0, -1
/* 803D0714 00399CD4  90 03 00 00 */	stw r0, 0(r3)
/* 803D0718 00399CD8  38 60 00 00 */	li r3, 0
/* 803D071C 00399CDC  48 00 01 50 */	b .L_803D086C
.L_803D0720:
/* 803D0720 00399CE0  38 81 00 08 */	addi r4, r1, 8
/* 803D0724 00399CE4  48 00 06 55 */	bl VER1_IsSfdHeader
/* 803D0728 00399CE8  2C 03 00 00 */	cmpwi r3, 0
/* 803D072C 00399CEC  41 82 00 70 */	beq .L_803D079C
/* 803D0730 00399CF0  7F C3 F3 78 */	mr r3, r30
/* 803D0734 00399CF4  38 81 00 20 */	addi r4, r1, 0x20
/* 803D0738 00399CF8  38 A1 00 1C */	addi r5, r1, 0x1c
/* 803D073C 00399CFC  48 00 09 39 */	bl VER1_AnlyHdrToolVer
/* 803D0740 00399D00  2C 03 00 00 */	cmpwi r3, 0
/* 803D0744 00399D04  40 82 00 0C */	bne .L_803D0750
/* 803D0748 00399D08  38 60 00 00 */	li r3, 0
/* 803D074C 00399D0C  48 00 01 20 */	b .L_803D086C
.L_803D0750:
/* 803D0750 00399D10  7F C3 F3 78 */	mr r3, r30
/* 803D0754 00399D14  38 81 00 18 */	addi r4, r1, 0x18
/* 803D0758 00399D18  38 A1 00 14 */	addi r5, r1, 0x14
/* 803D075C 00399D1C  48 00 0A E1 */	bl VER1_AnlyHdrSfhVer
/* 803D0760 00399D20  2C 03 00 00 */	cmpwi r3, 0
/* 803D0764 00399D24  40 82 00 0C */	bne .L_803D0770
/* 803D0768 00399D28  38 60 00 00 */	li r3, 0
/* 803D076C 00399D2C  48 00 01 00 */	b .L_803D086C
.L_803D0770:
/* 803D0770 00399D30  7F C3 F3 78 */	mr r3, r30
/* 803D0774 00399D34  38 81 00 10 */	addi r4, r1, 0x10
/* 803D0778 00399D38  38 A1 00 0C */	addi r5, r1, 0xc
/* 803D077C 00399D3C  48 00 0A D9 */	bl VER1_AnlyHdrModuleVer
/* 803D0780 00399D40  2C 03 00 00 */	cmpwi r3, 0
/* 803D0784 00399D44  40 82 00 0C */	bne .L_803D0790
/* 803D0788 00399D48  93 A1 00 10 */	stw r29, 0x10(r1)
/* 803D078C 00399D4C  93 A1 00 0C */	stw r29, 0xc(r1)
.L_803D0790:
/* 803D0790 00399D50  38 00 00 02 */	li r0, 2
/* 803D0794 00399D54  90 1E 00 00 */	stw r0, 0(r30)
/* 803D0798 00399D58  48 00 00 70 */	b .L_803D0808
.L_803D079C:
/* 803D079C 00399D5C  7F C3 F3 78 */	mr r3, r30
/* 803D07A0 00399D60  38 81 00 08 */	addi r4, r1, 8
/* 803D07A4 00399D64  48 00 25 69 */	bl VER2_IsSfdHeader
/* 803D07A8 00399D68  2C 03 00 00 */	cmpwi r3, 0
/* 803D07AC 00399D6C  41 82 00 5C */	beq .L_803D0808
/* 803D07B0 00399D70  7F C3 F3 78 */	mr r3, r30
/* 803D07B4 00399D74  38 81 00 20 */	addi r4, r1, 0x20
/* 803D07B8 00399D78  38 A1 00 1C */	addi r5, r1, 0x1c
/* 803D07BC 00399D7C  48 00 2A F9 */	bl VER2_AnlyHdrToolVer
/* 803D07C0 00399D80  7F C3 F3 78 */	mr r3, r30
/* 803D07C4 00399D84  38 81 00 18 */	addi r4, r1, 0x18
/* 803D07C8 00399D88  38 A1 00 14 */	addi r5, r1, 0x14
/* 803D07CC 00399D8C  48 00 2C 65 */	bl VER2_AnlyHdrSfhVer
/* 803D07D0 00399D90  2C 03 00 00 */	cmpwi r3, 0
/* 803D07D4 00399D94  40 82 00 0C */	bne .L_803D07E0
/* 803D07D8 00399D98  38 60 00 00 */	li r3, 0
/* 803D07DC 00399D9C  48 00 00 90 */	b .L_803D086C
.L_803D07E0:
/* 803D07E0 00399DA0  7F C3 F3 78 */	mr r3, r30
/* 803D07E4 00399DA4  38 81 00 10 */	addi r4, r1, 0x10
/* 803D07E8 00399DA8  38 A1 00 0C */	addi r5, r1, 0xc
/* 803D07EC 00399DAC  48 00 2C D5 */	bl VER2_AnlyHdrModuleVer
/* 803D07F0 00399DB0  2C 03 00 00 */	cmpwi r3, 0
/* 803D07F4 00399DB4  40 82 00 0C */	bne .L_803D0800
/* 803D07F8 00399DB8  38 60 00 00 */	li r3, 0
/* 803D07FC 00399DBC  48 00 00 70 */	b .L_803D086C
.L_803D0800:
/* 803D0800 00399DC0  38 00 00 02 */	li r0, 2
/* 803D0804 00399DC4  90 1E 00 00 */	stw r0, 0(r30)
.L_803D0808:
/* 803D0808 00399DC8  80 1E 00 00 */	lwz r0, 0(r30)
/* 803D080C 00399DCC  2C 00 00 02 */	cmpwi r0, 2
/* 803D0810 00399DD0  41 82 00 14 */	beq .L_803D0824
/* 803D0814 00399DD4  38 00 FF FF */	li r0, -1
/* 803D0818 00399DD8  38 60 00 00 */	li r3, 0
/* 803D081C 00399DDC  90 1E 00 00 */	stw r0, 0(r30)
/* 803D0820 00399DE0  48 00 00 4C */	b .L_803D086C
.L_803D0824:
/* 803D0824 00399DE4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 803D0828 00399DE8  38 00 00 01 */	li r0, 1
/* 803D082C 00399DEC  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 803D0830 00399DF0  38 60 00 01 */	li r3, 1
/* 803D0834 00399DF4  1C 84 00 64 */	mulli r4, r4, 0x64
/* 803D0838 00399DF8  7C 85 22 14 */	add r4, r5, r4
/* 803D083C 00399DFC  90 9E 00 0C */	stw r4, 0xc(r30)
/* 803D0840 00399E00  80 81 00 18 */	lwz r4, 0x18(r1)
/* 803D0844 00399E04  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 803D0848 00399E08  1C 84 00 64 */	mulli r4, r4, 0x64
/* 803D084C 00399E0C  7C 85 22 14 */	add r4, r5, r4
/* 803D0850 00399E10  90 9E 00 10 */	stw r4, 0x10(r30)
/* 803D0854 00399E14  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803D0858 00399E18  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803D085C 00399E1C  1C 84 00 64 */	mulli r4, r4, 0x64
/* 803D0860 00399E20  7C 85 22 14 */	add r4, r5, r4
/* 803D0864 00399E24  90 9E 00 14 */	stw r4, 0x14(r30)
/* 803D0868 00399E28  90 1F 00 00 */	stw r0, 0(r31)
.L_803D086C:
/* 803D086C 00399E2C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803D0870 00399E30  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 803D0874 00399E34  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 803D0878 00399E38  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 803D087C 00399E3C  7C 08 03 A6 */	mtlr r0
/* 803D0880 00399E40  38 21 00 40 */	addi r1, r1, 0x40
/* 803D0884 00399E44  4E 80 00 20 */	blr 
.endfn SFH_IsSfdHeader

.fn SFH_IsExistStmId, global
/* 803D0888 00399E48  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D088C 00399E4C  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0890 00399E50  40 80 00 08 */	bge .L_803D0898
/* 803D0894 00399E54  48 00 05 98 */	b VER1_IsExistStmId
.L_803D0898:
/* 803D0898 00399E58  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D089C 00399E5C  40 80 00 08 */	bge .L_803D08A4
/* 803D08A0 00399E60  48 00 26 B4 */	b VER2_IsExistStmId
.L_803D08A4:
/* 803D08A4 00399E64  38 60 00 00 */	li r3, 0
/* 803D08A8 00399E68  4E 80 00 20 */	blr 
.endfn SFH_IsExistStmId

.fn SFH_IsEffFtrInf, global
/* 803D08AC 00399E6C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D08B0 00399E70  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D08B4 00399E74  40 80 00 08 */	bge .L_803D08BC
/* 803D08B8 00399E78  48 00 06 10 */	b VER1_IsEffFtrInf
.L_803D08BC:
/* 803D08BC 00399E7C  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D08C0 00399E80  40 80 00 08 */	bge .L_803D08C8
/* 803D08C4 00399E84  48 00 26 E8 */	b VER2_IsEffFtrInf
.L_803D08C8:
/* 803D08C8 00399E88  38 60 00 00 */	li r3, 0
/* 803D08CC 00399E8C  4E 80 00 20 */	blr 
.endfn SFH_IsEffFtrInf

.fn SFH_AnlyHdrToolVer, global
/* 803D08D0 00399E90  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D08D4 00399E94  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D08D8 00399E98  40 80 00 08 */	bge .L_803D08E0
/* 803D08DC 00399E9C  48 00 07 98 */	b VER1_AnlyHdrToolVer
.L_803D08E0:
/* 803D08E0 00399EA0  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D08E4 00399EA4  40 80 00 08 */	bge .L_803D08EC
/* 803D08E8 00399EA8  48 00 29 CC */	b VER2_AnlyHdrToolVer
.L_803D08EC:
/* 803D08EC 00399EAC  38 60 00 00 */	li r3, 0
/* 803D08F0 00399EB0  4E 80 00 20 */	blr 
.endfn SFH_AnlyHdrToolVer

.fn SFH_AnlyHdrSiz, global
/* 803D08F4 00399EB4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D08F8 00399EB8  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D08FC 00399EBC  40 80 00 08 */	bge .L_803D0904
/* 803D0900 00399EC0  48 00 09 68 */	b VER1_AnlyHdrSiz
.L_803D0904:
/* 803D0904 00399EC4  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0908 00399EC8  40 80 00 08 */	bge .L_803D0910
/* 803D090C 00399ECC  48 00 2C 44 */	b VER2_AnlyHdrSiz
.L_803D0910:
/* 803D0910 00399ED0  38 60 00 00 */	li r3, 0
/* 803D0914 00399ED4  4E 80 00 20 */	blr 
.endfn SFH_AnlyHdrSiz

.fn SFH_AnlyPackType, global
/* 803D0918 00399ED8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D091C 00399EDC  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0920 00399EE0  40 80 00 08 */	bge .L_803D0928
/* 803D0924 00399EE4  48 00 09 A4 */	b VER1_AnlyPackType
.L_803D0928:
/* 803D0928 00399EE8  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D092C 00399EEC  40 80 00 08 */	bge .L_803D0934
/* 803D0930 00399EF0  48 00 2C 80 */	b VER2_AnlyPackType
.L_803D0934:
/* 803D0934 00399EF4  38 60 00 00 */	li r3, 0
/* 803D0938 00399EF8  4E 80 00 20 */	blr 
.endfn SFH_AnlyPackType

.fn SFH_AnlyPketSizLen, global
/* 803D093C 00399EFC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0940 00399F00  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0944 00399F04  40 80 00 08 */	bge .L_803D094C
/* 803D0948 00399F08  48 00 09 E0 */	b VER1_AnlyPketSizLen
.L_803D094C:
/* 803D094C 00399F0C  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0950 00399F10  40 80 00 08 */	bge .L_803D0958
/* 803D0954 00399F14  48 00 2C 6C */	b VER2_AnlyPketSizLen
.L_803D0958:
/* 803D0958 00399F18  38 60 00 00 */	li r3, 0
/* 803D095C 00399F1C  4E 80 00 20 */	blr 
.endfn SFH_AnlyPketSizLen

.fn SFH_AnlyPackSiz, global
/* 803D0960 00399F20  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0964 00399F24  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0968 00399F28  40 80 00 08 */	bge .L_803D0970
/* 803D096C 00399F2C  48 00 0A 1C */	b VER1_AnlyPackSiz
.L_803D0970:
/* 803D0970 00399F30  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0974 00399F34  40 80 00 08 */	bge .L_803D097C
/* 803D0978 00399F38  48 00 2C 58 */	b VER2_AnlyPackSiz
.L_803D097C:
/* 803D097C 00399F3C  38 60 00 00 */	li r3, 0
/* 803D0980 00399F40  4E 80 00 20 */	blr 
.endfn SFH_AnlyPackSiz

.fn SFH_AnlyNumElemTot, global
/* 803D0984 00399F44  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0988 00399F48  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D098C 00399F4C  40 80 00 08 */	bge .L_803D0994
/* 803D0990 00399F50  48 00 0A 58 */	b VER1_AnlyNumElemTot
.L_803D0994:
/* 803D0994 00399F54  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0998 00399F58  40 80 00 08 */	bge .L_803D09A0
/* 803D099C 00399F5C  48 00 2C 94 */	b VER2_AnlyNumElemTot
.L_803D09A0:
/* 803D09A0 00399F60  38 60 00 00 */	li r3, 0
/* 803D09A4 00399F64  4E 80 00 20 */	blr 
.endfn SFH_AnlyNumElemTot

.fn SFH_AnlyNumElemAud, global
/* 803D09A8 00399F68  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D09AC 00399F6C  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D09B0 00399F70  40 80 00 08 */	bge .L_803D09B8
/* 803D09B4 00399F74  48 00 0A 94 */	b VER1_AnlyNumElemAud
.L_803D09B8:
/* 803D09B8 00399F78  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D09BC 00399F7C  40 80 00 08 */	bge .L_803D09C4
/* 803D09C0 00399F80  48 00 2C D0 */	b VER2_AnlyNumElemAud
.L_803D09C4:
/* 803D09C4 00399F84  38 60 00 00 */	li r3, 0
/* 803D09C8 00399F88  4E 80 00 20 */	blr 
.endfn SFH_AnlyNumElemAud

.fn SFH_AnlyNumElemVid, global
/* 803D09CC 00399F8C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D09D0 00399F90  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D09D4 00399F94  40 80 00 08 */	bge .L_803D09DC
/* 803D09D8 00399F98  48 00 0A D0 */	b VER1_AnlyNumElemVid
.L_803D09DC:
/* 803D09DC 00399F9C  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D09E0 00399FA0  40 80 00 08 */	bge .L_803D09E8
/* 803D09E4 00399FA4  48 00 2D 0C */	b VER2_AnlyNumElemVid
.L_803D09E8:
/* 803D09E8 00399FA8  38 60 00 00 */	li r3, 0
/* 803D09EC 00399FAC  4E 80 00 20 */	blr 
.endfn SFH_AnlyNumElemVid

.fn SFH_AnlyNumElemPrv, global
/* 803D09F0 00399FB0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D09F4 00399FB4  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D09F8 00399FB8  40 80 00 08 */	bge .L_803D0A00
/* 803D09FC 00399FBC  48 00 0B 0C */	b VER1_AnlyNumElemPrv
.L_803D0A00:
/* 803D0A00 00399FC0  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0A04 00399FC4  40 80 00 08 */	bge .L_803D0A0C
/* 803D0A08 00399FC8  48 00 2D 48 */	b VER2_AnlyNumElemPrv
.L_803D0A0C:
/* 803D0A0C 00399FCC  38 60 00 00 */	li r3, 0
/* 803D0A10 00399FD0  4E 80 00 20 */	blr 
.endfn SFH_AnlyNumElemPrv

.fn SFH_AnlyByteRate, global
/* 803D0A14 00399FD4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0A18 00399FD8  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0A1C 00399FDC  40 80 00 08 */	bge .L_803D0A24
/* 803D0A20 00399FE0  48 00 0B 48 */	b VER1_AnlyByteRate
.L_803D0A24:
/* 803D0A24 00399FE4  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0A28 00399FE8  40 80 00 08 */	bge .L_803D0A30
/* 803D0A2C 00399FEC  48 00 2D 84 */	b VER2_AnlyByteRate
.L_803D0A30:
/* 803D0A30 00399FF0  38 60 00 00 */	li r3, 0
/* 803D0A34 00399FF4  4E 80 00 20 */	blr 
.endfn SFH_AnlyByteRate

.fn SFH_AnlyMaxPlyLenAud, global
/* 803D0A38 00399FF8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0A3C 00399FFC  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0A40 0039A000  40 80 00 08 */	bge .L_803D0A48
/* 803D0A44 0039A004  48 00 0B 98 */	b VER1_AnlyMaxPlyLenAud
.L_803D0A48:
/* 803D0A48 0039A008  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0A4C 0039A00C  40 80 00 08 */	bge .L_803D0A54
/* 803D0A50 0039A010  48 00 2D C0 */	b VER2_AnlyMaxPlyLenAud
.L_803D0A54:
/* 803D0A54 0039A014  38 60 00 00 */	li r3, 0
/* 803D0A58 0039A018  4E 80 00 20 */	blr 
.endfn SFH_AnlyMaxPlyLenAud

.fn SFH_AnlyMaxPlyLenVid, global
/* 803D0A5C 0039A01C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0A60 0039A020  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0A64 0039A024  40 80 00 08 */	bge .L_803D0A6C
/* 803D0A68 0039A028  48 00 0B D4 */	b VER1_AnlyMaxPlyLenVid
.L_803D0A6C:
/* 803D0A6C 0039A02C  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0A70 0039A030  40 80 00 08 */	bge .L_803D0A78
/* 803D0A74 0039A034  48 00 2D FC */	b VER2_AnlyMaxPlyLenVid
.L_803D0A78:
/* 803D0A78 0039A038  38 60 00 00 */	li r3, 0
/* 803D0A7C 0039A03C  4E 80 00 20 */	blr 
.endfn SFH_AnlyMaxPlyLenVid

.fn SFH_AnlyMaxFrmNum, global
/* 803D0A80 0039A040  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0A84 0039A044  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0A88 0039A048  40 80 00 08 */	bge .L_803D0A90
/* 803D0A8C 0039A04C  48 00 0C 10 */	b VER1_AnlyMaxFrmNum
.L_803D0A90:
/* 803D0A90 0039A050  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0A94 0039A054  40 80 00 08 */	bge .L_803D0A9C
/* 803D0A98 0039A058  48 00 2E 38 */	b VER2_AnlyMaxFrmNum
.L_803D0A9C:
/* 803D0A9C 0039A05C  38 60 00 00 */	li r3, 0
/* 803D0AA0 0039A060  4E 80 00 20 */	blr 
.endfn SFH_AnlyMaxFrmNum

.fn SFH_AnlyMaxPicSiz, global
/* 803D0AA4 0039A064  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0AA8 0039A068  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0AAC 0039A06C  40 80 00 08 */	bge .L_803D0AB4
/* 803D0AB0 0039A070  48 00 0C 4C */	b VER1_AnlyMaxPicSiz
.L_803D0AB4:
/* 803D0AB4 0039A074  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0AB8 0039A078  40 80 00 08 */	bge .L_803D0AC0
/* 803D0ABC 0039A07C  48 00 2E 74 */	b VER2_AnlyMaxPicSiz
.L_803D0AC0:
/* 803D0AC0 0039A080  38 60 00 00 */	li r3, 0
/* 803D0AC4 0039A084  4E 80 00 20 */	blr 
.endfn SFH_AnlyMaxPicSiz

.fn SFH_AnlyDiffTime, global
/* 803D0AC8 0039A088  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0ACC 0039A08C  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0AD0 0039A090  40 80 00 0C */	bge .L_803D0ADC
/* 803D0AD4 0039A094  38 60 00 00 */	li r3, 0
/* 803D0AD8 0039A098  4E 80 00 20 */	blr
.L_803D0ADC:
/* 803D0ADC 0039A09C  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0AE0 0039A0A0  40 80 00 08 */	bge .L_803D0AE8
/* 803D0AE4 0039A0A4  48 00 2E AC */	b VER2_AnlyDiffTime
.L_803D0AE8:
/* 803D0AE8 0039A0A8  38 60 00 00 */	li r3, 0
/* 803D0AEC 0039A0AC  4E 80 00 20 */	blr 
.endfn SFH_AnlyDiffTime

.fn SFH_AnlyElemCodecAud, global
/* 803D0AF0 0039A0B0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0AF4 0039A0B4  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0AF8 0039A0B8  40 80 00 08 */	bge .L_803D0B00
/* 803D0AFC 0039A0BC  48 00 0C 74 */	b VER1_AnlyElemCodecAud
.L_803D0B00:
/* 803D0B00 0039A0C0  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0B04 0039A0C4  40 80 00 08 */	bge .L_803D0B0C
/* 803D0B08 0039A0C8  48 00 2F 04 */	b VER2_AnlyElemCodecAud
.L_803D0B0C:
/* 803D0B0C 0039A0CC  38 60 00 00 */	li r3, 0
/* 803D0B10 0039A0D0  4E 80 00 20 */	blr 
.endfn SFH_AnlyElemCodecAud

.fn SFH_AnlyElemLayer, global
/* 803D0B14 0039A0D4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0B18 0039A0D8  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0B1C 0039A0DC  40 80 00 08 */	bge .L_803D0B24
/* 803D0B20 0039A0E0  48 00 0D C0 */	b VER1_AnlyElemLayer
.L_803D0B24:
/* 803D0B24 0039A0E4  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0B28 0039A0E8  40 80 00 08 */	bge .L_803D0B30
/* 803D0B2C 0039A0EC  48 00 2F D0 */	b VER2_AnlyElemLayer
.L_803D0B30:
/* 803D0B30 0039A0F0  38 60 00 00 */	li r3, 0
/* 803D0B34 0039A0F4  4E 80 00 20 */	blr 
.endfn SFH_AnlyElemLayer

.fn SFH_AnlyElemChNum, global
/* 803D0B38 0039A0F8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0B3C 0039A0FC  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0B40 0039A100  40 80 00 08 */	bge .L_803D0B48
/* 803D0B44 0039A104  48 00 0E EC */	b VER1_AnlyElemChNum
.L_803D0B48:
/* 803D0B48 0039A108  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0B4C 0039A10C  40 80 00 08 */	bge .L_803D0B54
/* 803D0B50 0039A110  48 00 30 80 */	b VER2_AnlyElemChNum
.L_803D0B54:
/* 803D0B54 0039A114  38 60 00 00 */	li r3, 0
/* 803D0B58 0039A118  4E 80 00 20 */	blr 
.endfn SFH_AnlyElemChNum

.fn SFH_AnlyElemSmpHz, global
/* 803D0B5C 0039A11C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0B60 0039A120  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0B64 0039A124  40 80 00 08 */	bge .L_803D0B6C
/* 803D0B68 0039A128  48 00 0F E0 */	b VER1_AnlyElemSmpHz
.L_803D0B6C:
/* 803D0B6C 0039A12C  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0B70 0039A130  40 80 00 08 */	bge .L_803D0B78
/* 803D0B74 0039A134  48 00 30 D0 */	b VER2_AnlyElemSmpHz
.L_803D0B78:
/* 803D0B78 0039A138  38 60 00 00 */	li r3, 0
/* 803D0B7C 0039A13C  4E 80 00 20 */	blr 
.endfn SFH_AnlyElemSmpHz

.fn SFH_AnlyElemCodecVid, global
/* 803D0B80 0039A140  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0B84 0039A144  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0B88 0039A148  40 80 00 08 */	bge .L_803D0B90
/* 803D0B8C 0039A14C  48 00 10 D4 */	b VER1_AnlyElemCodecVid
.L_803D0B90:
/* 803D0B90 0039A150  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0B94 0039A154  40 80 00 08 */	bge .L_803D0B9C
/* 803D0B98 0039A158  48 00 31 20 */	b VER2_AnlyElemCodecVid
.L_803D0B9C:
/* 803D0B9C 0039A15C  38 60 00 00 */	li r3, 0
/* 803D0BA0 0039A160  4E 80 00 20 */	blr 
.endfn SFH_AnlyElemCodecVid

.fn SFH_AnlyElemBitRate, global
/* 803D0BA4 0039A164  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0BA8 0039A168  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0BAC 0039A16C  40 80 00 08 */	bge .L_803D0BB4
/* 803D0BB0 0039A170  48 00 12 24 */	b VER1_AnlyElemBitRate
.L_803D0BB4:
/* 803D0BB4 0039A174  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0BB8 0039A178  40 80 00 08 */	bge .L_803D0BC0
/* 803D0BBC 0039A17C  48 00 31 EC */	b VER2_AnlyElemAvrBitRate
.L_803D0BC0:
/* 803D0BC0 0039A180  38 60 00 00 */	li r3, 0
/* 803D0BC4 0039A184  4E 80 00 20 */	blr 
.endfn SFH_AnlyElemBitRate

.fn SFH_AnlyElemPicSz, global
/* 803D0BC8 0039A188  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0BCC 0039A18C  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0BD0 0039A190  40 80 00 08 */	bge .L_803D0BD8
/* 803D0BD4 0039A194  48 00 13 24 */	b VER1_AnlyElemPicSz
.L_803D0BD8:
/* 803D0BD8 0039A198  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0BDC 0039A19C  40 80 00 08 */	bge .L_803D0BE4
/* 803D0BE0 0039A1A0  48 00 32 48 */	b VER2_AnlyElemPicSz
.L_803D0BE4:
/* 803D0BE4 0039A1A4  38 60 00 00 */	li r3, 0
/* 803D0BE8 0039A1A8  4E 80 00 20 */	blr 
.endfn SFH_AnlyElemPicSz

.fn SFH_AnlyElemPicRate, global
/* 803D0BEC 0039A1AC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0BF0 0039A1B0  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0BF4 0039A1B4  40 80 00 08 */	bge .L_803D0BFC
/* 803D0BF8 0039A1B8  48 00 14 2C */	b VER1_AnlyElemPicRate
.L_803D0BFC:
/* 803D0BFC 0039A1BC  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0C00 0039A1C0  40 80 00 08 */	bge .L_803D0C08
/* 803D0C04 0039A1C4  48 00 32 C0 */	b VER2_AnlyElemPicRate
.L_803D0C08:
/* 803D0C08 0039A1C8  38 60 00 00 */	li r3, 0
/* 803D0C0C 0039A1CC  4E 80 00 20 */	blr 
.endfn SFH_AnlyElemPicRate

.fn SFH_AnlyFtrColType, global
/* 803D0C10 0039A1D0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0C14 0039A1D4  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0C18 0039A1D8  40 80 00 08 */	bge .L_803D0C20
/* 803D0C1C 0039A1DC  48 00 15 24 */	b VER1_AnlyFtrColType
.L_803D0C20:
/* 803D0C20 0039A1E0  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0C24 0039A1E4  40 80 00 08 */	bge .L_803D0C2C
/* 803D0C28 0039A1E8  48 00 33 0C */	b VER2_AnlyFtrColType
.L_803D0C2C:
/* 803D0C2C 0039A1EC  38 60 00 00 */	li r3, 0
/* 803D0C30 0039A1F0  4E 80 00 20 */	blr 
.endfn SFH_AnlyFtrColType

.fn SFH_AnlyFtrPicType, global
/* 803D0C34 0039A1F4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0C38 0039A1F8  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0C3C 0039A1FC  40 80 00 08 */	bge .L_803D0C44
/* 803D0C40 0039A200  48 00 16 18 */	b VER1_AnlyFtrPicType
.L_803D0C44:
/* 803D0C44 0039A204  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0C48 0039A208  40 80 00 08 */	bge .L_803D0C50
/* 803D0C4C 0039A20C  48 00 33 58 */	b VER2_AnlyFtrPicType
.L_803D0C50:
/* 803D0C50 0039A210  38 60 00 00 */	li r3, 0
/* 803D0C54 0039A214  4E 80 00 20 */	blr 
.endfn SFH_AnlyFtrPicType

.fn SFH_AnlyFtrFixFlg, global
/* 803D0C58 0039A218  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0C5C 0039A21C  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0C60 0039A220  40 80 00 08 */	bge .L_803D0C68
/* 803D0C64 0039A224  48 00 17 0C */	b VER1_AnlyFtrFixFlg
.L_803D0C68:
/* 803D0C68 0039A228  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0C6C 0039A22C  40 80 00 08 */	bge .L_803D0C74
/* 803D0C70 0039A230  48 00 33 A4 */	b VER2_AnlyFtrFixFlg
.L_803D0C74:
/* 803D0C74 0039A234  38 60 00 00 */	li r3, 0
/* 803D0C78 0039A238  4E 80 00 20 */	blr 
.endfn SFH_AnlyFtrFixFlg

.fn SFH_AnlyFtrShcFixFlg, global
/* 803D0C7C 0039A23C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0C80 0039A240  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0C84 0039A244  40 80 00 08 */	bge .L_803D0C8C
/* 803D0C88 0039A248  48 00 18 04 */	b VER1_AnlyFtrShcFixFlg
.L_803D0C8C:
/* 803D0C8C 0039A24C  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0C90 0039A250  40 80 00 08 */	bge .L_803D0C98
/* 803D0C94 0039A254  48 00 33 F4 */	b VER2_AnlyFtrShcFixFlg
.L_803D0C98:
/* 803D0C98 0039A258  38 60 00 00 */	li r3, 0
/* 803D0C9C 0039A25C  4E 80 00 20 */	blr 
.endfn SFH_AnlyFtrShcFixFlg

.fn SFH_AnlyFtrExpand, global
/* 803D0CA0 0039A260  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0CA4 0039A264  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0CA8 0039A268  40 80 00 08 */	bge .L_803D0CB0
/* 803D0CAC 0039A26C  48 00 18 FC */	b VER1_AnlyFtrExpand
.L_803D0CB0:
/* 803D0CB0 0039A270  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0CB4 0039A274  40 80 00 08 */	bge .L_803D0CBC
/* 803D0CB8 0039A278  48 00 34 44 */	b VER2_AnlyFtrExpand
.L_803D0CBC:
/* 803D0CBC 0039A27C  38 60 00 00 */	li r3, 0
/* 803D0CC0 0039A280  4E 80 00 20 */	blr 
.endfn SFH_AnlyFtrExpand

.fn SFH_AnlyFtrGopN, global
/* 803D0CC4 0039A284  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0CC8 0039A288  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0CCC 0039A28C  40 80 00 08 */	bge .L_803D0CD4
/* 803D0CD0 0039A290  48 00 19 F0 */	b VER1_AnlyFtrGopN
.L_803D0CD4:
/* 803D0CD4 0039A294  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0CD8 0039A298  40 80 00 08 */	bge .L_803D0CE0
/* 803D0CDC 0039A29C  48 00 34 90 */	b VER2_AnlyFtrGopN
.L_803D0CE0:
/* 803D0CE0 0039A2A0  38 60 00 00 */	li r3, 0
/* 803D0CE4 0039A2A4  4E 80 00 20 */	blr 
.endfn SFH_AnlyFtrGopN

.fn SFH_AnlyFtrGopM, global
/* 803D0CE8 0039A2A8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0CEC 0039A2AC  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0CF0 0039A2B0  40 80 00 08 */	bge .L_803D0CF8
/* 803D0CF4 0039A2B4  48 00 1A F4 */	b VER1_AnlyFtrGopM
.L_803D0CF8:
/* 803D0CF8 0039A2B8  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0CFC 0039A2BC  40 80 00 08 */	bge .L_803D0D04
/* 803D0D00 0039A2C0  48 00 34 E8 */	b VER2_AnlyFtrGopM
.L_803D0D04:
/* 803D0D04 0039A2C4  38 60 00 00 */	li r3, 0
/* 803D0D08 0039A2C8  4E 80 00 20 */	blr 
.endfn SFH_AnlyFtrGopM

.fn SFH_AnlyFtrFxType, global
/* 803D0D0C 0039A2CC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0D10 0039A2D0  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0D14 0039A2D4  40 80 00 08 */	bge .L_803D0D1C
/* 803D0D18 0039A2D8  48 00 1B F8 */	b VER1_AnlyFtrFxType
.L_803D0D1C:
/* 803D0D1C 0039A2DC  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0D20 0039A2E0  40 80 00 08 */	bge .L_803D0D28
/* 803D0D24 0039A2E4  48 00 35 40 */	b VER2_AnlyFtrFxType
.L_803D0D28:
/* 803D0D28 0039A2E8  38 60 00 00 */	li r3, 0
/* 803D0D2C 0039A2EC  4E 80 00 20 */	blr 
.endfn SFH_AnlyFtrFxType

#The names for these last two are unconfirmed

.fn SFH_AnlyFtrNetWidth, global
/* 803D0D30 0039A2F0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0D34 0039A2F4  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0D38 0039A2F8  40 80 00 08 */	bge .L_803D0D40
/* 803D0D3C 0039A2FC  48 00 1D 04 */	b VER1_AnlyFtrNetWidth
.L_803D0D40:
/* 803D0D40 0039A300  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0D44 0039A304  40 80 00 08 */	bge .L_803D0D4C
/* 803D0D48 0039A308  48 00 35 8C */	b VER2_AnlyFtrNetWidth
.L_803D0D4C:
/* 803D0D4C 0039A30C  38 60 00 00 */	li r3, 0
/* 803D0D50 0039A310  4E 80 00 20 */	blr 
.endfn SFH_AnlyFtrNetWidth

.fn SFH_AnlyFtrNetHeight, global
/* 803D0D54 0039A314  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803D0D58 0039A318  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 803D0D5C 0039A31C  40 80 00 08 */	bge .L_803D0D64
/* 803D0D60 0039A320  48 00 1E 0C */	b VER1_AnlyFtrNetHeight
.L_803D0D64:
/* 803D0D64 0039A324  2C 00 01 2C */	cmpwi r0, 0x12c
/* 803D0D68 0039A328  40 80 00 08 */	bge .L_803D0D70
/* 803D0D6C 0039A32C  48 00 35 EC */	b VER2_AnlyFtrNetHeight
.L_803D0D70:
/* 803D0D70 0039A330  38 60 00 00 */	li r3, 0
/* 803D0D74 0039A334  4E 80 00 20 */	blr 
.endfn SFH_AnlyFtrNetHeight

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.balign 8
.obj lbl_8061CE20, global
	.skip 0x8
.endobj lbl_8061CE20
