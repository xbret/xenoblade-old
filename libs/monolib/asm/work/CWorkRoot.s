.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CWorkRootThread, global
/* 80443B08 0040D0C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80443B0C 0040D0CC  7C 08 02 A6 */	mflr r0
/* 80443B10 0040D0D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80443B14 0040D0D4  38 00 00 00 */	li r0, 0
/* 80443B18 0040D0D8  BF C1 00 08 */	stmw r30, 8(r1)
/* 80443B1C 0040D0DC  90 0D BD 6C */	stw r0, lbl_80667EEC@sda21(r13)
/* 80443B20 0040D0E0  4B FF 23 51 */	bl initFastCast__2mlFv
/* 80443B24 0040D0E4  4B F2 11 7D */	bl VIInit
/* 80443B28 0040D0E8  3F E0 80 52 */	lis r31, CWorkRoot_strpool@ha
/* 80443B2C 0040D0EC  3B FF 60 5C */	addi r31, r31, CWorkRoot_strpool@l
/* 80443B30 0040D0F0  4B FF 3A 85 */	bl getHeapIndex__16WorkThreadSystemFv
/* 80443B34 0040D0F4  7C 64 1B 78 */	mr r4, r3
/* 80443B38 0040D0F8  38 60 02 08 */	li r3, 0x208
/* 80443B3C 0040D0FC  4B FF 0F 21 */	bl heap_malloc__3mtlFUli
/* 80443B40 0040D100  2C 03 00 00 */	cmpwi r3, 0
/* 80443B44 0040D104  7C 7E 1B 78 */	mr r30, r3
/* 80443B48 0040D108  41 82 00 50 */	beq .L_80443B98
/* 80443B4C 0040D10C  7F E4 FB 78 */	mr r4, r31
/* 80443B50 0040D110  38 A0 00 00 */	li r5, 0
/* 80443B54 0040D114  38 C0 00 20 */	li r6, 0x20
/* 80443B58 0040D118  4B FF 3A 65 */	bl __ct__11CWorkThreadFPCcP11CWorkThreadi
/* 80443B5C 0040D11C  3C 80 80 57 */	lis r4, "__vt__Q223@unnamed@CWorkRoot_cpp@15CWorkRootThread"@ha
/* 80443B60 0040D120  38 7E 01 C4 */	addi r3, r30, 0x1c4
/* 80443B64 0040D124  38 84 F1 B0 */	addi r4, r4, "__vt__Q223@unnamed@CWorkRoot_cpp@15CWorkRootThread"@l
/* 80443B68 0040D128  90 9E 00 00 */	stw r4, 0(r30)
/* 80443B6C 0040D12C  48 00 00 55 */	bl __ct__reslist_CWorkThread
/* 80443B70 0040D130  38 7E 01 E4 */	addi r3, r30, 0x1e4
/* 80443B74 0040D134  48 00 00 4D */	bl __ct__reslist_CWorkThread
/* 80443B78 0040D138  80 9E 00 54 */	lwz r4, 0x54(r30)
/* 80443B7C 0040D13C  38 7E 01 C4 */	addi r3, r30, 0x1c4
/* 80443B80 0040D140  38 A0 00 10 */	li r5, 0x10
/* 80443B84 0040D144  48 00 00 A9 */	bl func_80443C2C
/* 80443B88 0040D148  80 9E 00 54 */	lwz r4, 0x54(r30)
/* 80443B8C 0040D14C  38 7E 01 E4 */	addi r3, r30, 0x1e4
/* 80443B90 0040D150  38 A0 00 10 */	li r5, 0x10
/* 80443B94 0040D154  48 00 00 99 */	bl func_80443C2C
.L_80443B98:
/* 80443B98 0040D158  7F C3 F3 78 */	mr r3, r30
/* 80443B9C 0040D15C  38 80 00 00 */	li r4, 0
/* 80443BA0 0040D160  38 A0 00 00 */	li r5, 0
/* 80443BA4 0040D164  4B FF 50 35 */	bl func_80438BD8__11CWorkThreadFP11CWorkThreadUl
/* 80443BA8 0040D168  93 CD BD 68 */	stw r30, cDesktopPointer@sda21(r13)
/* 80443BAC 0040D16C  BB C1 00 08 */	lmw r30, 8(r1)
/* 80443BB0 0040D170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80443BB4 0040D174  7C 08 03 A6 */	mtlr r0
/* 80443BB8 0040D178  38 21 00 10 */	addi r1, r1, 0x10
/* 80443BBC 0040D17C  4E 80 00 20 */	blr 
.endfn __ct__CWorkRootThread

.fn __ct__reslist_CWorkThread, global
/* 80443BC0 0040D180  3C 80 80 57 */	lis r4, "__vt__29_reslist_base<P11CWorkThread>"@ha
/* 80443BC4 0040D184  38 00 00 00 */	li r0, 0
/* 80443BC8 0040D188  38 84 EA 4C */	addi r4, r4, "__vt__29_reslist_base<P11CWorkThread>"@l
/* 80443BCC 0040D18C  90 83 00 00 */	stw r4, 0(r3)
/* 80443BD0 0040D190  38 A3 00 08 */	addi r5, r3, 8
/* 80443BD4 0040D194  90 03 00 14 */	stw r0, 0x14(r3)
/* 80443BD8 0040D198  3C 80 80 57 */	lis r4, "__vt__23reslist<P11CWorkThread>"@ha
/* 80443BDC 0040D19C  38 84 EA 34 */	addi r4, r4, "__vt__23reslist<P11CWorkThread>"@l
/* 80443BE0 0040D1A0  90 03 00 18 */	stw r0, 0x18(r3)
/* 80443BE4 0040D1A4  98 03 00 1C */	stb r0, 0x1c(r3)
/* 80443BE8 0040D1A8  90 A3 00 04 */	stw r5, 4(r3)
/* 80443BEC 0040D1AC  90 A5 00 00 */	stw r5, 0(r5)
/* 80443BF0 0040D1B0  90 A5 00 04 */	stw r5, 4(r5)
/* 80443BF4 0040D1B4  90 83 00 00 */	stw r4, 0(r3)
/* 80443BF8 0040D1B8  4E 80 00 20 */	blr 
.endfn __ct__reslist_CWorkThread

.fn func_80443BFC, global
/* 80443BFC 0040D1BC  80 83 00 04 */	lwz r4, 4(r3)
/* 80443C00 0040D1C0  38 00 00 00 */	li r0, 0
/* 80443C04 0040D1C4  80 A4 00 00 */	lwz r5, 0(r4)
/* 80443C08 0040D1C8  48 00 00 10 */	b .L_80443C18
.L_80443C0C:
/* 80443C0C 0040D1CC  7C A4 2B 78 */	mr r4, r5
/* 80443C10 0040D1D0  80 A5 00 00 */	lwz r5, 0(r5)
/* 80443C14 0040D1D4  90 04 00 00 */	stw r0, 0(r4)
.L_80443C18:
/* 80443C18 0040D1D8  80 83 00 04 */	lwz r4, 4(r3)
/* 80443C1C 0040D1DC  7C 05 20 40 */	cmplw r5, r4
/* 80443C20 0040D1E0  40 82 FF EC */	bne .L_80443C0C
/* 80443C24 0040D1E4  90 84 00 00 */	stw r4, 0(r4)
/* 80443C28 0040D1E8  4E 80 00 20 */	blr 
.endfn func_80443BFC

