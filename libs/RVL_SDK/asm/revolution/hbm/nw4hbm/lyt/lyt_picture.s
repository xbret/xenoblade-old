.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn __ct__Q36nw4hbm3lyt7PictureFPCQ46nw4hbm3lyt3res7PictureRCQ36nw4hbm3lyt11ResBlockSet, global
/* 80332730 002FBCF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80332734 002FBCF4  7C 08 02 A6 */	mflr r0
/* 80332738 002FBCF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033273C 002FBCFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80332740 002FBD00  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80332744 002FBD04  7C BE 2B 78 */	mr r30, r5
/* 80332748 002FBD08  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033274C 002FBD0C  7C 9D 23 78 */	mr r29, r4
/* 80332750 002FBD10  93 81 00 10 */	stw r28, 0x10(r1)
/* 80332754 002FBD14  7C 7C 1B 78 */	mr r28, r3
/* 80332758 002FBD18  4B FF EF E9 */	bl __ct__Q36nw4hbm3lyt4PaneFPCQ46nw4hbm3lyt3res4Pane
/* 8033275C 002FBD1C  3C 60 80 55 */	lis r3, __vt__Q36nw4hbm3lyt7Picture@ha
/* 80332760 002FBD20  3C 80 80 33 */	lis r4, __ct__Q36nw4hbm2ut5ColorFv@ha
/* 80332764 002FBD24  38 63 D9 38 */	addi r3, r3, __vt__Q36nw4hbm3lyt7Picture@l
/* 80332768 002FBD28  3C A0 80 33 */	lis r5, __dt__Q36nw4hbm2ut5ColorFv@ha
/* 8033276C 002FBD2C  90 7C 00 00 */	stw r3, 0(r28)
/* 80332770 002FBD30  38 7C 00 D4 */	addi r3, r28, 0xd4
/* 80332774 002FBD34  38 84 E8 00 */	addi r4, r4, __ct__Q36nw4hbm2ut5ColorFv@l
/* 80332778 002FBD38  38 A5 C5 20 */	addi r5, r5, __dt__Q36nw4hbm2ut5ColorFv@l
/* 8033277C 002FBD3C  38 C0 00 04 */	li r6, 4
/* 80332780 002FBD40  38 E0 00 04 */	li r7, 4
/* 80332784 002FBD44  4B F8 73 7D */	bl __construct_array
/* 80332788 002FBD48  38 7C 00 E4 */	addi r3, r28, 0xe4
/* 8033278C 002FBD4C  4B FF 9E D5 */	bl __ct__Q46nw4hbm3lyt6detail11TexCoordAryFv
/* 80332790 002FBD50  88 1D 00 5E */	lbz r0, 0x5e(r29)
/* 80332794 002FBD54  3B E0 00 08 */	li r31, 8
/* 80332798 002FBD58  28 00 00 08 */	cmplwi r0, 8
/* 8033279C 002FBD5C  41 81 00 08 */	bgt .L_803327A4
/* 803327A0 002FBD60  7C 1F 03 78 */	mr r31, r0
.L_803327A4:
/* 803327A4 002FBD64  57 E4 06 3F */	clrlwi. r4, r31, 0x18
/* 803327A8 002FBD68  41 82 00 0C */	beq .L_803327B4
/* 803327AC 002FBD6C  38 7C 00 E4 */	addi r3, r28, 0xe4
/* 803327B0 002FBD70  4B FF 9F 21 */	bl Reserve__Q46nw4hbm3lyt6detail11TexCoordAryFUc
.L_803327B4:
/* 803327B4 002FBD74  80 1D 00 4C */	lwz r0, 0x4c(r29)
/* 803327B8 002FBD78  57 E5 06 3F */	clrlwi. r5, r31, 0x18
/* 803327BC 002FBD7C  90 1C 00 D4 */	stw r0, 0xd4(r28)
/* 803327C0 002FBD80  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 803327C4 002FBD84  90 1C 00 D8 */	stw r0, 0xd8(r28)
/* 803327C8 002FBD88  80 1D 00 54 */	lwz r0, 0x54(r29)
/* 803327CC 002FBD8C  90 1C 00 DC */	stw r0, 0xdc(r28)
/* 803327D0 002FBD90  80 1D 00 58 */	lwz r0, 0x58(r29)
/* 803327D4 002FBD94  90 1C 00 E0 */	stw r0, 0xe0(r28)
/* 803327D8 002FBD98  41 82 00 1C */	beq .L_803327F4
/* 803327DC 002FBD9C  88 1C 00 E4 */	lbz r0, 0xe4(r28)
/* 803327E0 002FBDA0  2C 00 00 00 */	cmpwi r0, 0
/* 803327E4 002FBDA4  41 82 00 10 */	beq .L_803327F4
/* 803327E8 002FBDA8  38 7C 00 E4 */	addi r3, r28, 0xe4
/* 803327EC 002FBDAC  38 9D 00 60 */	addi r4, r29, 0x60
/* 803327F0 002FBDB0  4B FF A0 71 */	bl Copy__Q46nw4hbm3lyt6detail11TexCoordAryFPCvUc
.L_803327F4:
/* 803327F4 002FBDB4  3C 60 80 5D */	lis r3, mspAllocator__Q36nw4hbm3lyt6Layout@ha
/* 803327F8 002FBDB8  38 80 00 5C */	li r4, 0x5c
/* 803327FC 002FBDBC  80 63 D7 B8 */	lwz r3, mspAllocator__Q36nw4hbm3lyt6Layout@l(r3)
/* 80332800 002FBDC0  48 01 72 91 */	bl MEMAllocFromAllocator
/* 80332804 002FBDC4  2C 03 00 00 */	cmpwi r3, 0
/* 80332808 002FBDC8  41 82 00 2C */	beq .L_80332834
/* 8033280C 002FBDCC  A0 1D 00 5C */	lhz r0, 0x5c(r29)
/* 80332810 002FBDD0  80 BE 00 08 */	lwz r5, 8(r30)
/* 80332814 002FBDD4  54 00 10 3A */	slwi r0, r0, 2
/* 80332818 002FBDD8  7C 85 02 14 */	add r4, r5, r0
/* 8033281C 002FBDDC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80332820 002FBDE0  7C 85 02 14 */	add r4, r5, r0
/* 80332824 002FBDE4  41 82 00 0C */	beq .L_80332830
/* 80332828 002FBDE8  7F C5 F3 78 */	mr r5, r30
/* 8033282C 002FBDEC  4B FF BF E5 */	bl __ct__Q36nw4hbm3lyt8MaterialFPCQ46nw4hbm3lyt3res8MaterialRCQ36nw4hbm3lyt11ResBlockSet
.L_80332830:
/* 80332830 002FBDF0  90 7C 00 28 */	stw r3, 0x28(r28)
.L_80332834:
/* 80332834 002FBDF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80332838 002FBDF8  7F 83 E3 78 */	mr r3, r28
/* 8033283C 002FBDFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80332840 002FBE00  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80332844 002FBE04  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80332848 002FBE08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033284C 002FBE0C  7C 08 03 A6 */	mtlr r0
/* 80332850 002FBE10  38 21 00 20 */	addi r1, r1, 0x20
/* 80332854 002FBE14  4E 80 00 20 */	blr 
.endfn __ct__Q36nw4hbm3lyt7PictureFPCQ46nw4hbm3lyt3res7PictureRCQ36nw4hbm3lyt11ResBlockSet

