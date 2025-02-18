.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn __AXGetStudio, global
/* 802D4320 0029D8E0  3C 60 80 58 */	lis r3, __AXStudio@ha
/* 802D4324 0029D8E4  38 63 19 C0 */	addi r3, r3, __AXStudio@l
/* 802D4328 0029D8E8  4E 80 00 20 */	blr 
.endfn __AXGetStudio

.balign 16, 0
.fn __AXDepopFadeMain, global
/* 802D4330 0029D8F0  3C C0 2A AB */	lis r6, 0x2AAAAAAB@ha
/* 802D4334 0029D8F4  80 E3 00 00 */	lwz r7, 0(r3)
/* 802D4338 0029D8F8  38 06 AA AB */	addi r0, r6, 0x2AAAAAAB@l
/* 802D433C 0029D8FC  7C 00 38 96 */	mulhw r0, r0, r7
/* 802D4340 0029D900  7C 00 26 70 */	srawi r0, r0, 4
/* 802D4344 0029D904  54 06 0F FE */	srwi r6, r0, 0x1f
/* 802D4348 0029D908  7C 00 32 15 */	add. r0, r0, r6
/* 802D434C 0029D90C  41 82 00 3C */	beq .L_802D4388
/* 802D4350 0029D910  2C 00 00 14 */	cmpwi r0, 0x14
/* 802D4354 0029D914  40 81 00 08 */	ble .L_802D435C
/* 802D4358 0029D918  38 00 00 14 */	li r0, 0x14
.L_802D435C:
/* 802D435C 0029D91C  2C 00 FF EC */	cmpwi r0, -20
/* 802D4360 0029D920  40 80 00 08 */	bge .L_802D4368
/* 802D4364 0029D924  38 00 FF EC */	li r0, -20
.L_802D4368:
/* 802D4368 0029D928  90 E4 00 00 */	stw r7, 0(r4)
/* 802D436C 0029D92C  1C C0 00 60 */	mulli r6, r0, 0x60
/* 802D4370 0029D930  7C 00 00 D0 */	neg r0, r0
/* 802D4374 0029D934  80 83 00 00 */	lwz r4, 0(r3)
/* 802D4378 0029D938  7C 86 20 50 */	subf r4, r6, r4
/* 802D437C 0029D93C  90 83 00 00 */	stw r4, 0(r3)
/* 802D4380 0029D940  B0 05 00 00 */	sth r0, 0(r5)
/* 802D4384 0029D944  4E 80 00 20 */	blr
.L_802D4388:
/* 802D4388 0029D948  38 00 00 00 */	li r0, 0
/* 802D438C 0029D94C  90 03 00 00 */	stw r0, 0(r3)
/* 802D4390 0029D950  90 04 00 00 */	stw r0, 0(r4)
/* 802D4394 0029D954  B0 05 00 00 */	sth r0, 0(r5)
/* 802D4398 0029D958  4E 80 00 20 */	blr 
.endfn __AXDepopFadeMain

