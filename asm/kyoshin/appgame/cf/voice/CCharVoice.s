.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_802A0AFC, global
/* 802A0AFC 0026A0BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A0B00 0026A0C0  7C 08 02 A6 */	mflr r0
/* 802A0B04 0026A0C4  3C 80 80 54 */	lis r4, __vt__cf_CCharVoice@ha
/* 802A0B08 0026A0C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A0B0C 0026A0CC  38 00 FF FF */	li r0, -0x1
/* 802A0B10 0026A0D0  38 84 D0 40 */	addi r4, r4, __vt__cf_CCharVoice@l
/* 802A0B14 0026A0D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A0B18 0026A0D8  3B E0 00 00 */	li r31, 0x0
/* 802A0B1C 0026A0DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A0B20 0026A0E0  3F C0 80 51 */	lis r30, lbl_8050BCEC@ha
/* 802A0B24 0026A0E4  3B DE BC EC */	addi r30, r30, lbl_8050BCEC@l
/* 802A0B28 0026A0E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802A0B2C 0026A0EC  7C 7D 1B 78 */	mr r29, r3
/* 802A0B30 0026A0F0  90 83 00 3C */	stw r4, 0x3c(r3)
/* 802A0B34 0026A0F4  93 E3 00 00 */	stw r31, 0x0(r3)
/* 802A0B38 0026A0F8  90 03 00 04 */	stw r0, 0x4(r3)
/* 802A0B3C 0026A0FC  90 03 00 08 */	stw r0, 0x8(r3)
/* 802A0B40 0026A100  90 03 00 0C */	stw r0, 0xc(r3)
/* 802A0B44 0026A104  7F C3 F3 78 */	mr r3, r30
/* 802A0B48 0026A108  48 01 8A 71 */	bl strlen
/* 802A0B4C 0026A10C  90 7D 00 30 */	stw r3, 0x30(r29)
/* 802A0B50 0026A110  7F C4 F3 78 */	mr r4, r30
/* 802A0B54 0026A114  38 7D 00 10 */	addi r3, r29, 0x10
/* 802A0B58 0026A118  48 02 1B 61 */	bl strcpy
/* 802A0B5C 0026A11C  3C 60 00 01 */	lis r3, 0x1
/* 802A0B60 0026A120  93 FD 00 34 */	stw r31, 0x34(r29)
/* 802A0B64 0026A124  38 03 FF FF */	addi r0, r3, -0x1
/* 802A0B68 0026A128  B0 1D 00 38 */	sth r0, 0x38(r29)
/* 802A0B6C 0026A12C  7F A3 EB 78 */	mr r3, r29
/* 802A0B70 0026A130  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A0B74 0026A134  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A0B78 0026A138  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802A0B7C 0026A13C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A0B80 0026A140  7C 08 03 A6 */	mtlr r0
/* 802A0B84 0026A144  38 21 00 20 */	addi r1, r1, 0x20
/* 802A0B88 0026A148  4E 80 00 20 */	blr
.endfn func_802A0AFC

.fn func_802A0B8C, global
/* 802A0B8C 0026A14C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A0B90 0026A150  7C 08 02 A6 */	mflr r0
/* 802A0B94 0026A154  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A0B98 0026A158  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A0B9C 0026A15C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A0BA0 0026A160  7C 7F 1B 78 */	mr r31, r3
/* 802A0BA4 0026A164  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A0BA8 0026A168  41 82 00 F8 */	beq .L_802A0CA0
/* 802A0BAC 0026A16C  80 A4 00 64 */	lwz r5, 0x64(r4)
/* 802A0BB0 0026A170  54 A0 07 BD */	rlwinm. r0, r5, 0, 30, 30
/* 802A0BB4 0026A174  40 82 00 0C */	bne .L_802A0BC0
/* 802A0BB8 0026A178  54 A0 00 01 */	clrrwi. r0, r5, 31
/* 802A0BBC 0026A17C  41 82 00 CC */	beq .L_802A0C88
.L_802A0BC0:
/* 802A0BC0 0026A180  90 83 00 00 */	stw r4, 0x0(r3)
/* 802A0BC4 0026A184  38 A1 00 0C */	addi r5, r1, 0xc
/* 802A0BC8 0026A188  38 C1 00 10 */	addi r6, r1, 0x10
/* 802A0BCC 0026A18C  38 E1 00 14 */	addi r7, r1, 0x14
/* 802A0BD0 0026A190  80 64 00 70 */	lwz r3, 0x70(r4)
/* 802A0BD4 0026A194  38 81 00 08 */	addi r4, r1, 0x8
/* 802A0BD8 0026A198  4B E0 97 41 */	bl func_800AA318
/* 802A0BDC 0026A19C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802A0BE0 0026A1A0  28 00 00 08 */	cmplwi r0, 0x8
/* 802A0BE4 0026A1A4  40 82 00 0C */	bne .L_802A0BF0
/* 802A0BE8 0026A1A8  38 00 00 03 */	li r0, 0x3
/* 802A0BEC 0026A1AC  90 01 00 0C */	stw r0, 0xc(r1)
.L_802A0BF0:
/* 802A0BF0 0026A1B0  83 CD 94 10 */	lwz r30, lbl_80665590@sda21(r13)
/* 802A0BF4 0026A1B4  7F C3 F3 78 */	mr r3, r30
/* 802A0BF8 0026A1B8  48 01 89 C1 */	bl strlen
/* 802A0BFC 0026A1BC  90 7F 00 30 */	stw r3, 0x30(r31)
/* 802A0C00 0026A1C0  7F C4 F3 78 */	mr r4, r30
/* 802A0C04 0026A1C4  38 7F 00 10 */	addi r3, r31, 0x10
/* 802A0C08 0026A1C8  48 02 1A B1 */	bl strcpy
/* 802A0C0C 0026A1CC  3C 60 CC CD */	lis r3, 0xcccd
/* 802A0C10 0026A1D0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802A0C14 0026A1D4  38 C3 CC CD */	addi r6, r3, -0x3333
/* 802A0C18 0026A1D8  7C 86 00 16 */	mulhwu r4, r6, r0
/* 802A0C1C 0026A1DC  38 00 FF FF */	li r0, -0x1
/* 802A0C20 0026A1E0  38 60 00 12 */	li r3, 0x12
/* 802A0C24 0026A1E4  54 84 E8 FE */	srwi r4, r4, 3
/* 802A0C28 0026A1E8  38 84 00 30 */	addi r4, r4, 0x30
/* 802A0C2C 0026A1EC  98 9F 00 1A */	stb r4, 0x1a(r31)
/* 802A0C30 0026A1F0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 802A0C34 0026A1F4  7C 86 28 16 */	mulhwu r4, r6, r5
/* 802A0C38 0026A1F8  54 84 E8 FE */	srwi r4, r4, 3
/* 802A0C3C 0026A1FC  1C 84 00 0A */	mulli r4, r4, 0xa
/* 802A0C40 0026A200  7C 84 28 50 */	subf r4, r4, r5
/* 802A0C44 0026A204  38 84 00 30 */	addi r4, r4, 0x30
/* 802A0C48 0026A208  98 9F 00 1B */	stb r4, 0x1b(r31)
/* 802A0C4C 0026A20C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 802A0C50 0026A210  7C 86 20 16 */	mulhwu r4, r6, r4
/* 802A0C54 0026A214  54 84 E8 FE */	srwi r4, r4, 3
/* 802A0C58 0026A218  38 84 00 30 */	addi r4, r4, 0x30
/* 802A0C5C 0026A21C  98 9F 00 1F */	stb r4, 0x1f(r31)
/* 802A0C60 0026A220  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 802A0C64 0026A224  7C 86 28 16 */	mulhwu r4, r6, r5
/* 802A0C68 0026A228  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802A0C6C 0026A22C  90 7F 00 34 */	stw r3, 0x34(r31)
/* 802A0C70 0026A230  54 84 E8 FE */	srwi r4, r4, 3
/* 802A0C74 0026A234  1C 04 00 0A */	mulli r0, r4, 0xa
/* 802A0C78 0026A238  7C 60 28 50 */	subf r3, r0, r5
/* 802A0C7C 0026A23C  38 03 00 30 */	addi r0, r3, 0x30
/* 802A0C80 0026A240  98 1F 00 20 */	stb r0, 0x20(r31)
/* 802A0C84 0026A244  48 00 00 1C */	b .L_802A0CA0
.L_802A0C88:
/* 802A0C88 0026A248  54 A0 07 7B */	rlwinm. r0, r5, 0, 29, 29
/* 802A0C8C 0026A24C  41 82 00 14 */	beq .L_802A0CA0
/* 802A0C90 0026A250  3C A0 00 01 */	lis r5, 0x1
/* 802A0C94 0026A254  90 83 00 00 */	stw r4, 0x0(r3)
/* 802A0C98 0026A258  38 05 FF FF */	addi r0, r5, -0x1
/* 802A0C9C 0026A25C  B0 03 00 38 */	sth r0, 0x38(r3)
.L_802A0CA0:
/* 802A0CA0 0026A260  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A0CA4 0026A264  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A0CA8 0026A268  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A0CAC 0026A26C  7C 08 03 A6 */	mtlr r0
/* 802A0CB0 0026A270  38 21 00 20 */	addi r1, r1, 0x20
/* 802A0CB4 0026A274  4E 80 00 20 */	blr
.endfn func_802A0B8C

