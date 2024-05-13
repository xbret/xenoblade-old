.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CScnRoot, global
/* 8048ED24 004582E4  3C A0 80 57 */	lis r5, __vt__8CScnRoot@ha
/* 8048ED28 004582E8  38 00 00 00 */	li r0, 0
/* 8048ED2C 004582EC  38 A5 1F 78 */	addi r5, r5, __vt__8CScnRoot@l
/* 8048ED30 004582F0  90 A3 00 00 */	stw r5, 0(r3)
/* 8048ED34 004582F4  90 83 00 04 */	stw r4, 4(r3)
/* 8048ED38 004582F8  90 03 00 08 */	stw r0, 8(r3)
/* 8048ED3C 004582FC  4E 80 00 20 */	blr 
.endfn __ct__CScnRoot

.fn __dt__CScnRoot, global
/* 8048ED40 00458300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048ED44 00458304  7C 08 02 A6 */	mflr r0
/* 8048ED48 00458308  2C 03 00 00 */	cmpwi r3, 0
/* 8048ED4C 0045830C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048ED50 00458310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048ED54 00458314  7C 7F 1B 78 */	mr r31, r3
/* 8048ED58 00458318  41 82 00 10 */	beq .L_8048ED68
/* 8048ED5C 0045831C  2C 04 00 00 */	cmpwi r4, 0
/* 8048ED60 00458320  40 81 00 08 */	ble .L_8048ED68
/* 8048ED64 00458324  4B FA 5E C9 */	bl __dl__FPv
.L_8048ED68:
/* 8048ED68 00458328  7F E3 FB 78 */	mr r3, r31
/* 8048ED6C 0045832C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048ED70 00458330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048ED74 00458334  7C 08 03 A6 */	mtlr r0
/* 8048ED78 00458338  38 21 00 10 */	addi r1, r1, 0x10
/* 8048ED7C 0045833C  4E 80 00 20 */	blr 
.endfn __dt__CScnRoot

.fn func_8048ED80, global
/* 8048ED80 00458340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048ED84 00458344  7C 08 02 A6 */	mflr r0
/* 8048ED88 00458348  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048ED8C 0045834C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048ED90 00458350  7C BF 2B 78 */	mr r31, r5
/* 8048ED94 00458354  93 C1 00 08 */	stw r30, 8(r1)
/* 8048ED98 00458358  7C 7E 1B 78 */	mr r30, r3
/* 8048ED9C 0045835C  38 60 04 EC */	li r3, 0x4ec
/* 8048EDA0 00458360  4B FA 5C BD */	bl heap_malloc
/* 8048EDA4 00458364  2C 03 00 00 */	cmpwi r3, 0
/* 8048EDA8 00458368  41 82 00 10 */	beq .L_8048EDB8
/* 8048EDAC 0045836C  7F C4 F3 78 */	mr r4, r30
/* 8048EDB0 00458370  7F E5 FB 78 */	mr r5, r31
/* 8048EDB4 00458374  48 00 00 35 */	bl __ct__CScnRootNw4r
.L_8048EDB8:
/* 8048EDB8 00458378  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EDBC 0045837C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048EDC0 00458380  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048EDC4 00458384  7C 08 03 A6 */	mtlr r0
/* 8048EDC8 00458388  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EDCC 0045838C  4E 80 00 20 */	blr 
.endfn func_8048ED80

.fn func_8048EDD0, global
/* 8048EDD0 00458390  38 60 FF FF */	li r3, -1
/* 8048EDD4 00458394  4E 80 00 20 */	blr 
.endfn func_8048EDD0

.fn func_8048EDD8, global
/* 8048EDD8 00458398  38 60 FF FF */	li r3, -1
/* 8048EDDC 0045839C  4E 80 00 20 */	blr 
.endfn func_8048EDD8

.fn func_8048EDE0, global
/* 8048EDE0 004583A0  38 60 FF FF */	li r3, -1
/* 8048EDE4 004583A4  4E 80 00 20 */	blr 
.endfn func_8048EDE0

