.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn InitReaderFunc__Q34nw4r2ut4FontFQ34nw4r2ut12FontEncoding, global
/* 8042BFCC 003F558C  2C 04 00 02 */	cmpwi r4, 2
/* 8042BFD0 003F5590  3C A0 80 57 */	lis r5, lbl_8056E710@ha
/* 8042BFD4 003F5594  38 A5 E7 10 */	addi r5, r5, lbl_8056E710@l
/* 8042BFD8 003F5598  41 82 00 5C */	beq .L_8042C034
/* 8042BFDC 003F559C  40 80 00 78 */	bge .L_8042C054
/* 8042BFE0 003F55A0  2C 04 00 00 */	cmpwi r4, 0
/* 8042BFE4 003F55A4  41 82 00 10 */	beq .L_8042BFF4
/* 8042BFE8 003F55A8  40 80 00 2C */	bge .L_8042C014
/* 8042BFEC 003F55AC  48 00 00 68 */	b .L_8042C054
/* 8042BFF0 003F55B0  48 00 00 64 */	b .L_8042C054
.L_8042BFF4:
/* 8042BFF4 003F55B4  38 85 00 00 */	addi r4, r5, 0
/* 8042BFF8 003F55B8  80 A5 00 00 */	lwz r5, 0(r5)
/* 8042BFFC 003F55BC  80 04 00 04 */	lwz r0, 4(r4)
/* 8042C000 003F55C0  90 A3 00 04 */	stw r5, 4(r3)
/* 8042C004 003F55C4  90 03 00 08 */	stw r0, 8(r3)
/* 8042C008 003F55C8  80 04 00 08 */	lwz r0, 8(r4)
/* 8042C00C 003F55CC  90 03 00 0C */	stw r0, 0xc(r3)
/* 8042C010 003F55D0  4E 80 00 20 */	blr
.L_8042C014:
/* 8042C014 003F55D4  38 85 00 0C */	addi r4, r5, 0xc
/* 8042C018 003F55D8  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 8042C01C 003F55DC  80 04 00 04 */	lwz r0, 4(r4)
/* 8042C020 003F55E0  90 A3 00 04 */	stw r5, 4(r3)
/* 8042C024 003F55E4  90 03 00 08 */	stw r0, 8(r3)
/* 8042C028 003F55E8  80 04 00 08 */	lwz r0, 8(r4)
/* 8042C02C 003F55EC  90 03 00 0C */	stw r0, 0xc(r3)
/* 8042C030 003F55F0  4E 80 00 20 */	blr
.L_8042C034:
/* 8042C034 003F55F4  38 85 00 18 */	addi r4, r5, 0x18
/* 8042C038 003F55F8  80 A5 00 18 */	lwz r5, 0x18(r5)
/* 8042C03C 003F55FC  80 04 00 04 */	lwz r0, 4(r4)
/* 8042C040 003F5600  90 A3 00 04 */	stw r5, 4(r3)
/* 8042C044 003F5604  90 03 00 08 */	stw r0, 8(r3)
/* 8042C048 003F5608  80 04 00 08 */	lwz r0, 8(r4)
/* 8042C04C 003F560C  90 03 00 0C */	stw r0, 0xc(r3)
/* 8042C050 003F5610  4E 80 00 20 */	blr
.L_8042C054:
/* 8042C054 003F5614  38 85 00 24 */	addi r4, r5, 0x24
/* 8042C058 003F5618  80 A5 00 24 */	lwz r5, 0x24(r5)
/* 8042C05C 003F561C  80 04 00 04 */	lwz r0, 4(r4)
/* 8042C060 003F5620  90 A3 00 04 */	stw r5, 4(r3)
/* 8042C064 003F5624  90 03 00 08 */	stw r0, 8(r3)
/* 8042C068 003F5628  80 04 00 08 */	lwz r0, 8(r4)
/* 8042C06C 003F562C  90 03 00 0C */	stw r0, 0xc(r3)
/* 8042C070 003F5630  4E 80 00 20 */	blr 
.endfn InitReaderFunc__Q34nw4r2ut4FontFQ34nw4r2ut12FontEncoding


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8056E710
lbl_8056E710:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharUTF8__Q34nw4r2ut14CharStrmReaderFv
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharUTF16__Q34nw4r2ut14CharStrmReaderFv
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharSJIS__Q34nw4r2ut14CharStrmReaderFv
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharCP1252__Q34nw4r2ut14CharStrmReaderFv