.fn func_802A0CB8, global
/* 802A0CB8 0026A278  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A0CBC 0026A27C  7C 08 02 A6 */	mflr r0
/* 802A0CC0 0026A280  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A0CC4 0026A284  38 04 FF FF */	addi r0, r4, -0x1
/* 802A0CC8 0026A288  28 00 00 0C */	cmplwi r0, 0xc
/* 802A0CCC 0026A28C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A0CD0 0026A290  7C BF 2B 78 */	mr r31, r5
/* 802A0CD4 0026A294  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A0CD8 0026A298  7C 9E 23 78 */	mr r30, r4
/* 802A0CDC 0026A29C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802A0CE0 0026A2A0  7C 7D 1B 78 */	mr r29, r3
/* 802A0CE4 0026A2A4  93 81 00 10 */	stw r28, 0x10(r1)
/* 802A0CE8 0026A2A8  40 81 00 0C */	ble .L_802A0CF4
/* 802A0CEC 0026A2AC  38 60 00 00 */	li r3, 0x0
/* 802A0CF0 0026A2B0  48 00 00 F8 */	b .L_802A0DE8
.L_802A0CF4:
/* 802A0CF4 0026A2B4  28 05 27 0F */	cmplwi r5, 0x270f
/* 802A0CF8 0026A2B8  40 81 00 0C */	ble .L_802A0D04
/* 802A0CFC 0026A2BC  38 60 00 00 */	li r3, 0x0
/* 802A0D00 0026A2C0  48 00 00 E8 */	b .L_802A0DE8
.L_802A0D04:
/* 802A0D04 0026A2C4  2C 04 00 08 */	cmpwi r4, 0x8
/* 802A0D08 0026A2C8  40 82 00 08 */	bne .L_802A0D10
/* 802A0D0C 0026A2CC  3B C0 00 03 */	li r30, 0x3
.L_802A0D10:
/* 802A0D10 0026A2D0  83 8D 94 10 */	lwz r28, lbl_80665590@sda21(r13)
/* 802A0D14 0026A2D4  7F 83 E3 78 */	mr r3, r28
/* 802A0D18 0026A2D8  48 01 88 A1 */	bl strlen
/* 802A0D1C 0026A2DC  90 7D 00 20 */	stw r3, 0x20(r29)
/* 802A0D20 0026A2E0  7F A3 EB 78 */	mr r3, r29
/* 802A0D24 0026A2E4  7F 84 E3 78 */	mr r4, r28
/* 802A0D28 0026A2E8  48 02 19 91 */	bl strcpy
/* 802A0D2C 0026A2EC  3C 60 66 66 */	lis r3, 0x6666
/* 802A0D30 0026A2F0  3C 80 51 EC */	lis r4, 0x51ec
/* 802A0D34 0026A2F4  38 03 66 67 */	addi r0, r3, 0x6667
/* 802A0D38 0026A2F8  7C A0 F0 96 */	mulhw r5, r0, r30
/* 802A0D3C 0026A2FC  38 84 85 1F */	addi r4, r4, -0x7ae1
/* 802A0D40 0026A300  3C 60 CC CD */	lis r3, 0xcccd
/* 802A0D44 0026A304  38 03 CC CD */	addi r0, r3, -0x3333
/* 802A0D48 0026A308  38 60 00 01 */	li r3, 0x1
/* 802A0D4C 0026A30C  7C A7 16 70 */	srawi r7, r5, 2
/* 802A0D50 0026A310  7C A5 16 70 */	srawi r5, r5, 2
/* 802A0D54 0026A314  54 E8 0F FE */	srwi r8, r7, 31
/* 802A0D58 0026A318  7C E7 42 14 */	add r7, r7, r8
/* 802A0D5C 0026A31C  54 A6 0F FE */	srwi r6, r5, 31
/* 802A0D60 0026A320  7C 84 F8 96 */	mulhw r4, r4, r31
/* 802A0D64 0026A324  7D 05 32 14 */	add r8, r5, r6
/* 802A0D68 0026A328  39 27 00 30 */	addi r9, r7, 0x30
/* 802A0D6C 0026A32C  99 3D 00 0A */	stb r9, 0xa(r29)
/* 802A0D70 0026A330  99 3D 00 0F */	stb r9, 0xf(r29)
/* 802A0D74 0026A334  7C 86 2E 70 */	srawi r6, r4, 5
/* 802A0D78 0026A338  7C 84 2E 70 */	srawi r4, r4, 5
/* 802A0D7C 0026A33C  54 85 0F FE */	srwi r5, r4, 31
/* 802A0D80 0026A340  54 C7 0F FE */	srwi r7, r6, 31
/* 802A0D84 0026A344  7C 84 2A 14 */	add r4, r4, r5
/* 802A0D88 0026A348  1C 84 00 64 */	mulli r4, r4, 0x64
/* 802A0D8C 0026A34C  7C E6 3A 14 */	add r7, r6, r7
/* 802A0D90 0026A350  7D 24 F8 50 */	subf r9, r4, r31
/* 802A0D94 0026A354  7C 80 38 16 */	mulhwu r4, r0, r7
/* 802A0D98 0026A358  1C C8 00 0A */	mulli r6, r8, 0xa
/* 802A0D9C 0026A35C  54 85 E8 FE */	srwi r5, r4, 3
/* 802A0DA0 0026A360  38 85 00 30 */	addi r4, r5, 0x30
/* 802A0DA4 0026A364  98 9D 00 12 */	stb r4, 0x12(r29)
/* 802A0DA8 0026A368  7C 00 48 16 */	mulhwu r0, r0, r9
/* 802A0DAC 0026A36C  7C C6 F0 50 */	subf r6, r6, r30
/* 802A0DB0 0026A370  38 C6 00 30 */	addi r6, r6, 0x30
/* 802A0DB4 0026A374  98 DD 00 0B */	stb r6, 0xb(r29)
/* 802A0DB8 0026A378  98 DD 00 10 */	stb r6, 0x10(r29)
/* 802A0DBC 0026A37C  1C A5 00 0A */	mulli r5, r5, 0xa
/* 802A0DC0 0026A380  54 04 E8 FE */	srwi r4, r0, 3
/* 802A0DC4 0026A384  38 04 00 30 */	addi r0, r4, 0x30
/* 802A0DC8 0026A388  98 1D 00 15 */	stb r0, 0x15(r29)
/* 802A0DCC 0026A38C  1C 04 00 0A */	mulli r0, r4, 0xa
/* 802A0DD0 0026A390  7C 85 38 50 */	subf r4, r5, r7
/* 802A0DD4 0026A394  38 A4 00 30 */	addi r5, r4, 0x30
/* 802A0DD8 0026A398  98 BD 00 13 */	stb r5, 0x13(r29)
/* 802A0DDC 0026A39C  7C 80 48 50 */	subf r4, r0, r9
/* 802A0DE0 0026A3A0  38 04 00 30 */	addi r0, r4, 0x30
/* 802A0DE4 0026A3A4  98 1D 00 16 */	stb r0, 0x16(r29)
.L_802A0DE8:
/* 802A0DE8 0026A3A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A0DEC 0026A3AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A0DF0 0026A3B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A0DF4 0026A3B4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802A0DF8 0026A3B8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802A0DFC 0026A3BC  7C 08 03 A6 */	mtlr r0
/* 802A0E00 0026A3C0  38 21 00 20 */	addi r1, r1, 0x20
/* 802A0E04 0026A3C4  4E 80 00 20 */	blr
.endfn func_802A0CB8

