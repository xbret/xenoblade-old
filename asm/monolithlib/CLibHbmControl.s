.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8045ECC4
func_8045ECC4:
/* 8045ECC4 00428284  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045ECC8 00428288  7C 08 02 A6 */	mflr r0
/* 8045ECCC 0042828C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045ECD0 00428290  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045ECD4 00428294  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8045ECD8 00428298  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8045ECDC 0042829C  4B FF E7 79 */	bl func_8045D454
/* 8045ECE0 004282A0  3C 80 80 52 */	lis r4, lbl_80526AA8@ha
/* 8045ECE4 004282A4  7C 7E 1B 78 */	mr r30, r3
/* 8045ECE8 004282A8  38 84 6A A8 */	addi r4, r4, lbl_80526AA8@l
/* 8045ECEC 004282AC  3B E4 00 1F */	addi r31, r4, 0x1f
/* 8045ECF0 004282B0  4B FD 88 C5 */	bl func_804375B4
/* 8045ECF4 004282B4  7C 64 1B 78 */	mr r4, r3
/* 8045ECF8 004282B8  38 60 02 38 */	li r3, 0x238
/* 8045ECFC 004282BC  4B FD 5D 61 */	bl func_80434A5C
/* 8045ED00 004282C0  2C 03 00 00 */	cmpwi r3, 0
/* 8045ED04 004282C4  7C 7D 1B 78 */	mr r29, r3
/* 8045ED08 004282C8  41 82 00 48 */	beq lbl_8045ED50
/* 8045ED0C 004282CC  7F E4 FB 78 */	mr r4, r31
/* 8045ED10 004282D0  7F C5 F3 78 */	mr r5, r30
/* 8045ED14 004282D4  38 C0 00 08 */	li r6, 8
/* 8045ED18 004282D8  4B FD 9F 19 */	bl func_80438C30
/* 8045ED1C 004282DC  3C 60 80 57 */	lis r3, __vt__CLibHbmControl@ha
/* 8045ED20 004282E0  38 C0 00 00 */	li r6, 0
/* 8045ED24 004282E4  38 63 0A D8 */	addi r3, r3, __vt__CLibHbmControl@l
/* 8045ED28 004282E8  90 7D 00 00 */	stw r3, 0(r29)
/* 8045ED2C 004282EC  38 00 00 2D */	li r0, 0x2d
/* 8045ED30 004282F0  38 80 00 00 */	li r4, 0
/* 8045ED34 004282F4  90 DD 02 2C */	stw r6, 0x22c(r29)
/* 8045ED38 004282F8  38 7D 01 EC */	addi r3, r29, 0x1ec
/* 8045ED3C 004282FC  38 A0 00 40 */	li r5, 0x40
/* 8045ED40 00428300  90 DD 02 30 */	stw r6, 0x230(r29)
/* 8045ED44 00428304  93 AD BE 60 */	stw r29, lbl_80667FE0@sda21(r13)
/* 8045ED48 00428308  90 1D 00 50 */	stw r0, 0x50(r29)
/* 8045ED4C 0042830C  4B BA 56 05 */	bl memset
lbl_8045ED50:
/* 8045ED50 00428310  7F A3 EB 78 */	mr r3, r29
/* 8045ED54 00428314  7F C4 F3 78 */	mr r4, r30
/* 8045ED58 00428318  38 A0 00 00 */	li r5, 0
/* 8045ED5C 0042831C  4B FD 9E 7D */	bl func_80438BD8
/* 8045ED60 00428320  4B FF 6D 41 */	bl func_80455AA0
/* 8045ED64 00428324  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 8045ED68 00428328  7F A3 EB 78 */	mr r3, r29
/* 8045ED6C 0042832C  90 1D 01 E4 */	stw r0, 0x1e4(r29)
/* 8045ED70 00428330  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045ED74 00428334  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8045ED78 00428338  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8045ED7C 0042833C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045ED80 00428340  7C 08 03 A6 */	mtlr r0
/* 8045ED84 00428344  38 21 00 20 */	addi r1, r1, 0x20
/* 8045ED88 00428348  4E 80 00 20 */	blr 

