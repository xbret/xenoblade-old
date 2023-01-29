.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16

.fn AXFXDelayExpGetMemSize, global
/* 802D65F0 0029FBB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D65F4 0029FBB4  C0 22 BA A0 */	lfs f1, lbl_8066BE20@sda21(r2)
/* 802D65F8 0029FBB8  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 802D65FC 0029FBBC  EC 01 00 32 */	fmuls f0, f1, f0
/* 802D6600 0029FBC0  FC 00 00 1E */	fctiwz f0, f0
/* 802D6604 0029FBC4  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 802D6608 0029FBC8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D660C 0029FBCC  1C 60 00 0C */	mulli r3, r0, 0xc
/* 802D6610 0029FBD0  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6614 0029FBD4  4E 80 00 20 */	blr
.endfn AXFXDelayExpGetMemSize
/* 802D6618 0029FBD8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802D661C 0029FBDC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn AXFXDelayExpInit, global
/* 802D6620 0029FBE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D6624 0029FBE4  7C 08 02 A6 */	mflr r0
/* 802D6628 0029FBE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D662C 0029FBEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D6630 0029FBF0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D6634 0029FBF4  7C 7E 1B 78 */	mr r30, r3
/* 802D6638 0029FBF8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D663C 0029FBFC  48 08 23 75 */	bl OSDisableInterrupts
/* 802D6640 0029FC00  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 802D6644 0029FC04  3B A0 00 01 */	li r29, 0x1
/* 802D6648 0029FC08  C0 02 BA A4 */	lfs f0, lbl_8066BE24@sda21(r2)
/* 802D664C 0029FC0C  7C 7F 1B 78 */	mr r31, r3
/* 802D6650 0029FC10  93 BE 00 34 */	stw r29, 0x34(r30)
/* 802D6654 0029FC14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802D6658 0029FC18  4C 40 13 82 */	cror eq, lt, eq
/* 802D665C 0029FC1C  40 82 00 94 */	bne .L_802D66F0
/* 802D6660 0029FC20  48 08 23 51 */	bl OSDisableInterrupts
/* 802D6664 0029FC24  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 802D6668 0029FC28  7C 7D 1B 78 */	mr r29, r3
/* 802D666C 0029FC2C  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802D6670 0029FC30  2C 04 00 00 */	cmpwi r4, 0x0
/* 802D6674 0029FC34  60 00 00 01 */	ori r0, r0, 0x1
/* 802D6678 0029FC38  90 1E 00 34 */	stw r0, 0x34(r30)
/* 802D667C 0029FC3C  41 82 00 1C */	beq .L_802D6698
/* 802D6680 0029FC40  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D6684 0029FC44  7C 83 23 78 */	mr r3, r4
/* 802D6688 0029FC48  7D 89 03 A6 */	mtctr r12
/* 802D668C 0029FC4C  4E 80 04 21 */	bctrl
/* 802D6690 0029FC50  38 00 00 00 */	li r0, 0x0
/* 802D6694 0029FC54  90 1E 00 00 */	stw r0, 0x0(r30)
.L_802D6698:
/* 802D6698 0029FC58  80 7E 00 04 */	lwz r3, 0x4(r30)
/* 802D669C 0029FC5C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D66A0 0029FC60  41 82 00 18 */	beq .L_802D66B8
/* 802D66A4 0029FC64  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D66A8 0029FC68  7D 89 03 A6 */	mtctr r12
/* 802D66AC 0029FC6C  4E 80 04 21 */	bctrl
/* 802D66B0 0029FC70  38 00 00 00 */	li r0, 0x0
/* 802D66B4 0029FC74  90 1E 00 04 */	stw r0, 0x4(r30)
.L_802D66B8:
/* 802D66B8 0029FC78  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 802D66BC 0029FC7C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D66C0 0029FC80  41 82 00 18 */	beq .L_802D66D8
/* 802D66C4 0029FC84  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D66C8 0029FC88  7D 89 03 A6 */	mtctr r12
/* 802D66CC 0029FC8C  4E 80 04 21 */	bctrl
/* 802D66D0 0029FC90  38 00 00 00 */	li r0, 0x0
/* 802D66D4 0029FC94  90 1E 00 08 */	stw r0, 0x8(r30)
.L_802D66D8:
/* 802D66D8 0029FC98  7F A3 EB 78 */	mr r3, r29
/* 802D66DC 0029FC9C  48 08 23 15 */	bl OSRestoreInterrupts
/* 802D66E0 0029FCA0  7F E3 FB 78 */	mr r3, r31
/* 802D66E4 0029FCA4  48 08 23 0D */	bl OSRestoreInterrupts
/* 802D66E8 0029FCA8  38 60 00 00 */	li r3, 0x0
/* 802D66EC 0029FCAC  48 00 01 E8 */	b .L_802D68D4
.L_802D66F0:
/* 802D66F0 0029FCB0  C0 02 BA A0 */	lfs f0, lbl_8066BE20@sda21(r2)
/* 802D66F4 0029FCB4  EC 20 00 72 */	fmuls f1, f0, f1
/* 802D66F8 0029FCB8  4B FE 39 35 */	bl __cvt_fp2unsigned
/* 802D66FC 0029FCBC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D6700 0029FCC0  90 7E 00 14 */	stw r3, 0x14(r30)
/* 802D6704 0029FCC4  40 82 00 08 */	bne .L_802D670C
/* 802D6708 0029FCC8  93 BE 00 14 */	stw r29, 0x14(r30)
.L_802D670C:
/* 802D670C 0029FCCC  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802D6710 0029FCD0  81 8D 97 40 */	lwz r12, lbl_806658C0@sda21(r13)
/* 802D6714 0029FCD4  54 03 10 3A */	slwi r3, r0, 2
/* 802D6718 0029FCD8  7D 89 03 A6 */	mtctr r12
/* 802D671C 0029FCDC  4E 80 04 21 */	bctrl
/* 802D6720 0029FCE0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D6724 0029FCE4  90 7E 00 00 */	stw r3, 0x0(r30)
/* 802D6728 0029FCE8  40 82 00 0C */	bne .L_802D6734
/* 802D672C 0029FCEC  38 00 00 00 */	li r0, 0x0
/* 802D6730 0029FCF0  48 00 00 50 */	b .L_802D6780
.L_802D6734:
/* 802D6734 0029FCF4  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802D6738 0029FCF8  81 8D 97 40 */	lwz r12, lbl_806658C0@sda21(r13)
/* 802D673C 0029FCFC  54 03 10 3A */	slwi r3, r0, 2
/* 802D6740 0029FD00  7D 89 03 A6 */	mtctr r12
/* 802D6744 0029FD04  4E 80 04 21 */	bctrl
/* 802D6748 0029FD08  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D674C 0029FD0C  90 7E 00 04 */	stw r3, 0x4(r30)
/* 802D6750 0029FD10  40 82 00 0C */	bne .L_802D675C
/* 802D6754 0029FD14  38 00 00 00 */	li r0, 0x0
/* 802D6758 0029FD18  48 00 00 28 */	b .L_802D6780
.L_802D675C:
/* 802D675C 0029FD1C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802D6760 0029FD20  81 8D 97 40 */	lwz r12, lbl_806658C0@sda21(r13)
/* 802D6764 0029FD24  54 03 10 3A */	slwi r3, r0, 2
/* 802D6768 0029FD28  7D 89 03 A6 */	mtctr r12
/* 802D676C 0029FD2C  4E 80 04 21 */	bctrl
/* 802D6770 0029FD30  7C 03 00 D0 */	neg r0, r3
/* 802D6774 0029FD34  90 7E 00 08 */	stw r3, 0x8(r30)
/* 802D6778 0029FD38  7C 00 1B 78 */	or r0, r0, r3
/* 802D677C 0029FD3C  54 00 0F FE */	srwi r0, r0, 31
.L_802D6780:
/* 802D6780 0029FD40  2C 00 00 00 */	cmpwi r0, 0x0
/* 802D6784 0029FD44  40 82 00 94 */	bne .L_802D6818
/* 802D6788 0029FD48  48 08 22 29 */	bl OSDisableInterrupts
/* 802D678C 0029FD4C  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 802D6790 0029FD50  7C 7D 1B 78 */	mr r29, r3
/* 802D6794 0029FD54  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802D6798 0029FD58  2C 04 00 00 */	cmpwi r4, 0x0
/* 802D679C 0029FD5C  60 00 00 01 */	ori r0, r0, 0x1
/* 802D67A0 0029FD60  90 1E 00 34 */	stw r0, 0x34(r30)
/* 802D67A4 0029FD64  41 82 00 1C */	beq .L_802D67C0
/* 802D67A8 0029FD68  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D67AC 0029FD6C  7C 83 23 78 */	mr r3, r4
/* 802D67B0 0029FD70  7D 89 03 A6 */	mtctr r12
/* 802D67B4 0029FD74  4E 80 04 21 */	bctrl
/* 802D67B8 0029FD78  38 00 00 00 */	li r0, 0x0
/* 802D67BC 0029FD7C  90 1E 00 00 */	stw r0, 0x0(r30)
.L_802D67C0:
/* 802D67C0 0029FD80  80 7E 00 04 */	lwz r3, 0x4(r30)
/* 802D67C4 0029FD84  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D67C8 0029FD88  41 82 00 18 */	beq .L_802D67E0
/* 802D67CC 0029FD8C  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D67D0 0029FD90  7D 89 03 A6 */	mtctr r12
/* 802D67D4 0029FD94  4E 80 04 21 */	bctrl
/* 802D67D8 0029FD98  38 00 00 00 */	li r0, 0x0
/* 802D67DC 0029FD9C  90 1E 00 04 */	stw r0, 0x4(r30)
.L_802D67E0:
/* 802D67E0 0029FDA0  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 802D67E4 0029FDA4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D67E8 0029FDA8  41 82 00 18 */	beq .L_802D6800
/* 802D67EC 0029FDAC  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D67F0 0029FDB0  7D 89 03 A6 */	mtctr r12
/* 802D67F4 0029FDB4  4E 80 04 21 */	bctrl
/* 802D67F8 0029FDB8  38 00 00 00 */	li r0, 0x0
/* 802D67FC 0029FDBC  90 1E 00 08 */	stw r0, 0x8(r30)
.L_802D6800:
/* 802D6800 0029FDC0  7F A3 EB 78 */	mr r3, r29
/* 802D6804 0029FDC4  48 08 21 ED */	bl OSRestoreInterrupts
/* 802D6808 0029FDC8  7F E3 FB 78 */	mr r3, r31
/* 802D680C 0029FDCC  48 08 21 E5 */	bl OSRestoreInterrupts
/* 802D6810 0029FDD0  38 60 00 00 */	li r3, 0x0
/* 802D6814 0029FDD4  48 00 00 C0 */	b .L_802D68D4
.L_802D6818:
/* 802D6818 0029FDD8  7F C3 F3 78 */	mr r3, r30
/* 802D681C 0029FDDC  48 00 06 A5 */	bl __InitParams
/* 802D6820 0029FDE0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D6824 0029FDE4  40 82 00 94 */	bne .L_802D68B8
/* 802D6828 0029FDE8  48 08 21 89 */	bl OSDisableInterrupts
/* 802D682C 0029FDEC  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 802D6830 0029FDF0  7C 7D 1B 78 */	mr r29, r3
/* 802D6834 0029FDF4  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802D6838 0029FDF8  2C 04 00 00 */	cmpwi r4, 0x0
/* 802D683C 0029FDFC  60 00 00 01 */	ori r0, r0, 0x1
/* 802D6840 0029FE00  90 1E 00 34 */	stw r0, 0x34(r30)
/* 802D6844 0029FE04  41 82 00 1C */	beq .L_802D6860
/* 802D6848 0029FE08  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D684C 0029FE0C  7C 83 23 78 */	mr r3, r4
/* 802D6850 0029FE10  7D 89 03 A6 */	mtctr r12
/* 802D6854 0029FE14  4E 80 04 21 */	bctrl
/* 802D6858 0029FE18  38 00 00 00 */	li r0, 0x0
/* 802D685C 0029FE1C  90 1E 00 00 */	stw r0, 0x0(r30)
.L_802D6860:
/* 802D6860 0029FE20  80 7E 00 04 */	lwz r3, 0x4(r30)
/* 802D6864 0029FE24  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D6868 0029FE28  41 82 00 18 */	beq .L_802D6880
/* 802D686C 0029FE2C  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D6870 0029FE30  7D 89 03 A6 */	mtctr r12
/* 802D6874 0029FE34  4E 80 04 21 */	bctrl
/* 802D6878 0029FE38  38 00 00 00 */	li r0, 0x0
/* 802D687C 0029FE3C  90 1E 00 04 */	stw r0, 0x4(r30)
.L_802D6880:
/* 802D6880 0029FE40  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 802D6884 0029FE44  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D6888 0029FE48  41 82 00 18 */	beq .L_802D68A0
/* 802D688C 0029FE4C  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D6890 0029FE50  7D 89 03 A6 */	mtctr r12
/* 802D6894 0029FE54  4E 80 04 21 */	bctrl
/* 802D6898 0029FE58  38 00 00 00 */	li r0, 0x0
/* 802D689C 0029FE5C  90 1E 00 08 */	stw r0, 0x8(r30)
.L_802D68A0:
/* 802D68A0 0029FE60  7F A3 EB 78 */	mr r3, r29
/* 802D68A4 0029FE64  48 08 21 4D */	bl OSRestoreInterrupts
/* 802D68A8 0029FE68  7F E3 FB 78 */	mr r3, r31
/* 802D68AC 0029FE6C  48 08 21 45 */	bl OSRestoreInterrupts
/* 802D68B0 0029FE70  38 60 00 00 */	li r3, 0x0
/* 802D68B4 0029FE74  48 00 00 20 */	b .L_802D68D4
.L_802D68B8:
/* 802D68B8 0029FE78  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802D68BC 0029FE7C  7F E3 FB 78 */	mr r3, r31
/* 802D68C0 0029FE80  60 00 00 02 */	ori r0, r0, 0x2
/* 802D68C4 0029FE84  54 00 00 3C */	clrrwi r0, r0, 1
/* 802D68C8 0029FE88  90 1E 00 34 */	stw r0, 0x34(r30)
/* 802D68CC 0029FE8C  48 08 21 25 */	bl OSRestoreInterrupts
/* 802D68D0 0029FE90  38 60 00 01 */	li r3, 0x1
.L_802D68D4:
/* 802D68D4 0029FE94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D68D8 0029FE98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D68DC 0029FE9C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D68E0 0029FEA0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D68E4 0029FEA4  7C 08 03 A6 */	mtlr r0
/* 802D68E8 0029FEA8  38 21 00 20 */	addi r1, r1, 0x20
/* 802D68EC 0029FEAC  4E 80 00 20 */	blr
.endfn AXFXDelayExpInit

