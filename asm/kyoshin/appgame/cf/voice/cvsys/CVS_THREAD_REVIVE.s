.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__802A86CC, global
/* 802A86CC 00271C8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A86D0 00271C90  7C 08 02 A6 */	mflr r0
/* 802A86D4 00271C94  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A86D8 00271C98  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802A86DC 00271C9C  7C 3F 0B 78 */	mr r31, r1
/* 802A86E0 00271CA0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802A86E4 00271CA4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802A86E8 00271CA8  7C 9D 23 78 */	mr r29, r4
/* 802A86EC 00271CAC  93 81 00 20 */	stw r28, 0x20(r1)
/* 802A86F0 00271CB0  7C 7C 1B 78 */	mr r28, r3
/* 802A86F4 00271CB4  80 03 3F 00 */	lwz r0, 0x3f00(r3)
/* 802A86F8 00271CB8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802A86FC 00271CBC  40 82 00 0C */	bne .L_802A8708
/* 802A8700 00271CC0  38 60 00 00 */	li r3, 0
/* 802A8704 00271CC4  48 00 00 A8 */	b .L_802A87AC
.L_802A8708:
/* 802A8708 00271CC8  80 04 3F 00 */	lwz r0, 0x3f00(r4)
/* 802A870C 00271CCC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802A8710 00271CD0  40 82 00 0C */	bne .L_802A871C
/* 802A8714 00271CD4  38 60 00 00 */	li r3, 0
/* 802A8718 00271CD8  48 00 00 94 */	b .L_802A87AC
.L_802A871C:
/* 802A871C 00271CDC  38 60 00 E6 */	li r3, 0xe6
/* 802A8720 00271CE0  38 80 00 01 */	li r4, 1
/* 802A8724 00271CE4  4B FF AB E9 */	bl func_802A330C
/* 802A8728 00271CE8  2C 03 00 00 */	cmpwi r3, 0
/* 802A872C 00271CEC  40 82 00 0C */	bne .L_802A8738
/* 802A8730 00271CF0  38 60 00 00 */	li r3, 0
/* 802A8734 00271CF4  48 00 00 78 */	b .L_802A87AC
.L_802A8738:
/* 802A8738 00271CF8  38 60 00 28 */	li r3, 0x28
/* 802A873C 00271CFC  4B FF AD A9 */	bl func_802A34E4
/* 802A8740 00271D00  2C 03 00 00 */	cmpwi r3, 0
/* 802A8744 00271D04  7C 7E 1B 78 */	mr r30, r3
/* 802A8748 00271D08  40 82 00 0C */	bne .L_802A8754
/* 802A874C 00271D0C  38 60 00 00 */	li r3, 0
/* 802A8750 00271D10  48 00 00 5C */	b .L_802A87AC
.L_802A8754:
/* 802A8754 00271D14  41 82 00 34 */	beq .L_802A8788
/* 802A8758 00271D18  90 3F 00 1C */	stw r1, 0x1c(r31)
/* 802A875C 00271D1C  4B FF B3 25 */	bl __ct__cf_CVS_THREAD
/* 802A8760 00271D20  3C 60 80 54 */	lis r3, __vt__Q22cf17CVS_THREAD_REVIVE@ha
/* 802A8764 00271D24  38 63 D4 4C */	addi r3, r3, __vt__Q22cf17CVS_THREAD_REVIVE@l
/* 802A8768 00271D28  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 802A876C 00271D2C  93 9E 00 20 */	stw r28, 0x20(r30)
/* 802A8770 00271D30  93 BE 00 24 */	stw r29, 0x24(r30)
/* 802A8774 00271D34  48 00 00 14 */	b .L_802A8788
/* 802A8778 00271D38  38 60 00 00 */	li r3, 0
/* 802A877C 00271D3C  38 80 00 00 */	li r4, 0
/* 802A8780 00271D40  38 A0 00 00 */	li r5, 0
/* 802A8784 00271D44  48 01 34 39 */	bl __throw
.L_802A8788:
/* 802A8788 00271D48  3C A0 80 54 */	lis r5, lbl_8053D428@ha
/* 802A878C 00271D4C  7F C3 F3 78 */	mr r3, r30
/* 802A8790 00271D50  38 A5 D4 28 */	addi r5, r5, lbl_8053D428@l
/* 802A8794 00271D54  80 05 00 04 */	lwz r0, 4(r5)
/* 802A8798 00271D58  80 85 00 00 */	lwz r4, 0(r5)
/* 802A879C 00271D5C  90 9E 00 00 */	stw r4, 0(r30)
/* 802A87A0 00271D60  90 1E 00 04 */	stw r0, 4(r30)
/* 802A87A4 00271D64  80 05 00 08 */	lwz r0, 8(r5)
/* 802A87A8 00271D68  90 1E 00 08 */	stw r0, 8(r30)
.L_802A87AC:
/* 802A87AC 00271D6C  7F EA FB 78 */	mr r10, r31
/* 802A87B0 00271D70  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 802A87B4 00271D74  83 CA 00 28 */	lwz r30, 0x28(r10)
/* 802A87B8 00271D78  83 AA 00 24 */	lwz r29, 0x24(r10)
/* 802A87BC 00271D7C  83 8A 00 20 */	lwz r28, 0x20(r10)
/* 802A87C0 00271D80  81 41 00 00 */	lwz r10, 0(r1)
/* 802A87C4 00271D84  80 0A 00 04 */	lwz r0, 4(r10)
/* 802A87C8 00271D88  7D 41 53 78 */	mr r1, r10
/* 802A87CC 00271D8C  7C 08 03 A6 */	mtlr r0
/* 802A87D0 00271D90  4E 80 00 20 */	blr 
.endfn __ct__802A86CC

