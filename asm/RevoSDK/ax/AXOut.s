.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn __AXOutNewFrame, global
/* 802D3A70 0029D030  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D3A74 0029D034  7C 08 02 A6 */	mflr r0
/* 802D3A78 0029D038  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D3A7C 0029D03C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802D3A80 0029D040  3F E0 80 58 */	lis r31, lbl_80580BC0@ha
/* 802D3A84 0029D044  3B FF 0B C0 */	addi r31, r31, lbl_80580BC0@l
/* 802D3A88 0029D048  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802D3A8C 0029D04C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802D3A90 0029D050  48 08 8E D1 */	bl OSGetTime
/* 802D3A94 0029D054  38 BF 00 00 */	addi r5, r31, 0
/* 802D3A98 0029D058  90 7F 00 00 */	stw r3, 0(r31)
/* 802D3A9C 0029D05C  90 85 00 04 */	stw r4, 4(r5)
/* 802D3AA0 0029D060  4B FF D7 11 */	bl AIGetDMABytesLeft
/* 802D3AA4 0029D064  54 63 F0 BE */	srwi r3, r3, 2
/* 802D3AA8 0029D068  80 0D B5 18 */	lwz r0, lbl_80667698@sda21(r13)
/* 802D3AAC 0029D06C  20 63 00 60 */	subfic r3, r3, 0x60
/* 802D3AB0 0029D070  28 00 00 01 */	cmplwi r0, 1
/* 802D3AB4 0029D074  1F C3 0E D5 */	mulli r30, r3, 0xed5
/* 802D3AB8 0029D078  40 82 00 10 */	bne .L_802D3AC8
/* 802D3ABC 0029D07C  38 60 00 00 */	li r3, 0
/* 802D3AC0 0029D080  48 00 12 01 */	bl __AXSyncPBs
/* 802D3AC4 0029D084  48 00 00 0C */	b .L_802D3AD0
.L_802D3AC8:
/* 802D3AC8 0029D088  38 60 5F 50 */	li r3, 0x5f50
/* 802D3ACC 0029D08C  48 00 11 F5 */	bl __AXSyncPBs
.L_802D3AD0:
/* 802D3AD0 0029D090  48 00 09 41 */	bl __AXPrintStudio
/* 802D3AD4 0029D094  4B FF F4 AD */	bl __AXGetCommandListAddress
/* 802D3AD8 0029D098  3C 80 BA BE */	lis r4, 0xBABE0080@ha
/* 802D3ADC 0029D09C  7C 7D 1B 78 */	mr r29, r3
/* 802D3AE0 0029D0A0  38 64 00 80 */	addi r3, r4, 0xBABE0080@l
/* 802D3AE4 0029D0A4  48 03 57 6D */	bl DSPSendMailToDSP
.L_802D3AE8:
/* 802D3AE8 0029D0A8  48 03 57 29 */	bl DSPCheckMailToDSP
/* 802D3AEC 0029D0AC  2C 03 00 00 */	cmpwi r3, 0
/* 802D3AF0 0029D0B0  40 82 FF F8 */	bne .L_802D3AE8
/* 802D3AF4 0029D0B4  7F A3 EB 78 */	mr r3, r29
/* 802D3AF8 0029D0B8  48 03 57 59 */	bl DSPSendMailToDSP
.L_802D3AFC:
/* 802D3AFC 0029D0BC  48 03 57 15 */	bl DSPCheckMailToDSP
/* 802D3B00 0029D0C0  2C 03 00 00 */	cmpwi r3, 0
/* 802D3B04 0029D0C4  40 82 FF F8 */	bne .L_802D3AFC
/* 802D3B08 0029D0C8  4B FF E6 29 */	bl __AXServiceCallbackStack
/* 802D3B0C 0029D0CC  48 08 8E 55 */	bl OSGetTime
/* 802D3B10 0029D0D0  3B BF 00 00 */	addi r29, r31, 0
/* 802D3B14 0029D0D4  90 9D 00 0C */	stw r4, 0xc(r29)
/* 802D3B18 0029D0D8  90 7D 00 08 */	stw r3, 8(r29)
/* 802D3B1C 0029D0DC  4B FF EE F5 */	bl __AXProcessAux
/* 802D3B20 0029D0E0  48 08 8E 41 */	bl OSGetTime
/* 802D3B24 0029D0E4  90 9D 00 14 */	stw r4, 0x14(r29)
/* 802D3B28 0029D0E8  90 7D 00 10 */	stw r3, 0x10(r29)
/* 802D3B2C 0029D0EC  48 08 8E 35 */	bl OSGetTime
/* 802D3B30 0029D0F0  81 8D B5 34 */	lwz r12, lbl_806676B4@sda21(r13)
/* 802D3B34 0029D0F4  90 9D 00 1C */	stw r4, 0x1c(r29)
/* 802D3B38 0029D0F8  2C 0C 00 00 */	cmpwi r12, 0
/* 802D3B3C 0029D0FC  90 7D 00 18 */	stw r3, 0x18(r29)
/* 802D3B40 0029D100  41 82 00 0C */	beq .L_802D3B4C
/* 802D3B44 0029D104  7D 89 03 A6 */	mtctr r12
/* 802D3B48 0029D108  4E 80 04 21 */	bctrl 
.L_802D3B4C:
/* 802D3B4C 0029D10C  48 08 8E 15 */	bl OSGetTime
/* 802D3B50 0029D110  80 ED B5 10 */	lwz r7, lbl_80667690@sda21(r13)
/* 802D3B54 0029D114  39 1F 00 00 */	addi r8, r31, 0
/* 802D3B58 0029D118  80 0D B5 14 */	lwz r0, lbl_80667694@sda21(r13)
/* 802D3B5C 0029D11C  38 BF 00 40 */	addi r5, r31, 0x40
/* 802D3B60 0029D120  54 E6 08 3C */	slwi r6, r7, 1
/* 802D3B64 0029D124  38 E7 00 12 */	addi r7, r7, 0x12
/* 802D3B68 0029D128  7C C5 32 14 */	add r6, r5, r6
/* 802D3B6C 0029D12C  90 88 00 24 */	stw r4, 0x24(r8)
/* 802D3B70 0029D130  7C 07 00 00 */	cmpw r7, r0
/* 802D3B74 0029D134  38 A6 01 68 */	addi r5, r6, 0x168
/* 802D3B78 0029D138  38 86 02 D0 */	addi r4, r6, 0x2d0
/* 802D3B7C 0029D13C  38 06 04 38 */	addi r0, r6, 0x438
/* 802D3B80 0029D140  90 68 00 20 */	stw r3, 0x20(r8)
/* 802D3B84 0029D144  90 C1 00 08 */	stw r6, 8(r1)
/* 802D3B88 0029D148  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802D3B8C 0029D14C  90 81 00 10 */	stw r4, 0x10(r1)
/* 802D3B90 0029D150  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3B94 0029D154  41 80 00 08 */	blt .L_802D3B9C
/* 802D3B98 0029D158  38 E0 00 00 */	li r7, 0
.L_802D3B9C:
/* 802D3B9C 0029D15C  80 8D B5 0C */	lwz r4, lbl_8066768C@sda21(r13)
/* 802D3BA0 0029D160  80 6D B5 10 */	lwz r3, lbl_80667690@sda21(r13)
/* 802D3BA4 0029D164  7C 04 18 00 */	cmpw r4, r3
/* 802D3BA8 0029D168  41 80 00 14 */	blt .L_802D3BBC
/* 802D3BAC 0029D16C  38 03 00 12 */	addi r0, r3, 0x12
/* 802D3BB0 0029D170  7C 04 00 00 */	cmpw r4, r0
/* 802D3BB4 0029D174  40 80 00 08 */	bge .L_802D3BBC
/* 802D3BB8 0029D178  90 ED B5 0C */	stw r7, lbl_8066768C@sda21(r13)
.L_802D3BBC:
/* 802D3BBC 0029D17C  80 0D B5 40 */	lwz r0, lbl_806676C0@sda21(r13)
/* 802D3BC0 0029D180  3B BF 08 E0 */	addi r29, r31, 0x8e0
/* 802D3BC4 0029D184  90 ED B5 10 */	stw r7, lbl_80667690@sda21(r13)
/* 802D3BC8 0029D188  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 802D3BCC 0029D18C  1C 00 01 80 */	mulli r0, r0, 0x180
/* 802D3BD0 0029D190  38 A1 00 08 */	addi r5, r1, 8
/* 802D3BD4 0029D194  7C 9D 02 14 */	add r4, r29, r0
/* 802D3BD8 0029D198  4B FF F3 D9 */	bl __AXNextFrame
/* 802D3BDC 0029D19C  80 0D B5 18 */	lwz r0, lbl_80667698@sda21(r13)
/* 802D3BE0 0029D1A0  80 6D B5 40 */	lwz r3, lbl_806676C0@sda21(r13)
/* 802D3BE4 0029D1A4  28 00 00 01 */	cmplwi r0, 1
/* 802D3BE8 0029D1A8  38 03 00 01 */	addi r0, r3, 1
/* 802D3BEC 0029D1AC  90 0D B5 40 */	stw r0, lbl_806676C0@sda21(r13)
/* 802D3BF0 0029D1B0  40 82 00 28 */	bne .L_802D3C18
/* 802D3BF4 0029D1B4  3C 60 AA AB */	lis r3, 0xAAAAAAAB@ha
/* 802D3BF8 0029D1B8  80 8D B5 40 */	lwz r4, lbl_806676C0@sda21(r13)
/* 802D3BFC 0029D1BC  38 03 AA AB */	addi r0, r3, 0xAAAAAAAB@l
/* 802D3C00 0029D1C0  7C 00 20 16 */	mulhwu r0, r0, r4
/* 802D3C04 0029D1C4  54 00 F8 7E */	srwi r0, r0, 1
/* 802D3C08 0029D1C8  1C 00 00 03 */	mulli r0, r0, 3
/* 802D3C0C 0029D1CC  7C 00 20 50 */	subf r0, r0, r4
/* 802D3C10 0029D1D0  90 0D B5 40 */	stw r0, lbl_806676C0@sda21(r13)
/* 802D3C14 0029D1D4  48 00 00 24 */	b .L_802D3C38
.L_802D3C18:
/* 802D3C18 0029D1D8  80 0D B5 40 */	lwz r0, lbl_806676C0@sda21(r13)
/* 802D3C1C 0029D1DC  38 80 01 80 */	li r4, 0x180
/* 802D3C20 0029D1E0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 802D3C24 0029D1E4  90 0D B5 40 */	stw r0, lbl_806676C0@sda21(r13)
/* 802D3C28 0029D1E8  80 0D B5 40 */	lwz r0, lbl_806676C0@sda21(r13)
/* 802D3C2C 0029D1EC  1C 00 01 80 */	mulli r0, r0, 0x180
/* 802D3C30 0029D1F0  7C 7D 02 14 */	add r3, r29, r0
/* 802D3C34 0029D1F4  4B FF D4 BD */	bl AIInitDMA
.L_802D3C38:
/* 802D3C38 0029D1F8  48 08 8D 29 */	bl OSGetTime
/* 802D3C3C 0029D1FC  3B BF 00 00 */	addi r29, r31, 0
/* 802D3C40 0029D200  90 9D 00 2C */	stw r4, 0x2c(r29)
/* 802D3C44 0029D204  90 7D 00 28 */	stw r3, 0x28(r29)
/* 802D3C48 0029D208  48 00 0B 19 */	bl __AXGetNumVoices
/* 802D3C4C 0029D20C  90 7D 00 30 */	stw r3, 0x30(r29)
/* 802D3C50 0029D210  48 00 1A 81 */	bl __AXGetCurrentProfile
/* 802D3C54 0029D214  2C 03 00 00 */	cmpwi r3, 0
/* 802D3C58 0029D218  41 82 00 58 */	beq .L_802D3CB0
/* 802D3C5C 0029D21C  38 00 00 07 */	li r0, 7
/* 802D3C60 0029D220  7C 09 03 A6 */	mtctr r0
.L_802D3C64:
/* 802D3C64 0029D224  88 1D 00 00 */	lbz r0, 0(r29)
/* 802D3C68 0029D228  98 03 00 00 */	stb r0, 0(r3)
/* 802D3C6C 0029D22C  88 1D 00 01 */	lbz r0, 1(r29)
/* 802D3C70 0029D230  98 03 00 01 */	stb r0, 1(r3)
/* 802D3C74 0029D234  88 1D 00 02 */	lbz r0, 2(r29)
/* 802D3C78 0029D238  98 03 00 02 */	stb r0, 2(r3)
/* 802D3C7C 0029D23C  88 1D 00 03 */	lbz r0, 3(r29)
/* 802D3C80 0029D240  98 03 00 03 */	stb r0, 3(r3)
/* 802D3C84 0029D244  88 1D 00 04 */	lbz r0, 4(r29)
/* 802D3C88 0029D248  98 03 00 04 */	stb r0, 4(r3)
/* 802D3C8C 0029D24C  88 1D 00 05 */	lbz r0, 5(r29)
/* 802D3C90 0029D250  98 03 00 05 */	stb r0, 5(r3)
/* 802D3C94 0029D254  88 1D 00 06 */	lbz r0, 6(r29)
/* 802D3C98 0029D258  98 03 00 06 */	stb r0, 6(r3)
/* 802D3C9C 0029D25C  88 1D 00 07 */	lbz r0, 7(r29)
/* 802D3CA0 0029D260  3B BD 00 08 */	addi r29, r29, 8
/* 802D3CA4 0029D264  98 03 00 07 */	stb r0, 7(r3)
/* 802D3CA8 0029D268  38 63 00 08 */	addi r3, r3, 8
/* 802D3CAC 0029D26C  42 00 FF B8 */	bdnz .L_802D3C64
.L_802D3CB0:
/* 802D3CB0 0029D270  7F C3 F3 78 */	mr r3, r30
/* 802D3CB4 0029D274  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802D3CB8 0029D278  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802D3CBC 0029D27C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802D3CC0 0029D280  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D3CC4 0029D284  7C 08 03 A6 */	mtlr r0
/* 802D3CC8 0029D288  38 21 00 30 */	addi r1, r1, 0x30
/* 802D3CCC 0029D28C  4E 80 00 20 */	blr
.endfn __AXOutNewFrame