.balign 16, 0
.fn __AXDepopFadeRmt, global
/* 802D43A0 0029D960  3C C0 38 E4 */	lis r6, 0x38E38E39@ha
/* 802D43A4 0029D964  80 E3 00 00 */	lwz r7, 0(r3)
/* 802D43A8 0029D968  38 06 8E 39 */	addi r0, r6, 0x38E38E39@l
/* 802D43AC 0029D96C  7C 00 38 96 */	mulhw r0, r0, r7
/* 802D43B0 0029D970  7C 00 16 70 */	srawi r0, r0, 2
/* 802D43B4 0029D974  54 06 0F FE */	srwi r6, r0, 0x1f
/* 802D43B8 0029D978  7C 00 32 15 */	add. r0, r0, r6
/* 802D43BC 0029D97C  41 82 00 3C */	beq .L_802D43F8
/* 802D43C0 0029D980  2C 00 00 14 */	cmpwi r0, 0x14
/* 802D43C4 0029D984  40 81 00 08 */	ble .L_802D43CC
/* 802D43C8 0029D988  38 00 00 14 */	li r0, 0x14
.L_802D43CC:
/* 802D43CC 0029D98C  2C 00 FF EC */	cmpwi r0, -20
/* 802D43D0 0029D990  40 80 00 08 */	bge .L_802D43D8
/* 802D43D4 0029D994  38 00 FF EC */	li r0, -20
.L_802D43D8:
/* 802D43D8 0029D998  90 E4 00 00 */	stw r7, 0(r4)
/* 802D43DC 0029D99C  1C C0 00 12 */	mulli r6, r0, 0x12
/* 802D43E0 0029D9A0  7C 00 00 D0 */	neg r0, r0
/* 802D43E4 0029D9A4  80 83 00 00 */	lwz r4, 0(r3)
/* 802D43E8 0029D9A8  7C 86 20 50 */	subf r4, r6, r4
/* 802D43EC 0029D9AC  90 83 00 00 */	stw r4, 0(r3)
/* 802D43F0 0029D9B0  B0 05 00 00 */	sth r0, 0(r5)
/* 802D43F4 0029D9B4  4E 80 00 20 */	blr
.L_802D43F8:
/* 802D43F8 0029D9B8  38 00 00 00 */	li r0, 0
/* 802D43FC 0029D9BC  90 03 00 00 */	stw r0, 0(r3)
/* 802D4400 0029D9C0  90 04 00 00 */	stw r0, 0(r4)
/* 802D4404 0029D9C4  B0 05 00 00 */	sth r0, 0(r5)
/* 802D4408 0029D9C8  4E 80 00 20 */	blr 
.endfn __AXDepopFadeRmt