.balign 16, 0
.fn __dt__Q36nw4hbm3lyt7PictureFv, global
/* 80332860 002FBE20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80332864 002FBE24  7C 08 02 A6 */	mflr r0
/* 80332868 002FBE28  2C 03 00 00 */	cmpwi r3, 0
/* 8033286C 002FBE2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80332870 002FBE30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80332874 002FBE34  7C 9F 23 78 */	mr r31, r4
/* 80332878 002FBE38  93 C1 00 08 */	stw r30, 8(r1)
/* 8033287C 002FBE3C  7C 7E 1B 78 */	mr r30, r3
/* 80332880 002FBE40  41 82 00 94 */	beq .L_80332914
/* 80332884 002FBE44  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 80332888 002FBE48  3C 80 80 55 */	lis r4, __vt__Q36nw4hbm3lyt7Picture@ha
/* 8033288C 002FBE4C  38 84 D9 38 */	addi r4, r4, __vt__Q36nw4hbm3lyt7Picture@l
/* 80332890 002FBE50  90 83 00 00 */	stw r4, 0(r3)
/* 80332894 002FBE54  2C 05 00 00 */	cmpwi r5, 0
/* 80332898 002FBE58  41 82 00 40 */	beq .L_803328D8
/* 8033289C 002FBE5C  88 05 00 54 */	lbz r0, 0x54(r5)
/* 803328A0 002FBE60  2C 00 00 00 */	cmpwi r0, 0
/* 803328A4 002FBE64  40 82 00 34 */	bne .L_803328D8
/* 803328A8 002FBE68  81 85 00 00 */	lwz r12, 0(r5)
/* 803328AC 002FBE6C  7C A3 2B 78 */	mr r3, r5
/* 803328B0 002FBE70  38 80 FF FF */	li r4, -1
/* 803328B4 002FBE74  81 8C 00 08 */	lwz r12, 8(r12)
/* 803328B8 002FBE78  7D 89 03 A6 */	mtctr r12
/* 803328BC 002FBE7C  4E 80 04 21 */	bctrl 
/* 803328C0 002FBE80  3C 60 80 5D */	lis r3, mspAllocator__Q36nw4hbm3lyt6Layout@ha
/* 803328C4 002FBE84  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 803328C8 002FBE88  80 63 D7 B8 */	lwz r3, mspAllocator__Q36nw4hbm3lyt6Layout@l(r3)
/* 803328CC 002FBE8C  48 01 71 D5 */	bl MEMFreeToAllocator
/* 803328D0 002FBE90  38 00 00 00 */	li r0, 0
/* 803328D4 002FBE94  90 1E 00 28 */	stw r0, 0x28(r30)
.L_803328D8:
/* 803328D8 002FBE98  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 803328DC 002FBE9C  4B FF 9D A5 */	bl Free__Q46nw4hbm3lyt6detail11TexCoordAryFv
/* 803328E0 002FBEA0  3C 80 80 33 */	lis r4, __dt__Q36nw4hbm2ut5ColorFv@ha
/* 803328E4 002FBEA4  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 803328E8 002FBEA8  38 84 C5 20 */	addi r4, r4, __dt__Q36nw4hbm2ut5ColorFv@l
/* 803328EC 002FBEAC  38 A0 00 04 */	li r5, 4
/* 803328F0 002FBEB0  38 C0 00 04 */	li r6, 4
/* 803328F4 002FBEB4  4B F8 73 05 */	bl __destroy_arr
/* 803328F8 002FBEB8  7F C3 F3 78 */	mr r3, r30
/* 803328FC 002FBEBC  38 80 00 00 */	li r4, 0
/* 80332900 002FBEC0  4B FF EF 61 */	bl __dt__Q36nw4hbm3lyt4PaneFv
/* 80332904 002FBEC4  2C 1F 00 00 */	cmpwi r31, 0
/* 80332908 002FBEC8  40 81 00 0C */	ble .L_80332914
/* 8033290C 002FBECC  7F C3 F3 78 */	mr r3, r30
/* 80332910 002FBED0  48 10 23 1D */	bl __dl__FPv
.L_80332914:
/* 80332914 002FBED4  7F C3 F3 78 */	mr r3, r30
/* 80332918 002FBED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033291C 002FBEDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80332920 002FBEE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80332924 002FBEE4  7C 08 03 A6 */	mtlr r0
/* 80332928 002FBEE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8033292C 002FBEEC  4E 80 00 20 */	blr 
.endfn __dt__Q36nw4hbm3lyt7PictureFv

