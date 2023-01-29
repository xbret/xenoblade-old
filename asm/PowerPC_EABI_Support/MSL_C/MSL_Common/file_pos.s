.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn _ftell, global
/* 802BE2A0 00287860  80 03 00 04 */	lwz r0, 0x4(r3)
/* 802BE2A4 00287864  38 C0 00 00 */	li r6, 0x0
/* 802BE2A8 00287868  54 04 57 7E */	extrwi r4, r0, 3, 7
/* 802BE2AC 0028786C  38 04 00 FF */	addi r0, r4, 0xff
/* 802BE2B0 00287870  54 00 06 3E */	clrlwi r0, r0, 24
/* 802BE2B4 00287874  28 00 00 01 */	cmplwi r0, 0x1
/* 802BE2B8 00287878  41 81 00 10 */	bgt .L_802BE2C8
/* 802BE2BC 0028787C  88 03 00 0A */	lbz r0, 0xa(r3)
/* 802BE2C0 00287880  2C 00 00 00 */	cmpwi r0, 0x0
/* 802BE2C4 00287884  41 82 00 14 */	beq .L_802BE2D8
.L_802BE2C8:
/* 802BE2C8 00287888  38 00 00 28 */	li r0, 0x28
/* 802BE2CC 0028788C  90 0D B3 B0 */	stw r0, errno@sda21(r13)
/* 802BE2D0 00287890  38 60 FF FF */	li r3, -0x1
/* 802BE2D4 00287894  4E 80 00 20 */	blr
.L_802BE2D8:
/* 802BE2D8 00287898  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802BE2DC 0028789C  54 05 1F 7F */	srwi. r5, r0, 29
/* 802BE2E0 002878A0  40 82 00 0C */	bne .L_802BE2EC
/* 802BE2E4 002878A4  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802BE2E8 002878A8  4E 80 00 20 */	blr
.L_802BE2EC:
/* 802BE2EC 002878AC  81 03 00 1C */	lwz r8, 0x1c(r3)
/* 802BE2F0 002878B0  28 05 00 03 */	cmplwi r5, 0x3
/* 802BE2F4 002878B4  80 83 00 24 */	lwz r4, 0x24(r3)
/* 802BE2F8 002878B8  80 03 00 34 */	lwz r0, 0x34(r3)
/* 802BE2FC 002878BC  7C 88 20 50 */	subf r4, r8, r4
/* 802BE300 002878C0  7C E0 22 14 */	add r7, r0, r4
/* 802BE304 002878C4  41 80 00 0C */	blt .L_802BE310
/* 802BE308 002878C8  38 C5 FF FE */	addi r6, r5, -0x2
/* 802BE30C 002878CC  7C E6 38 50 */	subf r7, r6, r7
.L_802BE310:
/* 802BE310 002878D0  80 03 00 04 */	lwz r0, 0x4(r3)
/* 802BE314 002878D4  54 00 6F FF */	extrwi. r0, r0, 1, 12
/* 802BE318 002878D8  40 82 00 28 */	bne .L_802BE340
/* 802BE31C 002878DC  7C 06 20 51 */	subf. r0, r6, r4
/* 802BE320 002878E0  7C 09 03 A6 */	mtctr r0
/* 802BE324 002878E4  41 82 00 1C */	beq .L_802BE340
.L_802BE328:
/* 802BE328 002878E8  88 08 00 00 */	lbz r0, 0x0(r8)
/* 802BE32C 002878EC  39 08 00 01 */	addi r8, r8, 0x1
/* 802BE330 002878F0  28 00 00 0A */	cmplwi r0, 0xa
/* 802BE334 002878F4  40 82 00 08 */	bne .L_802BE33C
/* 802BE338 002878F8  38 E7 00 01 */	addi r7, r7, 0x1
.L_802BE33C:
/* 802BE33C 002878FC  42 00 FF EC */	bdnz .L_802BE328
.L_802BE340:
/* 802BE340 00287900  7C E3 3B 78 */	mr r3, r7
/* 802BE344 00287904  4E 80 00 20 */	blr
.endfn _ftell

.fn ftell, global
/* 802BE348 00287908  4B FF FF 58 */	b _ftell
.endfn ftell

