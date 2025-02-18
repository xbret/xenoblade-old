.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CRsrcData, global
/* 80439CB4 00403274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80439CB8 00403278  7C 08 02 A6 */	mflr r0
/* 80439CBC 0040327C  38 C0 00 00 */	li r6, 0
/* 80439CC0 00403280  90 01 00 14 */	stw r0, 0x14(r1)
/* 80439CC4 00403284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80439CC8 00403288  7C 7F 1B 78 */	mr r31, r3
/* 80439CCC 0040328C  4B FF D8 F1 */	bl __ct__11CWorkThreadFPCcP11CWorkThreadi
/* 80439CD0 00403290  3C 60 80 57 */	lis r3, __vt__9CRsrcData@ha
/* 80439CD4 00403294  38 80 00 00 */	li r4, 0
/* 80439CD8 00403298  38 63 EB D8 */	addi r3, r3, __vt__9CRsrcData@l
/* 80439CDC 0040329C  38 00 00 38 */	li r0, 0x38
/* 80439CE0 004032A0  90 7F 00 00 */	stw r3, 0(r31)
/* 80439CE4 004032A4  7F E3 FB 78 */	mr r3, r31
/* 80439CE8 004032A8  98 9F 01 C4 */	stb r4, 0x1c4(r31)
/* 80439CEC 004032AC  90 9F 02 C4 */	stw r4, 0x2c4(r31)
/* 80439CF0 004032B0  98 9F 02 C8 */	stb r4, 0x2c8(r31)
/* 80439CF4 004032B4  90 9F 03 C8 */	stw r4, 0x3c8(r31)
/* 80439CF8 004032B8  98 9F 03 CC */	stb r4, 0x3cc(r31)
/* 80439CFC 004032BC  90 9F 04 CC */	stw r4, 0x4cc(r31)
/* 80439D00 004032C0  90 9F 04 D0 */	stw r4, 0x4d0(r31)
/* 80439D04 004032C4  90 9F 04 D4 */	stw r4, 0x4d4(r31)
/* 80439D08 004032C8  90 9F 04 D8 */	stw r4, 0x4d8(r31)
/* 80439D0C 004032CC  90 9F 04 DC */	stw r4, 0x4dc(r31)
/* 80439D10 004032D0  98 9F 04 E0 */	stb r4, 0x4e0(r31)
/* 80439D14 004032D4  B0 9F 04 E2 */	sth r4, 0x4e2(r31)
/* 80439D18 004032D8  B0 9F 04 E4 */	sth r4, 0x4e4(r31)
/* 80439D1C 004032DC  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80439D20 004032E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80439D24 004032E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80439D28 004032E8  7C 08 03 A6 */	mtlr r0
/* 80439D2C 004032EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80439D30 004032F0  4E 80 00 20 */	blr 
.endfn __ct__CRsrcData

.fn __dt__9CRsrcDataFv, global
/* 80439D34 004032F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80439D38 004032F8  7C 08 02 A6 */	mflr r0
/* 80439D3C 004032FC  2C 03 00 00 */	cmpwi r3, 0
/* 80439D40 00403300  90 01 00 14 */	stw r0, 0x14(r1)
/* 80439D44 00403304  BF C1 00 08 */	stmw r30, 8(r1)
/* 80439D48 00403308  7C 7E 1B 78 */	mr r30, r3
/* 80439D4C 0040330C  7C 9F 23 78 */	mr r31, r4
/* 80439D50 00403310  41 82 00 48 */	beq .L_80439D98
/* 80439D54 00403314  80 03 04 D0 */	lwz r0, 0x4d0(r3)
/* 80439D58 00403318  3C 80 80 57 */	lis r4, __vt__9CRsrcData@ha
/* 80439D5C 0040331C  38 84 EB D8 */	addi r4, r4, __vt__9CRsrcData@l
/* 80439D60 00403320  90 83 00 00 */	stw r4, 0(r3)
/* 80439D64 00403324  2C 00 00 00 */	cmpwi r0, 0
/* 80439D68 00403328  41 82 00 14 */	beq .L_80439D7C
/* 80439D6C 0040332C  7C 03 03 78 */	mr r3, r0
/* 80439D70 00403330  4B FF A7 69 */	bl MemManager_804344D8
/* 80439D74 00403334  38 00 00 00 */	li r0, 0
/* 80439D78 00403338  90 1E 04 D0 */	stw r0, 0x4d0(r30)
.L_80439D7C:
/* 80439D7C 0040333C  7F C3 F3 78 */	mr r3, r30
/* 80439D80 00403340  38 80 00 00 */	li r4, 0
/* 80439D84 00403344  4B FF DD 45 */	bl __dt__11CWorkThreadFv
/* 80439D88 00403348  2C 1F 00 00 */	cmpwi r31, 0
/* 80439D8C 0040334C  40 81 00 0C */	ble .L_80439D98
/* 80439D90 00403350  7F C3 F3 78 */	mr r3, r30
/* 80439D94 00403354  4B FF AE 99 */	bl __dl__FPv
.L_80439D98:
/* 80439D98 00403358  7F C3 F3 78 */	mr r3, r30
/* 80439D9C 0040335C  BB C1 00 08 */	lmw r30, 8(r1)
/* 80439DA0 00403360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80439DA4 00403364  7C 08 03 A6 */	mtlr r0
/* 80439DA8 00403368  38 21 00 10 */	addi r1, r1, 0x10
/* 80439DAC 0040336C  4E 80 00 20 */	blr
.endfn __dt__9CRsrcDataFv

