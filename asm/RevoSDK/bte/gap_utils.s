.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global btm_cback
btm_cback:
/* 802F08A0 002B9E60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F08A4 002B9E64  7C 08 02 A6 */	mflr r0
/* 802F08A8 002B9E68  3C E0 80 54 */	lis r7, lbl_805463A0@ha
/* 802F08AC 002B9E6C  28 03 00 02 */	cmplwi r3, 2
/* 802F08B0 002B9E70  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F08B4 002B9E74  38 E7 63 A0 */	addi r7, r7, lbl_805463A0@l
/* 802F08B8 002B9E78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F08BC 002B9E7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802F08C0 002B9E80  7C 9E 23 78 */	mr r30, r4
/* 802F08C4 002B9E84  40 80 01 9C */	bge lbl_802F0A60
/* 802F08C8 002B9E88  3D 00 80 5C */	lis r8, lbl_805C21C0@ha
/* 802F08CC 002B9E8C  54 60 23 36 */	rlwinm r0, r3, 4, 0xc, 0x1b
/* 802F08D0 002B9E90  39 08 21 C0 */	addi r8, r8, lbl_805C21C0@l
/* 802F08D4 002B9E94  7F E8 02 14 */	add r31, r8, r0
/* 802F08D8 002B9E98  88 1F 00 0F */	lbz r0, 0xf(r31)
/* 802F08DC 002B9E9C  2C 00 00 00 */	cmpwi r0, 0
/* 802F08E0 002B9EA0  41 82 01 80 */	beq lbl_802F0A60
/* 802F08E4 002B9EA4  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 802F08E8 002B9EA8  2C 00 00 03 */	cmpwi r0, 3
/* 802F08EC 002B9EAC  41 82 00 6C */	beq lbl_802F0958
/* 802F08F0 002B9EB0  40 80 00 10 */	bge lbl_802F0900
/* 802F08F4 002B9EB4  2C 00 00 02 */	cmpwi r0, 2
/* 802F08F8 002B9EB8  40 80 00 14 */	bge lbl_802F090C
/* 802F08FC 002B9EBC  48 00 01 34 */	b lbl_802F0A30
lbl_802F0900:
/* 802F0900 002B9EC0  2C 00 00 05 */	cmpwi r0, 5
/* 802F0904 002B9EC4  40 80 01 2C */	bge lbl_802F0A30
/* 802F0908 002B9EC8  48 00 00 9C */	b lbl_802F09A4
lbl_802F090C:
/* 802F090C 002B9ECC  88 C4 00 01 */	lbz r6, 1(r4)
/* 802F0910 002B9ED0  38 60 01 14 */	li r3, 0x114
/* 802F0914 002B9ED4  88 08 00 28 */	lbz r0, 0x28(r8)
/* 802F0918 002B9ED8  3B C1 00 08 */	addi r30, r1, 8
/* 802F091C 002B9EDC  98 C1 00 0A */	stb r6, 0xa(r1)
/* 802F0920 002B9EE0  28 00 00 04 */	cmplwi r0, 4
/* 802F0924 002B9EE4  88 04 00 00 */	lbz r0, 0(r4)
/* 802F0928 002B9EE8  7C 00 00 34 */	cntlzw r0, r0
/* 802F092C 002B9EEC  54 00 DF FE */	rlwinm r0, r0, 0x1b, 0x1f, 0x1f
/* 802F0930 002B9EF0  7C 00 00 D0 */	neg r0, r0
/* 802F0934 002B9EF4  7C 60 00 78 */	andc r0, r3, r0
/* 802F0938 002B9EF8  B0 01 00 08 */	sth r0, 8(r1)
/* 802F093C 002B9EFC  41 80 00 F4 */	blt lbl_802F0A30
/* 802F0940 002B9F00  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 802F0944 002B9F04  38 87 00 00 */	addi r4, r7, 0
/* 802F0948 002B9F08  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 802F094C 002B9F0C  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 802F0950 002B9F10  4B FE D6 91 */	bl LogMsg_2
/* 802F0954 002B9F14  48 00 00 DC */	b lbl_802F0A30
lbl_802F0958:
/* 802F0958 002B9F18  A0 A4 00 00 */	lhz r5, 0(r4)
/* 802F095C 002B9F1C  2C 05 00 00 */	cmpwi r5, 0
/* 802F0960 002B9F20  41 82 00 24 */	beq lbl_802F0984
/* 802F0964 002B9F24  88 08 00 28 */	lbz r0, 0x28(r8)
/* 802F0968 002B9F28  28 00 00 04 */	cmplwi r0, 4
/* 802F096C 002B9F2C  41 80 00 C4 */	blt lbl_802F0A30
/* 802F0970 002B9F30  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 802F0974 002B9F34  38 87 00 3C */	addi r4, r7, 0x3c
/* 802F0978 002B9F38  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 802F097C 002B9F3C  4B FE D6 45 */	bl LogMsg_1
/* 802F0980 002B9F40  48 00 00 B0 */	b lbl_802F0A30
lbl_802F0984:
/* 802F0984 002B9F44  88 08 00 28 */	lbz r0, 0x28(r8)
/* 802F0988 002B9F48  28 00 00 04 */	cmplwi r0, 4
/* 802F098C 002B9F4C  41 80 00 A4 */	blt lbl_802F0A30
/* 802F0990 002B9F50  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 802F0994 002B9F54  38 87 00 70 */	addi r4, r7, 0x70
/* 802F0998 002B9F58  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 802F099C 002B9F5C  4B FE D6 05 */	bl LogMsg_0
/* 802F09A0 002B9F60  48 00 00 90 */	b lbl_802F0A30
lbl_802F09A4:
/* 802F09A4 002B9F64  A0 04 00 00 */	lhz r0, 0(r4)
/* 802F09A8 002B9F68  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802F09AC 002B9F6C  28 00 00 08 */	cmplwi r0, 8
/* 802F09B0 002B9F70  41 81 00 54 */	bgt lbl_802F0A04
/* 802F09B4 002B9F74  3C 60 80 54 */	lis r3, lbl_8054646C@ha
/* 802F09B8 002B9F78  54 00 10 3A */	slwi r0, r0, 2
/* 802F09BC 002B9F7C  38 63 64 6C */	addi r3, r3, lbl_8054646C@l
/* 802F09C0 002B9F80  7C 63 00 2E */	lwzx r3, r3, r0
/* 802F09C4 002B9F84  7C 69 03 A6 */	mtctr r3
/* 802F09C8 002B9F88  4E 80 04 20 */	bctr 
.global lbl_802F09CC
lbl_802F09CC:
/* 802F09CC 002B9F8C  38 A0 00 00 */	li r5, 0
/* 802F09D0 002B9F90  48 00 00 38 */	b lbl_802F0A08
.global lbl_802F09D4
lbl_802F09D4:
/* 802F09D4 002B9F94  38 A0 01 0B */	li r5, 0x10b
/* 802F09D8 002B9F98  48 00 00 30 */	b lbl_802F0A08
.global lbl_802F09DC
lbl_802F09DC:
/* 802F09DC 002B9F9C  38 A0 01 03 */	li r5, 0x103
/* 802F09E0 002B9FA0  48 00 00 28 */	b lbl_802F0A08
.global lbl_802F09E4
lbl_802F09E4:
/* 802F09E4 002B9FA4  38 A0 01 09 */	li r5, 0x109
/* 802F09E8 002B9FA8  48 00 00 20 */	b lbl_802F0A08
.global lbl_802F09EC
lbl_802F09EC:
/* 802F09EC 002B9FAC  38 A0 01 0C */	li r5, 0x10c
/* 802F09F0 002B9FB0  48 00 00 18 */	b lbl_802F0A08
.global lbl_802F09F4
lbl_802F09F4:
/* 802F09F4 002B9FB4  38 A0 01 0D */	li r5, 0x10d
/* 802F09F8 002B9FB8  48 00 00 10 */	b lbl_802F0A08
.global lbl_802F09FC
lbl_802F09FC:
/* 802F09FC 002B9FBC  38 A0 01 15 */	li r5, 0x115
/* 802F0A00 002B9FC0  48 00 00 08 */	b lbl_802F0A08
.global lbl_802F0A04
lbl_802F0A04:
/* 802F0A04 002B9FC4  38 A0 01 14 */	li r5, 0x114
lbl_802F0A08:
/* 802F0A08 002B9FC8  3C 60 80 5C */	lis r3, lbl_805C21C0@ha
/* 802F0A0C 002B9FCC  B0 A4 00 00 */	sth r5, 0(r4)
/* 802F0A10 002B9FD0  38 63 21 C0 */	addi r3, r3, lbl_805C21C0@l
/* 802F0A14 002B9FD4  88 03 00 28 */	lbz r0, 0x28(r3)
/* 802F0A18 002B9FD8  28 00 00 04 */	cmplwi r0, 4
/* 802F0A1C 002B9FDC  41 80 00 14 */	blt lbl_802F0A30
/* 802F0A20 002B9FE0  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 802F0A24 002B9FE4  38 87 00 98 */	addi r4, r7, 0x98
/* 802F0A28 002B9FE8  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 802F0A2C 002B9FEC  4B FE D5 95 */	bl LogMsg_1
lbl_802F0A30:
/* 802F0A30 002B9FF0  81 9F 00 04 */	lwz r12, 4(r31)
/* 802F0A34 002B9FF4  2C 0C 00 00 */	cmpwi r12, 0
/* 802F0A38 002B9FF8  41 82 00 14 */	beq lbl_802F0A4C
/* 802F0A3C 002B9FFC  7F C4 F3 78 */	mr r4, r30
/* 802F0A40 002BA000  A0 7F 00 0C */	lhz r3, 0xc(r31)
/* 802F0A44 002BA004  7D 89 03 A6 */	mtctr r12
/* 802F0A48 002BA008  4E 80 04 21 */	bctrl 
lbl_802F0A4C:
/* 802F0A4C 002BA00C  2C 1F 00 00 */	cmpwi r31, 0
/* 802F0A50 002BA010  41 82 00 10 */	beq lbl_802F0A60
/* 802F0A54 002BA014  38 00 00 00 */	li r0, 0
/* 802F0A58 002BA018  90 1F 00 04 */	stw r0, 4(r31)
/* 802F0A5C 002BA01C  98 1F 00 0F */	stb r0, 0xf(r31)
lbl_802F0A60:
/* 802F0A60 002BA020  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F0A64 002BA024  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F0A68 002BA028  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802F0A6C 002BA02C  7C 08 03 A6 */	mtlr r0
/* 802F0A70 002BA030  38 21 00 20 */	addi r1, r1, 0x20
/* 802F0A74 002BA034  4E 80 00 20 */	blr

