.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CMenuFade, global
/* 801135E0 000DCBA0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801135E4 000DCBA4  7C 08 02 A6 */	mflr r0
/* 801135E8 000DCBA8  90 01 00 54 */	stw r0, 0x54(r1)
/* 801135EC 000DCBAC  39 61 00 20 */	addi r11, r1, 0x20
/* 801135F0 000DCBB0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801135F4 000DCBB4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801135F8 000DCBB8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 801135FC 000DCBBC  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 80113600 000DCBC0  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 80113604 000DCBC4  F3 A1 00 28 */	psq_st f29, 40(r1), 0, qr0
/* 80113608 000DCBC8  48 1A 6B 4D */	bl _savegpr_27
/* 8011360C 000DCBCC  FF A0 08 90 */	fmr f29, f1
/* 80113610 000DCBD0  7C 7B 1B 78 */	mr r27, r3
/* 80113614 000DCBD4  FF C0 10 90 */	fmr f30, f2
/* 80113618 000DCBD8  7C 9C 23 78 */	mr r28, r4
/* 8011361C 000DCBDC  FF E0 18 90 */	fmr f31, f3
/* 80113620 000DCBE0  7C BD 2B 78 */	mr r29, r5
/* 80113624 000DCBE4  7C DE 33 78 */	mr r30, r6
/* 80113628 000DCBE8  48 33 13 F1 */	bl __ct__8CProcessFv
/* 8011362C 000DCBEC  3C 60 80 53 */	lis r3, __vt__CTTask_IUICf@ha
/* 80113630 000DCBF0  3C A0 80 53 */	lis r5, __vt__CMenuFade@ha
/* 80113634 000DCBF4  38 63 F7 40 */	addi r3, r3, __vt__CTTask_IUICf@l
/* 80113638 000DCBF8  90 7B 00 10 */	stw r3, 0x10(r27)
/* 8011363C 000DCBFC  3D 00 80 51 */	lis r8, lbl_8050CE10@ha
/* 80113640 000DCC00  38 A5 FD 10 */	addi r5, r5, __vt__CMenuFade@l
/* 80113644 000DCC04  84 C8 CE 10 */	lwzu r6, lbl_8050CE10@l(r8)
/* 80113648 000DCC08  38 85 00 24 */	addi r4, r5, 0x24
/* 8011364C 000DCC0C  3B E0 00 00 */	li r31, 0
/* 80113650 000DCC10  38 7B 00 64 */	addi r3, r27, 0x64
/* 80113654 000DCC14  80 08 00 04 */	lwz r0, 4(r8)
/* 80113658 000DCC18  90 1B 00 40 */	stw r0, 0x40(r27)
/* 8011365C 000DCC1C  38 05 00 AC */	addi r0, r5, 0xac
/* 80113660 000DCC20  90 DB 00 3C */	stw r6, 0x3c(r27)
/* 80113664 000DCC24  80 C8 00 08 */	lwz r6, 8(r8)
/* 80113668 000DCC28  90 DB 00 44 */	stw r6, 0x44(r27)
/* 8011366C 000DCC2C  80 E8 00 00 */	lwz r7, 0(r8)
/* 80113670 000DCC30  80 C8 00 04 */	lwz r6, 4(r8)
/* 80113674 000DCC34  90 DB 00 4C */	stw r6, 0x4c(r27)
/* 80113678 000DCC38  90 FB 00 48 */	stw r7, 0x48(r27)
/* 8011367C 000DCC3C  80 C8 00 08 */	lwz r6, 8(r8)
/* 80113680 000DCC40  90 DB 00 50 */	stw r6, 0x50(r27)
/* 80113684 000DCC44  9B FB 00 54 */	stb r31, 0x54(r27)
/* 80113688 000DCC48  9B FB 00 55 */	stb r31, 0x55(r27)
/* 8011368C 000DCC4C  90 BB 00 10 */	stw r5, 0x10(r27)
/* 80113690 000DCC50  90 9B 00 58 */	stw r4, 0x58(r27)
/* 80113694 000DCC54  90 1B 00 5C */	stw r0, 0x5c(r27)
/* 80113698 000DCC58  93 9B 00 60 */	stw r28, 0x60(r27)
/* 8011369C 000DCC5C  48 34 BE C9 */	bl __ct__8045F564
/* 801136A0 000DCC60  C0 02 95 A0 */	lfs f0, float_80669920@sda21(r2)
/* 801136A4 000DCC64  38 00 00 01 */	li r0, 1
/* 801136A8 000DCC68  93 FB 00 78 */	stw r31, 0x78(r27)
/* 801136AC 000DCC6C  7F 63 DB 78 */	mr r3, r27
/* 801136B0 000DCC70  D0 1B 00 7C */	stfs f0, 0x7c(r27)
/* 801136B4 000DCC74  D3 BB 00 80 */	stfs f29, 0x80(r27)
/* 801136B8 000DCC78  D3 DB 00 84 */	stfs f30, 0x84(r27)
/* 801136BC 000DCC7C  D3 FB 00 88 */	stfs f31, 0x88(r27)
/* 801136C0 000DCC80  93 FB 00 8C */	stw r31, 0x8c(r27)
/* 801136C4 000DCC84  93 BB 00 90 */	stw r29, 0x90(r27)
/* 801136C8 000DCC88  98 1B 00 94 */	stb r0, 0x94(r27)
/* 801136CC 000DCC8C  93 DB 00 98 */	stw r30, 0x98(r27)
/* 801136D0 000DCC90  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 801136D4 000DCC94  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801136D8 000DCC98  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 801136DC 000DCC9C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 801136E0 000DCCA0  E3 A1 00 28 */	psq_l f29, 40(r1), 0, qr0
/* 801136E4 000DCCA4  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 801136E8 000DCCA8  39 61 00 20 */	addi r11, r1, 0x20
/* 801136EC 000DCCAC  48 1A 6A B5 */	bl _restgpr_27
/* 801136F0 000DCCB0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801136F4 000DCCB4  7C 08 03 A6 */	mtlr r0
/* 801136F8 000DCCB8  38 21 00 50 */	addi r1, r1, 0x50
/* 801136FC 000DCCBC  4E 80 00 20 */	blr
.endfn __ct__CMenuFade