.balign 16, 0
.fn __AXOutAiCallback, global
/* 802D3CD0 0029D290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D3CD4 0029D294  7C 08 02 A6 */	mflr r0
/* 802D3CD8 0029D298  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3CDC 0029D29C  80 0D B5 2C */	lwz r0, lbl_806676AC@sda21(r13)
/* 802D3CE0 0029D2A0  2C 00 00 01 */	cmpwi r0, 1
/* 802D3CE4 0029D2A4  41 82 00 8C */	beq .L_802D3D70
/* 802D3CE8 0029D2A8  80 0D B5 38 */	lwz r0, lbl_806676B8@sda21(r13)
/* 802D3CEC 0029D2AC  28 00 00 01 */	cmplwi r0, 1
/* 802D3CF0 0029D2B0  40 82 00 14 */	bne .L_802D3D04
/* 802D3CF4 0029D2B4  38 00 00 00 */	li r0, 0
/* 802D3CF8 0029D2B8  90 0D B5 38 */	stw r0, lbl_806676B8@sda21(r13)
/* 802D3CFC 0029D2BC  4B FF FD 75 */	bl __AXOutNewFrame
/* 802D3D00 0029D2C0  48 00 00 18 */	b .L_802D3D18
.L_802D3D04:
/* 802D3D04 0029D2C4  38 00 00 02 */	li r0, 2
/* 802D3D08 0029D2C8  3C 60 80 58 */	lis r3, lbl_80581920@ha
/* 802D3D0C 0029D2CC  90 0D B5 38 */	stw r0, lbl_806676B8@sda21(r13)
/* 802D3D10 0029D2D0  38 63 19 20 */	addi r3, r3, lbl_80581920@l
/* 802D3D14 0029D2D4  48 03 56 DD */	bl DSPAssertTask
.L_802D3D18:
/* 802D3D18 0029D2D8  80 0D B5 18 */	lwz r0, lbl_80667698@sda21(r13)
/* 802D3D1C 0029D2DC  28 00 00 01 */	cmplwi r0, 1
/* 802D3D20 0029D2E0  40 82 00 50 */	bne .L_802D3D70
/* 802D3D24 0029D2E4  80 0D B5 3C */	lwz r0, lbl_806676BC@sda21(r13)
/* 802D3D28 0029D2E8  3C 60 80 58 */	lis r3, lbl_805814A0@ha
/* 802D3D2C 0029D2EC  38 63 14 A0 */	addi r3, r3, lbl_805814A0@l
/* 802D3D30 0029D2F0  38 80 01 80 */	li r4, 0x180
/* 802D3D34 0029D2F4  1C 00 01 80 */	mulli r0, r0, 0x180
/* 802D3D38 0029D2F8  7C 63 02 14 */	add r3, r3, r0
/* 802D3D3C 0029D2FC  4B FF D3 B5 */	bl AIInitDMA
/* 802D3D40 0029D300  80 8D B5 3C */	lwz r4, lbl_806676BC@sda21(r13)
/* 802D3D44 0029D304  3C 60 AA AB */	lis r3, 0xAAAAAAAB@ha
/* 802D3D48 0029D308  38 63 AA AB */	addi r3, r3, 0xAAAAAAAB@l
/* 802D3D4C 0029D30C  80 0D B5 40 */	lwz r0, lbl_806676C0@sda21(r13)
/* 802D3D50 0029D310  38 84 00 01 */	addi r4, r4, 1
/* 802D3D54 0029D314  7C 63 20 16 */	mulhwu r3, r3, r4
/* 802D3D58 0029D318  54 63 F8 7E */	srwi r3, r3, 1
/* 802D3D5C 0029D31C  1C 63 00 03 */	mulli r3, r3, 3
/* 802D3D60 0029D320  7C 83 20 50 */	subf r4, r3, r4
/* 802D3D64 0029D324  7C 04 00 40 */	cmplw r4, r0
/* 802D3D68 0029D328  41 82 00 08 */	beq .L_802D3D70
/* 802D3D6C 0029D32C  90 8D B5 3C */	stw r4, lbl_806676BC@sda21(r13)
.L_802D3D70:
/* 802D3D70 0029D330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3D74 0029D334  7C 08 03 A6 */	mtlr r0
/* 802D3D78 0029D338  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3D7C 0029D33C  4E 80 00 20 */	blr
.endfn __AXOutAiCallback

