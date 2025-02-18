.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CLoad, global
/* 802AE43C 002779FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AE440 00277A00  7C 08 02 A6 */	mflr r0
/* 802AE444 00277A04  3C A0 80 54 */	lis r5, __vt__5CLoad@ha
/* 802AE448 00277A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AE44C 00277A0C  38 A5 DA D0 */	addi r5, r5, __vt__5CLoad@l
/* 802AE450 00277A10  BF C1 00 08 */	stmw r30, 8(r1)
/* 802AE454 00277A14  7C 7E 1B 78 */	mr r30, r3
/* 802AE458 00277A18  7C 9F 23 78 */	mr r31, r4
/* 802AE45C 00277A1C  90 A3 00 00 */	stw r5, 0(r3)
/* 802AE460 00277A20  38 63 00 04 */	addi r3, r3, 4
/* 802AE464 00277A24  48 1B 11 01 */	bl __ct__17UnkClass_8045F564Fv
/* 802AE468 00277A28  38 80 00 00 */	li r4, 0
/* 802AE46C 00277A2C  38 00 00 01 */	li r0, 1
/* 802AE470 00277A30  90 9E 00 14 */	stw r4, 0x14(r30)
/* 802AE474 00277A34  7F C3 F3 78 */	mr r3, r30
/* 802AE478 00277A38  90 9E 00 18 */	stw r4, 0x18(r30)
/* 802AE47C 00277A3C  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 802AE480 00277A40  90 9E 00 20 */	stw r4, 0x20(r30)
/* 802AE484 00277A44  90 9E 00 24 */	stw r4, 0x24(r30)
/* 802AE488 00277A48  98 9E 00 28 */	stb r4, 0x28(r30)
/* 802AE48C 00277A4C  98 1E 00 29 */	stb r0, 0x29(r30)
/* 802AE490 00277A50  98 9E 00 2A */	stb r4, 0x2a(r30)
/* 802AE494 00277A54  98 9E 00 2B */	stb r4, 0x2b(r30)
/* 802AE498 00277A58  98 1E 00 2C */	stb r0, 0x2c(r30)
/* 802AE49C 00277A5C  9B FE 00 2D */	stb r31, 0x2d(r30)
/* 802AE4A0 00277A60  BB C1 00 08 */	lmw r30, 8(r1)
/* 802AE4A4 00277A64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AE4A8 00277A68  7C 08 03 A6 */	mtlr r0
/* 802AE4AC 00277A6C  38 21 00 10 */	addi r1, r1, 0x10
/* 802AE4B0 00277A70  4E 80 00 20 */	blr 
.endfn __ct__CLoad

.fn __dt__5CLoadFv, global
/* 802AE4B4 00277A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AE4B8 00277A78  7C 08 02 A6 */	mflr r0
/* 802AE4BC 00277A7C  2C 03 00 00 */	cmpwi r3, 0
/* 802AE4C0 00277A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AE4C4 00277A84  BF C1 00 08 */	stmw r30, 8(r1)
/* 802AE4C8 00277A88  7C 7E 1B 78 */	mr r30, r3
/* 802AE4CC 00277A8C  7C 9F 23 78 */	mr r31, r4
/* 802AE4D0 00277A90  41 82 00 20 */	beq .L_802AE4F0
/* 802AE4D4 00277A94  38 80 FF FF */	li r4, -1
/* 802AE4D8 00277A98  38 63 00 04 */	addi r3, r3, 4
/* 802AE4DC 00277A9C  48 1B 10 A5 */	bl __dt__17UnkClass_8045F564Fv
/* 802AE4E0 00277AA0  2C 1F 00 00 */	cmpwi r31, 0
/* 802AE4E4 00277AA4  40 81 00 0C */	ble .L_802AE4F0
/* 802AE4E8 00277AA8  7F C3 F3 78 */	mr r3, r30
/* 802AE4EC 00277AAC  48 18 67 41 */	bl __dl__FPv
.L_802AE4F0:
/* 802AE4F0 00277AB0  7F C3 F3 78 */	mr r3, r30
/* 802AE4F4 00277AB4  BB C1 00 08 */	lmw r30, 8(r1)
/* 802AE4F8 00277AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AE4FC 00277ABC  7C 08 03 A6 */	mtlr r0
/* 802AE500 00277AC0  38 21 00 10 */	addi r1, r1, 0x10
/* 802AE504 00277AC4  4E 80 00 20 */	blr 
.endfn __dt__5CLoadFv