.fn __ct__CScnRootNw4r, global
/* 8048EDE8 004583A8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8048EDEC 004583AC  7C 08 02 A6 */	mflr r0
/* 8048EDF0 004583B0  90 01 00 84 */	stw r0, 0x84(r1)
/* 8048EDF4 004583B4  39 61 00 70 */	addi r11, r1, 0x70
/* 8048EDF8 004583B8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8048EDFC 004583BC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 8048EE00 004583C0  4B E2 B3 51 */	bl _savegpr_26
/* 8048EE04 004583C4  3C 00 43 30 */	lis r0, 0x4330
/* 8048EE08 004583C8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8048EE0C 004583CC  7C 7C 1B 78 */	mr r28, r3
/* 8048EE10 004583D0  7C 9D 23 78 */	mr r29, r4
/* 8048EE14 004583D4  90 01 00 28 */	stw r0, 0x28(r1)
/* 8048EE18 004583D8  7C BA 2B 78 */	mr r26, r5
/* 8048EE1C 004583DC  4B FF FF 09 */	bl __ct__CScnRoot
/* 8048EE20 004583E0  3C A0 80 57 */	lis r5, __vt__12CScnRootNw4r@ha
/* 8048EE24 004583E4  38 80 00 00 */	li r4, 0
/* 8048EE28 004583E8  38 60 FF FF */	li r3, -1
/* 8048EE2C 004583EC  90 9C 00 10 */	stw r4, 0x10(r28)
/* 8048EE30 004583F0  38 A5 1F B0 */	addi r5, r5, __vt__12CScnRootNw4r@l
/* 8048EE34 004583F4  2C 1A 00 00 */	cmpwi r26, 0
/* 8048EE38 004583F8  38 05 00 38 */	addi r0, r5, 0x38
/* 8048EE3C 004583FC  90 1C 00 0C */	stw r0, 0xc(r28)
/* 8048EE40 00458400  C3 E2 CE 28 */	lfs f31, float_8066D1A8@sda21(r2)
/* 8048EE44 00458404  38 00 00 A0 */	li r0, 0xa0
/* 8048EE48 00458408  90 BC 00 00 */	stw r5, 0(r28)
/* 8048EE4C 0045840C  3B C0 00 C8 */	li r30, 0xc8
/* 8048EE50 00458410  90 9C 00 14 */	stw r4, 0x14(r28)
/* 8048EE54 00458414  98 9C 00 18 */	stb r4, 0x18(r28)
/* 8048EE58 00458418  98 9C 00 1A */	stb r4, 0x1a(r28)
/* 8048EE5C 0045841C  90 9C 00 1C */	stw r4, 0x1c(r28)
/* 8048EE60 00458420  90 9C 00 40 */	stw r4, 0x40(r28)
/* 8048EE64 00458424  90 9C 04 44 */	stw r4, 0x444(r28)
/* 8048EE68 00458428  98 9C 04 48 */	stb r4, 0x448(r28)
/* 8048EE6C 0045842C  90 7C 04 AC */	stw r3, 0x4ac(r28)
/* 8048EE70 00458430  90 7C 04 B8 */	stw r3, 0x4b8(r28)
/* 8048EE74 00458434  90 7C 04 C4 */	stw r3, 0x4c4(r28)
/* 8048EE78 00458438  90 7C 04 D0 */	stw r3, 0x4d0(r28)
/* 8048EE7C 0045843C  B0 01 00 08 */	sth r0, 8(r1)
/* 8048EE80 00458440  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8048EE84 00458444  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8048EE88 00458448  B0 01 00 0E */	sth r0, 0xe(r1)
/* 8048EE8C 0045844C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8048EE90 00458450  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8048EE94 00458454  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8048EE98 00458458  B0 01 00 16 */	sth r0, 0x16(r1)
/* 8048EE9C 0045845C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8048EEA0 00458460  B0 01 00 1A */	sth r0, 0x1a(r1)
/* 8048EEA4 00458464  41 82 00 5C */	beq .L_8048EF00
/* 8048EEA8 00458468  C3 FA 00 08 */	lfs f31, 8(r26)
/* 8048EEAC 0045846C  A3 DA 00 0C */	lhz r30, 0xc(r26)
/* 8048EEB0 00458470  A0 1A 00 0E */	lhz r0, 0xe(r26)
/* 8048EEB4 00458474  B0 01 00 08 */	sth r0, 8(r1)
/* 8048EEB8 00458478  A0 1A 00 10 */	lhz r0, 0x10(r26)
/* 8048EEBC 0045847C  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8048EEC0 00458480  A0 1A 00 12 */	lhz r0, 0x12(r26)
/* 8048EEC4 00458484  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8048EEC8 00458488  A0 1A 00 14 */	lhz r0, 0x14(r26)
/* 8048EECC 0045848C  B0 01 00 0E */	sth r0, 0xe(r1)
/* 8048EED0 00458490  A0 1A 00 16 */	lhz r0, 0x16(r26)
/* 8048EED4 00458494  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8048EED8 00458498  A0 1A 00 18 */	lhz r0, 0x18(r26)
/* 8048EEDC 0045849C  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8048EEE0 004584A0  A0 1A 00 1A */	lhz r0, 0x1a(r26)
/* 8048EEE4 004584A4  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8048EEE8 004584A8  A0 1A 00 1C */	lhz r0, 0x1c(r26)
/* 8048EEEC 004584AC  B0 01 00 16 */	sth r0, 0x16(r1)
/* 8048EEF0 004584B0  A0 1A 00 1E */	lhz r0, 0x1e(r26)
/* 8048EEF4 004584B4  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8048EEF8 004584B8  A0 1A 00 20 */	lhz r0, 0x20(r26)
/* 8048EEFC 004584BC  B0 01 00 1A */	sth r0, 0x1a(r1)
.L_8048EF00:
/* 8048EF00 004584C0  80 7C 00 04 */	lwz r3, 4(r28)
/* 8048EF04 004584C4  C0 02 CE 2C */	lfs f0, float_8066D1AC@sda21(r2)
/* 8048EF08 004584C8  83 43 00 88 */	lwz r26, 0x88(r3)
/* 8048EF0C 004584CC  EF FF 00 32 */	fmuls f31, f31, f0
/* 8048EF10 004584D0  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 8048EF14 004584D4  4B E2 ED 59 */	bl labs
/* 8048EF18 004584D8  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8048EF1C 004584DC  90 81 00 24 */	stw r4, 0x24(r1)
/* 8048EF20 004584E0  C8 42 CE 38 */	lfd f2, double_8066D1B8@sda21(r2)
/* 8048EF24 004584E4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8048EF28 004584E8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8048EF2C 004584EC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8048EF30 004584F0  FC 00 00 1E */	fctiwz f0, f0
/* 8048EF34 004584F4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8048EF38 004584F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8048EF3C 004584FC  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 8048EF40 00458500  41 82 00 4C */	beq .L_8048EF8C
/* 8048EF44 00458504  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8048EF48 00458508  90 81 00 24 */	stw r4, 0x24(r1)
/* 8048EF4C 0045850C  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 8048EF50 00458510  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8048EF54 00458514  EC 21 10 28 */	fsubs f1, f1, f2
/* 8048EF58 00458518  EC 00 10 28 */	fsubs f0, f0, f2
/* 8048EF5C 0045851C  EC 21 07 F2 */	fmuls f1, f1, f31
/* 8048EF60 00458520  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8048EF64 00458524  FC 20 08 1E */	fctiwz f1, f1
/* 8048EF68 00458528  FC 00 00 1E */	fctiwz f0, f0
/* 8048EF6C 0045852C  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 8048EF70 00458530  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8048EF74 00458534  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8048EF78 00458538  80 81 00 44 */	lwz r4, 0x44(r1)
/* 8048EF7C 0045853C  54 05 06 FE */	clrlwi r5, r0, 0x1b
/* 8048EF80 00458540  38 04 00 20 */	addi r0, r4, 0x20
/* 8048EF84 00458544  7F E5 00 50 */	subf r31, r5, r0
/* 8048EF88 00458548  48 00 00 20 */	b .L_8048EFA8
.L_8048EF8C:
/* 8048EF8C 0045854C  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8048EF90 00458550  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8048EF94 00458554  EC 00 10 28 */	fsubs f0, f0, f2
/* 8048EF98 00458558  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8048EF9C 0045855C  FC 00 00 1E */	fctiwz f0, f0
/* 8048EFA0 00458560  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8048EFA4 00458564  83 E1 00 4C */	lwz r31, 0x4c(r1)
.L_8048EFA8:
/* 8048EFA8 00458568  7C 9F 18 50 */	subf r4, r31, r3
/* 8048EFAC 0045856C  3C 00 00 08 */	lis r0, 8
/* 8048EFB0 00458570  7C 04 00 00 */	cmpw r4, r0
/* 8048EFB4 00458574  3B 60 00 00 */	li r27, 0
/* 8048EFB8 00458578  41 80 00 40 */	blt .L_8048EFF8
/* 8048EFBC 0045857C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8048EFC0 00458580  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048EFC4 00458584  C8 42 CE 38 */	lfd f2, double_8066D1B8@sda21(r2)
/* 8048EFC8 00458588  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 8048EFCC 0045858C  C0 02 CE 30 */	lfs f0, float_8066D1B0@sda21(r2)
/* 8048EFD0 00458590  EC 21 10 28 */	fsubs f1, f1, f2
/* 8048EFD4 00458594  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048EFD8 00458598  FC 00 00 1E */	fctiwz f0, f0
/* 8048EFDC 0045859C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8048EFE0 004585A0  83 61 00 4C */	lwz r27, 0x4c(r1)
/* 8048EFE4 004585A4  57 63 07 3F */	clrlwi. r3, r27, 0x1c
/* 8048EFE8 004585A8  41 82 00 0C */	beq .L_8048EFF4
/* 8048EFEC 004585AC  38 1B 00 10 */	addi r0, r27, 0x10
/* 8048EFF0 004585B0  7F 63 00 50 */	subf r27, r3, r0
.L_8048EFF4:
/* 8048EFF4 004585B4  7C 9B 20 50 */	subf r4, r27, r4
.L_8048EFF8:
/* 8048EFF8 004585B8  C0 02 CE 34 */	lfs f0, float_8066D1B4@sda21(r2)
/* 8048EFFC 004585BC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8048F000 004585C0  40 81 00 20 */	ble .L_8048F020
/* 8048F004 004585C4  3C A0 80 52 */	lis r5, CScnRootNw4r_strpool@ha
/* 8048F008 004585C8  80 7A 00 08 */	lwz r3, 8(r26)
/* 8048F00C 004585CC  38 84 FF 00 */	addi r4, r4, -256
/* 8048F010 004585D0  38 A5 79 08 */	addi r5, r5, CScnRootNw4r_strpool@l
/* 8048F014 004585D4  4B FA 50 2D */	bl heap_createRegion
/* 8048F018 004585D8  90 7C 04 AC */	stw r3, 0x4ac(r28)
/* 8048F01C 004585DC  48 00 00 0C */	b .L_8048F028
.L_8048F020:
/* 8048F020 004585E0  4B FA 53 81 */	bl Heap_getRegionIndex2
/* 8048F024 004585E4  90 7C 04 AC */	stw r3, 0x4ac(r28)
.L_8048F028:
/* 8048F028 004585E8  C0 02 CE 34 */	lfs f0, float_8066D1B4@sda21(r2)
/* 8048F02C 004585EC  3C C0 80 49 */	lis r6, func_8048FE34@ha
/* 8048F030 004585F0  80 1C 04 AC */	lwz r0, 0x4ac(r28)
/* 8048F034 004585F4  3C A0 80 49 */	lis r5, func_8048FEC4@ha
/* 8048F038 004585F8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8048F03C 004585FC  38 C6 FE 34 */	addi r6, r6, func_8048FE34@l
/* 8048F040 00458600  38 A5 FE C4 */	addi r5, r5, func_8048FEC4@l
/* 8048F044 00458604  38 9C 04 B0 */	addi r4, r28, 0x4b0
/* 8048F048 00458608  38 60 00 00 */	li r3, 0
/* 8048F04C 0045860C  90 DC 04 B0 */	stw r6, 0x4b0(r28)
/* 8048F050 00458610  90 BC 04 B4 */	stw r5, 0x4b4(r28)
/* 8048F054 00458614  90 9C 04 4C */	stw r4, 0x44c(r28)
/* 8048F058 00458618  90 7C 04 50 */	stw r3, 0x450(r28)
/* 8048F05C 0045861C  93 9C 04 54 */	stw r28, 0x454(r28)
/* 8048F060 00458620  90 1C 04 58 */	stw r0, 0x458(r28)
/* 8048F064 00458624  40 81 00 2C */	ble .L_8048F090
/* 8048F068 00458628  80 BC 00 04 */	lwz r5, 4(r28)
/* 8048F06C 0045862C  3C 60 80 52 */	lis r3, CScnRootNw4r_strpool@ha
/* 8048F070 00458630  38 63 79 08 */	addi r3, r3, CScnRootNw4r_strpool@l
/* 8048F074 00458634  38 9B FF 00 */	addi r4, r27, -256
/* 8048F078 00458638  80 C5 00 88 */	lwz r6, 0x88(r5)
/* 8048F07C 0045863C  38 A3 00 09 */	addi r5, r3, 9
/* 8048F080 00458640  80 66 00 08 */	lwz r3, 8(r6)
/* 8048F084 00458644  4B FA 4F BD */	bl heap_createRegion
/* 8048F088 00458648  90 7C 04 B8 */	stw r3, 0x4b8(r28)
/* 8048F08C 0045864C  48 00 00 0C */	b .L_8048F098
.L_8048F090:
/* 8048F090 00458650  4B FA 53 11 */	bl Heap_getRegionIndex2
/* 8048F094 00458654  90 7C 04 B8 */	stw r3, 0x4b8(r28)
.L_8048F098:
/* 8048F098 00458658  C0 02 CE 34 */	lfs f0, float_8066D1B4@sda21(r2)
/* 8048F09C 0045865C  3C C0 80 49 */	lis r6, func_8048FE34@ha
/* 8048F0A0 00458660  80 1C 04 B8 */	lwz r0, 0x4b8(r28)
/* 8048F0A4 00458664  3C A0 80 49 */	lis r5, func_8048FEC4@ha
/* 8048F0A8 00458668  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8048F0AC 0045866C  38 C6 FE 34 */	addi r6, r6, func_8048FE34@l
/* 8048F0B0 00458670  38 A5 FE C4 */	addi r5, r5, func_8048FEC4@l
/* 8048F0B4 00458674  38 9C 04 BC */	addi r4, r28, 0x4bc
/* 8048F0B8 00458678  38 60 00 00 */	li r3, 0
/* 8048F0BC 0045867C  90 DC 04 BC */	stw r6, 0x4bc(r28)
/* 8048F0C0 00458680  90 BC 04 C0 */	stw r5, 0x4c0(r28)
/* 8048F0C4 00458684  90 9C 04 5C */	stw r4, 0x45c(r28)
/* 8048F0C8 00458688  90 7C 04 60 */	stw r3, 0x460(r28)
/* 8048F0CC 0045868C  93 9C 04 64 */	stw r28, 0x464(r28)
/* 8048F0D0 00458690  90 1C 04 68 */	stw r0, 0x468(r28)
/* 8048F0D4 00458694  40 81 00 2C */	ble .L_8048F100
/* 8048F0D8 00458698  80 BC 00 04 */	lwz r5, 4(r28)
/* 8048F0DC 0045869C  3C 60 80 52 */	lis r3, CScnRootNw4r_strpool@ha
/* 8048F0E0 004586A0  38 63 79 08 */	addi r3, r3, CScnRootNw4r_strpool@l
/* 8048F0E4 004586A4  38 9F FF 00 */	addi r4, r31, -256
/* 8048F0E8 004586A8  80 C5 00 88 */	lwz r6, 0x88(r5)
/* 8048F0EC 004586AC  38 A3 00 15 */	addi r5, r3, 0x15
/* 8048F0F0 004586B0  80 66 00 08 */	lwz r3, 8(r6)
/* 8048F0F4 004586B4  4B FA 4F 4D */	bl heap_createRegion
/* 8048F0F8 004586B8  90 7C 04 C4 */	stw r3, 0x4c4(r28)
/* 8048F0FC 004586BC  48 00 00 0C */	b .L_8048F108
.L_8048F100:
/* 8048F100 004586C0  4B FA 52 A1 */	bl Heap_getRegionIndex2
/* 8048F104 004586C4  90 7C 04 C4 */	stw r3, 0x4c4(r28)
.L_8048F108:
/* 8048F108 004586C8  C0 02 CE 34 */	lfs f0, float_8066D1B4@sda21(r2)
/* 8048F10C 004586CC  3C C0 80 49 */	lis r6, func_8048FE34@ha
/* 8048F110 004586D0  80 7C 04 C4 */	lwz r3, 0x4c4(r28)
/* 8048F114 004586D4  3C A0 80 49 */	lis r5, func_8048FEC4@ha
/* 8048F118 004586D8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8048F11C 004586DC  38 C6 FE 34 */	addi r6, r6, func_8048FE34@l
/* 8048F120 004586E0  38 A5 FE C4 */	addi r5, r5, func_8048FEC4@l
/* 8048F124 004586E4  38 9C 04 C8 */	addi r4, r28, 0x4c8
/* 8048F128 004586E8  38 00 00 00 */	li r0, 0
/* 8048F12C 004586EC  90 DC 04 C8 */	stw r6, 0x4c8(r28)
/* 8048F130 004586F0  90 BC 04 CC */	stw r5, 0x4cc(r28)
/* 8048F134 004586F4  90 9C 04 6C */	stw r4, 0x46c(r28)
/* 8048F138 004586F8  90 1C 04 70 */	stw r0, 0x470(r28)
/* 8048F13C 004586FC  93 9C 04 74 */	stw r28, 0x474(r28)
/* 8048F140 00458700  90 7C 04 78 */	stw r3, 0x478(r28)
/* 8048F144 00458704  40 81 00 28 */	ble .L_8048F16C
/* 8048F148 00458708  57 E0 0F FE */	srwi r0, r31, 0x1f
/* 8048F14C 0045870C  3C A0 80 52 */	lis r5, CScnRootNw4r_strpool@ha
/* 8048F150 00458710  7C 00 FA 14 */	add r0, r0, r31
/* 8048F154 00458714  38 A5 79 08 */	addi r5, r5, CScnRootNw4r_strpool@l
/* 8048F158 00458718  7C 04 0E 70 */	srawi r4, r0, 1
/* 8048F15C 0045871C  38 A5 00 21 */	addi r5, r5, 0x21
/* 8048F160 00458720  4B FA 4E E1 */	bl heap_createRegion
/* 8048F164 00458724  90 7C 04 D0 */	stw r3, 0x4d0(r28)
/* 8048F168 00458728  48 00 00 0C */	b .L_8048F174
.L_8048F16C:
/* 8048F16C 0045872C  4B FA 52 35 */	bl Heap_getRegionIndex2
/* 8048F170 00458730  90 7C 04 D0 */	stw r3, 0x4d0(r28)
.L_8048F174:
/* 8048F174 00458734  80 7C 04 D0 */	lwz r3, 0x4d0(r28)
/* 8048F178 00458738  3F 40 80 49 */	lis r26, func_8048FE34@ha
/* 8048F17C 0045873C  3B 5A FE 34 */	addi r26, r26, func_8048FE34@l
/* 8048F180 00458740  3B E0 00 00 */	li r31, 0
/* 8048F184 00458744  3F 60 80 49 */	lis r27, func_8048FEC4@ha
/* 8048F188 00458748  38 9C 04 D4 */	addi r4, r28, 0x4d4
/* 8048F18C 0045874C  3B 7B FE C4 */	addi r27, r27, func_8048FEC4@l
/* 8048F190 00458750  38 1C 04 DC */	addi r0, r28, 0x4dc
/* 8048F194 00458754  93 5C 04 D4 */	stw r26, 0x4d4(r28)
/* 8048F198 00458758  93 7C 04 D8 */	stw r27, 0x4d8(r28)
/* 8048F19C 0045875C  90 9C 04 7C */	stw r4, 0x47c(r28)
/* 8048F1A0 00458760  93 FC 04 80 */	stw r31, 0x480(r28)
/* 8048F1A4 00458764  93 9C 04 84 */	stw r28, 0x484(r28)
/* 8048F1A8 00458768  90 7C 04 88 */	stw r3, 0x488(r28)
/* 8048F1AC 0045876C  93 5C 04 DC */	stw r26, 0x4dc(r28)
/* 8048F1B0 00458770  93 7C 04 E0 */	stw r27, 0x4e0(r28)
/* 8048F1B4 00458774  90 1C 04 8C */	stw r0, 0x48c(r28)
/* 8048F1B8 00458778  93 FC 04 90 */	stw r31, 0x490(r28)
/* 8048F1BC 0045877C  93 9C 04 94 */	stw r28, 0x494(r28)
/* 8048F1C0 00458780  4B FA 51 D9 */	bl Heap_getRegionIndex1
/* 8048F1C4 00458784  38 1C 04 DC */	addi r0, r28, 0x4dc
/* 8048F1C8 00458788  90 7C 04 98 */	stw r3, 0x498(r28)
/* 8048F1CC 0045878C  93 5C 04 E4 */	stw r26, 0x4e4(r28)
/* 8048F1D0 00458790  93 7C 04 E8 */	stw r27, 0x4e8(r28)
/* 8048F1D4 00458794  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 8048F1D8 00458798  93 FC 04 A0 */	stw r31, 0x4a0(r28)
/* 8048F1DC 0045879C  93 9C 04 A4 */	stw r28, 0x4a4(r28)
/* 8048F1E0 004587A0  4B FA 51 C1 */	bl Heap_getRegionIndex2
/* 8048F1E4 004587A4  90 7C 04 A8 */	stw r3, 0x4a8(r28)
/* 8048F1E8 004587A8  7F C6 F3 78 */	mr r6, r30
/* 8048F1EC 004587AC  38 7C 04 5C */	addi r3, r28, 0x45c
/* 8048F1F0 004587B0  38 80 00 00 */	li r4, 0
/* 8048F1F4 004587B4  38 A0 00 0A */	li r5, 0xa
/* 8048F1F8 004587B8  38 E0 00 20 */	li r7, 0x20
/* 8048F1FC 004587BC  39 00 00 04 */	li r8, 4
/* 8048F200 004587C0  4B F6 6A 41 */	bl Construct__Q34nw4r3g3d7ScnRootFP12MEMAllocatorPUlUlUlUlUl
/* 8048F204 004587C4  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8048F208 004587C8  7F 83 E3 78 */	mr r3, r28
/* 8048F20C 004587CC  81 9C 00 00 */	lwz r12, 0(r28)
/* 8048F210 004587D0  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8048F214 004587D4  7D 89 03 A6 */	mtctr r12
/* 8048F218 004587D8  4E 80 04 21 */	bctrl 
/* 8048F21C 004587DC  7C 64 1B 78 */	mr r4, r3
/* 8048F220 004587E0  38 60 00 94 */	li r3, 0x94
/* 8048F224 004587E4  4B FA 58 39 */	bl heap_malloc
/* 8048F228 004587E8  2C 03 00 00 */	cmpwi r3, 0
/* 8048F22C 004587EC  41 82 00 0C */	beq .L_8048F238
/* 8048F230 004587F0  7F A4 EB 78 */	mr r4, r29
/* 8048F234 004587F4  48 00 AD 9D */	bl func_80499FD0
.L_8048F238:
/* 8048F238 004587F8  90 7C 00 14 */	stw r3, 0x14(r28)
/* 8048F23C 004587FC  3B 41 00 08 */	addi r26, r1, 8
/* 8048F240 00458800  3B 60 00 00 */	li r27, 0
.L_8048F244:
/* 8048F244 00458804  80 7C 04 C4 */	lwz r3, 0x4c4(r28)
/* 8048F248 00458808  3C 03 00 01 */	addis r0, r3, 1
/* 8048F24C 0045880C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8048F250 00458810  40 82 00 0C */	bne .L_8048F25C
/* 8048F254 00458814  38 7C 04 4C */	addi r3, r28, 0x44c
/* 8048F258 00458818  48 00 00 08 */	b .L_8048F260
.L_8048F25C:
/* 8048F25C 0045881C  38 7C 04 6C */	addi r3, r28, 0x46c
.L_8048F260:
/* 8048F260 00458820  A0 BA 00 00 */	lhz r5, 0(r26)
/* 8048F264 00458824  38 80 00 00 */	li r4, 0
/* 8048F268 00458828  4B F6 5D 35 */	bl Construct__Q34nw4r3g3d8ScnGroupFP12MEMAllocatorPUlUl
/* 8048F26C 0045882C  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 8048F270 00458830  7C 7D 1B 78 */	mr r29, r3
/* 8048F274 00458834  7F A5 EB 78 */	mr r5, r29
/* 8048F278 00458838  7C 83 23 78 */	mr r3, r4
/* 8048F27C 0045883C  80 84 00 E4 */	lwz r4, 0xe4(r4)
/* 8048F280 00458840  81 83 00 00 */	lwz r12, 0(r3)
/* 8048F284 00458844  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8048F288 00458848  7D 89 03 A6 */	mtctr r12
/* 8048F28C 0045884C  4E 80 04 21 */	bctrl 
/* 8048F290 00458850  2C 1C 00 00 */	cmpwi r28, 0
/* 8048F294 00458854  7F 80 E3 78 */	mr r0, r28
/* 8048F298 00458858  41 82 00 08 */	beq .L_8048F2A0
/* 8048F29C 0045885C  38 1C 00 0C */	addi r0, r28, 0xc
.L_8048F2A0:
/* 8048F2A0 00458860  90 1D 00 D4 */	stw r0, 0xd4(r29)
/* 8048F2A4 00458864  7F A3 EB 78 */	mr r3, r29
/* 8048F2A8 00458868  38 80 00 01 */	li r4, 1
/* 8048F2AC 0045886C  4B F6 56 A5 */	bl EnableScnObjCallbackTiming__Q34nw4r3g3d6ScnObjFQ44nw4r3g3d6ScnObj6Timing
/* 8048F2B0 00458870  7F A3 EB 78 */	mr r3, r29
/* 8048F2B4 00458874  38 80 00 01 */	li r4, 1
/* 8048F2B8 00458878  4B F6 56 D9 */	bl EnableScnObjCallbackExecOp__Q34nw4r3g3d6ScnObjFQ44nw4r3g3d6ScnObj6ExecOp
/* 8048F2BC 0045887C  3B 7B 00 01 */	addi r27, r27, 1
/* 8048F2C0 00458880  3B 5A 00 02 */	addi r26, r26, 2
/* 8048F2C4 00458884  28 1B 00 0A */	cmplwi r27, 0xa
/* 8048F2C8 00458888  41 80 FF 7C */	blt .L_8048F244
/* 8048F2CC 0045888C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 8048F2D0 00458890  7F 83 E3 78 */	mr r3, r28
/* 8048F2D4 00458894  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8048F2D8 00458898  39 61 00 70 */	addi r11, r1, 0x70
/* 8048F2DC 0045889C  4B E2 AE C1 */	bl _restgpr_26
/* 8048F2E0 004588A0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8048F2E4 004588A4  7C 08 03 A6 */	mtlr r0
/* 8048F2E8 004588A8  38 21 00 80 */	addi r1, r1, 0x80
/* 8048F2EC 004588AC  4E 80 00 20 */	blr 
.endfn __ct__CScnRootNw4r