.balign 16, 0
.fn __AXDSPInitCallback, global
/* 802D3D80 0029D340  38 00 00 01 */	li r0, 1
/* 802D3D84 0029D344  90 0D B5 30 */	stw r0, lbl_806676B0@sda21(r13)
/* 802D3D88 0029D348  4E 80 00 20 */	blr 
.endfn __AXDSPInitCallback

.balign 16, 0
.fn __AXDSPResumeCallback, global
/* 802D3D90 0029D350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D3D94 0029D354  7C 08 02 A6 */	mflr r0
/* 802D3D98 0029D358  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3D9C 0029D35C  80 0D B5 38 */	lwz r0, lbl_806676B8@sda21(r13)
/* 802D3DA0 0029D360  28 00 00 02 */	cmplwi r0, 2
/* 802D3DA4 0029D364  40 82 00 28 */	bne .L_802D3DCC
/* 802D3DA8 0029D368  38 00 00 00 */	li r0, 0
/* 802D3DAC 0029D36C  90 0D B5 38 */	stw r0, lbl_806676B8@sda21(r13)
/* 802D3DB0 0029D370  4B FF FC C1 */	bl __AXOutNewFrame
/* 802D3DB4 0029D374  81 8D B5 08 */	lwz r12, lbl_80667688@sda21(r13)
/* 802D3DB8 0029D378  2C 0C 00 00 */	cmpwi r12, 0
/* 802D3DBC 0029D37C  41 82 00 18 */	beq .L_802D3DD4
/* 802D3DC0 0029D380  7D 89 03 A6 */	mtctr r12
/* 802D3DC4 0029D384  4E 80 04 21 */	bctrl 
/* 802D3DC8 0029D388  48 00 00 0C */	b .L_802D3DD4
.L_802D3DCC:
/* 802D3DCC 0029D38C  38 00 00 01 */	li r0, 1
/* 802D3DD0 0029D390  90 0D B5 38 */	stw r0, lbl_806676B8@sda21(r13)
.L_802D3DD4:
/* 802D3DD4 0029D394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3DD8 0029D398  7C 08 03 A6 */	mtlr r0
/* 802D3DDC 0029D39C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3DE0 0029D3A0  4E 80 00 20 */	blr 
.endfn __AXDSPResumeCallback