.balign 16, 0
.fn Append__Q36nw4hbm3lyt7PictureFP10TPLPalette, global
/* 80332930 002FBEF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80332934 002FBEF4  7C 08 02 A6 */	mflr r0
/* 80332938 002FBEF8  38 A0 00 00 */	li r5, 0
/* 8033293C 002FBEFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80332940 002FBF00  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80332944 002FBF04  7C 7F 1B 78 */	mr r31, r3
/* 80332948 002FBF08  38 61 00 08 */	addi r3, r1, 8
/* 8033294C 002FBF0C  4B FF A9 95 */	bl InitGXTexObjFromTPL__Q36nw4hbm3lyt6detailFP9_GXTexObjP10TPLPaletteUl
/* 80332950 002FBF10  81 9F 00 00 */	lwz r12, 0(r31)
/* 80332954 002FBF14  7F E3 FB 78 */	mr r3, r31
/* 80332958 002FBF18  38 81 00 08 */	addi r4, r1, 8
/* 8033295C 002FBF1C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80332960 002FBF20  7D 89 03 A6 */	mtctr r12
/* 80332964 002FBF24  4E 80 04 21 */	bctrl 
/* 80332968 002FBF28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8033296C 002FBF2C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80332970 002FBF30  7C 08 03 A6 */	mtlr r0
/* 80332974 002FBF34  38 21 00 30 */	addi r1, r1, 0x30
/* 80332978 002FBF38  4E 80 00 20 */	blr 
.endfn Append__Q36nw4hbm3lyt7PictureFP10TPLPalette

