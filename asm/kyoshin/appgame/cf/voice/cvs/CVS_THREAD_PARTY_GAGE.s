.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_802A8174, global
/* 802A8174 00271734  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802A8178 00271738  7C 08 02 A6 */	mflr r0
/* 802A817C 0027173C  7C 03 20 00 */	cmpw r3, r4
/* 802A8180 00271740  90 01 00 44 */	stw r0, 0x44(r1)
/* 802A8184 00271744  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 802A8188 00271748  7C 3F 0B 78 */	mr r31, r1
/* 802A818C 0027174C  7C 7C 1B 78 */	mr r28, r3
/* 802A8190 00271750  7C 9B 23 78 */	mr r27, r4
/* 802A8194 00271754  41 81 00 0C */	bgt .L_802A81A0
/* 802A8198 00271758  38 60 00 00 */	li r3, 0x0
/* 802A819C 0027175C  48 00 01 1C */	b .L_802A82B8
.L_802A81A0:
/* 802A81A0 00271760  38 60 00 00 */	li r3, 0x0
/* 802A81A4 00271764  4B FF F7 69 */	bl func_802A790C
/* 802A81A8 00271768  2C 03 00 02 */	cmpwi r3, 0x2
/* 802A81AC 0027176C  40 80 00 0C */	bge .L_802A81B8
/* 802A81B0 00271770  38 60 00 00 */	li r3, 0x0
/* 802A81B4 00271774  48 00 01 04 */	b .L_802A82B8
.L_802A81B8:
/* 802A81B8 00271778  2C 1C 01 2C */	cmpwi r28, 0x12c
/* 802A81BC 0027177C  41 80 00 0C */	blt .L_802A81C8
/* 802A81C0 00271780  3B A0 00 02 */	li r29, 0x2
/* 802A81C4 00271784  48 00 00 3C */	b .L_802A8200
.L_802A81C8:
/* 802A81C8 00271788  2C 1B 00 C8 */	cmpwi r27, 0xc8
/* 802A81CC 0027178C  40 80 00 14 */	bge .L_802A81E0
/* 802A81D0 00271790  2C 1C 00 C8 */	cmpwi r28, 0xc8
/* 802A81D4 00271794  41 80 00 0C */	blt .L_802A81E0
/* 802A81D8 00271798  3B A0 00 01 */	li r29, 0x1
/* 802A81DC 0027179C  48 00 00 24 */	b .L_802A8200
.L_802A81E0:
/* 802A81E0 002717A0  2C 1B 00 64 */	cmpwi r27, 0x64
/* 802A81E4 002717A4  40 80 00 14 */	bge .L_802A81F8
/* 802A81E8 002717A8  2C 1C 00 64 */	cmpwi r28, 0x64
/* 802A81EC 002717AC  41 80 00 0C */	blt .L_802A81F8
/* 802A81F0 002717B0  3B A0 00 00 */	li r29, 0x0
/* 802A81F4 002717B4  48 00 00 0C */	b .L_802A8200
.L_802A81F8:
/* 802A81F8 002717B8  38 60 00 00 */	li r3, 0x0
/* 802A81FC 002717BC  48 00 00 BC */	b .L_802A82B8
.L_802A8200:
/* 802A8200 002717C0  38 60 00 00 */	li r3, 0x0
/* 802A8204 002717C4  4B FF F7 95 */	bl func_802A7998
/* 802A8208 002717C8  7C 7C 1B 78 */	mr r28, r3
/* 802A820C 002717CC  4B FF F7 8D */	bl func_802A7998
/* 802A8210 002717D0  2C 1C 00 00 */	cmpwi r28, 0x0
/* 802A8214 002717D4  7C 7E 1B 78 */	mr r30, r3
/* 802A8218 002717D8  40 82 00 0C */	bne .L_802A8224
/* 802A821C 002717DC  38 60 00 00 */	li r3, 0x0
/* 802A8220 002717E0  48 00 00 98 */	b .L_802A82B8
.L_802A8224:
/* 802A8224 002717E4  38 60 00 8C */	li r3, 0x8c
/* 802A8228 002717E8  38 80 00 01 */	li r4, 0x1
/* 802A822C 002717EC  4B FF B0 E1 */	bl func_802A330C
/* 802A8230 002717F0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A8234 002717F4  40 82 00 0C */	bne .L_802A8240
/* 802A8238 002717F8  38 60 00 00 */	li r3, 0x0
/* 802A823C 002717FC  48 00 00 7C */	b .L_802A82B8
.L_802A8240:
/* 802A8240 00271800  38 60 00 2C */	li r3, 0x2c
/* 802A8244 00271804  4B FF B2 A1 */	bl func_802A34E4
/* 802A8248 00271808  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A824C 0027180C  7C 7B 1B 78 */	mr r27, r3
/* 802A8250 00271810  40 82 00 0C */	bne .L_802A825C
/* 802A8254 00271814  38 60 00 00 */	li r3, 0x0
/* 802A8258 00271818  48 00 00 60 */	b .L_802A82B8
.L_802A825C:
/* 802A825C 0027181C  41 82 00 38 */	beq .L_802A8294
/* 802A8260 00271820  90 3F 00 1C */	stw r1, 0x1c(r31)
/* 802A8264 00271824  4B FF B8 1D */	bl func_802A3A80
/* 802A8268 00271828  3C 60 80 54 */	lis r3, __vt__cf_CVS_THREAD_PARTY_GAGE@ha
/* 802A826C 0027182C  38 63 D3 FC */	addi r3, r3, __vt__cf_CVS_THREAD_PARTY_GAGE@l
/* 802A8270 00271830  90 7B 00 1C */	stw r3, 0x1c(r27)
/* 802A8274 00271834  93 9B 00 20 */	stw r28, 0x20(r27)
/* 802A8278 00271838  93 DB 00 24 */	stw r30, 0x24(r27)
/* 802A827C 0027183C  93 BB 00 28 */	stw r29, 0x28(r27)
/* 802A8280 00271840  48 00 00 14 */	b .L_802A8294
/* 802A8284 00271844  38 60 00 00 */	li r3, 0x0
/* 802A8288 00271848  38 80 00 00 */	li r4, 0x0
/* 802A828C 0027184C  38 A0 00 00 */	li r5, 0x0
/* 802A8290 00271850  48 01 39 2D */	bl __throw
.L_802A8294:
/* 802A8294 00271854  3C A0 80 54 */	lis r5, lbl_8053D3D8@ha
/* 802A8298 00271858  7F 63 DB 78 */	mr r3, r27
/* 802A829C 0027185C  38 A5 D3 D8 */	addi r5, r5, lbl_8053D3D8@l
/* 802A82A0 00271860  80 05 00 04 */	lwz r0, 0x4(r5)
/* 802A82A4 00271864  80 85 00 00 */	lwz r4, 0x0(r5)
/* 802A82A8 00271868  90 9B 00 00 */	stw r4, 0x0(r27)
/* 802A82AC 0027186C  90 1B 00 04 */	stw r0, 0x4(r27)
/* 802A82B0 00271870  80 05 00 08 */	lwz r0, 0x8(r5)
/* 802A82B4 00271874  90 1B 00 08 */	stw r0, 0x8(r27)
.L_802A82B8:
/* 802A82B8 00271878  7F EA FB 78 */	mr r10, r31
/* 802A82BC 0027187C  BB 6A 00 2C */	lmw r27, 0x2c(r10)
/* 802A82C0 00271880  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802A82C4 00271884  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802A82C8 00271888  7D 41 53 78 */	mr r1, r10
/* 802A82CC 0027188C  7C 08 03 A6 */	mtlr r0
/* 802A82D0 00271890  4E 80 00 20 */	blr
.endfn func_802A8174

