.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn SFD_GetHnStat, global
/* 803CC2FC 003958BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CC300 003958C0  7C 08 02 A6 */	mflr r0
/* 803CC304 003958C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CC308 003958C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CC30C 003958CC  7C 7F 1B 78 */	mr r31, r3
/* 803CC310 003958D0  4B FF 4A F5 */	bl SFLIB_CheckHn
/* 803CC314 003958D4  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CC318 003958D8  41 82 00 14 */	beq .L_803CC32C
/* 803CC31C 003958DC  3C 80 FF 00 */	lis r4, 0xff00
/* 803CC320 003958E0  38 60 00 00 */	li r3, 0x0
/* 803CC324 003958E4  38 84 01 11 */	addi r4, r4, 0x111
/* 803CC328 003958E8  4B FF 49 2D */	bl SFLIB_SetErr
.L_803CC32C:
/* 803CC32C 003958EC  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 803CC330 003958F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CC334 003958F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CC338 003958F8  7C 08 03 A6 */	mtlr r0
/* 803CC33C 003958FC  38 21 00 10 */	addi r1, r1, 0x10
/* 803CC340 00395900  4E 80 00 20 */	blr
.endfn SFD_GetHnStat

.fn func_803CC344, global
/* 803CC344 00395904  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CC348 00395908  7C 08 02 A6 */	mflr r0
/* 803CC34C 0039590C  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CC350 00395910  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CC354 00395914  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 803CC358 00395918  7C 7C 1B 78 */	mr r28, r3
/* 803CC35C 0039591C  7C 9A 23 78 */	mr r26, r4
/* 803CC360 00395920  7C BB 2B 78 */	mr r27, r5
/* 803CC364 00395924  40 82 00 B8 */	bne .L_803CC41C
/* 803CC368 00395928  3C 60 80 61 */	lis r3, SFLIB_libwork@ha
/* 803CC36C 0039592C  54 9C 10 3A */	slwi r28, r4, 2
/* 803CC370 00395930  38 63 A2 E4 */	addi r3, r3, SFLIB_libwork@l
/* 803CC374 00395934  3B C0 00 00 */	li r30, 0x0
/* 803CC378 00395938  3B A3 02 0C */	addi r29, r3, 0x20c
.L_803CC37C:
/* 803CC37C 0039593C  83 FD 00 00 */	lwz r31, 0x0(r29)
/* 803CC380 00395940  7F E3 FB 78 */	mr r3, r31
/* 803CC384 00395944  4B FF 4A 81 */	bl SFLIB_CheckHn
/* 803CC388 00395948  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CC38C 0039594C  40 82 00 70 */	bne .L_803CC3FC
/* 803CC390 00395950  2C 1A 00 06 */	cmpwi r26, 0x6
/* 803CC394 00395954  40 82 00 28 */	bne .L_803CC3BC
/* 803CC398 00395958  2C 1B 00 01 */	cmpwi r27, 0x1
/* 803CC39C 0039595C  40 82 00 20 */	bne .L_803CC3BC
/* 803CC3A0 00395960  7F E3 FB 78 */	mr r3, r31
/* 803CC3A4 00395964  38 80 00 03 */	li r4, 0x3
/* 803CC3A8 00395968  48 00 26 91 */	bl SFTRN_IsSetup
/* 803CC3AC 0039596C  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CC3B0 00395970  40 82 00 0C */	bne .L_803CC3BC
/* 803CC3B4 00395974  38 00 00 00 */	li r0, 0x0
/* 803CC3B8 00395978  48 00 00 34 */	b .L_803CC3EC
.L_803CC3BC:
/* 803CC3BC 0039597C  2C 1A 00 05 */	cmpwi r26, 0x5
/* 803CC3C0 00395980  40 82 00 28 */	bne .L_803CC3E8
/* 803CC3C4 00395984  2C 1B 00 01 */	cmpwi r27, 0x1
/* 803CC3C8 00395988  40 82 00 20 */	bne .L_803CC3E8
/* 803CC3CC 0039598C  7F E3 FB 78 */	mr r3, r31
/* 803CC3D0 00395990  38 80 00 02 */	li r4, 0x2
/* 803CC3D4 00395994  48 00 26 65 */	bl SFTRN_IsSetup
/* 803CC3D8 00395998  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CC3DC 0039599C  40 82 00 0C */	bne .L_803CC3E8
/* 803CC3E0 003959A0  38 00 00 00 */	li r0, 0x0
/* 803CC3E4 003959A4  48 00 00 08 */	b .L_803CC3EC
.L_803CC3E8:
/* 803CC3E8 003959A8  38 00 00 01 */	li r0, 0x1
.L_803CC3EC:
/* 803CC3EC 003959AC  2C 00 00 00 */	cmpwi r0, 0x0
/* 803CC3F0 003959B0  41 82 00 0C */	beq .L_803CC3FC
/* 803CC3F4 003959B4  7C 7C FA 14 */	add r3, r28, r31
/* 803CC3F8 003959B8  93 63 0A 14 */	stw r27, 0xa14(r3)
.L_803CC3FC:
/* 803CC3FC 003959BC  3B DE 00 01 */	addi r30, r30, 0x1
/* 803CC400 003959C0  3B BD 00 04 */	addi r29, r29, 0x4
/* 803CC404 003959C4  2C 1E 00 08 */	cmpwi r30, 0x8
/* 803CC408 003959C8  41 80 FF 74 */	blt .L_803CC37C
/* 803CC40C 003959CC  3C 60 80 61 */	lis r3, SFLIB_libwork@ha
/* 803CC410 003959D0  38 63 A2 E4 */	addi r3, r3, SFLIB_libwork@l
/* 803CC414 003959D4  7F 63 E1 2E */	stwx r27, r3, r28
/* 803CC418 003959D8  48 00 01 04 */	b .L_803CC51C
.L_803CC41C:
/* 803CC41C 003959DC  4B FF 49 E9 */	bl SFLIB_CheckHn
/* 803CC420 003959E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CC424 003959E4  41 82 00 18 */	beq .L_803CC43C
/* 803CC428 003959E8  3C 80 FF 00 */	lis r4, 0xff00
/* 803CC42C 003959EC  38 60 00 00 */	li r3, 0x0
/* 803CC430 003959F0  38 84 01 12 */	addi r4, r4, 0x112
/* 803CC434 003959F4  4B FF 48 21 */	bl SFLIB_SetErr
/* 803CC438 003959F8  48 00 00 E8 */	b .L_803CC520
.L_803CC43C:
/* 803CC43C 003959FC  2C 1A 00 06 */	cmpwi r26, 0x6
/* 803CC440 00395A00  40 82 00 28 */	bne .L_803CC468
/* 803CC444 00395A04  2C 1B 00 01 */	cmpwi r27, 0x1
/* 803CC448 00395A08  40 82 00 20 */	bne .L_803CC468
/* 803CC44C 00395A0C  7F 83 E3 78 */	mr r3, r28
/* 803CC450 00395A10  38 80 00 03 */	li r4, 0x3
/* 803CC454 00395A14  48 00 25 E5 */	bl SFTRN_IsSetup
/* 803CC458 00395A18  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CC45C 00395A1C  40 82 00 0C */	bne .L_803CC468
/* 803CC460 00395A20  38 00 00 00 */	li r0, 0x0
/* 803CC464 00395A24  48 00 00 34 */	b .L_803CC498
.L_803CC468:
/* 803CC468 00395A28  2C 1A 00 05 */	cmpwi r26, 0x5
/* 803CC46C 00395A2C  40 82 00 28 */	bne .L_803CC494
/* 803CC470 00395A30  2C 1B 00 01 */	cmpwi r27, 0x1
/* 803CC474 00395A34  40 82 00 20 */	bne .L_803CC494
/* 803CC478 00395A38  7F 83 E3 78 */	mr r3, r28
/* 803CC47C 00395A3C  38 80 00 02 */	li r4, 0x2
/* 803CC480 00395A40  48 00 25 B9 */	bl SFTRN_IsSetup
/* 803CC484 00395A44  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CC488 00395A48  40 82 00 0C */	bne .L_803CC494
/* 803CC48C 00395A4C  38 00 00 00 */	li r0, 0x0
/* 803CC490 00395A50  48 00 00 08 */	b .L_803CC498
.L_803CC494:
/* 803CC494 00395A54  38 00 00 01 */	li r0, 0x1
.L_803CC498:
/* 803CC498 00395A58  2C 00 00 00 */	cmpwi r0, 0x0
/* 803CC49C 00395A5C  41 82 00 10 */	beq .L_803CC4AC
/* 803CC4A0 00395A60  57 40 10 3A */	slwi r0, r26, 2
/* 803CC4A4 00395A64  7C 7C 02 14 */	add r3, r28, r0
/* 803CC4A8 00395A68  93 63 0A 14 */	stw r27, 0xa14(r3)
.L_803CC4AC:
/* 803CC4AC 00395A6C  2C 1A 00 06 */	cmpwi r26, 0x6
/* 803CC4B0 00395A70  40 82 00 28 */	bne .L_803CC4D8
/* 803CC4B4 00395A74  2C 1B 00 01 */	cmpwi r27, 0x1
/* 803CC4B8 00395A78  40 82 00 20 */	bne .L_803CC4D8
/* 803CC4BC 00395A7C  7F 83 E3 78 */	mr r3, r28
/* 803CC4C0 00395A80  38 80 00 03 */	li r4, 0x3
/* 803CC4C4 00395A84  48 00 25 75 */	bl SFTRN_IsSetup
/* 803CC4C8 00395A88  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CC4CC 00395A8C  40 82 00 0C */	bne .L_803CC4D8
/* 803CC4D0 00395A90  38 00 00 00 */	li r0, 0x0
/* 803CC4D4 00395A94  48 00 00 34 */	b .L_803CC508
.L_803CC4D8:
/* 803CC4D8 00395A98  2C 1A 00 05 */	cmpwi r26, 0x5
/* 803CC4DC 00395A9C  40 82 00 28 */	bne .L_803CC504
/* 803CC4E0 00395AA0  2C 1B 00 01 */	cmpwi r27, 0x1
/* 803CC4E4 00395AA4  40 82 00 20 */	bne .L_803CC504
/* 803CC4E8 00395AA8  7F 83 E3 78 */	mr r3, r28
/* 803CC4EC 00395AAC  38 80 00 02 */	li r4, 0x2
/* 803CC4F0 00395AB0  48 00 25 49 */	bl SFTRN_IsSetup
/* 803CC4F4 00395AB4  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CC4F8 00395AB8  40 82 00 0C */	bne .L_803CC504
/* 803CC4FC 00395ABC  38 00 00 00 */	li r0, 0x0
/* 803CC500 00395AC0  48 00 00 08 */	b .L_803CC508
.L_803CC504:
/* 803CC504 00395AC4  38 00 00 01 */	li r0, 0x1
.L_803CC508:
/* 803CC508 00395AC8  2C 00 00 00 */	cmpwi r0, 0x0
/* 803CC50C 00395ACC  41 82 00 10 */	beq .L_803CC51C
/* 803CC510 00395AD0  57 40 10 3A */	slwi r0, r26, 2
/* 803CC514 00395AD4  7C 7C 02 14 */	add r3, r28, r0
/* 803CC518 00395AD8  93 63 0B A4 */	stw r27, 0xba4(r3)
.L_803CC51C:
/* 803CC51C 00395ADC  38 60 00 00 */	li r3, 0x0
.L_803CC520:
/* 803CC520 00395AE0  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 803CC524 00395AE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CC528 00395AE8  7C 08 03 A6 */	mtlr r0
/* 803CC52C 00395AEC  38 21 00 20 */	addi r1, r1, 0x20
/* 803CC530 00395AF0  4E 80 00 20 */	blr
.endfn func_803CC344

