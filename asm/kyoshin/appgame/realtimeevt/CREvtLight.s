.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_801C35A8
func_801C35A8:
/* 801C35A8 0018CB68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C35AC 0018CB6C  7C 08 02 A6 */	mflr r0
/* 801C35B0 0018CB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C35B4 0018CB74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C35B8 0018CB78  7C 9F 23 78 */	mr r31, r4
/* 801C35BC 0018CB7C  38 80 00 02 */	li r4, 2
/* 801C35C0 0018CB80  93 C1 00 08 */	stw r30, 8(r1)
/* 801C35C4 0018CB84  7C 7E 1B 78 */	mr r30, r3
/* 801C35C8 0018CB88  4B FC 20 C9 */	bl func_80185690
/* 801C35CC 0018CB8C  3C 60 80 53 */	lis r3, __vt__cf_CREvtLight@ha
/* 801C35D0 0018CB90  38 00 00 00 */	li r0, 0
/* 801C35D4 0018CB94  38 63 75 48 */	addi r3, r3, __vt__cf_CREvtLight@l
/* 801C35D8 0018CB98  90 7E 00 00 */	stw r3, 0(r30)
/* 801C35DC 0018CB9C  7F C3 F3 78 */	mr r3, r30
/* 801C35E0 0018CBA0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 801C35E4 0018CBA4  93 FE 00 18 */	stw r31, 0x18(r30)
/* 801C35E8 0018CBA8  90 1E 00 20 */	stw r0, 0x20(r30)
/* 801C35EC 0018CBAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C35F0 0018CBB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C35F4 0018CBB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C35F8 0018CBB8  7C 08 03 A6 */	mtlr r0
/* 801C35FC 0018CBBC  38 21 00 10 */	addi r1, r1, 0x10
/* 801C3600 0018CBC0  4E 80 00 20 */	blr 

.global func_801C3604
func_801C3604:
/* 801C3604 0018CBC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C3608 0018CBC8  7C 08 02 A6 */	mflr r0
/* 801C360C 0018CBCC  2C 03 00 00 */	cmpwi r3, 0
/* 801C3610 0018CBD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C3614 0018CBD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C3618 0018CBD8  7C 9F 23 78 */	mr r31, r4
/* 801C361C 0018CBDC  93 C1 00 08 */	stw r30, 8(r1)
/* 801C3620 0018CBE0  7C 7E 1B 78 */	mr r30, r3
/* 801C3624 0018CBE4  41 82 00 84 */	beq lbl_801C36A8
/* 801C3628 0018CBE8  80 83 00 20 */	lwz r4, 0x20(r3)
/* 801C362C 0018CBEC  3C A0 80 53 */	lis r5, __vt__cf_CREvtLight@ha
/* 801C3630 0018CBF0  38 A5 75 48 */	addi r5, r5, __vt__cf_CREvtLight@l
/* 801C3634 0018CBF4  90 A3 00 00 */	stw r5, 0(r3)
/* 801C3638 0018CBF8  2C 04 00 00 */	cmpwi r4, 0
/* 801C363C 0018CBFC  41 82 00 50 */	beq lbl_801C368C
/* 801C3640 0018CC00  80 6D A5 94 */	lwz r3, lbl_80666714@sda21(r13)
/* 801C3644 0018CC04  80 63 00 7C */	lwz r3, 0x7c(r3)
/* 801C3648 0018CC08  48 2F E7 35 */	bl func_804C1D7C
/* 801C364C 0018CC0C  38 00 00 00 */	li r0, 0
/* 801C3650 0018CC10  90 1E 00 20 */	stw r0, 0x20(r30)
/* 801C3654 0018CC14  4B EB FC 45 */	bl func_80083298
/* 801C3658 0018CC18  2C 03 00 00 */	cmpwi r3, 0
/* 801C365C 0018CC1C  41 82 00 30 */	beq lbl_801C368C
/* 801C3660 0018CC20  4B EB FC 39 */	bl func_80083298
/* 801C3664 0018CC24  80 03 2F 3C */	lwz r0, 0x2f3c(r3)
/* 801C3668 0018CC28  2C 00 00 00 */	cmpwi r0, 0
/* 801C366C 0018CC2C  41 82 00 20 */	beq lbl_801C368C
/* 801C3670 0018CC30  4B EB FC 29 */	bl func_80083298
/* 801C3674 0018CC34  80 63 2F 3C */	lwz r3, 0x2f3c(r3)
/* 801C3678 0018CC38  38 80 00 01 */	li r4, 1
/* 801C367C 0018CC3C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3680 0018CC40  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 801C3684 0018CC44  7D 89 03 A6 */	mtctr r12
/* 801C3688 0018CC48  4E 80 04 21 */	bctrl 
lbl_801C368C:
/* 801C368C 0018CC4C  7F C3 F3 78 */	mr r3, r30
/* 801C3690 0018CC50  38 80 00 00 */	li r4, 0
/* 801C3694 0018CC54  4B FC 20 2D */	bl func_801856C0
/* 801C3698 0018CC58  2C 1F 00 00 */	cmpwi r31, 0
/* 801C369C 0018CC5C  40 81 00 0C */	ble lbl_801C36A8
/* 801C36A0 0018CC60  7F C3 F3 78 */	mr r3, r30
/* 801C36A4 0018CC64  4B FC 20 B1 */	bl func_80185754
lbl_801C36A8:
/* 801C36A8 0018CC68  7F C3 F3 78 */	mr r3, r30
/* 801C36AC 0018CC6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C36B0 0018CC70  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C36B4 0018CC74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C36B8 0018CC78  7C 08 03 A6 */	mtlr r0
/* 801C36BC 0018CC7C  38 21 00 10 */	addi r1, r1, 0x10
/* 801C36C0 0018CC80  4E 80 00 20 */	blr 