.fn func_802A82D4, global
/* 802A82D4 00271894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A82D8 00271898  7C 08 02 A6 */	mflr r0
/* 802A82DC 0027189C  3C A0 80 54 */	lis r5, lbl_8053D3E4@ha
/* 802A82E0 002718A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A82E4 002718A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A82E8 002718A8  7C 7F 1B 78 */	mr r31, r3
/* 802A82EC 002718AC  84 85 D3 E4 */	lwzu r4, lbl_8053D3E4@l(r5)
/* 802A82F0 002718B0  80 C3 00 20 */	lwz r6, 0x20(r3)
/* 802A82F4 002718B4  80 05 00 04 */	lwz r0, 0x4(r5)
/* 802A82F8 002718B8  90 03 00 04 */	stw r0, 0x4(r3)
/* 802A82FC 002718BC  2C 06 00 00 */	cmpwi r6, 0x0
/* 802A8300 002718C0  90 83 00 00 */	stw r4, 0x0(r3)
/* 802A8304 002718C4  80 05 00 08 */	lwz r0, 0x8(r5)
/* 802A8308 002718C8  90 03 00 08 */	stw r0, 0x8(r3)
/* 802A830C 002718CC  41 82 00 98 */	beq .L_802A83A4
/* 802A8310 002718D0  81 86 00 00 */	lwz r12, 0x0(r6)
/* 802A8314 002718D4  7C C3 33 78 */	mr r3, r6
/* 802A8318 002718D8  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A831C 002718DC  7D 89 03 A6 */	mtctr r12
/* 802A8320 002718E0  4E 80 04 21 */	bctrl
/* 802A8324 002718E4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A8328 002718E8  40 82 00 7C */	bne .L_802A83A4
/* 802A832C 002718EC  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 802A8330 002718F0  38 A0 FF FF */	li r5, -0x1
/* 802A8334 002718F4  2C 00 00 00 */	cmpwi r0, 0x0
/* 802A8338 002718F8  41 82 00 18 */	beq .L_802A8350
/* 802A833C 002718FC  2C 00 00 01 */	cmpwi r0, 0x1
/* 802A8340 00271900  41 82 00 18 */	beq .L_802A8358
/* 802A8344 00271904  2C 00 00 02 */	cmpwi r0, 0x2
/* 802A8348 00271908  41 82 00 28 */	beq .L_802A8370
/* 802A834C 0027190C  48 00 00 38 */	b .L_802A8384
.L_802A8350:
/* 802A8350 00271910  38 A0 06 41 */	li r5, 0x641
/* 802A8354 00271914  48 00 00 30 */	b .L_802A8384
.L_802A8358:
/* 802A8358 00271918  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802A835C 0027191C  4B FF FA 9D */	bl func_802A7DF8
/* 802A8360 00271920  7C 60 00 34 */	cntlzw r0, r3
/* 802A8364 00271924  54 03 D9 7E */	srwi r3, r0, 5
/* 802A8368 00271928  38 A3 06 41 */	addi r5, r3, 0x641
/* 802A836C 0027192C  48 00 00 18 */	b .L_802A8384
.L_802A8370:
/* 802A8370 00271930  38 60 00 02 */	li r3, 0x2
/* 802A8374 00271934  48 18 DB 89 */	bl mtRand__2mlFi
/* 802A8378 00271938  54 60 10 3A */	slwi r0, r3, 2
/* 802A837C 0027193C  38 6D 94 90 */	addi r3, r13, lbl_80665610@sda21
/* 802A8380 00271940  7C A3 00 2E */	lwzx r5, r3, r0
.L_802A8384:
/* 802A8384 00271944  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802A8388 00271948  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A838C 0027194C  41 82 00 08 */	beq .L_802A8394
/* 802A8390 00271950  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A8394:
/* 802A8394 00271954  7F E3 FB 78 */	mr r3, r31
/* 802A8398 00271958  4B FF B8 AD */	bl func_802A3C44
/* 802A839C 0027195C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A83A0 00271960  40 82 00 18 */	bne .L_802A83B8
.L_802A83A4:
/* 802A83A4 00271964  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A83A8 00271968  7F E3 FB 78 */	mr r3, r31
/* 802A83AC 0027196C  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802A83B0 00271970  7D 89 03 A6 */	mtctr r12
/* 802A83B4 00271974  4E 80 04 21 */	bctrl
.L_802A83B8:
/* 802A83B8 00271978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A83BC 0027197C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A83C0 00271980  7C 08 03 A6 */	mtlr r0
/* 802A83C4 00271984  38 21 00 10 */	addi r1, r1, 0x10
/* 802A83C8 00271988  4E 80 00 20 */	blr
.endfn func_802A82D4