.fn func_802A87D4, global
/* 802A87D4 00271D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A87D8 00271D98  7C 08 02 A6 */	mflr r0
/* 802A87DC 00271D9C  3C A0 80 54 */	lis r5, lbl_8053D434@ha
/* 802A87E0 00271DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A87E4 00271DA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A87E8 00271DA8  93 C1 00 08 */	stw r30, 8(r1)
/* 802A87EC 00271DAC  7C 7E 1B 78 */	mr r30, r3
/* 802A87F0 00271DB0  84 85 D4 34 */	lwzu r4, lbl_8053D434@l(r5)
/* 802A87F4 00271DB4  80 C3 00 20 */	lwz r6, 0x20(r3)
/* 802A87F8 00271DB8  80 05 00 04 */	lwz r0, 4(r5)
/* 802A87FC 00271DBC  90 03 00 04 */	stw r0, 4(r3)
/* 802A8800 00271DC0  2C 06 00 00 */	cmpwi r6, 0
/* 802A8804 00271DC4  90 83 00 00 */	stw r4, 0(r3)
/* 802A8808 00271DC8  80 05 00 08 */	lwz r0, 8(r5)
/* 802A880C 00271DCC  90 03 00 08 */	stw r0, 8(r3)
/* 802A8810 00271DD0  41 82 00 DC */	beq .L_802A88EC
/* 802A8814 00271DD4  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802A8818 00271DD8  2C 00 00 00 */	cmpwi r0, 0
/* 802A881C 00271DDC  41 82 00 D0 */	beq .L_802A88EC
/* 802A8820 00271DE0  81 86 00 00 */	lwz r12, 0(r6)
/* 802A8824 00271DE4  7C C3 33 78 */	mr r3, r6
/* 802A8828 00271DE8  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A882C 00271DEC  7D 89 03 A6 */	mtctr r12
/* 802A8830 00271DF0  4E 80 04 21 */	bctrl 
/* 802A8834 00271DF4  2C 03 00 00 */	cmpwi r3, 0
/* 802A8838 00271DF8  40 82 00 B4 */	bne .L_802A88EC
/* 802A883C 00271DFC  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 802A8840 00271E00  4B FF EF A9 */	bl func_802A77E8
/* 802A8844 00271E04  7C 7F 1B 78 */	mr r31, r3
/* 802A8848 00271E08  4B FF F0 09 */	bl func_802A7850
/* 802A884C 00271E0C  2C 03 00 00 */	cmpwi r3, 0
/* 802A8850 00271E10  41 82 00 64 */	beq .L_802A88B4
/* 802A8854 00271E14  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 802A8858 00271E18  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 802A885C 00271E1C  4B FF F3 35 */	bl func_802A7B90
/* 802A8860 00271E20  2C 03 00 00 */	cmpwi r3, 0
/* 802A8864 00271E24  40 82 00 50 */	bne .L_802A88B4
/* 802A8868 00271E28  38 60 00 02 */	li r3, 2
/* 802A886C 00271E2C  48 18 D6 91 */	bl mtRand__2mlFi
/* 802A8870 00271E30  2C 03 00 00 */	cmpwi r3, 0
/* 802A8874 00271E34  41 82 00 40 */	beq .L_802A88B4
/* 802A8878 00271E38  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 802A887C 00271E3C  2C 04 00 00 */	cmpwi r4, 0
/* 802A8880 00271E40  41 82 00 08 */	beq .L_802A8888
/* 802A8884 00271E44  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A8888:
/* 802A8888 00271E48  7F C3 F3 78 */	mr r3, r30
/* 802A888C 00271E4C  38 BF 02 04 */	addi r5, r31, 0x204
/* 802A8890 00271E50  4B FF B3 B5 */	bl func_802A3C44
/* 802A8894 00271E54  2C 03 00 00 */	cmpwi r3, 0
/* 802A8898 00271E58  40 82 00 54 */	bne .L_802A88EC
/* 802A889C 00271E5C  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 802A88A0 00271E60  7F C3 F3 78 */	mr r3, r30
/* 802A88A4 00271E64  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A88A8 00271E68  7D 89 03 A6 */	mtctr r12
/* 802A88AC 00271E6C  4E 80 04 21 */	bctrl 
/* 802A88B0 00271E70  48 00 00 3C */	b .L_802A88EC
.L_802A88B4:
/* 802A88B4 00271E74  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 802A88B8 00271E78  2C 04 00 00 */	cmpwi r4, 0
/* 802A88BC 00271E7C  41 82 00 08 */	beq .L_802A88C4
/* 802A88C0 00271E80  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A88C4:
/* 802A88C4 00271E84  7F C3 F3 78 */	mr r3, r30
/* 802A88C8 00271E88  38 A0 02 1E */	li r5, 0x21e
/* 802A88CC 00271E8C  4B FF B3 79 */	bl func_802A3C44
/* 802A88D0 00271E90  2C 03 00 00 */	cmpwi r3, 0
/* 802A88D4 00271E94  40 82 00 18 */	bne .L_802A88EC
/* 802A88D8 00271E98  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 802A88DC 00271E9C  7F C3 F3 78 */	mr r3, r30
/* 802A88E0 00271EA0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A88E4 00271EA4  7D 89 03 A6 */	mtctr r12
/* 802A88E8 00271EA8  4E 80 04 21 */	bctrl 
.L_802A88EC:
/* 802A88EC 00271EAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A88F0 00271EB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A88F4 00271EB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A88F8 00271EB8  7C 08 03 A6 */	mtlr r0
/* 802A88FC 00271EBC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8900 00271EC0  4E 80 00 20 */	blr 
.endfn func_802A87D4