.global gap_btm_cback0
gap_btm_cback0:
/* 802F0A78 002BA038  7C 64 1B 78 */	mr r4, r3
/* 802F0A7C 002BA03C  38 60 00 00 */	li r3, 0
/* 802F0A80 002BA040  4B FF FE 20 */	b btm_cback

.global gap_btm_cback1
gap_btm_cback1:
/* 802F0A84 002BA044  7C 64 1B 78 */	mr r4, r3
/* 802F0A88 002BA048  38 60 00 01 */	li r3, 1
/* 802F0A8C 002BA04C  4B FF FE 14 */	b btm_cback

.global gap_find_addr_name_cb
gap_find_addr_name_cb:
/* 802F0A90 002BA050  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F0A94 002BA054  7C 08 02 A6 */	mflr r0
/* 802F0A98 002BA058  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F0A9C 002BA05C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F0AA0 002BA060  3F E0 80 5C */	lis r31, lbl_805C21C0@ha
/* 802F0AA4 002BA064  3B FF 21 C0 */	addi r31, r31, lbl_805C21C0@l
/* 802F0AA8 002BA068  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802F0AAC 002BA06C  3B DF 00 34 */	addi r30, r31, 0x34
/* 802F0AB0 002BA070  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802F0AB4 002BA074  7C 7D 1B 78 */	mr r29, r3
/* 802F0AB8 002BA078  88 1F 00 7E */	lbz r0, 0x7e(r31)
/* 802F0ABC 002BA07C  2C 00 00 00 */	cmpwi r0, 0
/* 802F0AC0 002BA080  41 82 01 CC */	beq lbl_802F0C8C
/* 802F0AC4 002BA084  A0 A3 00 00 */	lhz r5, 0(r3)
/* 802F0AC8 002BA088  2C 05 00 00 */	cmpwi r5, 0
/* 802F0ACC 002BA08C  40 82 01 10 */	bne lbl_802F0BDC
/* 802F0AD0 002BA090  88 1F 00 28 */	lbz r0, 0x28(r31)
/* 802F0AD4 002BA094  28 00 00 04 */	cmplwi r0, 4
/* 802F0AD8 002BA098  41 80 00 1C */	blt lbl_802F0AF4
/* 802F0ADC 002BA09C  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 802F0AE0 002BA0A0  3C 80 80 54 */	lis r4, lbl_80546518@ha
/* 802F0AE4 002BA0A4  38 DD 00 04 */	addi r6, r29, 4
/* 802F0AE8 002BA0A8  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 802F0AEC 002BA0AC  38 84 65 18 */	addi r4, r4, lbl_80546518@l
/* 802F0AF0 002BA0B0  4B FE D4 F1 */	bl LogMsg_2
lbl_802F0AF4:
/* 802F0AF4 002BA0B4  38 7E 00 08 */	addi r3, r30, 8
/* 802F0AF8 002BA0B8  4B FC 8A C1 */	bl strlen
/* 802F0AFC 002BA0BC  7C 65 1B 78 */	mr r5, r3
/* 802F0B00 002BA0C0  38 7E 00 08 */	addi r3, r30, 8
/* 802F0B04 002BA0C4  38 9D 00 04 */	addi r4, r29, 4
/* 802F0B08 002BA0C8  4B FD 1E 49 */	bl strncmp
/* 802F0B0C 002BA0CC  2C 03 00 00 */	cmpwi r3, 0
/* 802F0B10 002BA0D0  40 82 00 24 */	bne lbl_802F0B34
/* 802F0B14 002BA0D4  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 802F0B18 002BA0D8  38 7E 00 02 */	addi r3, r30, 2
/* 802F0B1C 002BA0DC  38 A0 00 06 */	li r5, 6
/* 802F0B20 002BA0E0  38 84 00 02 */	addi r4, r4, 2
/* 802F0B24 002BA0E4  4B D1 34 DD */	bl memcpy
/* 802F0B28 002BA0E8  38 00 00 00 */	li r0, 0
/* 802F0B2C 002BA0EC  B0 1E 00 00 */	sth r0, 0(r30)
/* 802F0B30 002BA0F0  48 00 01 34 */	b lbl_802F0C64
lbl_802F0B34:
/* 802F0B34 002BA0F4  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802F0B38 002BA0F8  4B FF 84 3D */	bl BTM_InqDbNext
/* 802F0B3C 002BA0FC  2C 03 00 00 */	cmpwi r3, 0
/* 802F0B40 002BA100  90 7F 00 30 */	stw r3, 0x30(r31)
/* 802F0B44 002BA104  41 82 00 8C */	beq lbl_802F0BD0
/* 802F0B48 002BA108  3C 80 80 2F */	lis r4, gap_find_addr_name_cb@ha
/* 802F0B4C 002BA10C  38 63 00 02 */	addi r3, r3, 2
/* 802F0B50 002BA110  38 84 0A 90 */	addi r4, r4, gap_find_addr_name_cb@l
/* 802F0B54 002BA114  4B FF 81 49 */	bl BTM_ReadRemoteDeviceName
/* 802F0B58 002BA118  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802F0B5C 002BA11C  28 00 00 01 */	cmplwi r0, 1
/* 802F0B60 002BA120  41 82 01 2C */	beq lbl_802F0C8C
/* 802F0B64 002BA124  A0 1D 00 00 */	lhz r0, 0(r29)
/* 802F0B68 002BA128  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802F0B6C 002BA12C  28 00 00 08 */	cmplwi r0, 8
/* 802F0B70 002BA130  41 81 00 54 */	bgt lbl_802F0BC4
/* 802F0B74 002BA134  3C 60 80 54 */	lis r3, lbl_805465BC@ha
/* 802F0B78 002BA138  54 00 10 3A */	slwi r0, r0, 2
/* 802F0B7C 002BA13C  38 63 65 BC */	addi r3, r3, lbl_805465BC@l
/* 802F0B80 002BA140  7C 63 00 2E */	lwzx r3, r3, r0
/* 802F0B84 002BA144  7C 69 03 A6 */	mtctr r3
/* 802F0B88 002BA148  4E 80 04 20 */	bctr 
.global lbl_802F0B8C
lbl_802F0B8C:
/* 802F0B8C 002BA14C  38 00 00 00 */	li r0, 0
/* 802F0B90 002BA150  48 00 00 38 */	b lbl_802F0BC8
.global lbl_802F0B94
lbl_802F0B94:
/* 802F0B94 002BA154  38 00 01 0B */	li r0, 0x10b
/* 802F0B98 002BA158  48 00 00 30 */	b lbl_802F0BC8
.global lbl_802F0B9C
lbl_802F0B9C:
/* 802F0B9C 002BA15C  38 00 01 03 */	li r0, 0x103
/* 802F0BA0 002BA160  48 00 00 28 */	b lbl_802F0BC8
.global lbl_802F0BA4
lbl_802F0BA4:
/* 802F0BA4 002BA164  38 00 01 09 */	li r0, 0x109
/* 802F0BA8 002BA168  48 00 00 20 */	b lbl_802F0BC8
.global lbl_802F0BAC
lbl_802F0BAC:
/* 802F0BAC 002BA16C  38 00 01 0C */	li r0, 0x10c
/* 802F0BB0 002BA170  48 00 00 18 */	b lbl_802F0BC8
.global lbl_802F0BB4
lbl_802F0BB4:
/* 802F0BB4 002BA174  38 00 01 0D */	li r0, 0x10d
/* 802F0BB8 002BA178  48 00 00 10 */	b lbl_802F0BC8
.global lbl_802F0BBC
lbl_802F0BBC:
/* 802F0BBC 002BA17C  38 00 01 15 */	li r0, 0x115
/* 802F0BC0 002BA180  48 00 00 08 */	b lbl_802F0BC8
.global lbl_802F0BC4
lbl_802F0BC4:
/* 802F0BC4 002BA184  38 00 01 14 */	li r0, 0x114
lbl_802F0BC8:
/* 802F0BC8 002BA188  B0 1E 00 00 */	sth r0, 0(r30)
/* 802F0BCC 002BA18C  48 00 00 98 */	b lbl_802F0C64
lbl_802F0BD0:
/* 802F0BD0 002BA190  38 00 01 02 */	li r0, 0x102
/* 802F0BD4 002BA194  B0 1E 00 00 */	sth r0, 0(r30)
/* 802F0BD8 002BA198  48 00 00 8C */	b lbl_802F0C64
lbl_802F0BDC:
/* 802F0BDC 002BA19C  88 1F 00 28 */	lbz r0, 0x28(r31)
/* 802F0BE0 002BA1A0  28 00 00 04 */	cmplwi r0, 4
/* 802F0BE4 002BA1A4  41 80 00 18 */	blt lbl_802F0BFC
/* 802F0BE8 002BA1A8  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 802F0BEC 002BA1AC  3C 80 80 54 */	lis r4, lbl_8054655C@ha
/* 802F0BF0 002BA1B0  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 802F0BF4 002BA1B4  38 84 65 5C */	addi r4, r4, lbl_8054655C@l
/* 802F0BF8 002BA1B8  4B FE D3 C9 */	bl LogMsg_1
lbl_802F0BFC:
/* 802F0BFC 002BA1BC  A0 1D 00 00 */	lhz r0, 0(r29)
/* 802F0C00 002BA1C0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802F0C04 002BA1C4  28 00 00 08 */	cmplwi r0, 8
/* 802F0C08 002BA1C8  41 81 00 54 */	bgt lbl_802F0C5C
/* 802F0C0C 002BA1CC  3C 60 80 54 */	lis r3, lbl_80546598@ha
/* 802F0C10 002BA1D0  54 00 10 3A */	slwi r0, r0, 2
/* 802F0C14 002BA1D4  38 63 65 98 */	addi r3, r3, lbl_80546598@l
/* 802F0C18 002BA1D8  7C 63 00 2E */	lwzx r3, r3, r0
/* 802F0C1C 002BA1DC  7C 69 03 A6 */	mtctr r3
/* 802F0C20 002BA1E0  4E 80 04 20 */	bctr 
.global lbl_802F0C24
lbl_802F0C24:
/* 802F0C24 002BA1E4  38 00 00 00 */	li r0, 0
/* 802F0C28 002BA1E8  48 00 00 38 */	b lbl_802F0C60
.global lbl_802F0C2C
lbl_802F0C2C:
/* 802F0C2C 002BA1EC  38 00 01 0B */	li r0, 0x10b
/* 802F0C30 002BA1F0  48 00 00 30 */	b lbl_802F0C60
.global lbl_802F0C34
lbl_802F0C34:
/* 802F0C34 002BA1F4  38 00 01 03 */	li r0, 0x103
/* 802F0C38 002BA1F8  48 00 00 28 */	b lbl_802F0C60
.global lbl_802F0C3C
lbl_802F0C3C:
/* 802F0C3C 002BA1FC  38 00 01 09 */	li r0, 0x109
/* 802F0C40 002BA200  48 00 00 20 */	b lbl_802F0C60
.global lbl_802F0C44
lbl_802F0C44:
/* 802F0C44 002BA204  38 00 01 0C */	li r0, 0x10c
/* 802F0C48 002BA208  48 00 00 18 */	b lbl_802F0C60
.global lbl_802F0C4C
lbl_802F0C4C:
/* 802F0C4C 002BA20C  38 00 01 0D */	li r0, 0x10d
/* 802F0C50 002BA210  48 00 00 10 */	b lbl_802F0C60
.global lbl_802F0C54
lbl_802F0C54:
/* 802F0C54 002BA214  38 00 01 15 */	li r0, 0x115
/* 802F0C58 002BA218  48 00 00 08 */	b lbl_802F0C60
.global lbl_802F0C5C
lbl_802F0C5C:
/* 802F0C5C 002BA21C  38 00 01 14 */	li r0, 0x114
lbl_802F0C60:
/* 802F0C60 002BA220  B0 1E 00 00 */	sth r0, 0(r30)
lbl_802F0C64:
/* 802F0C64 002BA224  81 9F 00 2C */	lwz r12, 0x2c(r31)
/* 802F0C68 002BA228  2C 0C 00 00 */	cmpwi r12, 0
/* 802F0C6C 002BA22C  41 82 00 14 */	beq lbl_802F0C80
/* 802F0C70 002BA230  7F C4 F3 78 */	mr r4, r30
/* 802F0C74 002BA234  38 60 00 05 */	li r3, 5
/* 802F0C78 002BA238  7D 89 03 A6 */	mtctr r12
/* 802F0C7C 002BA23C  4E 80 04 21 */	bctrl 
lbl_802F0C80:
/* 802F0C80 002BA240  38 00 00 00 */	li r0, 0
/* 802F0C84 002BA244  98 1F 00 7E */	stb r0, 0x7e(r31)
/* 802F0C88 002BA248  90 1F 00 2C */	stw r0, 0x2c(r31)
lbl_802F0C8C:
/* 802F0C8C 002BA24C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F0C90 002BA250  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F0C94 002BA254  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802F0C98 002BA258  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802F0C9C 002BA25C  7C 08 03 A6 */	mtlr r0
/* 802F0CA0 002BA260  38 21 00 20 */	addi r1, r1, 0x20
/* 802F0CA4 002BA264  4E 80 00 20 */	blr

