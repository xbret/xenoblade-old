.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900



.fn func_8025D470, global
/* 8025D470 00226A30  3C C0 80 54 */	lis r6, __vt__CPcKizunaCur@ha
/* 8025D474 00226A34  38 A0 00 00 */	li r5, 0
/* 8025D478 00226A38  38 C6 AE 64 */	addi r6, r6, __vt__CPcKizunaCur@l
/* 8025D47C 00226A3C  38 00 00 01 */	li r0, 1
/* 8025D480 00226A40  90 C3 00 00 */	stw r6, 0(r3)
/* 8025D484 00226A44  90 83 00 04 */	stw r4, 4(r3)
/* 8025D488 00226A48  90 A3 00 08 */	stw r5, 8(r3)
/* 8025D48C 00226A4C  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8025D490 00226A50  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8025D494 00226A54  98 A3 00 14 */	stb r5, 0x14(r3)
/* 8025D498 00226A58  98 03 00 15 */	stb r0, 0x15(r3)
/* 8025D49C 00226A5C  98 A3 00 16 */	stb r5, 0x16(r3)
/* 8025D4A0 00226A60  4E 80 00 20 */	blr 
.endfn func_8025D470

.fn func_8025D4A4, global
/* 8025D4A4 00226A64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025D4A8 00226A68  7C 08 02 A6 */	mflr r0
/* 8025D4AC 00226A6C  2C 03 00 00 */	cmpwi r3, 0
/* 8025D4B0 00226A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025D4B4 00226A74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025D4B8 00226A78  7C 7F 1B 78 */	mr r31, r3
/* 8025D4BC 00226A7C  41 82 00 10 */	beq .L_8025D4CC
/* 8025D4C0 00226A80  2C 04 00 00 */	cmpwi r4, 0
/* 8025D4C4 00226A84  40 81 00 08 */	ble .L_8025D4CC
/* 8025D4C8 00226A88  48 1D 77 65 */	bl __dl__FPv
.L_8025D4CC:
/* 8025D4CC 00226A8C  7F E3 FB 78 */	mr r3, r31
/* 8025D4D0 00226A90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025D4D4 00226A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025D4D8 00226A98  7C 08 03 A6 */	mtlr r0
/* 8025D4DC 00226A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8025D4E0 00226AA0  4E 80 00 20 */	blr 
.endfn func_8025D4A4