.balign 16, 0
.fn __AXDSPDoneCallback, global
/* 802D3DF0 0029D3B0  38 00 00 01 */	li r0, 1
/* 802D3DF4 0029D3B4  90 0D B5 2C */	stw r0, lbl_806676AC@sda21(r13)
/* 802D3DF8 0029D3B8  38 6D B5 20 */	addi r3, r13, lbl_806676A0@sda21
/* 802D3DFC 0029D3BC  48 08 89 64 */	b OSWakeupThread
.endfn __AXDSPDoneCallback

.balign 16, 0
.fn __AXDSPRequestCallback, global
/* 802D3E00 0029D3C0  4E 80 00 20 */	blr 
.endfn __AXDSPRequestCallback

.balign 16, 0
.fn __AXOutInitDSP, global
/* 802D3E10 0029D3D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D3E14 0029D3D4  7C 08 02 A6 */	mflr r0
/* 802D3E18 0029D3D8  3D 60 80 58 */	lis r11, lbl_80581980@ha
/* 802D3E1C 0029D3DC  3C E0 80 2D */	lis r7, __AXDSPInitCallback@ha
/* 802D3E20 0029D3E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3E24 0029D3E4  3C C0 80 2D */	lis r6, __AXDSPResumeCallback@ha
/* 802D3E28 0029D3E8  3C A0 80 2D */	lis r5, __AXDSPDoneCallback@ha
/* 802D3E2C 0029D3EC  3C 80 80 2D */	lis r4, __AXDSPRequestCallback@ha
/* 802D3E30 0029D3F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D3E34 0029D3F4  3F E0 80 58 */	lis r31, lbl_80581920@ha
/* 802D3E38 0029D3F8  3B FF 19 20 */	addi r31, r31, lbl_80581920@l
/* 802D3E3C 0029D3FC  39 80 00 00 */	li r12, 0
/* 802D3E40 0029D400  93 C1 00 08 */	stw r30, 8(r1)
/* 802D3E44 0029D404  3F C0 80 54 */	lis r30, lbl_80541120@ha
/* 802D3E48 0029D408  3B DE 11 20 */	addi r30, r30, lbl_80541120@l
/* 802D3E4C 0029D40C  39 6B 19 80 */	addi r11, r11, lbl_80581980@l
/* 802D3E50 0029D410  A0 6D 97 3C */	lhz r3, lbl_806658BC@sda21(r13)
/* 802D3E54 0029D414  38 E7 3D 80 */	addi r7, r7, __AXDSPInitCallback@l
/* 802D3E58 0029D418  A1 0D 97 38 */	lhz r8, lbl_806658B8@sda21(r13)
/* 802D3E5C 0029D41C  38 C6 3D 90 */	addi r6, r6, __AXDSPResumeCallback@l
/* 802D3E60 0029D420  A0 0D 97 3A */	lhz r0, lbl_806658BA@sda21(r13)
/* 802D3E64 0029D424  38 A5 3D F0 */	addi r5, r5, __AXDSPDoneCallback@l
/* 802D3E68 0029D428  91 9F 00 04 */	stw r12, 4(r31)
/* 802D3E6C 0029D42C  38 84 3E 00 */	addi r4, r4, __AXDSPRequestCallback@l
/* 802D3E70 0029D430  39 40 00 40 */	li r10, 0x40
/* 802D3E74 0029D434  39 20 0C D2 */	li r9, 0xcd2
/* 802D3E78 0029D438  91 8D B5 30 */	stw r12, lbl_806676B0@sda21(r13)
/* 802D3E7C 0029D43C  90 7F 00 10 */	stw r3, 0x10(r31)
/* 802D3E80 0029D440  38 6D B5 20 */	addi r3, r13, lbl_806676A0@sda21
/* 802D3E84 0029D444  93 DF 00 0C */	stw r30, 0xc(r31)
/* 802D3E88 0029D448  91 9F 00 14 */	stw r12, 0x14(r31)
/* 802D3E8C 0029D44C  91 7F 00 18 */	stw r11, 0x18(r31)
/* 802D3E90 0029D450  91 5F 00 1C */	stw r10, 0x1c(r31)
/* 802D3E94 0029D454  91 3F 00 20 */	stw r9, 0x20(r31)
/* 802D3E98 0029D458  B1 1F 00 24 */	sth r8, 0x24(r31)
/* 802D3E9C 0029D45C  B0 1F 00 26 */	sth r0, 0x26(r31)
/* 802D3EA0 0029D460  90 FF 00 28 */	stw r7, 0x28(r31)
/* 802D3EA4 0029D464  90 DF 00 2C */	stw r6, 0x2c(r31)
/* 802D3EA8 0029D468  90 BF 00 30 */	stw r5, 0x30(r31)
/* 802D3EAC 0029D46C  90 9F 00 34 */	stw r4, 0x34(r31)
/* 802D3EB0 0029D470  91 8D B5 2C */	stw r12, lbl_806676AC@sda21(r13)
/* 802D3EB4 0029D474  48 08 77 1D */	bl OSInitThreadQueue
/* 802D3EB8 0029D478  48 03 54 79 */	bl DSPCheckInit
/* 802D3EBC 0029D47C  2C 03 00 00 */	cmpwi r3, 0
/* 802D3EC0 0029D480  40 82 00 08 */	bne .L_802D3EC8
/* 802D3EC4 0029D484  48 03 53 AD */	bl DSPInit
.L_802D3EC8:
/* 802D3EC8 0029D488  3C 60 80 58 */	lis r3, lbl_80581920@ha
/* 802D3ECC 0029D48C  38 63 19 20 */	addi r3, r3, lbl_80581920@l
/* 802D3ED0 0029D490  48 03 54 71 */	bl DSPAddTask
/* 802D3ED4 0029D494  60 00 00 00 */	nop 
.L_802D3ED8:
/* 802D3ED8 0029D498  80 0D B5 30 */	lwz r0, lbl_806676B0@sda21(r13)
/* 802D3EDC 0029D49C  2C 00 00 00 */	cmpwi r0, 0
/* 802D3EE0 0029D4A0  41 82 FF F8 */	beq .L_802D3ED8
/* 802D3EE4 0029D4A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3EE8 0029D4A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D3EEC 0029D4AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D3EF0 0029D4B0  7C 08 03 A6 */	mtlr r0
/* 802D3EF4 0029D4B4  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3EF8 0029D4B8  4E 80 00 20 */	blr 
.endfn __AXOutInitDSP