.fn func_802A0E08, global
/* 802A0E08 0026A3C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A0E0C 0026A3CC  7C 08 02 A6 */	mflr r0
/* 802A0E10 0026A3D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A0E14 0026A3D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802A0E18 0026A3D8  7C 7F 1B 78 */	mr r31, r3
/* 802A0E1C 0026A3DC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802A0E20 0026A3E0  80 83 00 00 */	lwz r4, 0x0(r3)
/* 802A0E24 0026A3E4  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A0E28 0026A3E8  41 82 01 A8 */	beq .L_802A0FD0
/* 802A0E2C 0026A3EC  80 84 00 64 */	lwz r4, 0x64(r4)
/* 802A0E30 0026A3F0  54 80 07 BD */	rlwinm. r0, r4, 0, 30, 30
/* 802A0E34 0026A3F4  40 82 00 0C */	bne .L_802A0E40
/* 802A0E38 0026A3F8  54 80 00 01 */	clrrwi. r0, r4, 31
/* 802A0E3C 0026A3FC  41 82 00 D8 */	beq .L_802A0F14
.L_802A0E40:
/* 802A0E40 0026A400  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802A0E44 0026A404  2C 00 FF FF */	cmpwi r0, -0x1
/* 802A0E48 0026A408  41 82 01 88 */	beq .L_802A0FD0
/* 802A0E4C 0026A40C  38 63 00 10 */	addi r3, r3, 0x10
/* 802A0E50 0026A410  4B EE 8B B5 */	bl func_80189A04
/* 802A0E54 0026A414  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A0E58 0026A418  41 82 00 14 */	beq .L_802A0E6C
/* 802A0E5C 0026A41C  38 00 FF FF */	li r0, -0x1
/* 802A0E60 0026A420  90 1F 00 04 */	stw r0, 0x4(r31)
/* 802A0E64 0026A424  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802A0E68 0026A428  48 00 01 68 */	b .L_802A0FD0
.L_802A0E6C:
/* 802A0E6C 0026A42C  80 6D A5 94 */	lwz r3, lbl_80666714@sda21(r13)
/* 802A0E70 0026A430  38 80 FF FF */	li r4, -0x1
/* 802A0E74 0026A434  48 1F 53 F1 */	bl func_80496264
/* 802A0E78 0026A438  7C 7E 1B 78 */	mr r30, r3
/* 802A0E7C 0026A43C  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 802A0E80 0026A440  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A0E84 0026A444  81 8C 01 28 */	lwz r12, 0x128(r12)
/* 802A0E88 0026A448  7D 89 03 A6 */	mtctr r12
/* 802A0E8C 0026A44C  4E 80 04 21 */	bctrl
/* 802A0E90 0026A450  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A0E94 0026A454  41 82 00 34 */	beq .L_802A0EC8
/* 802A0E98 0026A458  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 802A0E9C 0026A45C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A0EA0 0026A460  81 8C 01 28 */	lwz r12, 0x128(r12)
/* 802A0EA4 0026A464  7D 89 03 A6 */	mtctr r12
/* 802A0EA8 0026A468  4E 80 04 21 */	bctrl
/* 802A0EAC 0026A46C  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 802A0EB0 0026A470  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 802A0EB4 0026A474  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802A0EB8 0026A478  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802A0EBC 0026A47C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802A0EC0 0026A480  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 802A0EC4 0026A484  48 00 00 30 */	b .L_802A0EF4
.L_802A0EC8:
/* 802A0EC8 0026A488  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 802A0ECC 0026A48C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A0ED0 0026A490  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 802A0ED4 0026A494  7D 89 03 A6 */	mtctr r12
/* 802A0ED8 0026A498  4E 80 04 21 */	bctrl
/* 802A0EDC 0026A49C  80 83 00 00 */	lwz r4, 0x0(r3)
/* 802A0EE0 0026A4A0  80 03 00 04 */	lwz r0, 0x4(r3)
/* 802A0EE4 0026A4A4  90 01 00 18 */	stw r0, 0x18(r1)
/* 802A0EE8 0026A4A8  90 81 00 14 */	stw r4, 0x14(r1)
/* 802A0EEC 0026A4AC  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802A0EF0 0026A4B0  90 01 00 1C */	stw r0, 0x1c(r1)
.L_802A0EF4:
/* 802A0EF4 0026A4B4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802A0EF8 0026A4B8  7F C5 F3 78 */	mr r5, r30
/* 802A0EFC 0026A4BC  C0 22 B1 80 */	lfs f1, lbl_8066B500@sda21(r2)
/* 802A0F00 0026A4C0  38 81 00 14 */	addi r4, r1, 0x14
/* 802A0F04 0026A4C4  C0 42 B1 84 */	lfs f2, lbl_8066B504@sda21(r2)
/* 802A0F08 0026A4C8  C0 62 B1 88 */	lfs f3, lbl_8066B508@sda21(r2)
/* 802A0F0C 0026A4CC  4B EE 8D 35 */	bl func_80189C40
/* 802A0F10 0026A4D0  48 00 00 C0 */	b .L_802A0FD0
.L_802A0F14:
/* 802A0F14 0026A4D4  54 80 07 7B */	rlwinm. r0, r4, 0, 29, 29
/* 802A0F18 0026A4D8  41 82 00 B8 */	beq .L_802A0FD0
/* 802A0F1C 0026A4DC  A0 63 00 38 */	lhz r3, 0x38(r3)
/* 802A0F20 0026A4E0  28 03 FF FF */	cmplwi r3, 0xffff
/* 802A0F24 0026A4E4  41 82 00 AC */	beq .L_802A0FD0
/* 802A0F28 0026A4E8  4B F1 EB BD */	bl func_801BFAE4
/* 802A0F2C 0026A4EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A0F30 0026A4F0  40 82 00 1C */	bne .L_802A0F4C
/* 802A0F34 0026A4F4  3C 60 00 01 */	lis r3, 0x1
/* 802A0F38 0026A4F8  38 80 FF FF */	li r4, -0x1
/* 802A0F3C 0026A4FC  38 03 FF FF */	addi r0, r3, -0x1
/* 802A0F40 0026A500  90 9F 00 04 */	stw r4, 0x4(r31)
/* 802A0F44 0026A504  B0 1F 00 38 */	sth r0, 0x38(r31)
/* 802A0F48 0026A508  48 00 00 88 */	b .L_802A0FD0
.L_802A0F4C:
/* 802A0F4C 0026A50C  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 802A0F50 0026A510  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A0F54 0026A514  81 8C 01 28 */	lwz r12, 0x128(r12)
/* 802A0F58 0026A518  7D 89 03 A6 */	mtctr r12
/* 802A0F5C 0026A51C  4E 80 04 21 */	bctrl
/* 802A0F60 0026A520  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A0F64 0026A524  41 82 00 34 */	beq .L_802A0F98
/* 802A0F68 0026A528  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 802A0F6C 0026A52C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A0F70 0026A530  81 8C 01 28 */	lwz r12, 0x128(r12)
/* 802A0F74 0026A534  7D 89 03 A6 */	mtctr r12
/* 802A0F78 0026A538  4E 80 04 21 */	bctrl
/* 802A0F7C 0026A53C  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 802A0F80 0026A540  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 802A0F84 0026A544  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802A0F88 0026A548  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 802A0F8C 0026A54C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802A0F90 0026A550  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 802A0F94 0026A554  48 00 00 30 */	b .L_802A0FC4
.L_802A0F98:
/* 802A0F98 0026A558  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 802A0F9C 0026A55C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A0FA0 0026A560  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 802A0FA4 0026A564  7D 89 03 A6 */	mtctr r12
/* 802A0FA8 0026A568  4E 80 04 21 */	bctrl
/* 802A0FAC 0026A56C  80 83 00 00 */	lwz r4, 0x0(r3)
/* 802A0FB0 0026A570  80 03 00 04 */	lwz r0, 0x4(r3)
/* 802A0FB4 0026A574  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A0FB8 0026A578  90 81 00 08 */	stw r4, 0x8(r1)
/* 802A0FBC 0026A57C  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802A0FC0 0026A580  90 01 00 10 */	stw r0, 0x10(r1)
.L_802A0FC4:
/* 802A0FC4 0026A584  A0 7F 00 38 */	lhz r3, 0x38(r31)
/* 802A0FC8 0026A588  38 81 00 08 */	addi r4, r1, 0x8
/* 802A0FCC 0026A58C  4B F1 EB 1D */	bl func_801BFAE8
.L_802A0FD0:
/* 802A0FD0 0026A590  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A0FD4 0026A594  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802A0FD8 0026A598  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802A0FDC 0026A59C  7C 08 03 A6 */	mtlr r0
/* 802A0FE0 0026A5A0  38 21 00 30 */	addi r1, r1, 0x30
/* 802A0FE4 0026A5A4  4E 80 00 20 */	blr
.endfn func_802A0E08