.fn func_8025D4E4, global
/* 8025D4E4 00226AA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025D4E8 00226AA8  7C 08 02 A6 */	mflr r0
/* 8025D4EC 00226AAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025D4F0 00226AB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025D4F4 00226AB4  3F E0 80 51 */	lis r31, lbl_80508F00@ha
/* 8025D4F8 00226AB8  38 BF 8F 00 */	addi r5, r31, lbl_80508F00@l
/* 8025D4FC 00226ABC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8025D500 00226AC0  7C 7E 1B 78 */	mr r30, r3
/* 8025D504 00226AC4  80 83 00 04 */	lwz r4, 4(r3)
/* 8025D508 00226AC8  38 63 00 08 */	addi r3, r3, 8
/* 8025D50C 00226ACC  4B ED 99 79 */	bl func_80136E84
/* 8025D510 00226AD0  3B FF 8F 00 */	addi r31, r31, lbl_80508F00@l
/* 8025D514 00226AD4  80 7E 00 08 */	lwz r3, 8(r30)
/* 8025D518 00226AD8  80 BE 00 04 */	lwz r5, 4(r30)
/* 8025D51C 00226ADC  38 9E 00 0C */	addi r4, r30, 0xc
/* 8025D520 00226AE0  38 DF 00 18 */	addi r6, r31, 0x18
/* 8025D524 00226AE4  4B ED 99 E5 */	bl func_80136F08
/* 8025D528 00226AE8  80 7E 00 08 */	lwz r3, 8(r30)
/* 8025D52C 00226AEC  38 9E 00 10 */	addi r4, r30, 0x10
/* 8025D530 00226AF0  80 BE 00 04 */	lwz r5, 4(r30)
/* 8025D534 00226AF4  38 DF 00 35 */	addi r6, r31, 0x35
/* 8025D538 00226AF8  4B ED 99 D1 */	bl func_80136F08
/* 8025D53C 00226AFC  80 7E 00 08 */	lwz r3, 8(r30)
/* 8025D540 00226B00  38 A0 00 00 */	li r5, 0
/* 8025D544 00226B04  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8025D548 00226B08  81 83 00 00 */	lwz r12, 0(r3)
/* 8025D54C 00226B0C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8025D550 00226B10  7D 89 03 A6 */	mtctr r12
/* 8025D554 00226B14  4E 80 04 21 */	bctrl 
/* 8025D558 00226B18  80 7E 00 08 */	lwz r3, 8(r30)
/* 8025D55C 00226B1C  38 A0 00 01 */	li r5, 1
/* 8025D560 00226B20  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 8025D564 00226B24  81 83 00 00 */	lwz r12, 0(r3)
/* 8025D568 00226B28  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8025D56C 00226B2C  7D 89 03 A6 */	mtctr r12
/* 8025D570 00226B30  4E 80 04 21 */	bctrl 
/* 8025D574 00226B34  80 7E 00 08 */	lwz r3, 8(r30)
/* 8025D578 00226B38  38 80 00 00 */	li r4, 0
/* 8025D57C 00226B3C  81 83 00 00 */	lwz r12, 0(r3)
/* 8025D580 00226B40  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8025D584 00226B44  7D 89 03 A6 */	mtctr r12
/* 8025D588 00226B48  4E 80 04 21 */	bctrl 
/* 8025D58C 00226B4C  80 7E 00 08 */	lwz r3, 8(r30)
/* 8025D590 00226B50  38 9F 00 50 */	addi r4, r31, 0x50
/* 8025D594 00226B54  38 A0 00 01 */	li r5, 1
/* 8025D598 00226B58  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8025D59C 00226B5C  81 83 00 00 */	lwz r12, 0(r3)
/* 8025D5A0 00226B60  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025D5A4 00226B64  7D 89 03 A6 */	mtctr r12
/* 8025D5A8 00226B68  4E 80 04 21 */	bctrl 
/* 8025D5AC 00226B6C  38 80 00 00 */	li r4, 0
/* 8025D5B0 00226B70  4B EC 6C C1 */	bl func_80124270
/* 8025D5B4 00226B74  80 7E 00 08 */	lwz r3, 8(r30)
/* 8025D5B8 00226B78  38 9F 00 5B */	addi r4, r31, 0x5b
/* 8025D5BC 00226B7C  38 A0 00 01 */	li r5, 1
/* 8025D5C0 00226B80  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8025D5C4 00226B84  81 83 00 00 */	lwz r12, 0(r3)
/* 8025D5C8 00226B88  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025D5CC 00226B8C  7D 89 03 A6 */	mtctr r12
/* 8025D5D0 00226B90  4E 80 04 21 */	bctrl 
/* 8025D5D4 00226B94  38 80 00 00 */	li r4, 0
/* 8025D5D8 00226B98  4B EC 6C 99 */	bl func_80124270
/* 8025D5DC 00226B9C  80 7E 00 08 */	lwz r3, 8(r30)
/* 8025D5E0 00226BA0  C0 02 AD A8 */	lfs f0, float_8066B128@sda21(r2)
/* 8025D5E4 00226BA4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8025D5E8 00226BA8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8025D5EC 00226BAC  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 8025D5F0 00226BB0  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 8025D5F4 00226BB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025D5F8 00226BB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8025D5FC 00226BBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025D600 00226BC0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8025D604 00226BC4  7C 08 03 A6 */	mtlr r0
/* 8025D608 00226BC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8025D60C 00226BCC  4E 80 00 20 */	blr 
.endfn func_8025D4E4