.balign 16, 0
.fn __AXPrintStudio, global
/* 802D4410 0029D9D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D4414 0029D9D4  7C 08 02 A6 */	mflr r0
/* 802D4418 0029D9D8  38 6D B5 94 */	addi r3, r13, __AXSpbAL@sda21
/* 802D441C 0029D9DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D4420 0029D9E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4424 0029D9E4  3F E0 80 58 */	lis r31, __AXStudio@ha
/* 802D4428 0029D9E8  38 9F 19 C0 */	addi r4, r31, __AXStudio@l
/* 802D442C 0029D9EC  38 A4 00 04 */	addi r5, r4, 4
/* 802D4430 0029D9F0  4B FF FF 01 */	bl __AXDepopFadeMain
/* 802D4434 0029D9F4  3B FF 19 C0 */	addi r31, r31, __AXStudio@l
/* 802D4438 0029D9F8  38 6D B5 90 */	addi r3, r13, __AXSpbAR@sda21
/* 802D443C 0029D9FC  38 9F 00 06 */	addi r4, r31, 6
/* 802D4440 0029DA00  38 BF 00 0A */	addi r5, r31, 0xa
/* 802D4444 0029DA04  4B FF FE ED */	bl __AXDepopFadeMain
/* 802D4448 0029DA08  38 9F 00 0C */	addi r4, r31, 0xc
/* 802D444C 0029DA0C  38 BF 00 10 */	addi r5, r31, 0x10
/* 802D4450 0029DA10  38 6D B5 8C */	addi r3, r13, __AXSpbAS@sda21
/* 802D4454 0029DA14  4B FF FE DD */	bl __AXDepopFadeMain
/* 802D4458 0029DA18  38 9F 00 12 */	addi r4, r31, 0x12
/* 802D445C 0029DA1C  38 BF 00 16 */	addi r5, r31, 0x16
/* 802D4460 0029DA20  38 6D B5 88 */	addi r3, r13, __AXSpbAAL@sda21
/* 802D4464 0029DA24  4B FF FE CD */	bl __AXDepopFadeMain
/* 802D4468 0029DA28  38 9F 00 18 */	addi r4, r31, 0x18
/* 802D446C 0029DA2C  38 BF 00 1C */	addi r5, r31, 0x1c
/* 802D4470 0029DA30  38 6D B5 84 */	addi r3, r13, __AXSpbAAR@sda21
/* 802D4474 0029DA34  4B FF FE BD */	bl __AXDepopFadeMain
/* 802D4478 0029DA38  38 9F 00 1E */	addi r4, r31, 0x1e
/* 802D447C 0029DA3C  38 BF 00 22 */	addi r5, r31, 0x22
/* 802D4480 0029DA40  38 6D B5 80 */	addi r3, r13, __AXSpbAAS@sda21
/* 802D4484 0029DA44  4B FF FE AD */	bl __AXDepopFadeMain
/* 802D4488 0029DA48  38 9F 00 24 */	addi r4, r31, 0x24
/* 802D448C 0029DA4C  38 BF 00 28 */	addi r5, r31, 0x28
/* 802D4490 0029DA50  38 6D B5 7C */	addi r3, r13, __AXSpbABL@sda21
/* 802D4494 0029DA54  4B FF FE 9D */	bl __AXDepopFadeMain
/* 802D4498 0029DA58  38 9F 00 2A */	addi r4, r31, 0x2a
/* 802D449C 0029DA5C  38 BF 00 2E */	addi r5, r31, 0x2e
/* 802D44A0 0029DA60  38 6D B5 78 */	addi r3, r13, __AXSpbABR@sda21
/* 802D44A4 0029DA64  4B FF FE 8D */	bl __AXDepopFadeMain
/* 802D44A8 0029DA68  38 9F 00 30 */	addi r4, r31, 0x30
/* 802D44AC 0029DA6C  38 BF 00 34 */	addi r5, r31, 0x34
/* 802D44B0 0029DA70  38 6D B5 74 */	addi r3, r13, __AXSpbABS@sda21
/* 802D44B4 0029DA74  4B FF FE 7D */	bl __AXDepopFadeMain
/* 802D44B8 0029DA78  38 9F 00 36 */	addi r4, r31, 0x36
/* 802D44BC 0029DA7C  38 BF 00 3A */	addi r5, r31, 0x3a
/* 802D44C0 0029DA80  38 6D B5 70 */	addi r3, r13, __AXSpbACL@sda21
/* 802D44C4 0029DA84  4B FF FE 6D */	bl __AXDepopFadeMain
/* 802D44C8 0029DA88  38 9F 00 3C */	addi r4, r31, 0x3c
/* 802D44CC 0029DA8C  38 BF 00 40 */	addi r5, r31, 0x40
/* 802D44D0 0029DA90  38 6D B5 6C */	addi r3, r13, __AXSpbACR@sda21
/* 802D44D4 0029DA94  4B FF FE 5D */	bl __AXDepopFadeMain
/* 802D44D8 0029DA98  38 9F 00 42 */	addi r4, r31, 0x42
/* 802D44DC 0029DA9C  38 BF 00 46 */	addi r5, r31, 0x46
/* 802D44E0 0029DAA0  38 6D B5 68 */	addi r3, r13, __AXSpbACS@sda21
/* 802D44E4 0029DAA4  4B FF FE 4D */	bl __AXDepopFadeMain
/* 802D44E8 0029DAA8  38 9F 00 48 */	addi r4, r31, 0x48
/* 802D44EC 0029DAAC  38 BF 00 4C */	addi r5, r31, 0x4c
/* 802D44F0 0029DAB0  38 6D B5 64 */	addi r3, r13, __AXSpbMain0@sda21
/* 802D44F4 0029DAB4  4B FF FE AD */	bl __AXDepopFadeRmt
/* 802D44F8 0029DAB8  38 9F 00 54 */	addi r4, r31, 0x54
/* 802D44FC 0029DABC  38 BF 00 58 */	addi r5, r31, 0x58
/* 802D4500 0029DAC0  38 6D B5 60 */	addi r3, r13, __AXSpbMain1@sda21
/* 802D4504 0029DAC4  4B FF FE 9D */	bl __AXDepopFadeRmt
/* 802D4508 0029DAC8  38 9F 00 60 */	addi r4, r31, 0x60
/* 802D450C 0029DACC  38 BF 00 64 */	addi r5, r31, 0x64
/* 802D4510 0029DAD0  38 6D B5 5C */	addi r3, r13, __AXSpbMain2@sda21
/* 802D4514 0029DAD4  4B FF FE 8D */	bl __AXDepopFadeRmt
/* 802D4518 0029DAD8  38 9F 00 6C */	addi r4, r31, 0x6c
/* 802D451C 0029DADC  38 BF 00 70 */	addi r5, r31, 0x70
/* 802D4520 0029DAE0  38 6D B5 58 */	addi r3, r13, __AXSpbMain3@sda21
/* 802D4524 0029DAE4  4B FF FE 7D */	bl __AXDepopFadeRmt
/* 802D4528 0029DAE8  38 9F 00 4E */	addi r4, r31, 0x4e
/* 802D452C 0029DAEC  38 BF 00 52 */	addi r5, r31, 0x52
/* 802D4530 0029DAF0  38 6D B5 54 */	addi r3, r13, __AXSpbAux0@sda21
/* 802D4534 0029DAF4  4B FF FE 6D */	bl __AXDepopFadeRmt
/* 802D4538 0029DAF8  38 9F 00 5A */	addi r4, r31, 0x5a
/* 802D453C 0029DAFC  38 BF 00 5E */	addi r5, r31, 0x5e
/* 802D4540 0029DB00  38 6D B5 50 */	addi r3, r13, __AXSpbAux1@sda21
/* 802D4544 0029DB04  4B FF FE 5D */	bl __AXDepopFadeRmt
/* 802D4548 0029DB08  38 9F 00 66 */	addi r4, r31, 0x66
/* 802D454C 0029DB0C  38 BF 00 6A */	addi r5, r31, 0x6a
/* 802D4550 0029DB10  38 6D B5 4C */	addi r3, r13, __AXSpbAux2@sda21
/* 802D4554 0029DB14  4B FF FE 4D */	bl __AXDepopFadeRmt
/* 802D4558 0029DB18  38 9F 00 72 */	addi r4, r31, 0x72
/* 802D455C 0029DB1C  38 BF 00 76 */	addi r5, r31, 0x76
/* 802D4560 0029DB20  38 6D B5 48 */	addi r3, r13, __AXSpbAux3@sda21
/* 802D4564 0029DB24  4B FF FE 3D */	bl __AXDepopFadeRmt
/* 802D4568 0029DB28  7F E3 FB 78 */	mr r3, r31
/* 802D456C 0029DB2C  38 80 00 78 */	li r4, 0x78
/* 802D4570 0029DB30  48 07 FA 41 */	bl DCFlushRange
/* 802D4574 0029DB34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D4578 0029DB38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D457C 0029DB3C  7C 08 03 A6 */	mtlr r0
/* 802D4580 0029DB40  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4584 0029DB44  4E 80 00 20 */	blr 
.endfn __AXPrintStudio

