.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802A96C0
func_802A96C0:
/* 802A96C0 00272C80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A96C4 00272C84  7C 08 02 A6 */	mflr r0
/* 802A96C8 00272C88  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A96CC 00272C8C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802A96D0 00272C90  7C 3F 0B 78 */	mr r31, r1
/* 802A96D4 00272C94  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802A96D8 00272C98  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802A96DC 00272C9C  7C 9D 23 78 */	mr r29, r4
/* 802A96E0 00272CA0  38 80 00 01 */	li r4, 1
/* 802A96E4 00272CA4  93 81 00 20 */	stw r28, 0x20(r1)
/* 802A96E8 00272CA8  7C 7C 1B 78 */	mr r28, r3
/* 802A96EC 00272CAC  38 60 00 32 */	li r3, 0x32
/* 802A96F0 00272CB0  4B FF 9C 1D */	bl func_802A330C
/* 802A96F4 00272CB4  2C 03 00 00 */	cmpwi r3, 0
/* 802A96F8 00272CB8  40 82 00 0C */	bne .L_802A9704
/* 802A96FC 00272CBC  38 60 00 00 */	li r3, 0
/* 802A9700 00272CC0  48 00 00 78 */	b .L_802A9778
.L_802A9704:
/* 802A9704 00272CC4  38 60 00 28 */	li r3, 0x28
/* 802A9708 00272CC8  4B FF 9D DD */	bl func_802A34E4
/* 802A970C 00272CCC  2C 03 00 00 */	cmpwi r3, 0
/* 802A9710 00272CD0  7C 7E 1B 78 */	mr r30, r3
/* 802A9714 00272CD4  40 82 00 0C */	bne .L_802A9720
/* 802A9718 00272CD8  38 60 00 00 */	li r3, 0
/* 802A971C 00272CDC  48 00 00 5C */	b .L_802A9778
.L_802A9720:
/* 802A9720 00272CE0  41 82 00 34 */	beq .L_802A9754
/* 802A9724 00272CE4  90 3F 00 1C */	stw r1, 0x1c(r31)
/* 802A9728 00272CE8  4B FF A3 59 */	bl func_802A3A80
/* 802A972C 00272CEC  3C 60 80 54 */	lis r3, __vt__cf_CVS_THREAD_VISION_TELL@ha
/* 802A9730 00272CF0  38 63 D5 64 */	addi r3, r3, __vt__cf_CVS_THREAD_VISION_TELL@l
/* 802A9734 00272CF4  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 802A9738 00272CF8  93 9E 00 20 */	stw r28, 0x20(r30)
/* 802A973C 00272CFC  93 BE 00 24 */	stw r29, 0x24(r30)
/* 802A9740 00272D00  48 00 00 14 */	b .L_802A9754
/* 802A9744 00272D04  38 60 00 00 */	li r3, 0
/* 802A9748 00272D08  38 80 00 00 */	li r4, 0
/* 802A974C 00272D0C  38 A0 00 00 */	li r5, 0
/* 802A9750 00272D10  48 01 24 6D */	bl __throw
.L_802A9754:
/* 802A9754 00272D14  3C A0 80 54 */	lis r5, lbl_8053D540@ha
/* 802A9758 00272D18  7F C3 F3 78 */	mr r3, r30
/* 802A975C 00272D1C  38 A5 D5 40 */	addi r5, r5, lbl_8053D540@l
/* 802A9760 00272D20  80 05 00 04 */	lwz r0, 4(r5)
/* 802A9764 00272D24  80 85 00 00 */	lwz r4, 0(r5)
/* 802A9768 00272D28  90 9E 00 00 */	stw r4, 0(r30)
/* 802A976C 00272D2C  90 1E 00 04 */	stw r0, 4(r30)
/* 802A9770 00272D30  80 05 00 08 */	lwz r0, 8(r5)
/* 802A9774 00272D34  90 1E 00 08 */	stw r0, 8(r30)
.L_802A9778:
/* 802A9778 00272D38  7F EA FB 78 */	mr r10, r31
/* 802A977C 00272D3C  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 802A9780 00272D40  83 CA 00 28 */	lwz r30, 0x28(r10)
/* 802A9784 00272D44  83 AA 00 24 */	lwz r29, 0x24(r10)
/* 802A9788 00272D48  83 8A 00 20 */	lwz r28, 0x20(r10)
/* 802A978C 00272D4C  81 41 00 00 */	lwz r10, 0(r1)
/* 802A9790 00272D50  80 0A 00 04 */	lwz r0, 4(r10)
/* 802A9794 00272D54  7D 41 53 78 */	mr r1, r10
/* 802A9798 00272D58  7C 08 03 A6 */	mtlr r0
/* 802A979C 00272D5C  4E 80 00 20 */	blr 

