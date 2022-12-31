.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802AB5F0
func_802AB5F0:
/* 802AB5F0 00274BB0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802AB5F4 00274BB4  7C 08 02 A6 */	mflr r0
/* 802AB5F8 00274BB8  90 01 00 64 */	stw r0, 0x64(r1)
/* 802AB5FC 00274BBC  BE C1 00 38 */	stmw r22, 0x38(r1)
/* 802AB600 00274BC0  7C 3F 0B 78 */	mr r31, r1
/* 802AB604 00274BC4  4B E0 B5 A1 */	bl func_800B6BA4
/* 802AB608 00274BC8  80 83 00 04 */	lwz r4, 4(r3)
/* 802AB60C 00274BCC  7C 7D 1B 78 */	mr r29, r3
/* 802AB610 00274BD0  3B C0 00 00 */	li r30, 0
/* 802AB614 00274BD4  83 64 00 00 */	lwz r27, 0(r4)
/* 802AB618 00274BD8  48 00 00 44 */	b .L_802AB65C
.L_802AB61C:
/* 802AB61C 00274BDC  83 9B 00 08 */	lwz r28, 8(r27)
/* 802AB620 00274BE0  2C 1C 00 00 */	cmpwi r28, 0
/* 802AB624 00274BE4  41 82 00 08 */	beq .L_802AB62C
/* 802AB628 00274BE8  3B 9C C1 64 */	addi r28, r28, -16028
.L_802AB62C:
/* 802AB62C 00274BEC  81 9C 00 00 */	lwz r12, 0(r28)
/* 802AB630 00274BF0  7F 83 E3 78 */	mr r3, r28
/* 802AB634 00274BF4  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802AB638 00274BF8  7D 89 03 A6 */	mtctr r12
/* 802AB63C 00274BFC  4E 80 04 21 */	bctrl 
/* 802AB640 00274C00  2C 03 00 00 */	cmpwi r3, 0
/* 802AB644 00274C04  40 82 00 14 */	bne .L_802AB658
/* 802AB648 00274C08  57 C0 10 3A */	slwi r0, r30, 2
/* 802AB64C 00274C0C  38 7F 00 08 */	addi r3, r31, 8
/* 802AB650 00274C10  7F 83 01 2E */	stwx r28, r3, r0
/* 802AB654 00274C14  3B DE 00 01 */	addi r30, r30, 1
.L_802AB658:
/* 802AB658 00274C18  83 7B 00 00 */	lwz r27, 0(r27)
.L_802AB65C:
/* 802AB65C 00274C1C  80 1D 00 04 */	lwz r0, 4(r29)
/* 802AB660 00274C20  7C 1B 00 40 */	cmplw r27, r0
/* 802AB664 00274C24  40 82 FF B8 */	bne .L_802AB61C
/* 802AB668 00274C28  2C 1E 00 00 */	cmpwi r30, 0
/* 802AB66C 00274C2C  41 81 00 0C */	bgt .L_802AB678
/* 802AB670 00274C30  38 60 00 00 */	li r3, 0
/* 802AB674 00274C34  48 00 02 70 */	b .L_802AB8E4
.L_802AB678:
/* 802AB678 00274C38  3F A0 80 54 */	lis r29, lbl_8053D890@ha
/* 802AB67C 00274C3C  3B 60 00 00 */	li r27, 0
/* 802AB680 00274C40  3B BD D8 90 */	addi r29, r29, lbl_8053D890@l
/* 802AB684 00274C44  48 00 00 C8 */	b .L_802AB74C
.L_802AB688:
/* 802AB688 00274C48  83 43 00 00 */	lwz r26, 0(r3)
/* 802AB68C 00274C4C  88 1A 00 00 */	lbz r0, 0(r26)
/* 802AB690 00274C50  7C 00 07 74 */	extsb r0, r0
/* 802AB694 00274C54  7C 00 F0 00 */	cmpw r0, r30
/* 802AB698 00274C58  40 82 00 B0 */	bne .L_802AB748
/* 802AB69C 00274C5C  3B 20 00 01 */	li r25, 1
/* 802AB6A0 00274C60  3B 00 00 01 */	li r24, 1
/* 802AB6A4 00274C64  48 00 00 58 */	b .L_802AB6FC
.L_802AB6A8:
/* 802AB6A8 00274C68  3B 9F 00 08 */	addi r28, r31, 8
/* 802AB6AC 00274C6C  3A E0 00 00 */	li r23, 0
/* 802AB6B0 00274C70  3A C0 00 00 */	li r22, 0
/* 802AB6B4 00274C74  48 00 00 2C */	b .L_802AB6E0
.L_802AB6B8:
/* 802AB6B8 00274C78  80 7C 00 00 */	lwz r3, 0(r28)
/* 802AB6BC 00274C7C  4B FF C1 2D */	bl func_802A77E8
/* 802AB6C0 00274C80  7C 1A C0 AE */	lbzx r0, r26, r24
/* 802AB6C4 00274C84  7C 00 07 74 */	extsb r0, r0
/* 802AB6C8 00274C88  7C 00 18 00 */	cmpw r0, r3
/* 802AB6CC 00274C8C  40 82 00 0C */	bne .L_802AB6D8
/* 802AB6D0 00274C90  3A E0 00 01 */	li r23, 1
/* 802AB6D4 00274C94  48 00 00 14 */	b .L_802AB6E8
.L_802AB6D8:
/* 802AB6D8 00274C98  3B 9C 00 04 */	addi r28, r28, 4
/* 802AB6DC 00274C9C  3A D6 00 01 */	addi r22, r22, 1
.L_802AB6E0:
/* 802AB6E0 00274CA0  7C 16 F0 00 */	cmpw r22, r30
/* 802AB6E4 00274CA4  41 80 FF D4 */	blt .L_802AB6B8
.L_802AB6E8:
/* 802AB6E8 00274CA8  2C 17 00 00 */	cmpwi r23, 0
/* 802AB6EC 00274CAC  40 82 00 0C */	bne .L_802AB6F8
/* 802AB6F0 00274CB0  3B 20 00 00 */	li r25, 0
/* 802AB6F4 00274CB4  48 00 00 14 */	b .L_802AB708
.L_802AB6F8:
/* 802AB6F8 00274CB8  3B 18 00 01 */	addi r24, r24, 1
.L_802AB6FC:
/* 802AB6FC 00274CBC  38 1E 00 01 */	addi r0, r30, 1
/* 802AB700 00274CC0  7C 18 00 00 */	cmpw r24, r0
/* 802AB704 00274CC4  41 80 FF A4 */	blt .L_802AB6A8
.L_802AB708:
/* 802AB708 00274CC8  2C 19 00 00 */	cmpwi r25, 0
/* 802AB70C 00274CCC  41 82 00 3C */	beq .L_802AB748
/* 802AB710 00274CD0  82 DD 00 00 */	lwz r22, 0(r29)
/* 802AB714 00274CD4  38 60 00 00 */	li r3, 0
/* 802AB718 00274CD8  7E C4 B3 78 */	mr r4, r22
/* 802AB71C 00274CDC  48 00 00 0C */	b .L_802AB728
.L_802AB720:
/* 802AB720 00274CE0  38 84 00 04 */	addi r4, r4, 4
/* 802AB724 00274CE4  38 63 00 01 */	addi r3, r3, 1
.L_802AB728:
/* 802AB728 00274CE8  80 04 00 04 */	lwz r0, 4(r4)
/* 802AB72C 00274CEC  2C 00 00 00 */	cmpwi r0, 0
/* 802AB730 00274CF0  40 82 FF F0 */	bne .L_802AB720
/* 802AB734 00274CF4  48 18 A7 C9 */	bl mtRand__2mlFi
/* 802AB738 00274CF8  54 60 10 3A */	slwi r0, r3, 2
/* 802AB73C 00274CFC  7C 76 02 14 */	add r3, r22, r0
/* 802AB740 00274D00  83 63 00 04 */	lwz r27, 4(r3)
/* 802AB744 00274D04  48 00 00 14 */	b .L_802AB758
.L_802AB748:
/* 802AB748 00274D08  3B BD 00 04 */	addi r29, r29, 4
.L_802AB74C:
/* 802AB74C 00274D0C  80 7D 00 00 */	lwz r3, 0(r29)
/* 802AB750 00274D10  2C 03 00 00 */	cmpwi r3, 0
/* 802AB754 00274D14  40 82 FF 34 */	bne .L_802AB688
.L_802AB758:
/* 802AB758 00274D18  2C 1B 00 00 */	cmpwi r27, 0
/* 802AB75C 00274D1C  40 82 00 0C */	bne .L_802AB768
/* 802AB760 00274D20  38 60 00 00 */	li r3, 0
/* 802AB764 00274D24  48 00 01 80 */	b .L_802AB8E4
.L_802AB768:
/* 802AB768 00274D28  4B FF C9 D9 */	bl func_802A8140
/* 802AB76C 00274D2C  2C 03 00 00 */	cmpwi r3, 0
/* 802AB770 00274D30  41 82 00 18 */	beq .L_802AB788
/* 802AB774 00274D34  38 02 B2 D8 */	addi r0, r2, lbl_8066B658@sda21
/* 802AB778 00274D38  7C 1B 00 40 */	cmplw r27, r0
/* 802AB77C 00274D3C  40 82 00 0C */	bne .L_802AB788
/* 802AB780 00274D40  38 60 00 00 */	li r3, 0
/* 802AB784 00274D44  48 00 01 60 */	b .L_802AB8E4
.L_802AB788:
/* 802AB788 00274D48  38 60 00 46 */	li r3, 0x46
/* 802AB78C 00274D4C  38 80 00 01 */	li r4, 1
/* 802AB790 00274D50  4B FF 7B 7D */	bl func_802A330C
/* 802AB794 00274D54  2C 03 00 00 */	cmpwi r3, 0
/* 802AB798 00274D58  40 82 00 0C */	bne .L_802AB7A4
/* 802AB79C 00274D5C  38 60 00 00 */	li r3, 0
/* 802AB7A0 00274D60  48 00 01 44 */	b .L_802AB8E4
.L_802AB7A4:
/* 802AB7A4 00274D64  38 60 00 34 */	li r3, 0x34
/* 802AB7A8 00274D68  4B FF 7D 3D */	bl func_802A34E4
/* 802AB7AC 00274D6C  2C 03 00 00 */	cmpwi r3, 0
/* 802AB7B0 00274D70  7C 7D 1B 78 */	mr r29, r3
/* 802AB7B4 00274D74  40 82 00 0C */	bne .L_802AB7C0
/* 802AB7B8 00274D78  38 60 00 00 */	li r3, 0
/* 802AB7BC 00274D7C  48 00 01 28 */	b .L_802AB8E4
.L_802AB7C0:
/* 802AB7C0 00274D80  41 82 01 00 */	beq .L_802AB8C0
/* 802AB7C4 00274D84  90 3F 00 2C */	stw r1, 0x2c(r31)
/* 802AB7C8 00274D88  4B FF 82 B9 */	bl func_802A3A80
/* 802AB7CC 00274D8C  3C 60 80 54 */	lis r3, __vt__cf_CVS_THREAD_BATTLE_END_SP@ha
/* 802AB7D0 00274D90  2C 9E 00 00 */	cmpwi cr1, r30, 0
/* 802AB7D4 00274D94  38 63 D9 48 */	addi r3, r3, __vt__cf_CVS_THREAD_BATTLE_END_SP@l
/* 802AB7D8 00274D98  90 7D 00 1C */	stw r3, 0x1c(r29)
/* 802AB7DC 00274D9C  38 80 00 00 */	li r4, 0
/* 802AB7E0 00274DA0  93 DD 00 2C */	stw r30, 0x2c(r29)
/* 802AB7E4 00274DA4  93 7D 00 30 */	stw r27, 0x30(r29)
/* 802AB7E8 00274DA8  40 85 00 D8 */	ble cr1, .L_802AB8C0
/* 802AB7EC 00274DAC  2C 1E 00 08 */	cmpwi r30, 8
/* 802AB7F0 00274DB0  38 BE FF F8 */	addi r5, r30, -8
/* 802AB7F4 00274DB4  40 81 00 88 */	ble .L_802AB87C
/* 802AB7F8 00274DB8  38 C0 00 00 */	li r6, 0
/* 802AB7FC 00274DBC  41 84 00 18 */	blt cr1, .L_802AB814
/* 802AB800 00274DC0  3C 60 80 00 */	lis r3, 0x7FFFFFFE@ha
/* 802AB804 00274DC4  38 03 FF FE */	addi r0, r3, 0x7FFFFFFE@l
/* 802AB808 00274DC8  7C 1E 00 00 */	cmpw r30, r0
/* 802AB80C 00274DCC  41 81 00 08 */	bgt .L_802AB814
/* 802AB810 00274DD0  38 C0 00 01 */	li r6, 1
.L_802AB814:
/* 802AB814 00274DD4  2C 06 00 00 */	cmpwi r6, 0
/* 802AB818 00274DD8  41 82 00 64 */	beq .L_802AB87C
/* 802AB81C 00274DDC  7F A6 EB 78 */	mr r6, r29
/* 802AB820 00274DE0  38 7F 00 08 */	addi r3, r31, 8
/* 802AB824 00274DE4  48 00 00 50 */	b .L_802AB874
.L_802AB828:
/* 802AB828 00274DE8  80 03 00 00 */	lwz r0, 0(r3)
/* 802AB82C 00274DEC  38 84 00 08 */	addi r4, r4, 8
/* 802AB830 00274DF0  90 06 00 20 */	stw r0, 0x20(r6)
/* 802AB834 00274DF4  80 03 00 04 */	lwz r0, 4(r3)
/* 802AB838 00274DF8  90 06 00 24 */	stw r0, 0x24(r6)
/* 802AB83C 00274DFC  80 03 00 08 */	lwz r0, 8(r3)
/* 802AB840 00274E00  90 06 00 28 */	stw r0, 0x28(r6)
/* 802AB844 00274E04  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802AB848 00274E08  90 06 00 2C */	stw r0, 0x2c(r6)
/* 802AB84C 00274E0C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802AB850 00274E10  90 06 00 30 */	stw r0, 0x30(r6)
/* 802AB854 00274E14  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802AB858 00274E18  90 06 00 34 */	stw r0, 0x34(r6)
/* 802AB85C 00274E1C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802AB860 00274E20  90 06 00 38 */	stw r0, 0x38(r6)
/* 802AB864 00274E24  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802AB868 00274E28  38 63 00 20 */	addi r3, r3, 0x20
/* 802AB86C 00274E2C  90 06 00 3C */	stw r0, 0x3c(r6)
/* 802AB870 00274E30  38 C6 00 20 */	addi r6, r6, 0x20
.L_802AB874:
/* 802AB874 00274E34  7C 04 28 00 */	cmpw r4, r5
/* 802AB878 00274E38  41 80 FF B0 */	blt .L_802AB828
.L_802AB87C:
/* 802AB87C 00274E3C  54 80 10 3A */	slwi r0, r4, 2
/* 802AB880 00274E40  38 7F 00 08 */	addi r3, r31, 8
/* 802AB884 00274E44  7C 63 02 14 */	add r3, r3, r0
/* 802AB888 00274E48  7C BD 02 14 */	add r5, r29, r0
/* 802AB88C 00274E4C  48 00 00 18 */	b .L_802AB8A4
.L_802AB890:
/* 802AB890 00274E50  80 03 00 00 */	lwz r0, 0(r3)
/* 802AB894 00274E54  38 84 00 01 */	addi r4, r4, 1
/* 802AB898 00274E58  90 05 00 20 */	stw r0, 0x20(r5)
/* 802AB89C 00274E5C  38 A5 00 04 */	addi r5, r5, 4
/* 802AB8A0 00274E60  38 63 00 04 */	addi r3, r3, 4
.L_802AB8A4:
/* 802AB8A4 00274E64  7C 04 F0 00 */	cmpw r4, r30
/* 802AB8A8 00274E68  41 80 FF E8 */	blt .L_802AB890
/* 802AB8AC 00274E6C  48 00 00 14 */	b .L_802AB8C0
/* 802AB8B0 00274E70  38 60 00 00 */	li r3, 0
/* 802AB8B4 00274E74  38 80 00 00 */	li r4, 0
/* 802AB8B8 00274E78  38 A0 00 00 */	li r5, 0
/* 802AB8BC 00274E7C  48 01 03 01 */	bl __throw
.L_802AB8C0:
/* 802AB8C0 00274E80  3C A0 80 54 */	lis r5, lbl_8053D924@ha
/* 802AB8C4 00274E84  7F A3 EB 78 */	mr r3, r29
/* 802AB8C8 00274E88  38 A5 D9 24 */	addi r5, r5, lbl_8053D924@l
/* 802AB8CC 00274E8C  80 05 00 04 */	lwz r0, 4(r5)
/* 802AB8D0 00274E90  80 85 00 00 */	lwz r4, 0(r5)
/* 802AB8D4 00274E94  90 9D 00 00 */	stw r4, 0(r29)
/* 802AB8D8 00274E98  90 1D 00 04 */	stw r0, 4(r29)
/* 802AB8DC 00274E9C  80 05 00 08 */	lwz r0, 8(r5)
/* 802AB8E0 00274EA0  90 1D 00 08 */	stw r0, 8(r29)
.L_802AB8E4:
/* 802AB8E4 00274EA4  7F EA FB 78 */	mr r10, r31
/* 802AB8E8 00274EA8  BA CA 00 38 */	lmw r22, 0x38(r10)
/* 802AB8EC 00274EAC  81 41 00 00 */	lwz r10, 0(r1)
/* 802AB8F0 00274EB0  80 0A 00 04 */	lwz r0, 4(r10)
/* 802AB8F4 00274EB4  7D 41 53 78 */	mr r1, r10
/* 802AB8F8 00274EB8  7C 08 03 A6 */	mtlr r0
/* 802AB8FC 00274EBC  4E 80 00 20 */	blr 