.fn func_802A8904, global
/* 802A8904 00271EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8908 00271EC8  7C 08 02 A6 */	mflr r0
/* 802A890C 00271ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8910 00271ED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8914 00271ED4  7C 7F 1B 78 */	mr r31, r3
/* 802A8918 00271ED8  4B FF B5 71 */	bl func_802A3E88
/* 802A891C 00271EDC  2C 03 00 00 */	cmpwi r3, 0
/* 802A8920 00271EE0  40 82 00 CC */	bne .L_802A89EC
/* 802A8924 00271EE4  3C A0 80 54 */	lis r5, lbl_8053D440@ha
/* 802A8928 00271EE8  84 85 D4 40 */	lwzu r4, lbl_8053D440@l(r5)
/* 802A892C 00271EEC  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802A8930 00271EF0  80 05 00 04 */	lwz r0, 4(r5)
/* 802A8934 00271EF4  90 1F 00 04 */	stw r0, 4(r31)
/* 802A8938 00271EF8  2C 03 00 00 */	cmpwi r3, 0
/* 802A893C 00271EFC  90 9F 00 00 */	stw r4, 0(r31)
/* 802A8940 00271F00  80 05 00 08 */	lwz r0, 8(r5)
/* 802A8944 00271F04  90 1F 00 08 */	stw r0, 8(r31)
/* 802A8948 00271F08  41 82 00 A4 */	beq .L_802A89EC
/* 802A894C 00271F0C  81 83 00 00 */	lwz r12, 0(r3)
/* 802A8950 00271F10  81 8C 03 08 */	lwz r12, 0x308(r12)
/* 802A8954 00271F14  7D 89 03 A6 */	mtctr r12
/* 802A8958 00271F18  4E 80 04 21 */	bctrl 
/* 802A895C 00271F1C  2C 03 00 03 */	cmpwi r3, 3
/* 802A8960 00271F20  41 80 00 40 */	blt .L_802A89A0
/* 802A8964 00271F24  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 802A8968 00271F28  2C 04 00 00 */	cmpwi r4, 0
/* 802A896C 00271F2C  41 82 00 08 */	beq .L_802A8974
/* 802A8970 00271F30  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A8974:
/* 802A8974 00271F34  7F E3 FB 78 */	mr r3, r31
/* 802A8978 00271F38  38 A0 07 11 */	li r5, 0x711
/* 802A897C 00271F3C  4B FF B2 C9 */	bl func_802A3C44
/* 802A8980 00271F40  2C 03 00 00 */	cmpwi r3, 0
/* 802A8984 00271F44  40 82 00 68 */	bne .L_802A89EC
/* 802A8988 00271F48  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A898C 00271F4C  7F E3 FB 78 */	mr r3, r31
/* 802A8990 00271F50  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A8994 00271F54  7D 89 03 A6 */	mtctr r12
/* 802A8998 00271F58  4E 80 04 21 */	bctrl 
/* 802A899C 00271F5C  48 00 00 50 */	b .L_802A89EC
.L_802A89A0:
/* 802A89A0 00271F60  38 60 00 02 */	li r3, 2
/* 802A89A4 00271F64  48 18 D5 59 */	bl mtRand__2mlFi
/* 802A89A8 00271F68  2C 03 00 00 */	cmpwi r3, 0
/* 802A89AC 00271F6C  38 A0 07 14 */	li r5, 0x714
/* 802A89B0 00271F70  41 82 00 08 */	beq .L_802A89B8
/* 802A89B4 00271F74  38 A0 07 10 */	li r5, 0x710
.L_802A89B8:
/* 802A89B8 00271F78  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 802A89BC 00271F7C  2C 04 00 00 */	cmpwi r4, 0
/* 802A89C0 00271F80  41 82 00 08 */	beq .L_802A89C8
/* 802A89C4 00271F84  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A89C8:
/* 802A89C8 00271F88  7F E3 FB 78 */	mr r3, r31
/* 802A89CC 00271F8C  4B FF B2 79 */	bl func_802A3C44
/* 802A89D0 00271F90  2C 03 00 00 */	cmpwi r3, 0
/* 802A89D4 00271F94  40 82 00 18 */	bne .L_802A89EC
/* 802A89D8 00271F98  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A89DC 00271F9C  7F E3 FB 78 */	mr r3, r31
/* 802A89E0 00271FA0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A89E4 00271FA4  7D 89 03 A6 */	mtctr r12
/* 802A89E8 00271FA8  4E 80 04 21 */	bctrl 
.L_802A89EC:
/* 802A89EC 00271FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A89F0 00271FB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A89F4 00271FB4  7C 08 03 A6 */	mtlr r0
/* 802A89F8 00271FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 802A89FC 00271FBC  4E 80 00 20 */	blr 
.endfn func_802A8904

