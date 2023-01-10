.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_804C0280
func_804C0280:
/* 804C0280 00489840  C0 62 D3 D8 */	lfs f3, float_8066D758@sda21(r2)
/* 804C0284 00489844  38 80 00 00 */	li r4, 0
/* 804C0288 00489848  C0 42 D3 DC */	lfs f2, float_8066D75C@sda21(r2)
/* 804C028C 0048984C  3C A0 80 57 */	lis r5, __vt__CLight@ha
/* 804C0290 00489850  C0 22 D3 E0 */	lfs f1, float_8066D760@sda21(r2)
/* 804C0294 00489854  38 A5 31 98 */	addi r5, r5, __vt__CLight@l
/* 804C0298 00489858  C0 02 D3 E4 */	lfs f0, float_8066D764@sda21(r2)
/* 804C029C 0048985C  60 80 00 0F */	ori r0, r4, 0xf
/* 804C02A0 00489860  90 A3 00 00 */	stw r5, 0(r3)
/* 804C02A4 00489864  D0 63 00 04 */	stfs f3, 4(r3)
/* 804C02A8 00489868  D0 63 00 08 */	stfs f3, 8(r3)
/* 804C02AC 0048986C  D0 63 00 0C */	stfs f3, 0xc(r3)
/* 804C02B0 00489870  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 804C02B4 00489874  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 804C02B8 00489878  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 804C02BC 0048987C  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 804C02C0 00489880  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 804C02C4 00489884  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 804C02C8 00489888  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 804C02CC 0048988C  90 83 00 2C */	stw r4, 0x2c(r3)
/* 804C02D0 00489890  90 83 00 34 */	stw r4, 0x34(r3)
/* 804C02D4 00489894  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 804C02D8 00489898  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 804C02DC 0048989C  90 03 00 30 */	stw r0, 0x30(r3)
/* 804C02E0 004898A0  4E 80 00 20 */	blr 

.global func_804C02E4
func_804C02E4:
/* 804C02E4 004898A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C02E8 004898A8  7C 08 02 A6 */	mflr r0
/* 804C02EC 004898AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C02F0 004898B0  39 61 00 20 */	addi r11, r1, 0x20
/* 804C02F4 004898B4  4B DF 9E 61 */	bl _savegpr_27
/* 804C02F8 004898B8  83 A4 00 04 */	lwz r29, 4(r4)
/* 804C02FC 004898BC  7C 7B 1B 78 */	mr r27, r3
/* 804C0300 004898C0  83 C4 00 08 */	lwz r30, 8(r4)
/* 804C0304 004898C4  7C 9C 23 78 */	mr r28, r4
/* 804C0308 004898C8  83 E4 00 0C */	lwz r31, 0xc(r4)
/* 804C030C 004898CC  81 84 00 10 */	lwz r12, 0x10(r4)
/* 804C0310 004898D0  81 64 00 14 */	lwz r11, 0x14(r4)
/* 804C0314 004898D4  81 44 00 18 */	lwz r10, 0x18(r4)
/* 804C0318 004898D8  81 24 00 1C */	lwz r9, 0x1c(r4)
/* 804C031C 004898DC  81 04 00 20 */	lwz r8, 0x20(r4)
/* 804C0320 004898E0  80 E4 00 24 */	lwz r7, 0x24(r4)
/* 804C0324 004898E4  80 C4 00 28 */	lwz r6, 0x28(r4)
/* 804C0328 004898E8  80 A4 00 30 */	lwz r5, 0x30(r4)
/* 804C032C 004898EC  80 04 00 34 */	lwz r0, 0x34(r4)
/* 804C0330 004898F0  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 804C0334 004898F4  93 A3 00 04 */	stw r29, 4(r3)
/* 804C0338 004898F8  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 804C033C 004898FC  93 C3 00 08 */	stw r30, 8(r3)
/* 804C0340 00489900  93 E3 00 0C */	stw r31, 0xc(r3)
/* 804C0344 00489904  91 83 00 10 */	stw r12, 0x10(r3)
/* 804C0348 00489908  91 63 00 14 */	stw r11, 0x14(r3)
/* 804C034C 0048990C  91 43 00 18 */	stw r10, 0x18(r3)
/* 804C0350 00489910  91 23 00 1C */	stw r9, 0x1c(r3)
/* 804C0354 00489914  91 03 00 20 */	stw r8, 0x20(r3)
/* 804C0358 00489918  90 E3 00 24 */	stw r7, 0x24(r3)
/* 804C035C 0048991C  90 C3 00 28 */	stw r6, 0x28(r3)
/* 804C0360 00489920  90 A3 00 30 */	stw r5, 0x30(r3)
/* 804C0364 00489924  90 03 00 34 */	stw r0, 0x34(r3)
/* 804C0368 00489928  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 804C036C 0048992C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804C0370 00489930  4B F3 CF F9 */	bl __as__Q34nw4r3g3d8LightObjFRCQ34nw4r3g3d8LightObj
/* 804C0374 00489934  C0 1C 00 3C */	lfs f0, 0x3c(r28)
/* 804C0378 00489938  39 61 00 20 */	addi r11, r1, 0x20
/* 804C037C 0048993C  D0 1B 00 3C */	stfs f0, 0x3c(r27)
/* 804C0380 00489940  7F 63 DB 78 */	mr r3, r27
/* 804C0384 00489944  4B DF 9E 1D */	bl _restgpr_27
/* 804C0388 00489948  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C038C 0048994C  7C 08 03 A6 */	mtlr r0
/* 804C0390 00489950  38 21 00 20 */	addi r1, r1, 0x20
/* 804C0394 00489954  4E 80 00 20 */	blr 

.global func_804C0398
func_804C0398:
/* 804C0398 00489958  90 83 00 2C */	stw r4, 0x2c(r3)
/* 804C039C 0048995C  4E 80 00 20 */	blr 