.fn func_802A83CC, global
/* 802A83CC 0027198C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A83D0 00271990  7C 08 02 A6 */	mflr r0
/* 802A83D4 00271994  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A83D8 00271998  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A83DC 0027199C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A83E0 002719A0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802A83E4 002719A4  7C 7D 1B 78 */	mr r29, r3
/* 802A83E8 002719A8  4B FF BA A1 */	bl func_802A3E88
/* 802A83EC 002719AC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A83F0 002719B0  40 82 01 54 */	bne .L_802A8544
/* 802A83F4 002719B4  3C 80 80 54 */	lis r4, lbl_8053D3F0@ha
/* 802A83F8 002719B8  80 1D 00 20 */	lwz r0, 0x20(r29)
/* 802A83FC 002719BC  84 64 D3 F0 */	lwzu r3, lbl_8053D3F0@l(r4)
/* 802A8400 002719C0  2C 00 00 00 */	cmpwi r0, 0x0
/* 802A8404 002719C4  80 04 00 04 */	lwz r0, 0x4(r4)
/* 802A8408 002719C8  90 1D 00 04 */	stw r0, 0x4(r29)
/* 802A840C 002719CC  90 7D 00 00 */	stw r3, 0x0(r29)
/* 802A8410 002719D0  80 04 00 08 */	lwz r0, 0x8(r4)
/* 802A8414 002719D4  90 1D 00 08 */	stw r0, 0x8(r29)
/* 802A8418 002719D8  41 82 01 18 */	beq .L_802A8530
/* 802A841C 002719DC  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 802A8420 002719E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A8424 002719E4  41 82 01 0C */	beq .L_802A8530
/* 802A8428 002719E8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A842C 002719EC  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A8430 002719F0  7D 89 03 A6 */	mtctr r12
/* 802A8434 002719F4  4E 80 04 21 */	bctrl
/* 802A8438 002719F8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A843C 002719FC  40 82 00 F4 */	bne .L_802A8530
/* 802A8440 00271A00  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802A8444 00271A04  4B FF F3 A5 */	bl func_802A77E8
/* 802A8448 00271A08  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 802A844C 00271A0C  7C 7F 1B 78 */	mr r31, r3
/* 802A8450 00271A10  3B C0 FF FF */	li r30, -0x1
/* 802A8454 00271A14  2C 00 00 00 */	cmpwi r0, 0x0
/* 802A8458 00271A18  41 82 00 18 */	beq .L_802A8470
/* 802A845C 00271A1C  2C 00 00 01 */	cmpwi r0, 0x1
/* 802A8460 00271A20  41 82 00 24 */	beq .L_802A8484
/* 802A8464 00271A24  2C 00 00 02 */	cmpwi r0, 0x2
/* 802A8468 00271A28  41 82 00 30 */	beq .L_802A8498
/* 802A846C 00271A2C  48 00 00 38 */	b .L_802A84A4
.L_802A8470:
/* 802A8470 00271A30  4B FF F3 E1 */	bl func_802A7850
/* 802A8474 00271A34  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A8478 00271A38  41 82 00 2C */	beq .L_802A84A4
/* 802A847C 00271A3C  3B DF 06 43 */	addi r30, r31, 0x643
/* 802A8480 00271A40  48 00 00 24 */	b .L_802A84A4
.L_802A8484:
/* 802A8484 00271A44  4B FF F3 CD */	bl func_802A7850
/* 802A8488 00271A48  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A848C 00271A4C  41 82 00 18 */	beq .L_802A84A4
/* 802A8490 00271A50  3B DF 06 4A */	addi r30, r31, 0x64a
/* 802A8494 00271A54  48 00 00 10 */	b .L_802A84A4
.L_802A8498:
/* 802A8498 00271A58  38 60 00 03 */	li r3, 0x3
/* 802A849C 00271A5C  48 18 DA 61 */	bl mtRand__2mlFi
/* 802A84A0 00271A60  3B C3 06 5B */	addi r30, r3, 0x65b
.L_802A84A4:
/* 802A84A4 00271A64  2C 1E 06 49 */	cmpwi r30, 0x649
/* 802A84A8 00271A68  40 82 00 1C */	bne .L_802A84C4
/* 802A84AC 00271A6C  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 802A84B0 00271A70  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 802A84B4 00271A74  4B FF F6 DD */	bl func_802A7B90
/* 802A84B8 00271A78  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A84BC 00271A7C  41 82 00 08 */	beq .L_802A84C4
/* 802A84C0 00271A80  3B C0 06 5B */	li r30, 0x65b
.L_802A84C4:
/* 802A84C4 00271A84  2C 1E 06 57 */	cmpwi r30, 0x657
/* 802A84C8 00271A88  40 82 00 1C */	bne .L_802A84E4
/* 802A84CC 00271A8C  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 802A84D0 00271A90  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 802A84D4 00271A94  4B FF F6 BD */	bl func_802A7B90
/* 802A84D8 00271A98  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A84DC 00271A9C  41 82 00 08 */	beq .L_802A84E4
/* 802A84E0 00271AA0  3B C0 06 5D */	li r30, 0x65d
.L_802A84E4:
/* 802A84E4 00271AA4  2C 1E 06 4D */	cmpwi r30, 0x64d
/* 802A84E8 00271AA8  40 82 00 1C */	bne .L_802A8504
/* 802A84EC 00271AAC  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 802A84F0 00271AB0  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 802A84F4 00271AB4  4B FF F7 D1 */	bl func_802A7CC4
/* 802A84F8 00271AB8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A84FC 00271ABC  41 82 00 08 */	beq .L_802A8504
/* 802A8500 00271AC0  3B C0 05 E8 */	li r30, 0x5e8
.L_802A8504:
/* 802A8504 00271AC4  2C 1E 00 00 */	cmpwi r30, 0x0
/* 802A8508 00271AC8  40 81 00 28 */	ble .L_802A8530
/* 802A850C 00271ACC  80 9D 00 24 */	lwz r4, 0x24(r29)
/* 802A8510 00271AD0  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A8514 00271AD4  41 82 00 08 */	beq .L_802A851C
/* 802A8518 00271AD8  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A851C:
/* 802A851C 00271ADC  7F A3 EB 78 */	mr r3, r29
/* 802A8520 00271AE0  7F C5 F3 78 */	mr r5, r30
/* 802A8524 00271AE4  4B FF B7 21 */	bl func_802A3C44
/* 802A8528 00271AE8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A852C 00271AEC  40 82 00 18 */	bne .L_802A8544
.L_802A8530:
/* 802A8530 00271AF0  81 9D 00 1C */	lwz r12, 0x1c(r29)
/* 802A8534 00271AF4  7F A3 EB 78 */	mr r3, r29
/* 802A8538 00271AF8  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802A853C 00271AFC  7D 89 03 A6 */	mtctr r12
/* 802A8540 00271B00  4E 80 04 21 */	bctrl
.L_802A8544:
/* 802A8544 00271B04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A8548 00271B08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A854C 00271B0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A8550 00271B10  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802A8554 00271B14  7C 08 03 A6 */	mtlr r0
/* 802A8558 00271B18  38 21 00 20 */	addi r1, r1, 0x20
/* 802A855C 00271B1C  4E 80 00 20 */	blr
.endfn func_802A83CC