.fn func_802A8A00, global
/* 802A8A00 00271FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8A04 00271FC4  7C 08 02 A6 */	mflr r0
/* 802A8A08 00271FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8A0C 00271FCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8A10 00271FD0  7C 7F 1B 78 */	mr r31, r3
/* 802A8A14 00271FD4  4B FF B4 75 */	bl func_802A3E88
/* 802A8A18 00271FD8  2C 03 00 00 */	cmpwi r3, 0
/* 802A8A1C 00271FDC  40 82 00 18 */	bne .L_802A8A34
/* 802A8A20 00271FE0  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A8A24 00271FE4  7F E3 FB 78 */	mr r3, r31
/* 802A8A28 00271FE8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A8A2C 00271FEC  7D 89 03 A6 */	mtctr r12
/* 802A8A30 00271FF0  4E 80 04 21 */	bctrl 
.L_802A8A34:
/* 802A8A34 00271FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8A38 00271FF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A8A3C 00271FFC  7C 08 03 A6 */	mtlr r0
/* 802A8A40 00272000  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8A44 00272004  4E 80 00 20 */	blr 
.endfn func_802A8A00

.fn func_802A8A48, global
/* 802A8A48 00272008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8A4C 0027200C  7C 08 02 A6 */	mflr r0
/* 802A8A50 00272010  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8A54 00272014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8A58 00272018  7C 9F 23 78 */	mr r31, r4
/* 802A8A5C 0027201C  93 C1 00 08 */	stw r30, 8(r1)
/* 802A8A60 00272020  7C 7E 1B 78 */	mr r30, r3
/* 802A8A64 00272024  4B FF B1 89 */	bl func_802A3BEC
/* 802A8A68 00272028  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 802A8A6C 0027202C  2C 03 00 00 */	cmpwi r3, 0
/* 802A8A70 00272030  41 82 00 08 */	beq .L_802A8A78
/* 802A8A74 00272034  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A8A78:
/* 802A8A78 00272038  7C 03 F8 40 */	cmplw r3, r31
/* 802A8A7C 0027203C  40 82 00 0C */	bne .L_802A8A88
/* 802A8A80 00272040  38 00 00 00 */	li r0, 0
/* 802A8A84 00272044  90 1E 00 20 */	stw r0, 0x20(r30)
.L_802A8A88:
/* 802A8A88 00272048  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 802A8A8C 0027204C  2C 03 00 00 */	cmpwi r3, 0
/* 802A8A90 00272050  41 82 00 08 */	beq .L_802A8A98
/* 802A8A94 00272054  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A8A98:
/* 802A8A98 00272058  7C 03 F8 40 */	cmplw r3, r31
/* 802A8A9C 0027205C  40 82 00 0C */	bne .L_802A8AA8
/* 802A8AA0 00272060  38 00 00 00 */	li r0, 0
/* 802A8AA4 00272064  90 1E 00 24 */	stw r0, 0x24(r30)
.L_802A8AA8:
/* 802A8AA8 00272068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8AAC 0027206C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A8AB0 00272070  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A8AB4 00272074  7C 08 03 A6 */	mtlr r0
/* 802A8AB8 00272078  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8ABC 0027207C  4E 80 00 20 */	blr 
.endfn func_802A8A48