.balign 16, 0
.fn __AXOutInit, global
/* 802D3F00 0029D4C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D3F04 0029D4C4  7C 08 02 A6 */	mflr r0
/* 802D3F08 0029D4C8  38 80 00 00 */	li r4, 0
/* 802D3F0C 0029D4CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D3F10 0029D4D0  38 00 00 20 */	li r0, 0x20
/* 802D3F14 0029D4D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D3F18 0029D4D8  3F E0 80 58 */	lis r31, lbl_80580BC0@ha
/* 802D3F1C 0029D4DC  3B FF 0B C0 */	addi r31, r31, lbl_80580BC0@l
/* 802D3F20 0029D4E0  90 8D B5 40 */	stw r4, lbl_806676C0@sda21(r13)
/* 802D3F24 0029D4E4  38 BF 08 E0 */	addi r5, r31, 0x8e0
/* 802D3F28 0029D4E8  90 8D B5 3C */	stw r4, lbl_806676BC@sda21(r13)
/* 802D3F2C 0029D4EC  90 6D B5 18 */	stw r3, lbl_80667698@sda21(r13)
/* 802D3F30 0029D4F0  90 8D B5 28 */	stw r4, lbl_806676A8@sda21(r13)
/* 802D3F34 0029D4F4  7C 09 03 A6 */	mtctr r0
.L_802D3F38:
/* 802D3F38 0029D4F8  90 85 00 00 */	stw r4, 0(r5)
/* 802D3F3C 0029D4FC  90 85 00 04 */	stw r4, 4(r5)
/* 802D3F40 0029D500  90 85 00 08 */	stw r4, 8(r5)
/* 802D3F44 0029D504  90 85 00 0C */	stw r4, 0xc(r5)
/* 802D3F48 0029D508  90 85 00 10 */	stw r4, 0x10(r5)
/* 802D3F4C 0029D50C  90 85 00 14 */	stw r4, 0x14(r5)
/* 802D3F50 0029D510  90 85 00 18 */	stw r4, 0x18(r5)
/* 802D3F54 0029D514  90 85 00 1C */	stw r4, 0x1c(r5)
/* 802D3F58 0029D518  90 85 00 20 */	stw r4, 0x20(r5)
/* 802D3F5C 0029D51C  38 A5 00 24 */	addi r5, r5, 0x24
/* 802D3F60 0029D520  42 00 FF D8 */	bdnz .L_802D3F38
/* 802D3F64 0029D524  38 7F 08 E0 */	addi r3, r31, 0x8e0
/* 802D3F68 0029D528  38 80 04 80 */	li r4, 0x480
/* 802D3F6C 0029D52C  48 08 00 45 */	bl DCFlushRange
/* 802D3F70 0029D530  38 00 00 18 */	li r0, 0x18
/* 802D3F74 0029D534  38 9F 05 E0 */	addi r4, r31, 0x5e0
/* 802D3F78 0029D538  38 60 00 00 */	li r3, 0
/* 802D3F7C 0029D53C  7C 09 03 A6 */	mtctr r0
.L_802D3F80:
/* 802D3F80 0029D540  90 64 00 00 */	stw r3, 0(r4)
/* 802D3F84 0029D544  90 64 00 04 */	stw r3, 4(r4)
/* 802D3F88 0029D548  90 64 00 08 */	stw r3, 8(r4)
/* 802D3F8C 0029D54C  90 64 00 0C */	stw r3, 0xc(r4)
/* 802D3F90 0029D550  90 64 00 10 */	stw r3, 0x10(r4)
/* 802D3F94 0029D554  90 64 00 14 */	stw r3, 0x14(r4)
/* 802D3F98 0029D558  90 64 00 18 */	stw r3, 0x18(r4)
/* 802D3F9C 0029D55C  90 64 00 1C */	stw r3, 0x1c(r4)
/* 802D3FA0 0029D560  38 84 00 20 */	addi r4, r4, 0x20
/* 802D3FA4 0029D564  42 00 FF DC */	bdnz .L_802D3F80
/* 802D3FA8 0029D568  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 802D3FAC 0029D56C  38 80 03 00 */	li r4, 0x300
/* 802D3FB0 0029D570  48 08 00 01 */	bl DCFlushRange
/* 802D3FB4 0029D574  38 00 00 24 */	li r0, 0x24
/* 802D3FB8 0029D578  38 9F 00 40 */	addi r4, r31, 0x40
/* 802D3FBC 0029D57C  38 60 00 00 */	li r3, 0
/* 802D3FC0 0029D580  7C 09 03 A6 */	mtctr r0
.L_802D3FC4:
/* 802D3FC4 0029D584  90 64 00 00 */	stw r3, 0(r4)
/* 802D3FC8 0029D588  90 64 00 04 */	stw r3, 4(r4)
/* 802D3FCC 0029D58C  90 64 00 08 */	stw r3, 8(r4)
/* 802D3FD0 0029D590  90 64 00 0C */	stw r3, 0xc(r4)
/* 802D3FD4 0029D594  90 64 00 10 */	stw r3, 0x10(r4)
/* 802D3FD8 0029D598  90 64 00 14 */	stw r3, 0x14(r4)
/* 802D3FDC 0029D59C  90 64 00 18 */	stw r3, 0x18(r4)
/* 802D3FE0 0029D5A0  90 64 00 1C */	stw r3, 0x1c(r4)
/* 802D3FE4 0029D5A4  90 64 00 20 */	stw r3, 0x20(r4)
/* 802D3FE8 0029D5A8  90 64 00 24 */	stw r3, 0x24(r4)
/* 802D3FEC 0029D5AC  38 84 00 28 */	addi r4, r4, 0x28
/* 802D3FF0 0029D5B0  42 00 FF D4 */	bdnz .L_802D3FC4
/* 802D3FF4 0029D5B4  38 7F 00 40 */	addi r3, r31, 0x40
/* 802D3FF8 0029D5B8  38 80 05 A0 */	li r4, 0x5a0
/* 802D3FFC 0029D5BC  48 07 FF B5 */	bl DCFlushRange
/* 802D4000 0029D5C0  4B FF FE 11 */	bl __AXOutInitDSP
/* 802D4004 0029D5C4  3C 60 80 2D */	lis r3, __AXOutAiCallback@ha
/* 802D4008 0029D5C8  38 63 3C D0 */	addi r3, r3, __AXOutAiCallback@l
/* 802D400C 0029D5CC  4B FF D0 95 */	bl AIRegisterDMACallback
/* 802D4010 0029D5D0  80 0D B5 18 */	lwz r0, lbl_80667698@sda21(r13)
/* 802D4014 0029D5D4  38 FF 00 40 */	addi r7, r31, 0x40
/* 802D4018 0029D5D8  38 80 00 12 */	li r4, 0x12
/* 802D401C 0029D5DC  38 60 00 B4 */	li r3, 0xb4
/* 802D4020 0029D5E0  28 00 00 01 */	cmplwi r0, 1
/* 802D4024 0029D5E4  38 C7 01 68 */	addi r6, r7, 0x168
/* 802D4028 0029D5E8  38 A7 02 D0 */	addi r5, r7, 0x2d0
/* 802D402C 0029D5EC  38 07 04 38 */	addi r0, r7, 0x438
/* 802D4030 0029D5F0  90 E1 00 08 */	stw r7, 8(r1)
/* 802D4034 0029D5F4  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802D4038 0029D5F8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802D403C 0029D5FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D4040 0029D600  90 8D B5 0C */	stw r4, lbl_8066768C@sda21(r13)
/* 802D4044 0029D604  90 8D B5 10 */	stw r4, lbl_80667690@sda21(r13)
/* 802D4048 0029D608  90 6D B5 14 */	stw r3, lbl_80667694@sda21(r13)
/* 802D404C 0029D60C  40 82 00 1C */	bne .L_802D4068
/* 802D4050 0029D610  38 9F 08 E0 */	addi r4, r31, 0x8e0
/* 802D4054 0029D614  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 802D4058 0029D618  38 84 03 00 */	addi r4, r4, 0x300
/* 802D405C 0029D61C  38 A1 00 08 */	addi r5, r1, 8
/* 802D4060 0029D620  4B FF EF 51 */	bl __AXNextFrame
/* 802D4064 0029D624  48 00 00 18 */	b .L_802D407C
.L_802D4068:
/* 802D4068 0029D628  38 9F 08 E0 */	addi r4, r31, 0x8e0
/* 802D406C 0029D62C  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 802D4070 0029D630  38 84 01 80 */	addi r4, r4, 0x180
/* 802D4074 0029D634  38 A1 00 08 */	addi r5, r1, 8
/* 802D4078 0029D638  4B FF EF 39 */	bl __AXNextFrame
.L_802D407C:
/* 802D407C 0029D63C  80 0D B5 18 */	lwz r0, lbl_80667698@sda21(r13)
/* 802D4080 0029D640  38 80 00 01 */	li r4, 1
/* 802D4084 0029D644  38 60 00 00 */	li r3, 0
/* 802D4088 0029D648  90 8D B5 38 */	stw r4, lbl_806676B8@sda21(r13)
/* 802D408C 0029D64C  28 00 00 01 */	cmplwi r0, 1
/* 802D4090 0029D650  90 6D B5 34 */	stw r3, lbl_806676B4@sda21(r13)
/* 802D4094 0029D654  40 82 00 2C */	bne .L_802D40C0
/* 802D4098 0029D658  80 6D B5 3C */	lwz r3, lbl_806676BC@sda21(r13)
/* 802D409C 0029D65C  38 1F 08 E0 */	addi r0, r31, 0x8e0
/* 802D40A0 0029D660  38 80 01 80 */	li r4, 0x180
/* 802D40A4 0029D664  1C 63 01 80 */	mulli r3, r3, 0x180
/* 802D40A8 0029D668  7C 60 1A 14 */	add r3, r0, r3
/* 802D40AC 0029D66C  4B FF D0 45 */	bl AIInitDMA
/* 802D40B0 0029D670  80 6D B5 3C */	lwz r3, lbl_806676BC@sda21(r13)
/* 802D40B4 0029D674  38 03 00 01 */	addi r0, r3, 1
/* 802D40B8 0029D678  90 0D B5 3C */	stw r0, lbl_806676BC@sda21(r13)
/* 802D40BC 0029D67C  48 00 00 1C */	b .L_802D40D8
.L_802D40C0:
/* 802D40C0 0029D680  80 6D B5 40 */	lwz r3, lbl_806676C0@sda21(r13)
/* 802D40C4 0029D684  38 1F 08 E0 */	addi r0, r31, 0x8e0
/* 802D40C8 0029D688  38 80 01 80 */	li r4, 0x180
/* 802D40CC 0029D68C  1C 63 01 80 */	mulli r3, r3, 0x180
/* 802D40D0 0029D690  7C 60 1A 14 */	add r3, r0, r3
/* 802D40D4 0029D694  4B FF D0 1D */	bl AIInitDMA
.L_802D40D8:
/* 802D40D8 0029D698  4B FF D0 99 */	bl AIStartDMA
/* 802D40DC 0029D69C  38 00 00 00 */	li r0, 0
/* 802D40E0 0029D6A0  90 0D B5 08 */	stw r0, lbl_80667688@sda21(r13)
/* 802D40E4 0029D6A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D40E8 0029D6A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D40EC 0029D6AC  7C 08 03 A6 */	mtlr r0
/* 802D40F0 0029D6B0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D40F4 0029D6B4  4E 80 00 20 */	blr 
.endfn __AXOutInit