gap_find_addr_inq_cb:
/* 802F0CA8 002BA268  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F0CAC 002BA26C  7C 08 02 A6 */	mflr r0
/* 802F0CB0 002BA270  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F0CB4 002BA274  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F0CB8 002BA278  3F E0 80 5C */	lis r31, lbl_805C21C0@ha
/* 802F0CBC 002BA27C  3B FF 21 C0 */	addi r31, r31, lbl_805C21C0@l
/* 802F0CC0 002BA280  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802F0CC4 002BA284  3B DF 00 34 */	addi r30, r31, 0x34
/* 802F0CC8 002BA288  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802F0CCC 002BA28C  7C 7D 1B 78 */	mr r29, r3
/* 802F0CD0 002BA290  88 1F 00 7E */	lbz r0, 0x7e(r31)
/* 802F0CD4 002BA294  2C 00 00 00 */	cmpwi r0, 0
/* 802F0CD8 002BA298  41 82 01 68 */	beq lbl_802F0E40
/* 802F0CDC 002BA29C  88 1F 00 28 */	lbz r0, 0x28(r31)
/* 802F0CE0 002BA2A0  28 00 00 04 */	cmplwi r0, 4
/* 802F0CE4 002BA2A4  41 80 00 20 */	blt lbl_802F0D04
/* 802F0CE8 002BA2A8  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 802F0CEC 002BA2AC  3C 80 80 54 */	lis r4, lbl_805465E0@ha
/* 802F0CF0 002BA2B0  88 BD 00 00 */	lbz r5, 0(r29)
/* 802F0CF4 002BA2B4  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 802F0CF8 002BA2B8  88 DD 00 01 */	lbz r6, 1(r29)
/* 802F0CFC 002BA2BC  38 84 65 E0 */	addi r4, r4, lbl_805465E0@l
/* 802F0D00 002BA2C0  4B FE D2 E1 */	bl LogMsg_2
lbl_802F0D04:
/* 802F0D04 002BA2C4  88 1D 00 00 */	lbz r0, 0(r29)
/* 802F0D08 002BA2C8  2C 00 00 00 */	cmpwi r0, 0
/* 802F0D0C 002BA2CC  40 82 00 AC */	bne lbl_802F0DB8
/* 802F0D10 002BA2D0  38 00 01 11 */	li r0, 0x111
/* 802F0D14 002BA2D4  B0 1E 00 00 */	sth r0, 0(r30)
/* 802F0D18 002BA2D8  4B FF 81 A5 */	bl BTM_InqDbFirst
/* 802F0D1C 002BA2DC  2C 03 00 00 */	cmpwi r3, 0
/* 802F0D20 002BA2E0  90 7F 00 30 */	stw r3, 0x30(r31)
/* 802F0D24 002BA2E4  41 82 00 88 */	beq lbl_802F0DAC
/* 802F0D28 002BA2E8  3C 80 80 2F */	lis r4, gap_find_addr_name_cb@ha
/* 802F0D2C 002BA2EC  38 63 00 02 */	addi r3, r3, 2
/* 802F0D30 002BA2F0  38 84 0A 90 */	addi r4, r4, gap_find_addr_name_cb@l
/* 802F0D34 002BA2F4  4B FF 7F 69 */	bl BTM_ReadRemoteDeviceName
/* 802F0D38 002BA2F8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802F0D3C 002BA2FC  28 00 00 01 */	cmplwi r0, 1
/* 802F0D40 002BA300  41 82 01 00 */	beq lbl_802F0E40
/* 802F0D44 002BA304  88 1D 00 00 */	lbz r0, 0(r29)
/* 802F0D48 002BA308  28 00 00 08 */	cmplwi r0, 8
/* 802F0D4C 002BA30C  41 81 00 54 */	bgt lbl_802F0DA0
/* 802F0D50 002BA310  3C 60 80 54 */	lis r3, lbl_80546648@ha
/* 802F0D54 002BA314  54 00 10 3A */	slwi r0, r0, 2
/* 802F0D58 002BA318  38 63 66 48 */	addi r3, r3, lbl_80546648@l
/* 802F0D5C 002BA31C  7C 63 00 2E */	lwzx r3, r3, r0
/* 802F0D60 002BA320  7C 69 03 A6 */	mtctr r3
/* 802F0D64 002BA324  4E 80 04 20 */	bctr 
.global lbl_802F0D68
lbl_802F0D68:
/* 802F0D68 002BA328  38 00 00 00 */	li r0, 0
/* 802F0D6C 002BA32C  48 00 00 38 */	b lbl_802F0DA4
.global lbl_802F0D70
lbl_802F0D70:
/* 802F0D70 002BA330  38 00 01 0B */	li r0, 0x10b
/* 802F0D74 002BA334  48 00 00 30 */	b lbl_802F0DA4
.global lbl_802F0D78
lbl_802F0D78:
/* 802F0D78 002BA338  38 00 01 03 */	li r0, 0x103
/* 802F0D7C 002BA33C  48 00 00 28 */	b lbl_802F0DA4
.global lbl_802F0D80
lbl_802F0D80:
/* 802F0D80 002BA340  38 00 01 09 */	li r0, 0x109
/* 802F0D84 002BA344  48 00 00 20 */	b lbl_802F0DA4
.global lbl_802F0D88
lbl_802F0D88:
/* 802F0D88 002BA348  38 00 01 0C */	li r0, 0x10c
/* 802F0D8C 002BA34C  48 00 00 18 */	b lbl_802F0DA4
.global lbl_802F0D90
lbl_802F0D90:
/* 802F0D90 002BA350  38 00 01 0D */	li r0, 0x10d
/* 802F0D94 002BA354  48 00 00 10 */	b lbl_802F0DA4
.global lbl_802F0D98
lbl_802F0D98:
/* 802F0D98 002BA358  38 00 01 15 */	li r0, 0x115
/* 802F0D9C 002BA35C  48 00 00 08 */	b lbl_802F0DA4
.global lbl_802F0DA0
lbl_802F0DA0:
/* 802F0DA0 002BA360  38 00 01 14 */	li r0, 0x114
lbl_802F0DA4:
/* 802F0DA4 002BA364  B0 1E 00 00 */	sth r0, 0(r30)
/* 802F0DA8 002BA368  48 00 00 70 */	b lbl_802F0E18
lbl_802F0DAC:
/* 802F0DAC 002BA36C  38 00 01 02 */	li r0, 0x102
/* 802F0DB0 002BA370  B0 1E 00 00 */	sth r0, 0(r30)
/* 802F0DB4 002BA374  48 00 00 64 */	b lbl_802F0E18
lbl_802F0DB8:
/* 802F0DB8 002BA378  28 00 00 08 */	cmplwi r0, 8
/* 802F0DBC 002BA37C  41 81 00 54 */	bgt lbl_802F0E10
/* 802F0DC0 002BA380  3C 60 80 54 */	lis r3, lbl_80546624@ha
/* 802F0DC4 002BA384  54 00 10 3A */	slwi r0, r0, 2
/* 802F0DC8 002BA388  38 63 66 24 */	addi r3, r3, lbl_80546624@l
/* 802F0DCC 002BA38C  7C 63 00 2E */	lwzx r3, r3, r0
/* 802F0DD0 002BA390  7C 69 03 A6 */	mtctr r3
/* 802F0DD4 002BA394  4E 80 04 20 */	bctr 
.global lbl_802F0DD8
lbl_802F0DD8:
/* 802F0DD8 002BA398  38 00 00 00 */	li r0, 0
/* 802F0DDC 002BA39C  48 00 00 38 */	b lbl_802F0E14
.global lbl_802F0DE0
lbl_802F0DE0:
/* 802F0DE0 002BA3A0  38 00 01 0B */	li r0, 0x10b
/* 802F0DE4 002BA3A4  48 00 00 30 */	b lbl_802F0E14
.global lbl_802F0DE8
lbl_802F0DE8:
/* 802F0DE8 002BA3A8  38 00 01 03 */	li r0, 0x103
/* 802F0DEC 002BA3AC  48 00 00 28 */	b lbl_802F0E14
.global lbl_802F0DF0
lbl_802F0DF0:
/* 802F0DF0 002BA3B0  38 00 01 09 */	li r0, 0x109
/* 802F0DF4 002BA3B4  48 00 00 20 */	b lbl_802F0E14
.global lbl_802F0DF8
lbl_802F0DF8:
/* 802F0DF8 002BA3B8  38 00 01 0C */	li r0, 0x10c
/* 802F0DFC 002BA3BC  48 00 00 18 */	b lbl_802F0E14
.global lbl_802F0E00
lbl_802F0E00:
/* 802F0E00 002BA3C0  38 00 01 0D */	li r0, 0x10d
/* 802F0E04 002BA3C4  48 00 00 10 */	b lbl_802F0E14
.global lbl_802F0E08
lbl_802F0E08:
/* 802F0E08 002BA3C8  38 00 01 15 */	li r0, 0x115
/* 802F0E0C 002BA3CC  48 00 00 08 */	b lbl_802F0E14
.global lbl_802F0E10
lbl_802F0E10:
/* 802F0E10 002BA3D0  38 00 01 14 */	li r0, 0x114
lbl_802F0E14:
/* 802F0E14 002BA3D4  B0 1E 00 00 */	sth r0, 0(r30)
lbl_802F0E18:
/* 802F0E18 002BA3D8  81 9F 00 2C */	lwz r12, 0x2c(r31)
/* 802F0E1C 002BA3DC  2C 0C 00 00 */	cmpwi r12, 0
/* 802F0E20 002BA3E0  41 82 00 14 */	beq lbl_802F0E34
/* 802F0E24 002BA3E4  7F C4 F3 78 */	mr r4, r30
/* 802F0E28 002BA3E8  38 60 00 05 */	li r3, 5
/* 802F0E2C 002BA3EC  7D 89 03 A6 */	mtctr r12
/* 802F0E30 002BA3F0  4E 80 04 21 */	bctrl 
lbl_802F0E34:
/* 802F0E34 002BA3F4  38 00 00 00 */	li r0, 0
/* 802F0E38 002BA3F8  98 1F 00 7E */	stb r0, 0x7e(r31)
/* 802F0E3C 002BA3FC  90 1F 00 2C */	stw r0, 0x2c(r31)
lbl_802F0E40:
/* 802F0E40 002BA400  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F0E44 002BA404  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F0E48 002BA408  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802F0E4C 002BA40C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802F0E50 002BA410  7C 08 03 A6 */	mtlr r0
/* 802F0E54 002BA414  38 21 00 20 */	addi r1, r1, 0x20
/* 802F0E58 002BA418  4E 80 00 20 */	blr

