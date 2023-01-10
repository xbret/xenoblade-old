.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global __HBMSYNSetupVolumeEnvelope
__HBMSYNSetupVolumeEnvelope:
/* 803412F0 0030A8B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803412F4 0030A8B4  7C 08 02 A6 */	mflr r0
/* 803412F8 0030A8B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803412FC 0030A8BC  3C 00 43 30 */	lis r0, 0x4330
/* 80341300 0030A8C0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80341304 0030A8C4  3F E0 80 52 */	lis r31, lbl_80518B58@ha
/* 80341308 0030A8C8  3B FF 8B 58 */	addi r31, r31, lbl_80518B58@l
/* 8034130C 0030A8CC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80341310 0030A8D0  7C 7E 1B 78 */	mr r30, r3
/* 80341314 0030A8D4  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 80341318 0030A8D8  90 01 00 08 */	stw r0, 8(r1)
/* 8034131C 0030A8DC  80 86 00 18 */	lwz r4, 0x18(r6)
/* 80341320 0030A8E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80341324 0030A8E4  3C 04 80 00 */	addis r0, r4, 0x8000
/* 80341328 0030A8E8  28 00 00 00 */	cmplwi r0, 0
/* 8034132C 0030A8EC  40 82 00 38 */	bne .L_80341364
/* 80341330 0030A8F0  38 80 00 01 */	li r4, 1
/* 80341334 0030A8F4  38 00 00 00 */	li r0, 0
/* 80341338 0030A8F8  90 83 00 30 */	stw r4, 0x30(r3)
/* 8034133C 0030A8FC  90 03 00 34 */	stw r0, 0x34(r3)
/* 80341340 0030A900  80 86 00 1C */	lwz r4, 0x1c(r6)
/* 80341344 0030A904  3C 04 80 00 */	addis r0, r4, 0x8000
/* 80341348 0030A908  28 00 00 00 */	cmplwi r0, 0
/* 8034134C 0030A90C  40 82 01 34 */	bne .L_80341480
/* 80341350 0030A910  38 00 00 02 */	li r0, 2
/* 80341354 0030A914  90 03 00 30 */	stw r0, 0x30(r3)
/* 80341358 0030A918  80 06 00 20 */	lwz r0, 0x20(r6)
/* 8034135C 0030A91C  90 03 00 34 */	stw r0, 0x34(r3)
/* 80341360 0030A920  48 00 01 20 */	b .L_80341480
.L_80341364:
/* 80341364 0030A924  88 A3 00 0E */	lbz r5, 0xe(r3)
/* 80341368 0030A928  80 66 00 28 */	lwz r3, 0x28(r6)
/* 8034136C 0030A92C  40 82 00 0C */	bne .L_80341378
/* 80341370 0030A930  38 80 00 00 */	li r4, 0
/* 80341374 0030A934  48 00 00 B4 */	b .L_80341428
.L_80341378:
/* 80341378 0030A938  3C 03 80 00 */	addis r0, r3, 0x8000
/* 8034137C 0030A93C  28 00 00 00 */	cmplwi r0, 0
/* 80341380 0030A940  40 82 00 44 */	bne .L_803413C4
/* 80341384 0030A944  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80341388 0030A948  90 01 00 0C */	stw r0, 0xc(r1)
/* 8034138C 0030A94C  C8 5F 00 18 */	lfd f2, 0x18(r31)
/* 80341390 0030A950  C8 21 00 08 */	lfd f1, 8(r1)
/* 80341394 0030A954  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80341398 0030A958  EC 41 10 28 */	fsubs f2, f1, f2
/* 8034139C 0030A95C  C8 3F 00 00 */	lfd f1, 0(r31)
/* 803413A0 0030A960  EC 42 00 24 */	fdivs f2, f2, f0
/* 803413A4 0030A964  4B F8 9E 75 */	bl pow
/* 803413A8 0030A968  FC 20 08 18 */	frsp f1, f1
/* 803413AC 0030A96C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 803413B0 0030A970  EC 00 00 72 */	fmuls f0, f0, f1
/* 803413B4 0030A974  FC 00 00 1E */	fctiwz f0, f0
/* 803413B8 0030A978  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803413BC 0030A97C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 803413C0 0030A980  48 00 00 68 */	b .L_80341428
.L_803413C4:
/* 803413C4 0030A984  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 803413C8 0030A988  90 01 00 0C */	stw r0, 0xc(r1)
/* 803413CC 0030A98C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 803413D0 0030A990  3C 60 80 55 */	lis r3, lbl_8054FA90@ha
/* 803413D4 0030A994  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 803413D8 0030A998  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 803413DC 0030A99C  C8 01 00 08 */	lfd f0, 8(r1)
/* 803413E0 0030A9A0  38 63 FA 90 */	addi r3, r3, lbl_8054FA90@l
/* 803413E4 0030A9A4  90 81 00 14 */	stw r4, 0x14(r1)
/* 803413E8 0030A9A8  EC 60 20 28 */	fsubs f3, f0, f4
/* 803413EC 0030A9AC  7C 43 04 2E */	lfsx f2, r3, r0
/* 803413F0 0030A9B0  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 803413F4 0030A9B4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 803413F8 0030A9B8  EC 81 20 28 */	fsubs f4, f1, f4
/* 803413FC 0030A9BC  C8 3F 00 00 */	lfd f1, 0(r31)
/* 80341400 0030A9C0  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80341404 0030A9C4  EC 44 10 2A */	fadds f2, f4, f2
/* 80341408 0030A9C8  EC 42 00 24 */	fdivs f2, f2, f0
/* 8034140C 0030A9CC  4B F8 9E 0D */	bl pow
/* 80341410 0030A9D0  FC 20 08 18 */	frsp f1, f1
/* 80341414 0030A9D4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80341418 0030A9D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8034141C 0030A9DC  FC 00 00 1E */	fctiwz f0, f0
/* 80341420 0030A9E0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80341424 0030A9E4  80 81 00 1C */	lwz r4, 0x1c(r1)
.L_80341428:
/* 80341428 0030A9E8  3C 60 55 55 */	lis r3, 0x55555556@ha
/* 8034142C 0030A9EC  38 03 55 56 */	addi r0, r3, 0x55555556@l
/* 80341430 0030A9F0  7C 60 20 96 */	mulhw r3, r0, r4
/* 80341434 0030A9F4  54 60 0F FE */	srwi r0, r3, 0x1f
/* 80341438 0030A9F8  7C 63 02 15 */	add. r3, r3, r0
/* 8034143C 0030A9FC  41 82 00 28 */	beq .L_80341464
/* 80341440 0030AA00  3C 00 00 64 */	lis r0, 0x64
/* 80341444 0030AA04  38 80 00 00 */	li r4, 0
/* 80341448 0030AA08  7C 60 1B D6 */	divw r3, r0, r3
/* 8034144C 0030AA0C  90 9E 00 38 */	stw r4, 0x38(r30)
/* 80341450 0030AA10  3C 00 FC 40 */	lis r0, 0xfc40
/* 80341454 0030AA14  90 1E 00 34 */	stw r0, 0x34(r30)
/* 80341458 0030AA18  90 9E 00 30 */	stw r4, 0x30(r30)
/* 8034145C 0030AA1C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80341460 0030AA20  48 00 00 20 */	b .L_80341480
.L_80341464:
/* 80341464 0030AA24  38 80 00 00 */	li r4, 0
/* 80341468 0030AA28  3C 60 00 64 */	lis r3, 0x64
/* 8034146C 0030AA2C  3C 00 FC 40 */	lis r0, 0xfc40
/* 80341470 0030AA30  90 9E 00 38 */	stw r4, 0x38(r30)
/* 80341474 0030AA34  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80341478 0030AA38  90 1E 00 34 */	stw r0, 0x34(r30)
/* 8034147C 0030AA3C  90 9E 00 30 */	stw r4, 0x30(r30)
.L_80341480:
/* 80341480 0030AA40  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80341484 0030AA44  28 00 00 02 */	cmplwi r0, 2
/* 80341488 0030AA48  40 80 01 08 */	bge .L_80341590
/* 8034148C 0030AA4C  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80341490 0030AA50  88 BE 00 0D */	lbz r5, 0xd(r30)
/* 80341494 0030AA54  80 64 00 1C */	lwz r3, 0x1c(r4)
/* 80341498 0030AA58  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 8034149C 0030AA5C  3C 03 80 00 */	addis r0, r3, 0x8000
/* 803414A0 0030AA60  28 00 00 00 */	cmplwi r0, 0
/* 803414A4 0030AA64  40 82 00 0C */	bne .L_803414B0
/* 803414A8 0030AA68  38 80 00 00 */	li r4, 0
/* 803414AC 0030AA6C  48 00 00 B4 */	b .L_80341560
.L_803414B0:
/* 803414B0 0030AA70  3C 04 80 00 */	addis r0, r4, 0x8000
/* 803414B4 0030AA74  28 00 00 00 */	cmplwi r0, 0
/* 803414B8 0030AA78  40 82 00 44 */	bne .L_803414FC
/* 803414BC 0030AA7C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 803414C0 0030AA80  90 01 00 14 */	stw r0, 0x14(r1)
/* 803414C4 0030AA84  C8 5F 00 18 */	lfd f2, 0x18(r31)
/* 803414C8 0030AA88  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 803414CC 0030AA8C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 803414D0 0030AA90  EC 41 10 28 */	fsubs f2, f1, f2
/* 803414D4 0030AA94  C8 3F 00 00 */	lfd f1, 0(r31)
/* 803414D8 0030AA98  EC 42 00 24 */	fdivs f2, f2, f0
/* 803414DC 0030AA9C  4B F8 9D 3D */	bl pow
/* 803414E0 0030AAA0  FC 20 08 18 */	frsp f1, f1
/* 803414E4 0030AAA4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 803414E8 0030AAA8  EC 00 00 72 */	fmuls f0, f0, f1
/* 803414EC 0030AAAC  FC 00 00 1E */	fctiwz f0, f0
/* 803414F0 0030AAB0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803414F4 0030AAB4  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 803414F8 0030AAB8  48 00 00 68 */	b .L_80341560
.L_803414FC:
/* 803414FC 0030AABC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80341500 0030AAC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80341504 0030AAC4  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 80341508 0030AAC8  3C 60 80 55 */	lis r3, lbl_8054FA90@ha
/* 8034150C 0030AACC  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 80341510 0030AAD0  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 80341514 0030AAD4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80341518 0030AAD8  38 63 FA 90 */	addi r3, r3, lbl_8054FA90@l
/* 8034151C 0030AADC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80341520 0030AAE0  EC 60 20 28 */	fsubs f3, f0, f4
/* 80341524 0030AAE4  7C 43 04 2E */	lfsx f2, r3, r0
/* 80341528 0030AAE8  C8 21 00 08 */	lfd f1, 8(r1)
/* 8034152C 0030AAEC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80341530 0030AAF0  EC 81 20 28 */	fsubs f4, f1, f4
/* 80341534 0030AAF4  C8 3F 00 00 */	lfd f1, 0(r31)
/* 80341538 0030AAF8  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8034153C 0030AAFC  EC 44 10 2A */	fadds f2, f4, f2
/* 80341540 0030AB00  EC 42 00 24 */	fdivs f2, f2, f0
/* 80341544 0030AB04  4B F8 9C D5 */	bl pow
/* 80341548 0030AB08  FC 20 08 18 */	frsp f1, f1
/* 8034154C 0030AB0C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80341550 0030AB10  EC 00 00 72 */	fmuls f0, f0, f1
/* 80341554 0030AB14  FC 00 00 1E */	fctiwz f0, f0
/* 80341558 0030AB18  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8034155C 0030AB1C  80 81 00 1C */	lwz r4, 0x1c(r1)
.L_80341560:
/* 80341560 0030AB20  3C 60 55 55 */	lis r3, 0x55555556@ha
/* 80341564 0030AB24  38 03 55 56 */	addi r0, r3, 0x55555556@l
/* 80341568 0030AB28  7C 60 20 96 */	mulhw r3, r0, r4
/* 8034156C 0030AB2C  54 60 0F FE */	srwi r0, r3, 0x1f
/* 80341570 0030AB30  7C 63 02 15 */	add. r3, r3, r0
/* 80341574 0030AB34  41 82 00 14 */	beq .L_80341588
/* 80341578 0030AB38  3C 00 FC 40 */	lis r0, 0xfc40
/* 8034157C 0030AB3C  7C 00 1B D6 */	divw r0, r0, r3
/* 80341580 0030AB40  90 1E 00 40 */	stw r0, 0x40(r30)
/* 80341584 0030AB44  48 00 00 0C */	b .L_80341590
.L_80341588:
/* 80341588 0030AB48  3C 00 FC 40 */	lis r0, 0xfc40
/* 8034158C 0030AB4C  90 1E 00 40 */	stw r0, 0x40(r30)
.L_80341590:
/* 80341590 0030AB50  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80341594 0030AB54  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80341598 0030AB58  90 1E 00 44 */	stw r0, 0x44(r30)
/* 8034159C 0030AB5C  80 03 00 24 */	lwz r0, 0x24(r3)
/* 803415A0 0030AB60  90 1E 00 48 */	stw r0, 0x48(r30)
/* 803415A4 0030AB64  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803415A8 0030AB68  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803415AC 0030AB6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803415B0 0030AB70  7C 08 03 A6 */	mtlr r0
/* 803415B4 0030AB74  38 21 00 30 */	addi r1, r1, 0x30
/* 803415B8 0030AB78  4E 80 00 20 */	blr 

