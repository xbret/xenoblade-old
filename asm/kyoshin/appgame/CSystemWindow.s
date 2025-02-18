.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CSystemWindow, global
/* 801245EC 000EDBAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801245F0 000EDBB0  7C 08 02 A6 */	mflr r0
/* 801245F4 000EDBB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801245F8 000EDBB8  BF 41 00 08 */	stmw r26, 8(r1)
/* 801245FC 000EDBBC  7C 7B 1B 78 */	mr r27, r3
/* 80124600 000EDBC0  7C 9C 23 78 */	mr r28, r4
/* 80124604 000EDBC4  7C BD 2B 78 */	mr r29, r5
/* 80124608 000EDBC8  7C DE 33 78 */	mr r30, r6
/* 8012460C 000EDBCC  7C FF 3B 78 */	mr r31, r7
/* 80124610 000EDBD0  48 32 04 09 */	bl __ct__8CProcessFv
/* 80124614 000EDBD4  3C 60 80 53 */	lis r3, "__vt__18CTTask<9IUIWindow>"@ha
/* 80124618 000EDBD8  3C C0 80 53 */	lis r6, __vt__13CSystemWindow@ha
/* 8012461C 000EDBDC  38 63 0A 08 */	addi r3, r3, "__vt__18CTTask<9IUIWindow>"@l
/* 80124620 000EDBE0  90 7B 00 10 */	stw r3, 0x10(r27)
/* 80124624 000EDBE4  3D 60 80 51 */	lis r11, __ptmf_null@ha
/* 80124628 000EDBE8  38 C6 0B 48 */	addi r6, r6, __vt__13CSystemWindow@l
/* 8012462C 000EDBEC  84 6B CE 10 */	lwzu r3, __ptmf_null@l(r11)
/* 80124630 000EDBF0  38 A6 00 24 */	addi r5, r6, 0x24
/* 80124634 000EDBF4  3B 40 00 00 */	li r26, 0
/* 80124638 000EDBF8  39 00 FF FF */	li r8, -1
/* 8012463C 000EDBFC  80 0B 00 04 */	lwz r0, 4(r11)
/* 80124640 000EDC00  38 E0 00 01 */	li r7, 1
/* 80124644 000EDC04  90 1B 00 40 */	stw r0, 0x40(r27)
/* 80124648 000EDC08  38 06 00 AC */	addi r0, r6, 0xac
/* 8012464C 000EDC0C  38 80 00 00 */	li r4, 0
/* 80124650 000EDC10  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80124654 000EDC14  38 7B 00 78 */	addi r3, r27, 0x78
/* 80124658 000EDC18  81 2B 00 08 */	lwz r9, 8(r11)
/* 8012465C 000EDC1C  91 3B 00 44 */	stw r9, 0x44(r27)
/* 80124660 000EDC20  81 4B 00 00 */	lwz r10, 0(r11)
/* 80124664 000EDC24  81 2B 00 04 */	lwz r9, 4(r11)
/* 80124668 000EDC28  91 3B 00 4C */	stw r9, 0x4c(r27)
/* 8012466C 000EDC2C  91 5B 00 48 */	stw r10, 0x48(r27)
/* 80124670 000EDC30  81 2B 00 08 */	lwz r9, 8(r11)
/* 80124674 000EDC34  91 3B 00 50 */	stw r9, 0x50(r27)
/* 80124678 000EDC38  93 5B 00 54 */	stw r26, 0x54(r27)
/* 8012467C 000EDC3C  93 5B 00 58 */	stw r26, 0x58(r27)
/* 80124680 000EDC40  93 5B 00 5C */	stw r26, 0x5c(r27)
/* 80124684 000EDC44  91 1B 00 60 */	stw r8, 0x60(r27)
/* 80124688 000EDC48  9B 5B 00 64 */	stb r26, 0x64(r27)
/* 8012468C 000EDC4C  9B 5B 00 65 */	stb r26, 0x65(r27)
/* 80124690 000EDC50  9B 5B 00 66 */	stb r26, 0x66(r27)
/* 80124694 000EDC54  98 FB 00 67 */	stb r7, 0x67(r27)
/* 80124698 000EDC58  93 5B 00 68 */	stw r26, 0x68(r27)
/* 8012469C 000EDC5C  90 DB 00 10 */	stw r6, 0x10(r27)
/* 801246A0 000EDC60  90 BB 00 6C */	stw r5, 0x6c(r27)
/* 801246A4 000EDC64  90 1B 00 70 */	stw r0, 0x70(r27)
/* 801246A8 000EDC68  93 9B 00 74 */	stw r28, 0x74(r27)
/* 801246AC 000EDC6C  48 10 6F 6D */	bl __ct__CSysWin
/* 801246B0 000EDC70  2C 1E 00 00 */	cmpwi r30, 0
/* 801246B4 000EDC74  9B 5B 00 B4 */	stb r26, 0xb4(r27)
/* 801246B8 000EDC78  9B BB 00 B5 */	stb r29, 0xb5(r27)
/* 801246BC 000EDC7C  9B 5B 01 B6 */	stb r26, 0x1b6(r27)
/* 801246C0 000EDC80  41 82 00 14 */	beq .L_801246D4
/* 801246C4 000EDC84  7F C4 F3 78 */	mr r4, r30
/* 801246C8 000EDC88  38 7B 00 B6 */	addi r3, r27, 0xb6
/* 801246CC 000EDC8C  48 19 DF ED */	bl strcpy
/* 801246D0 000EDC90  48 00 00 08 */	b .L_801246D8
.L_801246D4:
/* 801246D4 000EDC94  9B 5B 00 B6 */	stb r26, 0xb6(r27)
.L_801246D8:
/* 801246D8 000EDC98  2C 1F 00 00 */	cmpwi r31, 0
/* 801246DC 000EDC9C  41 82 00 14 */	beq .L_801246F0
/* 801246E0 000EDCA0  7F E4 FB 78 */	mr r4, r31
/* 801246E4 000EDCA4  38 7B 01 36 */	addi r3, r27, 0x136
/* 801246E8 000EDCA8  48 19 DF D1 */	bl strcpy
/* 801246EC 000EDCAC  48 00 00 0C */	b .L_801246F8
.L_801246F0:
/* 801246F0 000EDCB0  38 00 00 00 */	li r0, 0
/* 801246F4 000EDCB4  98 1B 01 36 */	stb r0, 0x136(r27)
.L_801246F8:
/* 801246F8 000EDCB8  7F 63 DB 78 */	mr r3, r27
/* 801246FC 000EDCBC  BB 41 00 08 */	lmw r26, 8(r1)
/* 80124700 000EDCC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80124704 000EDCC4  7C 08 03 A6 */	mtlr r0
/* 80124708 000EDCC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8012470C 000EDCCC  4E 80 00 20 */	blr
.endfn __ct__CSystemWindow