#unreferenced?
gap_convert_btm_status:
/* 802F0E5C 002BA41C  28 03 00 08 */	cmplwi r3, 8
/* 802F0E60 002BA420  41 81 00 54 */	bgt lbl_802F0EB4
/* 802F0E64 002BA424  3C 80 80 54 */	lis r4, lbl_8054666C@ha
/* 802F0E68 002BA428  54 60 10 3A */	slwi r0, r3, 2
/* 802F0E6C 002BA42C  38 84 66 6C */	addi r4, r4, lbl_8054666C@l
/* 802F0E70 002BA430  7C 84 00 2E */	lwzx r4, r4, r0
/* 802F0E74 002BA434  7C 89 03 A6 */	mtctr r4
/* 802F0E78 002BA438  4E 80 04 20 */	bctr 
.global lbl_802F0E7C
lbl_802F0E7C:
/* 802F0E7C 002BA43C  38 60 00 00 */	li r3, 0
/* 802F0E80 002BA440  4E 80 00 20 */	blr 
.global lbl_802F0E84
lbl_802F0E84:
/* 802F0E84 002BA444  38 60 01 0B */	li r3, 0x10b
/* 802F0E88 002BA448  4E 80 00 20 */	blr 
.global lbl_802F0E8C
lbl_802F0E8C:
/* 802F0E8C 002BA44C  38 60 01 03 */	li r3, 0x103
/* 802F0E90 002BA450  4E 80 00 20 */	blr 
.global lbl_802F0E94
lbl_802F0E94:
/* 802F0E94 002BA454  38 60 01 09 */	li r3, 0x109
/* 802F0E98 002BA458  4E 80 00 20 */	blr 
.global lbl_802F0E9C
lbl_802F0E9C:
/* 802F0E9C 002BA45C  38 60 01 0C */	li r3, 0x10c
/* 802F0EA0 002BA460  4E 80 00 20 */	blr 
.global lbl_802F0EA4
lbl_802F0EA4:
/* 802F0EA4 002BA464  38 60 01 0D */	li r3, 0x10d
/* 802F0EA8 002BA468  4E 80 00 20 */	blr 
.global lbl_802F0EAC
lbl_802F0EAC:
/* 802F0EAC 002BA46C  38 60 01 15 */	li r3, 0x115
/* 802F0EB0 002BA470  4E 80 00 20 */	blr
.global lbl_802F0EB4
lbl_802F0EB4:
/* 802F0EB4 002BA474  38 60 01 14 */	li r3, 0x114
/* 802F0EB8 002BA478  4E 80 00 20 */	blr