.fn func_802AE508, global
/* 802AE508 00277AC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AE50C 00277ACC  7C 08 02 A6 */	mflr r0
/* 802AE510 00277AD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AE514 00277AD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AE518 00277AD8  7C 7F 1B 78 */	mr r31, r3
/* 802AE51C 00277ADC  48 18 5E 85 */	bl Heap_getRegionIndex2__3mtlFv
/* 802AE520 00277AE0  3C 80 80 51 */	lis r4, CLoad_strpool@ha
/* 802AE524 00277AE4  7F E5 FB 78 */	mr r5, r31
/* 802AE528 00277AE8  38 84 C2 D8 */	addi r4, r4, CLoad_strpool@l
/* 802AE52C 00277AEC  38 C0 00 00 */	li r6, 0
/* 802AE530 00277AF0  38 E0 00 00 */	li r7, 0
/* 802AE534 00277AF4  48 1A 02 61 */	bl CDeviceFile_openFile1__FiPCcPvii
/* 802AE538 00277AF8  90 7F 00 14 */	stw r3, 0x14(r31)
/* 802AE53C 00277AFC  38 80 00 03 */	li r4, 3
/* 802AE540 00277B00  48 1A 0C 15 */	bl CDeviceFile_8044F154__FP17UnkClass_80451720i
/* 802AE544 00277B04  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 802AE548 00277B08  48 1A 0E CD */	bl CDeviceFile_8044F414__FP17UnkClass_80451720
/* 802AE54C 00277B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AE550 00277B10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AE554 00277B14  7C 08 03 A6 */	mtlr r0
/* 802AE558 00277B18  38 21 00 10 */	addi r1, r1, 0x10
/* 802AE55C 00277B1C  4E 80 00 20 */	blr 
.endfn func_802AE508

.fn func_802AE560, global
/* 802AE560 00277B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AE564 00277B24  7C 08 02 A6 */	mflr r0
/* 802AE568 00277B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AE56C 00277B2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AE570 00277B30  7C 7F 1B 78 */	mr r31, r3
/* 802AE574 00277B34  88 03 00 28 */	lbz r0, 0x28(r3)
/* 802AE578 00277B38  2C 00 00 00 */	cmpwi r0, 0
/* 802AE57C 00277B3C  41 82 00 60 */	beq .L_802AE5DC
/* 802AE580 00277B40  88 03 00 2A */	lbz r0, 0x2a(r3)
/* 802AE584 00277B44  2C 00 00 00 */	cmpwi r0, 0
/* 802AE588 00277B48  41 82 00 54 */	beq .L_802AE5DC
/* 802AE58C 00277B4C  2C 00 00 01 */	cmpwi r0, 1
/* 802AE590 00277B50  41 82 00 18 */	beq .L_802AE5A8
/* 802AE594 00277B54  2C 00 00 02 */	cmpwi r0, 2
/* 802AE598 00277B58  41 82 00 18 */	beq .L_802AE5B0
/* 802AE59C 00277B5C  2C 00 00 03 */	cmpwi r0, 3
/* 802AE5A0 00277B60  41 82 00 20 */	beq .L_802AE5C0
/* 802AE5A4 00277B64  48 00 00 20 */	b .L_802AE5C4
.L_802AE5A8:
/* 802AE5A8 00277B68  48 00 02 45 */	bl func_802AE7EC
/* 802AE5AC 00277B6C  48 00 00 18 */	b .L_802AE5C4
.L_802AE5B0:
/* 802AE5B0 00277B70  80 63 00 24 */	lwz r3, 0x24(r3)
/* 802AE5B4 00277B74  C0 22 B3 18 */	lfs f1, float_8066B698@sda21(r2)
/* 802AE5B8 00277B78  4B E8 8E 8D */	bl func_80137444
/* 802AE5BC 00277B7C  48 00 00 08 */	b .L_802AE5C4
.L_802AE5C0:
/* 802AE5C0 00277B80  48 00 02 D5 */	bl func_802AE894
.L_802AE5C4:
/* 802AE5C4 00277B84  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802AE5C8 00277B88  38 80 00 00 */	li r4, 0
/* 802AE5CC 00277B8C  81 83 00 00 */	lwz r12, 0(r3)
/* 802AE5D0 00277B90  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802AE5D4 00277B94  7D 89 03 A6 */	mtctr r12
/* 802AE5D8 00277B98  4E 80 04 21 */	bctrl 
.L_802AE5DC:
/* 802AE5DC 00277B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AE5E0 00277BA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AE5E4 00277BA4  7C 08 03 A6 */	mtlr r0
/* 802AE5E8 00277BA8  38 21 00 10 */	addi r1, r1, 0x10
/* 802AE5EC 00277BAC  4E 80 00 20 */	blr 
.endfn func_802AE560