.fn __dt__13CSystemWindowFv, global
/* 80124710 000EDCD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80124714 000EDCD4  7C 08 02 A6 */	mflr r0
/* 80124718 000EDCD8  2C 03 00 00 */	cmpwi r3, 0
/* 8012471C 000EDCDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80124720 000EDCE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80124724 000EDCE4  7C 9F 23 78 */	mr r31, r4
/* 80124728 000EDCE8  93 C1 00 08 */	stw r30, 8(r1)
/* 8012472C 000EDCEC  7C 7E 1B 78 */	mr r30, r3
/* 80124730 000EDCF0  41 82 00 38 */	beq .L_80124768
/* 80124734 000EDCF4  38 80 FF FF */	li r4, -1
/* 80124738 000EDCF8  38 63 00 78 */	addi r3, r3, 0x78
/* 8012473C 000EDCFC  48 10 6F 65 */	bl __dt__7CSysWinFv
/* 80124740 000EDD00  2C 1E 00 00 */	cmpwi r30, 0
/* 80124744 000EDD04  41 82 00 14 */	beq .L_80124758
/* 80124748 000EDD08  41 82 00 10 */	beq .L_80124758
/* 8012474C 000EDD0C  7F C3 F3 78 */	mr r3, r30
/* 80124750 000EDD10  38 80 00 00 */	li r4, 0
/* 80124754 000EDD14  48 32 03 E5 */	bl __dt__8CProcessFv
.L_80124758:
/* 80124758 000EDD18  2C 1F 00 00 */	cmpwi r31, 0
/* 8012475C 000EDD1C  40 81 00 0C */	ble .L_80124768
/* 80124760 000EDD20  7F C3 F3 78 */	mr r3, r30
/* 80124764 000EDD24  48 31 04 C9 */	bl __dl__FPv
.L_80124768:
/* 80124768 000EDD28  7F C3 F3 78 */	mr r3, r30
/* 8012476C 000EDD2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80124770 000EDD30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80124774 000EDD34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80124778 000EDD38  7C 08 03 A6 */	mtlr r0
/* 8012477C 000EDD3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80124780 000EDD40  4E 80 00 20 */	blr 
.endfn __dt__13CSystemWindowFv