.balign 16, 0
.fn __AXSPBInit, global
/* 802D4590 0029DB50  38 00 00 00 */	li r0, 0
/* 802D4594 0029DB54  90 0D B5 48 */	stw r0, __AXSpbAux3@sda21(r13)
/* 802D4598 0029DB58  90 0D B5 4C */	stw r0, __AXSpbAux2@sda21(r13)
/* 802D459C 0029DB5C  90 0D B5 50 */	stw r0, __AXSpbAux1@sda21(r13)
/* 802D45A0 0029DB60  90 0D B5 54 */	stw r0, __AXSpbAux0@sda21(r13)
/* 802D45A4 0029DB64  90 0D B5 58 */	stw r0, __AXSpbMain3@sda21(r13)
/* 802D45A8 0029DB68  90 0D B5 5C */	stw r0, __AXSpbMain2@sda21(r13)
/* 802D45AC 0029DB6C  90 0D B5 60 */	stw r0, __AXSpbMain1@sda21(r13)
/* 802D45B0 0029DB70  90 0D B5 64 */	stw r0, __AXSpbMain0@sda21(r13)
/* 802D45B4 0029DB74  90 0D B5 68 */	stw r0, __AXSpbACS@sda21(r13)
/* 802D45B8 0029DB78  90 0D B5 6C */	stw r0, __AXSpbACR@sda21(r13)
/* 802D45BC 0029DB7C  90 0D B5 70 */	stw r0, __AXSpbACL@sda21(r13)
/* 802D45C0 0029DB80  90 0D B5 74 */	stw r0, __AXSpbABS@sda21(r13)
/* 802D45C4 0029DB84  90 0D B5 78 */	stw r0, __AXSpbABR@sda21(r13)
/* 802D45C8 0029DB88  90 0D B5 7C */	stw r0, __AXSpbABL@sda21(r13)
/* 802D45CC 0029DB8C  90 0D B5 80 */	stw r0, __AXSpbAAS@sda21(r13)
/* 802D45D0 0029DB90  90 0D B5 84 */	stw r0, __AXSpbAAR@sda21(r13)
/* 802D45D4 0029DB94  90 0D B5 88 */	stw r0, __AXSpbAAL@sda21(r13)
/* 802D45D8 0029DB98  90 0D B5 8C */	stw r0, __AXSpbAS@sda21(r13)
/* 802D45DC 0029DB9C  90 0D B5 90 */	stw r0, __AXSpbAR@sda21(r13)
/* 802D45E0 0029DBA0  90 0D B5 94 */	stw r0, __AXSpbAL@sda21(r13)
/* 802D45E4 0029DBA4  4E 80 00 20 */	blr 
.endfn __AXSPBInit