.fn func_802AE5F0, global
/* 802AE5F0 00277BB0  88 03 00 28 */	lbz r0, 0x28(r3)
/* 802AE5F4 00277BB4  2C 00 00 00 */	cmpwi r0, 0
/* 802AE5F8 00277BB8  4D 82 00 20 */	beqlr 
/* 802AE5FC 00277BBC  88 03 00 29 */	lbz r0, 0x29(r3)
/* 802AE600 00277BC0  2C 00 00 00 */	cmpwi r0, 0
/* 802AE604 00277BC4  40 82 00 08 */	bne .L_802AE60C
/* 802AE608 00277BC8  4E 80 00 20 */	blr
.L_802AE60C:
/* 802AE60C 00277BCC  88 03 00 2A */	lbz r0, 0x2a(r3)
/* 802AE610 00277BD0  2C 00 00 00 */	cmpwi r0, 0
/* 802AE614 00277BD4  4D 82 00 20 */	beqlr 
/* 802AE618 00277BD8  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802AE61C 00277BDC  38 A0 00 00 */	li r5, 0
/* 802AE620 00277BE0  38 C0 00 01 */	li r6, 1
/* 802AE624 00277BE4  4B E8 8A 14 */	b func_80137038__FPQ34nw4r3lyt6LayoutPvii
/* 802AE628 00277BE8  4E 80 00 20 */	blr 
.endfn func_802AE5F0

.fn func_802AE62C, global
/* 802AE62C 00277BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AE630 00277BF0  7C 08 02 A6 */	mflr r0
/* 802AE634 00277BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AE638 00277BF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AE63C 00277BFC  7C 7F 1B 78 */	mr r31, r3
/* 802AE640 00277C00  48 19 A4 05 */	bl func_80448A44__9CDeviceVIFv
/* 802AE644 00277C04  38 7F 00 14 */	addi r3, r31, 0x14
/* 802AE648 00277C08  4B E8 AA 99 */	bl func_801390E0__FPP17UnkClass_80451720
/* 802AE64C 00277C0C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802AE650 00277C10  38 00 00 00 */	li r0, 0
/* 802AE654 00277C14  98 1F 00 28 */	stb r0, 0x28(r31)
/* 802AE658 00277C18  2C 03 00 00 */	cmpwi r3, 0
/* 802AE65C 00277C1C  41 82 00 24 */	beq .L_802AE680
/* 802AE660 00277C20  41 82 00 18 */	beq .L_802AE678
/* 802AE664 00277C24  81 83 00 00 */	lwz r12, 0(r3)
/* 802AE668 00277C28  38 80 00 01 */	li r4, 1
/* 802AE66C 00277C2C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AE670 00277C30  7D 89 03 A6 */	mtctr r12
/* 802AE674 00277C34  4E 80 04 21 */	bctrl 
.L_802AE678:
/* 802AE678 00277C38  38 00 00 00 */	li r0, 0
/* 802AE67C 00277C3C  90 1F 00 1C */	stw r0, 0x1c(r31)
.L_802AE680:
/* 802AE680 00277C40  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 802AE684 00277C44  4B E8 AA A1 */	bl func_80139124__FPQ34nw4r3lyt19ArcResourceAccessor
/* 802AE688 00277C48  38 00 00 00 */	li r0, 0
/* 802AE68C 00277C4C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 802AE690 00277C50  38 7F 00 04 */	addi r3, r31, 4
/* 802AE694 00277C54  48 1B 10 E5 */	bl func_8045F778__FP17UnkClass_8045F564
/* 802AE698 00277C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AE69C 00277C5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AE6A0 00277C60  7C 08 03 A6 */	mtlr r0
/* 802AE6A4 00277C64  38 21 00 10 */	addi r1, r1, 0x10
/* 802AE6A8 00277C68  4E 80 00 20 */	blr 
.endfn func_802AE62C

.fn func_802AE6AC, global
/* 802AE6AC 00277C6C  88 63 00 2B */	lbz r3, 0x2b(r3)
/* 802AE6B0 00277C70  4E 80 00 20 */	blr 
.endfn func_802AE6AC

.fn func_802AE6B4, global
/* 802AE6B4 00277C74  88 63 00 28 */	lbz r3, 0x28(r3)
/* 802AE6B8 00277C78  4E 80 00 20 */	blr 
.endfn func_802AE6B4

.fn func_802AE6BC, global
/* 802AE6BC 00277C7C  88 63 00 2C */	lbz r3, 0x2c(r3)
/* 802AE6C0 00277C80  4E 80 00 20 */	blr 
.endfn func_802AE6BC

