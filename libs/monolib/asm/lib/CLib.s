.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900



.fn __dt__4CLibFv, global
/* 80459390 00422950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80459394 00422954  7C 08 02 A6 */	mflr r0
/* 80459398 00422958  2C 03 00 00 */	cmpwi r3, 0
/* 8045939C 0042295C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804593A0 00422960  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804593A4 00422964  7C 9F 23 78 */	mr r31, r4
/* 804593A8 00422968  93 C1 00 08 */	stw r30, 8(r1)
/* 804593AC 0042296C  7C 7E 1B 78 */	mr r30, r3
/* 804593B0 00422970  41 82 00 24 */	beq .L_804593D4
/* 804593B4 00422974  38 00 00 00 */	li r0, 0
/* 804593B8 00422978  90 0D BE 28 */	stw r0, lbl_80667FA8@sda21(r13)
/* 804593BC 0042297C  38 80 00 00 */	li r4, 0
/* 804593C0 00422980  4B FD E7 09 */	bl __dt__11CWorkThreadFv
/* 804593C4 00422984  2C 1F 00 00 */	cmpwi r31, 0
/* 804593C8 00422988  40 81 00 0C */	ble .L_804593D4
/* 804593CC 0042298C  7F C3 F3 78 */	mr r3, r30
/* 804593D0 00422990  4B FD B8 5D */	bl __dl__FPv
.L_804593D4:
/* 804593D4 00422994  7F C3 F3 78 */	mr r3, r30
/* 804593D8 00422998  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804593DC 0042299C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804593E0 004229A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804593E4 004229A4  7C 08 03 A6 */	mtlr r0
/* 804593E8 004229A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804593EC 004229AC  4E 80 00 20 */	blr 
.endfn __dt__4CLibFv

.fn getInstance__4CLibFv, global
/* 804593F0 004229B0  80 6D BE 28 */	lwz r3, lbl_80667FA8@sda21(r13)
/* 804593F4 004229B4  4E 80 00 20 */	blr 
.endfn getInstance__4CLibFv