.fn SFSET_SetCond, global
/* 803CC534 00395AF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CC538 00395AF8  7C 08 02 A6 */	mflr r0
/* 803CC53C 00395AFC  2C 04 00 06 */	cmpwi r4, 0x6
/* 803CC540 00395B00  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CC544 00395B04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803CC548 00395B08  7C BF 2B 78 */	mr r31, r5
/* 803CC54C 00395B0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803CC550 00395B10  7C 9E 23 78 */	mr r30, r4
/* 803CC554 00395B14  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803CC558 00395B18  7C 7D 1B 78 */	mr r29, r3
/* 803CC55C 00395B1C  40 82 00 24 */	bne .L_803CC580
/* 803CC560 00395B20  2C 05 00 01 */	cmpwi r5, 0x1
/* 803CC564 00395B24  40 82 00 1C */	bne .L_803CC580
/* 803CC568 00395B28  38 80 00 03 */	li r4, 0x3
/* 803CC56C 00395B2C  48 00 24 CD */	bl SFTRN_IsSetup
/* 803CC570 00395B30  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CC574 00395B34  40 82 00 0C */	bne .L_803CC580
/* 803CC578 00395B38  38 00 00 00 */	li r0, 0x0
/* 803CC57C 00395B3C  48 00 00 34 */	b .L_803CC5B0
.L_803CC580:
/* 803CC580 00395B40  2C 1E 00 05 */	cmpwi r30, 0x5
/* 803CC584 00395B44  40 82 00 28 */	bne .L_803CC5AC
/* 803CC588 00395B48  2C 1F 00 01 */	cmpwi r31, 0x1
/* 803CC58C 00395B4C  40 82 00 20 */	bne .L_803CC5AC
/* 803CC590 00395B50  7F A3 EB 78 */	mr r3, r29
/* 803CC594 00395B54  38 80 00 02 */	li r4, 0x2
/* 803CC598 00395B58  48 00 24 A1 */	bl SFTRN_IsSetup
/* 803CC59C 00395B5C  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CC5A0 00395B60  40 82 00 0C */	bne .L_803CC5AC
/* 803CC5A4 00395B64  38 00 00 00 */	li r0, 0x0
/* 803CC5A8 00395B68  48 00 00 08 */	b .L_803CC5B0
.L_803CC5AC:
/* 803CC5AC 00395B6C  38 00 00 01 */	li r0, 0x1
.L_803CC5B0:
/* 803CC5B0 00395B70  2C 00 00 00 */	cmpwi r0, 0x0
/* 803CC5B4 00395B74  41 82 00 10 */	beq .L_803CC5C4
/* 803CC5B8 00395B78  57 C0 10 3A */	slwi r0, r30, 2
/* 803CC5BC 00395B7C  7C 7D 02 14 */	add r3, r29, r0
/* 803CC5C0 00395B80  93 E3 0A 14 */	stw r31, 0xa14(r3)
.L_803CC5C4:
/* 803CC5C4 00395B84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CC5C8 00395B88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803CC5CC 00395B8C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803CC5D0 00395B90  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803CC5D4 00395B94  7C 08 03 A6 */	mtlr r0
/* 803CC5D8 00395B98  38 21 00 20 */	addi r1, r1, 0x20
/* 803CC5DC 00395B9C  4E 80 00 20 */	blr
.endfn SFSET_SetCond