.fn func_802AE6C4, global
/* 802AE6C4 00277C84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AE6C8 00277C88  7C 08 02 A6 */	mflr r0
/* 802AE6CC 00277C8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AE6D0 00277C90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AE6D4 00277C94  7C 7F 1B 78 */	mr r31, r3
/* 802AE6D8 00277C98  88 03 00 2A */	lbz r0, 0x2a(r3)
/* 802AE6DC 00277C9C  2C 00 00 00 */	cmpwi r0, 0
/* 802AE6E0 00277CA0  40 82 00 64 */	bne .L_802AE744
/* 802AE6E4 00277CA4  38 00 00 01 */	li r0, 1
/* 802AE6E8 00277CA8  98 03 00 2A */	stb r0, 0x2a(r3)
/* 802AE6EC 00277CAC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802AE6F0 00277CB0  38 A0 00 00 */	li r5, 0
/* 802AE6F4 00277CB4  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 802AE6F8 00277CB8  81 83 00 00 */	lwz r12, 0(r3)
/* 802AE6FC 00277CBC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802AE700 00277CC0  7D 89 03 A6 */	mtctr r12
/* 802AE704 00277CC4  4E 80 04 21 */	bctrl 
/* 802AE708 00277CC8  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802AE70C 00277CCC  38 A0 00 01 */	li r5, 1
/* 802AE710 00277CD0  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802AE714 00277CD4  81 83 00 00 */	lwz r12, 0(r3)
/* 802AE718 00277CD8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802AE71C 00277CDC  7D 89 03 A6 */	mtctr r12
/* 802AE720 00277CE0  4E 80 04 21 */	bctrl 
/* 802AE724 00277CE4  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802AE728 00277CE8  38 80 00 00 */	li r4, 0
/* 802AE72C 00277CEC  81 83 00 00 */	lwz r12, 0(r3)
/* 802AE730 00277CF0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802AE734 00277CF4  7D 89 03 A6 */	mtctr r12
/* 802AE738 00277CF8  4E 80 04 21 */	bctrl 
/* 802AE73C 00277CFC  38 00 00 00 */	li r0, 0
/* 802AE740 00277D00  98 1F 00 2C */	stb r0, 0x2c(r31)
.L_802AE744:
/* 802AE744 00277D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AE748 00277D08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AE74C 00277D0C  7C 08 03 A6 */	mtlr r0
/* 802AE750 00277D10  38 21 00 10 */	addi r1, r1, 0x10
/* 802AE754 00277D14  4E 80 00 20 */	blr 
.endfn func_802AE6C4

.fn func_802AE758, global
/* 802AE758 00277D18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AE75C 00277D1C  7C 08 02 A6 */	mflr r0
/* 802AE760 00277D20  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AE764 00277D24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AE768 00277D28  7C 7F 1B 78 */	mr r31, r3
/* 802AE76C 00277D2C  88 03 00 2A */	lbz r0, 0x2a(r3)
/* 802AE770 00277D30  28 00 00 02 */	cmplwi r0, 2
/* 802AE774 00277D34  40 82 00 64 */	bne .L_802AE7D8
/* 802AE778 00277D38  38 00 00 03 */	li r0, 3
/* 802AE77C 00277D3C  98 03 00 2A */	stb r0, 0x2a(r3)
/* 802AE780 00277D40  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802AE784 00277D44  38 A0 00 00 */	li r5, 0
/* 802AE788 00277D48  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 802AE78C 00277D4C  81 83 00 00 */	lwz r12, 0(r3)
/* 802AE790 00277D50  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802AE794 00277D54  7D 89 03 A6 */	mtctr r12
/* 802AE798 00277D58  4E 80 04 21 */	bctrl 
/* 802AE79C 00277D5C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802AE7A0 00277D60  38 A0 00 01 */	li r5, 1
/* 802AE7A4 00277D64  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802AE7A8 00277D68  81 83 00 00 */	lwz r12, 0(r3)
/* 802AE7AC 00277D6C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802AE7B0 00277D70  7D 89 03 A6 */	mtctr r12
/* 802AE7B4 00277D74  4E 80 04 21 */	bctrl 
/* 802AE7B8 00277D78  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802AE7BC 00277D7C  38 80 00 00 */	li r4, 0
/* 802AE7C0 00277D80  81 83 00 00 */	lwz r12, 0(r3)
/* 802AE7C4 00277D84  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802AE7C8 00277D88  7D 89 03 A6 */	mtctr r12
/* 802AE7CC 00277D8C  4E 80 04 21 */	bctrl 
/* 802AE7D0 00277D90  38 00 00 00 */	li r0, 0
/* 802AE7D4 00277D94  98 1F 00 2C */	stb r0, 0x2c(r31)
.L_802AE7D8:
/* 802AE7D8 00277D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AE7DC 00277D9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AE7E0 00277DA0  7C 08 03 A6 */	mtlr r0
/* 802AE7E4 00277DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 802AE7E8 00277DA8  4E 80 00 20 */	blr 
.endfn func_802AE758