.fn func_802A0FE8, global
/* 802A0FE8 0026A5A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A0FEC 0026A5AC  7C 08 02 A6 */	mflr r0
/* 802A0FF0 0026A5B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A0FF4 0026A5B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A0FF8 0026A5B8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A0FFC 0026A5BC  7C 7E 1B 78 */	mr r30, r3
/* 802A1000 0026A5C0  80 83 00 00 */	lwz r4, 0x0(r3)
/* 802A1004 0026A5C4  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A1008 0026A5C8  41 82 00 7C */	beq .L_802A1084
/* 802A100C 0026A5CC  80 A4 00 64 */	lwz r5, 0x64(r4)
/* 802A1010 0026A5D0  54 A0 07 BD */	rlwinm. r0, r5, 0, 30, 30
/* 802A1014 0026A5D4  40 82 00 0C */	bne .L_802A1020
/* 802A1018 0026A5D8  54 A0 00 01 */	clrrwi. r0, r5, 31
/* 802A101C 0026A5DC  41 82 00 2C */	beq .L_802A1048
.L_802A1020:
/* 802A1020 0026A5E0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802A1024 0026A5E4  2C 00 FF FF */	cmpwi r0, -0x1
/* 802A1028 0026A5E8  41 82 00 5C */	beq .L_802A1084
/* 802A102C 0026A5EC  C0 22 B1 8C */	lfs f1, lbl_8066B50C@sda21(r2)
/* 802A1030 0026A5F0  38 63 00 10 */	addi r3, r3, 0x10
/* 802A1034 0026A5F4  4B EE 88 39 */	bl func_8018986C
/* 802A1038 0026A5F8  38 00 FF FF */	li r0, -0x1
/* 802A103C 0026A5FC  90 1E 00 04 */	stw r0, 0x4(r30)
/* 802A1040 0026A600  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802A1044 0026A604  48 00 00 40 */	b .L_802A1084
.L_802A1048:
/* 802A1048 0026A608  54 A0 07 7B */	rlwinm. r0, r5, 0, 29, 29
/* 802A104C 0026A60C  41 82 00 38 */	beq .L_802A1084
/* 802A1050 0026A610  A3 E3 00 38 */	lhz r31, 0x38(r3)
/* 802A1054 0026A614  28 1F FF FF */	cmplwi r31, 0xffff
/* 802A1058 0026A618  41 82 00 2C */	beq .L_802A1084
/* 802A105C 0026A61C  7C 83 23 78 */	mr r3, r4
/* 802A1060 0026A620  4B E1 E2 6D */	bl func_800BF2CC
/* 802A1064 0026A624  7F E4 FB 78 */	mr r4, r31
/* 802A1068 0026A628  38 A0 00 00 */	li r5, 0x0
/* 802A106C 0026A62C  4B F1 EE 65 */	bl func_801BFED0
/* 802A1070 0026A630  3C 60 00 01 */	lis r3, 0x1
/* 802A1074 0026A634  38 80 FF FF */	li r4, -0x1
/* 802A1078 0026A638  38 03 FF FF */	addi r0, r3, -0x1
/* 802A107C 0026A63C  90 9E 00 04 */	stw r4, 0x4(r30)
/* 802A1080 0026A640  B0 1E 00 38 */	sth r0, 0x38(r30)
.L_802A1084:
/* 802A1084 0026A644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A1088 0026A648  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A108C 0026A64C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A1090 0026A650  7C 08 03 A6 */	mtlr r0
/* 802A1094 0026A654  38 21 00 10 */	addi r1, r1, 0x10
/* 802A1098 0026A658  4E 80 00 20 */	blr
.endfn func_802A0FE8