.fn func_80439DB0, global
/* 80439DB0 00403370  80 A3 04 D8 */	lwz r5, 0x4d8(r3)
/* 80439DB4 00403374  2C 05 00 00 */	cmpwi r5, 0
/* 80439DB8 00403378  41 82 00 0C */	beq .L_80439DC4
/* 80439DBC 0040337C  38 05 FF FF */	addi r0, r5, -1
/* 80439DC0 00403380  90 03 04 D8 */	stw r0, 0x4d8(r3)
.L_80439DC4:
/* 80439DC4 00403384  80 03 04 D8 */	lwz r0, 0x4d8(r3)
/* 80439DC8 00403388  2C 00 00 00 */	cmpwi r0, 0
/* 80439DCC 0040338C  4C 82 00 20 */	bnelr 
/* 80439DD0 00403390  2C 04 00 00 */	cmpwi r4, 0
/* 80439DD4 00403394  4D 82 00 20 */	beqlr 
/* 80439DD8 00403398  38 80 00 00 */	li r4, 0
/* 80439DDC 0040339C  4B FF E1 14 */	b func_80437EF0__11CWorkThreadFUl
/* 80439DE0 004033A0  4E 80 00 20 */	blr 
.endfn func_80439DB0

.fn func_80439DE4, global
/* 80439DE4 004033A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80439DE8 004033A8  7C 08 02 A6 */	mflr r0
/* 80439DEC 004033AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80439DF0 004033B0  80 03 04 D0 */	lwz r0, 0x4d0(r3)
/* 80439DF4 004033B4  7C 00 20 40 */	cmplw r0, r4
/* 80439DF8 004033B8  40 82 00 14 */	bne .L_80439E0C
/* 80439DFC 004033BC  38 80 00 00 */	li r4, 0
/* 80439E00 004033C0  4B FF E0 F1 */	bl func_80437EF0__11CWorkThreadFUl
/* 80439E04 004033C4  38 60 00 01 */	li r3, 1
/* 80439E08 004033C8  48 00 00 08 */	b .L_80439E10
.L_80439E0C:
/* 80439E0C 004033CC  38 60 00 00 */	li r3, 0
.L_80439E10:
/* 80439E10 004033D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80439E14 004033D4  7C 08 03 A6 */	mtlr r0
/* 80439E18 004033D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80439E1C 004033DC  4E 80 00 20 */	blr 
.endfn func_80439DE4