.fn func_80124784, global
/* 80124784 000EDD44  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80124788 000EDD48  7C 08 02 A6 */	mflr r0
/* 8012478C 000EDD4C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80124790 000EDD50  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80124794 000EDD54  7C 7F 1B 78 */	mr r31, r3
/* 80124798 000EDD58  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 8012479C 000EDD5C  54 00 17 FF */	rlwinm. r0, r0, 2, 0x1f, 0x1f
/* 801247A0 000EDD60  98 03 01 B6 */	stb r0, 0x1b6(r3)
/* 801247A4 000EDD64  40 82 00 0C */	bne .L_801247B0
/* 801247A8 000EDD68  38 60 00 01 */	li r3, 1
/* 801247AC 000EDD6C  4B F5 E1 A1 */	bl func_8008294C
.L_801247B0:
/* 801247B0 000EDD70  2C 1F 00 00 */	cmpwi r31, 0
/* 801247B4 000EDD74  7F E4 FB 78 */	mr r4, r31
/* 801247B8 000EDD78  41 82 00 08 */	beq .L_801247C0
/* 801247BC 000EDD7C  38 9F 00 70 */	addi r4, r31, 0x70
.L_801247C0:
/* 801247C0 000EDD80  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 801247C4 000EDD84  38 A0 00 0D */	li r5, 0xd
/* 801247C8 000EDD88  38 C0 00 00 */	li r6, 0
/* 801247CC 000EDD8C  48 37 16 E9 */	bl func_80495EB4
/* 801247D0 000EDD90  88 9F 00 B5 */	lbz r4, 0xb5(r31)
/* 801247D4 000EDD94  38 61 00 08 */	addi r3, r1, 8
/* 801247D8 000EDD98  48 10 6E 41 */	bl __ct__CSysWin
/* 801247DC 000EDD9C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801247E0 000EDDA0  38 61 00 08 */	addi r3, r1, 8
/* 801247E4 000EDDA4  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 801247E8 000EDDA8  38 80 FF FF */	li r4, -1
/* 801247EC 000EDDAC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801247F0 000EDDB0  90 1F 00 80 */	stw r0, 0x80(r31)
/* 801247F4 000EDDB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801247F8 000EDDB8  90 1F 00 84 */	stw r0, 0x84(r31)
/* 801247FC 000EDDBC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80124800 000EDDC0  90 1F 00 88 */	stw r0, 0x88(r31)
/* 80124804 000EDDC4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80124808 000EDDC8  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 8012480C 000EDDCC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80124810 000EDDD0  90 1F 00 90 */	stw r0, 0x90(r31)
/* 80124814 000EDDD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80124818 000EDDD8  90 1F 00 94 */	stw r0, 0x94(r31)
/* 8012481C 000EDDDC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80124820 000EDDE0  90 1F 00 98 */	stw r0, 0x98(r31)
/* 80124824 000EDDE4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80124828 000EDDE8  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 8012482C 000EDDEC  88 01 00 30 */	lbz r0, 0x30(r1)
/* 80124830 000EDDF0  98 1F 00 A0 */	stb r0, 0xa0(r31)
/* 80124834 000EDDF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80124838 000EDDF8  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 8012483C 000EDDFC  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80124840 000EDE00  90 1F 00 A8 */	stw r0, 0xa8(r31)
/* 80124844 000EDE04  88 01 00 3C */	lbz r0, 0x3c(r1)
/* 80124848 000EDE08  98 1F 00 AC */	stb r0, 0xac(r31)
/* 8012484C 000EDE0C  88 01 00 3D */	lbz r0, 0x3d(r1)
/* 80124850 000EDE10  98 1F 00 AD */	stb r0, 0xad(r31)
/* 80124854 000EDE14  88 01 00 3E */	lbz r0, 0x3e(r1)
/* 80124858 000EDE18  98 1F 00 AE */	stb r0, 0xae(r31)
/* 8012485C 000EDE1C  88 01 00 3F */	lbz r0, 0x3f(r1)
/* 80124860 000EDE20  98 1F 00 AF */	stb r0, 0xaf(r31)
/* 80124864 000EDE24  88 01 00 40 */	lbz r0, 0x40(r1)
/* 80124868 000EDE28  98 1F 00 B0 */	stb r0, 0xb0(r31)
/* 8012486C 000EDE2C  88 01 00 41 */	lbz r0, 0x41(r1)
/* 80124870 000EDE30  98 1F 00 B1 */	stb r0, 0xb1(r31)
/* 80124874 000EDE34  48 10 6E 2D */	bl __dt__7CSysWinFv
/* 80124878 000EDE38  81 9F 00 78 */	lwz r12, 0x78(r31)
/* 8012487C 000EDE3C  38 7F 00 78 */	addi r3, r31, 0x78
/* 80124880 000EDE40  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 80124884 000EDE44  7D 89 03 A6 */	mtctr r12
/* 80124888 000EDE48  4E 80 04 21 */	bctrl 
/* 8012488C 000EDE4C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80124890 000EDE50  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80124894 000EDE54  7C 08 03 A6 */	mtlr r0
/* 80124898 000EDE58  38 21 00 50 */	addi r1, r1, 0x50
/* 8012489C 000EDE5C  4E 80 00 20 */	blr 
.endfn func_80124784