.global func_801C36C4
func_801C36C4:
/* 801C36C4 0018CC84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C36C8 0018CC88  7C 08 02 A6 */	mflr r0
/* 801C36CC 0018CC8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C36D0 0018CC90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C36D4 0018CC94  7C 9F 23 78 */	mr r31, r4
/* 801C36D8 0018CC98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C36DC 0018CC9C  7C BE 2B 78 */	mr r30, r5
/* 801C36E0 0018CCA0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801C36E4 0018CCA4  7C 7D 1B 78 */	mr r29, r3
/* 801C36E8 0018CCA8  80 03 00 20 */	lwz r0, 0x20(r3)
/* 801C36EC 0018CCAC  2C 00 00 00 */	cmpwi r0, 0
/* 801C36F0 0018CCB0  41 82 00 54 */	beq lbl_801C3744
/* 801C36F4 0018CCB4  80 6D A5 94 */	lwz r3, lbl_80666714@sda21(r13)
/* 801C36F8 0018CCB8  7C 04 03 78 */	mr r4, r0
/* 801C36FC 0018CCBC  80 63 00 7C */	lwz r3, 0x7c(r3)
/* 801C3700 0018CCC0  48 2F E6 7D */	bl func_804C1D7C
/* 801C3704 0018CCC4  38 00 00 00 */	li r0, 0
/* 801C3708 0018CCC8  90 1D 00 20 */	stw r0, 0x20(r29)
/* 801C370C 0018CCCC  4B EB FB 8D */	bl func_80083298
/* 801C3710 0018CCD0  2C 03 00 00 */	cmpwi r3, 0
/* 801C3714 0018CCD4  41 82 00 30 */	beq lbl_801C3744
/* 801C3718 0018CCD8  4B EB FB 81 */	bl func_80083298
/* 801C371C 0018CCDC  80 03 2F 3C */	lwz r0, 0x2f3c(r3)
/* 801C3720 0018CCE0  2C 00 00 00 */	cmpwi r0, 0
/* 801C3724 0018CCE4  41 82 00 20 */	beq lbl_801C3744
/* 801C3728 0018CCE8  4B EB FB 71 */	bl func_80083298
/* 801C372C 0018CCEC  80 63 2F 3C */	lwz r3, 0x2f3c(r3)
/* 801C3730 0018CCF0  38 80 00 01 */	li r4, 1
/* 801C3734 0018CCF4  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3738 0018CCF8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 801C373C 0018CCFC  7D 89 03 A6 */	mtctr r12
/* 801C3740 0018CD00  4E 80 04 21 */	bctrl 
lbl_801C3744:
/* 801C3744 0018CD04  2C 1F 00 00 */	cmpwi r31, 0
/* 801C3748 0018CD08  41 82 00 5C */	beq lbl_801C37A4
/* 801C374C 0018CD0C  80 6D A5 94 */	lwz r3, lbl_80666714@sda21(r13)
/* 801C3750 0018CD10  7F E4 FB 78 */	mr r4, r31
/* 801C3754 0018CD14  38 A0 00 07 */	li r5, 7
/* 801C3758 0018CD18  80 63 00 7C */	lwz r3, 0x7c(r3)
/* 801C375C 0018CD1C  48 2F E4 45 */	bl func_804C1BA0
/* 801C3760 0018CD20  90 7D 00 20 */	stw r3, 0x20(r29)
/* 801C3764 0018CD24  4B EB FB 35 */	bl func_80083298
/* 801C3768 0018CD28  2C 03 00 00 */	cmpwi r3, 0
/* 801C376C 0018CD2C  41 82 00 38 */	beq lbl_801C37A4
/* 801C3770 0018CD30  4B EB FB 29 */	bl func_80083298
/* 801C3774 0018CD34  80 03 2F 3C */	lwz r0, 0x2f3c(r3)
/* 801C3778 0018CD38  2C 00 00 00 */	cmpwi r0, 0
/* 801C377C 0018CD3C  41 82 00 28 */	beq lbl_801C37A4
/* 801C3780 0018CD40  4B EB FB 19 */	bl func_80083298
/* 801C3784 0018CD44  83 E3 2F 3C */	lwz r31, 0x2f3c(r3)
/* 801C3788 0018CD48  4B FB D1 B9 */	bl func_80180940
/* 801C378C 0018CD4C  81 9F 00 00 */	lwz r12, 0(r31)
/* 801C3790 0018CD50  7C 64 1B 78 */	mr r4, r3
/* 801C3794 0018CD54  7F E3 FB 78 */	mr r3, r31
/* 801C3798 0018CD58  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 801C379C 0018CD5C  7D 89 03 A6 */	mtctr r12
/* 801C37A0 0018CD60  4E 80 04 21 */	bctrl 
lbl_801C37A4:
/* 801C37A4 0018CD64  93 DD 00 1C */	stw r30, 0x1c(r29)
/* 801C37A8 0018CD68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C37AC 0018CD6C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C37B0 0018CD70  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801C37B4 0018CD74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C37B8 0018CD78  7C 08 03 A6 */	mtlr r0
/* 801C37BC 0018CD7C  38 21 00 20 */	addi r1, r1, 0x20
/* 801C37C0 0018CD80  4E 80 00 20 */	blr 