.fn func_80439E20, global
/* 80439E20 004033E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80439E24 004033E4  7C 08 02 A6 */	mflr r0
/* 80439E28 004033E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80439E2C 004033EC  BF 41 00 08 */	stmw r26, 8(r1)
/* 80439E30 004033F0  7C 9F 23 78 */	mr r31, r4
/* 80439E34 004033F4  7C 7A 1B 78 */	mr r26, r3
/* 80439E38 004033F8  7C BB 2B 78 */	mr r27, r5
/* 80439E3C 004033FC  7C DC 33 78 */	mr r28, r6
/* 80439E40 00403400  7C FD 3B 78 */	mr r29, r7
/* 80439E44 00403404  7D 1E 43 78 */	mr r30, r8
/* 80439E48 00403408  7F E3 FB 78 */	mr r3, r31
/* 80439E4C 0040340C  4B E7 F7 6D */	bl strlen
/* 80439E50 00403410  90 7A 02 C4 */	stw r3, 0x2c4(r26)
/* 80439E54 00403414  7F E4 FB 78 */	mr r4, r31
/* 80439E58 00403418  38 7A 01 C4 */	addi r3, r26, 0x1c4
/* 80439E5C 0040341C  4B E8 88 5D */	bl strcpy
/* 80439E60 00403420  2C 1E 00 00 */	cmpwi r30, 0
/* 80439E64 00403424  41 82 00 20 */	beq .L_80439E84
/* 80439E68 00403428  38 7A 01 C4 */	addi r3, r26, 0x1c4
/* 80439E6C 0040342C  4B E7 F7 4D */	bl strlen
/* 80439E70 00403430  90 7A 03 C8 */	stw r3, 0x3c8(r26)
/* 80439E74 00403434  38 7A 02 C8 */	addi r3, r26, 0x2c8
/* 80439E78 00403438  38 9A 01 C4 */	addi r4, r26, 0x1c4
/* 80439E7C 0040343C  4B E8 88 3D */	bl strcpy
/* 80439E80 00403440  48 00 00 24 */	b .L_80439EA4
.L_80439E84:
/* 80439E84 00403444  38 7A 01 C4 */	addi r3, r26, 0x1c4
/* 80439E88 00403448  4B FF B1 0D */	bl getFilenameFromPath__2mlFPCc
/* 80439E8C 0040344C  7C 7F 1B 78 */	mr r31, r3
/* 80439E90 00403450  4B E7 F7 29 */	bl strlen
/* 80439E94 00403454  90 7A 03 C8 */	stw r3, 0x3c8(r26)
/* 80439E98 00403458  7F E4 FB 78 */	mr r4, r31
/* 80439E9C 0040345C  38 7A 02 C8 */	addi r3, r26, 0x2c8
/* 80439EA0 00403460  4B E8 88 19 */	bl strcpy
.L_80439EA4:
/* 80439EA4 00403464  9B DA 04 E0 */	stb r30, 0x4e0(r26)
/* 80439EA8 00403468  7F 63 DB 78 */	mr r3, r27
/* 80439EAC 0040346C  4B E7 F7 0D */	bl strlen
/* 80439EB0 00403470  90 7A 04 CC */	stw r3, 0x4cc(r26)
/* 80439EB4 00403474  7F 64 DB 78 */	mr r4, r27
/* 80439EB8 00403478  38 7A 03 CC */	addi r3, r26, 0x3cc
/* 80439EBC 0040347C  4B E8 87 FD */	bl strcpy
/* 80439EC0 00403480  80 1A 04 DC */	lwz r0, 0x4dc(r26)
/* 80439EC4 00403484  38 60 00 00 */	li r3, 0
/* 80439EC8 00403488  2C 1C 00 00 */	cmpwi r28, 0
/* 80439ECC 0040348C  93 9A 04 D0 */	stw r28, 0x4d0(r26)
/* 80439ED0 00403490  60 00 00 02 */	ori r0, r0, 2
/* 80439ED4 00403494  93 BA 04 D4 */	stw r29, 0x4d4(r26)
/* 80439ED8 00403498  90 7A 04 D8 */	stw r3, 0x4d8(r26)
/* 80439EDC 0040349C  90 1A 04 DC */	stw r0, 0x4dc(r26)
/* 80439EE0 004034A0  40 82 00 0C */	bne .L_80439EEC
/* 80439EE4 004034A4  60 00 00 01 */	ori r0, r0, 1
/* 80439EE8 004034A8  90 1A 04 DC */	stw r0, 0x4dc(r26)
.L_80439EEC:
/* 80439EEC 004034AC  BB 41 00 08 */	lmw r26, 8(r1)
/* 80439EF0 004034B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80439EF4 004034B4  7C 08 03 A6 */	mtlr r0
/* 80439EF8 004034B8  38 21 00 20 */	addi r1, r1, 0x20
/* 80439EFC 004034BC  4E 80 00 20 */	blr 
.endfn func_80439E20