.balign 16, 0
.fn __AXSPBQuit, global
/* 802D45F0 0029DBB0  4E 80 00 20 */	blr 
.endfn __AXSPBQuit

.balign 16, 0
.fn __AXDepopVoice, global
/* 802D4600 0029DBC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D4604 0029DBC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4608 0029DBC8  93 C1 00 08 */	stw r30, 8(r1)
/* 802D460C 0029DBCC  80 8D B5 94 */	lwz r4, __AXSpbAL@sda21(r13)
/* 802D4610 0029DBD0  A8 03 00 52 */	lha r0, 0x52(r3)
/* 802D4614 0029DBD4  80 CD B5 88 */	lwz r6, __AXSpbAAL@sda21(r13)
/* 802D4618 0029DBD8  7C 04 02 14 */	add r0, r4, r0
/* 802D461C 0029DBDC  90 0D B5 94 */	stw r0, __AXSpbAL@sda21(r13)
/* 802D4620 0029DBE0  80 AD B5 7C */	lwz r5, __AXSpbABL@sda21(r13)
/* 802D4624 0029DBE4  A8 03 00 54 */	lha r0, 0x54(r3)
/* 802D4628 0029DBE8  80 8D B5 70 */	lwz r4, __AXSpbACL@sda21(r13)
/* 802D462C 0029DBEC  7C 06 02 14 */	add r0, r6, r0
/* 802D4630 0029DBF0  90 0D B5 88 */	stw r0, __AXSpbAAL@sda21(r13)
/* 802D4634 0029DBF4  81 0D B5 90 */	lwz r8, __AXSpbAR@sda21(r13)
/* 802D4638 0029DBF8  A8 03 00 56 */	lha r0, 0x56(r3)
/* 802D463C 0029DBFC  80 ED B5 84 */	lwz r7, __AXSpbAAR@sda21(r13)
/* 802D4640 0029DC00  7C 05 02 14 */	add r0, r5, r0
/* 802D4644 0029DC04  90 0D B5 7C */	stw r0, __AXSpbABL@sda21(r13)
/* 802D4648 0029DC08  80 CD B5 78 */	lwz r6, __AXSpbABR@sda21(r13)
/* 802D464C 0029DC0C  A8 03 00 58 */	lha r0, 0x58(r3)
/* 802D4650 0029DC10  80 AD B5 6C */	lwz r5, __AXSpbACR@sda21(r13)
/* 802D4654 0029DC14  7C 04 02 14 */	add r0, r4, r0
/* 802D4658 0029DC18  90 0D B5 70 */	stw r0, __AXSpbACL@sda21(r13)
/* 802D465C 0029DC1C  80 8D B5 8C */	lwz r4, __AXSpbAS@sda21(r13)
/* 802D4660 0029DC20  A8 03 00 5A */	lha r0, 0x5a(r3)
/* 802D4664 0029DC24  83 CD B5 80 */	lwz r30, __AXSpbAAS@sda21(r13)
/* 802D4668 0029DC28  7C 08 02 14 */	add r0, r8, r0
/* 802D466C 0029DC2C  90 0D B5 90 */	stw r0, __AXSpbAR@sda21(r13)
/* 802D4670 0029DC30  83 ED B5 74 */	lwz r31, __AXSpbABS@sda21(r13)
/* 802D4674 0029DC34  A8 03 00 5C */	lha r0, 0x5c(r3)
/* 802D4678 0029DC38  81 8D B5 68 */	lwz r12, __AXSpbACS@sda21(r13)
/* 802D467C 0029DC3C  7C 07 02 14 */	add r0, r7, r0
/* 802D4680 0029DC40  90 0D B5 84 */	stw r0, __AXSpbAAR@sda21(r13)
/* 802D4684 0029DC44  81 6D B5 64 */	lwz r11, __AXSpbMain0@sda21(r13)
/* 802D4688 0029DC48  A8 03 00 5E */	lha r0, 0x5e(r3)
/* 802D468C 0029DC4C  81 4D B5 60 */	lwz r10, __AXSpbMain1@sda21(r13)
/* 802D4690 0029DC50  7C 06 02 14 */	add r0, r6, r0
/* 802D4694 0029DC54  90 0D B5 78 */	stw r0, __AXSpbABR@sda21(r13)
/* 802D4698 0029DC58  81 2D B5 5C */	lwz r9, __AXSpbMain2@sda21(r13)
/* 802D469C 0029DC5C  A8 03 00 60 */	lha r0, 0x60(r3)
/* 802D46A0 0029DC60  81 0D B5 58 */	lwz r8, __AXSpbMain3@sda21(r13)
/* 802D46A4 0029DC64  7C 05 02 14 */	add r0, r5, r0
/* 802D46A8 0029DC68  90 0D B5 6C */	stw r0, __AXSpbACR@sda21(r13)
/* 802D46AC 0029DC6C  80 ED B5 54 */	lwz r7, __AXSpbAux0@sda21(r13)
/* 802D46B0 0029DC70  A8 03 00 62 */	lha r0, 0x62(r3)
/* 802D46B4 0029DC74  80 CD B5 50 */	lwz r6, __AXSpbAux1@sda21(r13)
/* 802D46B8 0029DC78  7C 04 02 14 */	add r0, r4, r0
/* 802D46BC 0029DC7C  90 0D B5 8C */	stw r0, __AXSpbAS@sda21(r13)
/* 802D46C0 0029DC80  80 AD B5 4C */	lwz r5, __AXSpbAux2@sda21(r13)
/* 802D46C4 0029DC84  A8 03 00 64 */	lha r0, 0x64(r3)
/* 802D46C8 0029DC88  80 8D B5 48 */	lwz r4, __AXSpbAux3@sda21(r13)
/* 802D46CC 0029DC8C  7C 1E 02 14 */	add r0, r30, r0
/* 802D46D0 0029DC90  90 0D B5 80 */	stw r0, __AXSpbAAS@sda21(r13)
/* 802D46D4 0029DC94  A8 03 00 66 */	lha r0, 0x66(r3)
/* 802D46D8 0029DC98  7C 1F 02 14 */	add r0, r31, r0
/* 802D46DC 0029DC9C  90 0D B5 74 */	stw r0, __AXSpbABS@sda21(r13)
/* 802D46E0 0029DCA0  A8 03 00 68 */	lha r0, 0x68(r3)
/* 802D46E4 0029DCA4  7C 0C 02 14 */	add r0, r12, r0
/* 802D46E8 0029DCA8  90 0D B5 68 */	stw r0, __AXSpbACS@sda21(r13)
/* 802D46EC 0029DCAC  A8 03 00 FA */	lha r0, 0xfa(r3)
/* 802D46F0 0029DCB0  7C 0B 02 14 */	add r0, r11, r0
/* 802D46F4 0029DCB4  90 0D B5 64 */	stw r0, __AXSpbMain0@sda21(r13)
/* 802D46F8 0029DCB8  A8 03 00 FC */	lha r0, 0xfc(r3)
/* 802D46FC 0029DCBC  7C 0A 02 14 */	add r0, r10, r0
/* 802D4700 0029DCC0  90 0D B5 60 */	stw r0, __AXSpbMain1@sda21(r13)
/* 802D4704 0029DCC4  A8 03 00 FE */	lha r0, 0xfe(r3)
/* 802D4708 0029DCC8  7C 09 02 14 */	add r0, r9, r0
/* 802D470C 0029DCCC  90 0D B5 5C */	stw r0, __AXSpbMain2@sda21(r13)
/* 802D4710 0029DCD0  A8 03 01 00 */	lha r0, 0x100(r3)
/* 802D4714 0029DCD4  7C 08 02 14 */	add r0, r8, r0
/* 802D4718 0029DCD8  90 0D B5 58 */	stw r0, __AXSpbMain3@sda21(r13)
/* 802D471C 0029DCDC  A8 03 01 02 */	lha r0, 0x102(r3)
/* 802D4720 0029DCE0  7C 07 02 14 */	add r0, r7, r0
/* 802D4724 0029DCE4  90 0D B5 54 */	stw r0, __AXSpbAux0@sda21(r13)
/* 802D4728 0029DCE8  A8 03 01 04 */	lha r0, 0x104(r3)
/* 802D472C 0029DCEC  7C 06 02 14 */	add r0, r6, r0
/* 802D4730 0029DCF0  90 0D B5 50 */	stw r0, __AXSpbAux1@sda21(r13)
/* 802D4734 0029DCF4  A8 03 01 06 */	lha r0, 0x106(r3)
/* 802D4738 0029DCF8  7C 05 02 14 */	add r0, r5, r0
/* 802D473C 0029DCFC  90 0D B5 4C */	stw r0, __AXSpbAux2@sda21(r13)
/* 802D4740 0029DD00  A8 03 01 08 */	lha r0, 0x108(r3)
/* 802D4744 0029DD04  7C 04 02 14 */	add r0, r4, r0
/* 802D4748 0029DD08  90 0D B5 48 */	stw r0, __AXSpbAux3@sda21(r13)
/* 802D474C 0029DD0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D4750 0029DD10  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D4754 0029DD14  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4758 0029DD18  4E 80 00 20 */	blr 
.endfn __AXDepopVoice

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.balign 32
.obj __AXStudio, local
	.skip 0x78