.fn __dt__CMenuFade, global
/* 80113700 000DCCC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80113704 000DCCC4  7C 08 02 A6 */	mflr r0
/* 80113708 000DCCC8  2C 03 00 00 */	cmpwi r3, 0
/* 8011370C 000DCCCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80113710 000DCCD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80113714 000DCCD4  7C 9F 23 78 */	mr r31, r4
/* 80113718 000DCCD8  93 C1 00 08 */	stw r30, 8(r1)
/* 8011371C 000DCCDC  7C 7E 1B 78 */	mr r30, r3
/* 80113720 000DCCE0  41 82 00 38 */	beq .L_80113758
/* 80113724 000DCCE4  38 80 FF FF */	li r4, -1
/* 80113728 000DCCE8  38 63 00 64 */	addi r3, r3, 0x64
/* 8011372C 000DCCEC  48 34 BE 55 */	bl __dt__8045F580
/* 80113730 000DCCF0  2C 1E 00 00 */	cmpwi r30, 0
/* 80113734 000DCCF4  41 82 00 14 */	beq .L_80113748
/* 80113738 000DCCF8  41 82 00 10 */	beq .L_80113748
/* 8011373C 000DCCFC  7F C3 F3 78 */	mr r3, r30
/* 80113740 000DCD00  38 80 00 00 */	li r4, 0
/* 80113744 000DCD04  48 33 13 F5 */	bl __dt__CProcess
.L_80113748:
/* 80113748 000DCD08  2C 1F 00 00 */	cmpwi r31, 0
/* 8011374C 000DCD0C  40 81 00 0C */	ble .L_80113758
/* 80113750 000DCD10  7F C3 F3 78 */	mr r3, r30
/* 80113754 000DCD14  48 32 14 D9 */	bl __dl__FPv
.L_80113758:
/* 80113758 000DCD18  7F C3 F3 78 */	mr r3, r30
/* 8011375C 000DCD1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80113760 000DCD20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80113764 000DCD24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80113768 000DCD28  7C 08 03 A6 */	mtlr r0
/* 8011376C 000DCD2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80113770 000DCD30  4E 80 00 20 */	blr 
.endfn __dt__CMenuFade