.fn func_801248A0, global
/* 801248A0 000EDE60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801248A4 000EDE64  7C 08 02 A6 */	mflr r0
/* 801248A8 000EDE68  90 01 00 14 */	stw r0, 0x14(r1)
/* 801248AC 000EDE6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801248B0 000EDE70  7C 7F 1B 78 */	mr r31, r3
/* 801248B4 000EDE74  48 32 41 91 */	bl func_80448A44__9CDeviceVIFv
/* 801248B8 000EDE78  38 7F 00 78 */	addi r3, r31, 0x78
/* 801248BC 000EDE7C  48 10 6F 39 */	bl func_8022B7F4
/* 801248C0 000EDE80  2C 1F 00 00 */	cmpwi r31, 0
/* 801248C4 000EDE84  38 00 00 00 */	li r0, 0
/* 801248C8 000EDE88  90 0D A7 50 */	stw r0, lbl_806668D0@sda21(r13)
/* 801248CC 000EDE8C  7F E4 FB 78 */	mr r4, r31
/* 801248D0 000EDE90  41 82 00 08 */	beq .L_801248D8
/* 801248D4 000EDE94  38 9F 00 70 */	addi r4, r31, 0x70
.L_801248D8:
/* 801248D8 000EDE98  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 801248DC 000EDE9C  48 37 16 75 */	bl func_80495F50
/* 801248E0 000EDEA0  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801248E4 000EDEA4  2C 00 00 00 */	cmpwi r0, 0
/* 801248E8 000EDEA8  40 82 00 0C */	bne .L_801248F4
/* 801248EC 000EDEAC  38 60 00 00 */	li r3, 0
/* 801248F0 000EDEB0  4B F5 E0 5D */	bl func_8008294C
.L_801248F4:
/* 801248F4 000EDEB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801248F8 000EDEB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801248FC 000EDEBC  7C 08 03 A6 */	mtlr r0
/* 80124900 000EDEC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80124904 000EDEC4  4E 80 00 20 */	blr 
.endfn func_801248A0