.fn func_804593F8, global
/* 804593F8 004229B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804593FC 004229BC  7C 08 02 A6 */	mflr r0
/* 80459400 004229C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80459404 004229C4  80 CD BE 28 */	lwz r6, lbl_80667FA8@sda21(r13)
/* 80459408 004229C8  80 06 00 7C */	lwz r0, 0x7c(r6)
/* 8045940C 004229CC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80459410 004229D0  41 82 00 0C */	beq .L_8045941C
/* 80459414 004229D4  38 00 00 01 */	li r0, 1
/* 80459418 004229D8  48 00 00 5C */	b .L_80459474
.L_8045941C:
/* 8045941C 004229DC  80 06 01 AC */	lwz r0, 0x1ac(r6)
/* 80459420 004229E0  38 E0 00 00 */	li r7, 0
/* 80459424 004229E4  7C 09 03 A6 */	mtctr r0
/* 80459428 004229E8  28 00 00 00 */	cmplwi r0, 0
/* 8045942C 004229EC  40 81 00 3C */	ble .L_80459468
.L_80459430:
/* 80459430 004229F0  80 06 01 A8 */	lwz r0, 0x1a8(r6)
/* 80459434 004229F4  80 66 01 B0 */	lwz r3, 0x1b0(r6)
/* 80459438 004229F8  7C 80 3A 14 */	add r4, r0, r7
/* 8045943C 004229FC  80 A6 01 A4 */	lwz r5, 0x1a4(r6)
/* 80459440 00422A00  7C 04 1B 96 */	divwu r0, r4, r3
/* 80459444 00422A04  7C 00 19 D6 */	mullw r0, r0, r3
/* 80459448 00422A08  7C 00 20 50 */	subf r0, r0, r4
/* 8045944C 00422A0C  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80459450 00422A10  7C 05 00 2E */	lwzx r0, r5, r0
/* 80459454 00422A14  28 00 00 02 */	cmplwi r0, 2
/* 80459458 00422A18  40 82 00 08 */	bne .L_80459460
/* 8045945C 00422A1C  48 00 00 10 */	b .L_8045946C
.L_80459460:
/* 80459460 00422A20  38 E7 00 01 */	addi r7, r7, 1
/* 80459464 00422A24  42 00 FF CC */	bdnz .L_80459430
.L_80459468:
/* 80459468 00422A28  38 E0 FF FF */	li r7, -1
.L_8045946C:
/* 8045946C 00422A2C  54 E0 0F FE */	srwi r0, r7, 0x1f
/* 80459470 00422A30  68 00 00 01 */	xori r0, r0, 1
.L_80459474:
/* 80459474 00422A34  2C 00 00 00 */	cmpwi r0, 0
/* 80459478 00422A38  38 00 00 00 */	li r0, 0
/* 8045947C 00422A3C  40 82 00 2C */	bne .L_804594A8
/* 80459480 00422A40  80 86 00 48 */	lwz r4, 0x48(r6)
/* 80459484 00422A44  38 60 00 01 */	li r3, 1
/* 80459488 00422A48  2C 04 00 02 */	cmpwi r4, 2
/* 8045948C 00422A4C  41 82 00 10 */	beq .L_8045949C
/* 80459490 00422A50  2C 04 00 03 */	cmpwi r4, 3
/* 80459494 00422A54  41 82 00 08 */	beq .L_8045949C
/* 80459498 00422A58  38 60 00 00 */	li r3, 0
.L_8045949C:
/* 8045949C 00422A5C  2C 03 00 00 */	cmpwi r3, 0
/* 804594A0 00422A60  41 82 00 08 */	beq .L_804594A8
/* 804594A4 00422A64  38 00 00 01 */	li r0, 1
.L_804594A8:
/* 804594A8 00422A68  2C 00 00 00 */	cmpwi r0, 0
/* 804594AC 00422A6C  40 82 00 0C */	bne .L_804594B8
/* 804594B0 00422A70  38 60 00 00 */	li r3, 0
/* 804594B4 00422A74  48 00 00 BC */	b .L_80459570
.L_804594B8:
/* 804594B8 00422A78  48 00 3F 9D */	bl func_8045D454
/* 804594BC 00422A7C  2C 03 00 00 */	cmpwi r3, 0
/* 804594C0 00422A80  40 82 00 0C */	bne .L_804594CC
/* 804594C4 00422A84  38 60 00 00 */	li r3, 0
/* 804594C8 00422A88  48 00 00 A8 */	b .L_80459570
.L_804594CC:
/* 804594CC 00422A8C  48 00 42 C9 */	bl func_8045D794
/* 804594D0 00422A90  2C 03 00 00 */	cmpwi r3, 0
/* 804594D4 00422A94  40 82 00 0C */	bne .L_804594E0
/* 804594D8 00422A98  38 60 00 00 */	li r3, 0
/* 804594DC 00422A9C  48 00 00 94 */	b .L_80459570
.L_804594E0:
/* 804594E0 00422AA0  48 00 3D 1D */	bl func_8045D1FC
/* 804594E4 00422AA4  2C 03 00 00 */	cmpwi r3, 0
/* 804594E8 00422AA8  40 82 00 0C */	bne .L_804594F4
/* 804594EC 00422AAC  38 60 00 00 */	li r3, 0
/* 804594F0 00422AB0  48 00 00 80 */	b .L_80459570
.L_804594F4:
/* 804594F4 00422AB4  48 00 3D 11 */	bl func_8045D204
/* 804594F8 00422AB8  2C 03 00 00 */	cmpwi r3, 0
/* 804594FC 00422ABC  40 82 00 0C */	bne .L_80459508
/* 80459500 00422AC0  38 60 00 00 */	li r3, 0
/* 80459504 00422AC4  48 00 00 6C */	b .L_80459570
.L_80459508:
/* 80459508 00422AC8  48 00 5B C5 */	bl func_8045F0CC
/* 8045950C 00422ACC  2C 03 00 00 */	cmpwi r3, 0
/* 80459510 00422AD0  40 82 00 0C */	bne .L_8045951C
/* 80459514 00422AD4  38 60 00 00 */	li r3, 0
/* 80459518 00422AD8  48 00 00 58 */	b .L_80459570
.L_8045951C:
/* 8045951C 00422ADC  48 00 5B B9 */	bl func_8045F0D4
/* 80459520 00422AE0  2C 03 00 00 */	cmpwi r3, 0
/* 80459524 00422AE4  40 82 00 0C */	bne .L_80459530
/* 80459528 00422AE8  38 60 00 00 */	li r3, 0
/* 8045952C 00422AEC  48 00 00 44 */	b .L_80459570
.L_80459530:
/* 80459530 00422AF0  48 00 6C 5D */	bl func_8046018C
/* 80459534 00422AF4  2C 03 00 00 */	cmpwi r3, 0
/* 80459538 00422AF8  40 82 00 0C */	bne .L_80459544
/* 8045953C 00422AFC  38 60 00 00 */	li r3, 0
/* 80459540 00422B00  48 00 00 30 */	b .L_80459570
.L_80459544:
/* 80459544 00422B04  48 00 6C 51 */	bl func_80460194
/* 80459548 00422B08  2C 03 00 00 */	cmpwi r3, 0
/* 8045954C 00422B0C  40 82 00 0C */	bne .L_80459558
/* 80459550 00422B10  38 60 00 00 */	li r3, 0
/* 80459554 00422B14  48 00 00 1C */	b .L_80459570
.L_80459558:
/* 80459558 00422B18  48 00 65 A9 */	bl func_8045FB00
/* 8045955C 00422B1C  2C 03 00 00 */	cmpwi r3, 0
/* 80459560 00422B20  40 82 00 0C */	bne .L_8045956C
/* 80459564 00422B24  38 60 00 00 */	li r3, 0
/* 80459568 00422B28  48 00 00 08 */	b .L_80459570
.L_8045956C:
/* 8045956C 00422B2C  48 00 65 9D */	bl func_8045FB08
.L_80459570:
/* 80459570 00422B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80459574 00422B34  7C 08 03 A6 */	mtlr r0
/* 80459578 00422B38  38 21 00 10 */	addi r1, r1, 0x10
/* 8045957C 00422B3C  4E 80 00 20 */	blr 
.endfn func_804593F8

