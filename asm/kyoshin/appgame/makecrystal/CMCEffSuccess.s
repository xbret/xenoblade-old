.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_802246EC, global
/* 802246EC 001EDCAC  3C C0 80 54 */	lis r6, __vt__CMCEffSuccess@ha
/* 802246F0 001EDCB0  38 A0 00 00 */	li r5, 0x0
/* 802246F4 001EDCB4  38 C6 98 50 */	addi r6, r6, __vt__CMCEffSuccess@l
/* 802246F8 001EDCB8  38 00 00 01 */	li r0, 0x1
/* 802246FC 001EDCBC  90 C3 00 00 */	stw r6, 0x0(r3)
/* 80224700 001EDCC0  98 A3 00 04 */	stb r5, 0x4(r3)
/* 80224704 001EDCC4  98 03 00 05 */	stb r0, 0x5(r3)
/* 80224708 001EDCC8  90 83 00 08 */	stw r4, 0x8(r3)
/* 8022470C 001EDCCC  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80224710 001EDCD0  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80224714 001EDCD4  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80224718 001EDCD8  98 A3 00 18 */	stb r5, 0x18(r3)
/* 8022471C 001EDCDC  4E 80 00 20 */	blr
.endfn func_802246EC

.fn func_80224720, global
/* 80224720 001EDCE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224724 001EDCE4  7C 08 02 A6 */	mflr r0
/* 80224728 001EDCE8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8022472C 001EDCEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224730 001EDCF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80224734 001EDCF4  7C 7F 1B 78 */	mr r31, r3
/* 80224738 001EDCF8  41 82 00 10 */	beq .L_80224748
/* 8022473C 001EDCFC  2C 04 00 00 */	cmpwi r4, 0x0
/* 80224740 001EDD00  40 81 00 08 */	ble .L_80224748
/* 80224744 001EDD04  48 21 04 E9 */	bl __dl__FPv
.L_80224748:
/* 80224748 001EDD08  7F E3 FB 78 */	mr r3, r31
/* 8022474C 001EDD0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80224750 001EDD10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224754 001EDD14  7C 08 03 A6 */	mtlr r0
/* 80224758 001EDD18  38 21 00 10 */	addi r1, r1, 0x10
/* 8022475C 001EDD1C  4E 80 00 20 */	blr
.endfn func_80224720

.fn func_80224760, global
/* 80224760 001EDD20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224764 001EDD24  7C 08 02 A6 */	mflr r0
/* 80224768 001EDD28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022476C 001EDD2C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 80224770 001EDD30  3F E0 80 50 */	lis r31, lbl_80504CFC@ha
/* 80224774 001EDD34  3B FF 4C FC */	addi r31, r31, lbl_80504CFC@l
/* 80224778 001EDD38  7C 7E 1B 78 */	mr r30, r3
/* 8022477C 001EDD3C  38 BF 00 FD */	addi r5, r31, 0xfd
/* 80224780 001EDD40  80 83 00 08 */	lwz r4, 0x8(r3)
/* 80224784 001EDD44  38 63 00 0C */	addi r3, r3, 0xc
/* 80224788 001EDD48  4B F1 26 FD */	bl func_80136E84
/* 8022478C 001EDD4C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80224790 001EDD50  38 9E 00 10 */	addi r4, r30, 0x10
/* 80224794 001EDD54  80 BE 00 08 */	lwz r5, 0x8(r30)
/* 80224798 001EDD58  38 DF 01 13 */	addi r6, r31, 0x113
/* 8022479C 001EDD5C  4B F1 27 6D */	bl func_80136F08
/* 802247A0 001EDD60  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802247A4 001EDD64  38 9E 00 14 */	addi r4, r30, 0x14
/* 802247A8 001EDD68  80 BE 00 08 */	lwz r5, 0x8(r30)
/* 802247AC 001EDD6C  38 DF 01 2C */	addi r6, r31, 0x12c
/* 802247B0 001EDD70  4B F1 27 59 */	bl func_80136F08
/* 802247B4 001EDD74  7F C3 F3 78 */	mr r3, r30
/* 802247B8 001EDD78  48 00 02 79 */	bl func_80224A30
/* 802247BC 001EDD7C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802247C0 001EDD80  38 80 00 00 */	li r4, 0x0
/* 802247C4 001EDD84  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802247C8 001EDD88  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802247CC 001EDD8C  7D 89 03 A6 */	mtctr r12
/* 802247D0 001EDD90  4E 80 04 21 */	bctrl
/* 802247D4 001EDD94  38 00 00 01 */	li r0, 0x1
/* 802247D8 001EDD98  98 1E 00 18 */	stb r0, 0x18(r30)
/* 802247DC 001EDD9C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 802247E0 001EDDA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802247E4 001EDDA4  7C 08 03 A6 */	mtlr r0
/* 802247E8 001EDDA8  38 21 00 10 */	addi r1, r1, 0x10
/* 802247EC 001EDDAC  4E 80 00 20 */	blr
.endfn func_80224760