.fn func_8025D610, global
/* 8025D610 00226BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025D614 00226BD4  7C 08 02 A6 */	mflr r0
/* 8025D618 00226BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025D61C 00226BDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025D620 00226BE0  7C 7F 1B 78 */	mr r31, r3
/* 8025D624 00226BE4  80 03 00 08 */	lwz r0, 8(r3)
/* 8025D628 00226BE8  2C 00 00 00 */	cmpwi r0, 0
/* 8025D62C 00226BEC  41 82 00 48 */	beq .L_8025D674
/* 8025D630 00226BF0  88 03 00 14 */	lbz r0, 0x14(r3)
/* 8025D634 00226BF4  2C 00 00 00 */	cmpwi r0, 0
/* 8025D638 00226BF8  41 82 00 10 */	beq .L_8025D648
/* 8025D63C 00226BFC  2C 00 00 01 */	cmpwi r0, 1
/* 8025D640 00226C00  41 82 00 18 */	beq .L_8025D658
/* 8025D644 00226C04  48 00 00 18 */	b .L_8025D65C
.L_8025D648:
/* 8025D648 00226C08  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8025D64C 00226C0C  C0 22 AD AC */	lfs f1, float_8066B12C@sda21(r2)
/* 8025D650 00226C10  4B ED 9D F5 */	bl func_80137444
/* 8025D654 00226C14  48 00 00 08 */	b .L_8025D65C
.L_8025D658:
/* 8025D658 00226C18  48 00 00 AD */	bl func_8025D704
.L_8025D65C:
/* 8025D65C 00226C1C  80 7F 00 08 */	lwz r3, 8(r31)
/* 8025D660 00226C20  38 80 00 00 */	li r4, 0
/* 8025D664 00226C24  81 83 00 00 */	lwz r12, 0(r3)
/* 8025D668 00226C28  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8025D66C 00226C2C  7D 89 03 A6 */	mtctr r12
/* 8025D670 00226C30  4E 80 04 21 */	bctrl 
.L_8025D674:
/* 8025D674 00226C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025D678 00226C38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025D67C 00226C3C  7C 08 03 A6 */	mtlr r0
/* 8025D680 00226C40  38 21 00 10 */	addi r1, r1, 0x10
/* 8025D684 00226C44  4E 80 00 20 */	blr 
.endfn func_8025D610

.fn func_8025D688, global
/* 8025D688 00226C48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025D68C 00226C4C  7C 08 02 A6 */	mflr r0
/* 8025D690 00226C50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025D694 00226C54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025D698 00226C58  7C 7F 1B 78 */	mr r31, r3
/* 8025D69C 00226C5C  80 03 00 08 */	lwz r0, 8(r3)
/* 8025D6A0 00226C60  2C 00 00 00 */	cmpwi r0, 0
/* 8025D6A4 00226C64  41 82 00 28 */	beq .L_8025D6CC
/* 8025D6A8 00226C68  41 82 00 1C */	beq .L_8025D6C4
/* 8025D6AC 00226C6C  7C 03 03 78 */	mr r3, r0
/* 8025D6B0 00226C70  38 80 00 01 */	li r4, 1
/* 8025D6B4 00226C74  81 83 00 00 */	lwz r12, 0(r3)
/* 8025D6B8 00226C78  81 8C 00 08 */	lwz r12, 8(r12)
/* 8025D6BC 00226C7C  7D 89 03 A6 */	mtctr r12
/* 8025D6C0 00226C80  4E 80 04 21 */	bctrl 
.L_8025D6C4:
/* 8025D6C4 00226C84  38 00 00 00 */	li r0, 0
/* 8025D6C8 00226C88  90 1F 00 08 */	stw r0, 8(r31)
.L_8025D6CC:
/* 8025D6CC 00226C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025D6D0 00226C90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025D6D4 00226C94  7C 08 03 A6 */	mtlr r0
/* 8025D6D8 00226C98  38 21 00 10 */	addi r1, r1, 0x10
/* 8025D6DC 00226C9C  4E 80 00 20 */	blr 
.endfn func_8025D688

.fn func_8025D6E0, global
/* 8025D6E0 00226CA0  80 63 00 08 */	lwz r3, 8(r3)
/* 8025D6E4 00226CA4  C0 04 00 00 */	lfs f0, 0(r4)
/* 8025D6E8 00226CA8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8025D6EC 00226CAC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8025D6F0 00226CB0  C0 04 00 04 */	lfs f0, 4(r4)
/* 8025D6F4 00226CB4  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 8025D6F8 00226CB8  C0 04 00 08 */	lfs f0, 8(r4)
/* 8025D6FC 00226CBC  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8025D700 00226CC0  4E 80 00 20 */	blr 
.endfn func_8025D6E0