.global func_802A97A0
func_802A97A0:
/* 802A97A0 00272D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A97A4 00272D64  7C 08 02 A6 */	mflr r0
/* 802A97A8 00272D68  3C A0 80 54 */	lis r5, lbl_8053D54C@ha
/* 802A97AC 00272D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A97B0 00272D70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A97B4 00272D74  7C 7F 1B 78 */	mr r31, r3
/* 802A97B8 00272D78  84 85 D5 4C */	lwzu r4, lbl_8053D54C@l(r5)
/* 802A97BC 00272D7C  80 C3 00 20 */	lwz r6, 0x20(r3)
/* 802A97C0 00272D80  80 05 00 04 */	lwz r0, 4(r5)
/* 802A97C4 00272D84  90 03 00 04 */	stw r0, 4(r3)
/* 802A97C8 00272D88  2C 06 00 00 */	cmpwi r6, 0
/* 802A97CC 00272D8C  90 83 00 00 */	stw r4, 0(r3)
/* 802A97D0 00272D90  80 05 00 08 */	lwz r0, 8(r5)
/* 802A97D4 00272D94  90 03 00 08 */	stw r0, 8(r3)
/* 802A97D8 00272D98  41 82 01 38 */	beq .L_802A9910
/* 802A97DC 00272D9C  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802A97E0 00272DA0  2C 00 00 00 */	cmpwi r0, 0
/* 802A97E4 00272DA4  41 82 01 2C */	beq .L_802A9910
/* 802A97E8 00272DA8  81 86 00 00 */	lwz r12, 0(r6)
/* 802A97EC 00272DAC  7C C3 33 78 */	mr r3, r6
/* 802A97F0 00272DB0  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A97F4 00272DB4  7D 89 03 A6 */	mtctr r12
/* 802A97F8 00272DB8  4E 80 04 21 */	bctrl 
/* 802A97FC 00272DBC  2C 03 00 00 */	cmpwi r3, 0
/* 802A9800 00272DC0  40 82 01 10 */	bne .L_802A9910
/* 802A9804 00272DC4  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802A9808 00272DC8  4B FF DF E1 */	bl func_802A77E8
/* 802A980C 00272DCC  4B FF E0 45 */	bl func_802A7850
/* 802A9810 00272DD0  2C 03 00 00 */	cmpwi r3, 0
/* 802A9814 00272DD4  41 82 00 FC */	beq .L_802A9910
/* 802A9818 00272DD8  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802A981C 00272DDC  4B FF DF CD */	bl func_802A77E8
/* 802A9820 00272DE0  2C 03 00 02 */	cmpwi r3, 2
/* 802A9824 00272DE4  41 82 00 38 */	beq .L_802A985C
/* 802A9828 00272DE8  2C 03 00 05 */	cmpwi r3, 5
/* 802A982C 00272DEC  41 82 00 38 */	beq .L_802A9864
/* 802A9830 00272DF0  2C 03 00 04 */	cmpwi r3, 4
/* 802A9834 00272DF4  41 82 00 38 */	beq .L_802A986C
/* 802A9838 00272DF8  2C 03 00 06 */	cmpwi r3, 6
/* 802A983C 00272DFC  41 82 00 38 */	beq .L_802A9874
/* 802A9840 00272E00  2C 03 00 07 */	cmpwi r3, 7
/* 802A9844 00272E04  41 82 00 50 */	beq .L_802A9894
/* 802A9848 00272E08  2C 03 00 03 */	cmpwi r3, 3
/* 802A984C 00272E0C  41 82 00 50 */	beq .L_802A989C
/* 802A9850 00272E10  2C 03 00 01 */	cmpwi r3, 1
/* 802A9854 00272E14  41 82 00 50 */	beq .L_802A98A4
/* 802A9858 00272E18  48 00 00 6C */	b .L_802A98C4
.L_802A985C:
/* 802A985C 00272E1C  38 A0 00 C9 */	li r5, 0xc9
/* 802A9860 00272E20  48 00 00 7C */	b .L_802A98DC
.L_802A9864:
/* 802A9864 00272E24  38 A0 00 CA */	li r5, 0xca
/* 802A9868 00272E28  48 00 00 74 */	b .L_802A98DC
.L_802A986C:
/* 802A986C 00272E2C  38 A0 00 CB */	li r5, 0xcb
/* 802A9870 00272E30  48 00 00 6C */	b .L_802A98DC
.L_802A9874:
/* 802A9874 00272E34  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802A9878 00272E38  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 802A987C 00272E3C  4B FF E3 15 */	bl func_802A7B90
/* 802A9880 00272E40  2C 03 00 00 */	cmpwi r3, 0
/* 802A9884 00272E44  38 A0 07 6F */	li r5, 0x76f
/* 802A9888 00272E48  40 82 00 54 */	bne .L_802A98DC
/* 802A988C 00272E4C  38 A0 00 CC */	li r5, 0xcc
/* 802A9890 00272E50  48 00 00 4C */	b .L_802A98DC
.L_802A9894:
/* 802A9894 00272E54  38 A0 00 CD */	li r5, 0xcd
/* 802A9898 00272E58  48 00 00 44 */	b .L_802A98DC
.L_802A989C:
/* 802A989C 00272E5C  38 A0 00 CE */	li r5, 0xce
/* 802A98A0 00272E60  48 00 00 3C */	b .L_802A98DC
.L_802A98A4:
/* 802A98A4 00272E64  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802A98A8 00272E68  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 802A98AC 00272E6C  4B FF E6 05 */	bl func_802A7EB0
/* 802A98B0 00272E70  2C 03 00 00 */	cmpwi r3, 0
/* 802A98B4 00272E74  38 A0 05 1A */	li r5, 0x51a
/* 802A98B8 00272E78  40 82 00 24 */	bne .L_802A98DC
/* 802A98BC 00272E7C  38 A0 00 CF */	li r5, 0xcf
/* 802A98C0 00272E80  48 00 00 1C */	b .L_802A98DC
.L_802A98C4:
/* 802A98C4 00272E84  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A98C8 00272E88  7F E3 FB 78 */	mr r3, r31
/* 802A98CC 00272E8C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A98D0 00272E90  7D 89 03 A6 */	mtctr r12
/* 802A98D4 00272E94  4E 80 04 21 */	bctrl 
/* 802A98D8 00272E98  48 00 00 38 */	b .L_802A9910
.L_802A98DC:
/* 802A98DC 00272E9C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802A98E0 00272EA0  2C 04 00 00 */	cmpwi r4, 0
/* 802A98E4 00272EA4  41 82 00 08 */	beq .L_802A98EC
/* 802A98E8 00272EA8  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A98EC:
/* 802A98EC 00272EAC  7F E3 FB 78 */	mr r3, r31
/* 802A98F0 00272EB0  4B FF A3 55 */	bl func_802A3C44
/* 802A98F4 00272EB4  2C 03 00 00 */	cmpwi r3, 0
/* 802A98F8 00272EB8  40 82 00 18 */	bne .L_802A9910
/* 802A98FC 00272EBC  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A9900 00272EC0  7F E3 FB 78 */	mr r3, r31
/* 802A9904 00272EC4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A9908 00272EC8  7D 89 03 A6 */	mtctr r12
/* 802A990C 00272ECC  4E 80 04 21 */	bctrl 
.L_802A9910:
/* 802A9910 00272ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9914 00272ED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9918 00272ED8  7C 08 03 A6 */	mtlr r0
/* 802A991C 00272EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9920 00272EE0  4E 80 00 20 */	blr 