.fn CLib_wkStartup, global
/* 80459580 00422B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80459584 00422B44  7C 08 02 A6 */	mflr r0
/* 80459588 00422B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045958C 00422B4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80459590 00422B50  93 C1 00 08 */	stw r30, 8(r1)
/* 80459594 00422B54  7C 7E 1B 78 */	mr r30, r3
/* 80459598 00422B58  4B FF 3A D1 */	bl func_8044D068__7CDeviceFv
/* 8045959C 00422B5C  2C 03 00 00 */	cmpwi r3, 0
/* 804595A0 00422B60  41 82 01 38 */	beq .L_804596D8
/* 804595A4 00422B64  3F E0 80 52 */	lis r31, lbl_805268A8@ha
/* 804595A8 00422B68  3B FF 68 A8 */	addi r31, r31, lbl_805268A8@l
/* 804595AC 00422B6C  4B FD E0 09 */	bl getHeapIndex__16WorkThreadSystemFv
/* 804595B0 00422B70  7C 64 1B 78 */	mr r4, r3
/* 804595B4 00422B74  38 60 02 68 */	li r3, 0x268
/* 804595B8 00422B78  4B FD B4 A5 */	bl heap_malloc__3mtlFUli
/* 804595BC 00422B7C  2C 03 00 00 */	cmpwi r3, 0
/* 804595C0 00422B80  41 82 00 10 */	beq .L_804595D0
/* 804595C4 00422B84  7F E4 FB 78 */	mr r4, r31
/* 804595C8 00422B88  7F C5 F3 78 */	mr r5, r30
/* 804595CC 00422B8C  48 00 3D 89 */	bl __ct__CLibHbm
.L_804595D0:
/* 804595D0 00422B90  7F C4 F3 78 */	mr r4, r30
/* 804595D4 00422B94  38 A0 00 00 */	li r5, 0
/* 804595D8 00422B98  4B FD F6 01 */	bl func_80438BD8__11CWorkThreadFP11CWorkThreadUl
/* 804595DC 00422B9C  3C 60 80 52 */	lis r3, lbl_805268A8@ha
/* 804595E0 00422BA0  38 63 68 A8 */	addi r3, r3, lbl_805268A8@l
/* 804595E4 00422BA4  3B E3 00 08 */	addi r31, r3, 8
/* 804595E8 00422BA8  4B FD DF CD */	bl getHeapIndex__16WorkThreadSystemFv
/* 804595EC 00422BAC  7C 64 1B 78 */	mr r4, r3
/* 804595F0 00422BB0  38 60 01 C8 */	li r3, 0x1c8
/* 804595F4 00422BB4  4B FD B4 69 */	bl heap_malloc__3mtlFUli
/* 804595F8 00422BB8  2C 03 00 00 */	cmpwi r3, 0
/* 804595FC 00422BBC  41 82 00 10 */	beq .L_8045960C
/* 80459600 00422BC0  7F E4 FB 78 */	mr r4, r31
/* 80459604 00422BC4  7F C5 F3 78 */	mr r5, r30
/* 80459608 00422BC8  48 00 3B 49 */	bl __ct__CLibG3d
.L_8045960C:
/* 8045960C 00422BCC  7F C4 F3 78 */	mr r4, r30
/* 80459610 00422BD0  38 A0 00 00 */	li r5, 0
/* 80459614 00422BD4  4B FD F5 C5 */	bl func_80438BD8__11CWorkThreadFP11CWorkThreadUl
/* 80459618 00422BD8  3C 60 80 52 */	lis r3, lbl_805268A8@ha
/* 8045961C 00422BDC  38 63 68 A8 */	addi r3, r3, lbl_805268A8@l
/* 80459620 00422BE0  3B E3 00 10 */	addi r31, r3, 0x10
/* 80459624 00422BE4  4B FD DF 91 */	bl getHeapIndex__16WorkThreadSystemFv
/* 80459628 00422BE8  7C 64 1B 78 */	mr r4, r3
/* 8045962C 00422BEC  38 60 02 C0 */	li r3, 0x2c0
/* 80459630 00422BF0  4B FD B4 2D */	bl heap_malloc__3mtlFUli
/* 80459634 00422BF4  2C 03 00 00 */	cmpwi r3, 0
/* 80459638 00422BF8  41 82 00 10 */	beq .L_80459648
/* 8045963C 00422BFC  7F E4 FB 78 */	mr r4, r31
/* 80459640 00422C00  7F C5 F3 78 */	mr r5, r30
/* 80459644 00422C04  48 00 59 41 */	bl __ct__CLibLayout
.L_80459648:
/* 80459648 00422C08  7F C4 F3 78 */	mr r4, r30
/* 8045964C 00422C0C  38 A0 00 00 */	li r5, 0
/* 80459650 00422C10  4B FD F5 89 */	bl func_80438BD8__11CWorkThreadFP11CWorkThreadUl
/* 80459654 00422C14  3C 60 80 52 */	lis r3, lbl_805268A8@ha
/* 80459658 00422C18  38 63 68 A8 */	addi r3, r3, lbl_805268A8@l
/* 8045965C 00422C1C  3B E3 00 1B */	addi r31, r3, 0x1b
/* 80459660 00422C20  4B FD DF 55 */	bl getHeapIndex__16WorkThreadSystemFv
/* 80459664 00422C24  7C 64 1B 78 */	mr r4, r3
/* 80459668 00422C28  38 60 01 C8 */	li r3, 0x1c8
/* 8045966C 00422C2C  4B FD B3 F1 */	bl heap_malloc__3mtlFUli
/* 80459670 00422C30  2C 03 00 00 */	cmpwi r3, 0
/* 80459674 00422C34  41 82 00 10 */	beq .L_80459684
/* 80459678 00422C38  7F E4 FB 78 */	mr r4, r31
/* 8045967C 00422C3C  7F C5 F3 78 */	mr r5, r30
/* 80459680 00422C40  48 00 6A 61 */	bl __ct__CLibVM
.L_80459684:
/* 80459684 00422C44  7F C4 F3 78 */	mr r4, r30
/* 80459688 00422C48  38 A0 00 00 */	li r5, 0
/* 8045968C 00422C4C  4B FD F5 4D */	bl func_80438BD8__11CWorkThreadFP11CWorkThreadUl
/* 80459690 00422C50  3C 60 80 52 */	lis r3, lbl_805268A8@ha
/* 80459694 00422C54  38 63 68 A8 */	addi r3, r3, lbl_805268A8@l
/* 80459698 00422C58  3B E3 00 22 */	addi r31, r3, 0x22
/* 8045969C 00422C5C  4B FD DF 19 */	bl getHeapIndex__16WorkThreadSystemFv
/* 804596A0 00422C60  7C 64 1B 78 */	mr r4, r3
/* 804596A4 00422C64  38 60 01 D8 */	li r3, 0x1d8
/* 804596A8 00422C68  4B FD B3 B5 */	bl heap_malloc__3mtlFUli
/* 804596AC 00422C6C  2C 03 00 00 */	cmpwi r3, 0
/* 804596B0 00422C70  41 82 00 10 */	beq .L_804596C0
/* 804596B4 00422C74  7F E4 FB 78 */	mr r4, r31
/* 804596B8 00422C78  7F C5 F3 78 */	mr r5, r30
/* 804596BC 00422C7C  48 00 62 75 */	bl __ct__CLibStaticData
.L_804596C0:
/* 804596C0 00422C80  7F C4 F3 78 */	mr r4, r30
/* 804596C4 00422C84  38 A0 00 00 */	li r5, 0
/* 804596C8 00422C88  4B FD F5 11 */	bl func_80438BD8__11CWorkThreadFP11CWorkThreadUl
/* 804596CC 00422C8C  7F C3 F3 78 */	mr r3, r30
/* 804596D0 00422C90  4B FD F3 29 */	bl wkStartup__11CWorkThreadFv
/* 804596D4 00422C94  48 00 00 08 */	b .L_804596DC
.L_804596D8:
/* 804596D8 00422C98  38 60 00 00 */	li r3, 0
.L_804596DC:
/* 804596DC 00422C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804596E0 00422CA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804596E4 00422CA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804596E8 00422CA8  7C 08 03 A6 */	mtlr r0
/* 804596EC 00422CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 804596F0 00422CB0  4E 80 00 20 */	blr 
.endfn CLib_wkStartup

