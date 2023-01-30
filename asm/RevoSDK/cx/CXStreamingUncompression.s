.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn CXInitUncompContextLH, global
/* 80308530 002D1AF0  38 E0 FF FF */	li r7, -1
/* 80308534 002D1AF4  38 00 00 00 */	li r0, 0
/* 80308538 002D1AF8  38 C3 00 0E */	addi r6, r3, 0xe
/* 8030853C 002D1AFC  38 A0 00 08 */	li r5, 8
/* 80308540 002D1B00  90 83 00 00 */	stw r4, 0(r3)
/* 80308544 002D1B04  90 E3 00 04 */	stw r7, 4(r3)
/* 80308548 002D1B08  90 C3 08 8C */	stw r6, 0x88c(r3)
/* 8030854C 002D1B0C  90 E3 08 90 */	stw r7, 0x890(r3)
/* 80308550 002D1B10  90 E3 08 94 */	stw r7, 0x894(r3)
/* 80308554 002D1B14  98 A3 08 A7 */	stb r5, 0x8a7(r3)
/* 80308558 002D1B18  B0 03 08 A4 */	sth r0, 0x8a4(r3)
/* 8030855C 002D1B1C  90 03 08 9C */	stw r0, 0x89c(r3)
/* 80308560 002D1B20  90 03 08 A0 */	stw r0, 0x8a0(r3)
/* 80308564 002D1B24  98 E3 08 A6 */	stb r7, 0x8a6(r3)
/* 80308568 002D1B28  90 03 00 08 */	stw r0, 8(r3)
/* 8030856C 002D1B2C  4E 80 00 20 */	blr 
.endfn CXInitUncompContextLH