.global func_802A9924
func_802A9924:
/* 802A9924 00272EE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9928 00272EE8  7C 08 02 A6 */	mflr r0
/* 802A992C 00272EEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9930 00272EF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9934 00272EF4  93 C1 00 08 */	stw r30, 8(r1)
/* 802A9938 00272EF8  7C 7E 1B 78 */	mr r30, r3
/* 802A993C 00272EFC  4B FF A5 4D */	bl func_802A3E88
/* 802A9940 00272F00  2C 03 00 00 */	cmpwi r3, 0
/* 802A9944 00272F04  40 82 01 68 */	bne .L_802A9AAC
/* 802A9948 00272F08  3C A0 80 54 */	lis r5, lbl_8053D558@ha
/* 802A994C 00272F0C  84 85 D5 58 */	lwzu r4, lbl_8053D558@l(r5)
/* 802A9950 00272F10  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 802A9954 00272F14  80 05 00 04 */	lwz r0, 4(r5)
/* 802A9958 00272F18  90 1E 00 04 */	stw r0, 4(r30)
/* 802A995C 00272F1C  2C 03 00 00 */	cmpwi r3, 0
/* 802A9960 00272F20  90 9E 00 00 */	stw r4, 0(r30)
/* 802A9964 00272F24  80 05 00 08 */	lwz r0, 8(r5)
/* 802A9968 00272F28  90 1E 00 08 */	stw r0, 8(r30)
/* 802A996C 00272F2C  41 82 01 40 */	beq .L_802A9AAC
/* 802A9970 00272F30  81 83 00 00 */	lwz r12, 0(r3)
/* 802A9974 00272F34  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A9978 00272F38  7D 89 03 A6 */	mtctr r12
/* 802A997C 00272F3C  4E 80 04 21 */	bctrl 
/* 802A9980 00272F40  2C 03 00 00 */	cmpwi r3, 0
/* 802A9984 00272F44  40 82 01 28 */	bne .L_802A9AAC
/* 802A9988 00272F48  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 802A998C 00272F4C  4B FF DE 5D */	bl func_802A77E8
/* 802A9990 00272F50  4B FF DE C1 */	bl func_802A7850
/* 802A9994 00272F54  2C 03 00 00 */	cmpwi r3, 0
/* 802A9998 00272F58  41 82 00 A8 */	beq .L_802A9A40
/* 802A999C 00272F5C  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 802A99A0 00272F60  2C 03 00 00 */	cmpwi r3, 0
/* 802A99A4 00272F64  41 82 00 4C */	beq .L_802A99F0
/* 802A99A8 00272F68  4B FF DE 41 */	bl func_802A77E8
/* 802A99AC 00272F6C  2C 03 00 01 */	cmpwi r3, 1
/* 802A99B0 00272F70  40 82 00 40 */	bne .L_802A99F0
/* 802A99B4 00272F74  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 802A99B8 00272F78  2C 04 00 00 */	cmpwi r4, 0
/* 802A99BC 00272F7C  41 82 00 08 */	beq .L_802A99C4
/* 802A99C0 00272F80  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A99C4:
/* 802A99C4 00272F84  7F C3 F3 78 */	mr r3, r30
/* 802A99C8 00272F88  38 A0 01 2D */	li r5, 0x12d
/* 802A99CC 00272F8C  4B FF A2 79 */	bl func_802A3C44
/* 802A99D0 00272F90  2C 03 00 00 */	cmpwi r3, 0
/* 802A99D4 00272F94  40 82 00 D8 */	bne .L_802A9AAC
/* 802A99D8 00272F98  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 802A99DC 00272F9C  7F C3 F3 78 */	mr r3, r30
/* 802A99E0 00272FA0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A99E4 00272FA4  7D 89 03 A6 */	mtctr r12
/* 802A99E8 00272FA8  4E 80 04 21 */	bctrl 
/* 802A99EC 00272FAC  48 00 00 C0 */	b .L_802A9AAC
.L_802A99F0:
/* 802A99F0 00272FB0  83 FE 00 24 */	lwz r31, 0x24(r30)
/* 802A99F4 00272FB4  2C 1F 00 00 */	cmpwi r31, 0
/* 802A99F8 00272FB8  41 82 00 08 */	beq .L_802A9A00
/* 802A99FC 00272FBC  3B FF 3E 9C */	addi r31, r31, 0x3e9c
.L_802A9A00:
/* 802A9A00 00272FC0  38 60 00 04 */	li r3, 4
/* 802A9A04 00272FC4  48 18 C4 F9 */	bl mtRand__2mlFi
/* 802A9A08 00272FC8  54 60 08 3C */	slwi r0, r3, 1
/* 802A9A0C 00272FCC  38 6D 94 D0 */	addi r3, r13, lbl_80665650@sda21
/* 802A9A10 00272FD0  7C A3 02 AE */	lhax r5, r3, r0
/* 802A9A14 00272FD4  7F C3 F3 78 */	mr r3, r30
/* 802A9A18 00272FD8  7F E4 FB 78 */	mr r4, r31
/* 802A9A1C 00272FDC  4B FF A2 29 */	bl func_802A3C44
/* 802A9A20 00272FE0  2C 03 00 00 */	cmpwi r3, 0
/* 802A9A24 00272FE4  40 82 00 88 */	bne .L_802A9AAC
/* 802A9A28 00272FE8  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 802A9A2C 00272FEC  7F C3 F3 78 */	mr r3, r30
/* 802A9A30 00272FF0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A9A34 00272FF4  7D 89 03 A6 */	mtctr r12
/* 802A9A38 00272FF8  4E 80 04 21 */	bctrl 
/* 802A9A3C 00272FFC  48 00 00 70 */	b .L_802A9AAC
.L_802A9A40:
/* 802A9A40 00273000  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 802A9A44 00273004  4B FF DD A5 */	bl func_802A77E8
/* 802A9A48 00273008  2C 03 00 08 */	cmpwi r3, 8
/* 802A9A4C 0027300C  41 82 00 14 */	beq .L_802A9A60
/* 802A9A50 00273010  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 802A9A54 00273014  4B FF DD 95 */	bl func_802A77E8
/* 802A9A58 00273018  2C 03 00 0A */	cmpwi r3, 0xa
/* 802A9A5C 0027301C  40 82 00 50 */	bne .L_802A9AAC
.L_802A9A60:
/* 802A9A60 00273020  83 FE 00 24 */	lwz r31, 0x24(r30)
/* 802A9A64 00273024  2C 1F 00 00 */	cmpwi r31, 0
/* 802A9A68 00273028  41 82 00 08 */	beq .L_802A9A70
/* 802A9A6C 0027302C  3B FF 3E 9C */	addi r31, r31, 0x3e9c
.L_802A9A70:
/* 802A9A70 00273030  38 60 00 03 */	li r3, 3
/* 802A9A74 00273034  48 18 C4 89 */	bl mtRand__2mlFi
/* 802A9A78 00273038  54 60 08 3C */	slwi r0, r3, 1
/* 802A9A7C 0027303C  38 6D 94 D8 */	addi r3, r13, lbl_80665658@sda21
/* 802A9A80 00273040  7C A3 02 AE */	lhax r5, r3, r0
/* 802A9A84 00273044  7F C3 F3 78 */	mr r3, r30
/* 802A9A88 00273048  7F E4 FB 78 */	mr r4, r31
/* 802A9A8C 0027304C  4B FF A1 B9 */	bl func_802A3C44
/* 802A9A90 00273050  2C 03 00 00 */	cmpwi r3, 0
/* 802A9A94 00273054  40 82 00 18 */	bne .L_802A9AAC
/* 802A9A98 00273058  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 802A9A9C 0027305C  7F C3 F3 78 */	mr r3, r30
/* 802A9AA0 00273060  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A9AA4 00273064  7D 89 03 A6 */	mtctr r12
/* 802A9AA8 00273068  4E 80 04 21 */	bctrl 
.L_802A9AAC:
/* 802A9AAC 0027306C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9AB0 00273070  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9AB4 00273074  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A9AB8 00273078  7C 08 03 A6 */	mtlr r0
/* 802A9ABC 0027307C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9AC0 00273080  4E 80 00 20 */	blr 