.fn func_8048F2F0, global
/* 8048F2F0 004588B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F2F4 004588B4  7C 08 02 A6 */	mflr r0
/* 8048F2F8 004588B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F2FC 004588BC  80 83 04 C4 */	lwz r4, 0x4c4(r3)
/* 8048F300 004588C0  3C 04 00 01 */	addis r0, r4, 1
/* 8048F304 004588C4  28 00 FF FF */	cmplwi r0, 0xffff
/* 8048F308 004588C8  41 82 00 08 */	beq .L_8048F310
/* 8048F30C 004588CC  48 00 00 18 */	b .L_8048F324
.L_8048F310:
/* 8048F310 004588D0  81 83 00 00 */	lwz r12, 0(r3)
/* 8048F314 004588D4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8048F318 004588D8  7D 89 03 A6 */	mtctr r12
/* 8048F31C 004588DC  4E 80 04 21 */	bctrl 
/* 8048F320 004588E0  7C 64 1B 78 */	mr r4, r3
.L_8048F324:
/* 8048F324 004588E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F328 004588E8  7C 83 23 78 */	mr r3, r4
/* 8048F32C 004588EC  7C 08 03 A6 */	mtlr r0
/* 8048F330 004588F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F334 004588F4  4E 80 00 20 */	blr
.endfn func_8048F2F0

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CScnRoot_typestr, global
	.asciz "CScnRoot"
	.balign 4
	.4byte 0