.fn func_802AE7EC, global
/* 802AE7EC 00277DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AE7F0 00277DB0  7C 08 02 A6 */	mflr r0
/* 802AE7F4 00277DB4  C0 22 B3 18 */	lfs f1, float_8066B698@sda21(r2)
/* 802AE7F8 00277DB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AE7FC 00277DBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AE800 00277DC0  7C 7F 1B 78 */	mr r31, r3
/* 802AE804 00277DC4  80 63 00 20 */	lwz r3, 0x20(r3)
/* 802AE808 00277DC8  4B E8 8C 3D */	bl func_80137444
/* 802AE80C 00277DCC  2C 03 00 00 */	cmpwi r3, 0
/* 802AE810 00277DD0  41 82 00 70 */	beq .L_802AE880
/* 802AE814 00277DD4  38 00 00 02 */	li r0, 2
/* 802AE818 00277DD8  98 1F 00 2A */	stb r0, 0x2a(r31)
/* 802AE81C 00277DDC  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802AE820 00277DE0  38 A0 00 00 */	li r5, 0
/* 802AE824 00277DE4  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802AE828 00277DE8  81 83 00 00 */	lwz r12, 0(r3)
/* 802AE82C 00277DEC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802AE830 00277DF0  7D 89 03 A6 */	mtctr r12
/* 802AE834 00277DF4  4E 80 04 21 */	bctrl 
/* 802AE838 00277DF8  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802AE83C 00277DFC  38 A0 00 01 */	li r5, 1
/* 802AE840 00277E00  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 802AE844 00277E04  81 83 00 00 */	lwz r12, 0(r3)
/* 802AE848 00277E08  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802AE84C 00277E0C  7D 89 03 A6 */	mtctr r12
/* 802AE850 00277E10  4E 80 04 21 */	bctrl 
/* 802AE854 00277E14  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802AE858 00277E18  38 80 00 00 */	li r4, 0
/* 802AE85C 00277E1C  C0 02 B3 1C */	lfs f0, float_8066B69C@sda21(r2)
/* 802AE860 00277E20  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802AE864 00277E24  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802AE868 00277E28  81 83 00 00 */	lwz r12, 0(r3)
/* 802AE86C 00277E2C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802AE870 00277E30  7D 89 03 A6 */	mtctr r12
/* 802AE874 00277E34  4E 80 04 21 */	bctrl 
/* 802AE878 00277E38  38 00 00 01 */	li r0, 1
/* 802AE87C 00277E3C  98 1F 00 2C */	stb r0, 0x2c(r31)
.L_802AE880:
/* 802AE880 00277E40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AE884 00277E44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AE888 00277E48  7C 08 03 A6 */	mtlr r0
/* 802AE88C 00277E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 802AE890 00277E50  4E 80 00 20 */	blr 
.endfn func_802AE7EC

.fn func_802AE894, global
/* 802AE894 00277E54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AE898 00277E58  7C 08 02 A6 */	mflr r0
/* 802AE89C 00277E5C  C0 22 B3 18 */	lfs f1, float_8066B698@sda21(r2)
/* 802AE8A0 00277E60  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AE8A4 00277E64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AE8A8 00277E68  7C 7F 1B 78 */	mr r31, r3
/* 802AE8AC 00277E6C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 802AE8B0 00277E70  4B E8 8C 61 */	bl func_80137510
/* 802AE8B4 00277E74  2C 03 00 00 */	cmpwi r3, 0
/* 802AE8B8 00277E78  41 82 00 14 */	beq .L_802AE8CC
/* 802AE8BC 00277E7C  38 60 00 00 */	li r3, 0
/* 802AE8C0 00277E80  38 00 00 01 */	li r0, 1
/* 802AE8C4 00277E84  98 7F 00 2A */	stb r3, 0x2a(r31)
/* 802AE8C8 00277E88  98 1F 00 2C */	stb r0, 0x2c(r31)
.L_802AE8CC:
/* 802AE8CC 00277E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AE8D0 00277E90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AE8D4 00277E94  7C 08 03 A6 */	mtlr r0
/* 802AE8D8 00277E98  38 21 00 10 */	addi r1, r1, 0x10
/* 802AE8DC 00277E9C  4E 80 00 20 */	blr 
.endfn func_802AE894

.fn func_802AE8E0, global
/* 802AE8E0 00277EA0  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802AE8E4 00277EA4  2C 00 00 00 */	cmpwi r0, 0
/* 802AE8E8 00277EA8  4D 82 00 20 */	beqlr 
/* 802AE8EC 00277EAC  38 00 00 01 */	li r0, 1
/* 802AE8F0 00277EB0  98 03 00 2B */	stb r0, 0x2b(r3)
/* 802AE8F4 00277EB4  98 03 00 28 */	stb r0, 0x28(r3)
/* 802AE8F8 00277EB8  4E 80 00 20 */	blr 
.endfn func_802AE8E0