.global func_804C03A0
func_804C03A0:
/* 804C03A0 00489960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C03A4 00489964  7C 08 02 A6 */	mflr r0
/* 804C03A8 00489968  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C03AC 0048996C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C03B0 00489970  7C 7F 1B 78 */	mr r31, r3
/* 804C03B4 00489974  90 83 00 34 */	stw r4, 0x34(r3)
/* 804C03B8 00489978  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804C03BC 0048997C  4B F3 D1 19 */	bl Clear__Q34nw4r3g3d8LightObjFv
/* 804C03C0 00489980  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 804C03C4 00489984  2C 00 00 01 */	cmpwi r0, 1
/* 804C03C8 00489988  41 82 00 18 */	beq .L_804C03E0
/* 804C03CC 0048998C  2C 00 00 03 */	cmpwi r0, 3
/* 804C03D0 00489990  41 82 00 3C */	beq .L_804C040C
/* 804C03D4 00489994  2C 00 00 00 */	cmpwi r0, 0
/* 804C03D8 00489998  41 82 00 4C */	beq .L_804C0424
/* 804C03DC 0048999C  48 00 00 64 */	b .L_804C0440
.L_804C03E0:
/* 804C03E0 004899A0  C0 42 D3 D8 */	lfs f2, float_8066D758@sda21(r2)
/* 804C03E4 004899A4  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 804C03E8 004899A8  FC 60 10 90 */	fmr f3, f2
/* 804C03EC 004899AC  C0 22 D3 E0 */	lfs f1, float_8066D760@sda21(r2)
/* 804C03F0 004899B0  4B F3 D1 FD */	bl InitLightAttnA__Q34nw4r3g3d8LightObjFfff
/* 804C03F4 004899B4  C0 42 D3 D8 */	lfs f2, float_8066D758@sda21(r2)
/* 804C03F8 004899B8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 804C03FC 004899BC  FC 60 10 90 */	fmr f3, f2
/* 804C0400 004899C0  C0 22 D3 E0 */	lfs f1, float_8066D760@sda21(r2)
/* 804C0404 004899C4  4B F3 D2 69 */	bl InitLightAttnK__Q34nw4r3g3d8LightObjFfff
/* 804C0408 004899C8  48 00 00 38 */	b .L_804C0440
.L_804C040C:
/* 804C040C 004899CC  C0 42 D3 D8 */	lfs f2, float_8066D758@sda21(r2)
/* 804C0410 004899D0  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 804C0414 004899D4  FC 60 10 90 */	fmr f3, f2
/* 804C0418 004899D8  C0 22 D3 E0 */	lfs f1, float_8066D760@sda21(r2)
/* 804C041C 004899DC  4B F3 D1 D1 */	bl InitLightAttnA__Q34nw4r3g3d8LightObjFfff
/* 804C0420 004899E0  48 00 00 20 */	b .L_804C0440
.L_804C0424:
/* 804C0424 004899E4  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 804C0428 004899E8  80 03 00 00 */	lwz r0, 0(r3)
/* 804C042C 004899EC  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 804C0430 004899F0  90 03 00 00 */	stw r0, 0(r3)
/* 804C0434 004899F4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804C0438 004899F8  54 00 04 1C */	rlwinm r0, r0, 0, 0x10, 0xe
/* 804C043C 004899FC  90 1F 00 30 */	stw r0, 0x30(r31)
.L_804C0440:
/* 804C0440 00489A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C0444 00489A04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C0448 00489A08  7C 08 03 A6 */	mtlr r0
/* 804C044C 00489A0C  38 21 00 10 */	addi r1, r1, 0x10
/* 804C0450 00489A10  4E 80 00 20 */	blr 

.global func_804C0454
func_804C0454:
/* 804C0454 00489A14  80 C4 00 00 */	lwz r6, 0(r4)
/* 804C0458 00489A18  7C 67 1B 78 */	mr r7, r3
/* 804C045C 00489A1C  80 A4 00 04 */	lwz r5, 4(r4)
/* 804C0460 00489A20  80 04 00 08 */	lwz r0, 8(r4)
/* 804C0464 00489A24  90 C3 00 04 */	stw r6, 4(r3)
/* 804C0468 00489A28  90 A3 00 08 */	stw r5, 8(r3)
/* 804C046C 00489A2C  C0 23 00 04 */	lfs f1, 4(r3)
/* 804C0470 00489A30  90 03 00 0C */	stw r0, 0xc(r3)
/* 804C0474 00489A34  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804C0478 00489A38  C0 47 00 08 */	lfs f2, 8(r7)
/* 804C047C 00489A3C  C0 67 00 0C */	lfs f3, 0xc(r7)
/* 804C0480 00489A40  4B F3 D0 B0 */	b InitLightPos__Q34nw4r3g3d8LightObjFfff