.global func_801C37C4
func_801C37C4:
/* 801C37C4 0018CD84  4E 80 00 20 */	blr 

.global func_801C37C8
func_801C37C8:
/* 801C37C8 0018CD88  4E 80 00 20 */	blr 

.global func_801C37CC
func_801C37CC:
/* 801C37CC 0018CD8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C37D0 0018CD90  7C 08 02 A6 */	mflr r0
/* 801C37D4 0018CD94  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C37D8 0018CD98  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C37DC 0018CD9C  7C 7F 1B 78 */	mr r31, r3
/* 801C37E0 0018CDA0  7C 83 23 78 */	mr r3, r4
/* 801C37E4 0018CDA4  81 84 00 00 */	lwz r12, 0(r4)
/* 801C37E8 0018CDA8  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801C37EC 0018CDAC  7D 89 03 A6 */	mtctr r12
/* 801C37F0 0018CDB0  4E 80 04 21 */	bctrl 
/* 801C37F4 0018CDB4  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 801C37F8 0018CDB8  38 81 00 14 */	addi r4, r1, 0x14
/* 801C37FC 0018CDBC  E0 3F 00 3C */	psq_l f1, 60(r31), 0, qr0
/* 801C3800 0018CDC0  38 01 00 08 */	addi r0, r1, 8
/* 801C3804 0018CDC4  10 60 08 28 */	ps_sub f3, f0, f1
/* 801C3808 0018CDC8  E0 03 80 08 */	psq_l f0, 8(r3), 1, qr0
/* 801C380C 0018CDCC  E0 3F 80 44 */	psq_l f1, 68(r31), 1, qr0
/* 801C3810 0018CDD0  7C 03 03 78 */	mr r3, r0
/* 801C3814 0018CDD4  F0 64 00 00 */	psq_st f3, 0(r4), 0, qr0
/* 801C3818 0018CDD8  10 60 08 28 */	ps_sub f3, f0, f1
/* 801C381C 0018CDDC  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801C3820 0018CDE0  F0 64 80 08 */	psq_st f3, 8(r4), 1, qr0
/* 801C3824 0018CDE4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801C3828 0018CDE8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801C382C 0018CDEC  D0 41 00 08 */	stfs f2, 8(r1)
/* 801C3830 0018CDF0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801C3834 0018CDF4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801C3838 0018CDF8  48 18 A8 C9 */	bl PSVECMag
/* 801C383C 0018CDFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C3840 0018CE00  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C3844 0018CE04  7C 08 03 A6 */	mtlr r0
/* 801C3848 0018CE08  38 21 00 30 */	addi r1, r1, 0x30
/* 801C384C 0018CE0C  4E 80 00 20 */	blr 