.section .data, "wa"  # 0x805281E0 - 0x80573C60
.global lbl_805463A0
lbl_805463A0:
	.asciz "   GAP Inquiry Complete Event (Status 0x%04x, Result(s) %d)"
	.asciz "   GAP Discovery Complete Event(SDP Result: 0x%04x)"
	.asciz "   GAP Discovery Successfully Completed"
	.asciz "   GAP Remote Name Complete Event (status 0x%04x)"
	.balign 4


.global lbl_8054646C
lbl_8054646C:
	# ROM: 0x54256C
	.4byte lbl_802F09CC
	.4byte lbl_802F09D4
	.4byte lbl_802F09DC
	.4byte lbl_802F0A04
	.4byte lbl_802F09E4
	.4byte lbl_802F09E4
	.4byte lbl_802F09EC
	.4byte lbl_802F09F4
	.4byte lbl_802F09FC
	.asciz "GAP Inquiry Results Callback (bdaddr [%02x%02x%02x%02x%02x%02x])"
	.balign 4
	.asciz "                             (COD [%02x%02x%02x], clkoff 0x%04x)"
	.balign 4


.global lbl_80546518
lbl_80546518:
	.asciz "   GAP: FindAddrByName Rem Name Cmpl Evt (Status 0x%04x, Name [%s])"