.fn func_80113774, global
/* 80113774 000DCD34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80113778 000DCD38  7C 08 02 A6 */	mflr r0
/* 8011377C 000DCD3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80113780 000DCD40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80113784 000DCD44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80113788 000DCD48  7C 7E 1B 78 */	mr r30, r3
/* 8011378C 000DCD4C  48 32 0C 15 */	bl func_804343A0
/* 80113790 000DCD50  3F E0 80 50 */	lis r31, CMenuFade_strpool@ha
/* 80113794 000DCD54  7C 64 1B 78 */	mr r4, r3
/* 80113798 000DCD58  38 7E 00 64 */	addi r3, r30, 0x64
/* 8011379C 000DCD5C  38 A0 40 00 */	li r5, 0x4000
/* 801137A0 000DCD60  38 DF 96 F0 */	addi r6, r31, CMenuFade_strpool@l
/* 801137A4 000DCD64  38 E0 00 00 */	li r7, 0
/* 801137A8 000DCD68  48 34 BE D9 */	bl func_8045F680
/* 801137AC 000DCD6C  38 61 00 08 */	addi r3, r1, 8
/* 801137B0 000DCD70  38 9E 00 64 */	addi r4, r30, 0x64
/* 801137B4 000DCD74  48 34 C0 A5 */	bl func_8045F858
/* 801137B8 000DCD78  48 02 1E 3D */	bl func_801355F4
/* 801137BC 000DCD7C  3B FF 96 F0 */	addi r31, r31, CMenuFade_strpool@l
/* 801137C0 000DCD80  7C 64 1B 78 */	mr r4, r3
/* 801137C4 000DCD84  38 7E 00 74 */	addi r3, r30, 0x74
/* 801137C8 000DCD88  38 BF 00 0A */	addi r5, r31, 0xa
/* 801137CC 000DCD8C  48 02 36 B9 */	bl func_80136E84
/* 801137D0 000DCD90  48 02 1E 25 */	bl func_801355F4
/* 801137D4 000DCD94  7C 65 1B 78 */	mr r5, r3
/* 801137D8 000DCD98  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 801137DC 000DCD9C  38 9E 00 78 */	addi r4, r30, 0x78
/* 801137E0 000DCDA0  38 DF 00 18 */	addi r6, r31, 0x18
/* 801137E4 000DCDA4  48 02 37 25 */	bl func_80136F08
/* 801137E8 000DCDA8  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 801137EC 000DCDAC  38 A0 00 01 */	li r5, 1
/* 801137F0 000DCDB0  80 9E 00 78 */	lwz r4, 0x78(r30)
/* 801137F4 000DCDB4  81 83 00 00 */	lwz r12, 0(r3)
/* 801137F8 000DCDB8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801137FC 000DCDBC  7D 89 03 A6 */	mtctr r12
/* 80113800 000DCDC0  4E 80 04 21 */	bctrl 
/* 80113804 000DCDC4  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 80113808 000DCDC8  48 2F 51 B9 */	bl GetFrameSize__Q34nw4r3lyt13AnimTransformCFv
/* 8011380C 000DCDCC  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80113810 000DCDD0  3C 00 43 30 */	lis r0, 0x4330
/* 80113814 000DCDD4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80113818 000DCDD8  C8 62 95 B0 */	lfd f3, double_80669930@sda21(r2)
/* 8011381C 000DCDDC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80113820 000DCDE0  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80113824 000DCDE4  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 80113828 000DCDE8  C0 02 95 A0 */	lfs f0, float_80669920@sda21(r2)
/* 8011382C 000DCDEC  EC 62 18 28 */	fsubs f3, f2, f3
/* 80113830 000DCDF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80113834 000DCDF4  40 80 00 0C */	bge .L_80113840
/* 80113838 000DCDF8  C0 42 95 A4 */	lfs f2, float_80669924@sda21(r2)
/* 8011383C 000DCDFC  48 00 00 08 */	b .L_80113844
.L_80113840:
/* 80113840 000DCE00  EC 43 08 24 */	fdivs f2, f3, f1
.L_80113844:
/* 80113844 000DCE04  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80113848 000DCE08  C0 02 95 A0 */	lfs f0, float_80669920@sda21(r2)
/* 8011384C 000DCE0C  D0 5E 00 80 */	stfs f2, 0x80(r30)
/* 80113850 000DCE10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80113854 000DCE14  40 80 00 0C */	bge .L_80113860
/* 80113858 000DCE18  C0 02 95 A8 */	lfs f0, float_80669928@sda21(r2)
/* 8011385C 000DCE1C  D0 1E 00 84 */	stfs f0, 0x84(r30)
.L_80113860:
/* 80113860 000DCE20  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 80113864 000DCE24  C0 02 95 A0 */	lfs f0, float_80669920@sda21(r2)
/* 80113868 000DCE28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011386C 000DCE2C  40 80 00 0C */	bge .L_80113878
/* 80113870 000DCE30  C0 02 95 A4 */	lfs f0, float_80669924@sda21(r2)
/* 80113874 000DCE34  48 00 00 08 */	b .L_8011387C
.L_80113878:
/* 80113878 000DCE38  EC 03 08 24 */	fdivs f0, f3, f1
.L_8011387C:
/* 8011387C 000DCE3C  80 1E 00 90 */	lwz r0, 0x90(r30)
/* 80113880 000DCE40  D0 1E 00 88 */	stfs f0, 0x88(r30)
/* 80113884 000DCE44  2C 00 00 00 */	cmpwi r0, 0
/* 80113888 000DCE48  41 82 00 18 */	beq .L_801138A0
/* 8011388C 000DCE4C  2C 00 00 01 */	cmpwi r0, 1
/* 80113890 000DCE50  41 82 00 1C */	beq .L_801138AC
/* 80113894 000DCE54  2C 00 00 02 */	cmpwi r0, 2
/* 80113898 000DCE58  41 82 00 20 */	beq .L_801138B8
/* 8011389C 000DCE5C  48 00 00 4C */	b .L_801138E8
.L_801138A0:
/* 801138A0 000DCE60  C0 02 95 A0 */	lfs f0, float_80669920@sda21(r2)
/* 801138A4 000DCE64  D0 1E 00 7C */	stfs f0, 0x7c(r30)
/* 801138A8 000DCE68  48 00 00 40 */	b .L_801138E8
.L_801138AC:
/* 801138AC 000DCE6C  C0 02 95 A0 */	lfs f0, float_80669920@sda21(r2)
/* 801138B0 000DCE70  D0 1E 00 7C */	stfs f0, 0x7c(r30)
/* 801138B4 000DCE74  48 00 00 34 */	b .L_801138E8
.L_801138B8:
/* 801138B8 000DCE78  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 801138BC 000DCE7C  48 2F 51 05 */	bl GetFrameSize__Q34nw4r3lyt13AnimTransformCFv
/* 801138C0 000DCE80  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 801138C4 000DCE84  3C 00 43 30 */	lis r0, 0x4330
/* 801138C8 000DCE88  90 61 00 14 */	stw r3, 0x14(r1)
/* 801138CC 000DCE8C  C8 42 95 B0 */	lfd f2, double_80669930@sda21(r2)
/* 801138D0 000DCE90  90 01 00 10 */	stw r0, 0x10(r1)
/* 801138D4 000DCE94  C0 02 95 A4 */	lfs f0, float_80669924@sda21(r2)
/* 801138D8 000DCE98  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 801138DC 000DCE9C  EC 21 10 28 */	fsubs f1, f1, f2
/* 801138E0 000DCEA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 801138E4 000DCEA4  D0 1E 00 7C */	stfs f0, 0x7c(r30)
.L_801138E8:
/* 801138E8 000DCEA8  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 801138EC 000DCEAC  2C 00 00 00 */	cmpwi r0, 0
/* 801138F0 000DCEB0  41 82 00 10 */	beq .L_80113900
/* 801138F4 000DCEB4  2C 00 00 01 */	cmpwi r0, 1
/* 801138F8 000DCEB8  41 82 00 24 */	beq .L_8011391C
/* 801138FC 000DCEBC  48 00 00 38 */	b .L_80113934
.L_80113900:
/* 80113900 000DCEC0  3C 80 80 50 */	lis r4, CMenuFade_strpool@ha
/* 80113904 000DCEC4  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 80113908 000DCEC8  38 84 96 F0 */	addi r4, r4, CMenuFade_strpool@l
/* 8011390C 000DCECC  38 A0 00 FF */	li r5, 0xff
/* 80113910 000DCED0  38 84 00 26 */	addi r4, r4, 0x26
/* 80113914 000DCED4  48 02 42 31 */	bl func_80137B44
/* 80113918 000DCED8  48 00 00 1C */	b .L_80113934
.L_8011391C:
/* 8011391C 000DCEDC  3C 80 80 50 */	lis r4, CMenuFade_strpool@ha
/* 80113920 000DCEE0  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 80113924 000DCEE4  38 84 96 F0 */	addi r4, r4, CMenuFade_strpool@l
/* 80113928 000DCEE8  38 A0 FF FF */	li r5, -1
/* 8011392C 000DCEEC  38 84 00 26 */	addi r4, r4, 0x26
/* 80113930 000DCEF0  48 02 42 15 */	bl func_80137B44
.L_80113934:
/* 80113934 000DCEF4  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 80113938 000DCEF8  38 80 00 00 */	li r4, 0
/* 8011393C 000DCEFC  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80113940 000DCF00  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80113944 000DCF04  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 80113948 000DCF08  81 83 00 00 */	lwz r12, 0(r3)
/* 8011394C 000DCF0C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80113950 000DCF10  7D 89 03 A6 */	mtctr r12
/* 80113954 000DCF14  4E 80 04 21 */	bctrl 
/* 80113958 000DCF18  2C 1E 00 00 */	cmpwi r30, 0
/* 8011395C 000DCF1C  7F C4 F3 78 */	mr r4, r30
/* 80113960 000DCF20  41 82 00 08 */	beq .L_80113968
/* 80113964 000DCF24  38 9E 00 5C */	addi r4, r30, 0x5c
.L_80113968:
/* 80113968 000DCF28  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 8011396C 000DCF2C  38 A0 00 0D */	li r5, 0xd
/* 80113970 000DCF30  38 C0 00 00 */	li r6, 0
/* 80113974 000DCF34  48 38 25 41 */	bl func_80495EB4
/* 80113978 000DCF38  38 7E 00 64 */	addi r3, r30, 0x64
/* 8011397C 000DCF3C  48 34 BE 95 */	bl func_8045F810
/* 80113980 000DCF40  38 61 00 08 */	addi r3, r1, 8
/* 80113984 000DCF44  38 80 FF FF */	li r4, -1
/* 80113988 000DCF48  48 34 BF 41 */	bl __dt__8045F8C8
/* 8011398C 000DCF4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80113990 000DCF50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80113994 000DCF54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80113998 000DCF58  7C 08 03 A6 */	mtlr r0
/* 8011399C 000DCF5C  38 21 00 20 */	addi r1, r1, 0x20
/* 801139A0 000DCF60  4E 80 00 20 */	blr 
.endfn func_80113774