.global func_804C0484
func_804C0484:
/* 804C0484 00489A44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C0488 00489A48  7C 08 02 A6 */	mflr r0
/* 804C048C 00489A4C  80 C4 00 00 */	lwz r6, 0(r4)
/* 804C0490 00489A50  7C 68 1B 78 */	mr r8, r3
/* 804C0494 00489A54  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C0498 00489A58  80 A4 00 04 */	lwz r5, 4(r4)
/* 804C049C 00489A5C  80 E3 00 34 */	lwz r7, 0x34(r3)
/* 804C04A0 00489A60  80 04 00 08 */	lwz r0, 8(r4)
/* 804C04A4 00489A64  2C 07 00 01 */	cmpwi r7, 1
/* 804C04A8 00489A68  90 C3 00 20 */	stw r6, 0x20(r3)
/* 804C04AC 00489A6C  90 A3 00 24 */	stw r5, 0x24(r3)
/* 804C04B0 00489A70  90 03 00 28 */	stw r0, 0x28(r3)
/* 804C04B4 00489A74  41 82 00 18 */	beq .L_804C04CC
/* 804C04B8 00489A78  2C 07 00 02 */	cmpwi r7, 2
/* 804C04BC 00489A7C  41 82 00 78 */	beq .L_804C0534
/* 804C04C0 00489A80  2C 07 00 04 */	cmpwi r7, 4
/* 804C04C4 00489A84  41 82 00 88 */	beq .L_804C054C
/* 804C04C8 00489A88  48 00 00 98 */	b .L_804C0560
.L_804C04CC:
/* 804C04CC 00489A8C  C0 42 D3 E8 */	lfs f2, float_8066D768@sda21(r2)
/* 804C04D0 00489A90  38 81 00 14 */	addi r4, r1, 0x14
/* 804C04D4 00489A94  E0 03 00 20 */	psq_l f0, 32(r3), 0, qr0
/* 804C04D8 00489A98  10 20 00 98 */	ps_muls0 f1, f0, f2
/* 804C04DC 00489A9C  E0 03 80 28 */	psq_l f0, 40(r3), 1, qr0
/* 804C04E0 00489AA0  F0 24 00 00 */	psq_st f1, 0(r4), 0, qr0
/* 804C04E4 00489AA4  10 20 00 98 */	ps_muls0 f1, f0, f2
/* 804C04E8 00489AA8  F0 24 80 08 */	psq_st f1, 8(r4), 1, qr0
/* 804C04EC 00489AAC  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 804C04F0 00489AB0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804C04F4 00489AB4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804C04F8 00489AB8  D0 41 00 08 */	stfs f2, 8(r1)
/* 804C04FC 00489ABC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804C0500 00489AC0  80 A1 00 08 */	lwz r5, 8(r1)
/* 804C0504 00489AC4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804C0508 00489AC8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804C050C 00489ACC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 804C0510 00489AD0  90 A3 00 04 */	stw r5, 4(r3)
/* 804C0514 00489AD4  90 83 00 08 */	stw r4, 8(r3)
/* 804C0518 00489AD8  C0 28 00 04 */	lfs f1, 4(r8)
/* 804C051C 00489ADC  90 03 00 0C */	stw r0, 0xc(r3)
/* 804C0520 00489AE0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804C0524 00489AE4  C0 48 00 08 */	lfs f2, 8(r8)
/* 804C0528 00489AE8  C0 68 00 0C */	lfs f3, 0xc(r8)
/* 804C052C 00489AEC  4B F3 D0 05 */	bl InitLightPos__Q34nw4r3g3d8LightObjFfff
/* 804C0530 00489AF0  48 00 00 30 */	b .L_804C0560
.L_804C0534:
/* 804C0534 00489AF4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804C0538 00489AF8  C0 28 00 20 */	lfs f1, 0x20(r8)
/* 804C053C 00489AFC  C0 48 00 24 */	lfs f2, 0x24(r8)
/* 804C0540 00489B00  C0 68 00 28 */	lfs f3, 0x28(r8)
/* 804C0544 00489B04  4B F3 D1 69 */	bl InitSpecularDir__Q34nw4r3g3d8LightObjFfff
/* 804C0548 00489B08  48 00 00 18 */	b .L_804C0560
.L_804C054C:
/* 804C054C 00489B0C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804C0550 00489B10  C0 28 00 20 */	lfs f1, 0x20(r8)
/* 804C0554 00489B14  C0 48 00 24 */	lfs f2, 0x24(r8)
/* 804C0558 00489B18  C0 68 00 28 */	lfs f3, 0x28(r8)
/* 804C055C 00489B1C  4B F3 D0 11 */	bl InitLightDir__Q34nw4r3g3d8LightObjFfff
.L_804C0560:
/* 804C0560 00489B20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C0564 00489B24  7C 08 03 A6 */	mtlr r0
/* 804C0568 00489B28  38 21 00 20 */	addi r1, r1, 0x20
/* 804C056C 00489B2C  4E 80 00 20 */	blr 

