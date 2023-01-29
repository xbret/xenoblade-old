.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn __wcstoul, global
/* 802C47D4 0028DD94  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802C47D8 0028DD98  7C 08 02 A6 */	mflr r0
/* 802C47DC 0028DD9C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C47E0 0028DDA0  90 01 00 54 */	stw r0, 0x54(r1)
/* 802C47E4 0028DDA4  BE 21 00 14 */	stmw r17, 0x14(r1)
/* 802C47E8 0028DDA8  3B 60 00 00 */	li r27, 0x0
/* 802C47EC 0028DDAC  7C 71 1B 78 */	mr r17, r3
/* 802C47F0 0028DDB0  7C 92 23 78 */	mr r18, r4
/* 802C47F4 0028DDB4  7C B3 2B 78 */	mr r19, r5
/* 802C47F8 0028DDB8  7C D4 33 78 */	mr r20, r6
/* 802C47FC 0028DDBC  7C F5 3B 78 */	mr r21, r7
/* 802C4800 0028DDC0  7D 16 43 78 */	mr r22, r8
/* 802C4804 0028DDC4  7D 37 4B 78 */	mr r23, r9
/* 802C4808 0028DDC8  3B 80 00 01 */	li r28, 0x1
/* 802C480C 0028DDCC  3B 40 00 00 */	li r26, 0x0
/* 802C4810 0028DDD0  3B 20 00 00 */	li r25, 0x0
/* 802C4814 0028DDD4  3B 00 00 00 */	li r24, 0x0
/* 802C4818 0028DDD8  93 69 00 00 */	stw r27, 0x0(r9)
/* 802C481C 0028DDDC  93 68 00 00 */	stw r27, 0x0(r8)
/* 802C4820 0028DDE0  41 80 00 1C */	blt .L_802C483C
/* 802C4824 0028DDE4  2C 03 00 01 */	cmpwi r3, 0x1
/* 802C4828 0028DDE8  41 82 00 14 */	beq .L_802C483C
/* 802C482C 0028DDEC  2C 03 00 24 */	cmpwi r3, 0x24
/* 802C4830 0028DDF0  41 81 00 0C */	bgt .L_802C483C
/* 802C4834 0028DDF4  2C 04 00 01 */	cmpwi r4, 0x1
/* 802C4838 0028DDF8  40 80 00 0C */	bge .L_802C4844
.L_802C483C:
/* 802C483C 0028DDFC  3B 80 00 40 */	li r28, 0x40
/* 802C4840 0028DE00  48 00 00 24 */	b .L_802C4864
.L_802C4844:
/* 802C4844 0028DE04  7E 6C 9B 78 */	mr r12, r19
/* 802C4848 0028DE08  7E 83 A3 78 */	mr r3, r20
/* 802C484C 0028DE0C  38 80 00 00 */	li r4, 0x0
/* 802C4850 0028DE10  38 A0 00 00 */	li r5, 0x0
/* 802C4854 0028DE14  7D 89 03 A6 */	mtctr r12
/* 802C4858 0028DE18  3B 60 00 01 */	li r27, 0x1
/* 802C485C 0028DE1C  4E 80 04 21 */	bctrl
/* 802C4860 0028DE20  7C 64 1B 78 */	mr r4, r3
.L_802C4864:
/* 802C4864 0028DE24  2C 11 00 00 */	cmpwi r17, 0x0
/* 802C4868 0028DE28  41 82 00 0C */	beq .L_802C4874
/* 802C486C 0028DE2C  38 00 FF FF */	li r0, -0x1
/* 802C4870 0028DE30  7F 00 8B 96 */	divwu r24, r0, r17
.L_802C4874:
/* 802C4874 0028DE34  3C 60 80 54 */	lis r3, _current_locale@ha
/* 802C4878 0028DE38  3B C0 00 01 */	li r30, 0x1
/* 802C487C 0028DE3C  3B E0 FF FF */	li r31, -0x1
/* 802C4880 0028DE40  3B A3 F5 48 */	addi r29, r3, _current_locale@l
/* 802C4884 0028DE44  48 00 02 FC */	b .L_802C4B80
.L_802C4888:
/* 802C4888 0028DE48  2C 1C 00 01 */	cmpwi r28, 0x1
/* 802C488C 0028DE4C  41 82 00 28 */	beq .L_802C48B4
/* 802C4890 0028DE50  2C 1C 00 02 */	cmpwi r28, 0x2
/* 802C4894 0028DE54  41 82 00 D8 */	beq .L_802C496C
/* 802C4898 0028DE58  2C 1C 00 04 */	cmpwi r28, 0x4
/* 802C489C 0028DE5C  41 82 01 1C */	beq .L_802C49B8
/* 802C48A0 0028DE60  2C 1C 00 08 */	cmpwi r28, 0x8
/* 802C48A4 0028DE64  41 82 01 68 */	beq .L_802C4A0C
/* 802C48A8 0028DE68  2C 1C 00 10 */	cmpwi r28, 0x10
/* 802C48AC 0028DE6C  41 82 01 60 */	beq .L_802C4A0C
/* 802C48B0 0028DE70  48 00 02 D0 */	b .L_802C4B80
.L_802C48B4:
/* 802C48B4 0028DE74  54 80 04 3E */	clrlwi r0, r4, 16
/* 802C48B8 0028DE78  28 00 01 00 */	cmplwi r0, 0x100
/* 802C48BC 0028DE7C  41 80 00 0C */	blt .L_802C48C8
/* 802C48C0 0028DE80  38 00 00 00 */	li r0, 0x0
/* 802C48C4 0028DE84  48 00 00 18 */	b .L_802C48DC
.L_802C48C8:
/* 802C48C8 0028DE88  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 802C48CC 0028DE8C  54 80 0B FC */	clrlslwi r0, r4, 16, 1
/* 802C48D0 0028DE90  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802C48D4 0028DE94  7C 03 02 2E */	lhzx r0, r3, r0
/* 802C48D8 0028DE98  54 00 05 EE */	rlwinm r0, r0, 0, 23, 23
.L_802C48DC:
/* 802C48DC 0028DE9C  2C 00 00 00 */	cmpwi r0, 0x0
/* 802C48E0 0028DEA0  41 82 00 28 */	beq .L_802C4908
/* 802C48E4 0028DEA4  7E 6C 9B 78 */	mr r12, r19
/* 802C48E8 0028DEA8  7E 83 A3 78 */	mr r3, r20
/* 802C48EC 0028DEAC  38 80 00 00 */	li r4, 0x0
/* 802C48F0 0028DEB0  38 A0 00 00 */	li r5, 0x0
/* 802C48F4 0028DEB4  7D 89 03 A6 */	mtctr r12
/* 802C48F8 0028DEB8  4E 80 04 21 */	bctrl
/* 802C48FC 0028DEBC  7C 64 1B 78 */	mr r4, r3
/* 802C4900 0028DEC0  3B 5A 00 01 */	addi r26, r26, 0x1
/* 802C4904 0028DEC4  48 00 02 7C */	b .L_802C4B80
.L_802C4908:
/* 802C4908 0028DEC8  54 80 04 3E */	clrlwi r0, r4, 16
/* 802C490C 0028DECC  28 00 00 2B */	cmplwi r0, 0x2b
/* 802C4910 0028DED0  40 82 00 28 */	bne .L_802C4938
/* 802C4914 0028DED4  7E 6C 9B 78 */	mr r12, r19
/* 802C4918 0028DED8  7E 83 A3 78 */	mr r3, r20
/* 802C491C 0028DEDC  38 80 00 00 */	li r4, 0x0
/* 802C4920 0028DEE0  38 A0 00 00 */	li r5, 0x0
/* 802C4924 0028DEE4  7D 89 03 A6 */	mtctr r12
/* 802C4928 0028DEE8  3B 7B 00 01 */	addi r27, r27, 0x1
/* 802C492C 0028DEEC  4E 80 04 21 */	bctrl
/* 802C4930 0028DEF0  7C 64 1B 78 */	mr r4, r3
/* 802C4934 0028DEF4  48 00 00 30 */	b .L_802C4964
.L_802C4938:
/* 802C4938 0028DEF8  28 00 00 2D */	cmplwi r0, 0x2d
/* 802C493C 0028DEFC  40 82 00 28 */	bne .L_802C4964
/* 802C4940 0028DF00  7E 6C 9B 78 */	mr r12, r19
/* 802C4944 0028DF04  7E 83 A3 78 */	mr r3, r20
/* 802C4948 0028DF08  38 80 00 00 */	li r4, 0x0
/* 802C494C 0028DF0C  38 A0 00 00 */	li r5, 0x0
/* 802C4950 0028DF10  7D 89 03 A6 */	mtctr r12
/* 802C4954 0028DF14  3B 7B 00 01 */	addi r27, r27, 0x1
/* 802C4958 0028DF18  4E 80 04 21 */	bctrl
/* 802C495C 0028DF1C  7C 64 1B 78 */	mr r4, r3
/* 802C4960 0028DF20  93 D6 00 00 */	stw r30, 0x0(r22)
.L_802C4964:
/* 802C4964 0028DF24  3B 80 00 02 */	li r28, 0x2
/* 802C4968 0028DF28  48 00 02 18 */	b .L_802C4B80
.L_802C496C:
/* 802C496C 0028DF2C  2C 11 00 00 */	cmpwi r17, 0x0
/* 802C4970 0028DF30  41 82 00 0C */	beq .L_802C497C
/* 802C4974 0028DF34  2C 11 00 10 */	cmpwi r17, 0x10
/* 802C4978 0028DF38  40 82 00 38 */	bne .L_802C49B0
.L_802C497C:
/* 802C497C 0028DF3C  54 80 04 3E */	clrlwi r0, r4, 16
/* 802C4980 0028DF40  28 00 00 30 */	cmplwi r0, 0x30
/* 802C4984 0028DF44  40 82 00 2C */	bne .L_802C49B0
/* 802C4988 0028DF48  7E 6C 9B 78 */	mr r12, r19
/* 802C498C 0028DF4C  7E 83 A3 78 */	mr r3, r20
/* 802C4990 0028DF50  3B 80 00 04 */	li r28, 0x4
/* 802C4994 0028DF54  38 80 00 00 */	li r4, 0x0
/* 802C4998 0028DF58  38 A0 00 00 */	li r5, 0x0
/* 802C499C 0028DF5C  7D 89 03 A6 */	mtctr r12
/* 802C49A0 0028DF60  3B 7B 00 01 */	addi r27, r27, 0x1
/* 802C49A4 0028DF64  4E 80 04 21 */	bctrl
/* 802C49A8 0028DF68  7C 64 1B 78 */	mr r4, r3
/* 802C49AC 0028DF6C  48 00 01 D4 */	b .L_802C4B80
.L_802C49B0:
/* 802C49B0 0028DF70  3B 80 00 08 */	li r28, 0x8
/* 802C49B4 0028DF74  48 00 01 CC */	b .L_802C4B80
.L_802C49B8:
/* 802C49B8 0028DF78  54 80 04 3E */	clrlwi r0, r4, 16
/* 802C49BC 0028DF7C  28 00 00 58 */	cmplwi r0, 0x58
/* 802C49C0 0028DF80  41 82 00 0C */	beq .L_802C49CC
/* 802C49C4 0028DF84  28 00 00 78 */	cmplwi r0, 0x78
/* 802C49C8 0028DF88  40 82 00 30 */	bne .L_802C49F8
.L_802C49CC:
/* 802C49CC 0028DF8C  7E 6C 9B 78 */	mr r12, r19
/* 802C49D0 0028DF90  7E 83 A3 78 */	mr r3, r20
/* 802C49D4 0028DF94  3A 20 00 10 */	li r17, 0x10
/* 802C49D8 0028DF98  3B 80 00 08 */	li r28, 0x8
/* 802C49DC 0028DF9C  38 80 00 00 */	li r4, 0x0
/* 802C49E0 0028DFA0  38 A0 00 00 */	li r5, 0x0
/* 802C49E4 0028DFA4  7D 89 03 A6 */	mtctr r12
/* 802C49E8 0028DFA8  3B 7B 00 01 */	addi r27, r27, 0x1
/* 802C49EC 0028DFAC  4E 80 04 21 */	bctrl
/* 802C49F0 0028DFB0  7C 64 1B 78 */	mr r4, r3
/* 802C49F4 0028DFB4  48 00 01 8C */	b .L_802C4B80
.L_802C49F8:
/* 802C49F8 0028DFB8  2C 11 00 00 */	cmpwi r17, 0x0
/* 802C49FC 0028DFBC  40 82 00 08 */	bne .L_802C4A04
/* 802C4A00 0028DFC0  3A 20 00 08 */	li r17, 0x8
.L_802C4A04:
/* 802C4A04 0028DFC4  3B 80 00 10 */	li r28, 0x10
/* 802C4A08 0028DFC8  48 00 01 78 */	b .L_802C4B80
.L_802C4A0C:
/* 802C4A0C 0028DFCC  2C 11 00 00 */	cmpwi r17, 0x0
/* 802C4A10 0028DFD0  40 82 00 08 */	bne .L_802C4A18
/* 802C4A14 0028DFD4  3A 20 00 0A */	li r17, 0xa
.L_802C4A18:
/* 802C4A18 0028DFD8  2C 18 00 00 */	cmpwi r24, 0x0
/* 802C4A1C 0028DFDC  40 82 00 08 */	bne .L_802C4A24
/* 802C4A20 0028DFE0  7F 1F 8B 96 */	divwu r24, r31, r17
.L_802C4A24:
/* 802C4A24 0028DFE4  54 80 04 3E */	clrlwi r0, r4, 16
/* 802C4A28 0028DFE8  28 00 01 00 */	cmplwi r0, 0x100
/* 802C4A2C 0028DFEC  41 80 00 0C */	blt .L_802C4A38
/* 802C4A30 0028DFF0  38 00 00 00 */	li r0, 0x0
/* 802C4A34 0028DFF4  48 00 00 18 */	b .L_802C4A4C
.L_802C4A38:
/* 802C4A38 0028DFF8  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 802C4A3C 0028DFFC  54 80 0B FC */	clrlslwi r0, r4, 16, 1
/* 802C4A40 0028E000  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802C4A44 0028E004  7C 03 02 2E */	lhzx r0, r3, r0
/* 802C4A48 0028E008  54 00 07 38 */	rlwinm r0, r0, 0, 28, 28
.L_802C4A4C:
/* 802C4A4C 0028E00C  2C 00 00 00 */	cmpwi r0, 0x0
/* 802C4A50 0028E010  41 82 00 2C */	beq .L_802C4A7C
/* 802C4A54 0028E014  38 84 FF D0 */	addi r4, r4, -0x30
/* 802C4A58 0028E018  54 80 04 3E */	clrlwi r0, r4, 16
/* 802C4A5C 0028E01C  7C 00 88 00 */	cmpw r0, r17
/* 802C4A60 0028E020  41 80 00 D0 */	blt .L_802C4B30
/* 802C4A64 0028E024  2C 1C 00 10 */	cmpwi r28, 0x10
/* 802C4A68 0028E028  3B 80 00 40 */	li r28, 0x40
/* 802C4A6C 0028E02C  40 82 00 08 */	bne .L_802C4A74
/* 802C4A70 0028E030  3B 80 00 20 */	li r28, 0x20
.L_802C4A74:
/* 802C4A74 0028E034  38 84 00 30 */	addi r4, r4, 0x30
/* 802C4A78 0028E038  48 00 01 08 */	b .L_802C4B80
.L_802C4A7C:
/* 802C4A7C 0028E03C  54 80 04 3E */	clrlwi r0, r4, 16
/* 802C4A80 0028E040  28 00 01 00 */	cmplwi r0, 0x100
/* 802C4A84 0028E044  41 80 00 0C */	blt .L_802C4A90
/* 802C4A88 0028E048  38 00 00 00 */	li r0, 0x0
/* 802C4A8C 0028E04C  48 00 00 18 */	b .L_802C4AA4
.L_802C4A90:
/* 802C4A90 0028E050  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 802C4A94 0028E054  54 80 0B FC */	clrlslwi r0, r4, 16, 1
/* 802C4A98 0028E058  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802C4A9C 0028E05C  7C 03 02 2E */	lhzx r0, r3, r0
/* 802C4AA0 0028E060  54 00 07 FE */	clrlwi r0, r0, 31
.L_802C4AA4:
/* 802C4AA4 0028E064  2C 00 00 00 */	cmpwi r0, 0x0
/* 802C4AA8 0028E068  41 82 00 44 */	beq .L_802C4AEC
/* 802C4AAC 0028E06C  54 80 04 3E */	clrlwi r0, r4, 16
/* 802C4AB0 0028E070  38 60 00 01 */	li r3, 0x1
/* 802C4AB4 0028E074  28 00 00 FF */	cmplwi r0, 0xff
/* 802C4AB8 0028E078  41 81 00 08 */	bgt .L_802C4AC0
/* 802C4ABC 0028E07C  38 60 00 00 */	li r3, 0x0
.L_802C4AC0:
/* 802C4AC0 0028E080  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C4AC4 0028E084  41 82 00 0C */	beq .L_802C4AD0
/* 802C4AC8 0028E088  54 83 04 3E */	clrlwi r3, r4, 16
/* 802C4ACC 0028E08C  48 00 00 14 */	b .L_802C4AE0
.L_802C4AD0:
/* 802C4AD0 0028E090  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 802C4AD4 0028E094  54 80 04 3E */	clrlwi r0, r4, 16
/* 802C4AD8 0028E098  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802C4ADC 0028E09C  7C 63 00 AE */	lbzx r3, r3, r0
.L_802C4AE0:
/* 802C4AE0 0028E0A0  38 03 FF C9 */	addi r0, r3, -0x37
/* 802C4AE4 0028E0A4  7C 00 88 00 */	cmpw r0, r17
/* 802C4AE8 0028E0A8  41 80 00 1C */	blt .L_802C4B04
.L_802C4AEC:
/* 802C4AEC 0028E0AC  2C 1C 00 10 */	cmpwi r28, 0x10
/* 802C4AF0 0028E0B0  40 82 00 0C */	bne .L_802C4AFC
/* 802C4AF4 0028E0B4  3B 80 00 20 */	li r28, 0x20
/* 802C4AF8 0028E0B8  48 00 00 88 */	b .L_802C4B80
.L_802C4AFC:
/* 802C4AFC 0028E0BC  3B 80 00 40 */	li r28, 0x40
/* 802C4B00 0028E0C0  48 00 00 80 */	b .L_802C4B80
.L_802C4B04:
/* 802C4B04 0028E0C4  54 80 04 3E */	clrlwi r0, r4, 16
/* 802C4B08 0028E0C8  28 00 01 00 */	cmplwi r0, 0x100
/* 802C4B0C 0028E0CC  41 80 00 08 */	blt .L_802C4B14
/* 802C4B10 0028E0D0  48 00 00 14 */	b .L_802C4B24
.L_802C4B14:
/* 802C4B14 0028E0D4  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 802C4B18 0028E0D8  54 80 0B FC */	clrlslwi r0, r4, 16, 1
/* 802C4B1C 0028E0DC  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802C4B20 0028E0E0  7C 03 02 2E */	lhzx r0, r3, r0
.L_802C4B24:
/* 802C4B24 0028E0E4  54 03 04 3E */	clrlwi r3, r0, 16
/* 802C4B28 0028E0E8  38 03 FF C9 */	addi r0, r3, -0x37
/* 802C4B2C 0028E0EC  54 04 04 3E */	clrlwi r4, r0, 16
.L_802C4B30:
/* 802C4B30 0028E0F0  7C 19 C0 40 */	cmplw r25, r24
/* 802C4B34 0028E0F4  40 81 00 08 */	ble .L_802C4B3C
/* 802C4B38 0028E0F8  93 D7 00 00 */	stw r30, 0x0(r23)
.L_802C4B3C:
/* 802C4B3C 0028E0FC  7F 39 89 D6 */	mullw r25, r25, r17
/* 802C4B40 0028E100  54 83 04 3E */	clrlwi r3, r4, 16
/* 802C4B44 0028E104  20 19 FF FF */	subfic r0, r25, -0x1
/* 802C4B48 0028E108  7C 03 00 40 */	cmplw r3, r0
/* 802C4B4C 0028E10C  40 81 00 08 */	ble .L_802C4B54
/* 802C4B50 0028E110  93 D7 00 00 */	stw r30, 0x0(r23)
.L_802C4B54:
/* 802C4B54 0028E114  54 80 04 3E */	clrlwi r0, r4, 16
/* 802C4B58 0028E118  7E 6C 9B 78 */	mr r12, r19
/* 802C4B5C 0028E11C  7E 83 A3 78 */	mr r3, r20
/* 802C4B60 0028E120  3B 80 00 10 */	li r28, 0x10
/* 802C4B64 0028E124  7F 39 02 14 */	add r25, r25, r0
/* 802C4B68 0028E128  38 80 00 00 */	li r4, 0x0
/* 802C4B6C 0028E12C  38 A0 00 00 */	li r5, 0x0
/* 802C4B70 0028E130  7D 89 03 A6 */	mtctr r12
/* 802C4B74 0028E134  3B 7B 00 01 */	addi r27, r27, 0x1
/* 802C4B78 0028E138  4E 80 04 21 */	bctrl
/* 802C4B7C 0028E13C  7C 64 1B 78 */	mr r4, r3
.L_802C4B80:
/* 802C4B80 0028E140  7C 1B 90 00 */	cmpw r27, r18
/* 802C4B84 0028E144  41 81 00 18 */	bgt .L_802C4B9C
/* 802C4B88 0028E148  54 80 04 3E */	clrlwi r0, r4, 16
/* 802C4B8C 0028E14C  2C 00 FF FF */	cmpwi r0, -0x1
/* 802C4B90 0028E150  41 82 00 0C */	beq .L_802C4B9C
/* 802C4B94 0028E154  57 80 06 75 */	rlwinm. r0, r28, 0, 25, 26
/* 802C4B98 0028E158  41 82 FC F0 */	beq .L_802C4888
.L_802C4B9C:
/* 802C4B9C 0028E15C  73 80 00 34 */	andi. r0, r28, 0x34
/* 802C4BA0 0028E160  40 82 00 10 */	bne .L_802C4BB0
/* 802C4BA4 0028E164  3B 20 00 00 */	li r25, 0x0
/* 802C4BA8 0028E168  93 35 00 00 */	stw r25, 0x0(r21)
/* 802C4BAC 0028E16C  48 00 00 10 */	b .L_802C4BBC
.L_802C4BB0:
/* 802C4BB0 0028E170  7C 7B D2 14 */	add r3, r27, r26
/* 802C4BB4 0028E174  38 03 FF FF */	addi r0, r3, -0x1
/* 802C4BB8 0028E178  90 15 00 00 */	stw r0, 0x0(r21)
.L_802C4BBC:
/* 802C4BBC 0028E17C  7E 6C 9B 78 */	mr r12, r19
/* 802C4BC0 0028E180  7E 83 A3 78 */	mr r3, r20
/* 802C4BC4 0028E184  54 84 04 3E */	clrlwi r4, r4, 16
/* 802C4BC8 0028E188  38 A0 00 01 */	li r5, 0x1
/* 802C4BCC 0028E18C  7D 89 03 A6 */	mtctr r12
/* 802C4BD0 0028E190  4E 80 04 21 */	bctrl
/* 802C4BD4 0028E194  7F 23 CB 78 */	mr r3, r25
/* 802C4BD8 0028E198  BA 21 00 14 */	lmw r17, 0x14(r1)
/* 802C4BDC 0028E19C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802C4BE0 0028E1A0  7C 08 03 A6 */	mtlr r0
/* 802C4BE4 0028E1A4  38 21 00 50 */	addi r1, r1, 0x50
/* 802C4BE8 0028E1A8  4E 80 00 20 */	blr
.endfn __wcstoul