.fn func_801139A4, global
/* 801139A4 000DCF64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801139A8 000DCF68  7C 08 02 A6 */	mflr r0
/* 801139AC 000DCF6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801139B0 000DCF70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801139B4 000DCF74  7C 7F 1B 78 */	mr r31, r3
/* 801139B8 000DCF78  48 33 50 8D */	bl func_80448A44
/* 801139BC 000DCF7C  2C 1F 00 00 */	cmpwi r31, 0
/* 801139C0 000DCF80  7F E4 FB 78 */	mr r4, r31
/* 801139C4 000DCF84  41 82 00 08 */	beq .L_801139CC
/* 801139C8 000DCF88  38 9F 00 5C */	addi r4, r31, 0x5c
.L_801139CC:
/* 801139CC 000DCF8C  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 801139D0 000DCF90  48 38 25 81 */	bl func_80495F50
/* 801139D4 000DCF94  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 801139D8 000DCF98  2C 03 00 00 */	cmpwi r3, 0
/* 801139DC 000DCF9C  41 82 00 24 */	beq .L_80113A00
/* 801139E0 000DCFA0  41 82 00 18 */	beq .L_801139F8
/* 801139E4 000DCFA4  81 83 00 00 */	lwz r12, 0(r3)
/* 801139E8 000DCFA8  38 80 00 01 */	li r4, 1
/* 801139EC 000DCFAC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801139F0 000DCFB0  7D 89 03 A6 */	mtctr r12
/* 801139F4 000DCFB4  4E 80 04 21 */	bctrl 
.L_801139F8:
/* 801139F8 000DCFB8  38 00 00 00 */	li r0, 0
/* 801139FC 000DCFBC  90 1F 00 74 */	stw r0, 0x74(r31)
.L_80113A00:
/* 80113A00 000DCFC0  38 7F 00 64 */	addi r3, r31, 0x64
/* 80113A04 000DCFC4  48 34 BD 75 */	bl func_8045F778
/* 80113A08 000DCFC8  38 00 00 00 */	li r0, 0
/* 80113A0C 000DCFCC  90 0D A7 18 */	stw r0, lbl_80666898@sda21(r13)
/* 80113A10 000DCFD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80113A14 000DCFD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80113A18 000DCFD8  7C 08 03 A6 */	mtlr r0
/* 80113A1C 000DCFDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80113A20 000DCFE0  4E 80 00 20 */	blr 
.endfn func_801139A4