.global func_804C0570
func_804C0570:
/* 804C0570 00489B30  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 804C0574 00489B34  7C 08 02 A6 */	mflr r0
/* 804C0578 00489B38  C0 62 D3 D8 */	lfs f3, float_8066D758@sda21(r2)
/* 804C057C 00489B3C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 804C0580 00489B40  C0 82 C6 90 */	lfs f4, deg2rad__2mm@sda21(r2)
/* 804C0584 00489B44  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 804C0588 00489B48  EC A2 01 32 */	fmuls f5, f2, f4
/* 804C058C 00489B4C  C0 42 D3 E0 */	lfs f2, float_8066D760@sda21(r2)
/* 804C0590 00489B50  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 804C0594 00489B54  EC 81 01 32 */	fmuls f4, f1, f4
/* 804C0598 00489B58  C0 02 D3 EC */	lfs f0, float_8066D76C@sda21(r2)
/* 804C059C 00489B5C  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 804C05A0 00489B60  EC 20 01 72 */	fmuls f1, f0, f5
/* 804C05A4 00489B64  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 804C05A8 00489B68  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 804C05AC 00489B6C  F3 A1 00 98 */	psq_st f29, 152(r1), 0, qr0
/* 804C05B0 00489B70  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 804C05B4 00489B74  F3 81 00 88 */	psq_st f28, 136(r1), 0, qr0
/* 804C05B8 00489B78  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 804C05BC 00489B7C  F3 61 00 78 */	psq_st f27, 120(r1), 0, qr0
/* 804C05C0 00489B80  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 804C05C4 00489B84  7C 7F 1B 78 */	mr r31, r3
/* 804C05C8 00489B88  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 804C05CC 00489B8C  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 804C05D0 00489B90  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 804C05D4 00489B94  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 804C05D8 00489B98  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 804C05DC 00489B9C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 804C05E0 00489BA0  4B F4 A7 4D */	bl SinFIdx__Q24nw4r4mathFf
/* 804C05E4 00489BA4  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 804C05E8 00489BA8  FF 60 08 90 */	fmr f27, f1
/* 804C05EC 00489BAC  C0 02 D3 EC */	lfs f0, float_8066D76C@sda21(r2)
/* 804C05F0 00489BB0  EC 20 00 B2 */	fmuls f1, f0, f2
/* 804C05F4 00489BB4  4B F4 A7 A1 */	bl CosFIdx__Q24nw4r4mathFf
/* 804C05F8 00489BB8  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 804C05FC 00489BBC  FF 80 08 90 */	fmr f28, f1
/* 804C0600 00489BC0  C0 02 D3 EC */	lfs f0, float_8066D76C@sda21(r2)
/* 804C0604 00489BC4  EC 20 00 B2 */	fmuls f1, f0, f2
/* 804C0608 00489BC8  4B F4 A7 25 */	bl SinFIdx__Q24nw4r4mathFf
/* 804C060C 00489BCC  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 804C0610 00489BD0  FF A0 08 90 */	fmr f29, f1
/* 804C0614 00489BD4  C0 02 D3 EC */	lfs f0, float_8066D76C@sda21(r2)
/* 804C0618 00489BD8  EC 20 00 B2 */	fmuls f1, f0, f2
/* 804C061C 00489BDC  4B F4 A7 79 */	bl CosFIdx__Q24nw4r4mathFf
/* 804C0620 00489BE0  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 804C0624 00489BE4  FF C0 08 90 */	fmr f30, f1
/* 804C0628 00489BE8  C0 02 D3 EC */	lfs f0, float_8066D76C@sda21(r2)
/* 804C062C 00489BEC  EC 20 00 B2 */	fmuls f1, f0, f2
/* 804C0630 00489BF0  4B F4 A6 FD */	bl SinFIdx__Q24nw4r4mathFf
/* 804C0634 00489BF4  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 804C0638 00489BF8  FF E0 08 90 */	fmr f31, f1
/* 804C063C 00489BFC  C0 02 D3 EC */	lfs f0, float_8066D76C@sda21(r2)
/* 804C0640 00489C00  EC 20 00 B2 */	fmuls f1, f0, f2
/* 804C0644 00489C04  4B F4 A7 51 */	bl CosFIdx__Q24nw4r4mathFf
/* 804C0648 00489C08  EC DB 07 72 */	fmuls f6, f27, f29
/* 804C064C 00489C0C  80 BF 00 34 */	lwz r5, 0x34(r31)
/* 804C0650 00489C10  EC 5C 07 F2 */	fmuls f2, f28, f31
/* 804C0654 00489C14  C0 81 00 24 */	lfs f4, 0x24(r1)
/* 804C0658 00489C18  EC 1C 00 72 */	fmuls f0, f28, f1
/* 804C065C 00489C1C  C0 A1 00 20 */	lfs f5, 0x20(r1)
/* 804C0660 00489C20  EC E1 11 B8 */	fmsubs f7, f1, f6, f2
/* 804C0664 00489C24  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 804C0668 00489C28  EC 1F 01 BA */	fmadds f0, f31, f6, f0
/* 804C066C 00489C2C  2C 05 00 01 */	cmpwi r5, 1
/* 804C0670 00489C30  FD 00 E8 50 */	fneg f8, f29
/* 804C0674 00489C34  D0 E1 00 48 */	stfs f7, 0x48(r1)
/* 804C0678 00489C38  EC DB 07 B2 */	fmuls f6, f27, f30
/* 804C067C 00489C3C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804C0680 00489C40  ED BE 00 72 */	fmuls f13, f30, f1
/* 804C0684 00489C44  ED 5E 07 F2 */	fmuls f10, f30, f31
/* 804C0688 00489C48  D0 C1 00 60 */	stfs f6, 0x60(r1)
/* 804C068C 00489C4C  EC 44 00 32 */	fmuls f2, f4, f0
/* 804C0690 00489C50  EC 04 01 F2 */	fmuls f0, f4, f7
/* 804C0694 00489C54  D1 01 00 5C */	stfs f8, 0x5c(r1)
/* 804C0698 00489C58  EC C4 01 B2 */	fmuls f6, f4, f6
/* 804C069C 00489C5C  FC 80 40 18 */	frsp f4, f8
/* 804C06A0 00489C60  D1 A1 00 44 */	stfs f13, 0x44(r1)
/* 804C06A4 00489C64  EC FC 07 B2 */	fmuls f7, f28, f30
/* 804C06A8 00489C68  ED 9C 07 72 */	fmuls f12, f28, f29
/* 804C06AC 00489C6C  D1 41 00 50 */	stfs f10, 0x50(r1)
/* 804C06B0 00489C70  ED 7B 07 F2 */	fmuls f11, f27, f31
/* 804C06B4 00489C74  ED 3B 00 72 */	fmuls f9, f27, f1
/* 804C06B8 00489C78  D0 E1 00 64 */	stfs f7, 0x64(r1)
/* 804C06BC 00489C7C  EC 85 31 3A */	fmadds f4, f5, f4, f6
/* 804C06C0 00489C80  ED 61 5B 3A */	fmadds f11, f1, f12, f11
/* 804C06C4 00489C84  ED 1F 4B 38 */	fmsubs f8, f31, f12, f9
/* 804C06C8 00489C88  EC 25 12 BA */	fmadds f1, f5, f10, f2
/* 804C06CC 00489C8C  D1 61 00 4C */	stfs f11, 0x4c(r1)
/* 804C06D0 00489C90  EC 05 03 7A */	fmadds f0, f5, f13, f0
/* 804C06D4 00489C94  EC 43 21 FA */	fmadds f2, f3, f7, f4
/* 804C06D8 00489C98  D1 01 00 58 */	stfs f8, 0x58(r1)
/* 804C06DC 00489C9C  EC 23 0A 3A */	fmadds f1, f3, f8, f1
/* 804C06E0 00489CA0  EC 03 02 FA */	fmadds f0, f3, f11, f0
/* 804C06E4 00489CA4  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 804C06E8 00489CA8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804C06EC 00489CAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C06F0 00489CB0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804C06F4 00489CB4  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 804C06F8 00489CB8  80 61 00 30 */	lwz r3, 0x30(r1)
/* 804C06FC 00489CBC  90 9F 00 20 */	stw r4, 0x20(r31)
/* 804C0700 00489CC0  90 7F 00 24 */	stw r3, 0x24(r31)
/* 804C0704 00489CC4  90 1F 00 28 */	stw r0, 0x28(r31)
/* 804C0708 00489CC8  41 82 00 18 */	beq .L_804C0720
/* 804C070C 00489CCC  2C 05 00 02 */	cmpwi r5, 2
/* 804C0710 00489CD0  41 82 00 78 */	beq .L_804C0788
/* 804C0714 00489CD4  2C 05 00 04 */	cmpwi r5, 4
/* 804C0718 00489CD8  41 82 00 88 */	beq .L_804C07A0
/* 804C071C 00489CDC  48 00 00 98 */	b .L_804C07B4
.L_804C0720:
/* 804C0720 00489CE0  C0 42 D3 E8 */	lfs f2, float_8066D768@sda21(r2)
/* 804C0724 00489CE4  38 81 00 14 */	addi r4, r1, 0x14
/* 804C0728 00489CE8  E0 1F 00 20 */	psq_l f0, 32(r31), 0, qr0
/* 804C072C 00489CEC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 804C0730 00489CF0  10 20 00 98 */	ps_muls0 f1, f0, f2
/* 804C0734 00489CF4  E0 1F 80 28 */	psq_l f0, 40(r31), 1, qr0
/* 804C0738 00489CF8  F0 24 00 00 */	psq_st f1, 0(r4), 0, qr0
/* 804C073C 00489CFC  10 20 00 98 */	ps_muls0 f1, f0, f2
/* 804C0740 00489D00  F0 24 80 08 */	psq_st f1, 8(r4), 1, qr0
/* 804C0744 00489D04  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 804C0748 00489D08  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804C074C 00489D0C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804C0750 00489D10  D0 41 00 08 */	stfs f2, 8(r1)
/* 804C0754 00489D14  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804C0758 00489D18  80 A1 00 08 */	lwz r5, 8(r1)
/* 804C075C 00489D1C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804C0760 00489D20  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804C0764 00489D24  80 01 00 10 */	lwz r0, 0x10(r1)
/* 804C0768 00489D28  90 BF 00 04 */	stw r5, 4(r31)
/* 804C076C 00489D2C  90 9F 00 08 */	stw r4, 8(r31)
/* 804C0770 00489D30  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804C0774 00489D34  90 1F 00 0C */	stw r0, 0xc(r31)
/* 804C0778 00489D38  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804C077C 00489D3C  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 804C0780 00489D40  4B F3 CD B1 */	bl InitLightPos__Q34nw4r3g3d8LightObjFfff
/* 804C0784 00489D44  48 00 00 30 */	b .L_804C07B4
.L_804C0788:
/* 804C0788 00489D48  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 804C078C 00489D4C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 804C0790 00489D50  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 804C0794 00489D54  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 804C0798 00489D58  4B F3 CF 15 */	bl InitSpecularDir__Q34nw4r3g3d8LightObjFfff
/* 804C079C 00489D5C  48 00 00 18 */	b .L_804C07B4
.L_804C07A0:
/* 804C07A0 00489D60  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 804C07A4 00489D64  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 804C07A8 00489D68  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 804C07AC 00489D6C  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 804C07B0 00489D70  4B F3 CD BD */	bl InitLightDir__Q34nw4r3g3d8LightObjFfff
.L_804C07B4:
/* 804C07B4 00489D74  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 804C07B8 00489D78  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 804C07BC 00489D7C  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 804C07C0 00489D80  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 804C07C4 00489D84  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 804C07C8 00489D88  E3 A1 00 98 */	psq_l f29, 152(r1), 0, qr0
/* 804C07CC 00489D8C  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 804C07D0 00489D90  E3 81 00 88 */	psq_l f28, 136(r1), 0, qr0
/* 804C07D4 00489D94  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 804C07D8 00489D98  E3 61 00 78 */	psq_l f27, 120(r1), 0, qr0
/* 804C07DC 00489D9C  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 804C07E0 00489DA0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 804C07E4 00489DA4  7C 08 03 A6 */	mtlr r0
/* 804C07E8 00489DA8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 804C07EC 00489DAC  4E 80 00 20 */	blr 