.fn CLib_wkShutdown, global
/* 804596F4 00422CB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804596F8 00422CB8  7C 08 02 A6 */	mflr r0
/* 804596FC 00422CBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80459700 00422CC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80459704 00422CC4  3B E0 00 00 */	li r31, 0
/* 80459708 00422CC8  93 C1 00 08 */	stw r30, 8(r1)
/* 8045970C 00422CCC  7C 7E 1B 78 */	mr r30, r3
/* 80459710 00422CD0  80 83 00 60 */	lwz r4, 0x60(r3)
/* 80459714 00422CD4  80 04 00 00 */	lwz r0, 0(r4)
/* 80459718 00422CD8  7C 00 20 40 */	cmplw r0, r4
/* 8045971C 00422CDC  40 82 00 14 */	bne .L_80459730
/* 80459720 00422CE0  4B FE AD B5 */	bl getInstance__11CWorkSystemFv
/* 80459724 00422CE4  2C 03 00 00 */	cmpwi r3, 0
/* 80459728 00422CE8  40 82 00 08 */	bne .L_80459730
/* 8045972C 00422CEC  3B E0 00 01 */	li r31, 1
.L_80459730:
/* 80459730 00422CF0  3C 80 80 52 */	lis r4, lbl_805268A8@ha
/* 80459734 00422CF4  7F C3 F3 78 */	mr r3, r30
/* 80459738 00422CF8  38 84 68 A8 */	addi r4, r4, lbl_805268A8@l
/* 8045973C 00422CFC  7F E5 FB 78 */	mr r5, r31
/* 80459740 00422D00  38 C4 00 31 */	addi r6, r4, 0x31
/* 80459744 00422D04  38 80 75 30 */	li r4, 0x7530
/* 80459748 00422D08  4B FD EC 51 */	bl func_80438398
/* 8045974C 00422D0C  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80459750 00422D10  80 03 00 00 */	lwz r0, 0(r3)
/* 80459754 00422D14  7C 00 18 40 */	cmplw r0, r3
/* 80459758 00422D18  40 82 00 1C */	bne .L_80459774
/* 8045975C 00422D1C  4B FE AD 79 */	bl getInstance__11CWorkSystemFv
/* 80459760 00422D20  2C 03 00 00 */	cmpwi r3, 0
/* 80459764 00422D24  40 82 00 10 */	bne .L_80459774
/* 80459768 00422D28  7F C3 F3 78 */	mr r3, r30
/* 8045976C 00422D2C  4B FD F2 B9 */	bl wkShutdown__11CWorkThreadFv
/* 80459770 00422D30  48 00 00 08 */	b .L_80459778
.L_80459774:
/* 80459774 00422D34  38 60 00 00 */	li r3, 0
.L_80459778:
/* 80459778 00422D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045977C 00422D3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80459780 00422D40  83 C1 00 08 */	lwz r30, 8(r1)
/* 80459784 00422D44  7C 08 03 A6 */	mtlr r0
/* 80459788 00422D48  38 21 00 10 */	addi r1, r1, 0x10
/* 8045978C 00422D4C  4E 80 00 20 */	blr 
.endfn CLib_wkShutdown