.fn func_802A109C, global
/* 802A109C 0026A65C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A10A0 0026A660  7C 08 02 A6 */	mflr r0
/* 802A10A4 0026A664  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A10A8 0026A668  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802A10AC 0026A66C  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 802A10B0 0026A670  FF E0 08 90 */	fmr f31, f1
/* 802A10B4 0026A674  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A10B8 0026A678  7C 9F 23 78 */	mr r31, r4
/* 802A10BC 0026A67C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A10C0 0026A680  7C 7E 1B 78 */	mr r30, r3
/* 802A10C4 0026A684  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802A10C8 0026A688  80 03 00 00 */	lwz r0, 0x0(r3)
/* 802A10CC 0026A68C  2C 00 00 00 */	cmpwi r0, 0x0
/* 802A10D0 0026A690  40 82 00 0C */	bne .L_802A10DC
/* 802A10D4 0026A694  38 60 00 00 */	li r3, 0x0
/* 802A10D8 0026A698  48 00 02 08 */	b .L_802A12E0
.L_802A10DC:
/* 802A10DC 0026A69C  80 03 00 04 */	lwz r0, 0x4(r3)
/* 802A10E0 0026A6A0  2C 00 00 00 */	cmpwi r0, 0x0
/* 802A10E4 0026A6A4  40 80 00 0C */	bge .L_802A10F0
/* 802A10E8 0026A6A8  38 00 FF FF */	li r0, -0x1
/* 802A10EC 0026A6AC  90 03 00 08 */	stw r0, 0x8(r3)
.L_802A10F0:
/* 802A10F0 0026A6B0  2C 05 00 00 */	cmpwi r5, 0x0
/* 802A10F4 0026A6B4  41 80 00 20 */	blt .L_802A1114
/* 802A10F8 0026A6B8  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802A10FC 0026A6BC  2C 00 00 00 */	cmpwi r0, 0x0
/* 802A1100 0026A6C0  41 80 00 14 */	blt .L_802A1114
/* 802A1104 0026A6C4  7C 00 28 00 */	cmpw r0, r5
/* 802A1108 0026A6C8  41 81 00 0C */	bgt .L_802A1114
/* 802A110C 0026A6CC  38 60 00 00 */	li r3, 0x0
/* 802A1110 0026A6D0  48 00 01 D0 */	b .L_802A12E0
.L_802A1114:
/* 802A1114 0026A6D4  80 83 00 00 */	lwz r4, 0x0(r3)
/* 802A1118 0026A6D8  90 A3 00 08 */	stw r5, 0x8(r3)
/* 802A111C 0026A6DC  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A1120 0026A6E0  41 82 00 7C */	beq .L_802A119C
/* 802A1124 0026A6E4  80 A4 00 64 */	lwz r5, 0x64(r4)
/* 802A1128 0026A6E8  54 A0 07 BD */	rlwinm. r0, r5, 0, 30, 30
/* 802A112C 0026A6EC  40 82 00 0C */	bne .L_802A1138
/* 802A1130 0026A6F0  54 A0 00 01 */	clrrwi. r0, r5, 31
/* 802A1134 0026A6F4  41 82 00 2C */	beq .L_802A1160
.L_802A1138:
/* 802A1138 0026A6F8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802A113C 0026A6FC  2C 00 FF FF */	cmpwi r0, -0x1
/* 802A1140 0026A700  41 82 00 5C */	beq .L_802A119C
/* 802A1144 0026A704  C0 22 B1 8C */	lfs f1, lbl_8066B50C@sda21(r2)
/* 802A1148 0026A708  38 63 00 10 */	addi r3, r3, 0x10
/* 802A114C 0026A70C  4B EE 87 21 */	bl func_8018986C
/* 802A1150 0026A710  38 00 FF FF */	li r0, -0x1
/* 802A1154 0026A714  90 1E 00 04 */	stw r0, 0x4(r30)
/* 802A1158 0026A718  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802A115C 0026A71C  48 00 00 40 */	b .L_802A119C
.L_802A1160:
/* 802A1160 0026A720  54 A0 07 7B */	rlwinm. r0, r5, 0, 29, 29
/* 802A1164 0026A724  41 82 00 38 */	beq .L_802A119C
/* 802A1168 0026A728  A3 A3 00 38 */	lhz r29, 0x38(r3)
/* 802A116C 0026A72C  28 1D FF FF */	cmplwi r29, 0xffff
/* 802A1170 0026A730  41 82 00 2C */	beq .L_802A119C
/* 802A1174 0026A734  7C 83 23 78 */	mr r3, r4
/* 802A1178 0026A738  4B E1 E1 55 */	bl func_800BF2CC
/* 802A117C 0026A73C  7F A4 EB 78 */	mr r4, r29
/* 802A1180 0026A740  38 A0 00 00 */	li r5, 0x0
/* 802A1184 0026A744  4B F1 ED 4D */	bl func_801BFED0
/* 802A1188 0026A748  3C 60 00 01 */	lis r3, 0x1
/* 802A118C 0026A74C  38 80 FF FF */	li r4, -0x1
/* 802A1190 0026A750  38 03 FF FF */	addi r0, r3, -0x1
/* 802A1194 0026A754  90 9E 00 04 */	stw r4, 0x4(r30)
/* 802A1198 0026A758  B0 1E 00 38 */	sth r0, 0x38(r30)
.L_802A119C:
/* 802A119C 0026A75C  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 802A11A0 0026A760  80 83 00 64 */	lwz r4, 0x64(r3)
/* 802A11A4 0026A764  54 80 07 BD */	rlwinm. r0, r4, 0, 30, 30
/* 802A11A8 0026A768  40 82 00 0C */	bne .L_802A11B4
/* 802A11AC 0026A76C  54 80 00 01 */	clrrwi. r0, r4, 31
/* 802A11B0 0026A770  41 82 00 D0 */	beq .L_802A1280
.L_802A11B4:
/* 802A11B4 0026A774  3C 80 51 EC */	lis r4, 0x51ec
/* 802A11B8 0026A778  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802A11BC 0026A77C  38 84 85 1F */	addi r4, r4, -0x7ae1
/* 802A11C0 0026A780  3C 60 CC CD */	lis r3, 0xcccd
/* 802A11C4 0026A784  7C C4 F8 96 */	mulhw r6, r4, r31
/* 802A11C8 0026A788  7C BE 02 14 */	add r5, r30, r0
/* 802A11CC 0026A78C  39 03 CC CD */	addi r8, r3, -0x3333
/* 802A11D0 0026A790  C0 22 B1 8C */	lfs f1, lbl_8066B50C@sda21(r2)
/* 802A11D4 0026A794  38 7E 00 10 */	addi r3, r30, 0x10
/* 802A11D8 0026A798  38 80 00 01 */	li r4, 0x1
/* 802A11DC 0026A79C  7C C0 2E 70 */	srawi r0, r6, 5
/* 802A11E0 0026A7A0  54 07 0F FE */	srwi r7, r0, 31
/* 802A11E4 0026A7A4  7C C6 2E 70 */	srawi r6, r6, 5
/* 802A11E8 0026A7A8  7D 40 3A 14 */	add r10, r0, r7
/* 802A11EC 0026A7AC  7C 08 50 16 */	mulhwu r0, r8, r10
/* 802A11F0 0026A7B0  54 C7 0F FE */	srwi r7, r6, 31
/* 802A11F4 0026A7B4  7C C6 3A 14 */	add r6, r6, r7
/* 802A11F8 0026A7B8  1D 26 00 64 */	mulli r9, r6, 0x64
/* 802A11FC 0026A7BC  54 06 E8 FE */	srwi r6, r0, 3
/* 802A1200 0026A7C0  38 06 00 30 */	addi r0, r6, 0x30
/* 802A1204 0026A7C4  98 05 00 10 */	stb r0, 0x10(r5)
/* 802A1208 0026A7C8  1C E6 00 0A */	mulli r7, r6, 0xa
/* 802A120C 0026A7CC  7D 29 F8 50 */	subf r9, r9, r31
/* 802A1210 0026A7D0  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802A1214 0026A7D4  7C A8 48 16 */	mulhwu r5, r8, r9
/* 802A1218 0026A7D8  7C C0 F2 14 */	add r6, r0, r30
/* 802A121C 0026A7DC  7C E7 50 50 */	subf r7, r7, r10
/* 802A1220 0026A7E0  38 07 00 30 */	addi r0, r7, 0x30
/* 802A1224 0026A7E4  98 06 00 11 */	stb r0, 0x11(r6)
/* 802A1228 0026A7E8  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802A122C 0026A7EC  54 A7 E8 FE */	srwi r7, r5, 3
/* 802A1230 0026A7F0  7C C0 F2 14 */	add r6, r0, r30
/* 802A1234 0026A7F4  1C A7 00 0A */	mulli r5, r7, 0xa
/* 802A1238 0026A7F8  38 07 00 30 */	addi r0, r7, 0x30
/* 802A123C 0026A7FC  98 06 00 13 */	stb r0, 0x13(r6)
/* 802A1240 0026A800  7C A5 48 50 */	subf r5, r5, r9
/* 802A1244 0026A804  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802A1248 0026A808  38 C5 00 30 */	addi r6, r5, 0x30
/* 802A124C 0026A80C  7C A0 F2 14 */	add r5, r0, r30
/* 802A1250 0026A810  98 C5 00 14 */	stb r6, 0x14(r5)
/* 802A1254 0026A814  4B EE 85 4D */	bl func_801897A0
/* 802A1258 0026A818  2C 03 FF FF */	cmpwi r3, -0x1
/* 802A125C 0026A81C  90 7E 00 0C */	stw r3, 0xc(r30)
/* 802A1260 0026A820  41 82 00 10 */	beq .L_802A1270
/* 802A1264 0026A824  93 FE 00 04 */	stw r31, 0x4(r30)
/* 802A1268 0026A828  38 60 00 01 */	li r3, 0x1
/* 802A126C 0026A82C  48 00 00 74 */	b .L_802A12E0
.L_802A1270:
/* 802A1270 0026A830  38 00 FF FF */	li r0, -0x1
/* 802A1274 0026A834  90 1E 00 04 */	stw r0, 0x4(r30)
/* 802A1278 0026A838  38 60 00 00 */	li r3, 0x0
/* 802A127C 0026A83C  48 00 00 64 */	b .L_802A12E0
.L_802A1280:
/* 802A1280 0026A840  54 80 07 7B */	rlwinm. r0, r4, 0, 29, 29
/* 802A1284 0026A844  41 82 00 58 */	beq .L_802A12DC
/* 802A1288 0026A848  4B E1 E0 45 */	bl func_800BF2CC
/* 802A128C 0026A84C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A1290 0026A850  40 80 00 0C */	bge .L_802A129C
/* 802A1294 0026A854  38 60 00 00 */	li r3, 0x0
/* 802A1298 0026A858  48 00 00 48 */	b .L_802A12E0
.L_802A129C:
/* 802A129C 0026A85C  FC 20 F8 90 */	fmr f1, f31
/* 802A12A0 0026A860  7F E4 FB 78 */	mr r4, r31
/* 802A12A4 0026A864  38 A0 00 00 */	li r5, 0x0
/* 802A12A8 0026A868  38 C0 00 00 */	li r6, 0x0
/* 802A12AC 0026A86C  4B F1 E9 8D */	bl func_801BFC38
/* 802A12B0 0026A870  54 60 04 3E */	clrlwi r0, r3, 16
/* 802A12B4 0026A874  B0 7E 00 38 */	sth r3, 0x38(r30)
/* 802A12B8 0026A878  28 00 FF FF */	cmplwi r0, 0xffff
/* 802A12BC 0026A87C  41 82 00 10 */	beq .L_802A12CC
/* 802A12C0 0026A880  93 FE 00 04 */	stw r31, 0x4(r30)
/* 802A12C4 0026A884  38 60 00 01 */	li r3, 0x1
/* 802A12C8 0026A888  48 00 00 18 */	b .L_802A12E0
.L_802A12CC:
/* 802A12CC 0026A88C  38 00 FF FF */	li r0, -0x1
/* 802A12D0 0026A890  90 1E 00 04 */	stw r0, 0x4(r30)
/* 802A12D4 0026A894  38 60 00 00 */	li r3, 0x0
/* 802A12D8 0026A898  48 00 00 08 */	b .L_802A12E0
.L_802A12DC:
/* 802A12DC 0026A89C  38 60 00 00 */	li r3, 0x0
.L_802A12E0:
/* 802A12E0 0026A8A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A12E4 0026A8A4  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 802A12E8 0026A8A8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802A12EC 0026A8AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A12F0 0026A8B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A12F4 0026A8B4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802A12F8 0026A8B8  7C 08 03 A6 */	mtlr r0
/* 802A12FC 0026A8BC  38 21 00 30 */	addi r1, r1, 0x30
/* 802A1300 0026A8C0  4E 80 00 20 */	blr
.endfn func_802A109C

