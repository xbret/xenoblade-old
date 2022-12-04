.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global btu_task_init
btu_task_init:
/* 802DE1F0 002A77B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE1F4 002A77B4  7C 08 02 A6 */	mflr r0
/* 802DE1F8 002A77B8  38 60 00 01 */	li r3, 1
/* 802DE1FC 002A77BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE200 002A77C0  38 00 00 00 */	li r0, 0
/* 802DE204 002A77C4  98 6D 97 98 */	stb r3, lbl_80665918@sda21(r13)
/* 802DE208 002A77C8  90 6D 97 9C */	stw r3, lbl_8066591C@sda21(r13)
/* 802DE20C 002A77CC  90 0D B5 F0 */	stw r0, lbl_80667770@sda21(r13)
/* 802DE210 002A77D0  90 0D B5 F4 */	stw r0, lbl_80667774@sda21(r13)
/* 802DE214 002A77D4  48 01 19 99 */	bl btu_init_core
/* 802DE218 002A77D8  4B FF FC 99 */	bl BTE_InitStack
/* 802DE21C 002A77DC  48 00 07 41 */	bl bta_sys_init
/* 802DE220 002A77E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE224 002A77E4  7C 08 03 A6 */	mtlr r0
/* 802DE228 002A77E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE22C 002A77EC  4E 80 00 20 */	blr

