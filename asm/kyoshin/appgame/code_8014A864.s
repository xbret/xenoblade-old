.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_8014A86C, global
/* 8014A86C 00113E2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014A870 00113E30  7C 08 02 A6 */	mflr r0
/* 8014A874 00113E34  90 01 00 34 */	stw r0, 0x34(r1)
/* 8014A878 00113E38  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8014A87C 00113E3C  3B E0 00 00 */	li r31, 0x0
/* 8014A880 00113E40  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8014A884 00113E44  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8014A888 00113E48  3B A3 00 02 */	addi r29, r3, 0x2
/* 8014A88C 00113E4C  93 81 00 20 */	stw r28, 0x20(r1)
/* 8014A890 00113E50  3B 80 00 00 */	li r28, 0x0
/* 8014A894 00113E54  90 6D A9 20 */	stw r3, lbl_80666AA0@sda21(r13)
/* 8014A898 00113E58  A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8014A89C 00113E5C  54 1E 44 2E */	clrlslwi r30, r0, 24, 8
/* 8014A8A0 00113E60  50 1E C6 3E */	rlwimi r30, r0, 24, 24, 31
/* 8014A8A4 00113E64  48 00 00 2C */	b .L_8014A8D0
.L_8014A8A8:
/* 8014A8A8 00113E68  38 61 00 08 */	addi r3, r1, 0x8
/* 8014A8AC 00113E6C  38 9D 00 04 */	addi r4, r29, 0x4
/* 8014A8B0 00113E70  38 A0 00 10 */	li r5, 0x10
/* 8014A8B4 00113E74  4B EB 97 4D */	bl memcpy
/* 8014A8B8 00113E78  9B E1 00 18 */	stb r31, 0x18(r1)
/* 8014A8BC 00113E7C  3B 9C 00 01 */	addi r28, r28, 0x1
/* 8014A8C0 00113E80  88 1D 00 14 */	lbz r0, 0x14(r29)
/* 8014A8C4 00113E84  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8014A8C8 00113E88  7C 7D 02 14 */	add r3, r29, r0
/* 8014A8CC 00113E8C  3B A3 00 16 */	addi r29, r3, 0x16
.L_8014A8D0:
/* 8014A8D0 00113E90  7C 1C F0 00 */	cmpw r28, r30
/* 8014A8D4 00113E94  41 80 FF D4 */	blt .L_8014A8A8
/* 8014A8D8 00113E98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014A8DC 00113E9C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8014A8E0 00113EA0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8014A8E4 00113EA4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8014A8E8 00113EA8  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8014A8EC 00113EAC  7C 08 03 A6 */	mtlr r0
/* 8014A8F0 00113EB0  38 21 00 30 */	addi r1, r1, 0x30
/* 8014A8F4 00113EB4  4E 80 00 20 */	blr
.endfn func_8014A86C

.fn func_8014A8F8, global
/* 8014A8F8 00113EB8  38 00 00 00 */	li r0, 0x0
/* 8014A8FC 00113EBC  90 0D A9 20 */	stw r0, lbl_80666AA0@sda21(r13)
/* 8014A900 00113EC0  4E 80 00 20 */	blr
.endfn func_8014A8F8

# 0x80666AA0 - 0x80666AA8
.section .sbss, "wa", @nobits
.balign 8
.global lbl_80666AA0
lbl_80666AA0:
	.skip 0x8

# 0x8000D194 - 0x8000D19C
.section extab, "a"
.balign 4

.obj "@etb_8000D194", local
.hidden "@etb_8000D194"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_8000D194"

# 0x8002840C - 0x80028418
.section extabindex, "a"
.balign 4

.obj "@eti_8002840C", local
.hidden "@eti_8002840C"
	.4byte func_8014A86C
	.4byte 0x0000008C
	.4byte "@etb_8000D194"
.endobj "@eti_8002840C"