.fn func_80124908, global
/* 80124908 000EDEC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012490C 000EDECC  7C 08 02 A6 */	mflr r0
/* 80124910 000EDED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80124914 000EDED4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80124918 000EDED8  93 C1 00 08 */	stw r30, 8(r1)
/* 8012491C 000EDEDC  7C 7E 1B 78 */	mr r30, r3
/* 80124920 000EDEE0  4B F1 BB C9 */	bl func_800404E8
/* 80124924 000EDEE4  4B F1 DD CD */	bl func_800426F0
/* 80124928 000EDEE8  2C 03 00 00 */	cmpwi r3, 0
/* 8012492C 000EDEEC  40 82 01 1C */	bne .L_80124A48
/* 80124930 000EDEF0  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 80124934 000EDEF4  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 80124938 000EDEF8  41 82 00 08 */	beq .L_80124940
/* 8012493C 000EDEFC  48 00 01 0C */	b .L_80124A48
.L_80124940:
/* 80124940 000EDF00  48 01 75 11 */	bl func_8013BE50
/* 80124944 000EDF04  2C 03 00 00 */	cmpwi r3, 0
/* 80124948 000EDF08  41 82 01 00 */	beq .L_80124A48
/* 8012494C 000EDF0C  88 1E 00 B4 */	lbz r0, 0xb4(r30)
/* 80124950 000EDF10  2C 00 00 00 */	cmpwi r0, 0
/* 80124954 000EDF14  41 82 00 20 */	beq .L_80124974
/* 80124958 000EDF18  2C 00 00 01 */	cmpwi r0, 1
/* 8012495C 000EDF1C  41 82 00 58 */	beq .L_801249B4
/* 80124960 000EDF20  2C 00 00 02 */	cmpwi r0, 2
/* 80124964 000EDF24  41 82 00 6C */	beq .L_801249D0
/* 80124968 000EDF28  2C 00 00 03 */	cmpwi r0, 3
/* 8012496C 000EDF2C  41 82 00 B4 */	beq .L_80124A20
/* 80124970 000EDF30  48 00 00 D0 */	b .L_80124A40
.L_80124974:
/* 80124974 000EDF34  38 7E 00 78 */	addi r3, r30, 0x78
/* 80124978 000EDF38  48 10 6F 29 */	bl func_8022B8A0
/* 8012497C 000EDF3C  2C 03 00 00 */	cmpwi r3, 0
/* 80124980 000EDF40  41 82 00 C0 */	beq .L_80124A40
/* 80124984 000EDF44  38 00 00 01 */	li r0, 1
/* 80124988 000EDF48  98 1E 00 B4 */	stb r0, 0xb4(r30)
/* 8012498C 000EDF4C  38 7E 00 78 */	addi r3, r30, 0x78
/* 80124990 000EDF50  38 9E 00 B6 */	addi r4, r30, 0xb6
/* 80124994 000EDF54  38 BE 01 36 */	addi r5, r30, 0x136
/* 80124998 000EDF58  48 10 70 1D */	bl func_8022B9B4
/* 8012499C 000EDF5C  38 7E 00 78 */	addi r3, r30, 0x78
/* 801249A0 000EDF60  38 80 00 01 */	li r4, 1
/* 801249A4 000EDF64  48 10 76 25 */	bl func_8022BFC8
/* 801249A8 000EDF68  38 7E 00 78 */	addi r3, r30, 0x78
/* 801249AC 000EDF6C  48 10 6F 0D */	bl func_8022B8B8
/* 801249B0 000EDF70  48 00 00 90 */	b .L_80124A40
.L_801249B4:
/* 801249B4 000EDF74  38 7E 00 78 */	addi r3, r30, 0x78
/* 801249B8 000EDF78  48 10 6E F9 */	bl func_8022B8B0
/* 801249BC 000EDF7C  2C 03 00 00 */	cmpwi r3, 0
/* 801249C0 000EDF80  41 82 00 80 */	beq .L_80124A40
/* 801249C4 000EDF84  38 00 00 02 */	li r0, 2
/* 801249C8 000EDF88  98 1E 00 B4 */	stb r0, 0xb4(r30)
/* 801249CC 000EDF8C  48 00 00 74 */	b .L_80124A40
.L_801249D0:
/* 801249D0 000EDF90  4B F6 27 ED */	bl func_800871BC
/* 801249D4 000EDF94  7C 7F 1B 78 */	mr r31, r3
/* 801249D8 000EDF98  38 60 FF FF */	li r3, -1
/* 801249DC 000EDF9C  4B F6 25 C1 */	bl func_80086F9C
/* 801249E0 000EDFA0  2C 03 00 00 */	cmpwi r3, 0
/* 801249E4 000EDFA4  41 82 00 10 */	beq .L_801249F4
/* 801249E8 000EDFA8  80 1F 00 04 */	lwz r0, 4(r31)
/* 801249EC 000EDFAC  54 00 5F FE */	rlwinm r0, r0, 0xb, 0x1f, 0x1f
/* 801249F0 000EDFB0  48 00 00 0C */	b .L_801249FC
.L_801249F4:
/* 801249F4 000EDFB4  80 1F 00 04 */	lwz r0, 4(r31)
/* 801249F8 000EDFB8  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
.L_801249FC:
/* 801249FC 000EDFBC  2C 00 00 00 */	cmpwi r0, 0
/* 80124A00 000EDFC0  41 82 00 40 */	beq .L_80124A40
/* 80124A04 000EDFC4  38 00 00 03 */	li r0, 3
/* 80124A08 000EDFC8  98 1E 00 B4 */	stb r0, 0xb4(r30)
/* 80124A0C 000EDFCC  38 7E 00 78 */	addi r3, r30, 0x78
/* 80124A10 000EDFD0  48 10 6E D5 */	bl func_8022B8E4
/* 80124A14 000EDFD4  38 60 00 03 */	li r3, 3
/* 80124A18 000EDFD8  48 01 36 61 */	bl func_80138078
/* 80124A1C 000EDFDC  48 00 00 24 */	b .L_80124A40
.L_80124A20:
/* 80124A20 000EDFE0  38 7E 00 78 */	addi r3, r30, 0x78
/* 80124A24 000EDFE4  48 10 6E 8D */	bl func_8022B8B0
/* 80124A28 000EDFE8  2C 03 00 00 */	cmpwi r3, 0
/* 80124A2C 000EDFEC  41 82 00 14 */	beq .L_80124A40
/* 80124A30 000EDFF0  38 60 00 00 */	li r3, 0
/* 80124A34 000EDFF4  38 00 00 01 */	li r0, 1
/* 80124A38 000EDFF8  98 7E 00 67 */	stb r3, 0x67(r30)
/* 80124A3C 000EDFFC  98 1E 00 64 */	stb r0, 0x64(r30)
.L_80124A40:
/* 80124A40 000EE000  38 7E 00 78 */	addi r3, r30, 0x78
/* 80124A44 000EE004  48 10 6D 05 */	bl func_8022B748
.L_80124A48:
/* 80124A48 000EE008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80124A4C 000EE00C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80124A50 000EE010  83 C1 00 08 */	lwz r30, 8(r1)
/* 80124A54 000EE014  7C 08 03 A6 */	mtlr r0
/* 80124A58 000EE018  38 21 00 10 */	addi r1, r1, 0x10
/* 80124A5C 000EE01C  4E 80 00 20 */	blr
.endfn func_80124908