.balign 16, 0
.fn Append__Q36nw4hbm3lyt7PictureFRC9_GXTexObj, global
/* 80332980 002FBF40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80332984 002FBF44  7C 08 02 A6 */	mflr r0
/* 80332988 002FBF48  90 01 00 34 */	stw r0, 0x34(r1)
/* 8033298C 002FBF4C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80332990 002FBF50  7C 7F 1B 78 */	mr r31, r3
/* 80332994 002FBF54  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80332998 002FBF58  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8033299C 002FBF5C  7C 9D 23 78 */	mr r29, r4
/* 803329A0 002FBF60  93 81 00 20 */	stw r28, 0x20(r1)
/* 803329A4 002FBF64  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 803329A8 002FBF68  80 05 00 50 */	lwz r0, 0x50(r5)
/* 803329AC 002FBF6C  80 65 00 4C */	lwz r3, 0x4c(r5)
/* 803329B0 002FBF70  54 1C 27 3E */	srwi r28, r0, 0x1c
/* 803329B4 002FBF74  54 60 27 3E */	srwi r0, r3, 0x1c
/* 803329B8 002FBF78  7C 1C 00 40 */	cmplw r28, r0
/* 803329BC 002FBF7C  40 80 01 14 */	bge .L_80332AD0
/* 803329C0 002FBF80  54 60 67 3E */	rlwinm r0, r3, 0xc, 0x1c, 0x1f
/* 803329C4 002FBF84  7C 1C 00 40 */	cmplw r28, r0
/* 803329C8 002FBF88  41 80 00 08 */	blt .L_803329D0
/* 803329CC 002FBF8C  48 00 01 04 */	b .L_80332AD0
.L_803329D0:
/* 803329D0 002FBF90  38 1C 00 01 */	addi r0, r28, 1
/* 803329D4 002FBF94  7C A3 2B 78 */	mr r3, r5
/* 803329D8 002FBF98  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 803329DC 002FBF9C  4B FF D7 B5 */	bl SetTextureNum__Q36nw4hbm3lyt8MaterialFUc
/* 803329E0 002FBFA0  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 803329E4 002FBFA4  7F 84 E3 78 */	mr r4, r28
/* 803329E8 002FBFA8  7F A5 EB 78 */	mr r5, r29
/* 803329EC 002FBFAC  4B FF DA 25 */	bl SetTexture__Q36nw4hbm3lyt8MaterialFUcRC9_GXTexObj
/* 803329F0 002FBFB0  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 803329F4 002FBFB4  80 03 00 50 */	lwz r0, 0x50(r3)
/* 803329F8 002FBFB8  54 04 27 3E */	srwi r4, r0, 0x1c
/* 803329FC 002FBFBC  4B FF D8 25 */	bl SetTexCoordGenNum__Q36nw4hbm3lyt8MaterialFUc
/* 80332A00 002FBFC0  3B A0 00 00 */	li r29, 0
/* 80332A04 002FBFC4  3B C0 00 01 */	li r30, 1
/* 80332A08 002FBFC8  38 80 00 04 */	li r4, 4
/* 80332A0C 002FBFCC  38 00 00 3C */	li r0, 0x3c
/* 80332A10 002FBFD0  9B A1 00 0B */	stb r29, 0xb(r1)
/* 80332A14 002FBFD4  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80332A18 002FBFD8  9B C1 00 08 */	stb r30, 8(r1)
/* 80332A1C 002FBFDC  98 81 00 09 */	stb r4, 9(r1)
/* 80332A20 002FBFE0  98 01 00 0A */	stb r0, 0xa(r1)
/* 80332A24 002FBFE4  80 01 00 08 */	lwz r0, 8(r1)
/* 80332A28 002FBFE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80332A2C 002FBFEC  4B FF D6 E5 */	bl GetTexCoordGenAry__Q36nw4hbm3lyt8MaterialFv
/* 80332A30 002FBFF0  57 80 15 BA */	rlwinm r0, r28, 2, 0x16, 0x1d
/* 80332A34 002FBFF4  88 81 00 0C */	lbz r4, 0xc(r1)
/* 80332A38 002FBFF8  7C A3 02 14 */	add r5, r3, r0
/* 80332A3C 002FBFFC  88 01 00 0D */	lbz r0, 0xd(r1)
/* 80332A40 002FC000  98 85 00 00 */	stb r4, 0(r5)
/* 80332A44 002FC004  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80332A48 002FC008  88 81 00 0E */	lbz r4, 0xe(r1)
/* 80332A4C 002FC00C  98 05 00 01 */	stb r0, 1(r5)
/* 80332A50 002FC010  88 01 00 0F */	lbz r0, 0xf(r1)
/* 80332A54 002FC014  98 85 00 02 */	stb r4, 2(r5)
/* 80332A58 002FC018  98 05 00 03 */	stb r0, 3(r5)
/* 80332A5C 002FC01C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80332A60 002FC020  80 04 00 50 */	lwz r0, 0x50(r4)
/* 80332A64 002FC024  54 04 27 3E */	srwi r4, r0, 0x1c
/* 80332A68 002FC028  4B FF 9C F9 */	bl SetSize__Q46nw4hbm3lyt6detail11TexCoordAryFUc
/* 80332A6C 002FC02C  3C 60 80 52 */	lis r3, lbl_80518AB8@ha
/* 80332A70 002FC030  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80332A74 002FC034  C0 23 8A B8 */	lfs f1, lbl_80518AB8@l(r3)
/* 80332A78 002FC038  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80332A7C 002FC03C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80332A80 002FC040  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80332A84 002FC044  40 82 00 14 */	bne .L_80332A98
/* 80332A88 002FC048  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80332A8C 002FC04C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80332A90 002FC050  40 82 00 08 */	bne .L_80332A98
/* 80332A94 002FC054  7F DD F3 78 */	mr r29, r30
.L_80332A98:
/* 80332A98 002FC058  2C 1D 00 00 */	cmpwi r29, 0
/* 80332A9C 002FC05C  41 82 00 34 */	beq .L_80332AD0
/* 80332AA0 002FC060  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80332AA4 002FC064  80 04 00 50 */	lwz r0, 0x50(r4)
/* 80332AA8 002FC068  54 00 27 3E */	srwi r0, r0, 0x1c
/* 80332AAC 002FC06C  28 00 00 01 */	cmplwi r0, 1
/* 80332AB0 002FC070  40 82 00 20 */	bne .L_80332AD0
/* 80332AB4 002FC074  38 61 00 10 */	addi r3, r1, 0x10
/* 80332AB8 002FC078  38 A0 00 00 */	li r5, 0
/* 80332ABC 002FC07C  4B FF EB 75 */	bl GetTextureSize__Q36nw4hbm3lyt6detailFPQ36nw4hbm3lyt8MaterialUc
/* 80332AC0 002FC080  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80332AC4 002FC084  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 80332AC8 002FC088  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80332ACC 002FC08C  D0 1F 00 50 */	stfs f0, 0x50(r31)
.L_80332AD0:
/* 80332AD0 002FC090  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80332AD4 002FC094  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80332AD8 002FC098  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80332ADC 002FC09C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80332AE0 002FC0A0  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80332AE4 002FC0A4  7C 08 03 A6 */	mtlr r0
/* 80332AE8 002FC0A8  38 21 00 30 */	addi r1, r1, 0x30
/* 80332AEC 002FC0AC  4E 80 00 20 */	blr 
.endfn Append__Q36nw4hbm3lyt7PictureFRC9_GXTexObj