.fn AXFXDelayExpSettings, global
/* 802D68F0 0029FEB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D68F4 0029FEB4  7C 08 02 A6 */	mflr r0
/* 802D68F8 0029FEB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D68FC 0029FEBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D6900 0029FEC0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D6904 0029FEC4  7C 7E 1B 78 */	mr r30, r3
/* 802D6908 0029FEC8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D690C 0029FECC  48 08 20 A5 */	bl OSDisableInterrupts
/* 802D6910 0029FED0  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802D6914 0029FED4  7C 7F 1B 78 */	mr r31, r3
/* 802D6918 0029FED8  60 00 00 01 */	ori r0, r0, 0x1
/* 802D691C 0029FEDC  90 1E 00 34 */	stw r0, 0x34(r30)
/* 802D6920 0029FEE0  48 08 20 91 */	bl OSDisableInterrupts
/* 802D6924 0029FEE4  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 802D6928 0029FEE8  7C 7D 1B 78 */	mr r29, r3
/* 802D692C 0029FEEC  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802D6930 0029FEF0  2C 04 00 00 */	cmpwi r4, 0x0
/* 802D6934 0029FEF4  60 00 00 01 */	ori r0, r0, 0x1
/* 802D6938 0029FEF8  90 1E 00 34 */	stw r0, 0x34(r30)
/* 802D693C 0029FEFC  41 82 00 1C */	beq .L_802D6958
/* 802D6940 0029FF00  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D6944 0029FF04  7C 83 23 78 */	mr r3, r4
/* 802D6948 0029FF08  7D 89 03 A6 */	mtctr r12
/* 802D694C 0029FF0C  4E 80 04 21 */	bctrl
/* 802D6950 0029FF10  38 00 00 00 */	li r0, 0x0
/* 802D6954 0029FF14  90 1E 00 00 */	stw r0, 0x0(r30)
.L_802D6958:
/* 802D6958 0029FF18  80 7E 00 04 */	lwz r3, 0x4(r30)
/* 802D695C 0029FF1C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D6960 0029FF20  41 82 00 18 */	beq .L_802D6978
/* 802D6964 0029FF24  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D6968 0029FF28  7D 89 03 A6 */	mtctr r12
/* 802D696C 0029FF2C  4E 80 04 21 */	bctrl
/* 802D6970 0029FF30  38 00 00 00 */	li r0, 0x0
/* 802D6974 0029FF34  90 1E 00 04 */	stw r0, 0x4(r30)
.L_802D6978:
/* 802D6978 0029FF38  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 802D697C 0029FF3C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D6980 0029FF40  41 82 00 18 */	beq .L_802D6998
/* 802D6984 0029FF44  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D6988 0029FF48  7D 89 03 A6 */	mtctr r12
/* 802D698C 0029FF4C  4E 80 04 21 */	bctrl
/* 802D6990 0029FF50  38 00 00 00 */	li r0, 0x0
/* 802D6994 0029FF54  90 1E 00 08 */	stw r0, 0x8(r30)
.L_802D6998:
/* 802D6998 0029FF58  7F A3 EB 78 */	mr r3, r29
/* 802D699C 0029FF5C  48 08 20 55 */	bl OSRestoreInterrupts
/* 802D69A0 0029FF60  7F C3 F3 78 */	mr r3, r30
/* 802D69A4 0029FF64  4B FF FC 7D */	bl AXFXDelayExpInit
/* 802D69A8 0029FF68  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D69AC 0029FF6C  40 82 00 94 */	bne .L_802D6A40
/* 802D69B0 0029FF70  48 08 20 01 */	bl OSDisableInterrupts
/* 802D69B4 0029FF74  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 802D69B8 0029FF78  7C 7D 1B 78 */	mr r29, r3
/* 802D69BC 0029FF7C  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802D69C0 0029FF80  2C 04 00 00 */	cmpwi r4, 0x0
/* 802D69C4 0029FF84  60 00 00 01 */	ori r0, r0, 0x1
/* 802D69C8 0029FF88  90 1E 00 34 */	stw r0, 0x34(r30)
/* 802D69CC 0029FF8C  41 82 00 1C */	beq .L_802D69E8
/* 802D69D0 0029FF90  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D69D4 0029FF94  7C 83 23 78 */	mr r3, r4
/* 802D69D8 0029FF98  7D 89 03 A6 */	mtctr r12
/* 802D69DC 0029FF9C  4E 80 04 21 */	bctrl
/* 802D69E0 0029FFA0  38 00 00 00 */	li r0, 0x0
/* 802D69E4 0029FFA4  90 1E 00 00 */	stw r0, 0x0(r30)
.L_802D69E8:
/* 802D69E8 0029FFA8  80 7E 00 04 */	lwz r3, 0x4(r30)
/* 802D69EC 0029FFAC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D69F0 0029FFB0  41 82 00 18 */	beq .L_802D6A08
/* 802D69F4 0029FFB4  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D69F8 0029FFB8  7D 89 03 A6 */	mtctr r12
/* 802D69FC 0029FFBC  4E 80 04 21 */	bctrl
/* 802D6A00 0029FFC0  38 00 00 00 */	li r0, 0x0
/* 802D6A04 0029FFC4  90 1E 00 04 */	stw r0, 0x4(r30)
.L_802D6A08:
/* 802D6A08 0029FFC8  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 802D6A0C 0029FFCC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D6A10 0029FFD0  41 82 00 18 */	beq .L_802D6A28
/* 802D6A14 0029FFD4  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D6A18 0029FFD8  7D 89 03 A6 */	mtctr r12
/* 802D6A1C 0029FFDC  4E 80 04 21 */	bctrl
/* 802D6A20 0029FFE0  38 00 00 00 */	li r0, 0x0
/* 802D6A24 0029FFE4  90 1E 00 08 */	stw r0, 0x8(r30)
.L_802D6A28:
/* 802D6A28 0029FFE8  7F A3 EB 78 */	mr r3, r29
/* 802D6A2C 0029FFEC  48 08 1F C5 */	bl OSRestoreInterrupts
/* 802D6A30 0029FFF0  7F E3 FB 78 */	mr r3, r31
/* 802D6A34 0029FFF4  48 08 1F BD */	bl OSRestoreInterrupts
/* 802D6A38 0029FFF8  38 60 00 00 */	li r3, 0x0
/* 802D6A3C 0029FFFC  48 00 00 20 */	b .L_802D6A5C
.L_802D6A40:
/* 802D6A40 002A0000  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802D6A44 002A0004  7F E3 FB 78 */	mr r3, r31
/* 802D6A48 002A0008  60 00 00 02 */	ori r0, r0, 0x2
/* 802D6A4C 002A000C  54 00 00 3C */	clrrwi r0, r0, 1
/* 802D6A50 002A0010  90 1E 00 34 */	stw r0, 0x34(r30)
/* 802D6A54 002A0014  48 08 1F 9D */	bl OSRestoreInterrupts
/* 802D6A58 002A0018  38 60 00 01 */	li r3, 0x1
.L_802D6A5C:
/* 802D6A5C 002A001C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6A60 002A0020  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D6A64 002A0024  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D6A68 002A0028  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D6A6C 002A002C  7C 08 03 A6 */	mtlr r0
/* 802D6A70 002A0030  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6A74 002A0034  4E 80 00 20 */	blr
.endfn AXFXDelayExpSettings
/* 802D6A78 002A0038  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802D6A7C 002A003C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn AXFXDelayExpSettingsUpdate, global
/* 802D6A80 002A0040  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D6A84 002A0044  7C 08 02 A6 */	mflr r0
/* 802D6A88 002A0048  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D6A8C 002A004C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D6A90 002A0050  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D6A94 002A0054  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D6A98 002A0058  7C 7D 1B 78 */	mr r29, r3
/* 802D6A9C 002A005C  48 08 1F 15 */	bl OSDisableInterrupts
/* 802D6AA0 002A0060  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 802D6AA4 002A0064  7C 7E 1B 78 */	mr r30, r3
/* 802D6AA8 002A0068  7F A3 EB 78 */	mr r3, r29
/* 802D6AAC 002A006C  60 00 00 01 */	ori r0, r0, 0x1
/* 802D6AB0 002A0070  90 1D 00 34 */	stw r0, 0x34(r29)
/* 802D6AB4 002A0074  48 00 04 0D */	bl __InitParams
/* 802D6AB8 002A0078  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D6ABC 002A007C  40 82 00 94 */	bne .L_802D6B50
/* 802D6AC0 002A0080  48 08 1E F1 */	bl OSDisableInterrupts
/* 802D6AC4 002A0084  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 802D6AC8 002A0088  7C 7F 1B 78 */	mr r31, r3
/* 802D6ACC 002A008C  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 802D6AD0 002A0090  2C 04 00 00 */	cmpwi r4, 0x0
/* 802D6AD4 002A0094  60 00 00 01 */	ori r0, r0, 0x1
/* 802D6AD8 002A0098  90 1D 00 34 */	stw r0, 0x34(r29)
/* 802D6ADC 002A009C  41 82 00 1C */	beq .L_802D6AF8
/* 802D6AE0 002A00A0  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D6AE4 002A00A4  7C 83 23 78 */	mr r3, r4
/* 802D6AE8 002A00A8  7D 89 03 A6 */	mtctr r12
/* 802D6AEC 002A00AC  4E 80 04 21 */	bctrl
/* 802D6AF0 002A00B0  38 00 00 00 */	li r0, 0x0
/* 802D6AF4 002A00B4  90 1D 00 00 */	stw r0, 0x0(r29)
.L_802D6AF8:
/* 802D6AF8 002A00B8  80 7D 00 04 */	lwz r3, 0x4(r29)
/* 802D6AFC 002A00BC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D6B00 002A00C0  41 82 00 18 */	beq .L_802D6B18
/* 802D6B04 002A00C4  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D6B08 002A00C8  7D 89 03 A6 */	mtctr r12
/* 802D6B0C 002A00CC  4E 80 04 21 */	bctrl
/* 802D6B10 002A00D0  38 00 00 00 */	li r0, 0x0
/* 802D6B14 002A00D4  90 1D 00 04 */	stw r0, 0x4(r29)
.L_802D6B18:
/* 802D6B18 002A00D8  80 7D 00 08 */	lwz r3, 0x8(r29)
/* 802D6B1C 002A00DC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D6B20 002A00E0  41 82 00 18 */	beq .L_802D6B38
/* 802D6B24 002A00E4  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D6B28 002A00E8  7D 89 03 A6 */	mtctr r12
/* 802D6B2C 002A00EC  4E 80 04 21 */	bctrl
/* 802D6B30 002A00F0  38 00 00 00 */	li r0, 0x0
/* 802D6B34 002A00F4  90 1D 00 08 */	stw r0, 0x8(r29)
.L_802D6B38:
/* 802D6B38 002A00F8  7F E3 FB 78 */	mr r3, r31
/* 802D6B3C 002A00FC  48 08 1E B5 */	bl OSRestoreInterrupts
/* 802D6B40 002A0100  7F C3 F3 78 */	mr r3, r30
/* 802D6B44 002A0104  48 08 1E AD */	bl OSRestoreInterrupts
/* 802D6B48 002A0108  38 60 00 00 */	li r3, 0x0
/* 802D6B4C 002A010C  48 00 00 20 */	b .L_802D6B6C
.L_802D6B50:
/* 802D6B50 002A0110  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 802D6B54 002A0114  7F C3 F3 78 */	mr r3, r30
/* 802D6B58 002A0118  60 00 00 02 */	ori r0, r0, 0x2
/* 802D6B5C 002A011C  54 00 00 3C */	clrrwi r0, r0, 1
/* 802D6B60 002A0120  90 1D 00 34 */	stw r0, 0x34(r29)
/* 802D6B64 002A0124  48 08 1E 8D */	bl OSRestoreInterrupts
/* 802D6B68 002A0128  38 60 00 01 */	li r3, 0x1
.L_802D6B6C:
/* 802D6B6C 002A012C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6B70 002A0130  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D6B74 002A0134  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D6B78 002A0138  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D6B7C 002A013C  7C 08 03 A6 */	mtlr r0
/* 802D6B80 002A0140  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6B84 002A0144  4E 80 00 20 */	blr
.endfn AXFXDelayExpSettingsUpdate
/* 802D6B88 002A0148  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802D6B8C 002A014C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn AXFXDelayExpShutdown, global
/* 802D6B90 002A0150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6B94 002A0154  7C 08 02 A6 */	mflr r0
/* 802D6B98 002A0158  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D6B9C 002A015C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D6BA0 002A0160  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802D6BA4 002A0164  7C 7E 1B 78 */	mr r30, r3
/* 802D6BA8 002A0168  48 08 1E 09 */	bl OSDisableInterrupts
/* 802D6BAC 002A016C  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 802D6BB0 002A0170  7C 7F 1B 78 */	mr r31, r3
/* 802D6BB4 002A0174  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802D6BB8 002A0178  2C 04 00 00 */	cmpwi r4, 0x0
/* 802D6BBC 002A017C  60 00 00 01 */	ori r0, r0, 0x1
/* 802D6BC0 002A0180  90 1E 00 34 */	stw r0, 0x34(r30)
/* 802D6BC4 002A0184  41 82 00 1C */	beq .L_802D6BE0
/* 802D6BC8 002A0188  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D6BCC 002A018C  7C 83 23 78 */	mr r3, r4
/* 802D6BD0 002A0190  7D 89 03 A6 */	mtctr r12
/* 802D6BD4 002A0194  4E 80 04 21 */	bctrl
/* 802D6BD8 002A0198  38 00 00 00 */	li r0, 0x0
/* 802D6BDC 002A019C  90 1E 00 00 */	stw r0, 0x0(r30)
.L_802D6BE0:
/* 802D6BE0 002A01A0  80 7E 00 04 */	lwz r3, 0x4(r30)
/* 802D6BE4 002A01A4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D6BE8 002A01A8  41 82 00 18 */	beq .L_802D6C00
/* 802D6BEC 002A01AC  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D6BF0 002A01B0  7D 89 03 A6 */	mtctr r12
/* 802D6BF4 002A01B4  4E 80 04 21 */	bctrl
/* 802D6BF8 002A01B8  38 00 00 00 */	li r0, 0x0
/* 802D6BFC 002A01BC  90 1E 00 04 */	stw r0, 0x4(r30)
.L_802D6C00:
/* 802D6C00 002A01C0  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 802D6C04 002A01C4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D6C08 002A01C8  41 82 00 18 */	beq .L_802D6C20
/* 802D6C0C 002A01CC  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D6C10 002A01D0  7D 89 03 A6 */	mtctr r12
/* 802D6C14 002A01D4  4E 80 04 21 */	bctrl
/* 802D6C18 002A01D8  38 00 00 00 */	li r0, 0x0
/* 802D6C1C 002A01DC  90 1E 00 08 */	stw r0, 0x8(r30)
.L_802D6C20:
/* 802D6C20 002A01E0  7F E3 FB 78 */	mr r3, r31
/* 802D6C24 002A01E4  48 08 1D CD */	bl OSRestoreInterrupts
/* 802D6C28 002A01E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6C2C 002A01EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D6C30 002A01F0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802D6C34 002A01F4  7C 08 03 A6 */	mtlr r0
/* 802D6C38 002A01F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6C3C 002A01FC  4E 80 00 20 */	blr
.endfn AXFXDelayExpShutdown

