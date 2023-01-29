.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn TRKDoNotifyStopped, global
/* 802CC5C0 00295B80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CC5C4 00295B84  7C 08 02 A6 */	mflr r0
/* 802CC5C8 00295B88  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CC5CC 00295B8C  38 81 00 08 */	addi r4, r1, 0x8
/* 802CC5D0 00295B90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802CC5D4 00295B94  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802CC5D8 00295B98  7C 7E 1B 78 */	mr r30, r3
/* 802CC5DC 00295B9C  38 61 00 0C */	addi r3, r1, 0xc
/* 802CC5E0 00295BA0  48 00 0E C5 */	bl TRKGetFreeBuffer
/* 802CC5E4 00295BA4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802CC5E8 00295BA8  7C 7F 1B 78 */	mr r31, r3
/* 802CC5EC 00295BAC  40 82 00 48 */	bne .L_802CC634
/* 802CC5F0 00295BB0  2C 1E 00 90 */	cmpwi r30, 0x90
/* 802CC5F4 00295BB4  40 82 00 10 */	bne .L_802CC604
/* 802CC5F8 00295BB8  80 61 00 08 */	lwz r3, 0x8(r1)
/* 802CC5FC 00295BBC  48 00 34 2D */	bl TRKTargetAddStopInfo
/* 802CC600 00295BC0  48 00 00 0C */	b .L_802CC60C
.L_802CC604:
/* 802CC604 00295BC4  80 61 00 08 */	lwz r3, 0x8(r1)
/* 802CC608 00295BC8  48 00 36 21 */	bl TRKTargetAddExceptionInfo
.L_802CC60C:
/* 802CC60C 00295BCC  80 61 00 08 */	lwz r3, 0x8(r1)
/* 802CC610 00295BD0  38 81 00 10 */	addi r4, r1, 0x10
/* 802CC614 00295BD4  48 00 06 81 */	bl TRKRequestSend
/* 802CC618 00295BD8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802CC61C 00295BDC  7C 7F 1B 78 */	mr r31, r3
/* 802CC620 00295BE0  40 82 00 0C */	bne .L_802CC62C
/* 802CC624 00295BE4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802CC628 00295BE8  48 00 0F 3D */	bl TRKReleaseBuffer
.L_802CC62C:
/* 802CC62C 00295BEC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802CC630 00295BF0  48 00 0F 35 */	bl TRKReleaseBuffer
.L_802CC634:
/* 802CC634 00295BF4  7F E3 FB 78 */	mr r3, r31
/* 802CC638 00295BF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802CC63C 00295BFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802CC640 00295C00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CC644 00295C04  7C 08 03 A6 */	mtlr r0
/* 802CC648 00295C08  38 21 00 20 */	addi r1, r1, 0x20
/* 802CC64C 00295C0C  4E 80 00 20 */	blr
.endfn TRKDoNotifyStopped