.fn func_802A8560, global
/* 802A8560 00271B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8564 00271B24  7C 08 02 A6 */	mflr r0
/* 802A8568 00271B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A856C 00271B2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8570 00271B30  7C 7F 1B 78 */	mr r31, r3
/* 802A8574 00271B34  4B FF B9 15 */	bl func_802A3E88
/* 802A8578 00271B38  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A857C 00271B3C  40 82 00 18 */	bne .L_802A8594
/* 802A8580 00271B40  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A8584 00271B44  7F E3 FB 78 */	mr r3, r31
/* 802A8588 00271B48  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802A858C 00271B4C  7D 89 03 A6 */	mtctr r12
/* 802A8590 00271B50  4E 80 04 21 */	bctrl
.L_802A8594:
/* 802A8594 00271B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8598 00271B58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A859C 00271B5C  7C 08 03 A6 */	mtlr r0
/* 802A85A0 00271B60  38 21 00 10 */	addi r1, r1, 0x10
/* 802A85A4 00271B64  4E 80 00 20 */	blr
.endfn func_802A8560

.fn func_802A85A8, global
/* 802A85A8 00271B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A85AC 00271B6C  7C 08 02 A6 */	mflr r0
/* 802A85B0 00271B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A85B4 00271B74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A85B8 00271B78  7C 9F 23 78 */	mr r31, r4
/* 802A85BC 00271B7C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A85C0 00271B80  7C 7E 1B 78 */	mr r30, r3
/* 802A85C4 00271B84  4B FF B6 29 */	bl func_802A3BEC
/* 802A85C8 00271B88  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 802A85CC 00271B8C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A85D0 00271B90  41 82 00 08 */	beq .L_802A85D8
/* 802A85D4 00271B94  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A85D8:
/* 802A85D8 00271B98  7C 03 F8 40 */	cmplw r3, r31
/* 802A85DC 00271B9C  40 82 00 0C */	bne .L_802A85E8
/* 802A85E0 00271BA0  38 00 00 00 */	li r0, 0x0
/* 802A85E4 00271BA4  90 1E 00 20 */	stw r0, 0x20(r30)
.L_802A85E8:
/* 802A85E8 00271BA8  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 802A85EC 00271BAC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A85F0 00271BB0  41 82 00 08 */	beq .L_802A85F8
/* 802A85F4 00271BB4  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A85F8:
/* 802A85F8 00271BB8  7C 03 F8 40 */	cmplw r3, r31
/* 802A85FC 00271BBC  40 82 00 0C */	bne .L_802A8608
/* 802A8600 00271BC0  38 00 00 00 */	li r0, 0x0
/* 802A8604 00271BC4  90 1E 00 24 */	stw r0, 0x24(r30)
.L_802A8608:
/* 802A8608 00271BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A860C 00271BCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A8610 00271BD0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A8614 00271BD4  7C 08 03 A6 */	mtlr r0
/* 802A8618 00271BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 802A861C 00271BDC  4E 80 00 20 */	blr
.endfn func_802A85A8