.fn CLib_create, global
/* 80459790 00422D50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80459794 00422D54  7C 08 02 A6 */	mflr r0
/* 80459798 00422D58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045979C 00422D5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804597A0 00422D60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804597A4 00422D64  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804597A8 00422D68  4B FE A0 15 */	bl func_804437BC__Fv
/* 804597AC 00422D6C  3C 80 80 52 */	lis r4, lbl_805268A8@ha
/* 804597B0 00422D70  7C 7E 1B 78 */	mr r30, r3
/* 804597B4 00422D74  38 84 68 A8 */	addi r4, r4, lbl_805268A8@l
/* 804597B8 00422D78  3B E4 00 4A */	addi r31, r4, 0x4a
/* 804597BC 00422D7C  4B FD DD F9 */	bl getHeapIndex__16WorkThreadSystemFv
/* 804597C0 00422D80  7C 64 1B 78 */	mr r4, r3
/* 804597C4 00422D84  38 60 01 C8 */	li r3, 0x1c8
/* 804597C8 00422D88  4B FD B2 95 */	bl heap_malloc__3mtlFUli
/* 804597CC 00422D8C  2C 03 00 00 */	cmpwi r3, 0
/* 804597D0 00422D90  7C 7D 1B 78 */	mr r29, r3
/* 804597D4 00422D94  41 82 00 2C */	beq .L_80459800
/* 804597D8 00422D98  7F E4 FB 78 */	mr r4, r31
/* 804597DC 00422D9C  7F C5 F3 78 */	mr r5, r30
/* 804597E0 00422DA0  38 C0 00 08 */	li r6, 8
/* 804597E4 00422DA4  4B FD DD D9 */	bl __ct__11CWorkThreadFPCcP11CWorkThreadi
/* 804597E8 00422DA8  3C 60 80 57 */	lis r3, __vt__4CLib@ha
/* 804597EC 00422DAC  38 00 00 0B */	li r0, 0xb
/* 804597F0 00422DB0  38 63 05 E8 */	addi r3, r3, __vt__4CLib@l
/* 804597F4 00422DB4  90 7D 00 00 */	stw r3, 0(r29)
/* 804597F8 00422DB8  93 AD BE 28 */	stw r29, lbl_80667FA8@sda21(r13)
/* 804597FC 00422DBC  90 1D 00 50 */	stw r0, 0x50(r29)
.L_80459800:
/* 80459800 00422DC0  7F A3 EB 78 */	mr r3, r29
/* 80459804 00422DC4  7F C4 F3 78 */	mr r4, r30
/* 80459808 00422DC8  38 A0 00 00 */	li r5, 0
/* 8045980C 00422DCC  4B FD F3 CD */	bl func_80438BD8__11CWorkThreadFP11CWorkThreadUl
/* 80459810 00422DD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80459814 00422DD4  7F A3 EB 78 */	mr r3, r29
/* 80459818 00422DD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8045981C 00422DDC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80459820 00422DE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80459824 00422DE4  7C 08 03 A6 */	mtlr r0
/* 80459828 00422DE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8045982C 00422DEC  4E 80 00 20 */	blr
.endfn CLib_create