.fn func_802247F0, global
/* 802247F0 001EDDB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802247F4 001EDDB4  7C 08 02 A6 */	mflr r0
/* 802247F8 001EDDB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802247FC 001EDDBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80224800 001EDDC0  7C 7F 1B 78 */	mr r31, r3
/* 80224804 001EDDC4  88 03 00 18 */	lbz r0, 0x18(r3)
/* 80224808 001EDDC8  2C 00 00 00 */	cmpwi r0, 0x0
/* 8022480C 001EDDCC  41 82 00 40 */	beq .L_8022484C
/* 80224810 001EDDD0  88 03 00 04 */	lbz r0, 0x4(r3)
/* 80224814 001EDDD4  2C 00 00 01 */	cmpwi r0, 0x1
/* 80224818 001EDDD8  41 82 00 10 */	beq .L_80224828
/* 8022481C 001EDDDC  2C 00 00 03 */	cmpwi r0, 0x3
/* 80224820 001EDDE0  41 82 00 10 */	beq .L_80224830
/* 80224824 001EDDE4  48 00 00 10 */	b .L_80224834
.L_80224828:
/* 80224828 001EDDE8  48 00 01 71 */	bl func_80224998
/* 8022482C 001EDDEC  48 00 00 08 */	b .L_80224834
.L_80224830:
/* 80224830 001EDDF0  48 00 01 B5 */	bl func_802249E4
.L_80224834:
/* 80224834 001EDDF4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80224838 001EDDF8  38 80 00 00 */	li r4, 0x0
/* 8022483C 001EDDFC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80224840 001EDE00  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80224844 001EDE04  7D 89 03 A6 */	mtctr r12
/* 80224848 001EDE08  4E 80 04 21 */	bctrl
.L_8022484C:
/* 8022484C 001EDE0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224850 001EDE10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80224854 001EDE14  7C 08 03 A6 */	mtlr r0
/* 80224858 001EDE18  38 21 00 10 */	addi r1, r1, 0x10
/* 8022485C 001EDE1C  4E 80 00 20 */	blr
.endfn func_802247F0

.fn func_80224860, global
/* 80224860 001EDE20  88 03 00 18 */	lbz r0, 0x18(r3)
/* 80224864 001EDE24  2C 00 00 00 */	cmpwi r0, 0x0
/* 80224868 001EDE28  4D 82 00 20 */	beqlr
/* 8022486C 001EDE2C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80224870 001EDE30  38 A0 00 00 */	li r5, 0x0
/* 80224874 001EDE34  38 C0 00 01 */	li r6, 0x1
/* 80224878 001EDE38  4B F1 27 C0 */	b func_80137038
/* 8022487C 001EDE3C  4E 80 00 20 */	blr
.endfn func_80224860

.fn func_80224880, global
/* 80224880 001EDE40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224884 001EDE44  7C 08 02 A6 */	mflr r0
/* 80224888 001EDE48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022488C 001EDE4C  38 00 00 00 */	li r0, 0x0
/* 80224890 001EDE50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80224894 001EDE54  7C 7F 1B 78 */	mr r31, r3
/* 80224898 001EDE58  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8022489C 001EDE5C  98 03 00 18 */	stb r0, 0x18(r3)
/* 802248A0 001EDE60  2C 04 00 00 */	cmpwi r4, 0x0
/* 802248A4 001EDE64  41 82 00 28 */	beq .L_802248CC
/* 802248A8 001EDE68  41 82 00 1C */	beq .L_802248C4
/* 802248AC 001EDE6C  7C 83 23 78 */	mr r3, r4
/* 802248B0 001EDE70  38 80 00 01 */	li r4, 0x1
/* 802248B4 001EDE74  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802248B8 001EDE78  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802248BC 001EDE7C  7D 89 03 A6 */	mtctr r12
/* 802248C0 001EDE80  4E 80 04 21 */	bctrl
.L_802248C4:
/* 802248C4 001EDE84  38 00 00 00 */	li r0, 0x0
/* 802248C8 001EDE88  90 1F 00 0C */	stw r0, 0xc(r31)
.L_802248CC:
/* 802248CC 001EDE8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802248D0 001EDE90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802248D4 001EDE94  7C 08 03 A6 */	mtlr r0
/* 802248D8 001EDE98  38 21 00 10 */	addi r1, r1, 0x10
/* 802248DC 001EDE9C  4E 80 00 20 */	blr
.endfn func_80224880