.global lbl_8054655C
lbl_8054655C:
	.asciz "   GAP: FindAddrByName Rem Name Cmpl Evt (Status 0x%04x)"
	.balign 4


.global lbl_80546598
lbl_80546598:
	# ROM: 0x542698
	.4byte lbl_802F0C24
	.4byte lbl_802F0C2C
	.4byte lbl_802F0C34
	.4byte lbl_802F0C5C
	.4byte lbl_802F0C3C
	.4byte lbl_802F0C3C
	.4byte lbl_802F0C44
	.4byte lbl_802F0C4C
	.4byte lbl_802F0C54


.global lbl_805465BC
lbl_805465BC:
	# ROM: 0x5426BC
	.4byte lbl_802F0B8C
	.4byte lbl_802F0B94
	.4byte lbl_802F0B9C
	.4byte lbl_802F0BC4
	.4byte lbl_802F0BA4
	.4byte lbl_802F0BA4
	.4byte lbl_802F0BAC
	.4byte lbl_802F0BB4
	.4byte lbl_802F0BBC


.global lbl_805465E0
lbl_805465E0:
	.asciz "   GAP: FindAddrByName Inq Cmpl Evt (Status 0x%04x, Result(s) %d)"
	.balign 4


.global lbl_80546624
lbl_80546624:
	# ROM: 0x542724
	.4byte lbl_802F0DD8
	.4byte lbl_802F0DE0
	.4byte lbl_802F0DE8
	.4byte lbl_802F0E10
	.4byte lbl_802F0DF0
	.4byte lbl_802F0DF0
	.4byte lbl_802F0DF8
	.4byte lbl_802F0E00
	.4byte lbl_802F0E08


.global lbl_80546648
lbl_80546648:
	# ROM: 0x542748
	.4byte lbl_802F0D68
	.4byte lbl_802F0D70
	.4byte lbl_802F0D78
	.4byte lbl_802F0DA0
	.4byte lbl_802F0D80
	.4byte lbl_802F0D80
	.4byte lbl_802F0D88
	.4byte lbl_802F0D90
	.4byte lbl_802F0D98


.global lbl_8054666C
lbl_8054666C:
	# ROM: 0x54276C
	.4byte lbl_802F0E7C
	.4byte lbl_802F0E84
	.4byte lbl_802F0E8C
	.4byte lbl_802F0EB4
	.4byte lbl_802F0E94
	.4byte lbl_802F0E94
	.4byte lbl_802F0E9C
	.4byte lbl_802F0EA4
	.4byte lbl_802F0EAC