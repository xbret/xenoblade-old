.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn modf, global
/* 802CAFC0 00294580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CAFC4 00294584  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 802CAFC8 00294588  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 802CAFCC 0029458C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 802CAFD0 00294590  54 A4 65 7E */	extrwi r4, r5, 11, 1
/* 802CAFD4 00294594  38 E4 FC 01 */	addi r7, r4, -0x3ff
/* 802CAFD8 00294598  2C 07 00 14 */	cmpwi r7, 0x14
/* 802CAFDC 0029459C  40 80 00 70 */	bge .L_802CB04C
/* 802CAFE0 002945A0  2C 07 00 00 */	cmpwi r7, 0x0
/* 802CAFE4 002945A4  40 80 00 18 */	bge .L_802CAFFC
/* 802CAFE8 002945A8  54 A4 00 00 */	clrrwi r4, r5, 31
/* 802CAFEC 002945AC  38 00 00 00 */	li r0, 0x0
/* 802CAFF0 002945B0  90 83 00 00 */	stw r4, 0x0(r3)
/* 802CAFF4 002945B4  90 03 00 04 */	stw r0, 0x4(r3)
/* 802CAFF8 002945B8  48 00 00 BC */	b .L_802CB0B4
.L_802CAFFC:
/* 802CAFFC 002945BC  3C 80 00 10 */	lis r4, 0x10
/* 802CB000 002945C0  38 04 FF FF */	addi r0, r4, -0x1
/* 802CB004 002945C4  7C 04 3E 30 */	sraw r4, r0, r7
/* 802CB008 002945C8  7C A0 20 38 */	and r0, r5, r4
/* 802CB00C 002945CC  7C C0 03 79 */	or. r0, r6, r0
/* 802CB010 002945D0  40 82 00 20 */	bne .L_802CB030
/* 802CB014 002945D4  54 A4 00 00 */	clrrwi r4, r5, 31
/* 802CB018 002945D8  38 00 00 00 */	li r0, 0x0
/* 802CB01C 002945DC  90 81 00 08 */	stw r4, 0x8(r1)
/* 802CB020 002945E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802CB024 002945E4  D8 23 00 00 */	stfd f1, 0x0(r3)
/* 802CB028 002945E8  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 802CB02C 002945EC  48 00 00 88 */	b .L_802CB0B4
.L_802CB030:
/* 802CB030 002945F0  7C A4 20 78 */	andc r4, r5, r4
/* 802CB034 002945F4  38 00 00 00 */	li r0, 0x0
/* 802CB038 002945F8  90 83 00 00 */	stw r4, 0x0(r3)
/* 802CB03C 002945FC  90 03 00 04 */	stw r0, 0x4(r3)
/* 802CB040 00294600  C8 03 00 00 */	lfd f0, 0x0(r3)
/* 802CB044 00294604  FC 21 00 28 */	fsub f1, f1, f0
/* 802CB048 00294608  48 00 00 6C */	b .L_802CB0B4
.L_802CB04C:
/* 802CB04C 0029460C  2C 07 00 33 */	cmpwi r7, 0x33
/* 802CB050 00294610  40 81 00 20 */	ble .L_802CB070
/* 802CB054 00294614  54 A4 00 00 */	clrrwi r4, r5, 31
/* 802CB058 00294618  38 00 00 00 */	li r0, 0x0
/* 802CB05C 0029461C  90 81 00 08 */	stw r4, 0x8(r1)
/* 802CB060 00294620  90 01 00 0C */	stw r0, 0xc(r1)
/* 802CB064 00294624  D8 23 00 00 */	stfd f1, 0x0(r3)
/* 802CB068 00294628  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 802CB06C 0029462C  48 00 00 48 */	b .L_802CB0B4
.L_802CB070:
/* 802CB070 00294630  38 07 FF EC */	addi r0, r7, -0x14
/* 802CB074 00294634  38 80 FF FF */	li r4, -0x1
/* 802CB078 00294638  7C 84 04 30 */	srw r4, r4, r0
/* 802CB07C 0029463C  7C C0 20 39 */	and. r0, r6, r4
/* 802CB080 00294640  40 82 00 20 */	bne .L_802CB0A0
/* 802CB084 00294644  54 A4 00 00 */	clrrwi r4, r5, 31
/* 802CB088 00294648  38 00 00 00 */	li r0, 0x0
/* 802CB08C 0029464C  90 81 00 08 */	stw r4, 0x8(r1)
/* 802CB090 00294650  90 01 00 0C */	stw r0, 0xc(r1)
/* 802CB094 00294654  D8 23 00 00 */	stfd f1, 0x0(r3)
/* 802CB098 00294658  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 802CB09C 0029465C  48 00 00 18 */	b .L_802CB0B4
.L_802CB0A0:
/* 802CB0A0 00294660  7C C0 20 78 */	andc r0, r6, r4
/* 802CB0A4 00294664  90 A3 00 00 */	stw r5, 0x0(r3)
/* 802CB0A8 00294668  90 03 00 04 */	stw r0, 0x4(r3)
/* 802CB0AC 0029466C  C8 03 00 00 */	lfd f0, 0x0(r3)
/* 802CB0B0 00294670  FC 21 00 28 */	fsub f1, f1, f0
.L_802CB0B4:
/* 802CB0B4 00294674  38 21 00 10 */	addi r1, r1, 0x10
/* 802CB0B8 00294678  4E 80 00 20 */	blr
.endfn modf