.fn func_80443C2C, global
/* 80443C2C 0040D1EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80443C30 0040D1F0  7C 08 02 A6 */	mflr r0
/* 80443C34 0040D1F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80443C38 0040D1F8  BF C1 00 08 */	stmw r30, 8(r1)
/* 80443C3C 0040D1FC  7C 7E 1B 78 */	mr r30, r3
/* 80443C40 0040D200  1C 65 00 0C */	mulli r3, r5, 0xc
/* 80443C44 0040D204  7C BF 2B 78 */	mr r31, r5
/* 80443C48 0040D208  4B FF 0E 39 */	bl heap_malloc_array__3mtlFUli
/* 80443C4C 0040D20C  90 7E 00 14 */	stw r3, 0x14(r30)
/* 80443C50 0040D210  38 00 00 00 */	li r0, 0
/* 80443C54 0040D214  38 60 00 00 */	li r3, 0
/* 80443C58 0040D218  7F E9 03 A6 */	mtctr r31
/* 80443C5C 0040D21C  2C 1F 00 00 */	cmpwi r31, 0
/* 80443C60 0040D220  40 81 00 14 */	ble .L_80443C74
.L_80443C64:
/* 80443C64 0040D224  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80443C68 0040D228  7C 04 19 2E */	stwx r0, r4, r3
/* 80443C6C 0040D22C  38 63 00 0C */	addi r3, r3, 0xc
/* 80443C70 0040D230  42 00 FF F4 */	bdnz .L_80443C64
.L_80443C74:
/* 80443C74 0040D234  93 FE 00 18 */	stw r31, 0x18(r30)
/* 80443C78 0040D238  BB C1 00 08 */	lmw r30, 8(r1)
/* 80443C7C 0040D23C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80443C80 0040D240  7C 08 03 A6 */	mtlr r0
/* 80443C84 0040D244  38 21 00 10 */	addi r1, r1, 0x10
/* 80443C88 0040D248  4E 80 00 20 */	blr 
.endfn func_80443C2C

.fn func_80443C8C, global
/* 80443C8C 0040D24C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80443C90 0040D250  7C 08 02 A6 */	mflr r0
/* 80443C94 0040D254  38 60 00 00 */	li r3, 0
/* 80443C98 0040D258  90 01 00 14 */	stw r0, 0x14(r1)
/* 80443C9C 0040D25C  4B F2 0C 45 */	bl VISetPreRetraceCallback
/* 80443CA0 0040D260  80 6D BD 68 */	lwz r3, cDesktopPointer@sda21(r13)
/* 80443CA4 0040D264  2C 03 00 00 */	cmpwi r3, 0
/* 80443CA8 0040D268  41 82 00 24 */	beq .L_80443CCC
/* 80443CAC 0040D26C  41 82 00 18 */	beq .L_80443CC4
/* 80443CB0 0040D270  81 83 00 00 */	lwz r12, 0(r3)
/* 80443CB4 0040D274  38 80 00 01 */	li r4, 1
/* 80443CB8 0040D278  81 8C 00 08 */	lwz r12, 8(r12)
/* 80443CBC 0040D27C  7D 89 03 A6 */	mtctr r12
/* 80443CC0 0040D280  4E 80 04 21 */	bctrl 
.L_80443CC4:
/* 80443CC4 0040D284  38 00 00 00 */	li r0, 0
/* 80443CC8 0040D288  90 0D BD 68 */	stw r0, cDesktopPointer@sda21(r13)
.L_80443CCC:
/* 80443CCC 0040D28C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80443CD0 0040D290  7C 08 03 A6 */	mtlr r0
/* 80443CD4 0040D294  38 21 00 10 */	addi r1, r1, 0x10
/* 80443CD8 0040D298  4E 80 00 20 */	blr 
.endfn func_80443C8C

.fn __dt___unnamed_CWorkRoot_cpp_CWorkRootThread, global
/* 80443CDC 0040D29C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80443CE0 0040D2A0  7C 08 02 A6 */	mflr r0
/* 80443CE4 0040D2A4  2C 03 00 00 */	cmpwi r3, 0
/* 80443CE8 0040D2A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80443CEC 0040D2AC  BF C1 00 08 */	stmw r30, 8(r1)
/* 80443CF0 0040D2B0  7C 7E 1B 78 */	mr r30, r3
/* 80443CF4 0040D2B4  7C 9F 23 78 */	mr r31, r4
/* 80443CF8 0040D2B8  41 82 00 40 */	beq .L_80443D38
/* 80443CFC 0040D2BC  34 63 01 E4 */	addic. r3, r3, 0x1e4
/* 80443D00 0040D2C0  41 82 00 0C */	beq .L_80443D0C
/* 80443D04 0040D2C4  38 80 00 00 */	li r4, 0
/* 80443D08 0040D2C8  4B FF 3B FD */	bl __dt___reslist_base_CWorkThread
.L_80443D0C:
/* 80443D0C 0040D2CC  34 7E 01 C4 */	addic. r3, r30, 0x1c4
/* 80443D10 0040D2D0  41 82 00 0C */	beq .L_80443D1C
/* 80443D14 0040D2D4  38 80 00 00 */	li r4, 0
/* 80443D18 0040D2D8  4B FF 3B ED */	bl __dt___reslist_base_CWorkThread
.L_80443D1C:
/* 80443D1C 0040D2DC  7F C3 F3 78 */	mr r3, r30
/* 80443D20 0040D2E0  38 80 00 00 */	li r4, 0
/* 80443D24 0040D2E4  4B FF 3D A5 */	bl __dt__11CWorkThreadFv
/* 80443D28 0040D2E8  2C 1F 00 00 */	cmpwi r31, 0
/* 80443D2C 0040D2EC  40 81 00 0C */	ble .L_80443D38
/* 80443D30 0040D2F0  7F C3 F3 78 */	mr r3, r30
/* 80443D34 0040D2F4  4B FF 0E F9 */	bl __dl__FPv
.L_80443D38:
/* 80443D38 0040D2F8  7F C3 F3 78 */	mr r3, r30
/* 80443D3C 0040D2FC  BB C1 00 08 */	lmw r30, 8(r1)
/* 80443D40 0040D300  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80443D44 0040D304  7C 08 03 A6 */	mtlr r0
/* 80443D48 0040D308  38 21 00 10 */	addi r1, r1, 0x10
/* 80443D4C 0040D30C  4E 80 00 20 */	blr 
.endfn __dt___unnamed_CWorkRoot_cpp_CWorkRootThread

.fn func_80443D50, global
/* 80443D50 0040D310  2C 04 00 00 */	cmpwi r4, 0
/* 80443D54 0040D314  7C 60 1B 78 */	mr r0, r3
/* 80443D58 0040D318  41 82 00 10 */	beq .L_80443D68
/* 80443D5C 0040D31C  7C 83 23 78 */	mr r3, r4
/* 80443D60 0040D320  7C 04 03 78 */	mr r4, r0
/* 80443D64 0040D324  4B FF 40 44 */	b func_80437DA8
.L_80443D68:
/* 80443D68 0040D328  80 6D BD 68 */	lwz r3, cDesktopPointer@sda21(r13)
/* 80443D6C 0040D32C  2C 03 00 00 */	cmpwi r3, 0
/* 80443D70 0040D330  4D 82 00 20 */	beqlr 
/* 80443D74 0040D334  7C 04 03 78 */	mr r4, r0
/* 80443D78 0040D338  4B FF 40 30 */	b func_80437DA8
/* 80443D7C 0040D33C  4E 80 00 20 */	blr 
.endfn func_80443D50