.fn func_802A1304, global
/* 802A1304 0026A8C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A1308 0026A8C8  7C 08 02 A6 */	mflr r0
/* 802A130C 0026A8CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A1310 0026A8D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A1314 0026A8D4  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A1318 0026A8D8  7C 7E 1B 78 */	mr r30, r3
/* 802A131C 0026A8DC  80 83 00 00 */	lwz r4, 0x0(r3)
/* 802A1320 0026A8E0  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A1324 0026A8E4  41 82 00 7C */	beq .L_802A13A0
/* 802A1328 0026A8E8  80 A4 00 64 */	lwz r5, 0x64(r4)
/* 802A132C 0026A8EC  54 A0 07 BD */	rlwinm. r0, r5, 0, 30, 30
/* 802A1330 0026A8F0  40 82 00 0C */	bne .L_802A133C
/* 802A1334 0026A8F4  54 A0 00 01 */	clrrwi. r0, r5, 31
/* 802A1338 0026A8F8  41 82 00 2C */	beq .L_802A1364
.L_802A133C:
/* 802A133C 0026A8FC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802A1340 0026A900  2C 00 FF FF */	cmpwi r0, -0x1
/* 802A1344 0026A904  41 82 00 5C */	beq .L_802A13A0
/* 802A1348 0026A908  C0 22 B1 8C */	lfs f1, lbl_8066B50C@sda21(r2)
/* 802A134C 0026A90C  38 63 00 10 */	addi r3, r3, 0x10
/* 802A1350 0026A910  4B EE 85 1D */	bl func_8018986C
/* 802A1354 0026A914  38 00 FF FF */	li r0, -0x1
/* 802A1358 0026A918  90 1E 00 04 */	stw r0, 0x4(r30)
/* 802A135C 0026A91C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802A1360 0026A920  48 00 00 40 */	b .L_802A13A0
.L_802A1364:
/* 802A1364 0026A924  54 A0 07 7B */	rlwinm. r0, r5, 0, 29, 29
/* 802A1368 0026A928  41 82 00 38 */	beq .L_802A13A0
/* 802A136C 0026A92C  A3 E3 00 38 */	lhz r31, 0x38(r3)
/* 802A1370 0026A930  28 1F FF FF */	cmplwi r31, 0xffff
/* 802A1374 0026A934  41 82 00 2C */	beq .L_802A13A0
/* 802A1378 0026A938  7C 83 23 78 */	mr r3, r4
/* 802A137C 0026A93C  4B E1 DF 51 */	bl func_800BF2CC
/* 802A1380 0026A940  7F E4 FB 78 */	mr r4, r31
/* 802A1384 0026A944  38 A0 00 00 */	li r5, 0x0
/* 802A1388 0026A948  4B F1 EB 49 */	bl func_801BFED0
/* 802A138C 0026A94C  3C 60 00 01 */	lis r3, 0x1
/* 802A1390 0026A950  38 80 FF FF */	li r4, -0x1
/* 802A1394 0026A954  38 03 FF FF */	addi r0, r3, -0x1
/* 802A1398 0026A958  90 9E 00 04 */	stw r4, 0x4(r30)
/* 802A139C 0026A95C  B0 1E 00 38 */	sth r0, 0x38(r30)
.L_802A13A0:
/* 802A13A0 0026A960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A13A4 0026A964  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A13A8 0026A968  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A13AC 0026A96C  7C 08 03 A6 */	mtlr r0
/* 802A13B0 0026A970  38 21 00 10 */	addi r1, r1, 0x10
/* 802A13B4 0026A974  4E 80 00 20 */	blr
.endfn func_802A1304