.fn func_80459830, global
/* 80459830 00422DF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80459834 00422DF4  7C 08 02 A6 */	mflr r0
/* 80459838 00422DF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045983C 00422DFC  4B EF 1D B5 */	bl MIXUpdateSettings
/* 80459840 00422E00  81 8D BE 34 */	lwz r12, lbl_80667FB4@sda21(r13)
/* 80459844 00422E04  2C 0C 00 00 */	cmpwi r12, 0
/* 80459848 00422E08  41 82 00 0C */	beq .L_80459854
/* 8045984C 00422E0C  7D 89 03 A6 */	mtctr r12
/* 80459850 00422E10  4E 80 04 21 */	bctrl 
.L_80459854:
/* 80459854 00422E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80459858 00422E18  7C 08 03 A6 */	mtlr r0
/* 8045985C 00422E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80459860 00422E20  4E 80 00 20 */	blr 
.endfn func_80459830


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__4CLib, global
	.4byte __RTTI__4CLib
	.4byte 0
	.4byte __dt__4CLibFv
	.4byte WorkEvent1__10IWorkEventFv
	.4byte OnFileEvent__10IWorkEventFP10CEventFile
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
	.4byte wkUpdate__11CWorkThreadFv
	.4byte WorkThreadEvent2__11CWorkThreadFv
	.4byte WorkThreadEvent3__11CWorkThreadFv
	.4byte CLib_wkStartup
	.4byte CLib_wkShutdown
	.4byte WorkThreadEvent6__11CWorkThreadFv
