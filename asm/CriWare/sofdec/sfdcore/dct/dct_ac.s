.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


.global DCT_AcInit
DCT_AcInit:
/* 803B9AC8 00383088  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803B9ACC 0038308C  7C 08 02 A6 */	mflr r0
/* 803B9AD0 00383090  90 01 00 64 */	stw r0, 0x64(r1)
/* 803B9AD4 00383094  39 61 00 60 */	addi r11, r1, 0x60
/* 803B9AD8 00383098  4B F0 05 E9 */	bl _savefpr_28
/* 803B9ADC 0038309C  BE C1 00 18 */	stmw r22, 0x18(r1)
/* 803B9AE0 003830A0  3F 80 80 52 */	lis r28, lbl_8051F900@ha
/* 803B9AE4 003830A4  3F A0 80 60 */	lis r29, lbl_80607B78@ha
/* 803B9AE8 003830A8  3B 9C F9 00 */	addi r28, r28, lbl_8051F900@l
/* 803B9AEC 003830AC  3B BD 7B 78 */	addi r29, r29, lbl_80607B78@l
/* 803B9AF0 003830B0  48 00 1C 29 */	bl DCT_GetVerStr
/* 803B9AF4 003830B4  90 7D 00 00 */	stw r3, 0(r29)
/* 803B9AF8 003830B8  3B 7D 00 08 */	addi r27, r29, 8
/* 803B9AFC 003830BC  CB BC 00 18 */	lfd f29, 0x18(r28)
/* 803B9B00 003830C0  3B BD 02 08 */	addi r29, r29, 0x208
/* 803B9B04 003830C4  CB DC 00 10 */	lfd f30, 0x10(r28)
/* 803B9B08 003830C8  3A E0 00 00 */	li r23, 0
/* 803B9B0C 003830CC  CB FC 00 08 */	lfd f31, 8(r28)
/* 803B9B10 003830D0  3B 40 00 00 */	li r26, 0
/* 803B9B14 003830D4  3F E0 43 30 */	lis r31, 0x4330
.L_803B9B18:
/* 803B9B18 003830D8  2C 17 00 00 */	cmpwi r23, 0
/* 803B9B1C 003830DC  40 82 00 0C */	bne .L_803B9B28
/* 803B9B20 003830E0  CB 9C 00 00 */	lfd f28, 0(r28)
/* 803B9B24 003830E4  48 00 00 08 */	b .L_803B9B2C
.L_803B9B28:
/* 803B9B28 003830E8  CB 9C 00 08 */	lfd f28, 8(r28)
.L_803B9B2C:
/* 803B9B2C 003830EC  7F 79 DB 78 */	mr r25, r27
/* 803B9B30 003830F0  7F 1D D2 14 */	add r24, r29, r26
/* 803B9B34 003830F4  6E FE 80 00 */	xoris r30, r23, 0x8000
/* 803B9B38 003830F8  3A C0 00 00 */	li r22, 0
.L_803B9B3C:
/* 803B9B3C 003830FC  93 C1 00 0C */	stw r30, 0xc(r1)
/* 803B9B40 00383100  6E C0 80 00 */	xoris r0, r22, 0x8000
/* 803B9B44 00383104  93 E1 00 08 */	stw r31, 8(r1)
/* 803B9B48 00383108  C8 01 00 08 */	lfd f0, 8(r1)
/* 803B9B4C 0038310C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B9B50 00383110  FC 20 E8 28 */	fsub f1, f0, f29
/* 803B9B54 00383114  93 E1 00 10 */	stw r31, 0x10(r1)
/* 803B9B58 00383118  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803B9B5C 0038311C  FC 3E 00 72 */	fmul f1, f30, f1
/* 803B9B60 00383120  FC 00 E8 28 */	fsub f0, f0, f29
/* 803B9B64 00383124  FC 1F 00 2A */	fadd f0, f31, f0
/* 803B9B68 00383128  FC 21 00 32 */	fmul f1, f1, f0
/* 803B9B6C 0038312C  4B F1 10 49 */	bl cos
/* 803B9B70 00383130  FC 1C 00 72 */	fmul f0, f28, f1
/* 803B9B74 00383134  3A D6 00 01 */	addi r22, r22, 1
/* 803B9B78 00383138  2C 16 00 08 */	cmpwi r22, 8
/* 803B9B7C 0038313C  D8 19 00 00 */	stfd f0, 0(r25)
/* 803B9B80 00383140  3B 39 00 08 */	addi r25, r25, 8
/* 803B9B84 00383144  D8 18 00 00 */	stfd f0, 0(r24)
/* 803B9B88 00383148  3B 18 00 40 */	addi r24, r24, 0x40
/* 803B9B8C 0038314C  41 80 FF B0 */	blt .L_803B9B3C
/* 803B9B90 00383150  3A F7 00 01 */	addi r23, r23, 1
/* 803B9B94 00383154  3B 5A 00 08 */	addi r26, r26, 8
/* 803B9B98 00383158  2C 17 00 08 */	cmpwi r23, 8
/* 803B9B9C 0038315C  3B 7B 00 40 */	addi r27, r27, 0x40
/* 803B9BA0 00383160  41 80 FF 78 */	blt .L_803B9B18
/* 803B9BA4 00383164  39 61 00 60 */	addi r11, r1, 0x60
/* 803B9BA8 00383168  4B F0 05 65 */	bl _restfpr_28
/* 803B9BAC 0038316C  BA C1 00 18 */	lmw r22, 0x18(r1)
/* 803B9BB0 00383170  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803B9BB4 00383174  7C 08 03 A6 */	mtlr r0
/* 803B9BB8 00383178  38 21 00 60 */	addi r1, r1, 0x60
/* 803B9BBC 0038317C  4E 80 00 20 */	blr 