.fn _fseek, global
/* 802BE34C 0028790C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BE350 00287910  7C 08 02 A6 */	mflr r0
/* 802BE354 00287914  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BE358 00287918  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BE35C 0028791C  7C BF 2B 78 */	mr r31, r5
/* 802BE360 00287920  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BE364 00287924  7C 7E 1B 78 */	mr r30, r3
/* 802BE368 00287928  90 81 00 08 */	stw r4, 0x8(r1)
/* 802BE36C 0028792C  80 03 00 04 */	lwz r0, 0x4(r3)
/* 802BE370 00287930  54 00 57 7E */	extrwi r0, r0, 3, 7
/* 802BE374 00287934  28 00 00 01 */	cmplwi r0, 0x1
/* 802BE378 00287938  40 82 00 10 */	bne .L_802BE388
/* 802BE37C 0028793C  88 03 00 0A */	lbz r0, 0xa(r3)
/* 802BE380 00287940  2C 00 00 00 */	cmpwi r0, 0x0
/* 802BE384 00287944  41 82 00 14 */	beq .L_802BE398
.L_802BE388:
/* 802BE388 00287948  38 00 00 28 */	li r0, 0x28
/* 802BE38C 0028794C  90 0D B3 B0 */	stw r0, errno@sda21(r13)
/* 802BE390 00287950  38 60 FF FF */	li r3, -0x1
/* 802BE394 00287954  48 00 01 64 */	b .L_802BE4F8
.L_802BE398:
/* 802BE398 00287958  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802BE39C 0028795C  54 00 1F 7E */	srwi r0, r0, 29
/* 802BE3A0 00287960  28 00 00 01 */	cmplwi r0, 0x1
/* 802BE3A4 00287964  40 82 00 34 */	bne .L_802BE3D8
/* 802BE3A8 00287968  38 80 00 00 */	li r4, 0x0
/* 802BE3AC 0028796C  4B FF F9 45 */	bl __flush_buffer
/* 802BE3B0 00287970  2C 03 00 00 */	cmpwi r3, 0x0
/* 802BE3B4 00287974  41 82 00 24 */	beq .L_802BE3D8
/* 802BE3B8 00287978  38 80 00 00 */	li r4, 0x0
/* 802BE3BC 0028797C  90 9E 00 28 */	stw r4, 0x28(r30)
/* 802BE3C0 00287980  38 00 00 01 */	li r0, 0x1
/* 802BE3C4 00287984  38 60 FF FF */	li r3, -0x1
/* 802BE3C8 00287988  98 1E 00 0A */	stb r0, 0xa(r30)
/* 802BE3CC 0028798C  38 00 00 28 */	li r0, 0x28
/* 802BE3D0 00287990  90 0D B3 B0 */	stw r0, errno@sda21(r13)
/* 802BE3D4 00287994  48 00 01 24 */	b .L_802BE4F8
.L_802BE3D8:
/* 802BE3D8 00287998  2C 1F 00 01 */	cmpwi r31, 0x1
/* 802BE3DC 0028799C  40 82 00 1C */	bne .L_802BE3F8
/* 802BE3E0 002879A0  7F C3 F3 78 */	mr r3, r30
/* 802BE3E4 002879A4  3B E0 00 00 */	li r31, 0x0
/* 802BE3E8 002879A8  4B FF FE B9 */	bl _ftell
/* 802BE3EC 002879AC  80 01 00 08 */	lwz r0, 0x8(r1)
/* 802BE3F0 002879B0  7C 00 1A 14 */	add r0, r0, r3
/* 802BE3F4 002879B4  90 01 00 08 */	stw r0, 0x8(r1)
.L_802BE3F8:
/* 802BE3F8 002879B8  2C 1F 00 02 */	cmpwi r31, 0x2
/* 802BE3FC 002879BC  41 82 00 80 */	beq .L_802BE47C
/* 802BE400 002879C0  80 1E 00 04 */	lwz r0, 0x4(r30)
/* 802BE404 002879C4  54 00 2F 7E */	extrwi r0, r0, 3, 2
/* 802BE408 002879C8  28 00 00 03 */	cmplwi r0, 0x3
/* 802BE40C 002879CC  41 82 00 70 */	beq .L_802BE47C
/* 802BE410 002879D0  80 DE 00 08 */	lwz r6, 0x8(r30)
/* 802BE414 002879D4  54 C3 1F 7E */	srwi r3, r6, 29
/* 802BE418 002879D8  38 03 FF FE */	addi r0, r3, -0x2
/* 802BE41C 002879DC  28 00 00 01 */	cmplwi r0, 0x1
/* 802BE420 002879E0  41 81 00 5C */	bgt .L_802BE47C
/* 802BE424 002879E4  80 01 00 08 */	lwz r0, 0x8(r1)
/* 802BE428 002879E8  80 BE 00 18 */	lwz r5, 0x18(r30)
/* 802BE42C 002879EC  7C 00 28 40 */	cmplw r0, r5
/* 802BE430 002879F0  40 80 00 10 */	bge .L_802BE440
/* 802BE434 002879F4  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 802BE438 002879F8  7C 00 18 40 */	cmplw r0, r3
/* 802BE43C 002879FC  40 80 00 14 */	bge .L_802BE450
.L_802BE440:
/* 802BE440 00287A00  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 802BE444 00287A04  54 00 00 FE */	clrlwi r0, r0, 3
/* 802BE448 00287A08  90 1E 00 08 */	stw r0, 0x8(r30)
/* 802BE44C 00287A0C  48 00 00 3C */	b .L_802BE488
.L_802BE450:
/* 802BE450 00287A10  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 802BE454 00287A14  7C 63 00 50 */	subf r3, r3, r0
/* 802BE458 00287A18  38 00 00 02 */	li r0, 0x2
/* 802BE45C 00287A1C  7C 64 1A 14 */	add r3, r4, r3
/* 802BE460 00287A20  90 7E 00 24 */	stw r3, 0x24(r30)
/* 802BE464 00287A24  50 06 E8 04 */	rlwimi r6, r0, 29, 0, 2
/* 802BE468 00287A28  80 01 00 08 */	lwz r0, 0x8(r1)
/* 802BE46C 00287A2C  7C 00 28 50 */	subf r0, r0, r5
/* 802BE470 00287A30  90 1E 00 28 */	stw r0, 0x28(r30)
/* 802BE474 00287A34  90 DE 00 08 */	stw r6, 0x8(r30)
/* 802BE478 00287A38  48 00 00 10 */	b .L_802BE488
.L_802BE47C:
/* 802BE47C 00287A3C  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 802BE480 00287A40  54 00 00 FE */	clrlwi r0, r0, 3
/* 802BE484 00287A44  90 1E 00 08 */	stw r0, 0x8(r30)
.L_802BE488:
/* 802BE488 00287A48  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 802BE48C 00287A4C  54 00 1F 7F */	srwi. r0, r0, 29
/* 802BE490 00287A50  40 82 00 64 */	bne .L_802BE4F4
/* 802BE494 00287A54  81 9E 00 38 */	lwz r12, 0x38(r30)
/* 802BE498 00287A58  2C 0C 00 00 */	cmpwi r12, 0x0
/* 802BE49C 00287A5C  41 82 00 44 */	beq .L_802BE4E0
/* 802BE4A0 00287A60  7F E5 FB 78 */	mr r5, r31
/* 802BE4A4 00287A64  38 81 00 08 */	addi r4, r1, 0x8
/* 802BE4A8 00287A68  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 802BE4AC 00287A6C  80 DE 00 48 */	lwz r6, 0x48(r30)
/* 802BE4B0 00287A70  7D 89 03 A6 */	mtctr r12
/* 802BE4B4 00287A74  4E 80 04 21 */	bctrl
/* 802BE4B8 00287A78  2C 03 00 00 */	cmpwi r3, 0x0
/* 802BE4BC 00287A7C  41 82 00 24 */	beq .L_802BE4E0
/* 802BE4C0 00287A80  38 80 00 00 */	li r4, 0x0
/* 802BE4C4 00287A84  90 9E 00 28 */	stw r4, 0x28(r30)
/* 802BE4C8 00287A88  38 00 00 01 */	li r0, 0x1
/* 802BE4CC 00287A8C  38 60 FF FF */	li r3, -0x1
/* 802BE4D0 00287A90  98 1E 00 0A */	stb r0, 0xa(r30)
/* 802BE4D4 00287A94  38 00 00 28 */	li r0, 0x28
/* 802BE4D8 00287A98  90 0D B3 B0 */	stw r0, errno@sda21(r13)
/* 802BE4DC 00287A9C  48 00 00 1C */	b .L_802BE4F8
.L_802BE4E0:
/* 802BE4E0 00287AA0  38 60 00 00 */	li r3, 0x0
/* 802BE4E4 00287AA4  98 7E 00 09 */	stb r3, 0x9(r30)
/* 802BE4E8 00287AA8  80 01 00 08 */	lwz r0, 0x8(r1)
/* 802BE4EC 00287AAC  90 1E 00 18 */	stw r0, 0x18(r30)
/* 802BE4F0 00287AB0  90 7E 00 28 */	stw r3, 0x28(r30)
.L_802BE4F4:
/* 802BE4F4 00287AB4  38 60 00 00 */	li r3, 0x0
.L_802BE4F8:
/* 802BE4F8 00287AB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BE4FC 00287ABC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BE500 00287AC0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BE504 00287AC4  7C 08 03 A6 */	mtlr r0
/* 802BE508 00287AC8  38 21 00 20 */	addi r1, r1, 0x20
/* 802BE50C 00287ACC  4E 80 00 20 */	blr
.endfn _fseek
