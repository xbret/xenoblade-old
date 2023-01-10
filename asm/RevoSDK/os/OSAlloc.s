.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global DLInsert
DLInsert:
/* 80353680 0031CC40  7C 67 1B 78 */	mr r7, r3
/* 80353684 0031CC44  38 C0 00 00 */	li r6, 0
/* 80353688 0031CC48  48 00 00 18 */	b .L_803536A0
/* 8035368C 0031CC4C  60 00 00 00 */	nop 
.L_80353690:
/* 80353690 0031CC50  7C 04 38 40 */	cmplw r4, r7
/* 80353694 0031CC54  40 81 00 14 */	ble .L_803536A8
/* 80353698 0031CC58  7C E6 3B 78 */	mr r6, r7
/* 8035369C 0031CC5C  80 E7 00 04 */	lwz r7, 4(r7)
.L_803536A0:
/* 803536A0 0031CC60  2C 07 00 00 */	cmpwi r7, 0
/* 803536A4 0031CC64  40 82 FF EC */	bne .L_80353690
.L_803536A8:
/* 803536A8 0031CC68  2C 07 00 00 */	cmpwi r7, 0
/* 803536AC 0031CC6C  90 E4 00 04 */	stw r7, 4(r4)
/* 803536B0 0031CC70  90 C4 00 00 */	stw r6, 0(r4)
/* 803536B4 0031CC74  41 82 00 38 */	beq .L_803536EC
/* 803536B8 0031CC78  90 87 00 00 */	stw r4, 0(r7)
/* 803536BC 0031CC7C  80 A4 00 08 */	lwz r5, 8(r4)
/* 803536C0 0031CC80  7C 04 2A 14 */	add r0, r4, r5
/* 803536C4 0031CC84  7C 00 38 40 */	cmplw r0, r7
/* 803536C8 0031CC88  40 82 00 24 */	bne .L_803536EC
/* 803536CC 0031CC8C  80 07 00 08 */	lwz r0, 8(r7)
/* 803536D0 0031CC90  7C 05 02 14 */	add r0, r5, r0
/* 803536D4 0031CC94  90 04 00 08 */	stw r0, 8(r4)
/* 803536D8 0031CC98  80 E7 00 04 */	lwz r7, 4(r7)
/* 803536DC 0031CC9C  90 E4 00 04 */	stw r7, 4(r4)
/* 803536E0 0031CCA0  2C 07 00 00 */	cmpwi r7, 0
/* 803536E4 0031CCA4  41 82 00 08 */	beq .L_803536EC
/* 803536E8 0031CCA8  90 87 00 00 */	stw r4, 0(r7)
.L_803536EC:
/* 803536EC 0031CCAC  2C 06 00 00 */	cmpwi r6, 0
/* 803536F0 0031CCB0  41 82 00 38 */	beq .L_80353728
/* 803536F4 0031CCB4  90 86 00 04 */	stw r4, 4(r6)
/* 803536F8 0031CCB8  80 A6 00 08 */	lwz r5, 8(r6)
/* 803536FC 0031CCBC  7C 06 2A 14 */	add r0, r6, r5
/* 80353700 0031CCC0  7C 00 20 40 */	cmplw r0, r4
/* 80353704 0031CCC4  4C 82 00 20 */	bnelr 
/* 80353708 0031CCC8  80 04 00 08 */	lwz r0, 8(r4)
/* 8035370C 0031CCCC  2C 07 00 00 */	cmpwi r7, 0
/* 80353710 0031CCD0  7C 05 02 14 */	add r0, r5, r0
/* 80353714 0031CCD4  90 06 00 08 */	stw r0, 8(r6)
/* 80353718 0031CCD8  90 E6 00 04 */	stw r7, 4(r6)
/* 8035371C 0031CCDC  4D 82 00 20 */	beqlr 
/* 80353720 0031CCE0  90 C7 00 00 */	stw r6, 0(r7)
/* 80353724 0031CCE4  4E 80 00 20 */	blr
.L_80353728:
/* 80353728 0031CCE8  7C 83 23 78 */	mr r3, r4
/* 8035372C 0031CCEC  4E 80 00 20 */	blr