.fn func_80443D80, global
/* 80443D80 0040D340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80443D84 0040D344  7C 08 02 A6 */	mflr r0
/* 80443D88 0040D348  90 01 00 14 */	stw r0, 0x14(r1)
/* 80443D8C 0040D34C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80443D90 0040D350  7C 7F 1B 78 */	mr r31, r3
/* 80443D94 0040D354  80 03 00 7C */	lwz r0, 0x7c(r3)
/* 80443D98 0040D358  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80443D9C 0040D35C  41 82 00 0C */	beq .L_80443DA8
/* 80443DA0 0040D360  38 00 00 01 */	li r0, 1
/* 80443DA4 0040D364  48 00 00 18 */	b .L_80443DBC
.L_80443DA8:
/* 80443DA8 0040D368  38 80 00 02 */	li r4, 2
/* 80443DAC 0040D36C  38 63 00 80 */	addi r3, r3, 0x80
/* 80443DB0 0040D370  48 00 00 55 */	bl func_80443E04
/* 80443DB4 0040D374  54 60 0F FE */	srwi r0, r3, 0x1f
/* 80443DB8 0040D378  68 00 00 01 */	xori r0, r0, 1
.L_80443DBC:
/* 80443DBC 0040D37C  2C 00 00 00 */	cmpwi r0, 0
/* 80443DC0 0040D380  38 60 00 00 */	li r3, 0
/* 80443DC4 0040D384  40 82 00 2C */	bne .L_80443DF0
/* 80443DC8 0040D388  80 9F 00 48 */	lwz r4, 0x48(r31)
/* 80443DCC 0040D38C  38 00 00 01 */	li r0, 1
/* 80443DD0 0040D390  2C 04 00 02 */	cmpwi r4, 2
/* 80443DD4 0040D394  41 82 00 10 */	beq .L_80443DE4
/* 80443DD8 0040D398  2C 04 00 03 */	cmpwi r4, 3
/* 80443DDC 0040D39C  41 82 00 08 */	beq .L_80443DE4
/* 80443DE0 0040D3A0  38 00 00 00 */	li r0, 0
.L_80443DE4:
/* 80443DE4 0040D3A4  2C 00 00 00 */	cmpwi r0, 0
/* 80443DE8 0040D3A8  41 82 00 08 */	beq .L_80443DF0
/* 80443DEC 0040D3AC  38 60 00 01 */	li r3, 1
.L_80443DF0:
/* 80443DF0 0040D3B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80443DF4 0040D3B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80443DF8 0040D3B8  7C 08 03 A6 */	mtlr r0
/* 80443DFC 0040D3BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80443E00 0040D3C0  4E 80 00 20 */	blr 
.endfn func_80443D80

.fn func_80443E04, global
/* 80443E04 0040D3C4  80 03 01 2C */	lwz r0, 0x12c(r3)
/* 80443E08 0040D3C8  39 00 00 00 */	li r8, 0
/* 80443E0C 0040D3CC  7C 09 03 A6 */	mtctr r0
/* 80443E10 0040D3D0  28 00 00 00 */	cmplwi r0, 0
/* 80443E14 0040D3D4  40 81 00 40 */	ble .L_80443E54
.L_80443E18:
/* 80443E18 0040D3D8  80 03 01 28 */	lwz r0, 0x128(r3)
/* 80443E1C 0040D3DC  80 A3 01 30 */	lwz r5, 0x130(r3)
/* 80443E20 0040D3E0  7C C0 42 14 */	add r6, r0, r8
/* 80443E24 0040D3E4  80 E3 01 24 */	lwz r7, 0x124(r3)
/* 80443E28 0040D3E8  7C 06 2B 96 */	divwu r0, r6, r5
/* 80443E2C 0040D3EC  7C 00 29 D6 */	mullw r0, r0, r5
/* 80443E30 0040D3F0  7C 00 30 50 */	subf r0, r0, r6
/* 80443E34 0040D3F4  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80443E38 0040D3F8  7C 07 00 2E */	lwzx r0, r7, r0
/* 80443E3C 0040D3FC  7C 04 00 40 */	cmplw r4, r0
/* 80443E40 0040D400  40 82 00 0C */	bne .L_80443E4C
/* 80443E44 0040D404  7D 03 43 78 */	mr r3, r8
/* 80443E48 0040D408  4E 80 00 20 */	blr
.L_80443E4C:
/* 80443E4C 0040D40C  39 08 00 01 */	addi r8, r8, 1
/* 80443E50 0040D410  42 00 FF C8 */	bdnz .L_80443E18
.L_80443E54:
/* 80443E54 0040D414  38 60 FF FF */	li r3, -1
/* 80443E58 0040D418  4E 80 00 20 */	blr 
.endfn func_80443E04

#r3: CDesktop instance pointer
.fn func_80443E5C, global
/* 80443E5C 0040D41C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80443E60 0040D420  7C 08 02 A6 */	mflr r0
/* 80443E64 0040D424  90 01 00 24 */	stw r0, 0x24(r1)
/* 80443E68 0040D428  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 80443E6C 0040D42C  7C 7D 1B 78 */	mr r29, r3
/* 80443E70 0040D430  7C 9E 23 78 */	mr r30, r4
/* 80443E74 0040D434  48 00 00 BD */	bl func_80443F30
/* 80443E78 0040D438  7F C0 1A 79 */	xor. r0, r30, r3
/* 80443E7C 0040D43C  40 82 00 34 */	bne .L_80443EB0
/* 80443E80 0040D440  7F A3 EB 78 */	mr r3, r29
/* 80443E84 0040D444  4B FF 47 4D */	bl func_804385D0
/* 80443E88 0040D448  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 80443E8C 0040D44C  83 E3 00 00 */	lwz r31, 0(r3)
/* 80443E90 0040D450  48 00 00 14 */	b .L_80443EA4
.L_80443E94:
/* 80443E94 0040D454  80 7F 00 08 */	lwz r3, 8(r31)
/* 80443E98 0040D458  7F C4 F3 78 */	mr r4, r30
/* 80443E9C 0040D45C  4B FF FF C1 */	bl func_80443E5C
/* 80443EA0 0040D460  83 FF 00 00 */	lwz r31, 0(r31)
.L_80443EA4:
/* 80443EA4 0040D464  80 1D 00 60 */	lwz r0, 0x60(r29)
/* 80443EA8 0040D468  7C 1F 00 40 */	cmplw r31, r0
/* 80443EAC 0040D46C  40 82 FF E8 */	bne .L_80443E94
.L_80443EB0:
/* 80443EB0 0040D470  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 80443EB4 0040D474  38 A0 00 00 */	li r5, 0
/* 80443EB8 0040D478  80 83 00 00 */	lwz r4, 0(r3)
/* 80443EBC 0040D47C  48 00 00 50 */	b .L_80443F0C
.L_80443EC0:
/* 80443EC0 0040D480  83 E4 00 08 */	lwz r31, 8(r4)
/* 80443EC4 0040D484  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80443EC8 0040D488  2C 00 00 05 */	cmpwi r0, 5
/* 80443ECC 0040D48C  40 82 00 3C */	bne .L_80443F08
/* 80443ED0 0040D490  7F A3 EB 78 */	mr r3, r29
/* 80443ED4 0040D494  7F E4 FB 78 */	mr r4, r31
/* 80443ED8 0040D498  4B FF 3F D1 */	bl func_80437EA8
/* 80443EDC 0040D49C  2C 1F 00 00 */	cmpwi r31, 0
/* 80443EE0 0040D4A0  41 82 00 20 */	beq .L_80443F00
/* 80443EE4 0040D4A4  41 82 00 1C */	beq .L_80443F00
/* 80443EE8 0040D4A8  81 9F 00 00 */	lwz r12, 0(r31)
/* 80443EEC 0040D4AC  7F E3 FB 78 */	mr r3, r31
/* 80443EF0 0040D4B0  38 80 00 01 */	li r4, 1
/* 80443EF4 0040D4B4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80443EF8 0040D4B8  7D 89 03 A6 */	mtctr r12
/* 80443EFC 0040D4BC  4E 80 04 21 */	bctrl 
.L_80443F00:
/* 80443F00 0040D4C0  38 A0 00 01 */	li r5, 1
/* 80443F04 0040D4C4  48 00 00 10 */	b .L_80443F14
.L_80443F08:
/* 80443F08 0040D4C8  80 84 00 00 */	lwz r4, 0(r4)
.L_80443F0C:
/* 80443F0C 0040D4CC  7C 04 18 40 */	cmplw r4, r3
/* 80443F10 0040D4D0  40 82 FF B0 */	bne .L_80443EC0
.L_80443F14:
/* 80443F14 0040D4D4  2C 05 00 00 */	cmpwi r5, 0
/* 80443F18 0040D4D8  40 82 FF 98 */	bne .L_80443EB0
/* 80443F1C 0040D4DC  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 80443F20 0040D4E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80443F24 0040D4E4  7C 08 03 A6 */	mtlr r0
/* 80443F28 0040D4E8  38 21 00 20 */	addi r1, r1, 0x20
/* 80443F2C 0040D4EC  4E 80 00 20 */	blr 
.endfn func_80443E5C