.global btu_task_msg_handler
btu_task_msg_handler:
/* 802DE230 002A77F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE234 002A77F4  7C 08 02 A6 */	mflr r0
/* 802DE238 002A77F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE23C 002A77FC  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE240 002A7800  4B FD BF 11 */	bl _savegpr_26
/* 802DE244 002A7804  3B C0 00 00 */	li r30, 0
/* 802DE248 002A7808  48 07 E7 19 */	bl OSGetTime
/* 802DE24C 002A780C  80 6D B5 F0 */	lwz r3, lbl_80667770@sda21(r13)
/* 802DE250 002A7810  38 03 00 01 */	addi r0, r3, 1
/* 802DE254 002A7814  90 0D B5 F0 */	stw r0, lbl_80667770@sda21(r13)
/* 802DE258 002A7818  4B FF E7 A9 */	bl GKI_disable
/* 802DE25C 002A781C  80 0D 97 9C */	lwz r0, lbl_8066591C@sda21(r13)
/* 802DE260 002A7820  2C 00 00 00 */	cmpwi r0, 0
/* 802DE264 002A7824  41 82 00 18 */	beq lbl_802DE27C
/* 802DE268 002A7828  38 60 00 00 */	li r3, 0
/* 802DE26C 002A782C  38 00 00 01 */	li r0, 1
/* 802DE270 002A7830  90 6D 97 9C */	stw r3, lbl_8066591C@sda21(r13)
/* 802DE274 002A7834  98 0D 97 98 */	stb r0, lbl_80665918@sda21(r13)
/* 802DE278 002A7838  48 00 00 18 */	b lbl_802DE290
lbl_802DE27C:
/* 802DE27C 002A783C  88 6D 97 98 */	lbz r3, lbl_80665918@sda21(r13)
/* 802DE280 002A7840  38 03 00 01 */	addi r0, r3, 1
/* 802DE284 002A7844  98 0D 97 98 */	stb r0, lbl_80665918@sda21(r13)
/* 802DE288 002A7848  4B FF E7 49 */	bl GKI_enable
/* 802DE28C 002A784C  48 00 03 08 */	b lbl_802DE594
lbl_802DE290:
/* 802DE290 002A7850  4B FF E7 41 */	bl GKI_enable
/* 802DE294 002A7854  80 6D B5 F4 */	lwz r3, lbl_80667774@sda21(r13)
/* 802DE298 002A7858  3B E0 00 05 */	li r31, 5
/* 802DE29C 002A785C  80 8D B5 F0 */	lwz r4, lbl_80667770@sda21(r13)
/* 802DE2A0 002A7860  38 03 01 F4 */	addi r0, r3, 0x1f4
/* 802DE2A4 002A7864  7C 04 00 40 */	cmplw r4, r0
/* 802DE2A8 002A7868  40 81 00 0C */	ble lbl_802DE2B4
/* 802DE2AC 002A786C  90 8D B5 F4 */	stw r4, lbl_80667774@sda21(r13)
/* 802DE2B0 002A7870  63 FF 00 30 */	ori r31, r31, 0x30
lbl_802DE2B4:
/* 802DE2B4 002A7874  3C 60 80 5C */	lis r3, lbl_805BF4D0@ha
/* 802DE2B8 002A7878  3B A3 F4 D0 */	addi r29, r3, lbl_805BF4D0@l
/* 802DE2BC 002A787C  48 00 02 C8 */	b lbl_802DE584
lbl_802DE2C0:
/* 802DE2C0 002A7880  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 802DE2C4 002A7884  3B C0 00 01 */	li r30, 1
/* 802DE2C8 002A7888  41 82 01 00 */	beq lbl_802DE3C8
/* 802DE2CC 002A788C  48 00 00 E8 */	b lbl_802DE3B4
lbl_802DE2D0:
/* 802DE2D0 002A7890  A0 03 00 00 */	lhz r0, 0(r3)
/* 802DE2D4 002A7894  3B C0 00 00 */	li r30, 0
/* 802DE2D8 002A7898  54 1C 04 2E */	rlwinm r28, r0, 0, 0x10, 0x17
/* 802DE2DC 002A789C  2C 1C 11 00 */	cmpwi r28, 0x1100
/* 802DE2E0 002A78A0  41 82 00 28 */	beq lbl_802DE308
/* 802DE2E4 002A78A4  2C 1C 19 00 */	cmpwi r28, 0x1900
/* 802DE2E8 002A78A8  41 82 00 2C */	beq lbl_802DE314
/* 802DE2EC 002A78AC  2C 1C 12 00 */	cmpwi r28, 0x1200
/* 802DE2F0 002A78B0  41 82 00 30 */	beq lbl_802DE320
/* 802DE2F4 002A78B4  2C 1C 10 00 */	cmpwi r28, 0x1000
/* 802DE2F8 002A78B8  41 82 00 34 */	beq lbl_802DE32C
/* 802DE2FC 002A78BC  2C 1C 16 00 */	cmpwi r28, 0x1600
/* 802DE300 002A78C0  41 82 00 40 */	beq lbl_802DE340
/* 802DE304 002A78C4  48 00 00 48 */	b lbl_802DE34C
lbl_802DE308:
/* 802DE308 002A78C8  7F 63 DB 78 */	mr r3, r27
/* 802DE30C 002A78CC  48 01 B9 41 */	bl l2c_rcv_acl_data
/* 802DE310 002A78D0  48 00 00 A4 */	b lbl_802DE3B4
lbl_802DE314:
/* 802DE314 002A78D4  7F 63 DB 78 */	mr r3, r27
/* 802DE318 002A78D8  48 01 B7 01 */	bl l2c_link_segments_xmitted
/* 802DE31C 002A78DC  48 00 00 98 */	b lbl_802DE3B4
lbl_802DE320:
/* 802DE320 002A78E0  7F 63 DB 78 */	mr r3, r27
/* 802DE324 002A78E4  48 00 D2 61 */	bl btm_route_sco_data
/* 802DE328 002A78E8  48 00 00 8C */	b lbl_802DE3B4
lbl_802DE32C:
/* 802DE32C 002A78EC  7F 63 DB 78 */	mr r3, r27
/* 802DE330 002A78F0  48 01 06 21 */	bl btu_hcif_process_event
/* 802DE334 002A78F4  7F 63 DB 78 */	mr r3, r27
/* 802DE338 002A78F8  4B FF D1 A9 */	bl GKI_freebuf
/* 802DE33C 002A78FC  48 00 00 78 */	b lbl_802DE3B4
lbl_802DE340:
/* 802DE340 002A7900  7F 63 DB 78 */	mr r3, r27
/* 802DE344 002A7904  48 01 0B C5 */	bl btu_hcif_send_cmd
/* 802DE348 002A7908  48 00 00 6C */	b lbl_802DE3B4
lbl_802DE34C:
/* 802DE34C 002A790C  3B 40 00 00 */	li r26, 0
/* 802DE350 002A7910  38 80 00 00 */	li r4, 0
/* 802DE354 002A7914  48 00 00 3C */	b lbl_802DE390
lbl_802DE358:
/* 802DE358 002A7918  57 40 1D 78 */	rlwinm r0, r26, 3, 0x15, 0x1c
/* 802DE35C 002A791C  7C 7D 02 14 */	add r3, r29, r0
/* 802DE360 002A7920  81 83 00 14 */	lwz r12, 0x14(r3)
/* 802DE364 002A7924  2C 8C 00 00 */	cmpwi cr1, r12, 0
/* 802DE368 002A7928  41 86 00 24 */	beq cr1, lbl_802DE38C
/* 802DE36C 002A792C  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 802DE370 002A7930  7C 1C 00 40 */	cmplw r28, r0
/* 802DE374 002A7934  40 82 00 18 */	bne lbl_802DE38C
/* 802DE378 002A7938  41 86 00 14 */	beq cr1, lbl_802DE38C
/* 802DE37C 002A793C  7F 63 DB 78 */	mr r3, r27
/* 802DE380 002A7940  7D 89 03 A6 */	mtctr r12
/* 802DE384 002A7944  4E 80 04 21 */	bctrl 
/* 802DE388 002A7948  38 80 00 01 */	li r4, 1
lbl_802DE38C:
/* 802DE38C 002A794C  3B 5A 00 01 */	addi r26, r26, 1
lbl_802DE390:
/* 802DE390 002A7950  2C 04 00 00 */	cmpwi r4, 0
/* 802DE394 002A7954  40 82 00 10 */	bne lbl_802DE3A4
/* 802DE398 002A7958  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 802DE39C 002A795C  28 00 00 06 */	cmplwi r0, 6
/* 802DE3A0 002A7960  41 80 FF B8 */	blt lbl_802DE358
lbl_802DE3A4:
/* 802DE3A4 002A7964  2C 04 00 00 */	cmpwi r4, 0
/* 802DE3A8 002A7968  40 82 00 0C */	bne lbl_802DE3B4
/* 802DE3AC 002A796C  7F 63 DB 78 */	mr r3, r27
/* 802DE3B0 002A7970  4B FF D1 31 */	bl GKI_freebuf
lbl_802DE3B4:
/* 802DE3B4 002A7974  38 60 00 00 */	li r3, 0
/* 802DE3B8 002A7978  4B FF D4 A9 */	bl GKI_read_mbox
/* 802DE3BC 002A797C  2C 03 00 00 */	cmpwi r3, 0
/* 802DE3C0 002A7980  7C 7B 1B 78 */	mr r27, r3
/* 802DE3C4 002A7984  40 82 FF 0C */	bne lbl_802DE2D0
lbl_802DE3C8:
/* 802DE3C8 002A7988  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 802DE3CC 002A798C  41 82 01 78 */	beq lbl_802DE544
/* 802DE3D0 002A7990  38 7D 00 40 */	addi r3, r29, 0x40
/* 802DE3D4 002A7994  38 80 00 01 */	li r4, 1
/* 802DE3D8 002A7998  4B FF E1 09 */	bl GKI_update_timer_list
/* 802DE3DC 002A799C  57 E0 07 34 */	rlwinm r0, r31, 0, 0x1c, 0x1a
/* 802DE3E0 002A79A0  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 802DE3E4 002A79A4  48 00 01 48 */	b lbl_802DE52C
lbl_802DE3E8:
/* 802DE3E8 002A79A8  7F 84 E3 78 */	mr r4, r28
/* 802DE3EC 002A79AC  38 7D 00 40 */	addi r3, r29, 0x40
/* 802DE3F0 002A79B0  3B C0 00 00 */	li r30, 0
/* 802DE3F4 002A79B4  4B FF E2 6D */	bl GKI_remove_from_timer_list
/* 802DE3F8 002A79B8  A0 1C 00 14 */	lhz r0, 0x14(r28)
/* 802DE3FC 002A79BC  2C 00 00 0A */	cmpwi r0, 0xa
/* 802DE400 002A79C0  41 82 00 94 */	beq lbl_802DE494
/* 802DE404 002A79C4  40 80 00 30 */	bge lbl_802DE434
/* 802DE408 002A79C8  2C 00 00 05 */	cmpwi r0, 5
/* 802DE40C 002A79CC  41 82 00 7C */	beq lbl_802DE488
/* 802DE410 002A79D0  40 80 00 14 */	bge lbl_802DE424
/* 802DE414 002A79D4  2C 00 00 01 */	cmpwi r0, 1
/* 802DE418 002A79D8  41 82 00 4C */	beq lbl_802DE464
/* 802DE41C 002A79DC  40 80 00 60 */	bge lbl_802DE47C
/* 802DE420 002A79E0  48 00 00 B8 */	b lbl_802DE4D8
lbl_802DE424:
/* 802DE424 002A79E4  2C 00 00 08 */	cmpwi r0, 8
/* 802DE428 002A79E8  41 82 00 74 */	beq lbl_802DE49C
/* 802DE42C 002A79EC  40 80 00 44 */	bge lbl_802DE470
/* 802DE430 002A79F0  48 00 00 A8 */	b lbl_802DE4D8
lbl_802DE434:
/* 802DE434 002A79F4  2C 00 00 3C */	cmpwi r0, 0x3c
/* 802DE438 002A79F8  41 82 00 78 */	beq lbl_802DE4B0
/* 802DE43C 002A79FC  40 80 00 1C */	bge lbl_802DE458
/* 802DE440 002A7A00  2C 00 00 16 */	cmpwi r0, 0x16
/* 802DE444 002A7A04  41 82 00 80 */	beq lbl_802DE4C4
/* 802DE448 002A7A08  40 80 00 90 */	bge lbl_802DE4D8
/* 802DE44C 002A7A0C  2C 00 00 0D */	cmpwi r0, 0xd
/* 802DE450 002A7A10  40 80 00 88 */	bge lbl_802DE4D8
/* 802DE454 002A7A14  48 00 00 50 */	b lbl_802DE4A4
lbl_802DE458:
/* 802DE458 002A7A18  2C 00 00 42 */	cmpwi r0, 0x42
/* 802DE45C 002A7A1C  41 82 00 5C */	beq lbl_802DE4B8
/* 802DE460 002A7A20  48 00 00 78 */	b lbl_802DE4D8
lbl_802DE464:
/* 802DE464 002A7A24  7F 83 E3 78 */	mr r3, r28
/* 802DE468 002A7A28  48 00 88 49 */	bl btm_dev_timeout
/* 802DE46C 002A7A2C  48 00 00 C0 */	b lbl_802DE52C
lbl_802DE470:
/* 802DE470 002A7A30  7F 83 E3 78 */	mr r3, r28
/* 802DE474 002A7A34  48 00 73 31 */	bl btm_acl_timeout
/* 802DE478 002A7A38  48 00 00 B4 */	b lbl_802DE52C
lbl_802DE47C:
/* 802DE47C 002A7A3C  7F 83 E3 78 */	mr r3, r28
/* 802DE480 002A7A40  48 01 C5 6D */	bl l2c_process_timeout
/* 802DE484 002A7A44  48 00 00 A8 */	b lbl_802DE52C
lbl_802DE488:
/* 802DE488 002A7A48  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 802DE48C 002A7A4C  48 02 82 C1 */	bl sdp_conn_timeout
/* 802DE490 002A7A50  48 00 00 9C */	b lbl_802DE52C
lbl_802DE494:
/* 802DE494 002A7A54  48 00 B9 91 */	bl btm_inq_rmt_name_failed
/* 802DE498 002A7A58  48 00 00 94 */	b lbl_802DE52C
lbl_802DE49C:
/* 802DE49C 002A7A5C  48 00 9F 2D */	bl btm_discovery_timeout
/* 802DE4A0 002A7A60  48 00 00 8C */	b lbl_802DE52C
lbl_802DE4A4:
/* 802DE4A4 002A7A64  7F 83 E3 78 */	mr r3, r28
/* 802DE4A8 002A7A68  48 02 47 01 */	bl rfcomm_process_timeout
/* 802DE4AC 002A7A6C  48 00 00 80 */	b lbl_802DE52C
lbl_802DE4B0:
/* 802DE4B0 002A7A70  48 01 14 C5 */	bl btu_hcif_cmd_timeout
/* 802DE4B4 002A7A74  48 00 00 78 */	b lbl_802DE52C
lbl_802DE4B8:
/* 802DE4B8 002A7A78  7F 83 E3 78 */	mr r3, r28
/* 802DE4BC 002A7A7C  48 01 69 8D */	bl hidh_proc_repage_timeout
/* 802DE4C0 002A7A80  48 00 00 6C */	b lbl_802DE52C
lbl_802DE4C4:
/* 802DE4C4 002A7A84  81 9C 00 10 */	lwz r12, 0x10(r28)
/* 802DE4C8 002A7A88  7F 83 E3 78 */	mr r3, r28
/* 802DE4CC 002A7A8C  7D 89 03 A6 */	mtctr r12
/* 802DE4D0 002A7A90  4E 80 04 21 */	bctrl 
/* 802DE4D4 002A7A94  48 00 00 58 */	b lbl_802DE52C
lbl_802DE4D8:
/* 802DE4D8 002A7A98  3B 60 00 00 */	li r27, 0
/* 802DE4DC 002A7A9C  38 80 00 00 */	li r4, 0
/* 802DE4E0 002A7AA0  48 00 00 38 */	b lbl_802DE518
lbl_802DE4E4:
/* 802DE4E4 002A7AA4  57 60 1D 78 */	rlwinm r0, r27, 3, 0x15, 0x1c
/* 802DE4E8 002A7AA8  7C 7D 02 14 */	add r3, r29, r0
/* 802DE4EC 002A7AAC  81 83 00 04 */	lwz r12, 4(r3)
/* 802DE4F0 002A7AB0  2C 0C 00 00 */	cmpwi r12, 0
/* 802DE4F4 002A7AB4  41 82 00 20 */	beq lbl_802DE514
/* 802DE4F8 002A7AB8  80 03 00 00 */	lwz r0, 0(r3)
/* 802DE4FC 002A7ABC  7C 00 E0 40 */	cmplw r0, r28
/* 802DE500 002A7AC0  40 82 00 14 */	bne lbl_802DE514
/* 802DE504 002A7AC4  7F 83 E3 78 */	mr r3, r28
/* 802DE508 002A7AC8  7D 89 03 A6 */	mtctr r12
/* 802DE50C 002A7ACC  4E 80 04 21 */	bctrl 
/* 802DE510 002A7AD0  38 80 00 01 */	li r4, 1
lbl_802DE514:
/* 802DE514 002A7AD4  3B 7B 00 01 */	addi r27, r27, 1
lbl_802DE518:
/* 802DE518 002A7AD8  2C 04 00 00 */	cmpwi r4, 0
/* 802DE51C 002A7ADC  40 82 00 10 */	bne lbl_802DE52C
/* 802DE520 002A7AE0  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 802DE524 002A7AE4  28 00 00 02 */	cmplwi r0, 2
/* 802DE528 002A7AE8  41 80 FF BC */	blt lbl_802DE4E4
lbl_802DE52C:
/* 802DE52C 002A7AEC  83 9D 00 40 */	lwz r28, 0x40(r29)
/* 802DE530 002A7AF0  2C 1C 00 00 */	cmpwi r28, 0
/* 802DE534 002A7AF4  41 82 00 10 */	beq lbl_802DE544
/* 802DE538 002A7AF8  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 802DE53C 002A7AFC  2C 00 00 00 */	cmpwi r0, 0
/* 802DE540 002A7B00  41 82 FE A8 */	beq lbl_802DE3E8
lbl_802DE544:
/* 802DE544 002A7B04  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 802DE548 002A7B08  41 82 00 20 */	beq lbl_802DE568
/* 802DE54C 002A7B0C  48 00 00 0C */	b lbl_802DE558
lbl_802DE550:
/* 802DE550 002A7B10  3B C0 00 00 */	li r30, 0
/* 802DE554 002A7B14  48 00 04 6D */	bl bta_sys_event
lbl_802DE558:
/* 802DE558 002A7B18  38 60 00 02 */	li r3, 2
/* 802DE55C 002A7B1C  4B FF D3 05 */	bl GKI_read_mbox
/* 802DE560 002A7B20  2C 03 00 00 */	cmpwi r3, 0
/* 802DE564 002A7B24  40 82 FF EC */	bne lbl_802DE550
lbl_802DE568:
/* 802DE568 002A7B28  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 802DE56C 002A7B2C  41 82 00 10 */	beq lbl_802DE57C
/* 802DE570 002A7B30  57 E0 06 F2 */	rlwinm r0, r31, 0, 0x1b, 0x19
/* 802DE574 002A7B34  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 802DE578 002A7B38  48 00 05 35 */	bl bta_sys_timer_update
lbl_802DE57C:
/* 802DE57C 002A7B3C  57 E0 04 21 */	rlwinm. r0, r31, 0, 0x10, 0x10
/* 802DE580 002A7B40  40 82 00 0C */	bne lbl_802DE58C
lbl_802DE584:
/* 802DE584 002A7B44  2C 1E 00 00 */	cmpwi r30, 0
/* 802DE588 002A7B48  41 82 FD 38 */	beq lbl_802DE2C0
lbl_802DE58C:
/* 802DE58C 002A7B4C  38 00 00 01 */	li r0, 1
/* 802DE590 002A7B50  90 0D 97 9C */	stw r0, lbl_8066591C@sda21(r13)
lbl_802DE594:
/* 802DE594 002A7B54  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE598 002A7B58  4B FD BC 05 */	bl _restgpr_26
/* 802DE59C 002A7B5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE5A0 002A7B60  7C 08 03 A6 */	mtlr r0
/* 802DE5A4 002A7B64  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE5A8 002A7B68  4E 80 00 20 */	blr 