.fn func_80113A24, global
/* 80113A24 000DCFE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80113A28 000DCFE8  7C 08 02 A6 */	mflr r0
/* 80113A2C 000DCFEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80113A30 000DCFF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80113A34 000DCFF4  7C 7F 1B 78 */	mr r31, r3
/* 80113A38 000DCFF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80113A3C 000DCFFC  4B F2 CA AD */	bl func_800404E8
/* 80113A40 000DD000  4B F2 EC B1 */	bl func_800426F0
/* 80113A44 000DD004  2C 03 00 00 */	cmpwi r3, 0
/* 80113A48 000DD008  40 82 01 98 */	bne .L_80113BE0
/* 80113A4C 000DD00C  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 80113A50 000DD010  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 80113A54 000DD014  41 82 00 08 */	beq .L_80113A5C
/* 80113A58 000DD018  48 00 01 88 */	b .L_80113BE0
.L_80113A5C:
/* 80113A5C 000DD01C  80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 80113A60 000DD020  2C 00 00 00 */	cmpwi r0, 0
/* 80113A64 000DD024  41 82 00 18 */	beq .L_80113A7C
/* 80113A68 000DD028  2C 00 00 01 */	cmpwi r0, 1
/* 80113A6C 000DD02C  41 82 00 B0 */	beq .L_80113B1C
/* 80113A70 000DD030  2C 00 00 02 */	cmpwi r0, 2
/* 80113A74 000DD034  41 82 01 1C */	beq .L_80113B90
/* 80113A78 000DD038  48 00 01 68 */	b .L_80113BE0
.L_80113A7C:
/* 80113A7C 000DD03C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80113A80 000DD040  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80113A84 000DD044  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80113A88 000DD048  EC 01 00 2A */	fadds f0, f1, f0
/* 80113A8C 000DD04C  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 80113A90 000DD050  48 2F 4F 31 */	bl GetFrameSize__Q34nw4r3lyt13AnimTransformCFv
/* 80113A94 000DD054  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80113A98 000DD058  3F C0 43 30 */	lis r30, 0x4330
/* 80113A9C 000DD05C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80113AA0 000DD060  C8 42 95 B0 */	lfd f2, double_80669930@sda21(r2)
/* 80113AA4 000DD064  93 C1 00 08 */	stw r30, 8(r1)
/* 80113AA8 000DD068  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80113AAC 000DD06C  C8 21 00 08 */	lfd f1, 8(r1)
/* 80113AB0 000DD070  EC 21 10 28 */	fsubs f1, f1, f2
/* 80113AB4 000DD074  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80113AB8 000DD078  4C 41 13 82 */	cror 2, 1, 2
/* 80113ABC 000DD07C  40 82 00 38 */	bne .L_80113AF4
/* 80113AC0 000DD080  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80113AC4 000DD084  48 2F 4E FD */	bl GetFrameSize__Q34nw4r3lyt13AnimTransformCFv
/* 80113AC8 000DD088  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80113ACC 000DD08C  38 00 00 01 */	li r0, 1
/* 80113AD0 000DD090  38 63 FF FF */	addi r3, r3, -1
/* 80113AD4 000DD094  93 C1 00 08 */	stw r30, 8(r1)
/* 80113AD8 000DD098  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80113ADC 000DD09C  C8 22 95 B8 */	lfd f1, double_80669938@sda21(r2)
/* 80113AE0 000DD0A0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80113AE4 000DD0A4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80113AE8 000DD0A8  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 80113AEC 000DD0AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80113AF0 000DD0B0  D0 1F 00 7C */	stfs f0, 0x7c(r31)
.L_80113AF4:
/* 80113AF4 000DD0B4  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80113AF8 000DD0B8  38 80 00 00 */	li r4, 0
/* 80113AFC 000DD0BC  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80113B00 000DD0C0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80113B04 000DD0C4  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80113B08 000DD0C8  81 83 00 00 */	lwz r12, 0(r3)
/* 80113B0C 000DD0CC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80113B10 000DD0D0  7D 89 03 A6 */	mtctr r12
/* 80113B14 000DD0D4  4E 80 04 21 */	bctrl 
/* 80113B18 000DD0D8  48 00 00 C8 */	b .L_80113BE0
.L_80113B1C:
/* 80113B1C 000DD0DC  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 80113B20 000DD0E0  2C 00 00 01 */	cmpwi r0, 1
/* 80113B24 000DD0E4  40 82 00 60 */	bne .L_80113B84
/* 80113B28 000DD0E8  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 80113B2C 000DD0EC  C0 22 95 A4 */	lfs f1, float_80669924@sda21(r2)
/* 80113B30 000DD0F0  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80113B34 000DD0F4  EC 22 08 2A */	fadds f1, f2, f1
/* 80113B38 000DD0F8  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 80113B3C 000DD0FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80113B40 000DD100  4C 41 13 82 */	cror 2, 1, 2
/* 80113B44 000DD104  40 82 00 9C */	bne .L_80113BE0
/* 80113B48 000DD108  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80113B4C 000DD10C  48 2F 4E 75 */	bl GetFrameSize__Q34nw4r3lyt13AnimTransformCFv
/* 80113B50 000DD110  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 80113B54 000DD114  3C 60 43 30 */	lis r3, 0x4330
/* 80113B58 000DD118  38 84 FF FF */	addi r4, r4, -1
/* 80113B5C 000DD11C  38 00 00 02 */	li r0, 2
/* 80113B60 000DD120  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80113B64 000DD124  90 81 00 0C */	stw r4, 0xc(r1)
/* 80113B68 000DD128  C8 22 95 B8 */	lfd f1, double_80669938@sda21(r2)
/* 80113B6C 000DD12C  90 61 00 08 */	stw r3, 8(r1)
/* 80113B70 000DD130  C8 01 00 08 */	lfd f0, 8(r1)
/* 80113B74 000DD134  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 80113B78 000DD138  EC 00 08 28 */	fsubs f0, f0, f1
/* 80113B7C 000DD13C  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 80113B80 000DD140  48 00 00 60 */	b .L_80113BE0
.L_80113B84:
/* 80113B84 000DD144  38 00 00 00 */	li r0, 0
/* 80113B88 000DD148  98 1F 00 94 */	stb r0, 0x94(r31)
/* 80113B8C 000DD14C  48 00 00 54 */	b .L_80113BE0
.L_80113B90:
/* 80113B90 000DD150  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 80113B94 000DD154  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80113B98 000DD158  C0 02 95 A0 */	lfs f0, float_80669920@sda21(r2)
/* 80113B9C 000DD15C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80113BA0 000DD160  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 80113BA4 000DD164  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80113BA8 000DD168  4C 40 13 82 */	cror 2, 0, 2
/* 80113BAC 000DD16C  40 82 00 10 */	bne .L_80113BBC
/* 80113BB0 000DD170  38 00 00 01 */	li r0, 1
/* 80113BB4 000DD174  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 80113BB8 000DD178  98 1F 00 54 */	stb r0, 0x54(r31)
.L_80113BBC:
/* 80113BBC 000DD17C  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80113BC0 000DD180  38 80 00 00 */	li r4, 0
/* 80113BC4 000DD184  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80113BC8 000DD188  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80113BCC 000DD18C  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80113BD0 000DD190  81 83 00 00 */	lwz r12, 0(r3)
/* 80113BD4 000DD194  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80113BD8 000DD198  7D 89 03 A6 */	mtctr r12
/* 80113BDC 000DD19C  4E 80 04 21 */	bctrl 
.L_80113BE0:
/* 80113BE0 000DD1A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80113BE4 000DD1A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80113BE8 000DD1A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80113BEC 000DD1AC  7C 08 03 A6 */	mtlr r0
/* 80113BF0 000DD1B0  38 21 00 20 */	addi r1, r1, 0x20
/* 80113BF4 000DD1B4  4E 80 00 20 */	blr 
.endfn func_80113A24

.fn func_80113BF8, global
/* 80113BF8 000DD1B8  4E 80 00 20 */	blr
.endfn func_80113BF8