.global func_801C3850
func_801C3850:
/* 801C3850 0018CE10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C3854 0018CE14  7C 08 02 A6 */	mflr r0
/* 801C3858 0018CE18  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C385C 0018CE1C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C3860 0018CE20  7C 7F 1B 78 */	mr r31, r3
/* 801C3864 0018CE24  7C 83 23 78 */	mr r3, r4
/* 801C3868 0018CE28  81 84 00 00 */	lwz r12, 0(r4)
/* 801C386C 0018CE2C  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801C3870 0018CE30  7D 89 03 A6 */	mtctr r12
/* 801C3874 0018CE34  4E 80 04 21 */	bctrl 
/* 801C3878 0018CE38  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 801C387C 0018CE3C  38 81 00 14 */	addi r4, r1, 0x14
/* 801C3880 0018CE40  E0 3F 00 3C */	psq_l f1, 60(r31), 0, qr0
/* 801C3884 0018CE44  10 40 08 28 */	ps_sub f2, f0, f1
/* 801C3888 0018CE48  E0 03 80 08 */	psq_l f0, 8(r3), 1, qr0
/* 801C388C 0018CE4C  E0 3F 80 44 */	psq_l f1, 68(r31), 1, qr0
/* 801C3890 0018CE50  F0 44 00 00 */	psq_st f2, 0(r4), 0, qr0
/* 801C3894 0018CE54  10 40 08 28 */	ps_sub f2, f0, f1
/* 801C3898 0018CE58  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801C389C 0018CE5C  F0 44 80 08 */	psq_st f2, 8(r4), 1, qr0
/* 801C38A0 0018CE60  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801C38A4 0018CE64  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 801C38A8 0018CE68  D0 21 00 08 */	stfs f1, 8(r1)
/* 801C38AC 0018CE6C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801C38B0 0018CE70  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801C38B4 0018CE74  48 24 75 A5 */	bl Atan2FIdx__Q24nw4r4mathFff
/* 801C38B8 0018CE78  C0 02 A4 48 */	lfs f0, lbl_8066A7C8@sda21(r2)
/* 801C38BC 0018CE7C  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 801C38C0 0018CE80  EC 60 00 72 */	fmuls f3, f0, f1
/* 801C38C4 0018CE84  C0 22 C6 7C */	lfs f1, tau__2mm@sda21(r2)
/* 801C38C8 0018CE88  C0 02 C6 78 */	lfs f0, pi__2mm@sda21(r2)
/* 801C38CC 0018CE8C  EC 63 10 28 */	fsubs f3, f3, f2
/* 801C38D0 0018CE90  48 00 00 08 */	b lbl_801C38D8
lbl_801C38D4:
/* 801C38D4 0018CE94  EC 63 08 28 */	fsubs f3, f3, f1
lbl_801C38D8:
/* 801C38D8 0018CE98  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 801C38DC 0018CE9C  4C 40 13 82 */	cror 2, 0, 2
/* 801C38E0 0018CEA0  41 82 FF F4 */	beq lbl_801C38D4
/* 801C38E4 0018CEA4  C0 02 C6 78 */	lfs f0, pi__2mm@sda21(r2)
/* 801C38E8 0018CEA8  C0 22 C6 7C */	lfs f1, tau__2mm@sda21(r2)
/* 801C38EC 0018CEAC  FC 00 00 50 */	fneg f0, f0
/* 801C38F0 0018CEB0  48 00 00 08 */	b lbl_801C38F8
lbl_801C38F4:
/* 801C38F4 0018CEB4  EC 63 08 2A */	fadds f3, f3, f1
lbl_801C38F8:
/* 801C38F8 0018CEB8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801C38FC 0018CEBC  41 80 FF F8 */	blt lbl_801C38F4
/* 801C3900 0018CEC0  C0 42 A4 4C */	lfs f2, lbl_8066A7CC@sda21(r2)
/* 801C3904 0018CEC4  C0 22 C6 90 */	lfs f1, deg2rad__2mm@sda21(r2)
/* 801C3908 0018CEC8  C0 02 A4 50 */	lfs f0, lbl_8066A7D0@sda21(r2)
/* 801C390C 0018CECC  EC 22 00 72 */	fmuls f1, f2, f1
/* 801C3910 0018CED0  EC 00 00 72 */	fmuls f0, f0, f1
/* 801C3914 0018CED4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801C3918 0018CED8  40 81 00 0C */	ble lbl_801C3924
/* 801C391C 0018CEDC  38 60 00 02 */	li r3, 2
/* 801C3920 0018CEE0  48 00 00 40 */	b lbl_801C3960
lbl_801C3924:
/* 801C3924 0018CEE4  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 801C3928 0018CEE8  40 81 00 0C */	ble lbl_801C3934
/* 801C392C 0018CEEC  38 60 00 04 */	li r3, 4
/* 801C3930 0018CEF0  48 00 00 30 */	b lbl_801C3960
lbl_801C3934:
/* 801C3934 0018CEF4  FC 00 00 50 */	fneg f0, f0
/* 801C3938 0018CEF8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801C393C 0018CEFC  40 80 00 0C */	bge lbl_801C3948
/* 801C3940 0018CF00  38 60 00 02 */	li r3, 2
/* 801C3944 0018CF04  48 00 00 1C */	b lbl_801C3960
lbl_801C3948:
/* 801C3948 0018CF08  FC 00 08 50 */	fneg f0, f1
/* 801C394C 0018CF0C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801C3950 0018CF10  40 80 00 0C */	bge lbl_801C395C
/* 801C3954 0018CF14  38 60 00 04 */	li r3, 4
/* 801C3958 0018CF18  48 00 00 08 */	b lbl_801C3960
lbl_801C395C:
/* 801C395C 0018CF1C  38 60 00 01 */	li r3, 1
lbl_801C3960:
/* 801C3960 0018CF20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C3964 0018CF24  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C3968 0018CF28  7C 08 03 A6 */	mtlr r0
/* 801C396C 0018CF2C  38 21 00 30 */	addi r1, r1, 0x30
/* 801C3970 0018CF30  4E 80 00 20 */	blr 