.fn func_802A13B8, global
/* 802A13B8 0026A978  4E 80 00 20 */	blr
.endfn func_802A13B8

# 0x8050BCC0 - 0x8050BCF0
.rodata
.balign 8
.global lbl_8050BCC0
lbl_8050BCC0:
	.4byte 0x736E642F
	.4byte 0x6168782F
	.4byte 0x70633031
	.4byte 0x2F706330
	.4byte 0x315F3031
	.4byte 0x5F30312E
	.4byte 0x61687800

.global cf_CCharVoice_typestr
cf_CCharVoice_typestr:
	.4byte 0x63663A3A
	.4byte 0x43436861
	.4byte 0x72566F69
	.4byte 0x63650000
.global lbl_8050BCEC
lbl_8050BCEC:
	.4byte 0x00000000

# 0x8053D040 - 0x8053D050
.data
.balign 8

.global __vt__cf_CCharVoice
__vt__cf_CCharVoice:
	.4byte __RTTI__cf_CCharVoice
	.4byte 0x00000000
	.4byte func_80080500
	.4byte 0x00000000

# 0x80665590 - 0x806655A0
.section .sdata, "wa"
.balign 8
.global lbl_80665590
lbl_80665590:
	.4byte lbl_8050BCC0
	.4byte 0x00000000