.fn CLoad_OnFileEvent, global
/* 802AE8FC 00277EBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AE900 00277EC0  7C 08 02 A6 */	mflr r0
/* 802AE904 00277EC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AE908 00277EC8  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 802AE90C 00277ECC  7C 7D 1B 78 */	mr r29, r3
/* 802AE910 00277ED0  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 802AE914 00277ED4  80 04 00 04 */	lwz r0, 4(r4)
/* 802AE918 00277ED8  7C 05 00 40 */	cmplw r5, r0
/* 802AE91C 00277EDC  40 82 01 54 */	bne .L_802AEA70
/* 802AE920 00277EE0  48 18 5A 81 */	bl Heap_getRegionIndex2__3mtlFv
/* 802AE924 00277EE4  3F E0 80 51 */	lis r31, CLoad_strpool@ha
/* 802AE928 00277EE8  7C 64 1B 78 */	mr r4, r3
/* 802AE92C 00277EEC  3B FF C2 D8 */	addi r31, r31, CLoad_strpool@l
/* 802AE930 00277EF0  38 7D 00 04 */	addi r3, r29, 4
/* 802AE934 00277EF4  38 DF 00 0F */	addi r6, r31, 0xf
/* 802AE938 00277EF8  38 A0 14 00 */	li r5, 0x1400
/* 802AE93C 00277EFC  38 E0 00 00 */	li r7, 0
/* 802AE940 00277F00  48 1B 0D 41 */	bl CLibLayout_addLayoutHeapEntry__FP17UnkClass_8045F564iiPCci
/* 802AE944 00277F04  38 61 00 08 */	addi r3, r1, 8
/* 802AE948 00277F08  38 9D 00 04 */	addi r4, r29, 4
/* 802AE94C 00277F0C  48 1B 0F 0D */	bl __ct__14Class_8045F858FP17UnkClass_8045F564
/* 802AE950 00277F10  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 802AE954 00277F14  38 00 00 00 */	li r0, 0
/* 802AE958 00277F18  38 60 00 00 */	li r3, 0
/* 802AE95C 00277F1C  83 C4 00 04 */	lwz r30, 4(r4)
/* 802AE960 00277F20  90 04 00 04 */	stw r0, 4(r4)
/* 802AE964 00277F24  48 18 60 E9 */	bl MemManager_80434A4C__FUc
/* 802AE968 00277F28  48 1B 08 4D */	bl CLibLayout_getArcResourceAccessorInstance__Fv
/* 802AE96C 00277F2C  90 7D 00 18 */	stw r3, 0x18(r29)
/* 802AE970 00277F30  7F C4 F3 78 */	mr r4, r30
/* 802AE974 00277F34  38 BF 00 15 */	addi r5, r31, 0x15
/* 802AE978 00277F38  48 15 B5 91 */	bl Attach__Q34nw4r3lyt19ArcResourceAccessorFPvPCc
/* 802AE97C 00277F3C  88 1D 00 2D */	lbz r0, 0x2d(r29)
/* 802AE980 00277F40  38 7D 00 1C */	addi r3, r29, 0x1c
/* 802AE984 00277F44  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 802AE988 00277F48  38 BF 00 2B */	addi r5, r31, 0x2b
/* 802AE98C 00277F4C  2C 00 00 00 */	cmpwi r0, 0
/* 802AE990 00277F50  41 82 00 08 */	beq .L_802AE998
/* 802AE994 00277F54  38 BF 00 19 */	addi r5, r31, 0x19
.L_802AE998:
/* 802AE998 00277F58  4B E8 84 ED */	bl func_80136E84__FPPQ34nw4r3lyt6LayoutPQ34nw4r3lyt19ArcResourceAccessorPCc
/* 802AE99C 00277F5C  88 1D 00 2D */	lbz r0, 0x2d(r29)
/* 802AE9A0 00277F60  3C E0 80 51 */	lis r7, CLoad_strpool@ha
/* 802AE9A4 00277F64  38 E7 C2 D8 */	addi r7, r7, CLoad_strpool@l
/* 802AE9A8 00277F68  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 802AE9AC 00277F6C  2C 00 00 00 */	cmpwi r0, 0
/* 802AE9B0 00277F70  80 BD 00 18 */	lwz r5, 0x18(r29)
/* 802AE9B4 00277F74  38 9D 00 20 */	addi r4, r29, 0x20
/* 802AE9B8 00277F78  38 C7 00 52 */	addi r6, r7, 0x52
/* 802AE9BC 00277F7C  41 82 00 08 */	beq .L_802AE9C4
/* 802AE9C0 00277F80  38 C7 00 3D */	addi r6, r7, 0x3d
.L_802AE9C4:
/* 802AE9C4 00277F84  4B E8 85 45 */	bl func_80136F08
/* 802AE9C8 00277F88  88 1D 00 2D */	lbz r0, 0x2d(r29)
/* 802AE9CC 00277F8C  3C E0 80 51 */	lis r7, CLoad_strpool@ha
/* 802AE9D0 00277F90  38 E7 C2 D8 */	addi r7, r7, CLoad_strpool@l
/* 802AE9D4 00277F94  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 802AE9D8 00277F98  2C 00 00 00 */	cmpwi r0, 0
/* 802AE9DC 00277F9C  80 BD 00 18 */	lwz r5, 0x18(r29)
/* 802AE9E0 00277FA0  38 9D 00 24 */	addi r4, r29, 0x24
/* 802AE9E4 00277FA4  38 C7 00 7E */	addi r6, r7, 0x7e
/* 802AE9E8 00277FA8  41 82 00 08 */	beq .L_802AE9F0
/* 802AE9EC 00277FAC  38 C7 00 67 */	addi r6, r7, 0x67
.L_802AE9F0:
/* 802AE9F0 00277FB0  4B E8 85 19 */	bl func_80136F08
/* 802AE9F4 00277FB4  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 802AE9F8 00277FB8  38 A0 00 00 */	li r5, 0
/* 802AE9FC 00277FBC  80 9D 00 24 */	lwz r4, 0x24(r29)
/* 802AEA00 00277FC0  81 83 00 00 */	lwz r12, 0(r3)
/* 802AEA04 00277FC4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802AEA08 00277FC8  7D 89 03 A6 */	mtctr r12
/* 802AEA0C 00277FCC  4E 80 04 21 */	bctrl 
/* 802AEA10 00277FD0  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 802AEA14 00277FD4  38 A0 00 01 */	li r5, 1
/* 802AEA18 00277FD8  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 802AEA1C 00277FDC  81 83 00 00 */	lwz r12, 0(r3)
/* 802AEA20 00277FE0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802AEA24 00277FE4  7D 89 03 A6 */	mtctr r12
/* 802AEA28 00277FE8  4E 80 04 21 */	bctrl 
/* 802AEA2C 00277FEC  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 802AEA30 00277FF0  38 80 00 00 */	li r4, 0
/* 802AEA34 00277FF4  81 83 00 00 */	lwz r12, 0(r3)
/* 802AEA38 00277FF8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802AEA3C 00277FFC  7D 89 03 A6 */	mtctr r12
/* 802AEA40 00278000  4E 80 04 21 */	bctrl 
/* 802AEA44 00278004  7F A3 EB 78 */	mr r3, r29
/* 802AEA48 00278008  4B FF FE 99 */	bl func_802AE8E0
/* 802AEA4C 0027800C  38 00 00 00 */	li r0, 0
/* 802AEA50 00278010  90 1D 00 14 */	stw r0, 0x14(r29)
/* 802AEA54 00278014  38 7D 00 04 */	addi r3, r29, 4
/* 802AEA58 00278018  48 1B 0D B9 */	bl func_8045F810__FP17UnkClass_8045F564
/* 802AEA5C 0027801C  38 61 00 08 */	addi r3, r1, 8
/* 802AEA60 00278020  38 80 FF FF */	li r4, -1
/* 802AEA64 00278024  48 1B 0E 65 */	bl __dt__14Class_8045F858Fv
/* 802AEA68 00278028  38 60 00 01 */	li r3, 1
/* 802AEA6C 0027802C  48 00 00 08 */	b .L_802AEA74
.L_802AEA70:
/* 802AEA70 00278030  38 60 00 00 */	li r3, 0
.L_802AEA74:
/* 802AEA74 00278034  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 802AEA78 00278038  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AEA7C 0027803C  7C 08 03 A6 */	mtlr r0
/* 802AEA80 00278040  38 21 00 20 */	addi r1, r1, 0x20
/* 802AEA84 00278044  4E 80 00 20 */	blr
.endfn CLoad_OnFileEvent

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CLoad_strpool, global
	.asciz "/menu/Load.arc"
	.asciz "CLoad"
	.asciz "arc"
	.asciz "mf00_load01.brlyt"
	.asciz "mf00_load00.brlyt"
	.asciz "mf00_load01_in.brlan"
	.asciz "mf00_load00_in.brlan"
	.asciz "mf00_load01_roop.brlan"
	.asciz "mf00_load00_roop.brlan"
	.balign 4