.fn func_80443F30, global
/* 80443F30 0040D4F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80443F34 0040D4F4  7C 08 02 A6 */	mflr r0
/* 80443F38 0040D4F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80443F3C 0040D4FC  80 03 00 7C */	lwz r0, 0x7c(r3)
/* 80443F40 0040D500  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80443F44 0040D504  41 82 00 0C */	beq .L_80443F50
/* 80443F48 0040D508  38 60 00 01 */	li r3, 1
/* 80443F4C 0040D50C  48 00 00 18 */	b .L_80443F64
.L_80443F50:
/* 80443F50 0040D510  38 80 00 03 */	li r4, 3
/* 80443F54 0040D514  38 63 00 80 */	addi r3, r3, 0x80
/* 80443F58 0040D518  4B FF FE AD */	bl func_80443E04
/* 80443F5C 0040D51C  54 60 0F FE */	srwi r0, r3, 0x1f
/* 80443F60 0040D520  68 03 00 01 */	xori r3, r0, 1
.L_80443F64:
/* 80443F64 0040D524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80443F68 0040D528  7C 08 03 A6 */	mtlr r0
/* 80443F6C 0040D52C  38 21 00 10 */	addi r1, r1, 0x10
/* 80443F70 0040D530  4E 80 00 20 */	blr 
.endfn func_80443F30

.fn func_80443F74, global
/* 80443F74 0040D534  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80443F78 0040D538  7C 08 02 A6 */	mflr r0
/* 80443F7C 0040D53C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80443F80 0040D540  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 80443F84 0040D544  7C 7D 1B 78 */	mr r29, r3
/* 80443F88 0040D548  7C 9E 23 78 */	mr r30, r4
/* 80443F8C 0040D54C  4B FF FF A5 */	bl func_80443F30
/* 80443F90 0040D550  7F C0 1A 79 */	xor. r0, r30, r3
/* 80443F94 0040D554  40 82 00 C4 */	bne .L_80444058
/* 80443F98 0040D558  7F A3 EB 78 */	mr r3, r29
/* 80443F9C 0040D55C  4B FF FD E5 */	bl func_80443D80
/* 80443FA0 0040D560  2C 03 00 00 */	cmpwi r3, 0
/* 80443FA4 0040D564  41 82 00 8C */	beq .L_80444030
/* 80443FA8 0040D568  80 DD 00 7C */	lwz r6, 0x7c(r29)
/* 80443FAC 0040D56C  38 80 00 01 */	li r4, 1
/* 80443FB0 0040D570  38 A0 00 01 */	li r5, 1
/* 80443FB4 0040D574  38 60 00 00 */	li r3, 0
/* 80443FB8 0040D578  54 C0 06 31 */	rlwinm. r0, r6, 0, 0x18, 0x18
/* 80443FBC 0040D57C  41 82 00 10 */	beq .L_80443FCC
/* 80443FC0 0040D580  54 C0 06 73 */	rlwinm. r0, r6, 0, 0x19, 0x19
/* 80443FC4 0040D584  41 82 00 08 */	beq .L_80443FCC
/* 80443FC8 0040D588  38 60 00 01 */	li r3, 1
.L_80443FCC:
/* 80443FCC 0040D58C  2C 03 00 00 */	cmpwi r3, 0
/* 80443FD0 0040D590  40 82 00 28 */	bne .L_80443FF8
/* 80443FD4 0040D594  54 C0 05 AD */	rlwinm. r0, r6, 0, 0x16, 0x16
/* 80443FD8 0040D598  38 60 00 00 */	li r3, 0
/* 80443FDC 0040D59C  41 82 00 10 */	beq .L_80443FEC
/* 80443FE0 0040D5A0  54 C0 05 EF */	rlwinm. r0, r6, 0, 0x17, 0x17
/* 80443FE4 0040D5A4  40 82 00 08 */	bne .L_80443FEC
/* 80443FE8 0040D5A8  38 60 00 01 */	li r3, 1
.L_80443FEC:
/* 80443FEC 0040D5AC  2C 03 00 00 */	cmpwi r3, 0
/* 80443FF0 0040D5B0  40 82 00 08 */	bne .L_80443FF8
/* 80443FF4 0040D5B4  38 A0 00 00 */	li r5, 0
.L_80443FF8:
/* 80443FF8 0040D5B8  2C 05 00 00 */	cmpwi r5, 0
/* 80443FFC 0040D5BC  40 82 00 10 */	bne .L_8044400C
/* 80444000 0040D5C0  54 C0 05 6B */	rlwinm. r0, r6, 0, 0x15, 0x15
/* 80444004 0040D5C4  40 82 00 08 */	bne .L_8044400C
/* 80444008 0040D5C8  38 80 00 00 */	li r4, 0
.L_8044400C:
/* 8044400C 0040D5CC  2C 04 00 00 */	cmpwi r4, 0
/* 80444010 0040D5D0  41 82 00 0C */	beq .L_8044401C
/* 80444014 0040D5D4  54 C0 07 FF */	clrlwi. r0, r6, 0x1f
/* 80444018 0040D5D8  41 82 00 18 */	beq .L_80444030
.L_8044401C:
/* 8044401C 0040D5DC  81 9D 00 00 */	lwz r12, 0(r29)
/* 80444020 0040D5E0  7F A3 EB 78 */	mr r3, r29
/* 80444024 0040D5E4  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 80444028 0040D5E8  7D 89 03 A6 */	mtctr r12
/* 8044402C 0040D5EC  4E 80 04 21 */	bctrl 
.L_80444030:
/* 80444030 0040D5F0  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 80444034 0040D5F4  83 E3 00 00 */	lwz r31, 0(r3)
/* 80444038 0040D5F8  48 00 00 14 */	b .L_8044404C
.L_8044403C:
/* 8044403C 0040D5FC  80 7F 00 08 */	lwz r3, 8(r31)
/* 80444040 0040D600  7F C4 F3 78 */	mr r4, r30
/* 80444044 0040D604  4B FF FF 31 */	bl func_80443F74
/* 80444048 0040D608  83 FF 00 00 */	lwz r31, 0(r31)
.L_8044404C:
/* 8044404C 0040D60C  80 1D 00 60 */	lwz r0, 0x60(r29)
/* 80444050 0040D610  7C 1F 00 40 */	cmplw r31, r0
/* 80444054 0040D614  40 82 FF E8 */	bne .L_8044403C
.L_80444058:
/* 80444058 0040D618  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 8044405C 0040D61C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80444060 0040D620  7C 08 03 A6 */	mtlr r0
/* 80444064 0040D624  38 21 00 20 */	addi r1, r1, 0x20
/* 80444068 0040D628  4E 80 00 20 */	blr 
.endfn func_80443F74