.balign 16, 0
.global OSAllocFromHeap
OSAllocFromHeap:
/* 80353730 0031CCF0  1C 63 00 0C */	mulli r3, r3, 0xc
/* 80353734 0031CCF4  80 AD B8 DC */	lwz r5, lbl_80667A5C@sda21(r13)
/* 80353738 0031CCF8  38 04 00 3F */	addi r0, r4, 0x3f
/* 8035373C 0031CCFC  7C A5 1A 14 */	add r5, r5, r3
/* 80353740 0031CD00  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 80353744 0031CD04  80 65 00 04 */	lwz r3, 4(r5)
/* 80353748 0031CD08  7C 66 1B 78 */	mr r6, r3
/* 8035374C 0031CD0C  48 00 00 14 */	b .L_80353760
.L_80353750:
/* 80353750 0031CD10  80 06 00 08 */	lwz r0, 8(r6)
/* 80353754 0031CD14  7C 04 00 00 */	cmpw r4, r0
/* 80353758 0031CD18  40 81 00 10 */	ble .L_80353768
/* 8035375C 0031CD1C  80 C6 00 04 */	lwz r6, 4(r6)
.L_80353760:
/* 80353760 0031CD20  2C 06 00 00 */	cmpwi r6, 0
/* 80353764 0031CD24  40 82 FF EC */	bne .L_80353750
.L_80353768:
/* 80353768 0031CD28  2C 06 00 00 */	cmpwi r6, 0
/* 8035376C 0031CD2C  40 82 00 0C */	bne .L_80353778
/* 80353770 0031CD30  38 60 00 00 */	li r3, 0
/* 80353774 0031CD34  4E 80 00 20 */	blr
.L_80353778:
/* 80353778 0031CD38  80 06 00 08 */	lwz r0, 8(r6)
/* 8035377C 0031CD3C  7C 04 00 50 */	subf r0, r4, r0
/* 80353780 0031CD40  28 00 00 40 */	cmplwi r0, 0x40
/* 80353784 0031CD44  40 80 00 3C */	bge .L_803537C0
/* 80353788 0031CD48  80 86 00 04 */	lwz r4, 4(r6)
/* 8035378C 0031CD4C  2C 04 00 00 */	cmpwi r4, 0
/* 80353790 0031CD50  41 82 00 0C */	beq .L_8035379C
/* 80353794 0031CD54  80 06 00 00 */	lwz r0, 0(r6)
/* 80353798 0031CD58  90 04 00 00 */	stw r0, 0(r4)
.L_8035379C:
/* 8035379C 0031CD5C  80 86 00 00 */	lwz r4, 0(r6)
/* 803537A0 0031CD60  2C 04 00 00 */	cmpwi r4, 0
/* 803537A4 0031CD64  40 82 00 0C */	bne .L_803537B0
/* 803537A8 0031CD68  80 66 00 04 */	lwz r3, 4(r6)
/* 803537AC 0031CD6C  48 00 00 0C */	b .L_803537B8
.L_803537B0:
/* 803537B0 0031CD70  80 06 00 04 */	lwz r0, 4(r6)
/* 803537B4 0031CD74  90 04 00 04 */	stw r0, 4(r4)
.L_803537B8:
/* 803537B8 0031CD78  90 65 00 04 */	stw r3, 4(r5)
/* 803537BC 0031CD7C  48 00 00 44 */	b .L_80353800
.L_803537C0:
/* 803537C0 0031CD80  90 86 00 08 */	stw r4, 8(r6)
/* 803537C4 0031CD84  7C 86 22 14 */	add r4, r6, r4
/* 803537C8 0031CD88  90 04 00 08 */	stw r0, 8(r4)
/* 803537CC 0031CD8C  80 06 00 00 */	lwz r0, 0(r6)
/* 803537D0 0031CD90  90 04 00 00 */	stw r0, 0(r4)
/* 803537D4 0031CD94  80 66 00 04 */	lwz r3, 4(r6)
/* 803537D8 0031CD98  90 64 00 04 */	stw r3, 4(r4)
/* 803537DC 0031CD9C  2C 03 00 00 */	cmpwi r3, 0
/* 803537E0 0031CDA0  41 82 00 08 */	beq .L_803537E8
/* 803537E4 0031CDA4  90 83 00 00 */	stw r4, 0(r3)
.L_803537E8:
/* 803537E8 0031CDA8  80 64 00 00 */	lwz r3, 0(r4)
/* 803537EC 0031CDAC  2C 03 00 00 */	cmpwi r3, 0
/* 803537F0 0031CDB0  41 82 00 0C */	beq .L_803537FC
/* 803537F4 0031CDB4  90 83 00 04 */	stw r4, 4(r3)
/* 803537F8 0031CDB8  48 00 00 08 */	b .L_80353800
.L_803537FC:
/* 803537FC 0031CDBC  90 85 00 04 */	stw r4, 4(r5)
.L_80353800:
/* 80353800 0031CDC0  80 65 00 08 */	lwz r3, 8(r5)
/* 80353804 0031CDC4  38 00 00 00 */	li r0, 0
/* 80353808 0031CDC8  90 66 00 04 */	stw r3, 4(r6)
/* 8035380C 0031CDCC  2C 03 00 00 */	cmpwi r3, 0
/* 80353810 0031CDD0  90 06 00 00 */	stw r0, 0(r6)
/* 80353814 0031CDD4  41 82 00 08 */	beq .L_8035381C
/* 80353818 0031CDD8  90 C3 00 00 */	stw r6, 0(r3)
.L_8035381C:
/* 8035381C 0031CDDC  90 C5 00 08 */	stw r6, 8(r5)
/* 80353820 0031CDE0  38 66 00 20 */	addi r3, r6, 0x20
/* 80353824 0031CDE4  4E 80 00 20 */	blr 