.fn func_80439F00, global
/* 80439F00 004034C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80439F04 004034C4  7C 08 02 A6 */	mflr r0
/* 80439F08 004034C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80439F0C 004034CC  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 80439F10 004034D0  3F E0 80 52 */	lis r31, lbl_80525E4C@ha
/* 80439F14 004034D4  7C 78 1B 78 */	mr r24, r3
/* 80439F18 004034D8  7C 99 23 78 */	mr r25, r4
/* 80439F1C 004034DC  7C BA 2B 78 */	mr r26, r5
/* 80439F20 004034E0  7C DB 33 78 */	mr r27, r6
/* 80439F24 004034E4  7C FC 3B 78 */	mr r28, r7
/* 80439F28 004034E8  7D 1D 43 78 */	mr r29, r8
/* 80439F2C 004034EC  3B FF 5E 4C */	addi r31, r31, lbl_80525E4C@l
/* 80439F30 004034F0  4B FF D6 85 */	bl getHeapIndex__16WorkThreadSystemFv
/* 80439F34 004034F4  7C 64 1B 78 */	mr r4, r3
/* 80439F38 004034F8  38 60 04 E8 */	li r3, 0x4e8
/* 80439F3C 004034FC  4B FF AB 21 */	bl heap_malloc__3mtlFUli
/* 80439F40 00403500  2C 03 00 00 */	cmpwi r3, 0
/* 80439F44 00403504  7C 7E 1B 78 */	mr r30, r3
/* 80439F48 00403508  41 82 00 14 */	beq .L_80439F5C
/* 80439F4C 0040350C  7F E4 FB 78 */	mr r4, r31
/* 80439F50 00403510  7F 05 C3 78 */	mr r5, r24
/* 80439F54 00403514  4B FF FD 61 */	bl __ct__CRsrcData
/* 80439F58 00403518  7C 7E 1B 78 */	mr r30, r3
.L_80439F5C:
/* 80439F5C 0040351C  7F C3 F3 78 */	mr r3, r30
/* 80439F60 00403520  7F 04 C3 78 */	mr r4, r24
/* 80439F64 00403524  38 A0 00 00 */	li r5, 0
/* 80439F68 00403528  4B FF EC 71 */	bl func_80438BD8__11CWorkThreadFP11CWorkThreadUl
/* 80439F6C 0040352C  7F C3 F3 78 */	mr r3, r30
/* 80439F70 00403530  7F 24 CB 78 */	mr r4, r25
/* 80439F74 00403534  7F 45 D3 78 */	mr r5, r26
/* 80439F78 00403538  7F 66 DB 78 */	mr r6, r27
/* 80439F7C 0040353C  7F 87 E3 78 */	mr r7, r28
/* 80439F80 00403540  7F A8 EB 78 */	mr r8, r29
/* 80439F84 00403544  4B FF FE 9D */	bl func_80439E20
/* 80439F88 00403548  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 80439F8C 0040354C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80439F90 00403550  7C 08 03 A6 */	mtlr r0
/* 80439F94 00403554  38 21 00 30 */	addi r1, r1, 0x30
/* 80439F98 00403558  4E 80 00 20 */	blr 
.endfn func_80439F00

.fn func_80439F9C, global
/* 80439F9C 0040355C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80439FA0 00403560  7C 08 02 A6 */	mflr r0
/* 80439FA4 00403564  90 01 00 14 */	stw r0, 0x14(r1)
/* 80439FA8 00403568  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80439FAC 0040356C  7C 7F 1B 78 */	mr r31, r3
/* 80439FB0 00403570  88 03 04 E0 */	lbz r0, 0x4e0(r3)
/* 80439FB4 00403574  2C 00 00 00 */	cmpwi r0, 0
/* 80439FB8 00403578  41 82 00 18 */	beq .L_80439FD0
/* 80439FBC 0040357C  38 63 02 C8 */	addi r3, r3, 0x2c8
/* 80439FC0 00403580  4B E8 88 75 */	bl strcmp
/* 80439FC4 00403584  7C 60 00 34 */	cntlzw r0, r3
/* 80439FC8 00403588  54 03 D9 7E */	srwi r3, r0, 5
/* 80439FCC 0040358C  48 00 00 20 */	b .L_80439FEC
.L_80439FD0:
/* 80439FD0 00403590  7C 83 23 78 */	mr r3, r4
/* 80439FD4 00403594  4B FF AF C1 */	bl getFilenameFromPath__2mlFPCc
/* 80439FD8 00403598  7C 64 1B 78 */	mr r4, r3
/* 80439FDC 0040359C  38 7F 02 C8 */	addi r3, r31, 0x2c8
/* 80439FE0 004035A0  4B E8 88 55 */	bl strcmp
/* 80439FE4 004035A4  7C 60 00 34 */	cntlzw r0, r3
/* 80439FE8 004035A8  54 03 D9 7E */	srwi r3, r0, 5
.L_80439FEC:
/* 80439FEC 004035AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80439FF0 004035B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80439FF4 004035B4  7C 08 03 A6 */	mtlr r0
/* 80439FF8 004035B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80439FFC 004035BC  4E 80 00 20 */	blr 
.endfn func_80439F9C

