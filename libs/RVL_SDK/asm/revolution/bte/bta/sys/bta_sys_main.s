.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn bta_sys_init, global
/* 802DE95C 002A7F1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE960 002A7F20  7C 08 02 A6 */	mflr r0
/* 802DE964 002A7F24  38 80 00 00 */	li r4, 0
/* 802DE968 002A7F28  38 A0 00 8C */	li r5, 0x8c
/* 802DE96C 002A7F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE970 002A7F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DE974 002A7F34  3F E0 80 5C */	lis r31, bta_sys_cb@ha
/* 802DE978 002A7F38  38 7F F5 58 */	addi r3, r31, bta_sys_cb@l
/* 802DE97C 002A7F3C  4B D2 59 D5 */	bl memset
/* 802DE980 002A7F40  80 AD 97 80 */	lwz r5, p_bta_sys_cfg@sda21(r13)
/* 802DE984 002A7F44  3B FF F5 58 */	addi r31, r31, bta_sys_cb@l
/* 802DE988 002A7F48  38 7F 00 68 */	addi r3, r31, 0x68
/* 802DE98C 002A7F4C  38 80 03 E8 */	li r4, 0x3e8
/* 802DE990 002A7F50  88 A5 00 03 */	lbz r5, 3(r5)
/* 802DE994 002A7F54  48 00 02 0D */	bl ptim_init
/* 802DE998 002A7F58  4B FF E0 29 */	bl GKI_get_taskid
/* 802DE99C 002A7F5C  98 7F 00 7D */	stb r3, 0x7d(r31)
/* 802DE9A0 002A7F60  80 6D 97 80 */	lwz r3, p_bta_sys_cfg@sda21(r13)
/* 802DE9A4 002A7F64  88 03 00 04 */	lbz r0, 4(r3)
/* 802DE9A8 002A7F68  98 0D B5 F8 */	stb r0, appl_trace_level@sda21(r13)
/* 802DE9AC 002A7F6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DE9B0 002A7F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE9B4 002A7F74  7C 08 03 A6 */	mtlr r0
/* 802DE9B8 002A7F78  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE9BC 002A7F7C  4E 80 00 20 */	blr 
.endfn bta_sys_init