.fn func_80113BFC, global
/* 80113BFC 000DD1BC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80113C00 000DD1C0  7C 08 02 A6 */	mflr r0
/* 80113C04 000DD1C4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80113C08 000DD1C8  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80113C0C 000DD1CC  7C 7F 1B 78 */	mr r31, r3
/* 80113C10 000DD1D0  4B F2 C8 D9 */	bl func_800404E8
/* 80113C14 000DD1D4  4B F2 EA DD */	bl func_800426F0
/* 80113C18 000DD1D8  2C 03 00 00 */	cmpwi r3, 0
/* 80113C1C 000DD1DC  40 82 00 54 */	bne .L_80113C70
/* 80113C20 000DD1E0  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 80113C24 000DD1E4  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 80113C28 000DD1E8  41 82 00 08 */	beq .L_80113C30
/* 80113C2C 000DD1EC  48 00 00 44 */	b .L_80113C70
.L_80113C30:
/* 80113C30 000DD1F0  38 60 00 00 */	li r3, 0
/* 80113C34 000DD1F4  38 80 00 00 */	li r4, 0
/* 80113C38 000DD1F8  38 A0 00 00 */	li r5, 0
/* 80113C3C 000DD1FC  48 20 A6 05 */	bl GXSetZMode
/* 80113C40 000DD200  38 61 00 08 */	addi r3, r1, 8
/* 80113C44 000DD204  48 2F 4A 25 */	bl __ct__Q34nw4r3lyt8DrawInfoFv
/* 80113C48 000DD208  38 61 00 08 */	addi r3, r1, 8
/* 80113C4C 000DD20C  48 02 36 05 */	bl func_80137250
/* 80113C50 000DD210  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80113C54 000DD214  38 81 00 08 */	addi r4, r1, 8
/* 80113C58 000DD218  38 A0 00 00 */	li r5, 0
/* 80113C5C 000DD21C  38 C0 00 01 */	li r6, 1
/* 80113C60 000DD220  48 02 33 D9 */	bl func_80137038
/* 80113C64 000DD224  38 61 00 08 */	addi r3, r1, 8
/* 80113C68 000DD228  38 80 FF FF */	li r4, -1
/* 80113C6C 000DD22C  48 2F 4A 71 */	bl __dt__Q34nw4r3lyt8DrawInfoFv
.L_80113C70:
/* 80113C70 000DD230  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80113C74 000DD234  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80113C78 000DD238  7C 08 03 A6 */	mtlr r0
/* 80113C7C 000DD23C  38 21 00 70 */	addi r1, r1, 0x70
/* 80113C80 000DD240  4E 80 00 20 */	blr 
.endfn func_80113BFC

.fn func_80113C84, global
/* 80113C84 000DD244  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80113C88 000DD248  7C 08 02 A6 */	mflr r0
/* 80113C8C 000DD24C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80113C90 000DD250  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80113C94 000DD254  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80113C98 000DD258  FF E0 18 90 */	fmr f31, f3
/* 80113C9C 000DD25C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80113CA0 000DD260  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 80113CA4 000DD264  FF C0 10 90 */	fmr f30, f2
/* 80113CA8 000DD268  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 80113CAC 000DD26C  F3 A1 00 28 */	psq_st f29, 40(r1), 0, qr0
/* 80113CB0 000DD270  FF A0 08 90 */	fmr f29, f1
/* 80113CB4 000DD274  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80113CB8 000DD278  7C DF 33 78 */	mr r31, r6
/* 80113CBC 000DD27C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80113CC0 000DD280  7C BE 2B 78 */	mr r30, r5
/* 80113CC4 000DD284  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80113CC8 000DD288  7C 9D 23 78 */	mr r29, r4
/* 80113CCC 000DD28C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80113CD0 000DD290  7C 7C 1B 78 */	mr r28, r3
/* 80113CD4 000DD294  80 ED A7 18 */	lwz r7, lbl_80666898@sda21(r13)
/* 80113CD8 000DD298  2C 07 00 00 */	cmpwi r7, 0
/* 80113CDC 000DD29C  41 82 00 C0 */	beq .L_80113D9C
/* 80113CE0 000DD2A0  80 67 00 78 */	lwz r3, 0x78(r7)
/* 80113CE4 000DD2A4  48 2F 4C DD */	bl GetFrameSize__Q34nw4r3lyt13AnimTransformCFv
/* 80113CE8 000DD2A8  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80113CEC 000DD2AC  3C 00 43 30 */	lis r0, 0x4330
/* 80113CF0 000DD2B0  C0 02 95 A0 */	lfs f0, float_80669920@sda21(r2)
/* 80113CF4 000DD2B4  90 61 00 0C */	stw r3, 0xc(r1)
/* 80113CF8 000DD2B8  C8 22 95 B0 */	lfd f1, double_80669930@sda21(r2)
/* 80113CFC 000DD2BC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80113D00 000DD2C0  90 01 00 08 */	stw r0, 8(r1)
/* 80113D04 000DD2C4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80113D08 000DD2C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80113D0C 000DD2CC  40 80 00 0C */	bge .L_80113D18
/* 80113D10 000DD2D0  C0 02 95 A4 */	lfs f0, float_80669924@sda21(r2)
/* 80113D14 000DD2D4  48 00 00 08 */	b .L_80113D1C
.L_80113D18:
/* 80113D18 000DD2D8  EC 00 F8 24 */	fdivs f0, f0, f31
.L_80113D1C:
/* 80113D1C 000DD2DC  80 6D A7 18 */	lwz r3, lbl_80666898@sda21(r13)
/* 80113D20 000DD2E0  38 80 00 02 */	li r4, 2
/* 80113D24 000DD2E4  38 00 00 01 */	li r0, 1
/* 80113D28 000DD2E8  D0 03 00 88 */	stfs f0, 0x88(r3)
/* 80113D2C 000DD2EC  80 6D A7 18 */	lwz r3, lbl_80666898@sda21(r13)
/* 80113D30 000DD2F0  90 83 00 8C */	stw r4, 0x8c(r3)
/* 80113D34 000DD2F4  80 6D A7 18 */	lwz r3, lbl_80666898@sda21(r13)
/* 80113D38 000DD2F8  98 03 00 94 */	stb r0, 0x94(r3)
/* 80113D3C 000DD2FC  80 6D A7 18 */	lwz r3, lbl_80666898@sda21(r13)
/* 80113D40 000DD300  93 E3 00 98 */	stw r31, 0x98(r3)
/* 80113D44 000DD304  80 6D A7 18 */	lwz r3, lbl_80666898@sda21(r13)
/* 80113D48 000DD308  80 03 00 98 */	lwz r0, 0x98(r3)
/* 80113D4C 000DD30C  2C 00 00 00 */	cmpwi r0, 0
/* 80113D50 000DD310  41 82 00 10 */	beq .L_80113D60
/* 80113D54 000DD314  2C 00 00 01 */	cmpwi r0, 1
/* 80113D58 000DD318  41 82 00 24 */	beq .L_80113D7C
/* 80113D5C 000DD31C  48 00 00 38 */	b .L_80113D94
.L_80113D60:
/* 80113D60 000DD320  3C 80 80 50 */	lis r4, CMenuFade_strpool@ha
/* 80113D64 000DD324  80 63 00 74 */	lwz r3, 0x74(r3)
/* 80113D68 000DD328  38 84 96 F0 */	addi r4, r4, CMenuFade_strpool@l
/* 80113D6C 000DD32C  38 A0 00 FF */	li r5, 0xff
/* 80113D70 000DD330  38 84 00 26 */	addi r4, r4, 0x26
/* 80113D74 000DD334  48 02 3D D1 */	bl func_80137B44
/* 80113D78 000DD338  48 00 00 1C */	b .L_80113D94
.L_80113D7C:
/* 80113D7C 000DD33C  3C 80 80 50 */	lis r4, CMenuFade_strpool@ha
/* 80113D80 000DD340  80 63 00 74 */	lwz r3, 0x74(r3)
/* 80113D84 000DD344  38 84 96 F0 */	addi r4, r4, CMenuFade_strpool@l
/* 80113D88 000DD348  38 A0 FF FF */	li r5, -1
/* 80113D8C 000DD34C  38 84 00 26 */	addi r4, r4, 0x26
/* 80113D90 000DD350  48 02 3D B5 */	bl func_80137B44
.L_80113D94:
/* 80113D94 000DD354  38 60 00 00 */	li r3, 0
/* 80113D98 000DD358  48 00 00 4C */	b .L_80113DE4
.L_80113D9C:
/* 80113D9C 000DD35C  48 32 38 19 */	bl getHeapIndex
/* 80113DA0 000DD360  7C 64 1B 78 */	mr r4, r3
/* 80113DA4 000DD364  38 60 00 9C */	li r3, 0x9c
/* 80113DA8 000DD368  48 32 0C B5 */	bl heap_malloc
/* 80113DAC 000DD36C  2C 03 00 00 */	cmpwi r3, 0
/* 80113DB0 000DD370  41 82 00 20 */	beq .L_80113DD0
/* 80113DB4 000DD374  FC 20 E8 90 */	fmr f1, f29
/* 80113DB8 000DD378  7F A4 EB 78 */	mr r4, r29
/* 80113DBC 000DD37C  FC 40 F0 90 */	fmr f2, f30
/* 80113DC0 000DD380  7F C5 F3 78 */	mr r5, r30
/* 80113DC4 000DD384  FC 60 F8 90 */	fmr f3, f31
/* 80113DC8 000DD388  7F E6 FB 78 */	mr r6, r31
/* 80113DCC 000DD38C  4B FF F8 15 */	bl __ct__CMenuFade
.L_80113DD0:
/* 80113DD0 000DD390  90 6D A7 18 */	stw r3, lbl_80666898@sda21(r13)
/* 80113DD4 000DD394  7F 84 E3 78 */	mr r4, r28
/* 80113DD8 000DD398  38 A0 00 00 */	li r5, 0
/* 80113DDC 000DD39C  48 33 0E 99 */	bl func_80444C74
/* 80113DE0 000DD3A0  80 6D A7 18 */	lwz r3, lbl_80666898@sda21(r13)
.L_80113DE4:
/* 80113DE4 000DD3A4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80113DE8 000DD3A8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80113DEC 000DD3AC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80113DF0 000DD3B0  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 80113DF4 000DD3B4  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80113DF8 000DD3B8  E3 A1 00 28 */	psq_l f29, 40(r1), 0, qr0
/* 80113DFC 000DD3BC  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 80113E00 000DD3C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80113E04 000DD3C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80113E08 000DD3C8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80113E0C 000DD3CC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80113E10 000DD3D0  7C 08 03 A6 */	mtlr r0
/* 80113E14 000DD3D4  38 21 00 50 */	addi r1, r1, 0x50
/* 80113E18 000DD3D8  4E 80 00 20 */	blr 
.endfn func_80113C84