.fn func_802A8AC0, global
/* 802A8AC0 00272080  38 60 00 E6 */	li r3, 0xe6
/* 802A8AC4 00272084  4E 80 00 20 */	blr 
.endfn func_802A8AC0

.fn func_802A8AC8, global
/* 802A8AC8 00272088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8ACC 0027208C  7C 08 02 A6 */	mflr r0
/* 802A8AD0 00272090  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8AD4 00272094  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8AD8 00272098  7C 9F 23 78 */	mr r31, r4
/* 802A8ADC 0027209C  93 C1 00 08 */	stw r30, 8(r1)
/* 802A8AE0 002720A0  7C 7E 1B 78 */	mr r30, r3
/* 802A8AE4 002720A4  80 03 3F 00 */	lwz r0, 0x3f00(r3)
/* 802A8AE8 002720A8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802A8AEC 002720AC  40 82 00 0C */	bne .L_802A8AF8
/* 802A8AF0 002720B0  38 60 00 00 */	li r3, 0
/* 802A8AF4 002720B4  48 00 00 60 */	b .L_802A8B54
.L_802A8AF8:
/* 802A8AF8 002720B8  81 83 00 00 */	lwz r12, 0(r3)
/* 802A8AFC 002720BC  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A8B00 002720C0  7D 89 03 A6 */	mtctr r12
/* 802A8B04 002720C4  4E 80 04 21 */	bctrl 
/* 802A8B08 002720C8  2C 03 00 00 */	cmpwi r3, 0
/* 802A8B0C 002720CC  41 82 00 0C */	beq .L_802A8B18
/* 802A8B10 002720D0  38 60 00 00 */	li r3, 0
/* 802A8B14 002720D4  48 00 00 40 */	b .L_802A8B54
.L_802A8B18:
/* 802A8B18 002720D8  38 60 00 6E */	li r3, 0x6e
/* 802A8B1C 002720DC  38 80 00 01 */	li r4, 1
/* 802A8B20 002720E0  4B FF A7 ED */	bl func_802A330C
/* 802A8B24 002720E4  2C 03 00 00 */	cmpwi r3, 0
/* 802A8B28 002720E8  40 82 00 0C */	bne .L_802A8B34
/* 802A8B2C 002720EC  38 60 00 00 */	li r3, 0
/* 802A8B30 002720F0  48 00 00 24 */	b .L_802A8B54
.L_802A8B34:
/* 802A8B34 002720F4  2C 1E 00 00 */	cmpwi r30, 0
/* 802A8B38 002720F8  41 82 00 08 */	beq .L_802A8B40
/* 802A8B3C 002720FC  3B DE 3E 9C */	addi r30, r30, 0x3e9c
.L_802A8B40:
/* 802A8B40 00272100  7F C3 F3 78 */	mr r3, r30
/* 802A8B44 00272104  38 9F 10 05 */	addi r4, r31, 0x1005
/* 802A8B48 00272108  38 A0 00 6E */	li r5, 0x6e
/* 802A8B4C 0027210C  4B FF B2 09 */	bl func_802A3D54
/* 802A8B50 00272110  38 60 00 00 */	li r3, 0
.L_802A8B54:
/* 802A8B54 00272114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8B58 00272118  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A8B5C 0027211C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A8B60 00272120  7C 08 03 A6 */	mtlr r0
/* 802A8B64 00272124  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8B68 00272128  4E 80 00 20 */	blr 
.endfn func_802A8AC8