.fn func_802A8620, global
/* 802A8620 00271BE0  38 60 00 8C */	li r3, 0x8c
/* 802A8624 00271BE4  4E 80 00 20 */	blr
.endfn func_802A8620

.fn func_802A8628, global
/* 802A8628 00271BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A862C 00271BEC  7C 08 02 A6 */	mflr r0
/* 802A8630 00271BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8634 00271BF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8638 00271BF8  7C 7F 1B 78 */	mr r31, r3
/* 802A863C 00271BFC  80 03 3F 00 */	lwz r0, 0x3f00(r3)
/* 802A8640 00271C00  54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 802A8644 00271C04  40 82 00 0C */	bne .L_802A8650
/* 802A8648 00271C08  38 60 00 00 */	li r3, 0x0
/* 802A864C 00271C0C  48 00 00 6C */	b .L_802A86B8
.L_802A8650:
/* 802A8650 00271C10  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A8654 00271C14  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A8658 00271C18  7D 89 03 A6 */	mtctr r12
/* 802A865C 00271C1C  4E 80 04 21 */	bctrl
/* 802A8660 00271C20  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A8664 00271C24  41 82 00 0C */	beq .L_802A8670
/* 802A8668 00271C28  38 60 00 00 */	li r3, 0x0
/* 802A866C 00271C2C  48 00 00 4C */	b .L_802A86B8
.L_802A8670:
/* 802A8670 00271C30  38 60 00 C8 */	li r3, 0xc8
/* 802A8674 00271C34  38 80 00 01 */	li r4, 0x1
/* 802A8678 00271C38  4B FF AC 95 */	bl func_802A330C
/* 802A867C 00271C3C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A8680 00271C40  40 82 00 0C */	bne .L_802A868C
/* 802A8684 00271C44  38 60 00 00 */	li r3, 0x0
/* 802A8688 00271C48  48 00 00 30 */	b .L_802A86B8
.L_802A868C:
/* 802A868C 00271C4C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802A8690 00271C50  41 82 00 08 */	beq .L_802A8698
/* 802A8694 00271C54  3B FF 3E 9C */	addi r31, r31, 0x3e9c
.L_802A8698:
/* 802A8698 00271C58  38 60 00 02 */	li r3, 0x2
/* 802A869C 00271C5C  48 18 D8 61 */	bl mtRand__2mlFi
/* 802A86A0 00271C60  7C 64 1B 78 */	mr r4, r3
/* 802A86A4 00271C64  7F E3 FB 78 */	mr r3, r31
/* 802A86A8 00271C68  38 84 03 85 */	addi r4, r4, 0x385
/* 802A86AC 00271C6C  38 A0 00 C8 */	li r5, 0xc8
/* 802A86B0 00271C70  4B FF B6 A5 */	bl func_802A3D54
/* 802A86B4 00271C74  38 60 00 00 */	li r3, 0x0
.L_802A86B8:
/* 802A86B8 00271C78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A86BC 00271C7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A86C0 00271C80  7C 08 03 A6 */	mtlr r0
/* 802A86C4 00271C84  38 21 00 10 */	addi r1, r1, 0x10
/* 802A86C8 00271C88  4E 80 00 20 */	blr
.endfn func_802A8628