.fn func_80124A60, global
/* 80124A60 000EE020  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80124A64 000EE024  7C 08 02 A6 */	mflr r0
/* 80124A68 000EE028  90 01 00 74 */	stw r0, 0x74(r1)
/* 80124A6C 000EE02C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80124A70 000EE030  7C 7F 1B 78 */	mr r31, r3
/* 80124A74 000EE034  4B F1 BA 75 */	bl func_800404E8
/* 80124A78 000EE038  4B F1 DC 79 */	bl func_800426F0
/* 80124A7C 000EE03C  2C 03 00 00 */	cmpwi r3, 0
/* 80124A80 000EE040  40 82 00 58 */	bne .L_80124AD8
/* 80124A84 000EE044  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 80124A88 000EE048  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 80124A8C 000EE04C  41 82 00 08 */	beq .L_80124A94
/* 80124A90 000EE050  48 00 00 48 */	b .L_80124AD8
.L_80124A94:
/* 80124A94 000EE054  48 01 73 BD */	bl func_8013BE50
/* 80124A98 000EE058  2C 03 00 00 */	cmpwi r3, 0
/* 80124A9C 000EE05C  41 82 00 3C */	beq .L_80124AD8
/* 80124AA0 000EE060  38 60 00 00 */	li r3, 0
/* 80124AA4 000EE064  38 80 00 00 */	li r4, 0
/* 80124AA8 000EE068  38 A0 00 00 */	li r5, 0
/* 80124AAC 000EE06C  48 1F 97 95 */	bl GXSetZMode
/* 80124AB0 000EE070  38 61 00 08 */	addi r3, r1, 8
/* 80124AB4 000EE074  48 2E 3B B5 */	bl __ct__Q34nw4r3lyt8DrawInfoFv
/* 80124AB8 000EE078  38 61 00 08 */	addi r3, r1, 8
/* 80124ABC 000EE07C  48 01 27 95 */	bl func_80137250
/* 80124AC0 000EE080  38 7F 00 78 */	addi r3, r31, 0x78
/* 80124AC4 000EE084  38 81 00 08 */	addi r4, r1, 8
/* 80124AC8 000EE088  48 10 6D 01 */	bl func_8022B7C8
/* 80124ACC 000EE08C  38 61 00 08 */	addi r3, r1, 8
/* 80124AD0 000EE090  38 80 FF FF */	li r4, -1
/* 80124AD4 000EE094  48 2E 3C 09 */	bl __dt__Q34nw4r3lyt8DrawInfoFv
.L_80124AD8:
/* 80124AD8 000EE098  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80124ADC 000EE09C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80124AE0 000EE0A0  7C 08 03 A6 */	mtlr r0
/* 80124AE4 000EE0A4  38 21 00 70 */	addi r1, r1, 0x70
/* 80124AE8 000EE0A8  4E 80 00 20 */	blr 
.endfn func_80124A60

