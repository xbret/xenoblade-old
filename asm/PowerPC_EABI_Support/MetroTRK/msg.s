.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn TRKMessageSend, global
/* 802CD420 002969E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CD424 002969E4  7C 08 02 A6 */	mflr r0
/* 802CD428 002969E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CD42C 002969EC  A0 0D B4 10 */	lhz r0, lbl_80667590@sda21(r13)
/* 802CD430 002969F0  2C 00 00 00 */	cmpwi r0, 0
/* 802CD434 002969F4  40 82 00 08 */	bne .L_802CD43C
/* 802CD438 002969F8  38 00 00 01 */	li r0, 1
.L_802CD43C:
/* 802CD43C 002969FC  B0 03 00 12 */	sth r0, 0x12(r3)
/* 802CD440 00296A00  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 802CD444 00296A04  38 04 00 01 */	addi r0, r4, 1
/* 802CD448 00296A08  B0 0D B4 10 */	sth r0, lbl_80667590@sda21(r13)
/* 802CD44C 00296A0C  80 83 00 04 */	lwz r4, 4(r3)
/* 802CD450 00296A10  38 63 00 0C */	addi r3, r3, 0xc
/* 802CD454 00296A14  4B FF F0 9D */	bl TRKWriteUARTN
/* 802CD458 00296A18  2C 03 00 00 */	cmpwi r3, 0
/* 802CD45C 00296A1C  7C 64 1B 78 */	mr r4, r3
/* 802CD460 00296A20  41 82 00 10 */	beq .L_802CD470
/* 802CD464 00296A24  3C 60 80 54 */	lis r3, lbl_8053FEF0@ha
/* 802CD468 00296A28  38 63 FE F0 */	addi r3, r3, lbl_8053FEF0@l
/* 802CD46C 00296A2C  48 08 7A 85 */	bl OSReport
.L_802CD470:
/* 802CD470 00296A30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CD474 00296A34  38 60 00 00 */	li r3, 0
/* 802CD478 00296A38  7C 08 03 A6 */	mtlr r0
/* 802CD47C 00296A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 802CD480 00296A40  4E 80 00 20 */	blr 
.endfn TRKMessageSend

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8053FEF0
lbl_8053FEF0:
	.asciz "MetroTRK - TRK_WriteUARTN returned %ld\n"

.section .sbss, "wa"  # 0x80666600 - 0x8066836F
.global lbl_80667590
lbl_80667590:
	.skip 0x8