.fn func_8044406C, global
/* 8044406C 0040D62C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80444070 0040D630  7C 08 02 A6 */	mflr r0
/* 80444074 0040D634  90 01 00 24 */	stw r0, 0x24(r1)
/* 80444078 0040D638  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 8044407C 0040D63C  83 ED BD 68 */	lwz r31, cDesktopPointer@sda21(r13)
/* 80444080 0040D640  48 00 00 54 */	b .L_804440D4
.L_80444084:
/* 80444084 0040D644  80 9F 01 E8 */	lwz r4, 0x1e8(r31)
/* 80444088 0040D648  38 7F 01 C4 */	addi r3, r31, 0x1c4
/* 8044408C 0040D64C  83 A6 00 08 */	lwz r29, 8(r6)
/* 80444090 0040D650  80 84 00 00 */	lwz r4, 0(r4)
/* 80444094 0040D654  83 C4 00 08 */	lwz r30, 8(r4)
/* 80444098 0040D658  48 00 00 99 */	bl func_80444130
/* 8044409C 0040D65C  38 7F 01 E4 */	addi r3, r31, 0x1e4
/* 804440A0 0040D660  48 00 00 91 */	bl func_80444130
/* 804440A4 0040D664  7F A3 EB 78 */	mr r3, r29
/* 804440A8 0040D668  4B FF FC D9 */	bl func_80443D80
/* 804440AC 0040D66C  2C 03 00 00 */	cmpwi r3, 0
/* 804440B0 0040D670  41 82 00 24 */	beq .L_804440D4
/* 804440B4 0040D674  7F C3 F3 78 */	mr r3, r30
/* 804440B8 0040D678  4B FF FC C9 */	bl func_80443D80
/* 804440BC 0040D67C  2C 03 00 00 */	cmpwi r3, 0
/* 804440C0 0040D680  41 82 00 14 */	beq .L_804440D4
/* 804440C4 0040D684  80 7D 00 58 */	lwz r3, 0x58(r29)
/* 804440C8 0040D688  7F A4 EB 78 */	mr r4, r29
/* 804440CC 0040D68C  4B FF 3D DD */	bl func_80437EA8
/* 804440D0 0040D690  93 BE 00 58 */	stw r29, 0x58(r30)
.L_804440D4:
/* 804440D4 0040D694  80 BF 01 C8 */	lwz r5, 0x1c8(r31)
/* 804440D8 0040D698  38 80 00 00 */	li r4, 0
/* 804440DC 0040D69C  80 C5 00 00 */	lwz r6, 0(r5)
/* 804440E0 0040D6A0  7C C3 33 78 */	mr r3, r6
/* 804440E4 0040D6A4  48 00 00 0C */	b .L_804440F0
.L_804440E8:
/* 804440E8 0040D6A8  80 63 00 00 */	lwz r3, 0(r3)
/* 804440EC 0040D6AC  38 84 00 01 */	addi r4, r4, 1
.L_804440F0:
/* 804440F0 0040D6B0  7C 03 28 40 */	cmplw r3, r5
/* 804440F4 0040D6B4  40 82 FF F4 */	bne .L_804440E8
/* 804440F8 0040D6B8  2C 04 00 00 */	cmpwi r4, 0
/* 804440FC 0040D6BC  40 82 FF 88 */	bne .L_80444084
/* 80444100 0040D6C0  38 7F 01 C4 */	addi r3, r31, 0x1c4
/* 80444104 0040D6C4  4B FF FA F9 */	bl func_80443BFC
/* 80444108 0040D6C8  38 7F 01 E4 */	addi r3, r31, 0x1e4
/* 8044410C 0040D6CC  4B FF FA F1 */	bl func_80443BFC
/* 80444110 0040D6D0  80 6D BD 68 */	lwz r3, cDesktopPointer@sda21(r13)
/* 80444114 0040D6D4  38 80 00 00 */	li r4, 0
/* 80444118 0040D6D8  4B FF FD 45 */	bl func_80443E5C #leads to GameMain
/* 8044411C 0040D6DC  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 80444120 0040D6E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80444124 0040D6E4  7C 08 03 A6 */	mtlr r0
/* 80444128 0040D6E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8044412C 0040D6EC  4E 80 00 20 */	blr 
.endfn func_8044406C

.fn func_80444130, global
/* 80444130 0040D6F0  80 63 00 04 */	lwz r3, 4(r3)
/* 80444134 0040D6F4  38 00 00 00 */	li r0, 0
/* 80444138 0040D6F8  80 A3 00 00 */	lwz r5, 0(r3)
/* 8044413C 0040D6FC  80 65 00 04 */	lwz r3, 4(r5)
/* 80444140 0040D700  80 85 00 00 */	lwz r4, 0(r5)
/* 80444144 0040D704  90 83 00 00 */	stw r4, 0(r3)
/* 80444148 0040D708  90 64 00 04 */	stw r3, 4(r4)
/* 8044414C 0040D70C  90 05 00 00 */	stw r0, 0(r5)
/* 80444150 0040D710  4E 80 00 20 */	blr 
.endfn func_80444130

.fn func_80444154, global
/* 80444154 0040D714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80444158 0040D718  7C 08 02 A6 */	mflr r0
/* 8044415C 0040D71C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80444160 0040D720  48 01 11 4D */	bl getInstance__9CDeviceGXFv
/* 80444164 0040D724  2C 03 00 00 */	cmpwi r3, 0
/* 80444168 0040D728  41 82 00 08 */	beq .L_80444170
/* 8044416C 0040D72C  48 01 16 31 */	bl func_8045579C__9CDeviceGXFv
.L_80444170:
/* 80444170 0040D730  48 00 03 6D */	bl func_804444DC
/* 80444174 0040D734  2C 03 00 00 */	cmpwi r3, 0
/* 80444178 0040D738  40 82 00 30 */	bne .L_804441A8
/* 8044417C 0040D73C  4B FF E0 69 */	bl func_804421E4
/* 80444180 0040D740  2C 03 00 00 */	cmpwi r3, 0
/* 80444184 0040D744  41 82 00 08 */	beq .L_8044418C
/* 80444188 0040D748  4B FF EF 3D */	bl func_804430C4
.L_8044418C:
/* 8044418C 0040D74C  80 6D BD 70 */	lwz r3, lbl_80667EF0@sda21(r13)
/* 80444190 0040D750  2C 03 00 00 */	cmpwi r3, 0
/* 80444194 0040D754  41 82 00 14 */	beq .L_804441A8
/* 80444198 0040D758  81 83 00 00 */	lwz r12, 0(r3)
/* 8044419C 0040D75C  81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 804441A0 0040D760  7D 89 03 A6 */	mtctr r12
/* 804441A4 0040D764  4E 80 04 21 */	bctrl 
.L_804441A8:
/* 804441A8 0040D768  48 01 0C C5 */	bl func_80454E6C
/* 804441AC 0040D76C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804441B0 0040D770  7C 08 03 A6 */	mtlr r0
/* 804441B4 0040D774  38 21 00 10 */	addi r1, r1, 0x10
/* 804441B8 0040D778  4E 80 00 20 */	blr 
.endfn func_80444154