.global func_804C07F0
func_804C07F0:
/* 804C07F0 00489DB0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C07F4 00489DB4  7C 08 02 A6 */	mflr r0
/* 804C07F8 00489DB8  80 E4 00 00 */	lwz r7, 0(r4)
/* 804C07FC 00489DBC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C0800 00489DC0  39 01 00 0C */	addi r8, r1, 0xc
/* 804C0804 00489DC4  80 C4 00 04 */	lwz r6, 4(r4)
/* 804C0808 00489DC8  80 A4 00 08 */	lwz r5, 8(r4)
/* 804C080C 00489DCC  90 E3 00 10 */	stw r7, 0x10(r3)
/* 804C0810 00489DD0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 804C0814 00489DD4  7D 04 43 78 */	mr r4, r8
/* 804C0818 00489DD8  90 C3 00 14 */	stw r6, 0x14(r3)
/* 804C081C 00489DDC  C0 63 00 38 */	lfs f3, 0x38(r3)
/* 804C0820 00489DE0  90 A3 00 18 */	stw r5, 0x18(r3)
/* 804C0824 00489DE4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 804C0828 00489DE8  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 804C082C 00489DEC  EC E0 00 F2 */	fmuls f7, f0, f3
/* 804C0830 00489DF0  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 804C0834 00489DF4  90 03 00 1C */	stw r0, 0x1c(r3)
/* 804C0838 00489DF8  EC C1 00 F2 */	fmuls f6, f1, f3
/* 804C083C 00489DFC  EC A2 00 F2 */	fmuls f5, f2, f3
/* 804C0840 00489E00  C0 02 D3 F0 */	lfs f0, float_8066D770@sda21(r2)
/* 804C0844 00489E04  C0 83 00 1C */	lfs f4, 0x1c(r3)
/* 804C0848 00489E08  EC 60 01 F2 */	fmuls f3, f0, f7
/* 804C084C 00489E0C  EC 40 01 B2 */	fmuls f2, f0, f6
/* 804C0850 00489E10  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 804C0854 00489E14  EC 20 01 72 */	fmuls f1, f0, f5
/* 804C0858 00489E18  EC 00 01 32 */	fmuls f0, f0, f4
/* 804C085C 00489E1C  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 804C0860 00489E20  FC 60 18 1E */	fctiwz f3, f3
/* 804C0864 00489E24  FC 40 10 1E */	fctiwz f2, f2
/* 804C0868 00489E28  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 804C086C 00489E2C  FC 20 08 1E */	fctiwz f1, f1
/* 804C0870 00489E30  FC 00 00 1E */	fctiwz f0, f0
/* 804C0874 00489E34  D8 61 00 20 */	stfd f3, 0x20(r1)
/* 804C0878 00489E38  D8 41 00 28 */	stfd f2, 0x28(r1)
/* 804C087C 00489E3C  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 804C0880 00489E40  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 804C0884 00489E44  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 804C0888 00489E48  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 804C088C 00489E4C  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 804C0890 00489E50  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 804C0894 00489E54  98 E1 00 08 */	stb r7, 8(r1)
/* 804C0898 00489E58  98 C1 00 09 */	stb r6, 9(r1)
/* 804C089C 00489E5C  98 A1 00 0A */	stb r5, 0xa(r1)
/* 804C08A0 00489E60  98 01 00 0B */	stb r0, 0xb(r1)
/* 804C08A4 00489E64  80 01 00 08 */	lwz r0, 8(r1)
/* 804C08A8 00489E68  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C08AC 00489E6C  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 804C08B0 00489E70  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804C08B4 00489E74  4B F3 CC 35 */	bl InitLightColor__Q34nw4r3g3d8LightObjF8_GXColor
/* 804C08B8 00489E78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C08BC 00489E7C  7C 08 03 A6 */	mtlr r0
/* 804C08C0 00489E80  38 21 00 40 */	addi r1, r1, 0x40
/* 804C08C4 00489E84  4E 80 00 20 */	blr 

