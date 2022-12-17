.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_800AABD4
func_800AABD4:
/* 800AABD4 00074194  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 800AABD8 00074198  7C 08 02 A6 */	mflr r0
/* 800AABDC 0007419C  90 01 01 04 */	stw r0, 0x104(r1)
/* 800AABE0 000741A0  38 61 00 18 */	addi r3, r1, 0x18
/* 800AABE4 000741A4  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 800AABE8 000741A8  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 800AABEC 000741AC  7C 9E 23 78 */	mr r30, r4
/* 800AABF0 000741B0  48 3A B5 45 */	bl func_80456134
/* 800AABF4 000741B4  80 6D A5 94 */	lwz r3, lbl_80666714@sda21(r13)
/* 800AABF8 000741B8  38 81 00 18 */	addi r4, r1, 0x18
/* 800AABFC 000741BC  38 A0 00 00 */	li r5, 0
/* 800AAC00 000741C0  48 3E 57 4D */	bl func_8049034C
/* 800AAC04 000741C4  C0 22 8E 5C */	lfs f1, lbl_806691DC@sda21(r2)
/* 800AAC08 000741C8  38 61 00 18 */	addi r3, r1, 0x18
/* 800AAC0C 000741CC  C0 42 8E 58 */	lfs f2, lbl_806691D8@sda21(r2)
/* 800AAC10 000741D0  38 81 00 08 */	addi r4, r1, 8
/* 800AAC14 000741D4  C0 02 8E 60 */	lfs f0, lbl_806691E0@sda21(r2)
/* 800AAC18 000741D8  D0 41 00 08 */	stfs f2, 8(r1)
/* 800AAC1C 000741DC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800AAC20 000741E0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800AAC24 000741E4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800AAC28 000741E8  48 3A B8 79 */	bl func_804564A0
/* 800AAC2C 000741EC  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 800AAC30 000741F0  48 20 F3 FD */	bl __cvt_fp2unsigned
/* 800AAC34 000741F4  81 9E 00 00 */	lwz r12, 0(r30)
/* 800AAC38 000741F8  7C 7F 1B 78 */	mr r31, r3
/* 800AAC3C 000741FC  7F C3 F3 78 */	mr r3, r30
/* 800AAC40 00074200  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 800AAC44 00074204  7D 89 03 A6 */	mtctr r12
/* 800AAC48 00074208  4E 80 04 21 */	bctrl 
/* 800AAC4C 0007420C  3C 00 43 30 */	lis r0, 0x4330
/* 800AAC50 00074210  93 E1 00 EC */	stw r31, 0xec(r1)
/* 800AAC54 00074214  7C 64 1B 78 */	mr r4, r3
/* 800AAC58 00074218  C8 22 8E 68 */	lfd f1, lbl_806691E8@sda21(r2)
/* 800AAC5C 0007421C  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 800AAC60 00074220  38 61 00 18 */	addi r3, r1, 0x18
/* 800AAC64 00074224  38 A0 00 24 */	li r5, 0x24
/* 800AAC68 00074228  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 800AAC6C 0007422C  EC 20 08 28 */	fsubs f1, f0, f1
/* 800AAC70 00074230  48 3A CB 45 */	bl func_804577B4
/* 800AAC74 00074234  38 61 00 18 */	addi r3, r1, 0x18
/* 800AAC78 00074238  38 80 FF FF */	li r4, -1
/* 800AAC7C 0007423C  48 3A B5 31 */	bl func_804561AC
/* 800AAC80 00074240  80 01 01 04 */	lwz r0, 0x104(r1)
/* 800AAC84 00074244  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 800AAC88 00074248  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 800AAC8C 0007424C  7C 08 03 A6 */	mtlr r0
/* 800AAC90 00074250  38 21 01 00 */	addi r1, r1, 0x100
/* 800AAC94 00074254  4E 80 00 20 */	blr 

.global func_800AAC98
func_800AAC98:
/* 800AAC98 00074258  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800AAC9C 0007425C  7C 08 02 A6 */	mflr r0
/* 800AACA0 00074260  90 01 00 24 */	stw r0, 0x24(r1)
/* 800AACA4 00074264  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800AACA8 00074268  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800AACAC 0007426C  7C DE 33 78 */	mr r30, r6
/* 800AACB0 00074270  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800AACB4 00074274  7C BD 2B 78 */	mr r29, r5
/* 800AACB8 00074278  93 81 00 10 */	stw r28, 0x10(r1)
/* 800AACBC 0007427C  7C 9C 23 78 */	mr r28, r4
/* 800AACC0 00074280  C0 24 00 B8 */	lfs f1, 0xb8(r4)
/* 800AACC4 00074284  48 20 F3 69 */	bl __cvt_fp2unsigned
/* 800AACC8 00074288  81 9C 00 00 */	lwz r12, 0(r28)
/* 800AACCC 0007428C  7C 7F 1B 78 */	mr r31, r3
/* 800AACD0 00074290  7F 83 E3 78 */	mr r3, r28
/* 800AACD4 00074294  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 800AACD8 00074298  7D 89 03 A6 */	mtctr r12
/* 800AACDC 0007429C  4E 80 04 21 */	bctrl 
/* 800AACE0 000742A0  3C 00 43 30 */	lis r0, 0x4330
/* 800AACE4 000742A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800AACE8 000742A8  7C 64 1B 78 */	mr r4, r3
/* 800AACEC 000742AC  C8 22 8E 68 */	lfd f1, lbl_806691E8@sda21(r2)
/* 800AACF0 000742B0  90 01 00 08 */	stw r0, 8(r1)
/* 800AACF4 000742B4  7F A3 EB 78 */	mr r3, r29
/* 800AACF8 000742B8  7F C5 F3 78 */	mr r5, r30
/* 800AACFC 000742BC  C8 01 00 08 */	lfd f0, 8(r1)
/* 800AAD00 000742C0  EC 20 08 28 */	fsubs f1, f0, f1
/* 800AAD04 000742C4  4B FF A3 A9 */	bl func_800A50AC
/* 800AAD08 000742C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AAD0C 000742CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800AAD10 000742D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800AAD14 000742D4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800AAD18 000742D8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800AAD1C 000742DC  7C 08 03 A6 */	mtlr r0
/* 800AAD20 000742E0  38 21 00 20 */	addi r1, r1, 0x20
/* 800AAD24 000742E4  4E 80 00 20 */	blr 