.fn func_80124AEC, global
/* 80124AEC 000EE0AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80124AF0 000EE0B0  7C 08 02 A6 */	mflr r0
/* 80124AF4 000EE0B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80124AF8 000EE0B8  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80124AFC 000EE0BC  7C 7B 1B 78 */	mr r27, r3
/* 80124B00 000EE0C0  7C 9C 23 78 */	mr r28, r4
/* 80124B04 000EE0C4  7C BD 2B 78 */	mr r29, r5
/* 80124B08 000EE0C8  7C DE 33 78 */	mr r30, r6
/* 80124B0C 000EE0CC  7C FF 3B 78 */	mr r31, r7
/* 80124B10 000EE0D0  80 0D A7 50 */	lwz r0, lbl_806668D0@sda21(r13)
/* 80124B14 000EE0D4  2C 00 00 00 */	cmpwi r0, 0
/* 80124B18 000EE0D8  41 82 00 0C */	beq .L_80124B24
/* 80124B1C 000EE0DC  38 60 00 00 */	li r3, 0
/* 80124B20 000EE0E0  48 00 00 44 */	b .L_80124B64
.L_80124B24:
/* 80124B24 000EE0E4  48 31 2A 91 */	bl getHeapIndex__16WorkThreadSystemFv
/* 80124B28 000EE0E8  7C 64 1B 78 */	mr r4, r3
/* 80124B2C 000EE0EC  38 60 01 B8 */	li r3, 0x1b8
/* 80124B30 000EE0F0  48 30 FF 2D */	bl heap_malloc__3mtlFUli
/* 80124B34 000EE0F4  2C 03 00 00 */	cmpwi r3, 0
/* 80124B38 000EE0F8  41 82 00 18 */	beq .L_80124B50
/* 80124B3C 000EE0FC  7F 84 E3 78 */	mr r4, r28
/* 80124B40 000EE100  7F A5 EB 78 */	mr r5, r29
/* 80124B44 000EE104  7F C6 F3 78 */	mr r6, r30
/* 80124B48 000EE108  7F E7 FB 78 */	mr r7, r31
/* 80124B4C 000EE10C  4B FF FA A1 */	bl __ct__CSystemWindow
.L_80124B50:
/* 80124B50 000EE110  90 6D A7 50 */	stw r3, lbl_806668D0@sda21(r13)
/* 80124B54 000EE114  7F 64 DB 78 */	mr r4, r27
/* 80124B58 000EE118  38 A0 00 00 */	li r5, 0
/* 80124B5C 000EE11C  48 32 01 19 */	bl func_80444C74
/* 80124B60 000EE120  80 6D A7 50 */	lwz r3, lbl_806668D0@sda21(r13)
.L_80124B64:
/* 80124B64 000EE124  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80124B68 000EE128  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80124B6C 000EE12C  7C 08 03 A6 */	mtlr r0
/* 80124B70 000EE130  38 21 00 20 */	addi r1, r1, 0x20
/* 80124B74 000EE134  4E 80 00 20 */	blr 
.endfn func_80124AEC

.fn func_80124B78, global
/* 80124B78 000EE138  80 6D A7 50 */	lwz r3, lbl_806668D0@sda21(r13)
/* 80124B7C 000EE13C  4E 80 00 20 */	blr 
.endfn func_80124B78


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CSysWinSelect_typestr, global
	.asciz "CSysWinSelect"
	.balign 4
.endobj CSysWinSelect_typestr

.obj CSystemWindow_typestr, global
	.asciz "CSystemWindow"
	.balign 4
.endobj CSystemWindow_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__13CSysWinSelect, global
	.4byte __RTTI__13CSysWinSelect
	.4byte 0
	.4byte __dt__13CSysWinSelectFv
	.4byte Reset__14CChildListNodeFv
	.4byte func_80124D50
	.4byte func_80124E0C
	.4byte func_80124E74
	.4byte "func_80124584__18CTTask<9IUIWindow>Fv"
	.4byte func_80043F20__8CProcessFv
	.4byte __RTTI__13CSysWinSelect
	.4byte 0xFFFFFF94
	.4byte func_801252B8
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
	.4byte __RTTI__13CSysWinSelect
	.4byte 0xFFFFFF90
	.4byte func_801252C8
	.4byte func_801252C0
	.4byte func_80124FD8
.endobj __vt__13CSysWinSelect

.obj CSysWinSelect_hierarchy, global
	.4byte __RTTI__10IScnRender
	.4byte 0x00000070
	.4byte __RTTI__10IWorkEvent
	.4byte 0x0000006C
	.4byte __RTTI__15CDoubleListNode
	.4byte 0
	.4byte __RTTI__14CChildListNode
	.4byte 0
	.4byte __RTTI__8CProcess
	.4byte 0
	.4byte "__RTTI__18CTTask<9IUIWindow>"
	.4byte 0
	.4byte __RTTI__9IUIWindow
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CSysWinSelect_hierarchy


.obj __vt__13CSystemWindow, global
	.4byte __RTTI__13CSystemWindow
	.4byte 0
	.4byte __dt__13CSystemWindowFv
	.4byte Reset__14CChildListNodeFv
	.4byte func_80124784
	.4byte func_801248A0
	.4byte func_80124908
	.4byte "func_80124584__18CTTask<9IUIWindow>Fv"
	.4byte func_80043F20__8CProcessFv
	.4byte __RTTI__13CSystemWindow
	.4byte 0xFFFFFF94
	.4byte func_801252A0
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
	.4byte __RTTI__13CSystemWindow
	.4byte 0xFFFFFF90
	.4byte func_801252B0
	.4byte func_801252A8
	.4byte func_80124A60