.global func_802AB900
func_802AB900:
/* 802AB900 00274EC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AB904 00274EC4  7C 08 02 A6 */	mflr r0
/* 802AB908 00274EC8  3C A0 80 54 */	lis r5, lbl_8053D930@ha
/* 802AB90C 00274ECC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AB910 00274ED0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AB914 00274ED4  7C 7F 1B 78 */	mr r31, r3
/* 802AB918 00274ED8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AB91C 00274EDC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802AB920 00274EE0  93 81 00 10 */	stw r28, 0x10(r1)
/* 802AB924 00274EE4  84 85 D9 30 */	lwzu r4, lbl_8053D930@l(r5)
/* 802AB928 00274EE8  80 05 00 04 */	lwz r0, 4(r5)
/* 802AB92C 00274EEC  90 03 00 04 */	stw r0, 4(r3)
/* 802AB930 00274EF0  90 83 00 00 */	stw r4, 0(r3)
/* 802AB934 00274EF4  80 05 00 08 */	lwz r0, 8(r5)
/* 802AB938 00274EF8  90 03 00 08 */	stw r0, 8(r3)
.L_802AB93C:
/* 802AB93C 00274EFC  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802AB940 00274F00  8B C3 00 00 */	lbz r30, 0(r3)
/* 802AB944 00274F04  7F DE 07 75 */	extsb. r30, r30
/* 802AB948 00274F08  41 81 00 0C */	bgt .L_802AB954
/* 802AB94C 00274F0C  3B A0 00 00 */	li r29, 0
/* 802AB950 00274F10  48 00 00 50 */	b .L_802AB9A0
.L_802AB954:
/* 802AB954 00274F14  7F FC FB 78 */	mr r28, r31
/* 802AB958 00274F18  3B A0 00 00 */	li r29, 0
/* 802AB95C 00274F1C  48 00 00 34 */	b .L_802AB990
.L_802AB960:
/* 802AB960 00274F20  80 7C 00 20 */	lwz r3, 0x20(r28)
/* 802AB964 00274F24  2C 03 00 00 */	cmpwi r3, 0
/* 802AB968 00274F28  41 82 00 20 */	beq .L_802AB988
/* 802AB96C 00274F2C  4B FF BE 7D */	bl func_802A77E8
/* 802AB970 00274F30  7C 1E 18 00 */	cmpw r30, r3
/* 802AB974 00274F34  40 82 00 14 */	bne .L_802AB988
/* 802AB978 00274F38  57 A0 10 3A */	slwi r0, r29, 2
/* 802AB97C 00274F3C  7C 7F 02 14 */	add r3, r31, r0
/* 802AB980 00274F40  83 A3 00 20 */	lwz r29, 0x20(r3)
/* 802AB984 00274F44  48 00 00 1C */	b .L_802AB9A0
.L_802AB988:
/* 802AB988 00274F48  3B 9C 00 04 */	addi r28, r28, 4
/* 802AB98C 00274F4C  3B BD 00 01 */	addi r29, r29, 1
.L_802AB990:
/* 802AB990 00274F50  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 802AB994 00274F54  7C 1D 00 00 */	cmpw r29, r0
/* 802AB998 00274F58  41 80 FF C8 */	blt .L_802AB960
/* 802AB99C 00274F5C  3B A0 00 00 */	li r29, 0
.L_802AB9A0:
/* 802AB9A0 00274F60  2C 1D 00 00 */	cmpwi r29, 0
/* 802AB9A4 00274F64  40 82 00 1C */	bne .L_802AB9C0
/* 802AB9A8 00274F68  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802AB9AC 00274F6C  7F E3 FB 78 */	mr r3, r31
/* 802AB9B0 00274F70  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AB9B4 00274F74  7D 89 03 A6 */	mtctr r12
/* 802AB9B8 00274F78  4E 80 04 21 */	bctrl 
/* 802AB9BC 00274F7C  48 00 00 94 */	b .L_802ABA50
.L_802AB9C0:
/* 802AB9C0 00274F80  81 9D 00 00 */	lwz r12, 0(r29)
/* 802AB9C4 00274F84  7F A3 EB 78 */	mr r3, r29
/* 802AB9C8 00274F88  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802AB9CC 00274F8C  7D 89 03 A6 */	mtctr r12
/* 802AB9D0 00274F90  4E 80 04 21 */	bctrl 
/* 802AB9D4 00274F94  2C 03 00 00 */	cmpwi r3, 0
/* 802AB9D8 00274F98  40 82 00 54 */	bne .L_802ABA2C
/* 802AB9DC 00274F9C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802AB9E0 00274FA0  88 63 00 01 */	lbz r3, 1(r3)
/* 802AB9E4 00274FA4  7C 63 07 74 */	extsb r3, r3
/* 802AB9E8 00274FA8  48 01 22 85 */	bl labs
/* 802AB9EC 00274FAC  2C 1D 00 00 */	cmpwi r29, 0
/* 802AB9F0 00274FB0  7C 65 1B 78 */	mr r5, r3
/* 802AB9F4 00274FB4  41 82 00 08 */	beq .L_802AB9FC
/* 802AB9F8 00274FB8  3B BD 3E 9C */	addi r29, r29, 0x3e9c
.L_802AB9FC:
/* 802AB9FC 00274FBC  7F E3 FB 78 */	mr r3, r31
/* 802ABA00 00274FC0  7F A4 EB 78 */	mr r4, r29
/* 802ABA04 00274FC4  38 A5 0C E4 */	addi r5, r5, 0xce4
/* 802ABA08 00274FC8  4B FF 82 3D */	bl func_802A3C44
/* 802ABA0C 00274FCC  2C 03 00 00 */	cmpwi r3, 0
/* 802ABA10 00274FD0  40 82 00 1C */	bne .L_802ABA2C
/* 802ABA14 00274FD4  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802ABA18 00274FD8  7F E3 FB 78 */	mr r3, r31
/* 802ABA1C 00274FDC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802ABA20 00274FE0  7D 89 03 A6 */	mtctr r12
/* 802ABA24 00274FE4  4E 80 04 21 */	bctrl 
/* 802ABA28 00274FE8  48 00 00 28 */	b .L_802ABA50
.L_802ABA2C:
/* 802ABA2C 00274FEC  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802ABA30 00274FF0  38 63 00 02 */	addi r3, r3, 2
/* 802ABA34 00274FF4  90 7F 00 30 */	stw r3, 0x30(r31)
/* 802ABA38 00274FF8  88 03 00 00 */	lbz r0, 0(r3)
/* 802ABA3C 00274FFC  7C 00 07 75 */	extsb. r0, r0
/* 802ABA40 00275000  41 82 00 10 */	beq .L_802ABA50
/* 802ABA44 00275004  88 03 00 01 */	lbz r0, 1(r3)
/* 802ABA48 00275008  7C 00 07 75 */	extsb. r0, r0
/* 802ABA4C 0027500C  40 81 FE F0 */	ble .L_802AB93C
.L_802ABA50:
/* 802ABA50 00275010  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802ABA54 00275014  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802ABA58 00275018  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802ABA5C 0027501C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802ABA60 00275020  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802ABA64 00275024  7C 08 03 A6 */	mtlr r0
/* 802ABA68 00275028  38 21 00 20 */	addi r1, r1, 0x20
/* 802ABA6C 0027502C  4E 80 00 20 */	blr 