.fn func_802A8B6C, global
/* 802A8B6C 0027212C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8B70 00272130  7C 08 02 A6 */	mflr r0
/* 802A8B74 00272134  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8B78 00272138  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8B7C 0027213C  7C 7F 1B 78 */	mr r31, r3
/* 802A8B80 00272140  80 03 3F 00 */	lwz r0, 0x3f00(r3)
/* 802A8B84 00272144  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802A8B88 00272148  40 82 00 0C */	bne .L_802A8B94
/* 802A8B8C 0027214C  38 60 00 00 */	li r3, 0
/* 802A8B90 00272150  48 00 00 60 */	b .L_802A8BF0
.L_802A8B94:
/* 802A8B94 00272154  81 83 00 00 */	lwz r12, 0(r3)
/* 802A8B98 00272158  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A8B9C 0027215C  7D 89 03 A6 */	mtctr r12
/* 802A8BA0 00272160  4E 80 04 21 */	bctrl 
/* 802A8BA4 00272164  2C 03 00 00 */	cmpwi r3, 0
/* 802A8BA8 00272168  41 82 00 0C */	beq .L_802A8BB4
/* 802A8BAC 0027216C  38 60 00 00 */	li r3, 0
/* 802A8BB0 00272170  48 00 00 40 */	b .L_802A8BF0
.L_802A8BB4:
/* 802A8BB4 00272174  38 60 00 3C */	li r3, 0x3c
/* 802A8BB8 00272178  38 80 00 01 */	li r4, 1
/* 802A8BBC 0027217C  4B FF A7 51 */	bl func_802A330C
/* 802A8BC0 00272180  2C 03 00 00 */	cmpwi r3, 0
/* 802A8BC4 00272184  40 82 00 0C */	bne .L_802A8BD0
/* 802A8BC8 00272188  38 60 00 00 */	li r3, 0
/* 802A8BCC 0027218C  48 00 00 24 */	b .L_802A8BF0
.L_802A8BD0:
/* 802A8BD0 00272190  2C 1F 00 00 */	cmpwi r31, 0
/* 802A8BD4 00272194  41 82 00 08 */	beq .L_802A8BDC
/* 802A8BD8 00272198  3B FF 3E 9C */	addi r31, r31, 0x3e9c
.L_802A8BDC:
/* 802A8BDC 0027219C  7F E3 FB 78 */	mr r3, r31
/* 802A8BE0 002721A0  38 80 10 0E */	li r4, 0x100e
/* 802A8BE4 002721A4  38 A0 00 3C */	li r5, 0x3c
/* 802A8BE8 002721A8  4B FF B1 6D */	bl func_802A3D54
/* 802A8BEC 002721AC  38 60 00 00 */	li r3, 0
.L_802A8BF0:
/* 802A8BF0 002721B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8BF4 002721B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A8BF8 002721B8  7C 08 03 A6 */	mtlr r0
/* 802A8BFC 002721BC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8C00 002721C0  4E 80 00 20 */	blr 
.endfn func_802A8B6C

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj cf_CVS_THREAD_REVIVE_typestr, global
	.asciz "cf::CVS_THREAD_REVIVE"
	.balign 4