.fn func_803CC5E0, global
/* 803CC5E0 00395BA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CC5E4 00395BA4  7C 08 02 A6 */	mflr r0
/* 803CC5E8 00395BA8  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CC5EC 00395BAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CC5F0 00395BB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803CC5F4 00395BB4  7C BF 2B 78 */	mr r31, r5
/* 803CC5F8 00395BB8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803CC5FC 00395BBC  7C 9E 23 78 */	mr r30, r4
/* 803CC600 00395BC0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803CC604 00395BC4  7C 7D 1B 78 */	mr r29, r3
/* 803CC608 00395BC8  40 82 00 1C */	bne .L_803CC624
/* 803CC60C 00395BCC  3C 60 80 61 */	lis r3, SFLIB_libwork@ha
/* 803CC610 00395BD0  54 80 10 3A */	slwi r0, r4, 2
/* 803CC614 00395BD4  38 63 A2 E4 */	addi r3, r3, SFLIB_libwork@l
/* 803CC618 00395BD8  7C 03 00 2E */	lwzx r0, r3, r0
/* 803CC61C 00395BDC  90 05 00 00 */	stw r0, 0x0(r5)
/* 803CC620 00395BE0  48 00 00 34 */	b .L_803CC654
.L_803CC624:
/* 803CC624 00395BE4  4B FF 47 E1 */	bl SFLIB_CheckHn
/* 803CC628 00395BE8  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CC62C 00395BEC  41 82 00 18 */	beq .L_803CC644
/* 803CC630 00395BF0  3C 80 FF 00 */	lis r4, 0xff00
/* 803CC634 00395BF4  38 60 00 00 */	li r3, 0x0
/* 803CC638 00395BF8  38 84 01 13 */	addi r4, r4, 0x113
/* 803CC63C 00395BFC  4B FF 46 19 */	bl SFLIB_SetErr
/* 803CC640 00395C00  48 00 00 18 */	b .L_803CC658
.L_803CC644:
/* 803CC644 00395C04  57 C0 10 3A */	slwi r0, r30, 2
/* 803CC648 00395C08  7C 7D 02 14 */	add r3, r29, r0
/* 803CC64C 00395C0C  80 03 0A 14 */	lwz r0, 0xa14(r3)
/* 803CC650 00395C10  90 1F 00 00 */	stw r0, 0x0(r31)
.L_803CC654:
/* 803CC654 00395C14  38 60 00 00 */	li r3, 0x0
.L_803CC658:
/* 803CC658 00395C18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CC65C 00395C1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803CC660 00395C20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803CC664 00395C24  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803CC668 00395C28  7C 08 03 A6 */	mtlr r0
/* 803CC66C 00395C2C  38 21 00 20 */	addi r1, r1, 0x20
/* 803CC670 00395C30  4E 80 00 20 */	blr
.endfn func_803CC5E0