.fn wcstol, global
/* 802C4BEC 0028E1AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802C4BF0 0028E1B0  7C 08 02 A6 */	mflr r0
/* 802C4BF4 0028E1B4  3C E0 80 00 */	lis r7, 0x8000
/* 802C4BF8 0028E1B8  3C C0 80 2C */	lis r6, __wStringRead@ha
/* 802C4BFC 0028E1BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C4C00 0028E1C0  38 00 00 00 */	li r0, 0x0
/* 802C4C04 0028E1C4  39 01 00 0C */	addi r8, r1, 0xc
/* 802C4C08 0028E1C8  39 21 00 08 */	addi r9, r1, 0x8
/* 802C4C0C 0028E1CC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802C4C10 0028E1D0  7C 9F 23 78 */	mr r31, r4
/* 802C4C14 0028E1D4  38 87 FF FF */	addi r4, r7, -0x1
/* 802C4C18 0028E1D8  38 E1 00 10 */	addi r7, r1, 0x10
/* 802C4C1C 0028E1DC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802C4C20 0028E1E0  7C 7E 1B 78 */	mr r30, r3
/* 802C4C24 0028E1E4  7C A3 2B 78 */	mr r3, r5
/* 802C4C28 0028E1E8  38 A6 6F 2C */	addi r5, r6, __wStringRead@l
/* 802C4C2C 0028E1EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C4C30 0028E1F0  38 C1 00 18 */	addi r6, r1, 0x18
/* 802C4C34 0028E1F4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C4C38 0028E1F8  4B FF FB 9D */	bl __wcstoul
/* 802C4C3C 0028E1FC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802C4C40 0028E200  41 82 00 14 */	beq .L_802C4C54
/* 802C4C44 0028E204  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802C4C48 0028E208  54 00 08 3C */	slwi r0, r0, 1
/* 802C4C4C 0028E20C  7C 1E 02 14 */	add r0, r30, r0
/* 802C4C50 0028E210  90 1F 00 00 */	stw r0, 0x0(r31)
.L_802C4C54:
/* 802C4C54 0028E214  80 01 00 08 */	lwz r0, 0x8(r1)
/* 802C4C58 0028E218  2C 00 00 00 */	cmpwi r0, 0x0
/* 802C4C5C 0028E21C  40 82 00 34 */	bne .L_802C4C90
/* 802C4C60 0028E220  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 802C4C64 0028E224  2C 05 00 00 */	cmpwi r5, 0x0
/* 802C4C68 0028E228  40 82 00 14 */	bne .L_802C4C7C
/* 802C4C6C 0028E22C  3C 80 80 00 */	lis r4, 0x8000
/* 802C4C70 0028E230  38 04 FF FF */	addi r0, r4, -0x1
/* 802C4C74 0028E234  7C 03 00 40 */	cmplw r3, r0
/* 802C4C78 0028E238  41 81 00 18 */	bgt .L_802C4C90
.L_802C4C7C:
/* 802C4C7C 0028E23C  2C 05 00 00 */	cmpwi r5, 0x0
/* 802C4C80 0028E240  41 82 00 38 */	beq .L_802C4CB8
/* 802C4C84 0028E244  3C 00 80 00 */	lis r0, 0x8000
/* 802C4C88 0028E248  7C 03 00 40 */	cmplw r3, r0
/* 802C4C8C 0028E24C  40 81 00 2C */	ble .L_802C4CB8
.L_802C4C90:
/* 802C4C90 0028E250  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 802C4C94 0028E254  38 00 00 22 */	li r0, 0x22
/* 802C4C98 0028E258  3C 60 80 00 */	lis r3, 0x8000
/* 802C4C9C 0028E25C  90 0D B3 B0 */	stw r0, errno@sda21(r13)
/* 802C4CA0 0028E260  7C 85 00 D0 */	neg r4, r5
/* 802C4CA4 0028E264  38 03 FF FF */	addi r0, r3, -0x1
/* 802C4CA8 0028E268  7C 83 2B 78 */	or r3, r4, r5
/* 802C4CAC 0028E26C  54 63 0F FE */	srwi r3, r3, 31
/* 802C4CB0 0028E270  7C 63 02 14 */	add r3, r3, r0
/* 802C4CB4 0028E274  48 00 00 10 */	b .L_802C4CC4
.L_802C4CB8:
/* 802C4CB8 0028E278  2C 05 00 00 */	cmpwi r5, 0x0
/* 802C4CBC 0028E27C  41 82 00 08 */	beq .L_802C4CC4
/* 802C4CC0 0028E280  7C 63 00 D0 */	neg r3, r3
.L_802C4CC4:
/* 802C4CC4 0028E284  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C4CC8 0028E288  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802C4CCC 0028E28C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802C4CD0 0028E290  7C 08 03 A6 */	mtlr r0
/* 802C4CD4 0028E294  38 21 00 30 */	addi r1, r1, 0x30
/* 802C4CD8 0028E298  4E 80 00 20 */	blr
.endfn wcstol