.global func_802A9AC4
func_802A9AC4:
/* 802A9AC4 00273084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9AC8 00273088  7C 08 02 A6 */	mflr r0
/* 802A9ACC 0027308C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9AD0 00273090  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9AD4 00273094  7C 7F 1B 78 */	mr r31, r3
/* 802A9AD8 00273098  4B FF A3 B1 */	bl func_802A3E88
/* 802A9ADC 0027309C  2C 03 00 00 */	cmpwi r3, 0
/* 802A9AE0 002730A0  40 82 00 18 */	bne .L_802A9AF8
/* 802A9AE4 002730A4  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A9AE8 002730A8  7F E3 FB 78 */	mr r3, r31
/* 802A9AEC 002730AC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A9AF0 002730B0  7D 89 03 A6 */	mtctr r12
/* 802A9AF4 002730B4  4E 80 04 21 */	bctrl 
.L_802A9AF8:
/* 802A9AF8 002730B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9AFC 002730BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9B00 002730C0  7C 08 03 A6 */	mtlr r0
/* 802A9B04 002730C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9B08 002730C8  4E 80 00 20 */	blr 

.global func_802A9B0C
func_802A9B0C:
/* 802A9B0C 002730CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9B10 002730D0  7C 08 02 A6 */	mflr r0
/* 802A9B14 002730D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9B18 002730D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9B1C 002730DC  7C 9F 23 78 */	mr r31, r4
/* 802A9B20 002730E0  93 C1 00 08 */	stw r30, 8(r1)
/* 802A9B24 002730E4  7C 7E 1B 78 */	mr r30, r3
/* 802A9B28 002730E8  4B FF A0 C5 */	bl func_802A3BEC
/* 802A9B2C 002730EC  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 802A9B30 002730F0  2C 03 00 00 */	cmpwi r3, 0
/* 802A9B34 002730F4  41 82 00 08 */	beq .L_802A9B3C
/* 802A9B38 002730F8  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A9B3C:
/* 802A9B3C 002730FC  7C 03 F8 40 */	cmplw r3, r31
/* 802A9B40 00273100  40 82 00 0C */	bne .L_802A9B4C
/* 802A9B44 00273104  38 00 00 00 */	li r0, 0
/* 802A9B48 00273108  90 1E 00 20 */	stw r0, 0x20(r30)
.L_802A9B4C:
/* 802A9B4C 0027310C  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 802A9B50 00273110  2C 03 00 00 */	cmpwi r3, 0
/* 802A9B54 00273114  41 82 00 08 */	beq .L_802A9B5C
/* 802A9B58 00273118  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A9B5C:
/* 802A9B5C 0027311C  7C 03 F8 40 */	cmplw r3, r31
/* 802A9B60 00273120  40 82 00 0C */	bne .L_802A9B6C
/* 802A9B64 00273124  38 00 00 00 */	li r0, 0
/* 802A9B68 00273128  90 1E 00 24 */	stw r0, 0x24(r30)
.L_802A9B6C:
/* 802A9B6C 0027312C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9B70 00273130  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9B74 00273134  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A9B78 00273138  7C 08 03 A6 */	mtlr r0
/* 802A9B7C 0027313C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9B80 00273140  4E 80 00 20 */	blr 