.balign 16, 0
.global OSFreeToHeap
OSFreeToHeap:
/* 80353830 0031CDF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80353834 0031CDF4  7C 08 02 A6 */	mflr r0
/* 80353838 0031CDF8  38 84 FF E0 */	addi r4, r4, -32
/* 8035383C 0031CDFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80353840 0031CE00  1C 03 00 0C */	mulli r0, r3, 0xc
/* 80353844 0031CE04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80353848 0031CE08  80 AD B8 DC */	lwz r5, lbl_80667A5C@sda21(r13)
/* 8035384C 0031CE0C  80 C4 00 04 */	lwz r6, 4(r4)
/* 80353850 0031CE10  7F E5 02 14 */	add r31, r5, r0
/* 80353854 0031CE14  2C 06 00 00 */	cmpwi r6, 0
/* 80353858 0031CE18  80 7F 00 08 */	lwz r3, 8(r31)
/* 8035385C 0031CE1C  41 82 00 0C */	beq .L_80353868
/* 80353860 0031CE20  80 04 00 00 */	lwz r0, 0(r4)
/* 80353864 0031CE24  90 06 00 00 */	stw r0, 0(r6)
.L_80353868:
/* 80353868 0031CE28  80 A4 00 00 */	lwz r5, 0(r4)
/* 8035386C 0031CE2C  2C 05 00 00 */	cmpwi r5, 0
/* 80353870 0031CE30  40 82 00 0C */	bne .L_8035387C
/* 80353874 0031CE34  80 64 00 04 */	lwz r3, 4(r4)
/* 80353878 0031CE38  48 00 00 0C */	b .L_80353884
.L_8035387C:
/* 8035387C 0031CE3C  80 04 00 04 */	lwz r0, 4(r4)
/* 80353880 0031CE40  90 05 00 04 */	stw r0, 4(r5)
.L_80353884:
/* 80353884 0031CE44  90 7F 00 08 */	stw r3, 8(r31)
/* 80353888 0031CE48  80 7F 00 04 */	lwz r3, 4(r31)
/* 8035388C 0031CE4C  4B FF FD F5 */	bl DLInsert
/* 80353890 0031CE50  90 7F 00 04 */	stw r3, 4(r31)
/* 80353894 0031CE54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80353898 0031CE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035389C 0031CE5C  7C 08 03 A6 */	mtlr r0
/* 803538A0 0031CE60  38 21 00 10 */	addi r1, r1, 0x10
/* 803538A4 0031CE64  4E 80 00 20 */	blr 

.balign 16, 0
.global OSSetCurrentHeap
OSSetCurrentHeap:
/* 803538B0 0031CE70  80 0D 99 D8 */	lwz r0, lbl_80665B58@sda21(r13)
/* 803538B4 0031CE74  90 6D 99 D8 */	stw r3, lbl_80665B58@sda21(r13)
/* 803538B8 0031CE78  7C 03 03 78 */	mr r3, r0
/* 803538BC 0031CE7C  4E 80 00 20 */	blr 