.fn SFSET_GetCond, global
/* 803CC674 00395C34  54 80 10 3A */	slwi r0, r4, 2
/* 803CC678 00395C38  7C 63 02 14 */	add r3, r3, r0
/* 803CC67C 00395C3C  80 63 0A 14 */	lwz r3, 0xa14(r3)
/* 803CC680 00395C40  4E 80 00 20 */	blr
.endfn SFSET_GetCond

.fn func_803CC684, global
/* 803CC684 00395C44  90 A3 0D 38 */	stw r5, 0xd38(r3)
/* 803CC688 00395C48  90 83 0D 34 */	stw r4, 0xd34(r3)
/* 803CC68C 00395C4C  4E 80 00 20 */	blr
.endfn func_803CC684

.fn SFD_GetSofdecHeader, global
/* 803CC690 00395C50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CC694 00395C54  7C 08 02 A6 */	mflr r0
/* 803CC698 00395C58  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CC69C 00395C5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803CC6A0 00395C60  7C BF 2B 78 */	mr r31, r5
/* 803CC6A4 00395C64  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803CC6A8 00395C68  7C 9E 23 78 */	mr r30, r4
/* 803CC6AC 00395C6C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803CC6B0 00395C70  7C 7D 1B 78 */	mr r29, r3
/* 803CC6B4 00395C74  4B FF 47 51 */	bl SFLIB_CheckHn
/* 803CC6B8 00395C78  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CC6BC 00395C7C  41 82 00 18 */	beq .L_803CC6D4
/* 803CC6C0 00395C80  3C 80 FF 00 */	lis r4, 0xff00
/* 803CC6C4 00395C84  38 60 00 00 */	li r3, 0x0
/* 803CC6C8 00395C88  38 84 01 17 */	addi r4, r4, 0x117
/* 803CC6CC 00395C8C  4B FF 45 89 */	bl SFLIB_SetErr
/* 803CC6D0 00395C90  48 00 00 30 */	b .L_803CC700
.L_803CC6D4:
/* 803CC6D4 00395C94  1C 1E 00 44 */	mulli r0, r30, 0x44
/* 803CC6D8 00395C98  7C 7D 02 14 */	add r3, r29, r0
/* 803CC6DC 00395C9C  80 63 1F D8 */	lwz r3, 0x1fd8(r3)
/* 803CC6E0 00395CA0  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CC6E4 00395CA4  40 82 00 10 */	bne .L_803CC6F4
/* 803CC6E8 00395CA8  38 00 00 00 */	li r0, 0x0
/* 803CC6EC 00395CAC  90 1F 00 00 */	stw r0, 0x0(r31)
/* 803CC6F0 00395CB0  48 00 00 0C */	b .L_803CC6FC
.L_803CC6F4:
/* 803CC6F4 00395CB4  80 03 00 00 */	lwz r0, 0x0(r3)
/* 803CC6F8 00395CB8  90 1F 00 00 */	stw r0, 0x0(r31)
.L_803CC6FC:
/* 803CC6FC 00395CBC  38 60 00 00 */	li r3, 0x0
.L_803CC700:
/* 803CC700 00395CC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CC704 00395CC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803CC708 00395CC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803CC70C 00395CCC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803CC710 00395CD0  7C 08 03 A6 */	mtlr r0
/* 803CC714 00395CD4  38 21 00 20 */	addi r1, r1, 0x20
/* 803CC718 00395CD8  4E 80 00 20 */	blr
.endfn SFD_GetSofdecHeader