.fn func_802248E0, global
/* 802248E0 001EDEA0  88 63 00 05 */	lbz r3, 0x5(r3)
/* 802248E4 001EDEA4  4E 80 00 20 */	blr
.endfn func_802248E0

.fn func_802248E8, global
/* 802248E8 001EDEA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802248EC 001EDEAC  7C 08 02 A6 */	mflr r0
/* 802248F0 001EDEB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802248F4 001EDEB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802248F8 001EDEB8  7C 7F 1B 78 */	mr r31, r3
/* 802248FC 001EDEBC  88 03 00 04 */	lbz r0, 0x4(r3)
/* 80224900 001EDEC0  2C 00 00 00 */	cmpwi r0, 0x0
/* 80224904 001EDEC4  40 82 00 2C */	bne .L_80224930
/* 80224908 001EDEC8  38 00 00 01 */	li r0, 0x1
/* 8022490C 001EDECC  98 03 00 04 */	stb r0, 0x4(r3)
/* 80224910 001EDED0  48 00 01 21 */	bl func_80224A30
/* 80224914 001EDED4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80224918 001EDED8  38 00 00 00 */	li r0, 0x0
/* 8022491C 001EDEDC  C0 02 AA 90 */	lfs f0, lbl_8066AE10@sda21(r2)
/* 80224920 001EDEE0  38 60 00 91 */	li r3, 0x91
/* 80224924 001EDEE4  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80224928 001EDEE8  98 1F 00 05 */	stb r0, 0x5(r31)
/* 8022492C 001EDEEC  4B F1 37 4D */	bl func_80138078
.L_80224930:
/* 80224930 001EDEF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224934 001EDEF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80224938 001EDEF8  7C 08 03 A6 */	mtlr r0
/* 8022493C 001EDEFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80224940 001EDF00  4E 80 00 20 */	blr
.endfn func_802248E8

.fn func_80224944, global
/* 80224944 001EDF04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224948 001EDF08  7C 08 02 A6 */	mflr r0
/* 8022494C 001EDF0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224950 001EDF10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80224954 001EDF14  7C 7F 1B 78 */	mr r31, r3
/* 80224958 001EDF18  88 03 00 04 */	lbz r0, 0x4(r3)
/* 8022495C 001EDF1C  28 00 00 02 */	cmplwi r0, 0x2
/* 80224960 001EDF20  40 82 00 24 */	bne .L_80224984
/* 80224964 001EDF24  38 00 00 03 */	li r0, 0x3
/* 80224968 001EDF28  98 03 00 04 */	stb r0, 0x4(r3)
/* 8022496C 001EDF2C  48 00 01 4D */	bl func_80224AB8
/* 80224970 001EDF30  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80224974 001EDF34  38 00 00 00 */	li r0, 0x0
/* 80224978 001EDF38  C0 02 AA 90 */	lfs f0, lbl_8066AE10@sda21(r2)
/* 8022497C 001EDF3C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80224980 001EDF40  98 1F 00 05 */	stb r0, 0x5(r31)
.L_80224984:
/* 80224984 001EDF44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224988 001EDF48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022498C 001EDF4C  7C 08 03 A6 */	mtlr r0
/* 80224990 001EDF50  38 21 00 10 */	addi r1, r1, 0x10
/* 80224994 001EDF54  4E 80 00 20 */	blr
.endfn func_80224944