.balign 16, 0
.fn GetVtxColor__Q36nw4hbm3lyt7PictureCFUl, global
/* 80332AF0 002FC0B0  54 A0 10 3A */	slwi r0, r5, 2
/* 80332AF4 002FC0B4  7C 84 02 14 */	add r4, r4, r0
/* 80332AF8 002FC0B8  80 04 00 D4 */	lwz r0, 0xd4(r4)
/* 80332AFC 002FC0BC  90 03 00 00 */	stw r0, 0(r3)
/* 80332B00 002FC0C0  4E 80 00 20 */	blr 
.endfn GetVtxColor__Q36nw4hbm3lyt7PictureCFUl

.balign 16, 0
.fn SetVtxColor__Q36nw4hbm3lyt7PictureFUlQ36nw4hbm2ut5Color, global
/* 80332B10 002FC0D0  54 80 10 3A */	slwi r0, r4, 2
/* 80332B14 002FC0D4  88 C5 00 00 */	lbz r6, 0(r5)
/* 80332B18 002FC0D8  7C 83 02 14 */	add r4, r3, r0
/* 80332B1C 002FC0DC  88 05 00 01 */	lbz r0, 1(r5)
/* 80332B20 002FC0E0  98 C4 00 D4 */	stb r6, 0xd4(r4)
/* 80332B24 002FC0E4  88 65 00 02 */	lbz r3, 2(r5)
/* 80332B28 002FC0E8  98 04 00 D5 */	stb r0, 0xd5(r4)
/* 80332B2C 002FC0EC  88 05 00 03 */	lbz r0, 3(r5)
/* 80332B30 002FC0F0  98 64 00 D6 */	stb r3, 0xd6(r4)
/* 80332B34 002FC0F4  98 04 00 D7 */	stb r0, 0xd7(r4)
/* 80332B38 002FC0F8  4E 80 00 20 */	blr 
.endfn SetVtxColor__Q36nw4hbm3lyt7PictureFUlQ36nw4hbm2ut5Color