.fn func_804441BC, global
/* 804441BC 0040D77C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804441C0 0040D780  7C 08 02 A6 */	mflr r0
/* 804441C4 0040D784  90 01 00 14 */	stw r0, 0x14(r1)
/* 804441C8 0040D788  48 00 9D 11 */	bl getInstance__12CDeviceClockFv
/* 804441CC 0040D78C  2C 03 00 00 */	cmpwi r3, 0
/* 804441D0 0040D790  41 82 00 08 */	beq .L_804441D8
/* 804441D4 0040D794  48 00 9D B9 */	bl func_8044DF8C__12CDeviceClockFv
.L_804441D8:
/* 804441D8 0040D798  48 00 40 D1 */	bl getInstance__9CDeviceVIFv
/* 804441DC 0040D79C  2C 03 00 00 */	cmpwi r3, 0
/* 804441E0 0040D7A0  41 82 00 08 */	beq .L_804441E8
/* 804441E4 0040D7A4  48 00 46 95 */	bl func_80448878__9CDeviceVIFv
.L_804441E8:
/* 804441E8 0040D7A8  4B FF FE 85 */	bl func_8044406C
/* 804441EC 0040D7AC  80 6D BD 68 */	lwz r3, cDesktopPointer@sda21(r13)
/* 804441F0 0040D7B0  38 80 00 00 */	li r4, 0
/* 804441F4 0040D7B4  4B FF FD 81 */	bl func_80443F74
/* 804441F8 0040D7B8  4B FF FF 5D */	bl func_80444154
/* 804441FC 0040D7BC  48 00 40 AD */	bl getInstance__9CDeviceVIFv
/* 80444200 0040D7C0  2C 03 00 00 */	cmpwi r3, 0
/* 80444204 0040D7C4  41 82 00 08 */	beq .L_8044420C
/* 80444208 0040D7C8  48 00 48 7D */	bl func_80448A84__9CDeviceVIFv
.L_8044420C:
/* 8044420C 0040D7CC  80 6D BD 68 */	lwz r3, cDesktopPointer@sda21(r13)
/* 80444210 0040D7D0  4B FF 58 C5 */	bl func_80439AD4
/* 80444214 0040D7D4  7C 60 00 34 */	cntlzw r0, r3
/* 80444218 0040D7D8  54 00 D9 7E */	srwi r0, r0, 5
/* 8044421C 0040D7DC  7C 00 00 34 */	cntlzw r0, r0
/* 80444220 0040D7E0  54 03 D9 7E */	srwi r3, r0, 5
/* 80444224 0040D7E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80444228 0040D7E8  7C 08 03 A6 */	mtlr r0
/* 8044422C 0040D7EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80444230 0040D7F0  4E 80 00 20 */	blr 
.endfn func_804441BC

.fn ExitGame, global
/* 80444234 0040D7F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80444238 0040D7F8  7C 08 02 A6 */	mflr r0
/* 8044423C 0040D7FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80444240 0040D800  80 0D BD 6C */	lwz r0, lbl_80667EEC@sda21(r13)
/* 80444244 0040D804  2C 00 00 01 */	cmpwi r0, 1
/* 80444248 0040D808  40 82 00 20 */	bne .L_80444268
/* 8044424C 0040D80C  3C 60 80 52 */	lis r3, CWorkRoot_strpool@ha
/* 80444250 0040D810  38 63 60 5C */	addi r3, r3, CWorkRoot_strpool@l
/* 80444254 0040D814  38 63 00 0A */	addi r3, r3, 0xa
/* 80444258 0040D818  4C C6 31 82 */	crclr 6
/* 8044425C 0040D81C  4B F1 0C 95 */	bl OSReport
/* 80444260 0040D820  4B F1 64 01 */	bl OSReturnToMenu
/* 80444264 0040D824  48 00 00 64 */	b .L_804442C8
.L_80444268:
/* 80444268 0040D828  2C 00 00 02 */	cmpwi r0, 2
/* 8044426C 0040D82C  40 82 00 24 */	bne .L_80444290
/* 80444270 0040D830  3C 60 80 52 */	lis r3, CWorkRoot_strpool@ha
/* 80444274 0040D834  38 63 60 5C */	addi r3, r3, CWorkRoot_strpool@l
/* 80444278 0040D838  38 63 00 19 */	addi r3, r3, 0x19
/* 8044427C 0040D83C  4C C6 31 82 */	crclr 6
/* 80444280 0040D840  4B F1 0C 71 */	bl OSReport
/* 80444284 0040D844  38 60 00 00 */	li r3, 0
/* 80444288 0040D848  4B F1 60 69 */	bl OSRestart
/* 8044428C 0040D84C  48 00 00 3C */	b .L_804442C8
.L_80444290:
/* 80444290 0040D850  2C 00 00 03 */	cmpwi r0, 3
/* 80444294 0040D854  40 82 00 20 */	bne .L_804442B4
/* 80444298 0040D858  3C 60 80 52 */	lis r3, CWorkRoot_strpool@ha
/* 8044429C 0040D85C  38 63 60 5C */	addi r3, r3, CWorkRoot_strpool@l
/* 804442A0 0040D860  38 63 00 29 */	addi r3, r3, 0x29
/* 804442A4 0040D864  4C C6 31 82 */	crclr 6
/* 804442A8 0040D868  4B F1 0C 49 */	bl OSReport
/* 804442AC 0040D86C  4B F1 5F 25 */	bl OSShutdownSystem
/* 804442B0 0040D870  48 00 00 18 */	b .L_804442C8
.L_804442B4:
/* 804442B4 0040D874  3C 60 80 52 */	lis r3, CWorkRoot_strpool@ha
/* 804442B8 0040D878  38 63 60 5C */	addi r3, r3, CWorkRoot_strpool@l
/* 804442BC 0040D87C  38 63 00 3D */	addi r3, r3, 0x3d
/* 804442C0 0040D880  4C C6 31 82 */	crclr 6
/* 804442C4 0040D884  4B F1 0C 2D */	bl OSReport
.L_804442C8:
/* 804442C8 0040D888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804442CC 0040D88C  7C 08 03 A6 */	mtlr r0
/* 804442D0 0040D890  38 21 00 10 */	addi r1, r1, 0x10
/* 804442D4 0040D894  4E 80 00 20 */	blr 
.endfn ExitGame