# 0x8050BDE0 - 0x8050BE00
.rodata
.balign 8

.global cf_CVS_THREAD_PARTY_GAGE_typestr
cf_CVS_THREAD_PARTY_GAGE_typestr:
	.4byte 0x63663A3A
	.4byte 0x4356535F
	.4byte 0x54485245
	.4byte 0x41445F50
	.4byte 0x41525459
	.4byte 0x5F474147
	.4byte 0x45000000
	.4byte 0x00000000

# 0x8053D3D8 - 0x8053D428
.data
.balign 8
.global lbl_8053D3D8
lbl_8053D3D8:
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte func_802A82D4
.global lbl_8053D3E4
lbl_8053D3E4:
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte func_802A83CC
.global lbl_8053D3F0
lbl_8053D3F0:
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte func_802A8560

.global __vt__cf_CVS_THREAD_PARTY_GAGE
__vt__cf_CVS_THREAD_PARTY_GAGE:
	.4byte __RTTI__cf_CVS_THREAD_PARTY_GAGE
	.4byte 0x00000000
	.4byte func_802A3B50
	.4byte func_802A85A8
	.4byte func_802A8620
	.4byte func_802A1EA0
	.4byte func_802A3740

.global cf_CVS_THREAD_PARTY_GAGE_hierarchy
cf_CVS_THREAD_PARTY_GAGE_hierarchy:
	.4byte __RTTI__cf_CVS_THREAD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

