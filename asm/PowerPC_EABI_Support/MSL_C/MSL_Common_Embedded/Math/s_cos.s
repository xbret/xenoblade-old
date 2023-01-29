.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn cos, global
/* 802CABB4 00294174  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CABB8 00294178  7C 08 02 A6 */	mflr r0
/* 802CABBC 0029417C  3C 60 3F E9 */	lis r3, 0x3fe9
/* 802CABC0 00294180  C8 42 B9 D0 */	lfd f2, "@23"@sda21(r2)
/* 802CABC4 00294184  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 802CABC8 00294188  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CABCC 0029418C  38 03 21 FB */	addi r0, r3, 0x21fb
/* 802CABD0 00294190  80 61 00 08 */	lwz r3, 0x8(r1)
/* 802CABD4 00294194  54 63 00 7E */	clrlwi r3, r3, 1
/* 802CABD8 00294198  7C 03 00 00 */	cmpw r3, r0
/* 802CABDC 0029419C  41 81 00 0C */	bgt .L_802CABE8
/* 802CABE0 002941A0  4B FF E1 55 */	bl __kernel_cos
/* 802CABE4 002941A4  48 00 00 88 */	b .L_802CAC6C
.L_802CABE8:
/* 802CABE8 002941A8  3C 00 7F F0 */	lis r0, 0x7ff0
/* 802CABEC 002941AC  7C 03 00 00 */	cmpw r3, r0
/* 802CABF0 002941B0  41 80 00 0C */	blt .L_802CABFC
/* 802CABF4 002941B4  FC 21 08 28 */	fsub f1, f1, f1
/* 802CABF8 002941B8  48 00 00 74 */	b .L_802CAC6C
.L_802CABFC:
/* 802CABFC 002941BC  38 61 00 10 */	addi r3, r1, 0x10
/* 802CAC00 002941C0  4B FF DD B1 */	bl __ieee754_rem_pio2
/* 802CAC04 002941C4  54 60 07 BF */	clrlwi. r0, r3, 30
/* 802CAC08 002941C8  41 82 00 18 */	beq .L_802CAC20
/* 802CAC0C 002941CC  2C 00 00 01 */	cmpwi r0, 0x1
/* 802CAC10 002941D0  41 82 00 20 */	beq .L_802CAC30
/* 802CAC14 002941D4  2C 00 00 02 */	cmpwi r0, 0x2
/* 802CAC18 002941D8  41 82 00 30 */	beq .L_802CAC48
/* 802CAC1C 002941DC  48 00 00 40 */	b .L_802CAC5C
.L_802CAC20:
/* 802CAC20 002941E0  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 802CAC24 002941E4  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 802CAC28 002941E8  4B FF E1 0D */	bl __kernel_cos
/* 802CAC2C 002941EC  48 00 00 40 */	b .L_802CAC6C
.L_802CAC30:
/* 802CAC30 002941F0  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 802CAC34 002941F4  38 60 00 01 */	li r3, 0x1
/* 802CAC38 002941F8  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 802CAC3C 002941FC  4B FF F8 C1 */	bl __kernel_sin
/* 802CAC40 00294200  FC 20 08 50 */	fneg f1, f1
/* 802CAC44 00294204  48 00 00 28 */	b .L_802CAC6C
.L_802CAC48:
/* 802CAC48 00294208  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 802CAC4C 0029420C  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 802CAC50 00294210  4B FF E0 E5 */	bl __kernel_cos
/* 802CAC54 00294214  FC 20 08 50 */	fneg f1, f1
/* 802CAC58 00294218  48 00 00 14 */	b .L_802CAC6C
.L_802CAC5C:
/* 802CAC5C 0029421C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 802CAC60 00294220  38 60 00 01 */	li r3, 0x1
/* 802CAC64 00294224  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 802CAC68 00294228  4B FF F8 95 */	bl __kernel_sin
.L_802CAC6C:
/* 802CAC6C 0029422C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CAC70 00294230  7C 08 03 A6 */	mtlr r0
/* 802CAC74 00294234  38 21 00 20 */	addi r1, r1, 0x20
/* 802CAC78 00294238  4E 80 00 20 */	blr
.endfn cos

# 0x8066BD50 - 0x8066BD58
.section .sdata2, "a"
.balign 8

.obj "@23", local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj "@23"