.global func_802ABA70
func_802ABA70:
/* 802ABA70 00275030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802ABA74 00275034  7C 08 02 A6 */	mflr r0
/* 802ABA78 00275038  90 01 00 14 */	stw r0, 0x14(r1)
/* 802ABA7C 0027503C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802ABA80 00275040  7C 7F 1B 78 */	mr r31, r3
/* 802ABA84 00275044  4B FF 84 05 */	bl func_802A3E88
/* 802ABA88 00275048  2C 03 00 00 */	cmpwi r3, 0
/* 802ABA8C 0027504C  40 82 00 20 */	bne .L_802ABAAC
/* 802ABA90 00275050  3C 80 80 54 */	lis r4, lbl_8053D93C@ha
/* 802ABA94 00275054  84 64 D9 3C */	lwzu r3, lbl_8053D93C@l(r4)
/* 802ABA98 00275058  80 04 00 04 */	lwz r0, 4(r4)
/* 802ABA9C 0027505C  90 1F 00 04 */	stw r0, 4(r31)
/* 802ABAA0 00275060  90 7F 00 00 */	stw r3, 0(r31)
/* 802ABAA4 00275064  80 04 00 08 */	lwz r0, 8(r4)
/* 802ABAA8 00275068  90 1F 00 08 */	stw r0, 8(r31)
.L_802ABAAC:
/* 802ABAAC 0027506C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802ABAB0 00275070  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802ABAB4 00275074  7C 08 03 A6 */	mtlr r0
/* 802ABAB8 00275078  38 21 00 10 */	addi r1, r1, 0x10
/* 802ABABC 0027507C  4E 80 00 20 */	blr 