.fn bta_sys_event, global
/* 802DE9C0 002A7F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE9C4 002A7F84  7C 08 02 A6 */	mflr r0
/* 802DE9C8 002A7F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE9CC 002A7F8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DE9D0 002A7F90  3B E0 00 01 */	li r31, 1
/* 802DE9D4 002A7F94  93 C1 00 08 */	stw r30, 8(r1)
/* 802DE9D8 002A7F98  7C 7E 1B 78 */	mr r30, r3
/* 802DE9DC 002A7F9C  88 0D B5 F8 */	lbz r0, appl_trace_level@sda21(r13)
/* 802DE9E0 002A7FA0  28 00 00 04 */	cmplwi r0, 4
/* 802DE9E4 002A7FA4  41 80 00 18 */	blt .L_802DE9FC
/* 802DE9E8 002A7FA8  3C 80 80 54 */	lis r4, lbl_80543FD0@ha
/* 802DE9EC 002A7FAC  A0 BE 00 00 */	lhz r5, 0(r30)
/* 802DE9F0 002A7FB0  38 84 3F D0 */	addi r4, r4, lbl_80543FD0@l
/* 802DE9F4 002A7FB4  38 60 05 03 */	li r3, 0x503
/* 802DE9F8 002A7FB8  4B FF F5 C9 */	bl LogMsg_1
.L_802DE9FC:
/* 802DE9FC 002A7FBC  3C 60 80 5C */	lis r3, bta_sys_cb@ha
/* 802DEA00 002A7FC0  A0 9E 00 00 */	lhz r4, 0(r30)
/* 802DEA04 002A7FC4  38 63 F5 58 */	addi r3, r3, bta_sys_cb@l
/* 802DEA08 002A7FC8  88 03 00 7E */	lbz r0, 0x7e(r3)
/* 802DEA0C 002A7FCC  7C 85 46 70 */	srawi r5, r4, 8
/* 802DEA10 002A7FD0  2C 00 00 00 */	cmpwi r0, 0
/* 802DEA14 002A7FD4  41 82 00 1C */	beq .L_802DEA30
/* 802DEA18 002A7FD8  28 04 01 01 */	cmplwi r4, 0x101
/* 802DEA1C 002A7FDC  40 82 00 08 */	bne .L_802DEA24
/* 802DEA20 002A7FE0  48 00 26 71 */	bl bta_dm_immediate_disable
.L_802DEA24:
/* 802DEA24 002A7FE4  7F C3 F3 78 */	mr r3, r30
/* 802DEA28 002A7FE8  4B FF CA B9 */	bl GKI_freebuf
/* 802DEA2C 002A7FEC  48 00 00 68 */	b .L_802DEA94
.L_802DEA30:
/* 802DEA30 002A7FF0  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802DEA34 002A7FF4  28 00 00 1A */	cmplwi r0, 0x1a
/* 802DEA38 002A7FF8  40 80 00 2C */	bge .L_802DEA64
/* 802DEA3C 002A7FFC  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 802DEA40 002A8000  7C 63 00 2E */	lwzx r3, r3, r0
/* 802DEA44 002A8004  2C 03 00 00 */	cmpwi r3, 0
/* 802DEA48 002A8008  41 82 00 1C */	beq .L_802DEA64
/* 802DEA4C 002A800C  81 83 00 00 */	lwz r12, 0(r3)
/* 802DEA50 002A8010  7F C3 F3 78 */	mr r3, r30
/* 802DEA54 002A8014  7D 89 03 A6 */	mtctr r12
/* 802DEA58 002A8018  4E 80 04 21 */	bctrl 
/* 802DEA5C 002A801C  7C 7F 1B 78 */	mr r31, r3
/* 802DEA60 002A8020  48 00 00 24 */	b .L_802DEA84
.L_802DEA64:
/* 802DEA64 002A8024  88 0D B5 F8 */	lbz r0, appl_trace_level@sda21(r13)
/* 802DEA68 002A8028  28 00 00 02 */	cmplwi r0, 2
/* 802DEA6C 002A802C  41 80 00 18 */	blt .L_802DEA84
/* 802DEA70 002A8030  3C 80 80 54 */	lis r4, lbl_80543FE4@ha
/* 802DEA74 002A8034  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 802DEA78 002A8038  38 84 3F E4 */	addi r4, r4, lbl_80543FE4@l
/* 802DEA7C 002A803C  38 60 05 01 */	li r3, 0x501
/* 802DEA80 002A8040  4B FF F5 41 */	bl LogMsg_1
.L_802DEA84:
/* 802DEA84 002A8044  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802DEA88 002A8048  41 82 00 0C */	beq .L_802DEA94
/* 802DEA8C 002A804C  7F C3 F3 78 */	mr r3, r30
/* 802DEA90 002A8050  4B FF CA 51 */	bl GKI_freebuf
.L_802DEA94:
/* 802DEA94 002A8054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DEA98 002A8058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DEA9C 002A805C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DEAA0 002A8060  7C 08 03 A6 */	mtlr r0
/* 802DEAA4 002A8064  38 21 00 10 */	addi r1, r1, 0x10
/* 802DEAA8 002A8068  4E 80 00 20 */	blr 
.endfn bta_sys_event

.fn bta_sys_timer_update, global
/* 802DEAAC 002A806C  3C 60 80 5C */	lis r3, bta_sys_cb@ha
/* 802DEAB0 002A8070  38 63 F5 58 */	addi r3, r3, bta_sys_cb@l
/* 802DEAB4 002A8074  88 03 00 7C */	lbz r0, 0x7c(r3)
/* 802DEAB8 002A8078  2C 00 00 00 */	cmpwi r0, 0
/* 802DEABC 002A807C  4C 82 00 20 */	bnelr 
/* 802DEAC0 002A8080  38 63 00 68 */	addi r3, r3, 0x68
/* 802DEAC4 002A8084  48 00 01 28 */	b ptim_timer_update
/* 802DEAC8 002A8088  4E 80 00 20 */	blr 
.endfn bta_sys_timer_update

.fn bta_sys_register, global
/* 802DEACC 002A808C  3C A0 80 5C */	lis r5, bta_sys_cb@ha
/* 802DEAD0 002A8090  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 802DEAD4 002A8094  38 A5 F5 58 */	addi r5, r5, bta_sys_cb@l
/* 802DEAD8 002A8098  7C 85 01 2E */	stwx r4, r5, r0
/* 802DEADC 002A809C  4E 80 00 20 */	blr 
.endfn bta_sys_register

.fn bta_sys_sendmsg, global
/* 802DEAE0 002A80A0  80 8D 97 80 */	lwz r4, p_bta_sys_cfg@sda21(r13)
/* 802DEAE4 002A80A4  3C C0 80 5C */	lis r6, bta_sys_cb@ha
/* 802DEAE8 002A80A8  38 C6 F5 58 */	addi r6, r6, bta_sys_cb@l
/* 802DEAEC 002A80AC  7C 65 1B 78 */	mr r5, r3
/* 802DEAF0 002A80B0  88 66 00 7D */	lbz r3, 0x7d(r6)
/* 802DEAF4 002A80B4  88 84 00 02 */	lbz r4, 2(r4)
/* 802DEAF8 002A80B8  4B FF CB A8 */	b GKI_send_msg
.endfn bta_sys_sendmsg