.global func_804C08C8
func_804C08C8:
/* 804C08C8 00489E88  2C 04 00 00 */	cmpwi r4, 0
/* 804C08CC 00489E8C  41 82 00 14 */	beq .L_804C08E0
/* 804C08D0 00489E90  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804C08D4 00489E94  64 00 00 01 */	oris r0, r0, 1
/* 804C08D8 00489E98  90 03 00 30 */	stw r0, 0x30(r3)
/* 804C08DC 00489E9C  48 00 00 10 */	b .L_804C08EC
.L_804C08E0:
/* 804C08E0 00489EA0  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804C08E4 00489EA4  54 00 04 1C */	rlwinm r0, r0, 0, 0x10, 0xe
/* 804C08E8 00489EA8  90 03 00 30 */	stw r0, 0x30(r3)
.L_804C08EC:
/* 804C08EC 00489EAC  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804C08F0 00489EB0  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 804C08F4 00489EB4  41 82 00 18 */	beq .L_804C090C
/* 804C08F8 00489EB8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804C08FC 00489EBC  80 03 00 00 */	lwz r0, 0(r3)
/* 804C0900 00489EC0  60 00 00 04 */	ori r0, r0, 4
/* 804C0904 00489EC4  90 03 00 00 */	stw r0, 0(r3)
/* 804C0908 00489EC8  4E 80 00 20 */	blr
.L_804C090C:
/* 804C090C 00489ECC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804C0910 00489ED0  80 03 00 00 */	lwz r0, 0(r3)
/* 804C0914 00489ED4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 804C0918 00489ED8  90 03 00 00 */	stw r0, 0(r3)
/* 804C091C 00489EDC  4E 80 00 20 */	blr 

.global func_804C0920
func_804C0920:
/* 804C0920 00489EE0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804C0924 00489EE4  4B F3 CC 88 */	b InitLightSpot__Q34nw4r3g3d8LightObjFf9_GXSpotFn

.global func_804C0928
func_804C0928:
/* 804C0928 00489EE8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C092C 00489EEC  7C 08 02 A6 */	mflr r0
/* 804C0930 00489EF0  FC 80 08 18 */	frsp f4, f1
/* 804C0934 00489EF4  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C0938 00489EF8  38 81 00 0C */	addi r4, r1, 0xc
/* 804C093C 00489EFC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804C0940 00489F00  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 804C0944 00489F04  EC C0 01 32 */	fmuls f6, f0, f4
/* 804C0948 00489F08  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 804C094C 00489F0C  EC E3 01 32 */	fmuls f7, f3, f4
/* 804C0950 00489F10  C0 A3 00 1C */	lfs f5, 0x1c(r3)
/* 804C0954 00489F14  EC 62 01 32 */	fmuls f3, f2, f4
/* 804C0958 00489F18  C0 02 D3 F0 */	lfs f0, float_8066D770@sda21(r2)
/* 804C095C 00489F1C  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 804C0960 00489F20  EC 40 01 F2 */	fmuls f2, f0, f7
/* 804C0964 00489F24  EC 20 01 B2 */	fmuls f1, f0, f6
/* 804C0968 00489F28  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 804C096C 00489F2C  EC 60 00 F2 */	fmuls f3, f0, f3
/* 804C0970 00489F30  EC 00 01 72 */	fmuls f0, f0, f5
/* 804C0974 00489F34  FC 40 10 1E */	fctiwz f2, f2
/* 804C0978 00489F38  D0 E1 00 14 */	stfs f7, 0x14(r1)
/* 804C097C 00489F3C  FC 60 18 1E */	fctiwz f3, f3
/* 804C0980 00489F40  FC 20 08 1E */	fctiwz f1, f1
/* 804C0984 00489F44  D8 41 00 28 */	stfd f2, 0x28(r1)
/* 804C0988 00489F48  FC 00 00 1E */	fctiwz f0, f0
/* 804C098C 00489F4C  D8 61 00 20 */	stfd f3, 0x20(r1)
/* 804C0990 00489F50  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 804C0994 00489F54  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 804C0998 00489F58  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 804C099C 00489F5C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 804C09A0 00489F60  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 804C09A4 00489F64  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 804C09A8 00489F68  98 E1 00 08 */	stb r7, 8(r1)
/* 804C09AC 00489F6C  98 C1 00 09 */	stb r6, 9(r1)
/* 804C09B0 00489F70  98 A1 00 0A */	stb r5, 0xa(r1)
/* 804C09B4 00489F74  98 01 00 0B */	stb r0, 0xb(r1)
/* 804C09B8 00489F78  80 01 00 08 */	lwz r0, 8(r1)
/* 804C09BC 00489F7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C09C0 00489F80  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 804C09C4 00489F84  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804C09C8 00489F88  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 804C09CC 00489F8C  4B F3 CB 1D */	bl InitLightColor__Q34nw4r3g3d8LightObjF8_GXColor
/* 804C09D0 00489F90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C09D4 00489F94  7C 08 03 A6 */	mtlr r0
/* 804C09D8 00489F98  38 21 00 40 */	addi r1, r1, 0x40
/* 804C09DC 00489F9C  4E 80 00 20 */	blr 

.global func_804C09E0
func_804C09E0:
/* 804C09E0 00489FA0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804C09E4 00489FA4  4B F3 CC 48 */	b InitLightDistAttn__Q34nw4r3g3d8LightObjFff13_GXDistAttnFn