.global __RTTI__cf_CCharVoice
__RTTI__cf_CCharVoice:
	.4byte cf_CCharVoice_typestr
	.4byte 0x00000000

# 0x8066B500 - 0x8066B510
.section .sdata2, "a"
.balign 8
.global lbl_8066B500
lbl_8066B500:
	.4byte 0x41200000
.global lbl_8066B504
lbl_8066B504:
	.4byte 0x42200000
.global lbl_8066B508
lbl_8066B508:
	.4byte 0x3F000000
.global lbl_8066B50C
lbl_8066B50C:
	.4byte 0x00000000

# 0x8001A880 - 0x8001A8B8
.section extab, "a"
.balign 4

.obj "@etb_8001A880", local
.hidden "@etb_8001A880"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001A880"

.obj "@etb_8001A888", local
.hidden "@etb_8001A888"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001A888"

.obj "@etb_8001A890", local
.hidden "@etb_8001A890"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_8001A890"

.obj "@etb_8001A898", local
.hidden "@etb_8001A898"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_8001A898"

.obj "@etb_8001A8A0", local
.hidden "@etb_8001A8A0"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_8001A8A0"

.obj "@etb_8001A8A8", local
.hidden "@etb_8001A8A8"
	.4byte 0x184A0000
	.4byte 0x00000000
.endobj "@etb_8001A8A8"

.obj "@etb_8001A8B0", local
.hidden "@etb_8001A8B0"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_8001A8B0"

# 0x8003266C - 0x800326C0
.section extabindex, "a"
.balign 4

.obj "@eti_8003266C", local
.hidden "@eti_8003266C"
	.4byte func_802A0AFC
	.4byte 0x00000090
	.4byte "@etb_8001A880"
.endobj "@eti_8003266C"

.obj "@eti_80032678", local
.hidden "@eti_80032678"
	.4byte func_802A0B8C
	.4byte 0x0000012C
	.4byte "@etb_8001A888"
.endobj "@eti_80032678"

.obj "@eti_80032684", local
.hidden "@eti_80032684"
	.4byte func_802A0CB8
	.4byte 0x00000150
	.4byte "@etb_8001A890"
.endobj "@eti_80032684"

.obj "@eti_80032690", local
.hidden "@eti_80032690"
	.4byte func_802A0E08
	.4byte 0x000001E0
	.4byte "@etb_8001A898"
.endobj "@eti_80032690"

.obj "@eti_8003269C", local
.hidden "@eti_8003269C"
	.4byte func_802A0FE8
	.4byte 0x000000B4
	.4byte "@etb_8001A8A0"
.endobj "@eti_8003269C"

.obj "@eti_800326A8", local
.hidden "@eti_800326A8"
	.4byte func_802A109C
	.4byte 0x00000268
	.4byte "@etb_8001A8A8"
.endobj "@eti_800326A8"

.obj "@eti_800326B4", local
.hidden "@eti_800326B4"
	.4byte func_802A1304
	.4byte 0x000000B4
	.4byte "@etb_8001A8B0"
.endobj "@eti_800326B4"