.fn AXFXDelayExpCallback, global
/* 802D6C40 002A0200  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802D6C44 002A0204  7C 08 02 A6 */	mflr r0
/* 802D6C48 002A0208  90 01 00 44 */	stw r0, 0x44(r1)
/* 802D6C4C 002A020C  39 61 00 40 */	addi r11, r1, 0x40
/* 802D6C50 002A0210  4B FE 34 E9 */	bl _savegpr_20
/* 802D6C54 002A0214  80 04 00 34 */	lwz r0, 0x34(r4)
/* 802D6C58 002A0218  2C 00 00 00 */	cmpwi r0, 0x0
/* 802D6C5C 002A021C  41 82 00 10 */	beq .L_802D6C6C
/* 802D6C60 002A0220  54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 802D6C64 002A0224  90 04 00 34 */	stw r0, 0x34(r4)
/* 802D6C68 002A0228  48 00 02 38 */	b .L_802D6EA0
.L_802D6C6C:
/* 802D6C6C 002A022C  80 C4 00 48 */	lwz r6, 0x48(r4)
/* 802D6C70 002A0230  81 44 00 28 */	lwz r10, 0x28(r4)
/* 802D6C74 002A0234  2C 06 00 00 */	cmpwi r6, 0x0
/* 802D6C78 002A0238  81 63 00 00 */	lwz r11, 0x0(r3)
/* 802D6C7C 002A023C  81 83 00 04 */	lwz r12, 0x4(r3)
/* 802D6C80 002A0240  23 0A 00 80 */	subfic r24, r10, 0x80
/* 802D6C84 002A0244  83 E3 00 08 */	lwz r31, 0x8(r3)
/* 802D6C88 002A0248  41 82 00 10 */	beq .L_802D6C98
/* 802D6C8C 002A024C  80 66 00 00 */	lwz r3, 0x0(r6)
/* 802D6C90 002A0250  80 A6 00 04 */	lwz r5, 0x4(r6)
/* 802D6C94 002A0254  80 C6 00 08 */	lwz r6, 0x8(r6)
.L_802D6C98:
/* 802D6C98 002A0258  82 84 00 4C */	lwz r20, 0x4c(r4)
/* 802D6C9C 002A025C  2C 14 00 00 */	cmpwi r20, 0x0
/* 802D6CA0 002A0260  41 82 00 10 */	beq .L_802D6CB0
/* 802D6CA4 002A0264  80 F4 00 00 */	lwz r7, 0x0(r20)
/* 802D6CA8 002A0268  81 14 00 04 */	lwz r8, 0x4(r20)
/* 802D6CAC 002A026C  81 34 00 08 */	lwz r9, 0x8(r20)
.L_802D6CB0:
/* 802D6CB0 002A0270  3B 20 00 60 */	li r25, 0x60
/* 802D6CB4 002A0274  38 00 00 00 */	li r0, 0x0
/* 802D6CB8 002A0278  7F 29 03 A6 */	mtctr r25
.L_802D6CBC:
/* 802D6CBC 002A027C  82 A4 00 0C */	lwz r21, 0xc(r4)
/* 802D6CC0 002A0280  82 84 00 48 */	lwz r20, 0x48(r4)
/* 802D6CC4 002A0284  56 B7 10 3A */	slwi r23, r21, 2
/* 802D6CC8 002A0288  82 C4 00 00 */	lwz r22, 0x0(r4)
/* 802D6CCC 002A028C  82 A4 00 04 */	lwz r21, 0x4(r4)
/* 802D6CD0 002A0290  2C 14 00 00 */	cmpwi r20, 0x0
/* 802D6CD4 002A0294  82 84 00 08 */	lwz r20, 0x8(r4)
/* 802D6CD8 002A0298  7F D6 B8 2E */	lwzx r30, r22, r23
/* 802D6CDC 002A029C  7F B5 B8 2E */	lwzx r29, r21, r23
/* 802D6CE0 002A02A0  7F 94 B8 2E */	lwzx r28, r20, r23
/* 802D6CE4 002A02A4  41 82 00 68 */	beq .L_802D6D4C
/* 802D6CE8 002A02A8  82 83 00 00 */	lwz r20, 0x0(r3)
/* 802D6CEC 002A02AC  38 63 00 04 */	addi r3, r3, 0x4
/* 802D6CF0 002A02B0  82 CB 00 00 */	lwz r22, 0x0(r11)
/* 802D6CF4 002A02B4  82 FF 00 00 */	lwz r23, 0x0(r31)
/* 802D6CF8 002A02B8  7E 96 A2 14 */	add r20, r22, r20
/* 802D6CFC 002A02BC  82 C6 00 00 */	lwz r22, 0x0(r6)
/* 802D6D00 002A02C0  83 64 00 1C */	lwz r27, 0x1c(r4)
/* 802D6D04 002A02C4  7E 98 A1 D6 */	mullw r20, r24, r20
/* 802D6D08 002A02C8  7E D7 B2 14 */	add r22, r23, r22
/* 802D6D0C 002A02CC  82 A5 00 00 */	lwz r21, 0x0(r5)
/* 802D6D10 002A02D0  83 2C 00 00 */	lwz r25, 0x0(r12)
/* 802D6D14 002A02D4  38 A5 00 04 */	addi r5, r5, 0x4
/* 802D6D18 002A02D8  38 C6 00 04 */	addi r6, r6, 0x4
/* 802D6D1C 002A02DC  7F 59 AA 14 */	add r26, r25, r21
/* 802D6D20 002A02E0  82 A4 00 24 */	lwz r21, 0x24(r4)
/* 802D6D24 002A02E4  7E EA D9 D6 */	mullw r23, r10, r27
/* 802D6D28 002A02E8  83 24 00 20 */	lwz r25, 0x20(r4)
/* 802D6D2C 002A02EC  7F 74 BA 14 */	add r27, r20, r23
/* 802D6D30 002A02F0  7F 58 D1 D6 */	mullw r26, r24, r26
/* 802D6D34 002A02F4  7E EA C9 D6 */	mullw r23, r10, r25
/* 802D6D38 002A02F8  7E D8 B1 D6 */	mullw r22, r24, r22
/* 802D6D3C 002A02FC  7F 5A BA 14 */	add r26, r26, r23
/* 802D6D40 002A0300  7E AA A9 D6 */	mullw r21, r10, r21
/* 802D6D44 002A0304  7F 36 AA 14 */	add r25, r22, r21
/* 802D6D48 002A0308  48 00 00 40 */	b .L_802D6D88
.L_802D6D4C:
/* 802D6D4C 002A030C  82 AB 00 00 */	lwz r21, 0x0(r11)
/* 802D6D50 002A0310  83 44 00 1C */	lwz r26, 0x1c(r4)
/* 802D6D54 002A0314  83 2C 00 00 */	lwz r25, 0x0(r12)
/* 802D6D58 002A0318  7F 78 A9 D6 */	mullw r27, r24, r21
/* 802D6D5C 002A031C  82 E4 00 20 */	lwz r23, 0x20(r4)
/* 802D6D60 002A0320  82 DF 00 00 */	lwz r22, 0x0(r31)
/* 802D6D64 002A0324  82 A4 00 24 */	lwz r21, 0x24(r4)
/* 802D6D68 002A0328  7F 4A D1 D6 */	mullw r26, r10, r26
/* 802D6D6C 002A032C  7F 38 C9 D6 */	mullw r25, r24, r25
/* 802D6D70 002A0330  7F 7B D2 14 */	add r27, r27, r26
/* 802D6D74 002A0334  7E EA B9 D6 */	mullw r23, r10, r23
/* 802D6D78 002A0338  7E D8 B1 D6 */	mullw r22, r24, r22
/* 802D6D7C 002A033C  7F 59 BA 14 */	add r26, r25, r23
/* 802D6D80 002A0340  7E AA A9 D6 */	mullw r21, r10, r21
/* 802D6D84 002A0344  7F 36 AA 14 */	add r25, r22, r21
.L_802D6D88:
/* 802D6D88 002A0348  82 A4 00 18 */	lwz r21, 0x18(r4)
/* 802D6D8C 002A034C  7F 7B 3E 70 */	srawi r27, r27, 7
/* 802D6D90 002A0350  7F 5A 3E 70 */	srawi r26, r26, 7
/* 802D6D94 002A0354  82 C4 00 0C */	lwz r22, 0xc(r4)
/* 802D6D98 002A0358  7E BE A9 D6 */	mullw r21, r30, r21
/* 802D6D9C 002A035C  7F 39 3E 70 */	srawi r25, r25, 7
/* 802D6DA0 002A0360  82 E4 00 00 */	lwz r23, 0x0(r4)
/* 802D6DA4 002A0364  56 D6 10 3A */	slwi r22, r22, 2
/* 802D6DA8 002A0368  93 44 00 20 */	stw r26, 0x20(r4)
/* 802D6DAC 002A036C  93 24 00 24 */	stw r25, 0x24(r4)
/* 802D6DB0 002A0370  93 64 00 1C */	stw r27, 0x1c(r4)
/* 802D6DB4 002A0374  7E B5 3E 70 */	srawi r21, r21, 7
/* 802D6DB8 002A0378  7F 7B AA 14 */	add r27, r27, r21
/* 802D6DBC 002A037C  7F 77 B1 2E */	stwx r27, r23, r22
/* 802D6DC0 002A0380  82 E4 00 18 */	lwz r23, 0x18(r4)
/* 802D6DC4 002A0384  82 C4 00 0C */	lwz r22, 0xc(r4)
/* 802D6DC8 002A0388  7F 7D B9 D6 */	mullw r27, r29, r23
/* 802D6DCC 002A038C  82 E4 00 04 */	lwz r23, 0x4(r4)
/* 802D6DD0 002A0390  56 D6 10 3A */	slwi r22, r22, 2
/* 802D6DD4 002A0394  7F 7B 3E 70 */	srawi r27, r27, 7
/* 802D6DD8 002A0398  7F 5A DA 14 */	add r26, r26, r27
/* 802D6DDC 002A039C  7F 57 B1 2E */	stwx r26, r23, r22
/* 802D6DE0 002A03A0  82 C4 00 18 */	lwz r22, 0x18(r4)
/* 802D6DE4 002A03A4  83 64 00 0C */	lwz r27, 0xc(r4)
/* 802D6DE8 002A03A8  7E DC B1 D6 */	mullw r22, r28, r22
/* 802D6DEC 002A03AC  82 E4 00 08 */	lwz r23, 0x8(r4)
/* 802D6DF0 002A03B0  57 7A 10 3A */	slwi r26, r27, 2
/* 802D6DF4 002A03B4  3B 7B 00 01 */	addi r27, r27, 0x1
/* 802D6DF8 002A03B8  7E D6 3E 70 */	srawi r22, r22, 7
/* 802D6DFC 002A03BC  7F 39 B2 14 */	add r25, r25, r22
/* 802D6E00 002A03C0  7F 37 D1 2E */	stwx r25, r23, r26
/* 802D6E04 002A03C4  83 24 00 10 */	lwz r25, 0x10(r4)
/* 802D6E08 002A03C8  93 64 00 0C */	stw r27, 0xc(r4)
/* 802D6E0C 002A03CC  7C 1B C8 40 */	cmplw r27, r25
/* 802D6E10 002A03D0  41 80 00 08 */	blt .L_802D6E18
/* 802D6E14 002A03D4  90 04 00 0C */	stw r0, 0xc(r4)
.L_802D6E18:
/* 802D6E18 002A03D8  83 24 00 2C */	lwz r25, 0x2c(r4)
/* 802D6E1C 002A03DC  7F 3E C9 D6 */	mullw r25, r30, r25
/* 802D6E20 002A03E0  7F 39 3E 70 */	srawi r25, r25, 7
/* 802D6E24 002A03E4  93 2B 00 00 */	stw r25, 0x0(r11)
/* 802D6E28 002A03E8  39 6B 00 04 */	addi r11, r11, 0x4
/* 802D6E2C 002A03EC  83 24 00 2C */	lwz r25, 0x2c(r4)
/* 802D6E30 002A03F0  7F 3D C9 D6 */	mullw r25, r29, r25
/* 802D6E34 002A03F4  7F 39 3E 70 */	srawi r25, r25, 7
/* 802D6E38 002A03F8  93 2C 00 00 */	stw r25, 0x0(r12)
/* 802D6E3C 002A03FC  39 8C 00 04 */	addi r12, r12, 0x4
/* 802D6E40 002A0400  83 24 00 2C */	lwz r25, 0x2c(r4)
/* 802D6E44 002A0404  7F 3C C9 D6 */	mullw r25, r28, r25
/* 802D6E48 002A0408  7F 39 3E 70 */	srawi r25, r25, 7
/* 802D6E4C 002A040C  93 3F 00 00 */	stw r25, 0x0(r31)
/* 802D6E50 002A0410  3B FF 00 04 */	addi r31, r31, 0x4
/* 802D6E54 002A0414  83 24 00 4C */	lwz r25, 0x4c(r4)
/* 802D6E58 002A0418  2C 19 00 00 */	cmpwi r25, 0x0
/* 802D6E5C 002A041C  41 82 00 40 */	beq .L_802D6E9C
/* 802D6E60 002A0420  83 24 00 30 */	lwz r25, 0x30(r4)
/* 802D6E64 002A0424  7F 3E C9 D6 */	mullw r25, r30, r25
/* 802D6E68 002A0428  7F 39 3E 70 */	srawi r25, r25, 7
/* 802D6E6C 002A042C  93 27 00 00 */	stw r25, 0x0(r7)
/* 802D6E70 002A0430  38 E7 00 04 */	addi r7, r7, 0x4
/* 802D6E74 002A0434  83 24 00 30 */	lwz r25, 0x30(r4)
/* 802D6E78 002A0438  7F 3D C9 D6 */	mullw r25, r29, r25
/* 802D6E7C 002A043C  7F 39 3E 70 */	srawi r25, r25, 7
/* 802D6E80 002A0440  93 28 00 00 */	stw r25, 0x0(r8)
/* 802D6E84 002A0444  39 08 00 04 */	addi r8, r8, 0x4
/* 802D6E88 002A0448  83 24 00 30 */	lwz r25, 0x30(r4)
/* 802D6E8C 002A044C  7F 3C C9 D6 */	mullw r25, r28, r25
/* 802D6E90 002A0450  7F 39 3E 70 */	srawi r25, r25, 7
/* 802D6E94 002A0454  93 29 00 00 */	stw r25, 0x0(r9)
/* 802D6E98 002A0458  39 29 00 04 */	addi r9, r9, 0x4
.L_802D6E9C:
/* 802D6E9C 002A045C  42 00 FE 20 */	bdnz .L_802D6CBC
.L_802D6EA0:
/* 802D6EA0 002A0460  39 61 00 40 */	addi r11, r1, 0x40
/* 802D6EA4 002A0464  4B FE 32 E1 */	bl _restgpr_20
/* 802D6EA8 002A0468  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802D6EAC 002A046C  7C 08 03 A6 */	mtlr r0
/* 802D6EB0 002A0470  38 21 00 40 */	addi r1, r1, 0x40
/* 802D6EB4 002A0474  4E 80 00 20 */	blr
.endfn AXFXDelayExpCallback
/* 802D6EB8 002A0478  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802D6EBC 002A047C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn __InitParams, local
/* 802D6EC0 002A0480  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D6EC4 002A0484  7C 08 02 A6 */	mflr r0
/* 802D6EC8 002A0488  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D6ECC 002A048C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802D6ED0 002A0490  7C 7F 1B 78 */	mr r31, r3
/* 802D6ED4 002A0494  C0 23 00 3C */	lfs f1, 0x3c(r3)
/* 802D6ED8 002A0498  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 802D6EDC 002A049C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802D6EE0 002A04A0  40 81 00 0C */	ble .L_802D6EEC
/* 802D6EE4 002A04A4  38 60 00 00 */	li r3, 0x0
/* 802D6EE8 002A04A8  48 00 01 B8 */	b .L_802D70A0
.L_802D6EEC:
/* 802D6EEC 002A04AC  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 802D6EF0 002A04B0  C0 42 BA A4 */	lfs f2, lbl_8066BE24@sda21(r2)
/* 802D6EF4 002A04B4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802D6EF8 002A04B8  41 80 00 14 */	blt .L_802D6F0C
/* 802D6EFC 002A04BC  C0 22 BA A8 */	lfs f1, lbl_8066BE28@sda21(r2)
/* 802D6F00 002A04C0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802D6F04 002A04C4  4C 41 13 82 */	cror eq, gt, eq
/* 802D6F08 002A04C8  40 82 00 0C */	bne .L_802D6F14
.L_802D6F0C:
/* 802D6F0C 002A04CC  38 60 00 00 */	li r3, 0x0
/* 802D6F10 002A04D0  48 00 01 90 */	b .L_802D70A0
.L_802D6F14:
/* 802D6F14 002A04D4  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 802D6F18 002A04D8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802D6F1C 002A04DC  41 80 00 0C */	blt .L_802D6F28
/* 802D6F20 002A04E0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802D6F24 002A04E4  40 81 00 0C */	ble .L_802D6F30
.L_802D6F28:
/* 802D6F28 002A04E8  38 60 00 00 */	li r3, 0x0
/* 802D6F2C 002A04EC  48 00 01 74 */	b .L_802D70A0
.L_802D6F30:
/* 802D6F30 002A04F0  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 802D6F34 002A04F4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802D6F38 002A04F8  41 80 00 0C */	blt .L_802D6F44
/* 802D6F3C 002A04FC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802D6F40 002A0500  40 81 00 0C */	ble .L_802D6F4C
.L_802D6F44:
/* 802D6F44 002A0504  38 60 00 00 */	li r3, 0x0
/* 802D6F48 002A0508  48 00 01 58 */	b .L_802D70A0
.L_802D6F4C:
/* 802D6F4C 002A050C  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 802D6F50 002A0510  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802D6F54 002A0514  41 80 00 0C */	blt .L_802D6F60
/* 802D6F58 002A0518  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802D6F5C 002A051C  40 81 00 0C */	ble .L_802D6F68
.L_802D6F60:
/* 802D6F60 002A0520  38 60 00 00 */	li r3, 0x0
/* 802D6F64 002A0524  48 00 01 3C */	b .L_802D70A0
.L_802D6F68:
/* 802D6F68 002A0528  80 83 00 00 */	lwz r4, 0x0(r3)
/* 802D6F6C 002A052C  2C 04 00 00 */	cmpwi r4, 0x0
/* 802D6F70 002A0530  40 82 00 0C */	bne .L_802D6F7C
/* 802D6F74 002A0534  38 60 00 00 */	li r3, 0x0
/* 802D6F78 002A0538  48 00 01 28 */	b .L_802D70A0
.L_802D6F7C:
/* 802D6F7C 002A053C  80 03 00 04 */	lwz r0, 0x4(r3)
/* 802D6F80 002A0540  2C 00 00 00 */	cmpwi r0, 0x0
/* 802D6F84 002A0544  40 82 00 0C */	bne .L_802D6F90
/* 802D6F88 002A0548  38 60 00 00 */	li r3, 0x0
/* 802D6F8C 002A054C  48 00 01 14 */	b .L_802D70A0
.L_802D6F90:
/* 802D6F90 002A0550  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802D6F94 002A0554  2C 00 00 00 */	cmpwi r0, 0x0
/* 802D6F98 002A0558  40 82 00 0C */	bne .L_802D6FA4
/* 802D6F9C 002A055C  38 60 00 00 */	li r3, 0x0
/* 802D6FA0 002A0560  48 00 01 00 */	b .L_802D70A0
.L_802D6FA4:
/* 802D6FA4 002A0564  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802D6FA8 002A0568  7C 83 23 78 */	mr r3, r4
/* 802D6FAC 002A056C  38 80 00 00 */	li r4, 0x0
/* 802D6FB0 002A0570  54 05 10 3A */	slwi r5, r0, 2
/* 802D6FB4 002A0574  4B D2 D3 9D */	bl memset
/* 802D6FB8 002A0578  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802D6FBC 002A057C  38 80 00 00 */	li r4, 0x0
/* 802D6FC0 002A0580  80 7F 00 04 */	lwz r3, 0x4(r31)
/* 802D6FC4 002A0584  54 05 10 3A */	slwi r5, r0, 2
/* 802D6FC8 002A0588  4B D2 D3 89 */	bl memset
/* 802D6FCC 002A058C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802D6FD0 002A0590  38 80 00 00 */	li r4, 0x0
/* 802D6FD4 002A0594  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 802D6FD8 002A0598  54 05 10 3A */	slwi r5, r0, 2
/* 802D6FDC 002A059C  4B D2 D3 75 */	bl memset
/* 802D6FE0 002A05A0  C0 22 BA A0 */	lfs f1, lbl_8066BE20@sda21(r2)
/* 802D6FE4 002A05A4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 802D6FE8 002A05A8  EC 21 00 32 */	fmuls f1, f1, f0
/* 802D6FEC 002A05AC  4B FE 30 41 */	bl __cvt_fp2unsigned
/* 802D6FF0 002A05B0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D6FF4 002A05B4  90 7F 00 10 */	stw r3, 0x10(r31)
/* 802D6FF8 002A05B8  40 82 00 0C */	bne .L_802D7004
/* 802D6FFC 002A05BC  38 00 00 01 */	li r0, 0x1
/* 802D7000 002A05C0  90 1F 00 10 */	stw r0, 0x10(r31)
.L_802D7004:
/* 802D7004 002A05C4  C0 22 BA AC */	lfs f1, lbl_8066BE2C@sda21(r2)
/* 802D7008 002A05C8  38 00 00 00 */	li r0, 0x0
/* 802D700C 002A05CC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 802D7010 002A05D0  C0 42 BA A8 */	lfs f2, lbl_8066BE28@sda21(r2)
/* 802D7014 002A05D4  EC 61 00 32 */	fmuls f3, f1, f0
/* 802D7018 002A05D8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 802D701C 002A05DC  C0 02 BA B0 */	lfs f0, lbl_8066BE30@sda21(r2)
/* 802D7020 002A05E0  EC 42 08 28 */	fsubs f2, f2, f1
/* 802D7024 002A05E4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802D7028 002A05E8  FC 20 18 1E */	fctiwz f1, f3
/* 802D702C 002A05EC  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 802D7030 002A05F0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802D7034 002A05F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D7038 002A05F8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 802D703C 002A05FC  40 81 00 08 */	ble .L_802D7044
/* 802D7040 002A0600  FC 40 00 90 */	fmr f2, f0
.L_802D7044:
/* 802D7044 002A0604  C0 62 BA AC */	lfs f3, lbl_8066BE2C@sda21(r2)
/* 802D7048 002A0608  38 A0 00 00 */	li r5, 0x0
/* 802D704C 002A060C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 802D7050 002A0610  38 60 00 01 */	li r3, 0x1
/* 802D7054 002A0614  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 802D7058 002A0618  EC 43 00 B2 */	fmuls f2, f3, f2
/* 802D705C 002A061C  EC 23 00 72 */	fmuls f1, f3, f1
/* 802D7060 002A0620  90 BF 00 1C */	stw r5, 0x1c(r31)
/* 802D7064 002A0624  EC 03 00 32 */	fmuls f0, f3, f0
/* 802D7068 002A0628  FC 40 10 1E */	fctiwz f2, f2
/* 802D706C 002A062C  90 BF 00 20 */	stw r5, 0x20(r31)
/* 802D7070 002A0630  FC 20 08 1E */	fctiwz f1, f1
/* 802D7074 002A0634  FC 00 00 1E */	fctiwz f0, f0
/* 802D7078 002A0638  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 802D707C 002A063C  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 802D7080 002A0640  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 802D7084 002A0644  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 802D7088 002A0648  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 802D708C 002A064C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D7090 002A0650  90 DF 00 28 */	stw r6, 0x28(r31)
/* 802D7094 002A0654  90 BF 00 24 */	stw r5, 0x24(r31)
/* 802D7098 002A0658  90 9F 00 2C */	stw r4, 0x2c(r31)
/* 802D709C 002A065C  90 1F 00 30 */	stw r0, 0x30(r31)
.L_802D70A0:
/* 802D70A0 002A0660  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D70A4 002A0664  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802D70A8 002A0668  7C 08 03 A6 */	mtlr r0
/* 802D70AC 002A066C  38 21 00 30 */	addi r1, r1, 0x30
/* 802D70B0 002A0670  4E 80 00 20 */	blr
.endfn __InitParams
/* 802D70B4 002A0674  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802D70B8 002A0678  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 802D70BC 002A067C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

# 0x8066BE20 - 0x8066BE38
.section .sdata2, "a"
.balign 8
.global lbl_8066BE20
lbl_8066BE20:
	.4byte 0x42000000
.global lbl_8066BE24
lbl_8066BE24:
	.4byte 0x00000000
.global lbl_8066BE28
lbl_8066BE28:
	.4byte 0x3F800000
.global lbl_8066BE2C
lbl_8066BE2C:
	.4byte 0x43000000
.global lbl_8066BE30
lbl_8066BE30:
	.4byte 0x3F733333
	.4byte 0x00000000