.global DCT_AcIdctDouble
DCT_AcIdctDouble:
/* 803B9BC0 00383180  3C A0 80 60 */	lis r5, lbl_80607B80@ha
/* 803B9BC4 00383184  38 A5 7B 80 */	addi r5, r5, lbl_80607B80@l
/* 803B9BC8 00383188  48 00 00 04 */	b .L_803B9BCC
.L_803B9BCC:
/* 803B9BCC 0038318C  94 21 FD E0 */	stwu r1, -0x220(r1)
/* 803B9BD0 00383190  DB E1 02 18 */	stfd f31, 0x218(r1)
/* 803B9BD4 00383194  DB C1 02 10 */	stfd f30, 0x210(r1)
/* 803B9BD8 00383198  DB A1 02 08 */	stfd f29, 0x208(r1)
/* 803B9BDC 0038319C  39 80 00 00 */	li r12, 0
/* 803B9BE0 003831A0  38 C0 00 00 */	li r6, 0
/* 803B9BE4 003831A4  3C E0 80 52 */	lis r7, double_8051F920@ha
/* 803B9BE8 003831A8  38 00 00 04 */	li r0, 4
.L_803B9BEC:
/* 803B9BEC 003831AC  39 21 00 08 */	addi r9, r1, 8
/* 803B9BF0 003831B0  7D 43 32 14 */	add r10, r3, r6
/* 803B9BF4 003831B4  7D 29 32 14 */	add r9, r9, r6
/* 803B9BF8 003831B8  39 00 00 00 */	li r8, 0
/* 803B9BFC 003831BC  7C 09 03 A6 */	mtctr r0
.L_803B9C00:
/* 803B9C00 003831C0  CB A7 F9 20 */	lfd f29, double_8051F920@l(r7)
/* 803B9C04 003831C4  7D 65 42 14 */	add r11, r5, r8
/* 803B9C08 003831C8  7F C5 44 AE */	lfdx f30, r5, r8
/* 803B9C0C 003831CC  39 08 00 08 */	addi r8, r8, 8
/* 803B9C10 003831D0  CB EA 00 00 */	lfd f31, 0(r10)
/* 803B9C14 003831D4  C9 AB 00 40 */	lfd f13, 0x40(r11)
/* 803B9C18 003831D8  FF BE EF FA */	fmadd f29, f30, f31, f29
/* 803B9C1C 003831DC  C9 8A 00 08 */	lfd f12, 8(r10)
/* 803B9C20 003831E0  C9 6B 00 80 */	lfd f11, 0x80(r11)
/* 803B9C24 003831E4  C9 4A 00 10 */	lfd f10, 0x10(r10)
/* 803B9C28 003831E8  C9 2B 00 C0 */	lfd f9, 0xc0(r11)
/* 803B9C2C 003831EC  FF AD EB 3A */	fmadd f29, f13, f12, f29
/* 803B9C30 003831F0  C9 0A 00 18 */	lfd f8, 0x18(r10)
/* 803B9C34 003831F4  C8 EB 01 00 */	lfd f7, 0x100(r11)
/* 803B9C38 003831F8  C8 CA 00 20 */	lfd f6, 0x20(r10)
/* 803B9C3C 003831FC  FF AB EA BA */	fmadd f29, f11, f10, f29
/* 803B9C40 00383200  C8 AB 01 40 */	lfd f5, 0x140(r11)
/* 803B9C44 00383204  C8 8A 00 28 */	lfd f4, 0x28(r10)
/* 803B9C48 00383208  C8 6B 01 80 */	lfd f3, 0x180(r11)
/* 803B9C4C 0038320C  C8 2B 01 C0 */	lfd f1, 0x1c0(r11)
/* 803B9C50 00383210  7D 65 42 14 */	add r11, r5, r8
/* 803B9C54 00383214  FF A9 EA 3A */	fmadd f29, f9, f8, f29
/* 803B9C58 00383218  7F C5 44 AE */	lfdx f30, r5, r8
/* 803B9C5C 0038321C  C8 4A 00 30 */	lfd f2, 0x30(r10)
/* 803B9C60 00383220  39 08 00 08 */	addi r8, r8, 8
/* 803B9C64 00383224  C8 0A 00 38 */	lfd f0, 0x38(r10)
/* 803B9C68 00383228  C9 AB 00 40 */	lfd f13, 0x40(r11)
/* 803B9C6C 0038322C  FF A7 E9 BA */	fmadd f29, f7, f6, f29
/* 803B9C70 00383230  C9 6B 00 80 */	lfd f11, 0x80(r11)
/* 803B9C74 00383234  C9 2B 00 C0 */	lfd f9, 0xc0(r11)
/* 803B9C78 00383238  C8 EB 01 00 */	lfd f7, 0x100(r11)
/* 803B9C7C 0038323C  FF A5 E9 3A */	fmadd f29, f5, f4, f29
/* 803B9C80 00383240  C8 AB 01 40 */	lfd f5, 0x140(r11)
/* 803B9C84 00383244  FF A3 E8 BA */	fmadd f29, f3, f2, f29
/* 803B9C88 00383248  C8 6B 01 80 */	lfd f3, 0x180(r11)
/* 803B9C8C 0038324C  FF A1 E8 3A */	fmadd f29, f1, f0, f29
/* 803B9C90 00383250  C8 2B 01 C0 */	lfd f1, 0x1c0(r11)
/* 803B9C94 00383254  DB A9 00 00 */	stfd f29, 0(r9)
/* 803B9C98 00383258  CB A7 F9 20 */	lfd f29, double_8051F920@l(r7)
/* 803B9C9C 0038325C  FF BE EF FA */	fmadd f29, f30, f31, f29
/* 803B9CA0 00383260  FF AD EB 3A */	fmadd f29, f13, f12, f29
/* 803B9CA4 00383264  FF AB EA BA */	fmadd f29, f11, f10, f29
/* 803B9CA8 00383268  FF A9 EA 3A */	fmadd f29, f9, f8, f29
/* 803B9CAC 0038326C  FF A7 E9 BA */	fmadd f29, f7, f6, f29
/* 803B9CB0 00383270  FF A5 E9 3A */	fmadd f29, f5, f4, f29
/* 803B9CB4 00383274  FF A3 E8 BA */	fmadd f29, f3, f2, f29
/* 803B9CB8 00383278  FF A1 E8 3A */	fmadd f29, f1, f0, f29
/* 803B9CBC 0038327C  DB A9 00 08 */	stfd f29, 8(r9)
/* 803B9CC0 00383280  39 29 00 10 */	addi r9, r9, 0x10
/* 803B9CC4 00383284  42 00 FF 3C */	bdnz .L_803B9C00
/* 803B9CC8 00383288  39 8C 00 01 */	addi r12, r12, 1
/* 803B9CCC 0038328C  38 C6 00 40 */	addi r6, r6, 0x40
/* 803B9CD0 00383290  2C 0C 00 08 */	cmpwi r12, 8
/* 803B9CD4 00383294  41 80 FF 18 */	blt .L_803B9BEC
/* 803B9CD8 00383298  39 60 00 00 */	li r11, 0
/* 803B9CDC 0038329C  38 60 00 00 */	li r3, 0
/* 803B9CE0 003832A0  3C E0 80 52 */	lis r7, double_8051F920@ha
/* 803B9CE4 003832A4  38 00 00 04 */	li r0, 4
.L_803B9CE8:
/* 803B9CE8 003832A8  39 21 00 08 */	addi r9, r1, 8
/* 803B9CEC 003832AC  7D A9 1C EE */	lfdux f13, r9, r3
/* 803B9CF0 003832B0  7D 44 1A 14 */	add r10, r4, r3
/* 803B9CF4 003832B4  39 00 00 00 */	li r8, 0
/* 803B9CF8 003832B8  38 C0 00 00 */	li r6, 0
/* 803B9CFC 003832BC  C9 89 00 40 */	lfd f12, 0x40(r9)
/* 803B9D00 003832C0  C9 49 00 80 */	lfd f10, 0x80(r9)
/* 803B9D04 003832C4  C9 09 00 C0 */	lfd f8, 0xc0(r9)
/* 803B9D08 003832C8  C8 C9 01 00 */	lfd f6, 0x100(r9)
/* 803B9D0C 003832CC  C8 89 01 40 */	lfd f4, 0x140(r9)
/* 803B9D10 003832D0  C8 49 01 80 */	lfd f2, 0x180(r9)
/* 803B9D14 003832D4  C8 09 01 C0 */	lfd f0, 0x1c0(r9)
/* 803B9D18 003832D8  7C 09 03 A6 */	mtctr r0
.L_803B9D1C:
/* 803B9D1C 003832DC  CB C7 F9 20 */	lfd f30, double_8051F920@l(r7)
/* 803B9D20 003832E0  7D 25 42 14 */	add r9, r5, r8
/* 803B9D24 003832E4  7C 65 44 AE */	lfdx f3, r5, r8
/* 803B9D28 003832E8  39 08 00 08 */	addi r8, r8, 8
/* 803B9D2C 003832EC  C8 29 00 40 */	lfd f1, 0x40(r9)
/* 803B9D30 003832F0  FF C3 F3 7A */	fmadd f30, f3, f13, f30
/* 803B9D34 003832F4  C9 69 00 80 */	lfd f11, 0x80(r9)
/* 803B9D38 003832F8  C9 29 00 C0 */	lfd f9, 0xc0(r9)
/* 803B9D3C 003832FC  C8 E9 01 00 */	lfd f7, 0x100(r9)
/* 803B9D40 00383300  C8 A9 01 40 */	lfd f5, 0x140(r9)
/* 803B9D44 00383304  FF C1 F3 3A */	fmadd f30, f1, f12, f30
/* 803B9D48 00383308  C8 69 01 80 */	lfd f3, 0x180(r9)
/* 803B9D4C 0038330C  C8 29 01 C0 */	lfd f1, 0x1c0(r9)
/* 803B9D50 00383310  7D 25 42 14 */	add r9, r5, r8
/* 803B9D54 00383314  FF CB F2 BA */	fmadd f30, f11, f10, f30
/* 803B9D58 00383318  FF C9 F2 3A */	fmadd f30, f9, f8, f30
/* 803B9D5C 0038331C  FF C7 F1 BA */	fmadd f30, f7, f6, f30
/* 803B9D60 00383320  FF C5 F1 3A */	fmadd f30, f5, f4, f30
/* 803B9D64 00383324  FF C3 F0 BA */	fmadd f30, f3, f2, f30
/* 803B9D68 00383328  FF C1 F0 3A */	fmadd f30, f1, f0, f30
/* 803B9D6C 0038332C  7F CA 35 AE */	stfdx f30, r10, r6
/* 803B9D70 00383330  38 C6 00 40 */	addi r6, r6, 0x40
/* 803B9D74 00383334  CB C7 F9 20 */	lfd f30, double_8051F920@l(r7)
/* 803B9D78 00383338  7C 65 44 AE */	lfdx f3, r5, r8
/* 803B9D7C 0038333C  39 08 00 08 */	addi r8, r8, 8
/* 803B9D80 00383340  C8 29 00 40 */	lfd f1, 0x40(r9)
/* 803B9D84 00383344  FF C3 F3 7A */	fmadd f30, f3, f13, f30
/* 803B9D88 00383348  C9 69 00 80 */	lfd f11, 0x80(r9)
/* 803B9D8C 0038334C  C9 29 00 C0 */	lfd f9, 0xc0(r9)
/* 803B9D90 00383350  C8 E9 01 00 */	lfd f7, 0x100(r9)
/* 803B9D94 00383354  C8 A9 01 40 */	lfd f5, 0x140(r9)
/* 803B9D98 00383358  FF C1 F3 3A */	fmadd f30, f1, f12, f30
/* 803B9D9C 0038335C  C8 69 01 80 */	lfd f3, 0x180(r9)
/* 803B9DA0 00383360  C8 29 01 C0 */	lfd f1, 0x1c0(r9)
/* 803B9DA4 00383364  FF CB F2 BA */	fmadd f30, f11, f10, f30
/* 803B9DA8 00383368  FF C9 F2 3A */	fmadd f30, f9, f8, f30
/* 803B9DAC 0038336C  FF C7 F1 BA */	fmadd f30, f7, f6, f30
/* 803B9DB0 00383370  FF C5 F1 3A */	fmadd f30, f5, f4, f30
/* 803B9DB4 00383374  FF C3 F0 BA */	fmadd f30, f3, f2, f30
/* 803B9DB8 00383378  FF C1 F0 3A */	fmadd f30, f1, f0, f30
/* 803B9DBC 0038337C  7F CA 35 AE */	stfdx f30, r10, r6
/* 803B9DC0 00383380  38 C6 00 40 */	addi r6, r6, 0x40
/* 803B9DC4 00383384  42 00 FF 58 */	bdnz .L_803B9D1C
/* 803B9DC8 00383388  39 6B 00 01 */	addi r11, r11, 1
/* 803B9DCC 0038338C  38 63 00 08 */	addi r3, r3, 8
/* 803B9DD0 00383390  2C 0B 00 08 */	cmpwi r11, 8
/* 803B9DD4 00383394  41 80 FF 14 */	blt .L_803B9CE8
/* 803B9DD8 00383398  CB E1 02 18 */	lfd f31, 0x218(r1)
/* 803B9DDC 0038339C  CB C1 02 10 */	lfd f30, 0x210(r1)
/* 803B9DE0 003833A0  CB A1 02 08 */	lfd f29, 0x208(r1)
/* 803B9DE4 003833A4  38 21 02 20 */	addi r1, r1, 0x220
/* 803B9DE8 003833A8  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_8051F900
lbl_8051F900:
	.4byte 0x3FD6A09E
	.4byte 0x667F3BCD
	.4byte 0x3FE00000
	.4byte 0
	.4byte 0x3FD921FB
	.4byte 0x54442D18
	.4byte 0x43300000
	.4byte 0x80000000


.global double_8051F920
double_8051F920:
	.4byte 0
	.4byte 0

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.global lbl_80607B78
lbl_80607B78:
	.skip 0x8
.global lbl_80607B80
lbl_80607B80:
	.skip 0x400