.fn CRsrcData_wkUpdate, global
/* 8043A000 004035C0  A8 83 04 E2 */	lha r4, 0x4e2(r3)
/* 8043A004 004035C4  2C 04 00 00 */	cmpwi r4, 0
/* 8043A008 004035C8  4D 82 00 20 */	beqlr 
/* 8043A00C 004035CC  38 04 FF FF */	addi r0, r4, -1
/* 8043A010 004035D0  B0 03 04 E2 */	sth r0, 0x4e2(r3)
/* 8043A014 004035D4  7C 00 07 35 */	extsh. r0, r0
/* 8043A018 004035D8  4D 81 00 20 */	bgtlr 
/* 8043A01C 004035DC  80 03 04 DC */	lwz r0, 0x4dc(r3)
/* 8043A020 004035E0  54 04 EF FE */	rlwinm r4, r0, 0x1d, 0x1f, 0x1f
/* 8043A024 004035E4  4B FF FD 8C */	b func_80439DB0
/* 8043A028 004035E8  4E 80 00 20 */	blr 
.endfn CRsrcData_wkUpdate

.fn CRsrcData_wkStartup, global
/* 8043A02C 004035EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043A030 004035F0  7C 08 02 A6 */	mflr r0
/* 8043A034 004035F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043A038 004035F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043A03C 004035FC  7C 7F 1B 78 */	mr r31, r3
/* 8043A040 00403600  4B FF FA 95 */	bl func_80439AD4
/* 8043A044 00403604  2C 03 00 00 */	cmpwi r3, 0
/* 8043A048 00403608  40 82 00 1C */	bne .L_8043A064
/* 8043A04C 0040360C  80 1F 04 DC */	lwz r0, 0x4dc(r31)
/* 8043A050 00403610  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8043A054 00403614  41 82 00 10 */	beq .L_8043A064
/* 8043A058 00403618  7F E3 FB 78 */	mr r3, r31
/* 8043A05C 0040361C  4B FF E9 9D */	bl wkStartup__11CWorkThreadFv
/* 8043A060 00403620  48 00 00 08 */	b .L_8043A068
.L_8043A064:
/* 8043A064 00403624  38 60 00 00 */	li r3, 0
.L_8043A068:
/* 8043A068 00403628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043A06C 0040362C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043A070 00403630  7C 08 03 A6 */	mtlr r0
/* 8043A074 00403634  38 21 00 10 */	addi r1, r1, 0x10
/* 8043A078 00403638  4E 80 00 20 */	blr 
.endfn CRsrcData_wkStartup

.fn CRsrcData_wkShutdown, global
/* 8043A07C 0040363C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043A080 00403640  7C 08 02 A6 */	mflr r0
/* 8043A084 00403644  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043A088 00403648  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043A08C 0040364C  7C 7F 1B 78 */	mr r31, r3
/* 8043A090 00403650  4B FF FA 45 */	bl func_80439AD4
/* 8043A094 00403654  2C 03 00 00 */	cmpwi r3, 0
/* 8043A098 00403658  40 82 00 30 */	bne .L_8043A0C8
/* 8043A09C 0040365C  80 7F 04 DC */	lwz r3, 0x4dc(r31)
/* 8043A0A0 00403660  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8043A0A4 00403664  41 82 00 10 */	beq .L_8043A0B4
/* 8043A0A8 00403668  80 1F 04 D8 */	lwz r0, 0x4d8(r31)
/* 8043A0AC 0040366C  2C 00 00 00 */	cmpwi r0, 0
/* 8043A0B0 00403670  41 82 00 0C */	beq .L_8043A0BC
.L_8043A0B4:
/* 8043A0B4 00403674  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8043A0B8 00403678  41 82 00 10 */	beq .L_8043A0C8
.L_8043A0BC:
/* 8043A0BC 0040367C  7F E3 FB 78 */	mr r3, r31
/* 8043A0C0 00403680  4B FF E9 65 */	bl wkShutdown__11CWorkThreadFv
/* 8043A0C4 00403684  48 00 00 08 */	b .L_8043A0CC
.L_8043A0C8:
/* 8043A0C8 00403688  38 60 00 00 */	li r3, 0
.L_8043A0CC:
/* 8043A0CC 0040368C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043A0D0 00403690  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043A0D4 00403694  7C 08 03 A6 */	mtlr r0
/* 8043A0D8 00403698  38 21 00 10 */	addi r1, r1, 0x10
/* 8043A0DC 0040369C  4E 80 00 20 */	blr 
.endfn CRsrcData_wkShutdown

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CRsrcData_typestr, global
	.asciz "CRsrcData"
	.balign 4