.fn func_8025D704, global
/* 8025D704 00226CC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025D708 00226CC8  7C 08 02 A6 */	mflr r0
/* 8025D70C 00226CCC  C0 22 AD AC */	lfs f1, float_8066B12C@sda21(r2)
/* 8025D710 00226CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025D714 00226CD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025D718 00226CD8  7C 7F 1B 78 */	mr r31, r3
/* 8025D71C 00226CDC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8025D720 00226CE0  4B ED 9D 25 */	bl func_80137444
/* 8025D724 00226CE4  2C 03 00 00 */	cmpwi r3, 0
/* 8025D728 00226CE8  41 82 00 58 */	beq .L_8025D780
/* 8025D72C 00226CEC  38 60 00 00 */	li r3, 0
/* 8025D730 00226CF0  38 00 00 01 */	li r0, 1
/* 8025D734 00226CF4  98 7F 00 14 */	stb r3, 0x14(r31)
/* 8025D738 00226CF8  38 A0 00 00 */	li r5, 0
/* 8025D73C 00226CFC  80 7F 00 08 */	lwz r3, 8(r31)
/* 8025D740 00226D00  98 1F 00 15 */	stb r0, 0x15(r31)
/* 8025D744 00226D04  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8025D748 00226D08  81 83 00 00 */	lwz r12, 0(r3)
/* 8025D74C 00226D0C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8025D750 00226D10  7D 89 03 A6 */	mtctr r12
/* 8025D754 00226D14  4E 80 04 21 */	bctrl 
/* 8025D758 00226D18  80 7F 00 08 */	lwz r3, 8(r31)
/* 8025D75C 00226D1C  38 A0 00 01 */	li r5, 1
/* 8025D760 00226D20  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8025D764 00226D24  81 83 00 00 */	lwz r12, 0(r3)
/* 8025D768 00226D28  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8025D76C 00226D2C  7D 89 03 A6 */	mtctr r12
/* 8025D770 00226D30  4E 80 04 21 */	bctrl 
/* 8025D774 00226D34  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8025D778 00226D38  C0 02 AD B0 */	lfs f0, float_8066B130@sda21(r2)
/* 8025D77C 00226D3C  D0 03 00 10 */	stfs f0, 0x10(r3)
.L_8025D780:
/* 8025D780 00226D40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025D784 00226D44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025D788 00226D48  7C 08 03 A6 */	mtlr r0
/* 8025D78C 00226D4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8025D790 00226D50  4E 80 00 20 */	blr 
.endfn func_8025D704

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_800175E0", local
.hidden "@etb_800175E0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800175E0"

.obj "@etb_800175E8", local
.hidden "@etb_800175E8"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_800175E8"

.obj "@etb_800175F0", local
.hidden "@etb_800175F0"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_800175F0"

.obj "@etb_800175F8", local
.hidden "@etb_800175F8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800175F8"

.obj "@etb_80017600", local
.hidden "@etb_80017600"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80017600"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002FDEC", local
.hidden "@eti_8002FDEC"
	.4byte func_8025D4A4
	.4byte 0x00000040
	.4byte "@etb_800175E0"
.endobj "@eti_8002FDEC"

.obj "@eti_8002FDF8", local
.hidden "@eti_8002FDF8"
	.4byte func_8025D4E4
	.4byte 0x0000012C
	.4byte "@etb_800175E8"
.endobj "@eti_8002FDF8"

.obj "@eti_8002FE04", local
.hidden "@eti_8002FE04"
	.4byte func_8025D610
	.4byte 0x00000078
	.4byte "@etb_800175F0"
.endobj "@eti_8002FE04"

.obj "@eti_8002FE10", local
.hidden "@eti_8002FE10"
	.4byte func_8025D688
	.4byte 0x00000058
	.4byte "@etb_800175F8"
.endobj "@eti_8002FE10"

.obj "@eti_8002FE1C", local
.hidden "@eti_8002FE1C"
	.4byte func_8025D704
	.4byte 0x00000090
	.4byte "@etb_80017600"
.endobj "@eti_8002FE1C"