.fn bta_sys_start_timer, global
/* 802DEAFC 002A80BC  3C E0 80 5C */	lis r7, bta_sys_cb@ha
/* 802DEB00 002A80C0  7C 80 23 78 */	mr r0, r4
/* 802DEB04 002A80C4  38 E7 F5 58 */	addi r7, r7, bta_sys_cb@l
/* 802DEB08 002A80C8  7C A6 2B 78 */	mr r6, r5
/* 802DEB0C 002A80CC  7C 64 1B 78 */	mr r4, r3
/* 802DEB10 002A80D0  7C 05 03 78 */	mr r5, r0
/* 802DEB14 002A80D4  38 67 00 68 */	addi r3, r7, 0x68
/* 802DEB18 002A80D8  48 00 01 88 */	b ptim_start_timer
.endfn bta_sys_start_timer

.fn bta_sys_stop_timer, global
/* 802DEB1C 002A80DC  3C A0 80 5C */	lis r5, bta_sys_cb@ha
/* 802DEB20 002A80E0  7C 64 1B 78 */	mr r4, r3
/* 802DEB24 002A80E4  38 A5 F5 58 */	addi r5, r5, bta_sys_cb@l
/* 802DEB28 002A80E8  38 65 00 68 */	addi r3, r5, 0x68
/* 802DEB2C 002A80EC  48 00 02 14 */	b ptim_stop_timer
.endfn bta_sys_stop_timer

.fn bta_sys_disable, global
/* 802DEB30 002A80F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DEB34 002A80F4  7C 08 02 A6 */	mflr r0
/* 802DEB38 002A80F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DEB3C 002A80FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DEB40 002A8100  3F E0 80 5C */	lis r31, bta_sys_cb@ha
/* 802DEB44 002A8104  3B FF F5 58 */	addi r31, r31, bta_sys_cb@l
/* 802DEB48 002A8108  93 C1 00 08 */	stw r30, 8(r1)
/* 802DEB4C 002A810C  3B C0 00 00 */	li r30, 0
.L_802DEB50:
/* 802DEB50 002A8110  80 7F 00 00 */	lwz r3, 0(r31)
/* 802DEB54 002A8114  2C 03 00 00 */	cmpwi r3, 0
/* 802DEB58 002A8118  41 82 00 18 */	beq .L_802DEB70
/* 802DEB5C 002A811C  81 83 00 04 */	lwz r12, 4(r3)
/* 802DEB60 002A8120  2C 0C 00 00 */	cmpwi r12, 0
/* 802DEB64 002A8124  41 82 00 0C */	beq .L_802DEB70
/* 802DEB68 002A8128  7D 89 03 A6 */	mtctr r12
/* 802DEB6C 002A812C  4E 80 04 21 */	bctrl 
.L_802DEB70:
/* 802DEB70 002A8130  3B DE 00 01 */	addi r30, r30, 1
/* 802DEB74 002A8134  3B FF 00 04 */	addi r31, r31, 4
/* 802DEB78 002A8138  2C 1E 00 1A */	cmpwi r30, 0x1a
/* 802DEB7C 002A813C  41 80 FF D4 */	blt .L_802DEB50
/* 802DEB80 002A8140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DEB84 002A8144  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DEB88 002A8148  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DEB8C 002A814C  7C 08 03 A6 */	mtlr r0
/* 802DEB90 002A8150  38 21 00 10 */	addi r1, r1, 0x10
/* 802DEB94 002A8154  4E 80 00 20 */	blr 
.endfn bta_sys_disable

.fn bta_sys_set_trace_level, global
/* 802DEB98 002A8158  98 6D B5 F8 */	stb r3, appl_trace_level@sda21(r13)
/* 802DEB9C 002A815C  4E 80 00 20 */	blr
.endfn bta_sys_set_trace_level

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_80543FD0, global
	.asciz "BTA got event 0x%x"
	.balign 4
.endobj lbl_80543FD0


.obj lbl_80543FE4, global
	.asciz "BTA got unregistered event id %d"
	.balign 4
.endobj lbl_80543FE4


.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.balign 8
.obj bta_sys_cb, global
	.skip 0x8C
.endobj bta_sys_cb

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj appl_trace_level, global
	.skip 0x8
.endobj appl_trace_level