.balign 16, 0
.global OSInitAlloc
OSInitAlloc:
/* 803538C0 0031CE80  1C E5 00 0C */	mulli r7, r5, 0xc
/* 803538C4 0031CE84  90 6D B8 DC */	stw r3, lbl_80667A5C@sda21(r13)
/* 803538C8 0031CE88  39 00 00 00 */	li r8, 0
/* 803538CC 0031CE8C  90 AD B8 D8 */	stw r5, lbl_80667A58@sda21(r13)
/* 803538D0 0031CE90  38 C0 00 00 */	li r6, 0
/* 803538D4 0031CE94  38 A0 FF FF */	li r5, -1
/* 803538D8 0031CE98  38 60 00 00 */	li r3, 0
/* 803538DC 0031CE9C  48 00 00 20 */	b .L_803538FC
.L_803538E0:
/* 803538E0 0031CEA0  80 0D B8 DC */	lwz r0, lbl_80667A5C@sda21(r13)
/* 803538E4 0031CEA4  39 08 00 01 */	addi r8, r8, 1
/* 803538E8 0031CEA8  7C A6 01 2E */	stwx r5, r6, r0
/* 803538EC 0031CEAC  7D 20 32 14 */	add r9, r0, r6
/* 803538F0 0031CEB0  38 C6 00 0C */	addi r6, r6, 0xc
/* 803538F4 0031CEB4  90 69 00 08 */	stw r3, 8(r9)
/* 803538F8 0031CEB8  90 69 00 04 */	stw r3, 4(r9)
.L_803538FC:
/* 803538FC 0031CEBC  80 0D B8 D8 */	lwz r0, lbl_80667A58@sda21(r13)
/* 80353900 0031CEC0  7C 08 00 00 */	cmpw r8, r0
/* 80353904 0031CEC4  41 80 FF DC */	blt .L_803538E0
/* 80353908 0031CEC8  80 6D B8 DC */	lwz r3, lbl_80667A5C@sda21(r13)
/* 8035390C 0031CECC  54 80 00 34 */	rlwinm r0, r4, 0, 0, 0x1a
/* 80353910 0031CED0  38 80 FF FF */	li r4, -1
/* 80353914 0031CED4  90 8D 99 D8 */	stw r4, lbl_80665B58@sda21(r13)
/* 80353918 0031CED8  7C 63 3A 14 */	add r3, r3, r7
/* 8035391C 0031CEDC  38 63 00 1F */	addi r3, r3, 0x1f
/* 80353920 0031CEE0  90 0D B8 D0 */	stw r0, lbl_80667A50@sda21(r13)
/* 80353924 0031CEE4  54 63 00 34 */	rlwinm r3, r3, 0, 0, 0x1a
/* 80353928 0031CEE8  90 6D B8 D4 */	stw r3, lbl_80667A54@sda21(r13)
/* 8035392C 0031CEEC  4E 80 00 20 */	blr 

.balign 16, 0
.global OSCreateHeap
OSCreateHeap:
/* 80353930 0031CEF0  80 CD B8 D8 */	lwz r6, lbl_80667A58@sda21(r13)
/* 80353934 0031CEF4  38 03 00 1F */	addi r0, r3, 0x1f
/* 80353938 0031CEF8  54 07 00 34 */	rlwinm r7, r0, 0, 0, 0x1a
/* 8035393C 0031CEFC  54 84 00 34 */	rlwinm r4, r4, 0, 0, 0x1a
/* 80353940 0031CF00  80 AD B8 DC */	lwz r5, lbl_80667A5C@sda21(r13)
/* 80353944 0031CF04  38 60 00 00 */	li r3, 0
/* 80353948 0031CF08  7C C9 03 A6 */	mtctr r6
/* 8035394C 0031CF0C  2C 06 00 00 */	cmpwi r6, 0
/* 80353950 0031CF10  40 81 00 48 */	ble .L_80353998
/* 80353954 0031CF14  60 00 00 00 */	nop 
.L_80353958:
/* 80353958 0031CF18  80 05 00 00 */	lwz r0, 0(r5)
/* 8035395C 0031CF1C  2C 00 00 00 */	cmpwi r0, 0
/* 80353960 0031CF20  40 80 00 2C */	bge .L_8035398C
/* 80353964 0031CF24  7C 07 20 50 */	subf r0, r7, r4
/* 80353968 0031CF28  90 05 00 00 */	stw r0, 0(r5)
/* 8035396C 0031CF2C  38 80 00 00 */	li r4, 0
/* 80353970 0031CF30  90 87 00 00 */	stw r4, 0(r7)
/* 80353974 0031CF34  90 87 00 04 */	stw r4, 4(r7)
/* 80353978 0031CF38  80 05 00 00 */	lwz r0, 0(r5)
/* 8035397C 0031CF3C  90 07 00 08 */	stw r0, 8(r7)
/* 80353980 0031CF40  90 E5 00 04 */	stw r7, 4(r5)
/* 80353984 0031CF44  90 85 00 08 */	stw r4, 8(r5)
/* 80353988 0031CF48  4E 80 00 20 */	blr
.L_8035398C:
/* 8035398C 0031CF4C  38 A5 00 0C */	addi r5, r5, 0xc
/* 80353990 0031CF50  38 63 00 01 */	addi r3, r3, 1
/* 80353994 0031CF54  42 00 FF C4 */	bdnz .L_80353958
.L_80353998:
/* 80353998 0031CF58  38 60 FF FF */	li r3, -1
/* 8035399C 0031CF5C  4E 80 00 20 */	blr 

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global lbl_80665B58
lbl_80665B58:
	.4byte 0xFFFFFFFF
	.4byte 0

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.global lbl_80667A50
lbl_80667A50:
	.skip 0x4
.global lbl_80667A54
lbl_80667A54:
	.skip 0x4
.global lbl_80667A58
lbl_80667A58:
	.skip 0x4
.global lbl_80667A5C
lbl_80667A5C:
	.skip 0x4