.endobj CRsrcData_typestr


.obj lbl_80525E4C, global
	.asciz "CRsrcData"
	.balign 4
.endobj lbl_80525E4C


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__9CRsrcData, global
	.4byte __RTTI__9CRsrcData
	.4byte 0
	.4byte __dt__9CRsrcDataFv
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
	.4byte CRsrcData_wkUpdate
	.4byte WorkThreadEvent2__11CWorkThreadFv
	.4byte WorkThreadEvent3__11CWorkThreadFv
	.4byte CRsrcData_wkStartup
	.4byte CRsrcData_wkShutdown
	.4byte WorkThreadEvent6__11CWorkThreadFv
.endobj __vt__9CRsrcData

.obj CRsrcData_hierarchy, global
	.4byte __RTTI__10IWorkEvent
	.4byte 0
	.4byte __RTTI__11CWorkThread
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CRsrcData_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__9CRsrcData, global
	.4byte CRsrcData_typestr
	.4byte CRsrcData_hierarchy
.endobj __RTTI__9CRsrcData

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001C278", local
.hidden "@etb_8001C278"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C278"

.obj "@etb_8001C280", local
.hidden "@etb_8001C280"
	.4byte 0x10080000
	.4byte 0x00000040
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__11CWorkThreadFv
.endobj "@etb_8001C280"

.obj "@etb_8001C29C", local
.hidden "@etb_8001C29C"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001C29C"

.obj "@etb_8001C2A4", local
.hidden "@etb_8001C2A4"
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_8001C2A4"

.obj "@etb_8001C2AC", local
.hidden "@etb_8001C2AC"
	.4byte 0x40080000
	.4byte 0x00000000
.endobj "@etb_8001C2AC"

.obj "@etb_8001C2B4", local
.hidden "@etb_8001C2B4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C2B4"

.obj "@etb_8001C2BC", local
.hidden "@etb_8001C2BC"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C2BC"

.obj "@etb_8001C2C4", local
.hidden "@etb_8001C2C4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C2C4"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033EF0", local
.hidden "@eti_80033EF0"
	.4byte __ct__CRsrcData
	.4byte 0x00000080
	.4byte "@etb_8001C278"
.endobj "@eti_80033EF0"

.obj "@eti_80033EFC", local
.hidden "@eti_80033EFC"
	.4byte __dt__9CRsrcDataFv
	.4byte 0x0000007C
	.4byte "@etb_8001C280"
.endobj "@eti_80033EFC"

.obj "@eti_80033F08", local
.hidden "@eti_80033F08"
	.4byte func_80439DE4
	.4byte 0x0000003C
	.4byte "@etb_8001C29C"
.endobj "@eti_80033F08"

.obj "@eti_80033F14", local
.hidden "@eti_80033F14"
	.4byte func_80439E20
	.4byte 0x000000E0
	.4byte "@etb_8001C2A4"
.endobj "@eti_80033F14"

.obj "@eti_80033F20", local
.hidden "@eti_80033F20"
	.4byte func_80439F00
	.4byte 0x0000009C
	.4byte "@etb_8001C2AC"
.endobj "@eti_80033F20"

.obj "@eti_80033F2C", local
.hidden "@eti_80033F2C"
	.4byte func_80439F9C
	.4byte 0x00000064
	.4byte "@etb_8001C2B4"
.endobj "@eti_80033F2C"

.obj "@eti_80033F38", local
.hidden "@eti_80033F38"
	.4byte CRsrcData_wkStartup
	.4byte 0x00000050
	.4byte "@etb_8001C2BC"
.endobj "@eti_80033F38"

.obj "@eti_80033F44", local
.hidden "@eti_80033F44"
	.4byte CRsrcData_wkShutdown
	.4byte 0x00000064
	.4byte "@etb_8001C2C4"
.endobj "@eti_80033F44"