.global func_802ABAC0
func_802ABAC0:
/* 802ABAC0 00275080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802ABAC4 00275084  7C 08 02 A6 */	mflr r0
/* 802ABAC8 00275088  90 01 00 14 */	stw r0, 0x14(r1)
/* 802ABACC 0027508C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802ABAD0 00275090  7C 9F 23 78 */	mr r31, r4
/* 802ABAD4 00275094  93 C1 00 08 */	stw r30, 8(r1)
/* 802ABAD8 00275098  7C 7E 1B 78 */	mr r30, r3
/* 802ABADC 0027509C  4B FF 81 11 */	bl func_802A3BEC
/* 802ABAE0 002750A0  7F C5 F3 78 */	mr r5, r30
/* 802ABAE4 002750A4  38 C0 00 00 */	li r6, 0
/* 802ABAE8 002750A8  38 60 00 00 */	li r3, 0
/* 802ABAEC 002750AC  48 00 00 28 */	b .L_802ABB14
.L_802ABAF0:
/* 802ABAF0 002750B0  80 85 00 20 */	lwz r4, 0x20(r5)
/* 802ABAF4 002750B4  2C 04 00 00 */	cmpwi r4, 0
/* 802ABAF8 002750B8  41 82 00 08 */	beq .L_802ABB00
/* 802ABAFC 002750BC  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802ABB00:
/* 802ABB00 002750C0  7C 04 F8 40 */	cmplw r4, r31
/* 802ABB04 002750C4  40 82 00 08 */	bne .L_802ABB0C
/* 802ABB08 002750C8  90 65 00 20 */	stw r3, 0x20(r5)
.L_802ABB0C:
/* 802ABB0C 002750CC  38 A5 00 04 */	addi r5, r5, 4
/* 802ABB10 002750D0  38 C6 00 01 */	addi r6, r6, 1
.L_802ABB14:
/* 802ABB14 002750D4  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 802ABB18 002750D8  7C 06 00 00 */	cmpw r6, r0
/* 802ABB1C 002750DC  41 80 FF D4 */	blt .L_802ABAF0
/* 802ABB20 002750E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802ABB24 002750E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802ABB28 002750E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802ABB2C 002750EC  7C 08 03 A6 */	mtlr r0
/* 802ABB30 002750F0  38 21 00 10 */	addi r1, r1, 0x10
/* 802ABB34 002750F4  4E 80 00 20 */	blr 