.global func_8045ED8C
func_8045ED8C:
/* 8045ED8C 0042834C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8045ED90 00428350  7C 08 02 A6 */	mflr r0
/* 8045ED94 00428354  90 01 00 74 */	stw r0, 0x74(r1)
/* 8045ED98 00428358  39 61 00 70 */	addi r11, r1, 0x70
/* 8045ED9C 0042835C  4B E5 B3 B1 */	bl _savegpr_25
/* 8045EDA0 00428360  7C 7D 1B 78 */	mr r29, r3
/* 8045EDA4 00428364  4B FF 6C FD */	bl func_80455AA0
/* 8045EDA8 00428368  7C 65 1B 78 */	mr r5, r3
/* 8045EDAC 0042836C  7F A3 EB 78 */	mr r3, r29
/* 8045EDB0 00428370  38 9D 00 04 */	addi r4, r29, 4
/* 8045EDB4 00428374  38 C0 00 00 */	li r6, 0
/* 8045EDB8 00428378  4B FD A5 3D */	bl func_804392F4
/* 8045EDBC 0042837C  80 A3 03 F0 */	lwz r5, 0x3f0(r3)
/* 8045EDC0 00428380  3B 60 00 04 */	li r27, 4
/* 8045EDC4 00428384  80 03 03 F4 */	lwz r0, 0x3f4(r3)
/* 8045EDC8 00428388  38 80 00 00 */	li r4, 0
/* 8045EDCC 0042838C  80 C3 03 F8 */	lwz r6, 0x3f8(r3)
/* 8045EDD0 00428390  3B FD 00 04 */	addi r31, r29, 4
/* 8045EDD4 00428394  7F 45 02 14 */	add r26, r5, r0
/* 8045EDD8 00428398  83 23 03 EC */	lwz r25, 0x3ec(r3)
/* 8045EDDC 0042839C  7C BA 33 D6 */	divw r5, r26, r6
/* 8045EDE0 004283A0  83 81 00 24 */	lwz r28, 0x24(r1)
/* 8045EDE4 004283A4  81 81 00 28 */	lwz r12, 0x28(r1)
/* 8045EDE8 004283A8  38 00 00 02 */	li r0, 2
/* 8045EDEC 004283AC  81 61 00 2C */	lwz r11, 0x2c(r1)
/* 8045EDF0 004283B0  7C 7E 1B 78 */	mr r30, r3
/* 8045EDF4 004283B4  7C A5 31 D6 */	mullw r5, r5, r6
/* 8045EDF8 004283B8  81 41 00 30 */	lwz r10, 0x30(r1)
/* 8045EDFC 004283BC  81 21 00 34 */	lwz r9, 0x34(r1)
/* 8045EE00 004283C0  81 01 00 38 */	lwz r8, 0x38(r1)
/* 8045EE04 004283C4  80 E1 00 3C */	lwz r7, 0x3c(r1)
/* 8045EE08 004283C8  A0 C1 00 40 */	lhz r6, 0x40(r1)
/* 8045EE0C 004283CC  7F 45 D0 50 */	subf r26, r5, r26
/* 8045EE10 004283D0  88 A1 00 42 */	lbz r5, 0x42(r1)
/* 8045EE14 004283D4  1F 5A 00 24 */	mulli r26, r26, 0x24
/* 8045EE18 004283D8  7F 79 D1 6E */	stwux r27, r25, r26
/* 8045EE1C 004283DC  93 99 00 04 */	stw r28, 4(r25)
/* 8045EE20 004283E0  91 99 00 08 */	stw r12, 8(r25)
/* 8045EE24 004283E4  91 79 00 0C */	stw r11, 0xc(r25)
/* 8045EE28 004283E8  91 59 00 10 */	stw r10, 0x10(r25)
/* 8045EE2C 004283EC  91 39 00 14 */	stw r9, 0x14(r25)
/* 8045EE30 004283F0  91 19 00 18 */	stw r8, 0x18(r25)
/* 8045EE34 004283F4  90 F9 00 1C */	stw r7, 0x1c(r25)
/* 8045EE38 004283F8  B0 D9 00 20 */	sth r6, 0x20(r25)
/* 8045EE3C 004283FC  98 B9 00 22 */	stb r5, 0x22(r25)
/* 8045EE40 00428400  98 99 00 23 */	stb r4, 0x23(r25)
/* 8045EE44 00428404  80 83 03 F4 */	lwz r4, 0x3f4(r3)
/* 8045EE48 00428408  38 84 00 01 */	addi r4, r4, 1
/* 8045EE4C 0042840C  90 83 03 F4 */	stw r4, 0x3f4(r3)
/* 8045EE50 00428410  38 84 FF FF */	addi r4, r4, -1
/* 8045EE54 00428414  90 83 03 FC */	stw r4, 0x3fc(r3)
/* 8045EE58 00428418  80 83 02 78 */	lwz r4, 0x278(r3)
/* 8045EE5C 0042841C  60 84 00 08 */	ori r4, r4, 8
/* 8045EE60 00428420  90 83 02 78 */	stw r4, 0x278(r3)
/* 8045EE64 00428424  90 03 04 60 */	stw r0, 0x460(r3)
/* 8045EE68 00428428  7F E3 FB 78 */	mr r3, r31
/* 8045EE6C 0042842C  4B E5 A7 4D */	bl strlen
/* 8045EE70 00428430  90 7E 04 40 */	stw r3, 0x440(r30)
/* 8045EE74 00428434  7F E4 FB 78 */	mr r4, r31
/* 8045EE78 00428438  38 7E 04 00 */	addi r3, r30, 0x400
/* 8045EE7C 0042843C  4B E6 38 3D */	bl strcpy
/* 8045EE80 00428440  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 8045EE84 00428444  2C 00 00 00 */	cmpwi r0, 0
/* 8045EE88 00428448  40 82 00 1C */	bne lbl_8045EEA4
/* 8045EE8C 0042844C  7F E3 FB 78 */	mr r3, r31
/* 8045EE90 00428450  4B E5 A7 29 */	bl strlen
/* 8045EE94 00428454  90 7E 00 44 */	stw r3, 0x44(r30)
/* 8045EE98 00428458  7F E4 FB 78 */	mr r4, r31
/* 8045EE9C 0042845C  38 7E 00 04 */	addi r3, r30, 4
/* 8045EEA0 00428460  4B E6 38 19 */	bl strcpy
lbl_8045EEA4:
/* 8045EEA4 00428464  4B FE 95 59 */	bl func_804483FC
/* 8045EEA8 00428468  AB 23 00 06 */	lha r25, 6(r3)
/* 8045EEAC 0042846C  4B FE 95 51 */	bl func_804483FC
/* 8045EEB0 00428470  A8 63 00 04 */	lha r3, 4(r3)
/* 8045EEB4 00428474  38 00 00 00 */	li r0, 0
/* 8045EEB8 00428478  B0 61 00 0C */	sth r3, 0xc(r1)
/* 8045EEBC 0042847C  7F C3 F3 78 */	mr r3, r30
/* 8045EEC0 00428480  38 81 00 08 */	addi r4, r1, 8
/* 8045EEC4 00428484  B0 01 00 08 */	sth r0, 8(r1)
/* 8045EEC8 00428488  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8045EECC 0042848C  B3 21 00 0E */	sth r25, 0xe(r1)
/* 8045EED0 00428490  4B FD DC AD */	bl func_8043CB7C
/* 8045EED4 00428494  C0 02 C9 B8 */	lfs f0, lbl_8066CD38@sda21(r2)
/* 8045EED8 00428498  38 60 00 01 */	li r3, 1
/* 8045EEDC 0042849C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8045EEE0 004284A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8045EEE4 004284A4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8045EEE8 004284A8  90 1E 04 44 */	stw r0, 0x444(r30)
/* 8045EEEC 004284AC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8045EEF0 004284B0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8045EEF4 004284B4  90 9E 04 48 */	stw r4, 0x448(r30)
/* 8045EEF8 004284B8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8045EEFC 004284BC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8045EF00 004284C0  90 1E 04 4C */	stw r0, 0x44c(r30)
/* 8045EF04 004284C4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8045EF08 004284C8  90 1E 04 50 */	stw r0, 0x450(r30)
/* 8045EF0C 004284CC  4B FE 49 35 */	bl func_80443840
/* 8045EF10 004284D0  7F A3 EB 78 */	mr r3, r29
/* 8045EF14 004284D4  4B FD A7 8D */	bl func_804396A0
/* 8045EF18 004284D8  39 61 00 70 */	addi r11, r1, 0x70
/* 8045EF1C 004284DC  4B E5 B2 7D */	bl _restgpr_25
/* 8045EF20 004284E0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8045EF24 004284E4  7C 08 03 A6 */	mtlr r0
/* 8045EF28 004284E8  38 21 00 70 */	addi r1, r1, 0x70
/* 8045EF2C 004284EC  4E 80 00 20 */	blr 