# 0x80665610 - 0x80665620
.section .sdata, "wa"
.balign 8
.global lbl_80665610
lbl_80665610:
	.4byte 0x00000659
	.4byte 0x0000065A

.global __RTTI__cf_CVS_THREAD_PARTY_GAGE
__RTTI__cf_CVS_THREAD_PARTY_GAGE:
	.4byte cf_CVS_THREAD_PARTY_GAGE_typestr
	.4byte cf_CVS_THREAD_PARTY_GAGE_hierarchy

# 0x8001ADE8 - 0x8001AE3C
.section extab, "a"
.balign 4

.obj "@etb_8001ADE8", local
.hidden "@etb_8001ADE8"
	.4byte 0x28180000
	.4byte 0x000000F4
	.4byte 0x00000018
	.4byte 0x00000120
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x90000000
	.4byte 0x00000000
	.4byte 0x00000110
	.4byte 0x00000008
	.4byte 0x8D000008
.endobj "@etb_8001ADE8"

.obj "@etb_8001AE14", local
.hidden "@etb_8001AE14"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001AE14"

.obj "@etb_8001AE1C", local
.hidden "@etb_8001AE1C"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001AE1C"

.obj "@etb_8001AE24", local
.hidden "@etb_8001AE24"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001AE24"

.obj "@etb_8001AE2C", local
.hidden "@etb_8001AE2C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001AE2C"

.obj "@etb_8001AE34", local
.hidden "@etb_8001AE34"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001AE34"

# 0x80032C9C - 0x80032CE4
.section extabindex, "a"
.balign 4

.obj "@eti_80032C9C", local
.hidden "@eti_80032C9C"
	.4byte func_802A8174
	.4byte 0x00000160
	.4byte "@etb_8001ADE8"
.endobj "@eti_80032C9C"

.obj "@eti_80032CA8", local
.hidden "@eti_80032CA8"
	.4byte func_802A82D4
	.4byte 0x000000F8
	.4byte "@etb_8001AE14"
.endobj "@eti_80032CA8"

.obj "@eti_80032CB4", local
.hidden "@eti_80032CB4"
	.4byte func_802A83CC
	.4byte 0x00000194
	.4byte "@etb_8001AE1C"
.endobj "@eti_80032CB4"

.obj "@eti_80032CC0", local
.hidden "@eti_80032CC0"
	.4byte func_802A8560
	.4byte 0x00000048
	.4byte "@etb_8001AE24"
.endobj "@eti_80032CC0"

.obj "@eti_80032CCC", local
.hidden "@eti_80032CCC"
	.4byte func_802A85A8
	.4byte 0x00000078
	.4byte "@etb_8001AE2C"
.endobj "@eti_80032CCC"

.obj "@eti_80032CD8", local
.hidden "@eti_80032CD8"
	.4byte func_802A8628
	.4byte 0x000000A4
	.4byte "@etb_8001AE34"
.endobj "@eti_80032CD8"