.fn CWorkRoot_Run, global
/* 804442D8 0040D898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804442DC 0040D89C  7C 08 02 A6 */	mflr r0
/* 804442E0 0040D8A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804442E4 0040D8A4  4B FE FA 35 */	bl heap_initialize
/* 804442E8 0040D8A8  48 0A 9F 39 */	bl SetOSErrorHandlers1
/* 804442EC 0040D8AC  48 00 96 DD */	bl createRegions__7CDeviceFv
/* 804442F0 0040D8B0  4B FF 30 9D */	bl func_8043738C
/* 804442F4 0040D8B4  4B FF F8 15 */	bl __ct__CWorkRootThread
/* 804442F8 0040D8B8  80 6D BD 68 */	lwz r3, cDesktopPointer@sda21(r13)
/* 804442FC 0040D8BC  4B FF F6 5D */	bl CWorkControl_create
/* 80444300 0040D8C0  48 00 96 29 */	bl create__7CDeviceFv
/* 80444304 0040D8C4  48 01 54 8D */	bl CLib_create
/* 80444308 0040D8C8  48 00 04 F5 */	bl func_804447FC
.L_8044430C:
/* 8044430C 0040D8CC  4B FF FD 61 */	bl func_8044406C #this function call leads to GameMain
/* 80444310 0040D8D0  48 00 8D 41 */	bl getInstance__7CDeviceFv
/* 80444314 0040D8D4  2C 03 00 00 */	cmpwi r3, 0
/* 80444318 0040D8D8  41 82 FF F4 */	beq .L_8044430C
/* 8044431C 0040D8DC  48 00 8F 2D */	bl func_8044D248__7CDeviceFv
/* 80444320 0040D8E0  2C 03 00 00 */	cmpwi r3, 0
/* 80444324 0040D8E4  40 82 FF E8 */	bne .L_8044430C
/* 80444328 0040D8E8  3C 60 80 44 */	lis r3, CWorkRoot_PreRetraceCallback@ha
/* 8044432C 0040D8EC  38 63 43 68 */	addi r3, r3, CWorkRoot_PreRetraceCallback@l
/* 80444330 0040D8F0  4B F2 05 B1 */	bl VISetPreRetraceCallback
.L_80444334:
/* 80444334 0040D8F4  4B FF FE 89 */	bl func_804441BC
/* 80444338 0040D8F8  2C 03 00 00 */	cmpwi r3, 0
/* 8044433C 0040D8FC  40 82 FF F8 */	bne .L_80444334
/* 80444340 0040D900  4B FF F9 4D */	bl func_80443C8C
/* 80444344 0040D904  4B FF 32 0D */	bl __dt__80437550
/* 80444348 0040D908  48 00 96 FD */	bl deleteRegions__7CDeviceFv
/* 8044434C 0040D90C  48 0A 9F 65 */	bl SetOSErrorHandlers2
/* 80444350 0040D910  4B FE FC 91 */	bl heap_finalize
/* 80444354 0040D914  4B FF FE E1 */	bl ExitGame
/* 80444358 0040D918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044435C 0040D91C  7C 08 03 A6 */	mtlr r0
/* 80444360 0040D920  38 21 00 10 */	addi r1, r1, 0x10
/* 80444364 0040D924  4E 80 00 20 */	blr
.endfn CWorkRoot_Run

.fn CWorkRoot_PreRetraceCallback, global
/* 80444368 0040D928  48 00 49 A8 */	b func_80448D10__9CDeviceVIFv
.endfn CWorkRoot_PreRetraceCallback

.fn func_8044436C, global
/* 8044436C 0040D92C  2C 03 00 00 */	cmpwi r3, 0
/* 80444370 0040D930  41 82 00 08 */	beq .L_80444378
/* 80444374 0040D934  48 00 00 08 */	b .L_8044437C
.L_80444378:
/* 80444378 0040D938  38 60 00 00 */	li r3, 0
.L_8044437C:
/* 8044437C 0040D93C  90 6D BD 70 */	stw r3, lbl_80667EF0@sda21(r13)
/* 80444380 0040D940  4E 80 00 20 */	blr 
.endfn func_8044436C

.fn func_80444384, global
/* 80444384 0040D944  80 6D BD 70 */	lwz r3, lbl_80667EF0@sda21(r13)
/* 80444388 0040D948  4E 80 00 20 */	blr 
.endfn func_80444384

.fn CWorkRootThread_wkShutdown, global
/* 8044438C 0040D94C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80444390 0040D950  7C 08 02 A6 */	mflr r0
/* 80444394 0040D954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80444398 0040D958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044439C 0040D95C  7C 7F 1B 78 */	mr r31, r3
/* 804443A0 0040D960  4B FF 57 35 */	bl func_80439AD4
/* 804443A4 0040D964  2C 03 00 00 */	cmpwi r3, 0
/* 804443A8 0040D968  41 82 00 0C */	beq .L_804443B4
/* 804443AC 0040D96C  38 60 00 00 */	li r3, 0
/* 804443B0 0040D970  48 00 00 0C */	b .L_804443BC
.L_804443B4:
/* 804443B4 0040D974  7F E3 FB 78 */	mr r3, r31
/* 804443B8 0040D978  4B FF 46 6D */	bl wkShutdown__11CWorkThreadFv
.L_804443BC:
/* 804443BC 0040D97C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804443C0 0040D980  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804443C4 0040D984  7C 08 03 A6 */	mtlr r0
/* 804443C8 0040D988  38 21 00 10 */	addi r1, r1, 0x10
/* 804443CC 0040D98C  4E 80 00 20 */	blr
.endfn CWorkRootThread_wkShutdown


.fn sinit_804443D0, local
/* 804443D0 0040D990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804443D4 0040D994  7C 08 02 A6 */	mflr r0
/* 804443D8 0040D998  90 01 00 14 */	stw r0, 0x14(r1)
/* 804443DC 0040D99C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804443E0 0040D9A0  3F E0 80 66 */	lis r31, lbl_8065A0F8@ha
/* 804443E4 0040D9A4  38 7F A0 F8 */	addi r3, r31, lbl_8065A0F8@l
/* 804443E8 0040D9A8  48 0A 9D 0D */	bl __ct__804EE0F4
/* 804443EC 0040D9AC  3C 80 80 4F */	lis r4, __dt__804EE14C@ha
/* 804443F0 0040D9B0  3C A0 80 66 */	lis r5, lbl_8065A0E8@ha
/* 804443F4 0040D9B4  38 7F A0 F8 */	addi r3, r31, lbl_8065A0F8@l
/* 804443F8 0040D9B8  38 84 E1 4C */	addi r4, r4, __dt__804EE14C@l
/* 804443FC 0040D9BC  38 A5 A0 E8 */	addi r5, r5, lbl_8065A0E8@l
/* 80444400 0040D9C0  4B E7 52 9D */	bl __register_global_object
/* 80444404 0040D9C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80444408 0040D9C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8044440C 0040D9CC  7C 08 03 A6 */	mtlr r0
/* 80444410 0040D9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80444414 0040D9D4  4E 80 00 20 */	blr 
.endfn sinit_804443D0

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.balign 4

.4byte sinit_804443D0


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj _unnamed_CWorkRoot_cpp_CWorkRootThread_typestr, global
	.asciz "@unnamed@CWorkRoot_cpp@::CWorkRootThread"
	.balign 4
.endobj _unnamed_CWorkRoot_cpp_CWorkRootThread_typestr


.obj CWorkRoot_strpool, global
	.asciz "CWorkRoot"
	.asciz "exit wii menu\n"
	.asciz "exit wii reset\n"
	.asciz "exit wii power off\n"
	.asciz "exit prog end\n"