.global func_802A9B84
func_802A9B84:
/* 802A9B84 00273144  38 60 00 32 */	li r3, 0x32
/* 802A9B88 00273148  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0


.global cf_CVS_THREAD_VISION_TELL_typestr
cf_CVS_THREAD_VISION_TELL_typestr:
	.asciz "cf::CVS_THREAD_VISION_TELL"
	.balign 4
	.4byte 0

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8053D540
lbl_8053D540:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A97A0

.global lbl_8053D54C
lbl_8053D54C:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A9924

.global lbl_8053D558
lbl_8053D558:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A9AC4


.global __vt__cf_CVS_THREAD_VISION_TELL
__vt__cf_CVS_THREAD_VISION_TELL:
	.4byte __RTTI__cf_CVS_THREAD_VISION_TELL
	.4byte 0
	.4byte func_802A3B50
	.4byte func_802A9B0C
	.4byte func_802A9B84
	.4byte func_802A1EA0
	.4byte func_802A3740

.global cf_CVS_THREAD_VISION_TELL_hierarchy
cf_CVS_THREAD_VISION_TELL_hierarchy:
	.4byte __RTTI__cf_CVS_THREAD
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global lbl_80665650
lbl_80665650:
	.4byte 0x012E0131
	.4byte 0x01320133


.global lbl_80665658
lbl_80665658:
	.4byte 0x01310132
	.4byte 0x01330000

.global __RTTI__cf_CVS_THREAD_VISION_TELL
__RTTI__cf_CVS_THREAD_VISION_TELL:
	.4byte cf_CVS_THREAD_VISION_TELL_typestr
	.4byte cf_CVS_THREAD_VISION_TELL_hierarchy

.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_8001AF74
lbl_8001AF74:
	.4byte 0x20180000
	.4byte 0x0000006C
	.4byte 0x00000018
	.4byte 0x00000094
	.4byte 0x00000028
	.4byte 0
	.4byte 0x90000000
	.4byte 0
	.4byte 0x00000084
	.4byte 0x00000008
	.4byte 0x8D000008

.global lbl_8001AFA0
lbl_8001AFA0:
	.4byte 0x08080000
	.4byte 0

.global lbl_8001AFA8
lbl_8001AFA8:
	.4byte 0x10080000
	.4byte 0

.global lbl_8001AFB0
lbl_8001AFB0:
	.4byte 0x08080000
	.4byte 0

.global lbl_8001AFB8
lbl_8001AFB8:
	.4byte 0x10080000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

.4byte func_802A96C0
	.4byte 0x000000E0
	.4byte lbl_8001AF74
	.4byte func_802A97A0
	.4byte 0x00000184
	.4byte lbl_8001AFA0
	.4byte func_802A9924
	.4byte 0x000001A0
	.4byte lbl_8001AFA8
	.4byte func_802A9AC4
	.4byte 0x00000048
	.4byte lbl_8001AFB0
	.4byte func_802A9B0C
	.4byte 0x00000078
	.4byte lbl_8001AFB8