.balign 16, 0
.fn GetVtxColorElement__Q36nw4hbm3lyt7PictureCFUl, global
/* 80332B40 002FC100  54 85 00 3A */	rlwinm r5, r4, 0, 0, 0x1d
/* 80332B44 002FC104  54 80 07 BE */	clrlwi r0, r4, 0x1e
/* 80332B48 002FC108  7C 63 2A 14 */	add r3, r3, r5
/* 80332B4C 002FC10C  7C 63 02 14 */	add r3, r3, r0
/* 80332B50 002FC110  88 63 00 D4 */	lbz r3, 0xd4(r3)
/* 80332B54 002FC114  4E 80 00 20 */	blr 
.endfn GetVtxColorElement__Q36nw4hbm3lyt7PictureCFUl

.balign 16, 0
.fn SetVtxColorElement__Q36nw4hbm3lyt7PictureFUlUc, global
/* 80332B60 002FC120  54 86 00 3A */	rlwinm r6, r4, 0, 0, 0x1d
/* 80332B64 002FC124  54 80 07 BE */	clrlwi r0, r4, 0x1e
/* 80332B68 002FC128  7C 63 32 14 */	add r3, r3, r6
/* 80332B6C 002FC12C  7C 63 02 14 */	add r3, r3, r0
/* 80332B70 002FC130  98 A3 00 D4 */	stb r5, 0xd4(r3)
/* 80332B74 002FC134  4E 80 00 20 */	blr 
.endfn SetVtxColorElement__Q36nw4hbm3lyt7PictureFUlUc