.endobj cf_CVS_THREAD_REVIVE_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_8053D428, global
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A87D4
.endobj lbl_8053D428

.obj lbl_8053D434, global
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A8904
.endobj lbl_8053D434

.obj lbl_8053D440, global
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A8A00
.endobj lbl_8053D440


.obj __vt__Q22cf17CVS_THREAD_REVIVE, global
	.4byte __RTTI__Q22cf17CVS_THREAD_REVIVE
	.4byte 0
	.4byte func_802A3B50
	.4byte func_802A8A48
	.4byte func_802A8AC0
	.4byte func_802A1EA0
	.4byte func_802A3740
.endobj __vt__Q22cf17CVS_THREAD_REVIVE

.obj cf_CVS_THREAD_REVIVE_hierarchy, global
	.4byte __RTTI__Q22cf10CVS_THREAD
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_CVS_THREAD_REVIVE_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__Q22cf17CVS_THREAD_REVIVE, global
	.4byte cf_CVS_THREAD_REVIVE_typestr
	.4byte cf_CVS_THREAD_REVIVE_hierarchy
.endobj __RTTI__Q22cf17CVS_THREAD_REVIVE

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001AE3C", local
.hidden "@etb_8001AE3C"
	.4byte 0x20180000
	.4byte 0x00000094
	.4byte 0x00000018
	.4byte 0x000000BC
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x90000000
	.4byte 0x00000000
	.4byte 0x000000AC
	.4byte 0x00000008
	.4byte 0x8D000008
.endobj "@etb_8001AE3C"

.obj "@etb_8001AE68", local
.hidden "@etb_8001AE68"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001AE68"

.obj "@etb_8001AE70", local
.hidden "@etb_8001AE70"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001AE70"

.obj "@etb_8001AE78", local
.hidden "@etb_8001AE78"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001AE78"

.obj "@etb_8001AE80", local
.hidden "@etb_8001AE80"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001AE80"

.obj "@etb_8001AE88", local
.hidden "@etb_8001AE88"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001AE88"

.obj "@etb_8001AE90", local
.hidden "@etb_8001AE90"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001AE90"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80032CE4", local
.hidden "@eti_80032CE4"
	.4byte __ct__802A86CC
	.4byte 0x00000108
	.4byte "@etb_8001AE3C"
.endobj "@eti_80032CE4"

.obj "@eti_80032CF0", local
.hidden "@eti_80032CF0"
	.4byte func_802A87D4
	.4byte 0x00000130
	.4byte "@etb_8001AE68"
.endobj "@eti_80032CF0"

.obj "@eti_80032CFC", local
.hidden "@eti_80032CFC"
	.4byte func_802A8904
	.4byte 0x000000FC
	.4byte "@etb_8001AE70"
.endobj "@eti_80032CFC"

.obj "@eti_80032D08", local
.hidden "@eti_80032D08"
	.4byte func_802A8A00
	.4byte 0x00000048
	.4byte "@etb_8001AE78"
.endobj "@eti_80032D08"

.obj "@eti_80032D14", local
.hidden "@eti_80032D14"
	.4byte func_802A8A48
	.4byte 0x00000078
	.4byte "@etb_8001AE80"
.endobj "@eti_80032D14"

.obj "@eti_80032D20", local
.hidden "@eti_80032D20"
	.4byte func_802A8AC8
	.4byte 0x000000A4
	.4byte "@etb_8001AE88"
.endobj "@eti_80032D20"

.obj "@eti_80032D2C", local
.hidden "@eti_80032D2C"
	.4byte func_802A8B6C
	.4byte 0x00000098
	.4byte "@etb_8001AE90"
.endobj "@eti_80032D2C"
