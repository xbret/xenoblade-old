.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_803387C0, global
/* 803387C0 00301D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803387C4 00301D84  7C 08 02 A6 */	mflr r0
/* 803387C8 00301D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 803387CC 00301D8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803387D0 00301D90  7C 7F 1B 78 */	mr r31, r3
/* 803387D4 00301D94  48 00 02 ED */	bl func_80338AC0
/* 803387D8 00301D98  3C 80 80 55 */	lis r4, __vt__8054ECD0@ha
/* 803387DC 00301D9C  7F E3 FB 78 */	mr r3, r31
/* 803387E0 00301DA0  38 84 EC D0 */	addi r4, r4, __vt__8054ECD0@l
/* 803387E4 00301DA4  90 9F 00 00 */	stw r4, 0x0(r31)
/* 803387E8 00301DA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803387EC 00301DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803387F0 00301DB0  7C 08 03 A6 */	mtlr r0
/* 803387F4 00301DB4  38 21 00 10 */	addi r1, r1, 0x10
/* 803387F8 00301DB8  4E 80 00 20 */	blr
.endfn func_803387C0
/* 803387FC 00301DBC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn func_80338800, global
/* 80338800 00301DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80338804 00301DC4  7C 08 02 A6 */	mflr r0
/* 80338808 00301DC8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8033880C 00301DCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80338810 00301DD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80338814 00301DD4  7C 9F 23 78 */	mr r31, r4
/* 80338818 00301DD8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8033881C 00301DDC  7C 7E 1B 78 */	mr r30, r3
/* 80338820 00301DE0  41 82 00 1C */	beq .L_8033883C
/* 80338824 00301DE4  38 80 00 00 */	li r4, 0x0
/* 80338828 00301DE8  48 00 02 E9 */	bl func_80338B10
/* 8033882C 00301DEC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80338830 00301DF0  40 81 00 0C */	ble .L_8033883C
/* 80338834 00301DF4  7F C3 F3 78 */	mr r3, r30
/* 80338838 00301DF8  48 0F C3 F5 */	bl __dl__FPv
.L_8033883C:
/* 8033883C 00301DFC  7F C3 F3 78 */	mr r3, r30
/* 80338840 00301E00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80338844 00301E04  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80338848 00301E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033884C 00301E0C  7C 08 03 A6 */	mtlr r0
/* 80338850 00301E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80338854 00301E14  4E 80 00 20 */	blr
.endfn func_80338800
/* 80338858 00301E18  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8033885C 00301E1C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn func_80338860, global
/* 80338860 00301E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80338864 00301E24  7C 08 02 A6 */	mflr r0
/* 80338868 00301E28  38 A0 00 00 */	li r5, 0x0
/* 8033886C 00301E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80338870 00301E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80338874 00301E34  7C 9F 23 78 */	mr r31, r4
/* 80338878 00301E38  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8033887C 00301E3C  7C 7E 1B 78 */	mr r30, r3
/* 80338880 00301E40  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80338884 00301E44  2C 00 00 00 */	cmpwi r0, 0x0
/* 80338888 00301E48  41 82 00 0C */	beq .L_80338894
/* 8033888C 00301E4C  38 60 00 00 */	li r3, 0x0
/* 80338890 00301E50  48 00 01 00 */	b .L_80338990
.L_80338894:
/* 80338894 00301E54  80 64 00 00 */	lwz r3, 0x0(r4)
/* 80338898 00301E58  3C 03 AD BA */	addis r0, r3, 0xadba
/* 8033889C 00301E5C  28 00 4E 55 */	cmplwi r0, 0x4e55
/* 803388A0 00301E60  40 82 00 48 */	bne .L_803388E8
/* 803388A4 00301E64  A0 04 00 0C */	lhz r0, 0xc(r4)
/* 803388A8 00301E68  A0 64 00 0E */	lhz r3, 0xe(r4)
/* 803388AC 00301E6C  7C 84 02 14 */	add r4, r4, r0
/* 803388B0 00301E70  7C 69 03 A6 */	mtctr r3
/* 803388B4 00301E74  2C 03 00 00 */	cmpwi r3, 0x0
/* 803388B8 00301E78  40 81 00 98 */	ble .L_80338950
/* 803388BC 00301E7C  60 00 00 00 */	nop
.L_803388C0:
/* 803388C0 00301E80  80 64 00 00 */	lwz r3, 0x0(r4)
/* 803388C4 00301E84  3C 03 B9 B7 */	addis r0, r3, 0xb9b7
/* 803388C8 00301E88  28 00 4E 46 */	cmplwi r0, 0x4e46
/* 803388CC 00301E8C  40 82 00 0C */	bne .L_803388D8
/* 803388D0 00301E90  38 A4 00 08 */	addi r5, r4, 0x8
/* 803388D4 00301E94  48 00 00 7C */	b .L_80338950
.L_803388D8:
/* 803388D8 00301E98  80 04 00 04 */	lwz r0, 0x4(r4)
/* 803388DC 00301E9C  7C 84 02 14 */	add r4, r4, r0
/* 803388E0 00301EA0  42 00 FF E0 */	bdnz .L_803388C0
/* 803388E4 00301EA4  48 00 00 6C */	b .L_80338950
.L_803388E8:
/* 803388E8 00301EA8  A0 04 00 06 */	lhz r0, 0x6(r4)
/* 803388EC 00301EAC  28 00 01 04 */	cmplwi r0, 0x104
/* 803388F0 00301EB0  40 82 00 2C */	bne .L_8033891C
/* 803388F4 00301EB4  3C 80 52 46 */	lis r4, 0x5246
/* 803388F8 00301EB8  7F E3 FB 78 */	mr r3, r31
/* 803388FC 00301EBC  38 84 4E 54 */	addi r4, r4, 0x4e54
/* 80338900 00301EC0  38 A0 01 04 */	li r5, 0x104
/* 80338904 00301EC4  38 C0 00 02 */	li r6, 0x2
/* 80338908 00301EC8  4B FF DF E9 */	bl func_803368F0
/* 8033890C 00301ECC  2C 03 00 00 */	cmpwi r3, 0x0
/* 80338910 00301ED0  40 82 00 34 */	bne .L_80338944
/* 80338914 00301ED4  38 60 00 00 */	li r3, 0x0
/* 80338918 00301ED8  48 00 00 78 */	b .L_80338990
.L_8033891C:
/* 8033891C 00301EDC  3C 80 52 46 */	lis r4, 0x5246
/* 80338920 00301EE0  7F E3 FB 78 */	mr r3, r31
/* 80338924 00301EE4  38 84 4E 54 */	addi r4, r4, 0x4e54
/* 80338928 00301EE8  38 A0 01 02 */	li r5, 0x102
/* 8033892C 00301EEC  38 C0 00 02 */	li r6, 0x2
/* 80338930 00301EF0  4B FF DF C1 */	bl func_803368F0
/* 80338934 00301EF4  2C 03 00 00 */	cmpwi r3, 0x0
/* 80338938 00301EF8  40 82 00 0C */	bne .L_80338944
/* 8033893C 00301EFC  38 60 00 00 */	li r3, 0x0
/* 80338940 00301F00  48 00 00 50 */	b .L_80338990
.L_80338944:
/* 80338944 00301F04  7F E3 FB 78 */	mr r3, r31
/* 80338948 00301F08  48 00 00 69 */	bl func_803389B0
/* 8033894C 00301F0C  7C 65 1B 78 */	mr r5, r3
.L_80338950:
/* 80338950 00301F10  2C 05 00 00 */	cmpwi r5, 0x0
/* 80338954 00301F14  40 82 00 0C */	bne .L_80338960
/* 80338958 00301F18  38 60 00 00 */	li r3, 0x0
/* 8033895C 00301F1C  48 00 00 34 */	b .L_80338990
.L_80338960:
/* 80338960 00301F20  7F C3 F3 78 */	mr r3, r30
/* 80338964 00301F24  7F E4 FB 78 */	mr r4, r31
/* 80338968 00301F28  48 00 01 E9 */	bl func_80338B50
/* 8033896C 00301F2C  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 80338970 00301F30  7F C3 F3 78 */	mr r3, r30
/* 80338974 00301F34  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 80338978 00301F38  7D 89 03 A6 */	mtctr r12
/* 8033897C 00301F3C  4E 80 04 21 */	bctrl
/* 80338980 00301F40  7C 64 1B 78 */	mr r4, r3
/* 80338984 00301F44  7F C3 F3 78 */	mr r3, r30
/* 80338988 00301F48  4B FF FB 09 */	bl InitReaderFunc__Q36nw4hbm2ut4FontFQ36nw4hbm2ut12FontEncoding
/* 8033898C 00301F4C  38 60 00 01 */	li r3, 0x1
.L_80338990:
/* 80338990 00301F50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80338994 00301F54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80338998 00301F58  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8033899C 00301F5C  7C 08 03 A6 */	mtlr r0
/* 803389A0 00301F60  38 21 00 10 */	addi r1, r1, 0x10
/* 803389A4 00301F64  4E 80 00 20 */	blr
.endfn func_80338860
/* 803389A8 00301F68  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803389AC 00301F6C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn func_803389B0, global
/* 803389B0 00301F70  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 803389B4 00301F74  38 C0 00 00 */	li r6, 0x0
/* 803389B8 00301F78  38 E0 00 00 */	li r7, 0x0
/* 803389BC 00301F7C  7C A3 02 14 */	add r5, r3, r0
/* 803389C0 00301F80  48 00 00 DC */	b .L_80338A9C
/* 803389C4 00301F84  60 00 00 00 */	nop
.L_803389C8:
/* 803389C8 00301F88  80 85 00 00 */	lwz r4, 0x0(r5)
/* 803389CC 00301F8C  3C 04 B9 B7 */	addis r0, r4, 0xb9b7
/* 803389D0 00301F90  28 00 4E 46 */	cmplwi r0, 0x4e46
/* 803389D4 00301F94  41 82 00 38 */	beq .L_80338A0C
/* 803389D8 00301F98  3C 04 AB B9 */	addis r0, r4, 0xabb9
/* 803389DC 00301F9C  28 00 4C 50 */	cmplwi r0, 0x4c50
/* 803389E0 00301FA0  41 82 00 68 */	beq .L_80338A48
/* 803389E4 00301FA4  3C 04 BC A9 */	addis r0, r4, 0xbca9
/* 803389E8 00301FA8  28 00 44 48 */	cmplwi r0, 0x4448
/* 803389EC 00301FAC  41 82 00 6C */	beq .L_80338A58
/* 803389F0 00301FB0  3C 04 BC B3 */	addis r0, r4, 0xbcb3
/* 803389F4 00301FB4  28 00 41 50 */	cmplwi r0, 0x4150
/* 803389F8 00301FB8  41 82 00 78 */	beq .L_80338A70
/* 803389FC 00301FBC  3C 04 B8 B4 */	addis r0, r4, 0xb8b4
/* 80338A00 00301FC0  28 00 47 52 */	cmplwi r0, 0x4752
/* 80338A04 00301FC4  41 82 00 8C */	beq .L_80338A90
/* 80338A08 00301FC8  48 00 00 80 */	b .L_80338A88
.L_80338A0C:
/* 80338A0C 00301FCC  80 05 00 10 */	lwz r0, 0x10(r5)
/* 80338A10 00301FD0  38 C5 00 08 */	addi r6, r5, 0x8
/* 80338A14 00301FD4  7C 03 02 14 */	add r0, r3, r0
/* 80338A18 00301FD8  90 05 00 10 */	stw r0, 0x10(r5)
/* 80338A1C 00301FDC  80 05 00 14 */	lwz r0, 0x14(r5)
/* 80338A20 00301FE0  2C 00 00 00 */	cmpwi r0, 0x0
/* 80338A24 00301FE4  41 82 00 0C */	beq .L_80338A30
/* 80338A28 00301FE8  7C 03 02 14 */	add r0, r3, r0
/* 80338A2C 00301FEC  90 06 00 0C */	stw r0, 0xc(r6)
.L_80338A30:
/* 80338A30 00301FF0  80 06 00 10 */	lwz r0, 0x10(r6)
/* 80338A34 00301FF4  2C 00 00 00 */	cmpwi r0, 0x0
/* 80338A38 00301FF8  41 82 00 58 */	beq .L_80338A90
/* 80338A3C 00301FFC  7C 03 02 14 */	add r0, r3, r0
/* 80338A40 00302000  90 06 00 10 */	stw r0, 0x10(r6)
/* 80338A44 00302004  48 00 00 4C */	b .L_80338A90
.L_80338A48:
/* 80338A48 00302008  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 80338A4C 0030200C  7C 03 02 14 */	add r0, r3, r0
/* 80338A50 00302010  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80338A54 00302014  48 00 00 3C */	b .L_80338A90
.L_80338A58:
/* 80338A58 00302018  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80338A5C 0030201C  2C 00 00 00 */	cmpwi r0, 0x0
/* 80338A60 00302020  41 82 00 30 */	beq .L_80338A90
/* 80338A64 00302024  7C 03 02 14 */	add r0, r3, r0
/* 80338A68 00302028  90 05 00 0C */	stw r0, 0xc(r5)
/* 80338A6C 0030202C  48 00 00 24 */	b .L_80338A90
.L_80338A70:
/* 80338A70 00302030  80 05 00 10 */	lwz r0, 0x10(r5)
/* 80338A74 00302034  2C 00 00 00 */	cmpwi r0, 0x0
/* 80338A78 00302038  41 82 00 18 */	beq .L_80338A90
/* 80338A7C 0030203C  7C 03 02 14 */	add r0, r3, r0
/* 80338A80 00302040  90 05 00 10 */	stw r0, 0x10(r5)
/* 80338A84 00302044  48 00 00 0C */	b .L_80338A90
.L_80338A88:
/* 80338A88 00302048  38 60 00 00 */	li r3, 0x0
/* 80338A8C 0030204C  4E 80 00 20 */	blr
.L_80338A90:
/* 80338A90 00302050  80 05 00 04 */	lwz r0, 0x4(r5)
/* 80338A94 00302054  38 E7 00 01 */	addi r7, r7, 0x1
/* 80338A98 00302058  7C A5 02 14 */	add r5, r5, r0
.L_80338A9C:
/* 80338A9C 0030205C  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 80338AA0 00302060  7C 07 00 00 */	cmpw r7, r0
/* 80338AA4 00302064  41 80 FF 24 */	blt .L_803389C8
/* 80338AA8 00302068  3C 80 52 46 */	lis r4, 0x5246
/* 80338AAC 0030206C  38 04 4E 55 */	addi r0, r4, 0x4e55
/* 80338AB0 00302070  90 03 00 00 */	stw r0, 0x0(r3)
/* 80338AB4 00302074  7C C3 33 78 */	mr r3, r6
/* 80338AB8 00302078  4E 80 00 20 */	blr
.endfn func_803389B0
/* 80338ABC 0030207C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