.global func_8045EF30
func_8045EF30:
/* 8045EF30 004284F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045EF34 004284F4  7C 08 02 A6 */	mflr r0
/* 8045EF38 004284F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045EF3C 004284FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045EF40 00428500  7C 7F 1B 78 */	mr r31, r3
/* 8045EF44 00428504  80 83 00 60 */	lwz r4, 0x60(r3)
/* 8045EF48 00428508  80 04 00 00 */	lwz r0, 0(r4)
/* 8045EF4C 0042850C  7C 00 20 40 */	cmplw r0, r4
/* 8045EF50 00428510  40 82 00 1C */	bne lbl_8045EF6C
/* 8045EF54 00428514  4B FF ED F9 */	bl func_8045DD4C
/* 8045EF58 00428518  38 60 00 00 */	li r3, 0
/* 8045EF5C 0042851C  4B FE 48 E5 */	bl func_80443840
/* 8045EF60 00428520  7F E3 FB 78 */	mr r3, r31
/* 8045EF64 00428524  4B FD A7 41 */	bl func_804396A4
/* 8045EF68 00428528  48 00 00 08 */	b lbl_8045EF70
lbl_8045EF6C:
/* 8045EF6C 0042852C  38 60 00 00 */	li r3, 0
lbl_8045EF70:
/* 8045EF70 00428530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045EF74 00428534  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045EF78 00428538  7C 08 03 A6 */	mtlr r0
/* 8045EF7C 0042853C  38 21 00 10 */	addi r1, r1, 0x10
/* 8045EF80 00428540  4E 80 00 20 */	blr 