.fn func_80224998, global
/* 80224998 001EDF58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022499C 001EDF5C  7C 08 02 A6 */	mflr r0
/* 802249A0 001EDF60  C0 22 AA 94 */	lfs f1, lbl_8066AE14@sda21(r2)
/* 802249A4 001EDF64  90 01 00 14 */	stw r0, 0x14(r1)
/* 802249A8 001EDF68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802249AC 001EDF6C  7C 7F 1B 78 */	mr r31, r3
/* 802249B0 001EDF70  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802249B4 001EDF74  4B F1 2A 91 */	bl func_80137444
/* 802249B8 001EDF78  2C 03 00 00 */	cmpwi r3, 0x0
/* 802249BC 001EDF7C  41 82 00 14 */	beq .L_802249D0
/* 802249C0 001EDF80  38 60 00 02 */	li r3, 0x2
/* 802249C4 001EDF84  38 00 00 01 */	li r0, 0x1
/* 802249C8 001EDF88  98 7F 00 04 */	stb r3, 0x4(r31)
/* 802249CC 001EDF8C  98 1F 00 05 */	stb r0, 0x5(r31)
.L_802249D0:
/* 802249D0 001EDF90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802249D4 001EDF94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802249D8 001EDF98  7C 08 03 A6 */	mtlr r0
/* 802249DC 001EDF9C  38 21 00 10 */	addi r1, r1, 0x10
/* 802249E0 001EDFA0  4E 80 00 20 */	blr
.endfn func_80224998

.fn func_802249E4, global
/* 802249E4 001EDFA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802249E8 001EDFA8  7C 08 02 A6 */	mflr r0
/* 802249EC 001EDFAC  C0 22 AA 94 */	lfs f1, lbl_8066AE14@sda21(r2)
/* 802249F0 001EDFB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802249F4 001EDFB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802249F8 001EDFB8  7C 7F 1B 78 */	mr r31, r3
/* 802249FC 001EDFBC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80224A00 001EDFC0  4B F1 2A 45 */	bl func_80137444
/* 80224A04 001EDFC4  2C 03 00 00 */	cmpwi r3, 0x0
/* 80224A08 001EDFC8  41 82 00 14 */	beq .L_80224A1C
/* 80224A0C 001EDFCC  38 60 00 00 */	li r3, 0x0
/* 80224A10 001EDFD0  38 00 00 01 */	li r0, 0x1
/* 80224A14 001EDFD4  98 7F 00 04 */	stb r3, 0x4(r31)
/* 80224A18 001EDFD8  98 1F 00 05 */	stb r0, 0x5(r31)
.L_80224A1C:
/* 80224A1C 001EDFDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224A20 001EDFE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80224A24 001EDFE4  7C 08 03 A6 */	mtlr r0
/* 80224A28 001EDFE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80224A2C 001EDFEC  4E 80 00 20 */	blr
.endfn func_802249E4

.fn func_80224A30, global
/* 80224A30 001EDFF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224A34 001EDFF4  7C 08 02 A6 */	mflr r0
/* 80224A38 001EDFF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224A3C 001EDFFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80224A40 001EE000  7C 7F 1B 78 */	mr r31, r3
/* 80224A44 001EE004  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80224A48 001EE008  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80224A4C 001EE00C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80224A50 001EE010  7D 89 03 A6 */	mtctr r12
/* 80224A54 001EE014  4E 80 04 21 */	bctrl
/* 80224A58 001EE018  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80224A5C 001EE01C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80224A60 001EE020  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80224A64 001EE024  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80224A68 001EE028  7D 89 03 A6 */	mtctr r12
/* 80224A6C 001EE02C  4E 80 04 21 */	bctrl
/* 80224A70 001EE030  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80224A74 001EE034  38 A0 00 01 */	li r5, 0x1
/* 80224A78 001EE038  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80224A7C 001EE03C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80224A80 001EE040  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80224A84 001EE044  7D 89 03 A6 */	mtctr r12
/* 80224A88 001EE048  4E 80 04 21 */	bctrl
/* 80224A8C 001EE04C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80224A90 001EE050  38 80 00 00 */	li r4, 0x0
/* 80224A94 001EE054  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80224A98 001EE058  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80224A9C 001EE05C  7D 89 03 A6 */	mtctr r12
/* 80224AA0 001EE060  4E 80 04 21 */	bctrl
/* 80224AA4 001EE064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224AA8 001EE068  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80224AAC 001EE06C  7C 08 03 A6 */	mtlr r0
/* 80224AB0 001EE070  38 21 00 10 */	addi r1, r1, 0x10
/* 80224AB4 001EE074  4E 80 00 20 */	blr
.endfn func_80224A30