.endobj __vt__13CSystemWindow

.obj CSystemWindow_hierarchy, global
	.4byte __RTTI__10IScnRender
	.4byte 0x00000070
	.4byte __RTTI__10IWorkEvent
	.4byte 0x0000006C
	.4byte __RTTI__15CDoubleListNode
	.4byte 0
	.4byte __RTTI__14CChildListNode
	.4byte 0
	.4byte __RTTI__8CProcess
	.4byte 0
	.4byte "__RTTI__18CTTask<9IUIWindow>"
	.4byte 0
	.4byte __RTTI__9IUIWindow
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CSystemWindow_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__13CSysWinSelect, global
	.4byte CSysWinSelect_typestr
	.4byte CSysWinSelect_hierarchy
.endobj __RTTI__13CSysWinSelect

.obj __RTTI__13CSystemWindow, global
	.4byte CSystemWindow_typestr
	.4byte CSystemWindow_hierarchy
.endobj __RTTI__13CSystemWindow

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_806668D0, global
	.skip 0x4
.endobj lbl_806668D0

.obj lbl_806668D4, global
	.skip 0x4
.endobj lbl_806668D4

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8000BDB4", local
.hidden "@etb_8000BDB4"
	.4byte 0x30080000
	.4byte 0x000000C4
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0680001B
	.4byte 0x00000070
	.4byte __dt__10IScnRenderFv
	.4byte 0x0680001B
	.4byte 0x0000006C
	.4byte __dt__10IWorkEventFv
	.4byte 0x8680001B
	.4byte 0x00000000
	.4byte __dt__9IUIWindowFv
.endobj "@etb_8000BDB4"

.obj "@etb_8000BDE8", local
.hidden "@etb_8000BDE8"
	.4byte 0x10080000
	.4byte 0x00000048
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0780001E
	.4byte 0x00000078
	.4byte __dt__7CSysWinFv
	.4byte 0x0680001E
	.4byte 0x00000070
	.4byte __dt__10IScnRenderFv
	.4byte 0x8680001E
	.4byte 0x0000006C
	.4byte __dt__10IWorkEventFv
.endobj "@etb_8000BDE8"

.obj "@etb_8000BE1C", local
.hidden "@etb_8000BE1C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000BE1C"

.obj "@etb_8000BE24", local
.hidden "@etb_8000BE24"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000BE24"

.obj "@etb_8000BE2C", local
.hidden "@etb_8000BE2C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000BE2C"

.obj "@etb_8000BE34", local
.hidden "@etb_8000BE34"
	.4byte 0x08080000
	.4byte 0x00000060
	.4byte 0x00030010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__Q34nw4r3lyt8DrawInfoFv
.endobj "@etb_8000BE34"

.obj "@etb_8000BE4C", local
.hidden "@etb_8000BE4C"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_8000BE4C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002705C", local
.hidden "@eti_8002705C"
	.4byte __ct__CSystemWindow
	.4byte 0x00000124
	.4byte "@etb_8000BDB4"
.endobj "@eti_8002705C"

.obj "@eti_80027068", local
.hidden "@eti_80027068"
	.4byte __dt__13CSystemWindowFv
	.4byte 0x00000074
	.4byte "@etb_8000BDE8"
.endobj "@eti_80027068"

.obj "@eti_80027074", local
.hidden "@eti_80027074"
	.4byte func_80124784
	.4byte 0x0000011C
	.4byte "@etb_8000BE1C"
.endobj "@eti_80027074"

.obj "@eti_80027080", local
.hidden "@eti_80027080"
	.4byte func_801248A0
	.4byte 0x00000068
	.4byte "@etb_8000BE24"
.endobj "@eti_80027080"

.obj "@eti_8002708C", local
.hidden "@eti_8002708C"
	.4byte func_80124908
	.4byte 0x00000158
	.4byte "@etb_8000BE2C"
.endobj "@eti_8002708C"

.obj "@eti_80027098", local
.hidden "@eti_80027098"
	.4byte func_80124A60
	.4byte 0x0000008C
	.4byte "@etb_8000BE34"
.endobj "@eti_80027098"

.obj "@eti_800270A4", local
.hidden "@eti_800270A4"
	.4byte func_80124AEC
	.4byte 0x0000008C
	.4byte "@etb_8000BE4C"
.endobj "@eti_800270A4"