.fn func_80113E1C, global
/* 80113E1C 000DD3DC  80 6D A7 18 */	lwz r3, lbl_80666898@sda21(r13)
/* 80113E20 000DD3E0  4E 80 00 20 */	blr 
.endfn func_80113E1C

.fn func_80113E24, global
/* 80113E24 000DD3E4  88 63 00 94 */	lbz r3, 0x94(r3)
/* 80113E28 000DD3E8  4E 80 00 20 */	blr 
.endfn func_80113E24

.fn func_80113E2C, global
/* 80113E2C 000DD3EC  38 00 00 01 */	li r0, 1
/* 80113E30 000DD3F0  98 03 00 54 */	stb r0, 0x54(r3)
/* 80113E34 000DD3F4  4E 80 00 20 */	blr 
.endfn func_80113E2C

.fn func_80113E38, global
/* 80113E38 000DD3F8  38 63 FF A8 */	addi r3, r3, -88
/* 80113E3C 000DD3FC  4B FF F8 C4 */	b __dt__CMenuFade
.endfn func_80113E38

.fn func_80113E40, global
/* 80113E40 000DD400  38 63 FF A4 */	addi r3, r3, -92
/* 80113E44 000DD404  4B FF FD B8 */	b func_80113BFC
.endfn func_80113E40

.fn func_80113E48, global
/* 80113E48 000DD408  38 63 FF A4 */	addi r3, r3, -92
/* 80113E4C 000DD40C  4B FF F8 B4 */	b __dt__CMenuFade
.endfn func_80113E48

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CMenuFade_typestr, global
	.asciz "CMenuFade"
	.balign 4
	.4byte 0
.endobj CMenuFade_typestr


.obj CMenuFade_strpool, global
	.asciz "CMenuFade"
	.asciz "fadeout.brlyt"
	.asciz "fadeout.brlan"
	.asciz "win_black"