.global func_802ABB38
func_802ABB38:
/* 802ABB38 002750F8  38 60 00 46 */	li r3, 0x46
/* 802ABB3C 002750FC  4E 80 00 20 */	blr 

.section extab, "wa"  # 0x800066E0 - 0x80021020

.global lbl_8001B0C8
lbl_8001B0C8:
	.4byte 0x50180000
	.4byte 0x000001DC
	.4byte 0x00000018
	.4byte 0x000002D0
	.4byte 0x00000028
	.4byte 0
	.4byte 0x90000000
	.4byte 0
	.4byte 0x000002C0
	.4byte 0x00000018
	.4byte 0x8D000018

.global lbl_8001B0F4
lbl_8001B0F4:
	.4byte 0x20080000
	.4byte 0

.global lbl_8001B0FC
lbl_8001B0FC:
	.4byte 0x08080000
	.4byte 0

.global lbl_8001B104
lbl_8001B104:
	.4byte 0x10080000
	.4byte 0


.section extabindex, "wa"  # 0x80021020 - 0x80039220

.4byte func_802AB5F0
	.4byte 0x00000310
	.4byte lbl_8001B0C8
	.4byte func_802AB900
	.4byte 0x00000170
	.4byte lbl_8001B0F4
	.4byte func_802ABA70
	.4byte 0x00000050
	.4byte lbl_8001B0FC
	.4byte func_802ABAC0
	.4byte 0x00000078
	.4byte lbl_8001B104