.endobj CLoad_strpool


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__5CLoad, global
	.4byte __RTTI__5CLoad
	.4byte 0
	.4byte __dt__5CLoadFv
	.4byte WorkEvent1__10IWorkEventFv
	.4byte CLoad_OnFileEvent
	.4byte WorkEvent3__10IWorkEventFv
	.4byte WorkEvent4__10IWorkEventFv
	.4byte WorkEvent5__10IWorkEventFPv
	.4byte WorkEvent6__10IWorkEventFv
	.4byte WorkEvent7__10IWorkEventFv
	.4byte WorkEvent8__10IWorkEventFv
	.4byte WorkEvent9__10IWorkEventFv
	.4byte WorkEvent10__10IWorkEventFv
	.4byte WorkEvent11__10IWorkEventFv
	.4byte WorkEvent12__10IWorkEventFv
	.4byte WorkEvent13__10IWorkEventFv
	.4byte WorkEvent14__10IWorkEventFv
	.4byte WorkEvent15__10IWorkEventFv
	.4byte WorkEvent16__10IWorkEventFv
	.4byte WorkEvent17__10IWorkEventFv
	.4byte WorkEvent18__10IWorkEventFv
	.4byte WorkEvent19__10IWorkEventFv
	.4byte WorkEvent20__10IWorkEventFv
	.4byte WorkEvent21__10IWorkEventFv
	.4byte WorkEvent22__10IWorkEventFv
	.4byte WorkEvent23__10IWorkEventFv
	.4byte WorkEvent24__10IWorkEventFv
	.4byte WorkEvent25__10IWorkEventFv
	.4byte WorkEvent26__10IWorkEventFv
	.4byte WorkEvent27__10IWorkEventFv
	.4byte WorkEvent28__10IWorkEventFv
	.4byte WorkEvent29__10IWorkEventFv
	.4byte WorkEvent30__10IWorkEventFv
	.4byte WorkEvent31__10IWorkEventFv