.balign 16, 0
.fn DrawSelf__Q36nw4hbm3lyt7PictureFRCQ36nw4hbm3lyt8DrawInfo, global
/* 80332B80 002FC140  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80332B84 002FC144  7C 08 02 A6 */	mflr r0
/* 80332B88 002FC148  90 01 00 24 */	stw r0, 0x24(r1)
/* 80332B8C 002FC14C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80332B90 002FC150  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80332B94 002FC154  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80332B98 002FC158  93 81 00 10 */	stw r28, 0x10(r1)
/* 80332B9C 002FC15C  7C 7C 1B 78 */	mr r28, r3
/* 80332BA0 002FC160  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80332BA4 002FC164  2C 00 00 00 */	cmpwi r0, 0
/* 80332BA8 002FC168  41 82 00 94 */	beq .L_80332C3C
/* 80332BAC 002FC16C  81 83 00 00 */	lwz r12, 0(r3)
/* 80332BB0 002FC170  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80332BB4 002FC174  7D 89 03 A6 */	mtctr r12
/* 80332BB8 002FC178  4E 80 04 21 */	bctrl 
/* 80332BBC 002FC17C  8B BC 00 CE */	lbz r29, 0xce(r28)
/* 80332BC0 002FC180  38 7C 00 D4 */	addi r3, r28, 0xd4
/* 80332BC4 002FC184  7F A4 EB 78 */	mr r4, r29
/* 80332BC8 002FC188  4B FF 9D 39 */	bl IsModulateVertexColor__Q36nw4hbm3lyt6detailFPQ36nw4hbm2ut5ColorUc
/* 80332BCC 002FC18C  7C 64 1B 78 */	mr r4, r3
/* 80332BD0 002FC190  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80332BD4 002FC194  7F A5 EB 78 */	mr r5, r29
/* 80332BD8 002FC198  81 83 00 00 */	lwz r12, 0(r3)
/* 80332BDC 002FC19C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80332BE0 002FC1A0  7D 89 03 A6 */	mtctr r12
/* 80332BE4 002FC1A4  4E 80 04 21 */	bctrl 
/* 80332BE8 002FC1A8  88 9C 00 E5 */	lbz r4, 0xe5(r28)
/* 80332BEC 002FC1AC  7C 7D 1B 78 */	mr r29, r3
/* 80332BF0 002FC1B0  4B FF 9D C1 */	bl SetVertexFormat__Q36nw4hbm3lyt6detailFbUc
/* 80332BF4 002FC1B4  2C 1D 00 00 */	cmpwi r29, 0
/* 80332BF8 002FC1B8  41 82 00 0C */	beq .L_80332C04
/* 80332BFC 002FC1BC  3B DC 00 D4 */	addi r30, r28, 0xd4
/* 80332C00 002FC1C0  48 00 00 08 */	b .L_80332C08
.L_80332C04:
/* 80332C04 002FC1C4  3B C0 00 00 */	li r30, 0
.L_80332C08:
/* 80332C08 002FC1C8  83 BC 00 E8 */	lwz r29, 0xe8(r28)
/* 80332C0C 002FC1CC  7F 83 E3 78 */	mr r3, r28
/* 80332C10 002FC1D0  8B FC 00 E5 */	lbz r31, 0xe5(r28)
/* 80332C14 002FC1D4  4B FF FA 1D */	bl GetVtxPos__Q36nw4hbm3lyt4PaneCFv
/* 80332C18 002FC1D8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80332C1C 002FC1DC  7F E5 FB 78 */	mr r5, r31
/* 80332C20 002FC1E0  7F A6 EB 78 */	mr r6, r29
/* 80332C24 002FC1E4  7F C7 F3 78 */	mr r7, r30
/* 80332C28 002FC1E8  90 61 00 08 */	stw r3, 8(r1)
/* 80332C2C 002FC1EC  38 61 00 08 */	addi r3, r1, 8
/* 80332C30 002FC1F0  38 9C 00 4C */	addi r4, r28, 0x4c
/* 80332C34 002FC1F4  89 1C 00 CE */	lbz r8, 0xce(r28)
/* 80332C38 002FC1F8  4B FF A3 C9 */	bl DrawQuad__Q36nw4hbm3lyt6detailFRCQ36nw4hbm4math4VEC2RCQ36nw4hbm3lyt4SizeUcPA4_CQ36nw4hbm4math4VEC2PCQ36nw4hbm2ut5ColorUc
.L_80332C3C:
/* 80332C3C 002FC1FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80332C40 002FC200  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80332C44 002FC204  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80332C48 002FC208  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80332C4C 002FC20C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80332C50 002FC210  7C 08 03 A6 */	mtlr r0
/* 80332C54 002FC214  38 21 00 20 */	addi r1, r1, 0x20
/* 80332C58 002FC218  4E 80 00 20 */	blr 
.endfn DrawSelf__Q36nw4hbm3lyt7PictureFRCQ36nw4hbm3lyt8DrawInfo