.endobj CMenuFade_strpool


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CMenuFade, global
	.4byte __RTTI__CMenuFade
	.4byte 0
	.4byte __dt__CMenuFade
	.4byte CChildListNode_Reset
	.4byte func_80113774
	.4byte func_801139A4
	.4byte func_80113A24
	.4byte func_80113BF8
	.4byte func_80043F20
	.4byte __RTTI__CMenuFade
	.4byte 0xFFFFFFA8
	.4byte func_80113E38
	.4byte IWorkEvent_WorkEvent1
	.4byte IWorkEvent_OnFileEvent
	.4byte IWorkEvent_WorkEvent3
	.4byte IWorkEvent_WorkEvent4
	.4byte IWorkEvent_WorkEvent5
	.4byte IWorkEvent_WorkEvent6
	.4byte IWorkEvent_WorkEvent7
	.4byte IWorkEvent_WorkEvent8
	.4byte IWorkEvent_WorkEvent9
	.4byte IWorkEvent_WorkEvent10
	.4byte IWorkEvent_WorkEvent11
	.4byte IWorkEvent_WorkEvent12
	.4byte IWorkEvent_WorkEvent13
	.4byte IWorkEvent_WorkEvent14
	.4byte IWorkEvent_WorkEvent15
	.4byte IWorkEvent_WorkEvent16
	.4byte IWorkEvent_WorkEvent17
	.4byte IWorkEvent_WorkEvent18
	.4byte IWorkEvent_WorkEvent19
	.4byte IWorkEvent_WorkEvent20
	.4byte IWorkEvent_WorkEvent21
	.4byte IWorkEvent_WorkEvent22
	.4byte IWorkEvent_WorkEvent23
	.4byte IWorkEvent_WorkEvent24
	.4byte IWorkEvent_WorkEvent25
	.4byte IWorkEvent_WorkEvent26
	.4byte IWorkEvent_WorkEvent27
	.4byte IWorkEvent_WorkEvent28
	.4byte IWorkEvent_WorkEvent29
	.4byte IWorkEvent_WorkEvent30
	.4byte IWorkEvent_WorkEvent31
	.4byte __RTTI__CMenuFade
	.4byte 0xFFFFFFA4
	.4byte func_80113E48
	.4byte func_80113E40
	.4byte func_80113BFC
.endobj __vt__CMenuFade

.obj CMenuFade_hierarchy, global
	.4byte __RTTI__IScnRender
	.4byte 0x0000005C
	.4byte __RTTI__IWorkEvent
	.4byte 0x00000058
	.4byte __RTTI__CDoubleListNode
	.4byte 0
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __RTTI__CProcess
	.4byte 0
	.4byte __RTTI__CTTask_IUICf
	.4byte 0
	.4byte __RTTI__IUICf
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CMenuFade_hierarchy


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CMenuFade, global
	.4byte CMenuFade_typestr
	.4byte CMenuFade_hierarchy
.endobj __RTTI__CMenuFade

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_80669920, global
	.float 0
.endobj float_80669920


.obj float_80669924, global
	.float 1.0
.endobj float_80669924


.obj float_80669928, global
	.float 25 #0x41C80000
	.4byte 0
.endobj float_80669928


.obj double_80669930, global
	.8byte 0x4330000000000000 #unsigned int to float constant
.endobj double_80669930

.obj double_80669938, global
	.8byte 0x4330000080000000 #signed int to float constant
.endobj double_80669938

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80666898, global
	.skip 0x8
.endobj lbl_80666898

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8000B4C0", local
.hidden "@etb_8000B4C0"
	.4byte 0x28CA0000
	.4byte 0x000000C0
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0680001B
	.4byte 0x0000005C
	.4byte __dt__IScnRender
	.4byte 0x0680001B
	.4byte 0x00000058
	.4byte __dt__IWorkEvent
	.4byte 0x8680001B
	.4byte 0x00000000
	.4byte __dt__800FED0C
.endobj "@etb_8000B4C0"

.obj "@etb_8000B4F4", local
.hidden "@etb_8000B4F4"
	.4byte 0x10080000
	.4byte 0x00000048
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0780001E
	.4byte 0x00000064
	.4byte __dt__8045F580
	.4byte 0x0680001E
	.4byte 0x0000005C
	.4byte __dt__IScnRender
	.4byte 0x8680001E
	.4byte 0x00000058
	.4byte __dt__IWorkEvent
.endobj "@etb_8000B4F4"

.obj "@etb_8000B528", local
.hidden "@etb_8000B528"
	.4byte 0x100A0000
	.4byte 0x00000048
	.4byte 0x00710010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__8045F8C8
.endobj "@etb_8000B528"

.obj "@etb_8000B540", local
.hidden "@etb_8000B540"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000B540"

.obj "@etb_8000B548", local
.hidden "@etb_8000B548"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_8000B548"

.obj "@etb_8000B550", local
.hidden "@etb_8000B550"
	.4byte 0x08080000
	.4byte 0x00000054
	.4byte 0x00050010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__Q34nw4r3lyt8DrawInfoFv
.endobj "@etb_8000B550"

.obj "@etb_8000B568", local
.hidden "@etb_8000B568"
	.4byte 0x20CA0000
	.4byte 0x00000000
.endobj "@etb_8000B568"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80026B58", local
.hidden "@eti_80026B58"
	.4byte __ct__CMenuFade
	.4byte 0x00000120
	.4byte "@etb_8000B4C0"
.endobj "@eti_80026B58"

.obj "@eti_80026B64", local
.hidden "@eti_80026B64"
	.4byte __dt__CMenuFade
	.4byte 0x00000074
	.4byte "@etb_8000B4F4"
.endobj "@eti_80026B64"

.obj "@eti_80026B70", local
.hidden "@eti_80026B70"
	.4byte func_80113774
	.4byte 0x00000230
	.4byte "@etb_8000B528"
.endobj "@eti_80026B70"

.obj "@eti_80026B7C", local
.hidden "@eti_80026B7C"
	.4byte func_801139A4
	.4byte 0x00000080
	.4byte "@etb_8000B540"
.endobj "@eti_80026B7C"

.obj "@eti_80026B88", local
.hidden "@eti_80026B88"
	.4byte func_80113A24
	.4byte 0x000001D4
	.4byte "@etb_8000B548"
.endobj "@eti_80026B88"

.obj "@eti_80026B94", local
.hidden "@eti_80026B94"
	.4byte func_80113BFC
	.4byte 0x00000088
	.4byte "@etb_8000B550"
.endobj "@eti_80026B94"

.obj "@eti_80026BA0", local
.hidden "@eti_80026BA0"
	.4byte func_80113C84
	.4byte 0x00000198
	.4byte "@etb_8000B568"
.endobj "@eti_80026BA0"