.balign 16, 0
.fn __AXOutQuit, global
/* 802D4100 0029D6C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D4104 0029D6C4  7C 08 02 A6 */	mflr r0
/* 802D4108 0029D6C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D410C 0029D6CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4110 0029D6D0  93 C1 00 08 */	stw r30, 8(r1)
/* 802D4114 0029D6D4  48 08 48 9D */	bl OSDisableInterrupts
/* 802D4118 0029D6D8  3B E0 00 00 */	li r31, 0
/* 802D411C 0029D6DC  93 ED B5 34 */	stw r31, lbl_806676B4@sda21(r13)
/* 802D4120 0029D6E0  3C 80 80 58 */	lis r4, lbl_80581920@ha
/* 802D4124 0029D6E4  7C 7E 1B 78 */	mr r30, r3
/* 802D4128 0029D6E8  38 64 19 20 */	addi r3, r4, lbl_80581920@l
/* 802D412C 0029D6EC  48 03 52 85 */	bl DSPCancelTask
/* 802D4130 0029D6F0  38 6D B5 20 */	addi r3, r13, lbl_806676A0@sda21
/* 802D4134 0029D6F4  48 08 85 3D */	bl OSSleepThread
/* 802D4138 0029D6F8  38 60 00 00 */	li r3, 0
/* 802D413C 0029D6FC  4B FF CF 65 */	bl AIRegisterDMACallback
/* 802D4140 0029D700  4B FF D0 51 */	bl AIStopDMA
/* 802D4144 0029D704  93 ED B5 08 */	stw r31, lbl_80667688@sda21(r13)
/* 802D4148 0029D708  7F C3 F3 78 */	mr r3, r30
/* 802D414C 0029D70C  48 08 48 A5 */	bl OSRestoreInterrupts
/* 802D4150 0029D710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D4154 0029D714  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D4158 0029D718  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D415C 0029D71C  7C 08 03 A6 */	mtlr r0
/* 802D4160 0029D720  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4164 0029D724  4E 80 00 20 */	blr 
.endfn __AXOutQuit