.balign 16, 0
.fn GetRuntimeTypeInfo__Q36nw4hbm3lyt7PictureCFv, global
/* 80332C60 002FC220  3C 60 80 5D */	lis r3, typeInfo__Q36nw4hbm3lyt7Picture@ha
/* 80332C64 002FC224  38 63 D7 C8 */	addi r3, r3, typeInfo__Q36nw4hbm3lyt7Picture@l
/* 80332C68 002FC228  4E 80 00 20 */	blr 
.endfn GetRuntimeTypeInfo__Q36nw4hbm3lyt7PictureCFv

.balign 16, 0
.fn "__sinit_\lyt_picture_cpp", local
/* 80332C70 002FC230  3C 80 80 5D */	lis r4, typeInfo__Q36nw4hbm3lyt4Pane@ha
/* 80332C74 002FC234  3C 60 80 5D */	lis r3, typeInfo__Q36nw4hbm3lyt7Picture@ha
/* 80332C78 002FC238  38 84 D7 C0 */	addi r4, r4, typeInfo__Q36nw4hbm3lyt4Pane@l
/* 80332C7C 002FC23C  90 83 D7 C8 */	stw r4, typeInfo__Q36nw4hbm3lyt7Picture@l(r3)
/* 80332C80 002FC240  4E 80 00 20 */	blr
.endfn "__sinit_\lyt_picture_cpp"

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.4byte "__sinit_\lyt_picture_cpp"

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_80518AB8, global
	.4byte 0
	.4byte 0
.endobj lbl_80518AB8

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__Q36nw4hbm3lyt7Picture, global
	.4byte __RTTI__Q36nw4hbm3lyt7Picture
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt7PictureFv
	.4byte GetRuntimeTypeInfo__Q36nw4hbm3lyt7PictureCFv
	.4byte CalculateMtx__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte Draw__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte DrawSelf__Q36nw4hbm3lyt7PictureFRCQ36nw4hbm3lyt8DrawInfo
	.4byte Animate__Q36nw4hbm3lyt4PaneFUl
	.4byte AnimateSelf__Q36nw4hbm3lyt4PaneFUl
	.4byte GetVtxColor__Q36nw4hbm3lyt7PictureCFUl
	.4byte SetVtxColor__Q36nw4hbm3lyt7PictureFUlQ36nw4hbm2ut5Color
	.4byte GetColorElement__Q36nw4hbm3lyt4PaneCFUl
	.4byte SetColorElement__Q36nw4hbm3lyt4PaneFUlUc
	.4byte GetVtxColorElement__Q36nw4hbm3lyt7PictureCFUl
	.4byte SetVtxColorElement__Q36nw4hbm3lyt7PictureFUlUc
	.4byte FindPaneByName__Q36nw4hbm3lyt4PaneFPCcb
	.4byte FindMaterialByName__Q36nw4hbm3lyt4PaneFPCcb
	.4byte BindAnimation__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformb
	.4byte UnbindAnimation__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformb
	.4byte UnbindAllAnimation__Q36nw4hbm3lyt4PaneFb
	.4byte UnbindAnimationSelf__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransform
	.4byte FindAnimationLink__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransform
	.4byte SetAnimationEnable__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformbb
	.4byte GetMaterial__Q36nw4hbm3lyt4PaneCFv
	.4byte LoadMtx__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte Append__Q36nw4hbm3lyt7PictureFP10TPLPalette
	.4byte Append__Q36nw4hbm3lyt7PictureFRC9_GXTexObj
.endobj __vt__Q36nw4hbm3lyt7Picture

.obj lbl_8054D9A4, global
	.asciz "nw4hbm::lyt::Picture"
	.balign 4
.endobj lbl_8054D9A4

.obj lbl_8054D9BC, global
	.4byte __RTTI__Q46nw4hbm3lyt6detail8PaneBase
	.4byte 0
	.4byte __RTTI__Q36nw4hbm3lyt4Pane
	.4byte 0
	.4byte 0
.endobj lbl_8054D9BC

.obj __RTTI__Q36nw4hbm3lyt7Picture, global
	.4byte lbl_8054D9A4
	.4byte lbl_8054D9BC
.endobj __RTTI__Q36nw4hbm3lyt7Picture

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.balign 8
.obj typeInfo__Q36nw4hbm3lyt7Picture, global
	.skip 0x4
.endobj typeInfo__Q36nw4hbm3lyt7Picture