.balign 16, 0
.global func_803415C0
func_803415C0:
/* 803415C0 0030AB80  80 03 00 30 */	lwz r0, 0x30(r3)
/* 803415C4 0030AB84  2C 00 00 00 */	cmpwi r0, 0
/* 803415C8 0030AB88  41 82 00 18 */	beq .L_803415E0
/* 803415CC 0030AB8C  28 00 00 01 */	cmplwi r0, 1
/* 803415D0 0030AB90  41 82 00 68 */	beq .L_80341638
/* 803415D4 0030AB94  28 00 00 03 */	cmplwi r0, 3
/* 803415D8 0030AB98  41 82 00 C8 */	beq .L_803416A0
/* 803415DC 0030AB9C  4E 80 00 20 */	blr
.L_803415E0:
/* 803415E0 0030ABA0  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 803415E4 0030ABA4  3C 00 00 63 */	lis r0, 0x63
/* 803415E8 0030ABA8  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 803415EC 0030ABAC  7C 85 22 14 */	add r4, r5, r4
/* 803415F0 0030ABB0  90 83 00 38 */	stw r4, 0x38(r3)
/* 803415F4 0030ABB4  7C 04 00 00 */	cmpw r4, r0
/* 803415F8 0030ABB8  41 80 00 10 */	blt .L_80341608
/* 803415FC 0030ABBC  38 00 00 00 */	li r0, 0
/* 80341600 0030ABC0  90 03 00 34 */	stw r0, 0x34(r3)
/* 80341604 0030ABC4  48 00 00 1C */	b .L_80341620
.L_80341608:
/* 80341608 0030ABC8  7C 80 86 70 */	srawi r0, r4, 0x10
/* 8034160C 0030ABCC  3C 80 80 55 */	lis r4, lbl_8054FE90@ha
/* 80341610 0030ABD0  54 00 10 3A */	slwi r0, r0, 2
/* 80341614 0030ABD4  38 84 FE 90 */	addi r4, r4, lbl_8054FE90@l
/* 80341618 0030ABD8  7C 04 00 2E */	lwzx r0, r4, r0
/* 8034161C 0030ABDC  90 03 00 34 */	stw r0, 0x34(r3)
.L_80341620:
/* 80341620 0030ABE0  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80341624 0030ABE4  2C 00 00 00 */	cmpwi r0, 0
/* 80341628 0030ABE8  4C 82 00 20 */	bnelr 
/* 8034162C 0030ABEC  38 00 00 01 */	li r0, 1
/* 80341630 0030ABF0  90 03 00 30 */	stw r0, 0x30(r3)
/* 80341634 0030ABF4  4E 80 00 20 */	blr
.L_80341638:
/* 80341638 0030ABF8  80 83 00 34 */	lwz r4, 0x34(r3)
/* 8034163C 0030ABFC  80 03 00 40 */	lwz r0, 0x40(r3)
/* 80341640 0030AC00  80 A3 00 44 */	lwz r5, 0x44(r3)
/* 80341644 0030AC04  7C 04 02 14 */	add r0, r4, r0
/* 80341648 0030AC08  90 03 00 34 */	stw r0, 0x34(r3)
/* 8034164C 0030AC0C  7C 00 28 00 */	cmpw r0, r5
/* 80341650 0030AC10  41 81 00 10 */	bgt .L_80341660
/* 80341654 0030AC14  38 00 00 02 */	li r0, 2
/* 80341658 0030AC18  90 A3 00 34 */	stw r5, 0x34(r3)
/* 8034165C 0030AC1C  90 03 00 30 */	stw r0, 0x30(r3)
.L_80341660:
/* 80341660 0030AC20  80 83 00 34 */	lwz r4, 0x34(r3)
/* 80341664 0030AC24  3C 00 FD 30 */	lis r0, 0xfd30
/* 80341668 0030AC28  7C 04 00 00 */	cmpw r4, r0
/* 8034166C 0030AC2C  4D 81 00 20 */	bgtlr 
/* 80341670 0030AC30  88 83 00 0C */	lbz r4, 0xc(r3)
/* 80341674 0030AC34  38 E0 00 04 */	li r7, 4
/* 80341678 0030AC38  88 03 00 0D */	lbz r0, 0xd(r3)
/* 8034167C 0030AC3C  38 C0 00 00 */	li r6, 0
/* 80341680 0030AC40  80 A3 00 08 */	lwz r5, 8(r3)
/* 80341684 0030AC44  54 84 48 2C */	slwi r4, r4, 9
/* 80341688 0030AC48  90 E3 00 30 */	stw r7, 0x30(r3)
/* 8034168C 0030AC4C  54 00 10 3A */	slwi r0, r0, 2
/* 80341690 0030AC50  7C 65 22 14 */	add r3, r5, r4
/* 80341694 0030AC54  7C 63 02 14 */	add r3, r3, r0
/* 80341698 0030AC58  90 C3 04 08 */	stw r6, 0x408(r3)
/* 8034169C 0030AC5C  4E 80 00 20 */	blr
.L_803416A0:
/* 803416A0 0030AC60  80 83 00 34 */	lwz r4, 0x34(r3)
/* 803416A4 0030AC64  3C 00 FD 30 */	lis r0, 0xfd30
/* 803416A8 0030AC68  7C 04 00 00 */	cmpw r4, r0
/* 803416AC 0030AC6C  41 81 00 10 */	bgt .L_803416BC
/* 803416B0 0030AC70  38 00 00 04 */	li r0, 4
/* 803416B4 0030AC74  90 03 00 30 */	stw r0, 0x30(r3)
/* 803416B8 0030AC78  4E 80 00 20 */	blr
.L_803416BC:
/* 803416BC 0030AC7C  80 03 00 48 */	lwz r0, 0x48(r3)
/* 803416C0 0030AC80  7C 04 02 14 */	add r0, r4, r0
/* 803416C4 0030AC84  90 03 00 34 */	stw r0, 0x34(r3)
/* 803416C8 0030AC88  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0


.global lbl_80518B58
lbl_80518B58:
	.4byte 0x40000000
	.4byte 0
	.4byte 0x4C960000
	.4byte 0x447A0000
	.4byte 0x4C95FF6A
	.4byte 0
	.4byte 0x43300000
	.4byte 0x80000000

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8054FA90
lbl_8054FA90:
	.4byte 0
	.4byte 0x3C000219
	.4byte 0x3C800000
	.4byte 0x3CC0010C
	.4byte 0x3D000000
	.4byte 0x3D200086
	.4byte 0x3D400000
	.4byte 0x3D600086
	.4byte 0x3D800000
	.4byte 0x3D900043
	.4byte 0x3DA00000
	.4byte 0x3DB00043
	.4byte 0x3DC00000
	.4byte 0x3DD00043
	.4byte 0x3DE00000
	.4byte 0x3DF00043
	.float 0.125
	.4byte 0x3E080022
	.4byte 0x3E100000
	.4byte 0x3E180022
	.4byte 0x3E200000
	.4byte 0x3E280022
	.4byte 0x3E300000
	.4byte 0x3E380022
	.4byte 0x3E400000
	.4byte 0x3E480022
	.4byte 0x3E500000
	.4byte 0x3E580022
	.4byte 0x3E600000
	.4byte 0x3E680022
	.4byte 0x3E700000
	.4byte 0x3E780022
	.float 0.25
	.4byte 0x3E840011
	.4byte 0x3E880000
	.4byte 0x3E8C0011
	.4byte 0x3E900000
	.4byte 0x3E940011
	.4byte 0x3E980000
	.4byte 0x3E9C0011
	.4byte 0x3EA00000
	.4byte 0x3EA40011
	.4byte 0x3EA80000
	.4byte 0x3EAC0011
	.4byte 0x3EB00000
	.4byte 0x3EB40011
	.4byte 0x3EB80000
	.4byte 0x3EBC0011
	.4byte 0x3EC00000
	.4byte 0x3EC40011
	.4byte 0x3EC80000
	.4byte 0x3ECC0011
	.4byte 0x3ED00000
	.4byte 0x3ED40011
	.4byte 0x3ED80000
	.4byte 0x3EDC0011
	.4byte 0x3EE00000
	.4byte 0x3EE40011
	.4byte 0x3EE80000
	.4byte 0x3EEC0011
	.4byte 0x3EF00000
	.4byte 0x3EF40011
	.4byte 0x3EF80000
	.4byte 0x3EFC0011
	.float 0.5
	.4byte 0x3F020008
	.4byte 0x3F040000
	.4byte 0x3F060008
	.4byte 0x3F080000
	.4byte 0x3F0A0008
	.4byte 0x3F0C0000
	.4byte 0x3F0E0008
	.4byte 0x3F100000
	.4byte 0x3F120008
	.4byte 0x3F140000
	.4byte 0x3F160008
	.4byte 0x3F180000
	.4byte 0x3F1A0008
	.4byte 0x3F1C0000
	.4byte 0x3F1E0008
	.4byte 0x3F200000
	.4byte 0x3F220008
	.4byte 0x3F240000
	.4byte 0x3F260008
	.4byte 0x3F280000
	.4byte 0x3F2A0008
	.4byte 0x3F2C0000
	.4byte 0x3F2E0008
	.4byte 0x3F300000
	.4byte 0x3F320008
	.4byte 0x3F340000
	.4byte 0x3F360008
	.4byte 0x3F380000
	.4byte 0x3F3A0008
	.4byte 0x3F3C0000
	.4byte 0x3F3E0008
	.float 0.75
	.4byte 0x3F420008
	.4byte 0x3F440000
	.4byte 0x3F460008
	.4byte 0x3F480000
	.4byte 0x3F4A0008
	.4byte 0x3F4C0000
	.4byte 0x3F4E0008
	.4byte 0x3F500000
	.4byte 0x3F520008
	.4byte 0x3F540000
	.4byte 0x3F560008
	.4byte 0x3F580000
	.4byte 0x3F5A0008
	.4byte 0x3F5C0000
	.4byte 0x3F5E0008
	.4byte 0x3F600000
	.4byte 0x3F620008
	.4byte 0x3F640000
	.4byte 0x3F660008
	.4byte 0x3F680000
	.4byte 0x3F6A0008
	.4byte 0x3F6C0000
	.4byte 0x3F6E0008
	.4byte 0x3F700000
	.4byte 0x3F720008
	.4byte 0x3F740000
	.4byte 0x3F760008
	.4byte 0x3F780000
	.4byte 0x3F7A0008
	.4byte 0x3F7C0000
	.4byte 0x3F7E0008