.balign 16, 0
.fn AXRegisterCallback, global
/* 802D4170 0029D730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D4174 0029D734  7C 08 02 A6 */	mflr r0
/* 802D4178 0029D738  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D417C 0029D73C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4180 0029D740  93 C1 00 08 */	stw r30, 8(r1)
/* 802D4184 0029D744  7C 7E 1B 78 */	mr r30, r3
/* 802D4188 0029D748  83 ED B5 34 */	lwz r31, lbl_806676B4@sda21(r13)
/* 802D418C 0029D74C  48 08 48 25 */	bl OSDisableInterrupts
/* 802D4190 0029D750  93 CD B5 34 */	stw r30, lbl_806676B4@sda21(r13)
/* 802D4194 0029D754  48 08 48 5D */	bl OSRestoreInterrupts
/* 802D4198 0029D758  7F E3 FB 78 */	mr r3, r31
/* 802D419C 0029D75C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D41A0 0029D760  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D41A4 0029D764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D41A8 0029D768  7C 08 03 A6 */	mtlr r0
/* 802D41AC 0029D76C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D41B0 0029D770  4E 80 00 20 */	blr 
.endfn AXRegisterCallback

.balign 16, 0
.fn AXRmtGetSamplesLeft, global
/* 802D41C0 0029D780  80 6D B5 10 */	lwz r3, lbl_80667690@sda21(r13)
/* 802D41C4 0029D784  34 63 FF DC */	addic. r3, r3, -36
/* 802D41C8 0029D788  40 80 00 0C */	bge .L_802D41D4
/* 802D41CC 0029D78C  80 0D B5 14 */	lwz r0, lbl_80667694@sda21(r13)
/* 802D41D0 0029D790  7C 63 02 14 */	add r3, r3, r0
.L_802D41D4:
/* 802D41D4 0029D794  80 0D B5 0C */	lwz r0, lbl_8066768C@sda21(r13)
/* 802D41D8 0029D798  7C 60 18 51 */	subf. r3, r0, r3
/* 802D41DC 0029D79C  4C 80 00 20 */	bgelr 
/* 802D41E0 0029D7A0  80 0D B5 14 */	lwz r0, lbl_80667694@sda21(r13)
/* 802D41E4 0029D7A4  7C 63 02 14 */	add r3, r3, r0
/* 802D41E8 0029D7A8  4E 80 00 20 */	blr 
.endfn AXRmtGetSamplesLeft