.endobj __AXStudio

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj __AXSpbAux3, local
	.skip 0x4
.endobj __AXSpbAux3

.obj __AXSpbAux2, local
	.skip 0x4
.endobj __AXSpbAux2

.obj __AXSpbAux1, local
	.skip 0x4
.endobj __AXSpbAux1

.obj __AXSpbAux0, local
	.skip 0x4
.endobj __AXSpbAux0

.obj __AXSpbMain3, local
	.skip 0x4
.endobj __AXSpbMain3

.obj __AXSpbMain2, local
	.skip 0x4
.endobj __AXSpbMain2

.obj __AXSpbMain1, local
	.skip 0x4
.endobj __AXSpbMain1

.obj __AXSpbMain0, local
	.skip 0x4
.endobj __AXSpbMain0

.obj __AXSpbACS, local
	.skip 0x4
.endobj __AXSpbACS

.obj __AXSpbACR, local
	.skip 0x4
.endobj __AXSpbACR

.obj __AXSpbACL, local
	.skip 0x4
.endobj __AXSpbACL

.obj __AXSpbABS, local
	.skip 0x4
.endobj __AXSpbABS

.obj __AXSpbABR, local
	.skip 0x4
.endobj __AXSpbABR

.obj __AXSpbABL, local
	.skip 0x4
.endobj __AXSpbABL

.obj __AXSpbAAS, local
	.skip 0x4
.endobj __AXSpbAAS

.obj __AXSpbAAR, local
	.skip 0x4
.endobj __AXSpbAAR

.obj __AXSpbAAL, local
	.skip 0x4
.endobj __AXSpbAAL

.obj __AXSpbAS, local
	.skip 0x4
.endobj __AXSpbAS

.obj __AXSpbAR, local
	.skip 0x4
.endobj __AXSpbAR

.obj __AXSpbAL, local
	.skip 0x4
.endobj __AXSpbAL