.endobj CScnRoot_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__8CScnRoot, global
	.4byte __RTTI__8CScnRoot
	.4byte 0
	.4byte __dt__CScnRoot
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte func_8048EDE0
	.4byte func_8048EDD8
	.4byte func_8048EDD0
	.4byte 0
.endobj __vt__8CScnRoot


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__8CScnRoot, global
	.4byte CScnRoot_typestr
	.4byte 0
.endobj __RTTI__8CScnRoot

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066D1A8, global
	.float 20
.endobj float_8066D1A8


.obj float_8066D1AC, global
	.float 0.01
.endobj float_8066D1AC


.obj float_8066D1B0, global
	.float 0.08
.endobj float_8066D1B0


.obj float_8066D1B4, global
	.float 0
.endobj float_8066D1B4


.obj double_8066D1B8, global
	.8byte 0x4330000080000000 #signed int to float constant
.endobj double_8066D1B8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001EBF0", local
.hidden "@etb_8001EBF0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001EBF0"

.obj "@etb_8001EBF8", local
.hidden "@etb_8001EBF8"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001EBF8"

.obj "@etb_8001EC00", local
.hidden "@etb_8001EC00"
	.4byte 0x304A0000
	.4byte 0x00000230
	.4byte 0x00A90010
	.4byte 0x00000000
	.4byte 0x0680001C
	.4byte 0x0000000C
	.4byte __dt__Q34nw4r3g3d15IScnObjCallbackFv
	.4byte 0x8680001C
	.4byte 0x00000000
	.4byte __dt__CScnRoot
.endobj "@etb_8001EC00"

.obj "@etb_8001EC28", local
.hidden "@etb_8001EC28"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001EC28"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80036800", local
.hidden "@eti_80036800"
	.4byte __dt__CScnRoot
	.4byte 0x00000040
	.4byte "@etb_8001EBF0"
.endobj "@eti_80036800"

.obj "@eti_8003680C", local
.hidden "@eti_8003680C"
	.4byte func_8048ED80
	.4byte 0x00000050
	.4byte "@etb_8001EBF8"
.endobj "@eti_8003680C"

.obj "@eti_80036818", local
.hidden "@eti_80036818"
	.4byte __ct__CScnRootNw4r
	.4byte 0x00000508
	.4byte "@etb_8001EC00"
.endobj "@eti_80036818"

.obj "@eti_80036824", local
.hidden "@eti_80036824"
	.4byte func_8048F2F0
	.4byte 0x00000048
	.4byte "@etb_8001EC28"
.endobj "@eti_80036824"