.endobj __vt__5CLoad

.obj CLoad_hierarchy, global
	.4byte __RTTI__10IWorkEvent
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CLoad_hierarchy


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__5CLoad, global
	.4byte CLoad_typestr
	.4byte CLoad_hierarchy
.endobj __RTTI__5CLoad

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066B698, global
	.float 1.0
.endobj float_8066B698


.obj float_8066B69C, global
	.float 0
.endobj float_8066B69C

.obj CLoad_typestr, global
	.asciz "CLoad"
	.balign 4
.endobj CLoad_typestr

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001B4D8", local
.hidden "@etb_8001B4D8"
	.4byte 0x10080000
	.4byte 0x0000002C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__10IWorkEventFv
.endobj "@etb_8001B4D8"

.obj "@etb_8001B4F4", local
.hidden "@etb_8001B4F4"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001B4F4"

.obj "@etb_8001B4FC", local
.hidden "@etb_8001B4FC"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001B4FC"

.obj "@etb_8001B504", local
.hidden "@etb_8001B504"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8001B504"

.obj "@etb_8001B50C", local
.hidden "@etb_8001B50C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001B50C"

.obj "@etb_8001B514", local
.hidden "@etb_8001B514"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001B514"

.obj "@etb_8001B51C", local
.hidden "@etb_8001B51C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001B51C"

.obj "@etb_8001B524", local
.hidden "@etb_8001B524"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8001B524"

.obj "@etb_8001B52C", local
.hidden "@etb_8001B52C"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8001B52C"

.obj "@etb_8001B534", local
.hidden "@etb_8001B534"
	.4byte 0x18080000
	.4byte 0x0000006C
	.4byte 0x003D0010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__14Class_8045F858Fv
.endobj "@etb_8001B534"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8003317C", local
.hidden "@eti_8003317C"
	.4byte __ct__CLoad
	.4byte 0x00000078
	.4byte "@etb_8001B4D8"
.endobj "@eti_8003317C"

.obj "@eti_80033188", local
.hidden "@eti_80033188"
	.4byte __dt__5CLoadFv
	.4byte 0x00000054
	.4byte "@etb_8001B4F4"
.endobj "@eti_80033188"

.obj "@eti_80033194", local
.hidden "@eti_80033194"
	.4byte func_802AE508
	.4byte 0x00000058
	.4byte "@etb_8001B4FC"
.endobj "@eti_80033194"

.obj "@eti_800331A0", local
.hidden "@eti_800331A0"
	.4byte func_802AE560
	.4byte 0x00000090
	.4byte "@etb_8001B504"
.endobj "@eti_800331A0"

.obj "@eti_800331AC", local
.hidden "@eti_800331AC"
	.4byte func_802AE62C
	.4byte 0x00000080
	.4byte "@etb_8001B50C"
.endobj "@eti_800331AC"

.obj "@eti_800331B8", local
.hidden "@eti_800331B8"
	.4byte func_802AE6C4
	.4byte 0x00000094
	.4byte "@etb_8001B514"
.endobj "@eti_800331B8"

.obj "@eti_800331C4", local
.hidden "@eti_800331C4"
	.4byte func_802AE758
	.4byte 0x00000094
	.4byte "@etb_8001B51C"
.endobj "@eti_800331C4"

.obj "@eti_800331D0", local
.hidden "@eti_800331D0"
	.4byte func_802AE7EC
	.4byte 0x000000A8
	.4byte "@etb_8001B524"
.endobj "@eti_800331D0"

.obj "@eti_800331DC", local
.hidden "@eti_800331DC"
	.4byte func_802AE894
	.4byte 0x0000004C
	.4byte "@etb_8001B52C"
.endobj "@eti_800331DC"

.obj "@eti_800331E8", local
.hidden "@eti_800331E8"
	.4byte CLoad_OnFileEvent
	.4byte 0x0000018C
	.4byte "@etb_8001B534"
.endobj "@eti_800331E8"