.endobj __vt__4CLib

.obj CLib_hierarchy, global
	.4byte __RTTI__10IWorkEvent
	.4byte 0
	.4byte __RTTI__11CWorkThread
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CLib_hierarchy


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__4CLib, global
	.4byte CLib_typestr
	.4byte CLib_hierarchy
.endobj __RTTI__4CLib


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj CLib_typestr, global
	.asciz "CLib"
	.balign 4
.endobj CLib_typestr

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80667FA8, global
	.skip 0x8
.endobj lbl_80667FA8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001D478", local
.hidden "@etb_8001D478"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001D478"

.obj "@etb_8001D480", local
.hidden "@etb_8001D480"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001D480"

.obj "@etb_8001D488", local
.hidden "@etb_8001D488"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001D488"

.obj "@etb_8001D490", local
.hidden "@etb_8001D490"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001D490"

.obj "@etb_8001D498", local
.hidden "@etb_8001D498"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001D498"

.obj "@etb_8001D4A0", local
.hidden "@etb_8001D4A0"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001D4A0"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4


.obj "@eti_800350CC", local
.hidden "@eti_800350CC"
	.4byte __dt__4CLibFv
	.4byte 0x00000060
	.4byte "@etb_8001D478"
.endobj "@eti_800350CC"

.obj "@eti_800350D8", local
.hidden "@eti_800350D8"
	.4byte func_804593F8
	.4byte 0x00000188
	.4byte "@etb_8001D480"
.endobj "@eti_800350D8"

.obj "@eti_800350E4", local
.hidden "@eti_800350E4"
	.4byte CLib_wkStartup
	.4byte 0x00000174
	.4byte "@etb_8001D488"
.endobj "@eti_800350E4"

.obj "@eti_800350F0", local
.hidden "@eti_800350F0"
	.4byte CLib_wkShutdown
	.4byte 0x0000009C
	.4byte "@etb_8001D490"
.endobj "@eti_800350F0"

.obj "@eti_800350FC", local
.hidden "@eti_800350FC"
	.4byte CLib_create
	.4byte 0x000000A0
	.4byte "@etb_8001D498"
.endobj "@eti_800350FC"

.obj "@eti_80035108", local
.hidden "@eti_80035108"
	.4byte func_80459830
	.4byte 0x00000034
	.4byte "@etb_8001D4A0"
.endobj "@eti_80035108"