.balign 16, 0
.fn AXRmtGetSamples, global
/* 802D41F0 0029D7B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D41F4 0029D7B4  7C 08 02 A6 */	mflr r0
/* 802D41F8 0029D7B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D41FC 0029D7BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4200 0029D7C0  80 CD B5 10 */	lwz r6, lbl_80667690@sda21(r13)
/* 802D4204 0029D7C4  37 E6 FF DC */	addic. r31, r6, -36
/* 802D4208 0029D7C8  40 80 00 0C */	bge .L_802D4214
/* 802D420C 0029D7CC  80 0D B5 14 */	lwz r0, lbl_80667694@sda21(r13)
/* 802D4210 0029D7D0  7F FF 02 14 */	add r31, r31, r0
.L_802D4214:
/* 802D4214 0029D7D4  80 0D B5 0C */	lwz r0, lbl_8066768C@sda21(r13)
/* 802D4218 0029D7D8  7F E0 F8 51 */	subf. r31, r0, r31
/* 802D421C 0029D7DC  40 80 00 0C */	bge .L_802D4228
/* 802D4220 0029D7E0  80 0D B5 14 */	lwz r0, lbl_80667694@sda21(r13)
/* 802D4224 0029D7E4  7F FF 02 14 */	add r31, r31, r0
.L_802D4228:
/* 802D4228 0029D7E8  7C 05 F8 00 */	cmpw r5, r31
/* 802D422C 0029D7EC  40 81 00 08 */	ble .L_802D4234
/* 802D4230 0029D7F0  48 00 00 08 */	b .L_802D4238
.L_802D4234:
/* 802D4234 0029D7F4  7C BF 2B 78 */	mr r31, r5
.L_802D4238:
/* 802D4238 0029D7F8  1C 03 01 68 */	mulli r0, r3, 0x168
/* 802D423C 0029D7FC  3C A0 80 58 */	lis r5, lbl_80580C00@ha
/* 802D4240 0029D800  80 ED B5 0C */	lwz r7, lbl_8066768C@sda21(r13)
/* 802D4244 0029D804  38 A5 0C 00 */	addi r5, r5, lbl_80580C00@l
/* 802D4248 0029D808  7C A5 02 14 */	add r5, r5, r0
/* 802D424C 0029D80C  7F E9 03 A6 */	mtctr r31
/* 802D4250 0029D810  2C 1F 00 00 */	cmpwi r31, 0
/* 802D4254 0029D814  40 81 00 2C */	ble .L_802D4280
.L_802D4258:
/* 802D4258 0029D818  54 E6 08 3C */	slwi r6, r7, 1
/* 802D425C 0029D81C  38 E7 00 01 */	addi r7, r7, 1
/* 802D4260 0029D820  7C 06 2A AE */	lhax r0, r6, r5
/* 802D4264 0029D824  B0 04 00 00 */	sth r0, 0(r4)
/* 802D4268 0029D828  38 84 00 02 */	addi r4, r4, 2
/* 802D426C 0029D82C  80 0D B5 14 */	lwz r0, lbl_80667694@sda21(r13)
/* 802D4270 0029D830  7C 07 00 00 */	cmpw r7, r0
/* 802D4274 0029D834  41 80 00 08 */	blt .L_802D427C
/* 802D4278 0029D838  38 E0 00 00 */	li r7, 0
.L_802D427C:
/* 802D427C 0029D83C  42 00 FF DC */	bdnz .L_802D4258
.L_802D4280:
/* 802D4280 0029D840  1C A3 01 68 */	mulli r5, r3, 0x168
/* 802D4284 0029D844  80 0D B5 14 */	lwz r0, lbl_80667694@sda21(r13)
/* 802D4288 0029D848  3C 60 80 58 */	lis r3, lbl_80580C00@ha
/* 802D428C 0029D84C  54 04 08 3C */	slwi r4, r0, 1
/* 802D4290 0029D850  38 63 0C 00 */	addi r3, r3, lbl_80580C00@l
/* 802D4294 0029D854  7C 63 2A 14 */	add r3, r3, r5
/* 802D4298 0029D858  48 07 FC E9 */	bl DCInvalidateRange
/* 802D429C 0029D85C  7F E3 FB 78 */	mr r3, r31
/* 802D42A0 0029D860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D42A4 0029D864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D42A8 0029D868  7C 08 03 A6 */	mtlr r0
/* 802D42AC 0029D86C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D42B0 0029D870  4E 80 00 20 */	blr 
.endfn AXRmtGetSamples

.balign 16, 0
.fn AXRmtAdvancePtr, global
/* 802D42C0 0029D880  80 8D B5 10 */	lwz r4, lbl_80667690@sda21(r13)
/* 802D42C4 0029D884  34 84 FF DC */	addic. r4, r4, -36
/* 802D42C8 0029D888  40 80 00 0C */	bge .L_802D42D4
/* 802D42CC 0029D88C  80 0D B5 14 */	lwz r0, lbl_80667694@sda21(r13)
/* 802D42D0 0029D890  7C 84 02 14 */	add r4, r4, r0
.L_802D42D4:
/* 802D42D4 0029D894  80 0D B5 0C */	lwz r0, lbl_8066768C@sda21(r13)
/* 802D42D8 0029D898  7C 80 20 51 */	subf. r4, r0, r4
/* 802D42DC 0029D89C  40 80 00 0C */	bge .L_802D42E8
/* 802D42E0 0029D8A0  80 0D B5 14 */	lwz r0, lbl_80667694@sda21(r13)
/* 802D42E4 0029D8A4  7C 84 02 14 */	add r4, r4, r0
.L_802D42E8:
/* 802D42E8 0029D8A8  7C 03 20 00 */	cmpw r3, r4
/* 802D42EC 0029D8AC  40 81 00 08 */	ble .L_802D42F4
/* 802D42F0 0029D8B0  7C 83 23 78 */	mr r3, r4
.L_802D42F4:
/* 802D42F4 0029D8B4  80 0D B5 0C */	lwz r0, lbl_8066768C@sda21(r13)
/* 802D42F8 0029D8B8  80 8D B5 14 */	lwz r4, lbl_80667694@sda21(r13)
/* 802D42FC 0029D8BC  7C 00 1A 14 */	add r0, r0, r3
/* 802D4300 0029D8C0  90 0D B5 0C */	stw r0, lbl_8066768C@sda21(r13)
/* 802D4304 0029D8C4  7C 00 20 00 */	cmpw r0, r4
/* 802D4308 0029D8C8  4D 80 00 20 */	bltlr 
/* 802D430C 0029D8CC  7C 04 00 50 */	subf r0, r4, r0
/* 802D4310 0029D8D0  90 0D B5 0C */	stw r0, lbl_8066768C@sda21(r13)
/* 802D4314 0029D8D4  4E 80 00 20 */	blr
.endfn AXRmtAdvancePtr



.section .sdata, "wa"  # 0x80664180 - 0x80666600
.global lbl_806658B8
lbl_806658B8:
	.2byte 0x0010


.global lbl_806658BA
lbl_806658BA:
	.2byte 0x0037


.global lbl_806658BC
lbl_806658BC:
	.4byte 0x20000000

.section .bss, "wa"  # 0x80573C80 - 0x8066417B
.global lbl_80580BC0
lbl_80580BC0:
	.skip 0x40
.global lbl_80580C00
lbl_80580C00:
	.skip 0x8A0
.global lbl_805814A0
lbl_805814A0:
	.skip 0x480
.global lbl_80581920
lbl_80581920:
	.skip 0x60
.global lbl_80581980
lbl_80581980:
	.skip 0x40

.section .sbss, "wa"  # 0x80666600 - 0x8066836F
.global lbl_80667688
lbl_80667688:
	.skip 0x4
.global lbl_8066768C
lbl_8066768C:
	.skip 0x4
.global lbl_80667690
lbl_80667690:
	.skip 0x4
.global lbl_80667694
lbl_80667694:
	.skip 0x4
.global lbl_80667698
lbl_80667698:
	.skip 0x8
.global lbl_806676A0
lbl_806676A0:
	.skip 0x8
.global lbl_806676A8
lbl_806676A8:
	.skip 0x4
.global lbl_806676AC
lbl_806676AC:
	.skip 0x4
.global lbl_806676B0
lbl_806676B0:
	.skip 0x4
.global lbl_806676B4
lbl_806676B4:
	.skip 0x4
.global lbl_806676B8
lbl_806676B8:
	.skip 0x4
.global lbl_806676BC
lbl_806676BC:
	.skip 0x4
.global lbl_806676C0
lbl_806676C0:
	.skip 0x8