.fn func_80224AB8, global
/* 80224AB8 001EE078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224ABC 001EE07C  7C 08 02 A6 */	mflr r0
/* 80224AC0 001EE080  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224AC4 001EE084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80224AC8 001EE088  7C 7F 1B 78 */	mr r31, r3
/* 80224ACC 001EE08C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80224AD0 001EE090  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80224AD4 001EE094  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80224AD8 001EE098  7D 89 03 A6 */	mtctr r12
/* 80224ADC 001EE09C  4E 80 04 21 */	bctrl
/* 80224AE0 001EE0A0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80224AE4 001EE0A4  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80224AE8 001EE0A8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80224AEC 001EE0AC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80224AF0 001EE0B0  7D 89 03 A6 */	mtctr r12
/* 80224AF4 001EE0B4  4E 80 04 21 */	bctrl
/* 80224AF8 001EE0B8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80224AFC 001EE0BC  38 A0 00 01 */	li r5, 0x1
/* 80224B00 001EE0C0  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80224B04 001EE0C4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80224B08 001EE0C8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80224B0C 001EE0CC  7D 89 03 A6 */	mtctr r12
/* 80224B10 001EE0D0  4E 80 04 21 */	bctrl
/* 80224B14 001EE0D4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80224B18 001EE0D8  38 80 00 00 */	li r4, 0x0
/* 80224B1C 001EE0DC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80224B20 001EE0E0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80224B24 001EE0E4  7D 89 03 A6 */	mtctr r12
/* 80224B28 001EE0E8  4E 80 04 21 */	bctrl
/* 80224B2C 001EE0EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224B30 001EE0F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80224B34 001EE0F4  7C 08 03 A6 */	mtlr r0
/* 80224B38 001EE0F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80224B3C 001EE0FC  4E 80 00 20 */	blr
.endfn func_80224AB8

# 0x80015044 - 0x80015094
.section extab, "a"
.balign 4

.obj "@etb_80015044", local
.hidden "@etb_80015044"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80015044"

.obj "@etb_8001504C", local
.hidden "@etb_8001504C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001504C"

.obj "@etb_80015054", local
.hidden "@etb_80015054"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80015054"

.obj "@etb_8001505C", local
.hidden "@etb_8001505C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001505C"

.obj "@etb_80015064", local
.hidden "@etb_80015064"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80015064"

.obj "@etb_8001506C", local
.hidden "@etb_8001506C"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8001506C"

.obj "@etb_80015074", local
.hidden "@etb_80015074"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80015074"

.obj "@etb_8001507C", local
.hidden "@etb_8001507C"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8001507C"

.obj "@etb_80015084", local
.hidden "@etb_80015084"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80015084"

.obj "@etb_8001508C", local
.hidden "@etb_8001508C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001508C"

# 0x8002DF14 - 0x8002DF8C
.section extabindex, "a"
.balign 4

.obj "@eti_8002DF14", local
.hidden "@eti_8002DF14"
	.4byte func_80224720
	.4byte 0x00000040
	.4byte "@etb_80015044"
.endobj "@eti_8002DF14"

.obj "@eti_8002DF20", local
.hidden "@eti_8002DF20"
	.4byte func_80224760
	.4byte 0x00000090
	.4byte "@etb_8001504C"
.endobj "@eti_8002DF20"

.obj "@eti_8002DF2C", local
.hidden "@eti_8002DF2C"
	.4byte func_802247F0
	.4byte 0x00000070
	.4byte "@etb_80015054"
.endobj "@eti_8002DF2C"

.obj "@eti_8002DF38", local
.hidden "@eti_8002DF38"
	.4byte func_80224880
	.4byte 0x00000060
	.4byte "@etb_8001505C"
.endobj "@eti_8002DF38"

.obj "@eti_8002DF44", local
.hidden "@eti_8002DF44"
	.4byte func_802248E8
	.4byte 0x0000005C
	.4byte "@etb_80015064"
.endobj "@eti_8002DF44"

.obj "@eti_8002DF50", local
.hidden "@eti_8002DF50"
	.4byte func_80224944
	.4byte 0x00000054
	.4byte "@etb_8001506C"
.endobj "@eti_8002DF50"

.obj "@eti_8002DF5C", local
.hidden "@eti_8002DF5C"
	.4byte func_80224998
	.4byte 0x0000004C
	.4byte "@etb_80015074"
.endobj "@eti_8002DF5C"

.obj "@eti_8002DF68", local
.hidden "@eti_8002DF68"
	.4byte func_802249E4
	.4byte 0x0000004C
	.4byte "@etb_8001507C"
.endobj "@eti_8002DF68"

.obj "@eti_8002DF74", local
.hidden "@eti_8002DF74"
	.4byte func_80224A30
	.4byte 0x00000088
	.4byte "@etb_80015084"
.endobj "@eti_8002DF74"

.obj "@eti_8002DF80", local
.hidden "@eti_8002DF80"
	.4byte func_80224AB8
	.4byte 0x00000088
	.4byte "@etb_8001508C"
.endobj "@eti_8002DF80"