.balign 16, 0
.global CXReadUncompLH
CXReadUncompLH:
/* 80308570 002D1B30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80308574 002D1B34  7C 08 02 A6 */	mflr r0
/* 80308578 002D1B38  90 01 00 34 */	stw r0, 0x34(r1)
/* 8030857C 002D1B3C  39 61 00 30 */	addi r11, r1, 0x30
/* 80308580 002D1B40  4B FB 1B C5 */	bl _savegpr_23
/* 80308584 002D1B44  7C B9 2B 78 */	mr r25, r5
/* 80308588 002D1B48  83 63 08 9C */	lwz r27, 0x89c(r3)
/* 8030858C 002D1B4C  83 43 08 A0 */	lwz r26, 0x8a0(r3)
/* 80308590 002D1B50  7C 78 1B 78 */	mr r24, r3
/* 80308594 002D1B54  7C 9D 23 78 */	mr r29, r4
/* 80308598 002D1B58  7F 3C CB 78 */	mr r28, r25
/* 8030859C 002D1B5C  3B C0 FF FF */	li r30, -1
/* 803085A0 002D1B60  3B E0 00 00 */	li r31, 0
/* 803085A4 002D1B64  3A E0 00 04 */	li r23, 4
/* 803085A8 002D1B68  48 00 01 30 */	b .L_803086D8
.L_803085AC:
/* 803085AC 002D1B6C  20 1A 00 27 */	subfic r0, r26, 0x27
/* 803085B0 002D1B70  38 60 00 00 */	li r3, 0
/* 803085B4 002D1B74  54 00 E8 FE */	srwi r0, r0, 3
/* 803085B8 002D1B78  7C 09 03 A6 */	mtctr r0
/* 803085BC 002D1B7C  28 1A 00 20 */	cmplwi r26, 0x20
/* 803085C0 002D1B80  40 80 00 44 */	bge .L_80308604
/* 803085C4 002D1B84  60 00 00 00 */	nop 
.L_803085C8:
/* 803085C8 002D1B88  2C 1C 00 00 */	cmpwi r28, 0
/* 803085CC 002D1B8C  40 82 00 10 */	bne .L_803085DC
/* 803085D0 002D1B90  38 A0 FF FF */	li r5, -1
/* 803085D4 002D1B94  38 00 FF FF */	li r0, -1
/* 803085D8 002D1B98  48 00 00 44 */	b .L_8030861C
.L_803085DC:
/* 803085DC 002D1B9C  28 1A 00 18 */	cmplwi r26, 0x18
/* 803085E0 002D1BA0  40 81 00 08 */	ble .L_803085E8
/* 803085E4 002D1BA4  57 63 46 3E */	srwi r3, r27, 0x18
.L_803085E8:
/* 803085E8 002D1BA8  88 1D 00 00 */	lbz r0, 0(r29)
/* 803085EC 002D1BAC  57 7B 40 2E */	slwi r27, r27, 8
/* 803085F0 002D1BB0  3B 5A 00 08 */	addi r26, r26, 8
/* 803085F4 002D1BB4  3B BD 00 01 */	addi r29, r29, 1
/* 803085F8 002D1BB8  7F 7B 02 14 */	add r27, r27, r0
/* 803085FC 002D1BBC  3B 9C FF FF */	addi r28, r28, -1
/* 80308600 002D1BC0  42 00 FF C8 */	bdnz .L_803085C8
.L_80308604:
/* 80308604 002D1BC4  7F 64 DB 78 */	mr r4, r27
/* 80308608 002D1BC8  38 BA FF E0 */	addi r5, r26, -32
/* 8030860C 002D1BCC  4B FB 1F E5 */	bl __shr2i
/* 80308610 002D1BD0  7C 85 F0 38 */	and r5, r4, r30
/* 80308614 002D1BD4  7C 60 F0 38 */	and r0, r3, r30
/* 80308618 002D1BD8  3B 5A FF E0 */	addi r26, r26, -32
.L_8030861C:
/* 8030861C 002D1BDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80308620 002D1BE0  6F E4 80 00 */	xoris r4, r31, 0x8000
/* 80308624 002D1BE4  7C 7F 28 10 */	subfc r3, r31, r5
/* 80308628 002D1BE8  7C 84 01 10 */	subfe r4, r4, r0
/* 8030862C 002D1BEC  7C 80 01 10 */	subfe r4, r0, r0
/* 80308630 002D1BF0  7C 84 00 D1 */	neg. r4, r4
/* 80308634 002D1BF4  40 82 06 F8 */	bne .L_80308D2C
/* 80308638 002D1BF8  88 78 08 A7 */	lbz r3, 0x8a7(r24)
/* 8030863C 002D1BFC  38 03 FF FC */	addi r0, r3, -4
/* 80308640 002D1C00  98 18 08 A7 */	stb r0, 0x8a7(r24)
/* 80308644 002D1C04  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80308648 002D1C08  28 00 00 04 */	cmplwi r0, 4
/* 8030864C 002D1C0C  40 82 00 4C */	bne .L_80308698
/* 80308650 002D1C10  54 A3 42 1E */	rlwinm r3, r5, 8, 8, 0xf
/* 80308654 002D1C14  54 A0 C4 2E */	rlwinm r0, r5, 0x18, 0x10, 0x17
/* 80308658 002D1C18  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 8030865C 002D1C1C  50 A0 46 3E */	rlwimi r0, r5, 8, 0x18, 0x1f
/* 80308660 002D1C20  7C 63 03 78 */	or r3, r3, r0
/* 80308664 002D1C24  54 60 06 36 */	rlwinm r0, r3, 0, 0x18, 0x1b
/* 80308668 002D1C28  28 00 00 40 */	cmplwi r0, 0x40
/* 8030866C 002D1C2C  41 82 00 0C */	beq .L_80308678
/* 80308670 002D1C30  38 60 FF FF */	li r3, -1
/* 80308674 002D1C34  48 00 06 E4 */	b .L_80308D58
.L_80308678:
/* 80308678 002D1C38  54 60 C2 3F */	rlwinm. r0, r3, 0x18, 8, 0x1f
/* 8030867C 002D1C3C  90 18 00 04 */	stw r0, 4(r24)
/* 80308680 002D1C40  40 82 00 10 */	bne .L_80308690
/* 80308684 002D1C44  9A F8 08 A7 */	stb r23, 0x8a7(r24)
/* 80308688 002D1C48  93 D8 00 04 */	stw r30, 4(r24)
/* 8030868C 002D1C4C  48 00 00 24 */	b .L_803086B0
.L_80308690:
/* 80308690 002D1C50  9B F8 08 A7 */	stb r31, 0x8a7(r24)
/* 80308694 002D1C54  48 00 00 1C */	b .L_803086B0
.L_80308698:
/* 80308698 002D1C58  54 A3 42 1E */	rlwinm r3, r5, 8, 8, 0xf
/* 8030869C 002D1C5C  54 A0 C4 2E */	rlwinm r0, r5, 0x18, 0x10, 0x17
/* 803086A0 002D1C60  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 803086A4 002D1C64  50 A0 46 3E */	rlwimi r0, r5, 8, 0x18, 0x1f
/* 803086A8 002D1C68  7C 60 03 78 */	or r0, r3, r0
/* 803086AC 002D1C6C  90 18 00 04 */	stw r0, 4(r24)
.L_803086B0:
/* 803086B0 002D1C70  88 18 08 A7 */	lbz r0, 0x8a7(r24)
/* 803086B4 002D1C74  2C 00 00 00 */	cmpwi r0, 0
/* 803086B8 002D1C78  40 82 00 20 */	bne .L_803086D8
/* 803086BC 002D1C7C  80 78 00 08 */	lwz r3, 8(r24)
/* 803086C0 002D1C80  2C 03 00 00 */	cmpwi r3, 0
/* 803086C4 002D1C84  40 81 00 14 */	ble .L_803086D8
/* 803086C8 002D1C88  80 18 00 04 */	lwz r0, 4(r24)
/* 803086CC 002D1C8C  7C 03 00 00 */	cmpw r3, r0
/* 803086D0 002D1C90  40 80 00 08 */	bge .L_803086D8
/* 803086D4 002D1C94  90 78 00 04 */	stw r3, 4(r24)
.L_803086D8:
/* 803086D8 002D1C98  88 18 08 A7 */	lbz r0, 0x8a7(r24)
/* 803086DC 002D1C9C  2C 00 00 00 */	cmpwi r0, 0
/* 803086E0 002D1CA0  40 82 FE CC */	bne .L_803085AC
/* 803086E4 002D1CA4  80 18 08 90 */	lwz r0, 0x890(r24)
/* 803086E8 002D1CA8  2C 00 00 00 */	cmpwi r0, 0
/* 803086EC 002D1CAC  40 80 01 04 */	bge .L_803087F0
/* 803086F0 002D1CB0  20 1A 00 17 */	subfic r0, r26, 0x17
/* 803086F4 002D1CB4  54 00 E8 FE */	srwi r0, r0, 3
/* 803086F8 002D1CB8  7C 09 03 A6 */	mtctr r0
/* 803086FC 002D1CBC  28 1A 00 10 */	cmplwi r26, 0x10
/* 80308700 002D1CC0  40 80 00 34 */	bge .L_80308734
/* 80308704 002D1CC4  60 00 00 00 */	nop 
.L_80308708:
/* 80308708 002D1CC8  2C 1C 00 00 */	cmpwi r28, 0
/* 8030870C 002D1CCC  40 82 00 0C */	bne .L_80308718
/* 80308710 002D1CD0  38 80 FF FF */	li r4, -1
/* 80308714 002D1CD4  48 00 00 30 */	b .L_80308744
.L_80308718:
/* 80308718 002D1CD8  88 1D 00 00 */	lbz r0, 0(r29)
/* 8030871C 002D1CDC  57 7B 40 2E */	slwi r27, r27, 8
/* 80308720 002D1CE0  3B 5A 00 08 */	addi r26, r26, 8
/* 80308724 002D1CE4  3B BD 00 01 */	addi r29, r29, 1
/* 80308728 002D1CE8  7F 7B 02 14 */	add r27, r27, r0
/* 8030872C 002D1CEC  3B 9C FF FF */	addi r28, r28, -1
/* 80308730 002D1CF0  42 00 FF D8 */	bdnz .L_80308708
.L_80308734:
/* 80308734 002D1CF4  38 1A FF F0 */	addi r0, r26, -16
/* 80308738 002D1CF8  3B 5A FF F0 */	addi r26, r26, -16
/* 8030873C 002D1CFC  7F 60 04 30 */	srw r0, r27, r0
/* 80308740 002D1D00  54 04 04 3E */	clrlwi r4, r0, 0x10
.L_80308744:
/* 80308744 002D1D04  2C 04 00 00 */	cmpwi r4, 0
/* 80308748 002D1D08  41 80 05 E4 */	blt .L_80308D2C
/* 8030874C 002D1D0C  54 83 44 2E */	rlwinm r3, r4, 8, 0x10, 0x17
/* 80308750 002D1D10  38 00 00 01 */	li r0, 1
/* 80308754 002D1D14  50 83 C6 3E */	rlwimi r3, r4, 0x18, 0x18, 0x1f
/* 80308758 002D1D18  90 18 08 98 */	stw r0, 0x898(r24)
/* 8030875C 002D1D1C  38 03 00 01 */	addi r0, r3, 1
/* 80308760 002D1D20  54 03 28 34 */	slwi r3, r0, 5
/* 80308764 002D1D24  38 03 FF F0 */	addi r0, r3, -16
/* 80308768 002D1D28  90 18 08 90 */	stw r0, 0x890(r24)
/* 8030876C 002D1D2C  48 00 00 84 */	b .L_803087F0
.L_80308770:
/* 80308770 002D1D30  20 1A 00 10 */	subfic r0, r26, 0x10
/* 80308774 002D1D34  54 00 E8 FE */	srwi r0, r0, 3
/* 80308778 002D1D38  7C 09 03 A6 */	mtctr r0
/* 8030877C 002D1D3C  28 1A 00 09 */	cmplwi r26, 9
/* 80308780 002D1D40  40 80 00 34 */	bge .L_803087B4
/* 80308784 002D1D44  60 00 00 00 */	nop 
.L_80308788:
/* 80308788 002D1D48  2C 1C 00 00 */	cmpwi r28, 0
/* 8030878C 002D1D4C  40 82 00 0C */	bne .L_80308798
/* 80308790 002D1D50  38 A0 FF FF */	li r5, -1
/* 80308794 002D1D54  48 00 00 30 */	b .L_803087C4
.L_80308798:
/* 80308798 002D1D58  88 1D 00 00 */	lbz r0, 0(r29)
/* 8030879C 002D1D5C  57 7B 40 2E */	slwi r27, r27, 8
/* 803087A0 002D1D60  3B 5A 00 08 */	addi r26, r26, 8
/* 803087A4 002D1D64  3B BD 00 01 */	addi r29, r29, 1
/* 803087A8 002D1D68  7F 7B 02 14 */	add r27, r27, r0
/* 803087AC 002D1D6C  3B 9C FF FF */	addi r28, r28, -1
/* 803087B0 002D1D70  42 00 FF D8 */	bdnz .L_80308788
.L_803087B4:
/* 803087B4 002D1D74  38 1A FF F7 */	addi r0, r26, -9
/* 803087B8 002D1D78  3B 5A FF F7 */	addi r26, r26, -9
/* 803087BC 002D1D7C  7F 60 04 30 */	srw r0, r27, r0
/* 803087C0 002D1D80  54 05 05 FE */	clrlwi r5, r0, 0x17
.L_803087C4:
/* 803087C4 002D1D84  2C 05 00 00 */	cmpwi r5, 0
/* 803087C8 002D1D88  41 80 05 64 */	blt .L_80308D2C
/* 803087CC 002D1D8C  80 78 08 98 */	lwz r3, 0x898(r24)
/* 803087D0 002D1D90  54 60 08 3C */	slwi r0, r3, 1
/* 803087D4 002D1D94  38 83 00 01 */	addi r4, r3, 1
/* 803087D8 002D1D98  7C 78 02 14 */	add r3, r24, r0
/* 803087DC 002D1D9C  B0 A3 00 0C */	sth r5, 0xc(r3)
/* 803087E0 002D1DA0  80 78 08 90 */	lwz r3, 0x890(r24)
/* 803087E4 002D1DA4  90 98 08 98 */	stw r4, 0x898(r24)
/* 803087E8 002D1DA8  38 03 FF F7 */	addi r0, r3, -9
/* 803087EC 002D1DAC  90 18 08 90 */	stw r0, 0x890(r24)
.L_803087F0:
/* 803087F0 002D1DB0  80 18 08 90 */	lwz r0, 0x890(r24)
/* 803087F4 002D1DB4  2C 00 00 09 */	cmpwi r0, 9
/* 803087F8 002D1DB8  40 80 FF 78 */	bge .L_80308770
/* 803087FC 002D1DBC  38 A0 00 01 */	li r5, 1
/* 80308800 002D1DC0  38 60 00 00 */	li r3, 0
/* 80308804 002D1DC4  48 00 00 74 */	b .L_80308878
.L_80308808:
/* 80308808 002D1DC8  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 8030880C 002D1DCC  38 06 00 07 */	addi r0, r6, 7
/* 80308810 002D1DD0  7C 1A 00 50 */	subf r0, r26, r0
/* 80308814 002D1DD4  54 00 E8 FE */	srwi r0, r0, 3
/* 80308818 002D1DD8  7C 09 03 A6 */	mtctr r0
/* 8030881C 002D1DDC  7C 1A 30 40 */	cmplw r26, r6
/* 80308820 002D1DE0  40 80 00 34 */	bge .L_80308854
/* 80308824 002D1DE4  60 00 00 00 */	nop 
.L_80308828:
/* 80308828 002D1DE8  2C 1C 00 00 */	cmpwi r28, 0
/* 8030882C 002D1DEC  40 82 00 0C */	bne .L_80308838
/* 80308830 002D1DF0  38 00 FF FF */	li r0, -1
/* 80308834 002D1DF4  48 00 00 38 */	b .L_8030886C
.L_80308838:
/* 80308838 002D1DF8  88 1D 00 00 */	lbz r0, 0(r29)
/* 8030883C 002D1DFC  57 7B 40 2E */	slwi r27, r27, 8
/* 80308840 002D1E00  3B 5A 00 08 */	addi r26, r26, 8
/* 80308844 002D1E04  3B BD 00 01 */	addi r29, r29, 1
/* 80308848 002D1E08  7F 7B 02 14 */	add r27, r27, r0
/* 8030884C 002D1E0C  3B 9C FF FF */	addi r28, r28, -1
/* 80308850 002D1E10  42 00 FF D8 */	bdnz .L_80308828
.L_80308854:
/* 80308854 002D1E14  7C 06 D0 50 */	subf r0, r6, r26
/* 80308858 002D1E18  7C A4 30 30 */	slw r4, r5, r6
/* 8030885C 002D1E1C  38 84 FF FF */	addi r4, r4, -1
/* 80308860 002D1E20  7F 46 D0 50 */	subf r26, r6, r26
/* 80308864 002D1E24  7F 60 04 30 */	srw r0, r27, r0
/* 80308868 002D1E28  7C 80 00 38 */	and r0, r4, r0
.L_8030886C:
/* 8030886C 002D1E2C  2C 00 00 00 */	cmpwi r0, 0
/* 80308870 002D1E30  41 80 04 BC */	blt .L_80308D2C
/* 80308874 002D1E34  90 78 08 90 */	stw r3, 0x890(r24)
.L_80308878:
/* 80308878 002D1E38  80 18 08 90 */	lwz r0, 0x890(r24)
/* 8030887C 002D1E3C  2C 00 00 00 */	cmpwi r0, 0
/* 80308880 002D1E40  41 81 FF 88 */	bgt .L_80308808
/* 80308884 002D1E44  38 78 00 0C */	addi r3, r24, 0xc
/* 80308888 002D1E48  38 80 00 09 */	li r4, 9
/* 8030888C 002D1E4C  48 00 06 85 */	bl CXiLHVerifyTable
/* 80308890 002D1E50  2C 03 00 00 */	cmpwi r3, 0
/* 80308894 002D1E54  40 82 00 0C */	bne .L_803088A0
/* 80308898 002D1E58  38 60 FF FB */	li r3, -5
/* 8030889C 002D1E5C  48 00 04 BC */	b .L_80308D58
.L_803088A0:
/* 803088A0 002D1E60  80 18 08 94 */	lwz r0, 0x894(r24)
/* 803088A4 002D1E64  2C 00 00 00 */	cmpwi r0, 0
/* 803088A8 002D1E68  40 80 01 00 */	bge .L_803089A8
/* 803088AC 002D1E6C  20 1A 00 0F */	subfic r0, r26, 0xf
/* 803088B0 002D1E70  54 00 E8 FE */	srwi r0, r0, 3
/* 803088B4 002D1E74  7C 09 03 A6 */	mtctr r0
/* 803088B8 002D1E78  28 1A 00 08 */	cmplwi r26, 8
/* 803088BC 002D1E7C  40 80 00 30 */	bge .L_803088EC
.L_803088C0:
/* 803088C0 002D1E80  2C 1C 00 00 */	cmpwi r28, 0
/* 803088C4 002D1E84  40 82 00 0C */	bne .L_803088D0
/* 803088C8 002D1E88  38 00 FF FF */	li r0, -1
/* 803088CC 002D1E8C  48 00 00 30 */	b .L_803088FC
.L_803088D0:
/* 803088D0 002D1E90  88 1D 00 00 */	lbz r0, 0(r29)
/* 803088D4 002D1E94  57 7B 40 2E */	slwi r27, r27, 8
/* 803088D8 002D1E98  3B 5A 00 08 */	addi r26, r26, 8
/* 803088DC 002D1E9C  3B BD 00 01 */	addi r29, r29, 1
/* 803088E0 002D1EA0  7F 7B 02 14 */	add r27, r27, r0
/* 803088E4 002D1EA4  3B 9C FF FF */	addi r28, r28, -1
/* 803088E8 002D1EA8  42 00 FF D8 */	bdnz .L_803088C0
.L_803088EC:
/* 803088EC 002D1EAC  38 1A FF F8 */	addi r0, r26, -8
/* 803088F0 002D1EB0  3B 5A FF F8 */	addi r26, r26, -8
/* 803088F4 002D1EB4  7F 60 04 30 */	srw r0, r27, r0
/* 803088F8 002D1EB8  54 00 06 3E */	clrlwi r0, r0, 0x18
.L_803088FC:
/* 803088FC 002D1EBC  2C 00 00 00 */	cmpwi r0, 0
/* 80308900 002D1EC0  41 80 04 2C */	blt .L_80308D2C
/* 80308904 002D1EC4  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80308908 002D1EC8  38 00 00 01 */	li r0, 1
/* 8030890C 002D1ECC  38 63 00 01 */	addi r3, r3, 1
/* 80308910 002D1ED0  90 18 08 98 */	stw r0, 0x898(r24)
/* 80308914 002D1ED4  54 63 28 34 */	slwi r3, r3, 5
/* 80308918 002D1ED8  38 03 FF F8 */	addi r0, r3, -8
/* 8030891C 002D1EDC  90 18 08 94 */	stw r0, 0x894(r24)
/* 80308920 002D1EE0  48 00 00 88 */	b .L_803089A8
/* 80308924 002D1EE4  60 00 00 00 */	nop 
.L_80308928:
/* 80308928 002D1EE8  20 1A 00 0C */	subfic r0, r26, 0xc
/* 8030892C 002D1EEC  54 00 E8 FE */	srwi r0, r0, 3
/* 80308930 002D1EF0  7C 09 03 A6 */	mtctr r0
/* 80308934 002D1EF4  28 1A 00 05 */	cmplwi r26, 5
/* 80308938 002D1EF8  40 80 00 34 */	bge .L_8030896C
/* 8030893C 002D1EFC  60 00 00 00 */	nop 
.L_80308940:
/* 80308940 002D1F00  2C 1C 00 00 */	cmpwi r28, 0
/* 80308944 002D1F04  40 82 00 0C */	bne .L_80308950
/* 80308948 002D1F08  38 A0 FF FF */	li r5, -1
/* 8030894C 002D1F0C  48 00 00 30 */	b .L_8030897C
.L_80308950:
/* 80308950 002D1F10  88 1D 00 00 */	lbz r0, 0(r29)
/* 80308954 002D1F14  57 7B 40 2E */	slwi r27, r27, 8
/* 80308958 002D1F18  3B 5A 00 08 */	addi r26, r26, 8
/* 8030895C 002D1F1C  3B BD 00 01 */	addi r29, r29, 1
/* 80308960 002D1F20  7F 7B 02 14 */	add r27, r27, r0
/* 80308964 002D1F24  3B 9C FF FF */	addi r28, r28, -1
/* 80308968 002D1F28  42 00 FF D8 */	bdnz .L_80308940
.L_8030896C:
/* 8030896C 002D1F2C  38 1A FF FB */	addi r0, r26, -5
/* 80308970 002D1F30  3B 5A FF FB */	addi r26, r26, -5
/* 80308974 002D1F34  7F 60 04 30 */	srw r0, r27, r0
/* 80308978 002D1F38  54 05 06 FE */	clrlwi r5, r0, 0x1b
.L_8030897C:
/* 8030897C 002D1F3C  2C 05 00 00 */	cmpwi r5, 0
/* 80308980 002D1F40  41 80 03 AC */	blt .L_80308D2C
/* 80308984 002D1F44  80 78 08 98 */	lwz r3, 0x898(r24)
/* 80308988 002D1F48  54 60 08 3C */	slwi r0, r3, 1
/* 8030898C 002D1F4C  38 83 00 01 */	addi r4, r3, 1
/* 80308990 002D1F50  7C 78 02 14 */	add r3, r24, r0
/* 80308994 002D1F54  B0 A3 08 0C */	sth r5, 0x80c(r3)
/* 80308998 002D1F58  80 78 08 94 */	lwz r3, 0x894(r24)
/* 8030899C 002D1F5C  90 98 08 98 */	stw r4, 0x898(r24)
/* 803089A0 002D1F60  38 03 FF FB */	addi r0, r3, -5
/* 803089A4 002D1F64  90 18 08 94 */	stw r0, 0x894(r24)
.L_803089A8:
/* 803089A8 002D1F68  80 18 08 94 */	lwz r0, 0x894(r24)
/* 803089AC 002D1F6C  2C 00 00 05 */	cmpwi r0, 5
/* 803089B0 002D1F70  40 80 FF 78 */	bge .L_80308928
/* 803089B4 002D1F74  38 A0 00 01 */	li r5, 1
/* 803089B8 002D1F78  38 60 00 00 */	li r3, 0
/* 803089BC 002D1F7C  48 00 00 74 */	b .L_80308A30
.L_803089C0:
/* 803089C0 002D1F80  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 803089C4 002D1F84  38 06 00 07 */	addi r0, r6, 7
/* 803089C8 002D1F88  7C 1A 00 50 */	subf r0, r26, r0
/* 803089CC 002D1F8C  54 00 E8 FE */	srwi r0, r0, 3
/* 803089D0 002D1F90  7C 09 03 A6 */	mtctr r0
/* 803089D4 002D1F94  7C 1A 30 40 */	cmplw r26, r6
/* 803089D8 002D1F98  40 80 00 34 */	bge .L_80308A0C
/* 803089DC 002D1F9C  60 00 00 00 */	nop 
.L_803089E0:
/* 803089E0 002D1FA0  2C 1C 00 00 */	cmpwi r28, 0
/* 803089E4 002D1FA4  40 82 00 0C */	bne .L_803089F0
/* 803089E8 002D1FA8  38 00 FF FF */	li r0, -1
/* 803089EC 002D1FAC  48 00 00 38 */	b .L_80308A24
.L_803089F0:
/* 803089F0 002D1FB0  88 1D 00 00 */	lbz r0, 0(r29)
/* 803089F4 002D1FB4  57 7B 40 2E */	slwi r27, r27, 8
/* 803089F8 002D1FB8  3B 5A 00 08 */	addi r26, r26, 8
/* 803089FC 002D1FBC  3B BD 00 01 */	addi r29, r29, 1
/* 80308A00 002D1FC0  7F 7B 02 14 */	add r27, r27, r0
/* 80308A04 002D1FC4  3B 9C FF FF */	addi r28, r28, -1
/* 80308A08 002D1FC8  42 00 FF D8 */	bdnz .L_803089E0
.L_80308A0C:
/* 80308A0C 002D1FCC  7C 06 D0 50 */	subf r0, r6, r26
/* 80308A10 002D1FD0  7C A4 30 30 */	slw r4, r5, r6
/* 80308A14 002D1FD4  38 84 FF FF */	addi r4, r4, -1
/* 80308A18 002D1FD8  7F 46 D0 50 */	subf r26, r6, r26
/* 80308A1C 002D1FDC  7F 60 04 30 */	srw r0, r27, r0
/* 80308A20 002D1FE0  7C 80 00 38 */	and r0, r4, r0
.L_80308A24:
/* 80308A24 002D1FE4  2C 00 00 00 */	cmpwi r0, 0
/* 80308A28 002D1FE8  41 80 03 04 */	blt .L_80308D2C
/* 80308A2C 002D1FEC  90 78 08 94 */	stw r3, 0x894(r24)
.L_80308A30:
/* 80308A30 002D1FF0  80 18 08 94 */	lwz r0, 0x894(r24)
/* 80308A34 002D1FF4  2C 00 00 00 */	cmpwi r0, 0
/* 80308A38 002D1FF8  41 81 FF 88 */	bgt .L_803089C0
/* 80308A3C 002D1FFC  38 78 08 0C */	addi r3, r24, 0x80c
/* 80308A40 002D2000  38 80 00 05 */	li r4, 5
/* 80308A44 002D2004  48 00 04 CD */	bl CXiLHVerifyTable
/* 80308A48 002D2008  2C 03 00 00 */	cmpwi r3, 0
/* 80308A4C 002D200C  40 82 00 0C */	bne .L_80308A58
/* 80308A50 002D2010  38 60 FF FB */	li r3, -5
/* 80308A54 002D2014  48 00 03 04 */	b .L_80308D58
.L_80308A58:
/* 80308A58 002D2018  80 B8 08 8C */	lwz r5, 0x88c(r24)
/* 80308A5C 002D201C  38 60 00 10 */	li r3, 0x10
/* 80308A60 002D2020  A0 D8 08 A4 */	lhz r6, 0x8a4(r24)
/* 80308A64 002D2024  38 80 01 00 */	li r4, 0x100
/* 80308A68 002D2028  38 00 00 01 */	li r0, 1
/* 80308A6C 002D202C  39 20 FF FF */	li r9, -1
/* 80308A70 002D2030  48 00 02 B0 */	b .L_80308D20
/* 80308A74 002D2034  60 00 00 00 */	nop 
.L_80308A78:
/* 80308A78 002D2038  2C 06 00 00 */	cmpwi r6, 0
/* 80308A7C 002D203C  40 82 00 A8 */	bne .L_80308B24
/* 80308A80 002D2040  48 00 00 30 */	b .L_80308AB0
/* 80308A84 002D2044  60 00 00 00 */	nop 
.L_80308A88:
/* 80308A88 002D2048  2C 1C 00 00 */	cmpwi r28, 0
/* 80308A8C 002D204C  40 82 00 0C */	bne .L_80308A98
/* 80308A90 002D2050  38 E0 FF FF */	li r7, -1
/* 80308A94 002D2054  48 00 00 34 */	b .L_80308AC8
.L_80308A98:
/* 80308A98 002D2058  88 FD 00 00 */	lbz r7, 0(r29)
/* 80308A9C 002D205C  57 7B 40 2E */	slwi r27, r27, 8
/* 80308AA0 002D2060  3B 5A 00 08 */	addi r26, r26, 8
/* 80308AA4 002D2064  3B BD 00 01 */	addi r29, r29, 1
/* 80308AA8 002D2068  7F 7B 3A 14 */	add r27, r27, r7
/* 80308AAC 002D206C  3B 9C FF FF */	addi r28, r28, -1
.L_80308AB0:
/* 80308AB0 002D2070  28 1A 00 01 */	cmplwi r26, 1
/* 80308AB4 002D2074  41 80 FF D4 */	blt .L_80308A88
/* 80308AB8 002D2078  38 FA FF FF */	addi r7, r26, -1
/* 80308ABC 002D207C  3B 5A FF FF */	addi r26, r26, -1
/* 80308AC0 002D2080  7F 67 3C 30 */	srw r7, r27, r7
/* 80308AC4 002D2084  54 E7 07 FE */	clrlwi r7, r7, 0x1f
.L_80308AC8:
/* 80308AC8 002D2088  2C 07 00 00 */	cmpwi r7, 0
/* 80308ACC 002D208C  40 80 00 10 */	bge .L_80308ADC
/* 80308AD0 002D2090  90 B8 08 8C */	stw r5, 0x88c(r24)
/* 80308AD4 002D2094  B0 D8 08 A4 */	sth r6, 0x8a4(r24)
/* 80308AD8 002D2098  48 00 02 54 */	b .L_80308D2C
.L_80308ADC:
/* 80308ADC 002D209C  54 E8 07 FE */	clrlwi r8, r7, 0x1f
/* 80308AE0 002D20A0  A1 65 00 00 */	lhz r11, 0(r5)
/* 80308AE4 002D20A4  7C 87 46 30 */	sraw r7, r4, r8
/* 80308AE8 002D20A8  7D 67 38 39 */	and. r7, r11, r7
/* 80308AEC 002D20AC  55 6A 06 7E */	clrlwi r10, r11, 0x19
/* 80308AF0 002D20B0  38 EA 00 01 */	addi r7, r10, 1
/* 80308AF4 002D20B4  54 E7 08 3C */	slwi r7, r7, 1
/* 80308AF8 002D20B8  7C E7 42 14 */	add r7, r7, r8
/* 80308AFC 002D20BC  41 82 00 18 */	beq .L_80308B14
/* 80308B00 002D20C0  54 A6 00 3A */	rlwinm r6, r5, 0, 0, 0x1d
/* 80308B04 002D20C4  54 E5 08 3C */	slwi r5, r7, 1
/* 80308B08 002D20C8  7C C6 2A 2E */	lhzx r6, r6, r5
/* 80308B0C 002D20CC  38 B8 08 0E */	addi r5, r24, 0x80e
/* 80308B10 002D20D0  48 00 00 14 */	b .L_80308B24
.L_80308B14:
/* 80308B14 002D20D4  54 A5 00 3A */	rlwinm r5, r5, 0, 0, 0x1d
/* 80308B18 002D20D8  54 E7 08 3C */	slwi r7, r7, 1
/* 80308B1C 002D20DC  7C A5 3A 14 */	add r5, r5, r7
/* 80308B20 002D20E0  4B FF FF 90 */	b .L_80308AB0
.L_80308B24:
/* 80308B24 002D20E4  28 06 01 00 */	cmplwi r6, 0x100
/* 80308B28 002D20E8  40 80 00 2C */	bge .L_80308B54
/* 80308B2C 002D20EC  80 F8 00 00 */	lwz r7, 0(r24)
/* 80308B30 002D20F0  38 B8 00 0E */	addi r5, r24, 0xe
/* 80308B34 002D20F4  98 C7 00 00 */	stb r6, 0(r7)
/* 80308B38 002D20F8  39 07 00 01 */	addi r8, r7, 1
/* 80308B3C 002D20FC  38 C0 00 00 */	li r6, 0
/* 80308B40 002D2100  80 F8 00 04 */	lwz r7, 4(r24)
/* 80308B44 002D2104  91 18 00 00 */	stw r8, 0(r24)
/* 80308B48 002D2108  38 E7 FF FF */	addi r7, r7, -1
/* 80308B4C 002D210C  90 F8 00 04 */	stw r7, 4(r24)
/* 80308B50 002D2110  48 00 01 D0 */	b .L_80308D20
.L_80308B54:
/* 80308B54 002D2114  88 F8 08 A6 */	lbz r7, 0x8a6(r24)
/* 80308B58 002D2118  54 C8 06 3E */	clrlwi r8, r6, 0x18
/* 80308B5C 002D211C  39 08 00 03 */	addi r8, r8, 3
/* 80308B60 002D2120  7C E7 07 75 */	extsb. r7, r7
/* 80308B64 002D2124  55 07 04 3E */	clrlwi r7, r8, 0x10
/* 80308B68 002D2128  40 80 00 A4 */	bge .L_80308C0C
/* 80308B6C 002D212C  48 00 00 2C */	b .L_80308B98
.L_80308B70:
/* 80308B70 002D2130  2C 1C 00 00 */	cmpwi r28, 0
/* 80308B74 002D2134  40 82 00 0C */	bne .L_80308B80
/* 80308B78 002D2138  39 00 FF FF */	li r8, -1
/* 80308B7C 002D213C  48 00 00 34 */	b .L_80308BB0
.L_80308B80:
/* 80308B80 002D2140  89 1D 00 00 */	lbz r8, 0(r29)
/* 80308B84 002D2144  57 7B 40 2E */	slwi r27, r27, 8
/* 80308B88 002D2148  3B 5A 00 08 */	addi r26, r26, 8
/* 80308B8C 002D214C  3B BD 00 01 */	addi r29, r29, 1
/* 80308B90 002D2150  7F 7B 42 14 */	add r27, r27, r8
/* 80308B94 002D2154  3B 9C FF FF */	addi r28, r28, -1
.L_80308B98:
/* 80308B98 002D2158  28 1A 00 01 */	cmplwi r26, 1
/* 80308B9C 002D215C  41 80 FF D4 */	blt .L_80308B70
/* 80308BA0 002D2160  39 1A FF FF */	addi r8, r26, -1
/* 80308BA4 002D2164  3B 5A FF FF */	addi r26, r26, -1
/* 80308BA8 002D2168  7F 68 44 30 */	srw r8, r27, r8
/* 80308BAC 002D216C  55 08 07 FE */	clrlwi r8, r8, 0x1f
.L_80308BB0:
/* 80308BB0 002D2170  2C 08 00 00 */	cmpwi r8, 0
/* 80308BB4 002D2174  40 80 00 10 */	bge .L_80308BC4
/* 80308BB8 002D2178  90 B8 08 8C */	stw r5, 0x88c(r24)
/* 80308BBC 002D217C  B0 D8 08 A4 */	sth r6, 0x8a4(r24)
/* 80308BC0 002D2180  48 00 01 6C */	b .L_80308D2C
.L_80308BC4:
/* 80308BC4 002D2184  55 0A 07 FE */	clrlwi r10, r8, 0x1f
/* 80308BC8 002D2188  A1 85 00 00 */	lhz r12, 0(r5)
/* 80308BCC 002D218C  7C 68 56 30 */	sraw r8, r3, r10
/* 80308BD0 002D2190  7D 88 40 39 */	and. r8, r12, r8
/* 80308BD4 002D2194  55 8B 07 7E */	clrlwi r11, r12, 0x1d
/* 80308BD8 002D2198  39 0B 00 01 */	addi r8, r11, 1
/* 80308BDC 002D219C  55 08 08 3C */	slwi r8, r8, 1
/* 80308BE0 002D21A0  7D 08 52 14 */	add r8, r8, r10
/* 80308BE4 002D21A4  41 82 00 18 */	beq .L_80308BFC
/* 80308BE8 002D21A8  54 A5 00 3A */	rlwinm r5, r5, 0, 0, 0x1d
/* 80308BEC 002D21AC  55 08 08 3C */	slwi r8, r8, 1
/* 80308BF0 002D21B0  7D 05 42 2E */	lhzx r8, r5, r8
/* 80308BF4 002D21B4  99 18 08 A6 */	stb r8, 0x8a6(r24)
/* 80308BF8 002D21B8  48 00 00 14 */	b .L_80308C0C
.L_80308BFC:
/* 80308BFC 002D21BC  54 A5 00 3A */	rlwinm r5, r5, 0, 0, 0x1d
/* 80308C00 002D21C0  55 08 08 3C */	slwi r8, r8, 1
/* 80308C04 002D21C4  7C A5 42 14 */	add r5, r5, r8
/* 80308C08 002D21C8  4B FF FF 90 */	b .L_80308B98
.L_80308C0C:
/* 80308C0C 002D21CC  89 98 08 A6 */	lbz r12, 0x8a6(r24)
/* 80308C10 002D21D0  7D 88 07 74 */	extsb r8, r12
/* 80308C14 002D21D4  2C 08 00 01 */	cmpwi r8, 1
/* 80308C18 002D21D8  41 81 00 08 */	bgt .L_80308C20
/* 80308C1C 002D21DC  48 00 00 7C */	b .L_80308C98
.L_80308C20:
/* 80308C20 002D21E0  39 0C FF FF */	addi r8, r12, -1
/* 80308C24 002D21E4  55 0B 06 3E */	clrlwi r11, r8, 0x18
/* 80308C28 002D21E8  39 0B 00 07 */	addi r8, r11, 7
/* 80308C2C 002D21EC  7D 1A 40 50 */	subf r8, r26, r8
/* 80308C30 002D21F0  55 08 E8 FE */	srwi r8, r8, 3
/* 80308C34 002D21F4  7D 09 03 A6 */	mtctr r8
/* 80308C38 002D21F8  7C 1A 58 40 */	cmplw r26, r11
/* 80308C3C 002D21FC  40 80 00 30 */	bge .L_80308C6C
.L_80308C40:
/* 80308C40 002D2200  2C 1C 00 00 */	cmpwi r28, 0
/* 80308C44 002D2204  40 82 00 0C */	bne .L_80308C50
/* 80308C48 002D2208  39 00 FF FF */	li r8, -1
/* 80308C4C 002D220C  48 00 00 38 */	b .L_80308C84
.L_80308C50:
/* 80308C50 002D2210  89 1D 00 00 */	lbz r8, 0(r29)
/* 80308C54 002D2214  57 7B 40 2E */	slwi r27, r27, 8
/* 80308C58 002D2218  3B 5A 00 08 */	addi r26, r26, 8
/* 80308C5C 002D221C  3B BD 00 01 */	addi r29, r29, 1
/* 80308C60 002D2220  7F 7B 42 14 */	add r27, r27, r8
/* 80308C64 002D2224  3B 9C FF FF */	addi r28, r28, -1
/* 80308C68 002D2228  42 00 FF D8 */	bdnz .L_80308C40
.L_80308C6C:
/* 80308C6C 002D222C  7D 0B D0 50 */	subf r8, r11, r26
/* 80308C70 002D2230  7C 0A 58 30 */	slw r10, r0, r11
/* 80308C74 002D2234  39 4A FF FF */	addi r10, r10, -1
/* 80308C78 002D2238  7F 4B D0 50 */	subf r26, r11, r26
/* 80308C7C 002D223C  7F 68 44 30 */	srw r8, r27, r8
/* 80308C80 002D2240  7D 48 40 38 */	and r8, r10, r8
.L_80308C84:
/* 80308C84 002D2244  2C 08 00 00 */	cmpwi r8, 0
/* 80308C88 002D2248  40 80 00 10 */	bge .L_80308C98
/* 80308C8C 002D224C  90 B8 08 8C */	stw r5, 0x88c(r24)
/* 80308C90 002D2250  B0 D8 08 A4 */	sth r6, 0x8a4(r24)
/* 80308C94 002D2254  48 00 00 98 */	b .L_80308D2C
.L_80308C98:
/* 80308C98 002D2258  7D 85 07 74 */	extsb r5, r12
/* 80308C9C 002D225C  2C 05 00 02 */	cmpwi r5, 2
/* 80308CA0 002D2260  41 80 00 10 */	blt .L_80308CB0
/* 80308CA4 002D2264  38 A5 FF FF */	addi r5, r5, -1
/* 80308CA8 002D2268  7C 05 28 30 */	slw r5, r0, r5
/* 80308CAC 002D226C  7D 08 2B 78 */	or r8, r8, r5
.L_80308CB0:
/* 80308CB0 002D2270  80 D8 00 04 */	lwz r6, 4(r24)
/* 80308CB4 002D2274  38 A8 00 01 */	addi r5, r8, 1
/* 80308CB8 002D2278  99 38 08 A6 */	stb r9, 0x8a6(r24)
/* 80308CBC 002D227C  54 A8 04 3E */	clrlwi r8, r5, 0x10
/* 80308CC0 002D2280  7C 06 38 00 */	cmpw r6, r7
/* 80308CC4 002D2284  40 80 00 1C */	bge .L_80308CE0
/* 80308CC8 002D2288  80 B8 00 08 */	lwz r5, 8(r24)
/* 80308CCC 002D228C  2C 05 00 00 */	cmpwi r5, 0
/* 80308CD0 002D2290  40 82 00 0C */	bne .L_80308CDC
/* 80308CD4 002D2294  38 60 FF FC */	li r3, -4
/* 80308CD8 002D2298  48 00 00 80 */	b .L_80308D58
.L_80308CDC:
/* 80308CDC 002D229C  54 C7 04 3E */	clrlwi r7, r6, 0x10
.L_80308CE0:
/* 80308CE0 002D22A0  80 B8 00 04 */	lwz r5, 4(r24)
/* 80308CE4 002D22A4  7C A7 28 50 */	subf r5, r7, r5
/* 80308CE8 002D22A8  90 B8 00 04 */	stw r5, 4(r24)
/* 80308CEC 002D22AC  48 00 00 20 */	b .L_80308D0C
.L_80308CF0:
/* 80308CF0 002D22B0  80 D8 00 00 */	lwz r6, 0(r24)
/* 80308CF4 002D22B4  7C A8 30 50 */	subf r5, r8, r6
/* 80308CF8 002D22B8  88 A5 00 00 */	lbz r5, 0(r5)
/* 80308CFC 002D22BC  98 A6 00 00 */	stb r5, 0(r6)
/* 80308D00 002D22C0  80 B8 00 00 */	lwz r5, 0(r24)
/* 80308D04 002D22C4  38 A5 00 01 */	addi r5, r5, 1
/* 80308D08 002D22C8  90 B8 00 00 */	stw r5, 0(r24)
.L_80308D0C:
/* 80308D0C 002D22CC  54 E5 04 3F */	clrlwi. r5, r7, 0x10
/* 80308D10 002D22D0  38 E7 FF FF */	addi r7, r7, -1
/* 80308D14 002D22D4  40 82 FF DC */	bne .L_80308CF0
/* 80308D18 002D22D8  38 C0 00 00 */	li r6, 0
/* 80308D1C 002D22DC  38 B8 00 0E */	addi r5, r24, 0xe
.L_80308D20:
/* 80308D20 002D22E0  80 F8 00 04 */	lwz r7, 4(r24)
/* 80308D24 002D22E4  2C 07 00 00 */	cmpwi r7, 0
/* 80308D28 002D22E8  41 81 FD 50 */	bgt .L_80308A78
.L_80308D2C:
/* 80308D2C 002D22EC  80 78 00 04 */	lwz r3, 4(r24)
/* 80308D30 002D22F0  93 78 08 9C */	stw r27, 0x89c(r24)
/* 80308D34 002D22F4  2C 03 00 00 */	cmpwi r3, 0
/* 80308D38 002D22F8  93 58 08 A0 */	stw r26, 0x8a0(r24)
/* 80308D3C 002D22FC  40 82 00 1C */	bne .L_80308D58
/* 80308D40 002D2300  80 18 00 08 */	lwz r0, 8(r24)
/* 80308D44 002D2304  2C 00 00 00 */	cmpwi r0, 0
/* 80308D48 002D2308  40 82 00 10 */	bne .L_80308D58
/* 80308D4C 002D230C  28 19 00 20 */	cmplwi r25, 0x20
/* 80308D50 002D2310  40 81 00 08 */	ble .L_80308D58
/* 80308D54 002D2314  38 60 FF FD */	li r3, -3
.L_80308D58:
/* 80308D58 002D2318  39 61 00 30 */	addi r11, r1, 0x30
/* 80308D5C 002D231C  4B FB 14 35 */	bl _restgpr_23
/* 80308D60 002D2320  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80308D64 002D2324  7C 08 03 A6 */	mtlr r0
/* 80308D68 002D2328  38 21 00 30 */	addi r1, r1, 0x30
/* 80308D6C 002D232C  4E 80 00 20 */	blr