.balign 16, 0
.global btu_start_timer
btu_start_timer:
/* 802DE5B0 002A7B70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE5B4 002A7B74  7C 08 02 A6 */	mflr r0
/* 802DE5B8 002A7B78  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE5BC 002A7B7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DE5C0 002A7B80  3F E0 80 5C */	lis r31, lbl_805BF4D0@ha
/* 802DE5C4 002A7B84  3B FF F4 D0 */	addi r31, r31, lbl_805BF4D0@l
/* 802DE5C8 002A7B88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DE5CC 002A7B8C  7C BE 2B 78 */	mr r30, r5
/* 802DE5D0 002A7B90  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802DE5D4 002A7B94  7C 9D 23 78 */	mr r29, r4
/* 802DE5D8 002A7B98  93 81 00 10 */	stw r28, 0x10(r1)
/* 802DE5DC 002A7B9C  7C 7C 1B 78 */	mr r28, r3
/* 802DE5E0 002A7BA0  7F 84 E3 78 */	mr r4, r28
/* 802DE5E4 002A7BA4  38 7F 00 40 */	addi r3, r31, 0x40
/* 802DE5E8 002A7BA8  4B FF E0 79 */	bl GKI_remove_from_timer_list
/* 802DE5EC 002A7BAC  B3 BC 00 14 */	sth r29, 0x14(r28)
/* 802DE5F0 002A7BB0  7F 84 E3 78 */	mr r4, r28
/* 802DE5F4 002A7BB4  38 7F 00 40 */	addi r3, r31, 0x40
/* 802DE5F8 002A7BB8  93 DC 00 0C */	stw r30, 0xc(r28)
/* 802DE5FC 002A7BBC  4B FF DF 75 */	bl GKI_add_to_timer_list
/* 802DE600 002A7BC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE604 002A7BC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DE608 002A7BC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DE60C 002A7BCC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802DE610 002A7BD0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802DE614 002A7BD4  7C 08 03 A6 */	mtlr r0
/* 802DE618 002A7BD8  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE61C 002A7BDC  4E 80 00 20 */	blr 

.global btu_stop_timer
btu_stop_timer:
/* 802DE620 002A7BE0  3C A0 80 5C */	lis r5, lbl_805BF4D0@ha
/* 802DE624 002A7BE4  7C 64 1B 78 */	mr r4, r3
/* 802DE628 002A7BE8  38 A5 F4 D0 */	addi r5, r5, lbl_805BF4D0@l
/* 802DE62C 002A7BEC  38 65 00 40 */	addi r3, r5, 0x40
/* 802DE630 002A7BF0  4B FF E0 30 */	b GKI_remove_from_timer_list

.section .sbss, "wa"  # 0x80666600 - 0x8066836F
.global lbl_80667770
lbl_80667770:
	.skip 0x4
.global lbl_80667774
lbl_80667774:
	.skip 0x4