.endobj CWorkRoot_strpool

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj "__vt__Q223@unnamed@CWorkRoot_cpp@15CWorkRootThread", global
	.4byte "__RTTI__Q223@unnamed@CWorkRoot_cpp@15CWorkRootThread"
	.4byte 0
	.4byte __dt___unnamed_CWorkRoot_cpp_CWorkRootThread
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
	.4byte wkUpdate__11CWorkThreadFv
	.4byte WorkThreadEvent2__11CWorkThreadFv
	.4byte WorkThreadEvent3__11CWorkThreadFv
	.4byte wkStartup__11CWorkThreadFv
	.4byte CWorkRootThread_wkShutdown
	.4byte WorkThreadEvent6__11CWorkThreadFv
.endobj "__vt__Q223@unnamed@CWorkRoot_cpp@15CWorkRootThread"

.obj _unnamed_CWorkRoot_cpp_CWorkRootThread_hierarchy, global
	.4byte __RTTI__10IWorkEvent
	.4byte 0
	.4byte __RTTI__11CWorkThread
	.4byte 0
	.4byte 0
	.4byte 0
.endobj _unnamed_CWorkRoot_cpp_CWorkRootThread_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj "__RTTI__Q223@unnamed@CWorkRoot_cpp@15CWorkRootThread", global
	.4byte _unnamed_CWorkRoot_cpp_CWorkRootThread_typestr
	.4byte _unnamed_CWorkRoot_cpp_CWorkRootThread_hierarchy
.endobj "__RTTI__Q223@unnamed@CWorkRoot_cpp@15CWorkRootThread"

.section .bss, "wa"  # 0x80573C80 - 0x8066417B



.obj lbl_8065A0E8, global
	.skip 0x10
.endobj lbl_8065A0E8

.obj lbl_8065A0F8, global
	.skip 0x300
.endobj lbl_8065A0F8

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj cDesktopPointer, global
	.skip 0x4
.endobj cDesktopPointer

.obj lbl_80667EEC, global
	.skip 0x4
.endobj lbl_80667EEC

.obj lbl_80667EF0, global
	.skip 0x8
.endobj lbl_80667EF0

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001C774", local
.hidden "@etb_8001C774"
	.4byte 0x10080000
	.4byte 0x00000080
	.4byte 0x00040010
	.4byte 0x00000000
	.4byte 0x0780001E
	.4byte 0x000001E4
	.4byte __dt__reslist_CWorkThread
	.4byte 0x0780001E
	.4byte 0x000001C4
	.4byte __dt__reslist_CWorkThread
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__11CWorkThreadFv
.endobj "@etb_8001C774"

.obj "@etb_8001C7A8", local
.hidden "@etb_8001C7A8"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001C7A8"

.obj "@etb_8001C7B0", local
.hidden "@etb_8001C7B0"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001C7B0"

.obj "@etb_8001C7B8", local
.hidden "@etb_8001C7B8"
	.4byte 0x10080000
	.4byte 0x0000004C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0780001E
	.4byte 0x000001E4
	.4byte __dt__reslist_CWorkThread
	.4byte 0x8780001E
	.4byte 0x000001C4
	.4byte __dt__reslist_CWorkThread
.endobj "@etb_8001C7B8"

.obj "@etb_8001C7E0", local
.hidden "@etb_8001C7E0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C7E0"

.obj "@etb_8001C7E8", local
.hidden "@etb_8001C7E8"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001C7E8"

.obj "@etb_8001C7F0", local
.hidden "@etb_8001C7F0"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001C7F0"

.obj "@etb_8001C7F8", local
.hidden "@etb_8001C7F8"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001C7F8"

.obj "@etb_8001C800", local
.hidden "@etb_8001C800"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001C800"

.obj "@etb_8001C808", local
.hidden "@etb_8001C808"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001C808"

.obj "@etb_8001C810", local
.hidden "@etb_8001C810"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001C810"

.obj "@etb_8001C818", local
.hidden "@etb_8001C818"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001C818"

.obj "@etb_8001C820", local
.hidden "@etb_8001C820"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001C820"

.obj "@etb_8001C828", local
.hidden "@etb_8001C828"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C828"

.obj "@etb_8001C830", local
.hidden "@etb_8001C830"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C830"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8003437C", local
.hidden "@eti_8003437C"
	.4byte __ct__CWorkRootThread
	.4byte 0x000000B8
	.4byte "@etb_8001C774"
.endobj "@eti_8003437C"

.obj "@eti_80034388", local
.hidden "@eti_80034388"
	.4byte func_80443C2C
	.4byte 0x00000060
	.4byte "@etb_8001C7A8"
.endobj "@eti_80034388"

.obj "@eti_80034394", local
.hidden "@eti_80034394"
	.4byte func_80443C8C
	.4byte 0x00000050
	.4byte "@etb_8001C7B0"
.endobj "@eti_80034394"

.obj "@eti_800343A0", local
.hidden "@eti_800343A0"
	.4byte __dt___unnamed_CWorkRoot_cpp_CWorkRootThread
	.4byte 0x00000074
	.4byte "@etb_8001C7B8"
.endobj "@eti_800343A0"

.obj "@eti_800343AC", local
.hidden "@eti_800343AC"
	.4byte func_80443D80
	.4byte 0x00000084
	.4byte "@etb_8001C7E0"
.endobj "@eti_800343AC"

.obj "@eti_800343B8", local
.hidden "@eti_800343B8"
	.4byte func_80443E5C
	.4byte 0x000000D4
	.4byte "@etb_8001C7E8"
.endobj "@eti_800343B8"

.obj "@eti_800343C4", local
.hidden "@eti_800343C4"
	.4byte func_80443F30
	.4byte 0x00000044
	.4byte "@etb_8001C7F0"
.endobj "@eti_800343C4"

.obj "@eti_800343D0", local
.hidden "@eti_800343D0"
	.4byte func_80443F74
	.4byte 0x000000F8
	.4byte "@etb_8001C7F8"
.endobj "@eti_800343D0"

.obj "@eti_800343DC", local
.hidden "@eti_800343DC"
	.4byte func_8044406C
	.4byte 0x000000C4
	.4byte "@etb_8001C800"
.endobj "@eti_800343DC"

.obj "@eti_800343E8", local
.hidden "@eti_800343E8"
	.4byte func_80444154
	.4byte 0x00000068
	.4byte "@etb_8001C808"
.endobj "@eti_800343E8"

.obj "@eti_800343F4", local
.hidden "@eti_800343F4"
	.4byte func_804441BC
	.4byte 0x00000078
	.4byte "@etb_8001C810"
.endobj "@eti_800343F4"

.obj "@eti_80034400", local
.hidden "@eti_80034400"
	.4byte ExitGame
	.4byte 0x000000A4
	.4byte "@etb_8001C818"
.endobj "@eti_80034400"

.obj "@eti_8003440C", local
.hidden "@eti_8003440C"
	.4byte CWorkRoot_Run
	.4byte 0x00000090
	.4byte "@etb_8001C820"
.endobj "@eti_8003440C"

.obj "@eti_80034418", local
.hidden "@eti_80034418"
	.4byte CWorkRootThread_wkShutdown
	.4byte 0x00000044
	.4byte "@etb_8001C828"
.endobj "@eti_80034418"

.obj "@eti_80034424", local
.hidden "@eti_80034424"
	.4byte sinit_804443D0
	.4byte 0x00000048
	.4byte "@etb_8001C830"
.endobj "@eti_80034424"