.global func_804C09E8
func_804C09E8:
/* 804C09E8 00489FA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C09EC 00489FAC  7C 08 02 A6 */	mflr r0
/* 804C09F0 00489FB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C09F4 00489FB4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804C09F8 00489FB8  7C BF 2B 78 */	mr r31, r5
/* 804C09FC 00489FBC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804C0A00 00489FC0  7C 9E 23 78 */	mr r30, r4
/* 804C0A04 00489FC4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 804C0A08 00489FC8  7C 7D 1B 78 */	mr r29, r3
/* 804C0A0C 00489FCC  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 804C0A10 00489FD0  80 A6 00 04 */	lwz r5, 4(r6)
/* 804C0A14 00489FD4  80 06 00 08 */	lwz r0, 8(r6)
/* 804C0A18 00489FD8  90 04 00 04 */	stw r0, 4(r4)
/* 804C0A1C 00489FDC  90 A4 00 00 */	stw r5, 0(r4)
/* 804C0A20 00489FE0  80 A6 00 0C */	lwz r5, 0xc(r6)
/* 804C0A24 00489FE4  80 06 00 10 */	lwz r0, 0x10(r6)
/* 804C0A28 00489FE8  90 04 00 0C */	stw r0, 0xc(r4)
/* 804C0A2C 00489FEC  90 A4 00 08 */	stw r5, 8(r4)
/* 804C0A30 00489FF0  80 A6 00 14 */	lwz r5, 0x14(r6)
/* 804C0A34 00489FF4  80 06 00 18 */	lwz r0, 0x18(r6)
/* 804C0A38 00489FF8  90 04 00 14 */	stw r0, 0x14(r4)
/* 804C0A3C 00489FFC  90 A4 00 10 */	stw r5, 0x10(r4)
/* 804C0A40 0048A000  80 A6 00 1C */	lwz r5, 0x1c(r6)
/* 804C0A44 0048A004  80 06 00 20 */	lwz r0, 0x20(r6)
/* 804C0A48 0048A008  90 04 00 1C */	stw r0, 0x1c(r4)
/* 804C0A4C 0048A00C  90 A4 00 18 */	stw r5, 0x18(r4)
/* 804C0A50 0048A010  80 A6 00 24 */	lwz r5, 0x24(r6)
/* 804C0A54 0048A014  80 06 00 28 */	lwz r0, 0x28(r6)
/* 804C0A58 0048A018  90 04 00 24 */	stw r0, 0x24(r4)
/* 804C0A5C 0048A01C  90 A4 00 20 */	stw r5, 0x20(r4)
/* 804C0A60 0048A020  80 A6 00 2C */	lwz r5, 0x2c(r6)
/* 804C0A64 0048A024  80 06 00 30 */	lwz r0, 0x30(r6)
/* 804C0A68 0048A028  90 04 00 2C */	stw r0, 0x2c(r4)
/* 804C0A6C 0048A02C  90 A4 00 28 */	stw r5, 0x28(r4)
/* 804C0A70 0048A030  80 A6 00 34 */	lwz r5, 0x34(r6)
/* 804C0A74 0048A034  80 06 00 38 */	lwz r0, 0x38(r6)
/* 804C0A78 0048A038  90 04 00 34 */	stw r0, 0x34(r4)
/* 804C0A7C 0048A03C  90 A4 00 30 */	stw r5, 0x30(r4)
/* 804C0A80 0048A040  80 A6 00 3C */	lwz r5, 0x3c(r6)
/* 804C0A84 0048A044  80 06 00 40 */	lwz r0, 0x40(r6)
/* 804C0A88 0048A048  90 04 00 3C */	stw r0, 0x3c(r4)
/* 804C0A8C 0048A04C  90 A4 00 38 */	stw r5, 0x38(r4)
/* 804C0A90 0048A050  80 03 00 34 */	lwz r0, 0x34(r3)
/* 804C0A94 0048A054  2C 00 00 04 */	cmpwi r0, 4
/* 804C0A98 0048A058  41 82 00 20 */	beq .L_804C0AB8
/* 804C0A9C 0048A05C  2C 00 00 01 */	cmpwi r0, 1
/* 804C0AA0 0048A060  41 82 00 8C */	beq .L_804C0B2C
/* 804C0AA4 0048A064  2C 00 00 03 */	cmpwi r0, 3
/* 804C0AA8 0048A068  41 82 00 84 */	beq .L_804C0B2C
/* 804C0AAC 0048A06C  2C 00 00 02 */	cmpwi r0, 2
/* 804C0AB0 0048A070  41 82 00 A4 */	beq .L_804C0B54
/* 804C0AB4 0048A074  48 00 01 14 */	b .L_804C0BC8
.L_804C0AB8:
/* 804C0AB8 0048A078  7F E4 FB 78 */	mr r4, r31
/* 804C0ABC 0048A07C  38 61 00 08 */	addi r3, r1, 8
/* 804C0AC0 0048A080  38 BD 00 20 */	addi r5, r29, 0x20
/* 804C0AC4 0048A084  4B F4 A8 BD */	bl VEC3TransformNormal__Q24nw4r4mathFPQ34nw4r4math4VEC3PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3
/* 804C0AC8 0048A088  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804C0ACC 0048A08C  C0 21 00 08 */	lfs f1, 8(r1)
/* 804C0AD0 0048A090  EC 40 00 32 */	fmuls f2, f0, f0
/* 804C0AD4 0048A094  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804C0AD8 0048A098  C0 62 D3 D8 */	lfs f3, float_8066D758@sda21(r2)
/* 804C0ADC 0048A09C  EC 21 10 7A */	fmadds f1, f1, f1, f2
/* 804C0AE0 0048A0A0  EC 00 08 3A */	fmadds f0, f0, f0, f1
/* 804C0AE4 0048A0A4  FC 03 00 00 */	fcmpu cr0, f3, f0
/* 804C0AE8 0048A0A8  40 82 00 24 */	bne .L_804C0B0C
/* 804C0AEC 0048A0AC  3C A0 80 66 */	lis r5, lbl_80659DB0@ha
/* 804C0AF0 0048A0B0  84 85 9D B0 */	lwzu r4, lbl_80659DB0@l(r5)
/* 804C0AF4 0048A0B4  90 81 00 08 */	stw r4, 8(r1)
/* 804C0AF8 0048A0B8  80 65 00 04 */	lwz r3, 4(r5)
/* 804C0AFC 0048A0BC  80 05 00 08 */	lwz r0, 8(r5)
/* 804C0B00 0048A0C0  90 61 00 0C */	stw r3, 0xc(r1)
/* 804C0B04 0048A0C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C0B08 0048A0C8  48 00 00 10 */	b .L_804C0B18
.L_804C0B0C:
/* 804C0B0C 0048A0CC  38 61 00 08 */	addi r3, r1, 8
/* 804C0B10 0048A0D0  7C 64 1B 78 */	mr r4, r3
/* 804C0B14 0048A0D4  4B E8 D5 9D */	bl PSVECNormalize
.L_804C0B18:
/* 804C0B18 0048A0D8  C0 21 00 08 */	lfs f1, 8(r1)
/* 804C0B1C 0048A0DC  7F C3 F3 78 */	mr r3, r30
/* 804C0B20 0048A0E0  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804C0B24 0048A0E4  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 804C0B28 0048A0E8  4B E5 B1 09 */	bl GXInitLightDir
.L_804C0B2C:
/* 804C0B2C 0048A0EC  7F E3 FB 78 */	mr r3, r31
/* 804C0B30 0048A0F0  38 9D 00 04 */	addi r4, r29, 4
/* 804C0B34 0048A0F4  38 A1 00 08 */	addi r5, r1, 8
/* 804C0B38 0048A0F8  4B E8 D2 B9 */	bl PSMTXMultVec
/* 804C0B3C 0048A0FC  C0 21 00 08 */	lfs f1, 8(r1)
/* 804C0B40 0048A100  7F C3 F3 78 */	mr r3, r30
/* 804C0B44 0048A104  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804C0B48 0048A108  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 804C0B4C 0048A10C  4B E5 B0 B5 */	bl GXInitLightPos
/* 804C0B50 0048A110  48 00 00 78 */	b .L_804C0BC8
.L_804C0B54:
/* 804C0B54 0048A114  7F E4 FB 78 */	mr r4, r31
/* 804C0B58 0048A118  38 61 00 08 */	addi r3, r1, 8
/* 804C0B5C 0048A11C  38 BD 00 04 */	addi r5, r29, 4
/* 804C0B60 0048A120  4B F4 A8 21 */	bl VEC3TransformNormal__Q24nw4r4mathFPQ34nw4r4math4VEC3PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3
/* 804C0B64 0048A124  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804C0B68 0048A128  C0 21 00 08 */	lfs f1, 8(r1)
/* 804C0B6C 0048A12C  EC 40 00 32 */	fmuls f2, f0, f0
/* 804C0B70 0048A130  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804C0B74 0048A134  C0 62 D3 D8 */	lfs f3, float_8066D758@sda21(r2)
/* 804C0B78 0048A138  EC 21 10 7A */	fmadds f1, f1, f1, f2
/* 804C0B7C 0048A13C  EC 00 08 3A */	fmadds f0, f0, f0, f1
/* 804C0B80 0048A140  FC 03 00 00 */	fcmpu cr0, f3, f0
/* 804C0B84 0048A144  40 82 00 24 */	bne .L_804C0BA8
/* 804C0B88 0048A148  3C A0 80 66 */	lis r5, lbl_80659DB0@ha
/* 804C0B8C 0048A14C  84 85 9D B0 */	lwzu r4, lbl_80659DB0@l(r5)
/* 804C0B90 0048A150  90 81 00 08 */	stw r4, 8(r1)
/* 804C0B94 0048A154  80 65 00 04 */	lwz r3, 4(r5)
/* 804C0B98 0048A158  80 05 00 08 */	lwz r0, 8(r5)
/* 804C0B9C 0048A15C  90 61 00 0C */	stw r3, 0xc(r1)
/* 804C0BA0 0048A160  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C0BA4 0048A164  48 00 00 10 */	b .L_804C0BB4
.L_804C0BA8:
/* 804C0BA8 0048A168  38 61 00 08 */	addi r3, r1, 8
/* 804C0BAC 0048A16C  7C 64 1B 78 */	mr r4, r3
/* 804C0BB0 0048A170  4B E8 D5 01 */	bl PSVECNormalize
.L_804C0BB4:
/* 804C0BB4 0048A174  C0 21 00 08 */	lfs f1, 8(r1)
/* 804C0BB8 0048A178  7F C3 F3 78 */	mr r3, r30
/* 804C0BBC 0048A17C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804C0BC0 0048A180  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 804C0BC4 0048A184  4B E5 B0 BD */	bl GXInitSpecularDir
.L_804C0BC8:
/* 804C0BC8 0048A188  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C0BCC 0048A18C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804C0BD0 0048A190  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804C0BD4 0048A194  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 804C0BD8 0048A198  7C 08 03 A6 */	mtlr r0
/* 804C0BDC 0048A19C  38 21 00 30 */	addi r1, r1, 0x30
/* 804C0BE0 0048A1A0  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global __vt__CLight
__vt__CLight:
	.4byte __RTTI__CLight
	.4byte 0
	.4byte func_80492034
	.4byte 0


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global __RTTI__CLight
__RTTI__CLight:
	.4byte CLight_typestr
	.4byte 0

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global float_8066D758
float_8066D758:
	.float 0


.global float_8066D75C
float_8066D75C:
	.float 0.5


.global float_8066D760
float_8066D760:
	.float 1.0


.global float_8066D764
float_8066D764:
	.float 10000 #0x461C4000


.global float_8066D768
float_8066D768:
	.float 1000000 #0x49742400


.global float_8066D76C
float_8066D76C:
	.float 40.7436638 #0x4222F983


.global float_8066D770
float_8066D770:
	.float 255 #0x437F0000

.global CLight_typestr
CLight_typestr:
	.asciz "CLight"
	.balign 4
	.4byte 0

.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_80020020
lbl_80020020:
	.4byte 0x280A0000
	.4byte 0

.global lbl_80020028
lbl_80020028:
	.4byte 0x080A0000
	.4byte 0

.global lbl_80020030
lbl_80020030:
	.4byte 0x000A0000
	.4byte 0

.global lbl_80020038
lbl_80020038:
	.4byte 0x094A0000
	.4byte 0

.global lbl_80020040
lbl_80020040:
	.4byte 0x000A0000
	.4byte 0

.global lbl_80020048
lbl_80020048:
	.4byte 0x000A0000
	.4byte 0

.global lbl_80020050
lbl_80020050:
	.4byte 0x180A0000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

.4byte func_804C02E4
	.4byte 0x000000B4
	.4byte lbl_80020020
	.4byte func_804C03A0
	.4byte 0x000000B4
	.4byte lbl_80020028
	.4byte func_804C0484
	.4byte 0x000000EC
	.4byte lbl_80020030
	.4byte func_804C0570
	.4byte 0x00000280
	.4byte lbl_80020038
	.4byte func_804C07F0
	.4byte 0x000000D8
	.4byte lbl_80020040
	.4byte func_804C0928
	.4byte 0x000000B8
	.4byte lbl_80020048
	.4byte func_804C09E8
	.4byte 0x000001FC
	.4byte lbl_80020050