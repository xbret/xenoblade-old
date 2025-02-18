.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn MWSFD_SetSstCh, global
/* 803A31C0 0036C780  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A31C4 0036C784  7C 08 02 A6 */	mflr r0
/* 803A31C8 0036C788  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A31CC 0036C78C  1C 04 00 28 */	mulli r0, r4, 0x28
/* 803A31D0 0036C790  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A31D4 0036C794  7F E3 02 14 */	add r31, r3, r0
/* 803A31D8 0036C798  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A31DC 0036C79C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803A31E0 0036C7A0  7C BD 2B 78 */	mr r29, r5
/* 803A31E4 0036C7A4  93 81 00 10 */	stw r28, 0x10(r1)
/* 803A31E8 0036C7A8  7C 7C 1B 78 */	mr r28, r3
/* 803A31EC 0036C7AC  80 1F 05 E8 */	lwz r0, 0x5e8(r31)
/* 803A31F0 0036C7B0  83 DF 05 DC */	lwz r30, 0x5dc(r31)
/* 803A31F4 0036C7B4  2C 00 FF FF */	cmpwi r0, -1
/* 803A31F8 0036C7B8  80 9F 05 E4 */	lwz r4, 0x5e4(r31)
/* 803A31FC 0036C7BC  41 82 00 24 */	beq .L_803A3220
/* 803A3200 0036C7C0  80 63 00 48 */	lwz r3, 0x48(r3)
/* 803A3204 0036C7C4  38 84 00 C0 */	addi r4, r4, 0xc0
/* 803A3208 0036C7C8  38 A0 00 00 */	li r5, 0
/* 803A320C 0036C7CC  38 C0 00 00 */	li r6, 0
/* 803A3210 0036C7D0  38 E0 00 00 */	li r7, 0
/* 803A3214 0036C7D4  48 01 DC DD */	bl SFD_SetElementOutSj
/* 803A3218 0036C7D8  38 00 FF FF */	li r0, -1
/* 803A321C 0036C7DC  90 1F 05 E8 */	stw r0, 0x5e8(r31)
.L_803A3220:
/* 803A3220 0036C7E0  80 1F 05 E0 */	lwz r0, 0x5e0(r31)
/* 803A3224 0036C7E4  2C 00 00 01 */	cmpwi r0, 1
/* 803A3228 0036C7E8  40 82 00 20 */	bne .L_803A3248
/* 803A322C 0036C7EC  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 803A3230 0036C7F0  7F C5 F3 78 */	mr r5, r30
/* 803A3234 0036C7F4  38 9D 00 C0 */	addi r4, r29, 0xc0
/* 803A3238 0036C7F8  38 C0 00 00 */	li r6, 0
/* 803A323C 0036C7FC  38 E0 00 00 */	li r7, 0
/* 803A3240 0036C800  48 01 DC B1 */	bl SFD_SetElementOutSj
/* 803A3244 0036C804  93 BF 05 E8 */	stw r29, 0x5e8(r31)
.L_803A3248:
/* 803A3248 0036C808  93 BF 05 E4 */	stw r29, 0x5e4(r31)
/* 803A324C 0036C80C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A3250 0036C810  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A3254 0036C814  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803A3258 0036C818  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803A325C 0036C81C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A3260 0036C820  7C 08 03 A6 */	mtlr r0
/* 803A3264 0036C824  38 21 00 20 */	addi r1, r1, 0x20
/* 803A3268 0036C828  4E 80 00 20 */	blr 
.endfn MWSFD_SetSstCh

.fn criware_803A326C, global
/* 803A326C 0036C82C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A3270 0036C830  7C 08 02 A6 */	mflr r0
/* 803A3274 0036C834  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A3278 0036C838  1C 04 00 28 */	mulli r0, r4, 0x28
/* 803A327C 0036C83C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A3280 0036C840  7F E3 02 14 */	add r31, r3, r0
/* 803A3284 0036C844  80 1F 05 E8 */	lwz r0, 0x5e8(r31)
/* 803A3288 0036C848  80 9F 05 E4 */	lwz r4, 0x5e4(r31)
/* 803A328C 0036C84C  2C 00 FF FF */	cmpwi r0, -1
/* 803A3290 0036C850  41 82 00 24 */	beq .L_803A32B4
/* 803A3294 0036C854  80 63 00 48 */	lwz r3, 0x48(r3)
/* 803A3298 0036C858  38 84 00 C0 */	addi r4, r4, 0xc0
/* 803A329C 0036C85C  38 A0 00 00 */	li r5, 0
/* 803A32A0 0036C860  38 C0 00 00 */	li r6, 0
/* 803A32A4 0036C864  38 E0 00 00 */	li r7, 0
/* 803A32A8 0036C868  48 01 DC 49 */	bl SFD_SetElementOutSj
/* 803A32AC 0036C86C  38 00 FF FF */	li r0, -1
/* 803A32B0 0036C870  90 1F 05 E8 */	stw r0, 0x5e8(r31)
.L_803A32B4:
/* 803A32B4 0036C874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A32B8 0036C878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A32BC 0036C87C  7C 08 03 A6 */	mtlr r0
/* 803A32C0 0036C880  38 21 00 10 */	addi r1, r1, 0x10
/* 803A32C4 0036C884  4E 80 00 20 */	blr 
.endfn criware_803A326C

.fn mwPlyGetSstCoreHnByIdx, global
/* 803A32C8 0036C888  1C 04 00 28 */	mulli r0, r4, 0x28
/* 803A32CC 0036C88C  7C 63 02 14 */	add r3, r3, r0
/* 803A32D0 0036C890  80 63 05 EC */	lwz r3, 0x5ec(r3)
/* 803A32D4 0036C894  4E 80 00 20 */	blr 
.endfn mwPlyGetSstCoreHnByIdx

.fn MWSST_StartSj, global
/* 803A32D8 0036C898  80 03 00 04 */	lwz r0, 4(r3)
/* 803A32DC 0036C89C  3C 80 80 60 */	lis r4, mwsstmng@ha
/* 803A32E0 0036C8A0  38 84 5E C0 */	addi r4, r4, mwsstmng@l
/* 803A32E4 0036C8A4  54 00 18 38 */	slwi r0, r0, 3
/* 803A32E8 0036C8A8  7C 04 00 2E */	lwzx r0, r4, r0
/* 803A32EC 0036C8AC  2C 00 00 00 */	cmpwi r0, 0
/* 803A32F0 0036C8B0  40 82 00 0C */	bne .L_803A32FC
/* 803A32F4 0036C8B4  38 00 00 00 */	li r0, 0
/* 803A32F8 0036C8B8  48 00 00 28 */	b .L_803A3320
.L_803A32FC:
/* 803A32FC 0036C8BC  80 03 00 00 */	lwz r0, 0(r3)
/* 803A3300 0036C8C0  2C 00 00 01 */	cmpwi r0, 1
/* 803A3304 0036C8C4  41 82 00 0C */	beq .L_803A3310
/* 803A3308 0036C8C8  38 00 00 00 */	li r0, 0
/* 803A330C 0036C8CC  48 00 00 14 */	b .L_803A3320
.L_803A3310:
/* 803A3310 0036C8D0  80 83 00 24 */	lwz r4, 0x24(r3)
/* 803A3314 0036C8D4  7C 04 00 D0 */	neg r0, r4
/* 803A3318 0036C8D8  7C 00 23 78 */	or r0, r0, r4
/* 803A331C 0036C8DC  54 00 0F FE */	srwi r0, r0, 0x1f
.L_803A3320:
/* 803A3320 0036C8E0  2C 00 00 01 */	cmpwi r0, 1
/* 803A3324 0036C8E4  4C 82 00 20 */	bnelr 
/* 803A3328 0036C8E8  80 A3 00 08 */	lwz r5, 8(r3)
/* 803A332C 0036C8EC  80 03 00 24 */	lwz r0, 0x24(r3)
/* 803A3330 0036C8F0  2C 05 00 00 */	cmpwi r5, 0
/* 803A3334 0036C8F4  80 83 00 14 */	lwz r4, 0x14(r3)
/* 803A3338 0036C8F8  4D 82 00 20 */	beqlr 
/* 803A333C 0036C8FC  81 85 00 14 */	lwz r12, 0x14(r5)
/* 803A3340 0036C900  2C 0C 00 00 */	cmpwi r12, 0
/* 803A3344 0036C904  4D 82 00 20 */	beqlr 
/* 803A3348 0036C908  7C 03 03 78 */	mr r3, r0
/* 803A334C 0036C90C  7D 89 03 A6 */	mtctr r12
/* 803A3350 0036C910  4E 80 04 20 */	bctr 
/* 803A3354 0036C914  4E 80 00 20 */	blr 
.endfn MWSST_StartSj

.fn MWSST_Stop, global
/* 803A3358 0036C918  80 03 00 04 */	lwz r0, 4(r3)
/* 803A335C 0036C91C  3C 80 80 60 */	lis r4, mwsstmng@ha
/* 803A3360 0036C920  38 84 5E C0 */	addi r4, r4, mwsstmng@l
/* 803A3364 0036C924  54 00 18 38 */	slwi r0, r0, 3
/* 803A3368 0036C928  7C 04 00 2E */	lwzx r0, r4, r0
/* 803A336C 0036C92C  2C 00 00 00 */	cmpwi r0, 0
/* 803A3370 0036C930  40 82 00 0C */	bne .L_803A337C
/* 803A3374 0036C934  38 00 00 00 */	li r0, 0
/* 803A3378 0036C938  48 00 00 28 */	b .L_803A33A0
.L_803A337C:
/* 803A337C 0036C93C  80 03 00 00 */	lwz r0, 0(r3)
/* 803A3380 0036C940  2C 00 00 01 */	cmpwi r0, 1
/* 803A3384 0036C944  41 82 00 0C */	beq .L_803A3390
/* 803A3388 0036C948  38 00 00 00 */	li r0, 0
/* 803A338C 0036C94C  48 00 00 14 */	b .L_803A33A0
.L_803A3390:
/* 803A3390 0036C950  80 83 00 24 */	lwz r4, 0x24(r3)
/* 803A3394 0036C954  7C 04 00 D0 */	neg r0, r4
/* 803A3398 0036C958  7C 00 23 78 */	or r0, r0, r4
/* 803A339C 0036C95C  54 00 0F FE */	srwi r0, r0, 0x1f
.L_803A33A0:
/* 803A33A0 0036C960  2C 00 00 01 */	cmpwi r0, 1
/* 803A33A4 0036C964  4C 82 00 20 */	bnelr 
/* 803A33A8 0036C968  80 03 00 24 */	lwz r0, 0x24(r3)
/* 803A33AC 0036C96C  80 63 00 08 */	lwz r3, 8(r3)
/* 803A33B0 0036C970  2C 00 00 00 */	cmpwi r0, 0
/* 803A33B4 0036C974  4D 82 00 20 */	beqlr 
/* 803A33B8 0036C978  2C 03 00 00 */	cmpwi r3, 0
/* 803A33BC 0036C97C  4D 82 00 20 */	beqlr 
/* 803A33C0 0036C980  81 83 00 18 */	lwz r12, 0x18(r3)
/* 803A33C4 0036C984  2C 0C 00 00 */	cmpwi r12, 0
/* 803A33C8 0036C988  4D 82 00 20 */	beqlr 
/* 803A33CC 0036C98C  7C 03 03 78 */	mr r3, r0
/* 803A33D0 0036C990  7D 89 03 A6 */	mtctr r12
/* 803A33D4 0036C994  4E 80 04 20 */	bctr 
/* 803A33D8 0036C998  4E 80 00 20 */	blr 
.endfn MWSST_Stop

.fn MWSST_GetStat, global
/* 803A33DC 0036C99C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A33E0 0036C9A0  7C 08 02 A6 */	mflr r0
/* 803A33E4 0036C9A4  3C 80 80 60 */	lis r4, mwsstmng@ha
/* 803A33E8 0036C9A8  38 A0 00 00 */	li r5, 0
/* 803A33EC 0036C9AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A33F0 0036C9B0  38 84 5E C0 */	addi r4, r4, mwsstmng@l
/* 803A33F4 0036C9B4  80 03 00 04 */	lwz r0, 4(r3)
/* 803A33F8 0036C9B8  54 00 18 38 */	slwi r0, r0, 3
/* 803A33FC 0036C9BC  7C 04 00 2E */	lwzx r0, r4, r0
/* 803A3400 0036C9C0  2C 00 00 00 */	cmpwi r0, 0
/* 803A3404 0036C9C4  40 82 00 0C */	bne .L_803A3410
/* 803A3408 0036C9C8  38 00 00 00 */	li r0, 0
/* 803A340C 0036C9CC  48 00 00 28 */	b .L_803A3434
.L_803A3410:
/* 803A3410 0036C9D0  80 03 00 00 */	lwz r0, 0(r3)
/* 803A3414 0036C9D4  2C 00 00 01 */	cmpwi r0, 1
/* 803A3418 0036C9D8  41 82 00 0C */	beq .L_803A3424
/* 803A341C 0036C9DC  38 00 00 00 */	li r0, 0
/* 803A3420 0036C9E0  48 00 00 14 */	b .L_803A3434
.L_803A3424:
/* 803A3424 0036C9E4  80 83 00 24 */	lwz r4, 0x24(r3)
/* 803A3428 0036C9E8  7C 04 00 D0 */	neg r0, r4
/* 803A342C 0036C9EC  7C 00 23 78 */	or r0, r0, r4
/* 803A3430 0036C9F0  54 00 0F FE */	srwi r0, r0, 0x1f
.L_803A3434:
/* 803A3434 0036C9F4  2C 00 00 01 */	cmpwi r0, 1
/* 803A3438 0036C9F8  41 82 00 0C */	beq .L_803A3444
/* 803A343C 0036C9FC  38 60 00 00 */	li r3, 0
/* 803A3440 0036CA00  48 00 00 30 */	b .L_803A3470
.L_803A3444:
/* 803A3444 0036CA04  80 83 00 08 */	lwz r4, 8(r3)
/* 803A3448 0036CA08  80 63 00 24 */	lwz r3, 0x24(r3)
/* 803A344C 0036CA0C  2C 04 00 00 */	cmpwi r4, 0
/* 803A3450 0036CA10  41 82 00 1C */	beq .L_803A346C
/* 803A3454 0036CA14  81 84 00 1C */	lwz r12, 0x1c(r4)
/* 803A3458 0036CA18  2C 0C 00 00 */	cmpwi r12, 0
/* 803A345C 0036CA1C  41 82 00 10 */	beq .L_803A346C
/* 803A3460 0036CA20  7D 89 03 A6 */	mtctr r12
/* 803A3464 0036CA24  4E 80 04 21 */	bctrl 
/* 803A3468 0036CA28  7C 65 1B 78 */	mr r5, r3
.L_803A346C:
/* 803A346C 0036CA2C  7C A3 2B 78 */	mr r3, r5
.L_803A3470:
/* 803A3470 0036CA30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A3474 0036CA34  7C 08 03 A6 */	mtlr r0
/* 803A3478 0036CA38  38 21 00 10 */	addi r1, r1, 0x10
/* 803A347C 0036CA3C  4E 80 00 20 */	blr 
.endfn MWSST_GetStat

.fn MWSST_GetTime, global
/* 803A3480 0036CA40  80 03 00 04 */	lwz r0, 4(r3)
/* 803A3484 0036CA44  3C A0 80 60 */	lis r5, mwsstmng@ha
/* 803A3488 0036CA48  38 A5 5E C0 */	addi r5, r5, mwsstmng@l
/* 803A348C 0036CA4C  54 00 18 38 */	slwi r0, r0, 3
/* 803A3490 0036CA50  7C 05 00 2E */	lwzx r0, r5, r0
/* 803A3494 0036CA54  2C 00 00 00 */	cmpwi r0, 0
/* 803A3498 0036CA58  40 82 00 0C */	bne .L_803A34A4
/* 803A349C 0036CA5C  38 00 00 00 */	li r0, 0
/* 803A34A0 0036CA60  48 00 00 28 */	b .L_803A34C8
.L_803A34A4:
/* 803A34A4 0036CA64  80 03 00 00 */	lwz r0, 0(r3)
/* 803A34A8 0036CA68  2C 00 00 01 */	cmpwi r0, 1
/* 803A34AC 0036CA6C  41 82 00 0C */	beq .L_803A34B8
/* 803A34B0 0036CA70  38 00 00 00 */	li r0, 0
/* 803A34B4 0036CA74  48 00 00 14 */	b .L_803A34C8
.L_803A34B8:
/* 803A34B8 0036CA78  80 A3 00 24 */	lwz r5, 0x24(r3)
/* 803A34BC 0036CA7C  7C 05 00 D0 */	neg r0, r5
/* 803A34C0 0036CA80  7C 00 2B 78 */	or r0, r0, r5
/* 803A34C4 0036CA84  54 00 0F FE */	srwi r0, r0, 0x1f
.L_803A34C8:
/* 803A34C8 0036CA88  2C 00 00 01 */	cmpwi r0, 1
/* 803A34CC 0036CA8C  4C 82 00 20 */	bnelr 
/* 803A34D0 0036CA90  80 A3 00 08 */	lwz r5, 8(r3)
/* 803A34D4 0036CA94  80 63 00 24 */	lwz r3, 0x24(r3)
/* 803A34D8 0036CA98  2C 05 00 00 */	cmpwi r5, 0
/* 803A34DC 0036CA9C  4D 82 00 20 */	beqlr 
/* 803A34E0 0036CAA0  81 85 00 24 */	lwz r12, 0x24(r5)
/* 803A34E4 0036CAA4  2C 0C 00 00 */	cmpwi r12, 0
/* 803A34E8 0036CAA8  4D 82 00 20 */	beqlr 
/* 803A34EC 0036CAAC  7D 89 03 A6 */	mtctr r12
/* 803A34F0 0036CAB0  4E 80 04 20 */	bctr 
/* 803A34F4 0036CAB4  4E 80 00 20 */	blr 
.endfn MWSST_GetTime

.fn MWSST_SetOutVol, global
/* 803A34F8 0036CAB8  80 03 00 04 */	lwz r0, 4(r3)
/* 803A34FC 0036CABC  3C A0 80 60 */	lis r5, mwsstmng@ha
/* 803A3500 0036CAC0  38 A5 5E C0 */	addi r5, r5, mwsstmng@l
/* 803A3504 0036CAC4  54 00 18 38 */	slwi r0, r0, 3
/* 803A3508 0036CAC8  7C 05 00 2E */	lwzx r0, r5, r0
/* 803A350C 0036CACC  2C 00 00 00 */	cmpwi r0, 0
/* 803A3510 0036CAD0  40 82 00 0C */	bne .L_803A351C
/* 803A3514 0036CAD4  38 00 00 00 */	li r0, 0
/* 803A3518 0036CAD8  48 00 00 28 */	b .L_803A3540
.L_803A351C:
/* 803A351C 0036CADC  80 03 00 00 */	lwz r0, 0(r3)
/* 803A3520 0036CAE0  2C 00 00 01 */	cmpwi r0, 1
/* 803A3524 0036CAE4  41 82 00 0C */	beq .L_803A3530
/* 803A3528 0036CAE8  38 00 00 00 */	li r0, 0
/* 803A352C 0036CAEC  48 00 00 14 */	b .L_803A3540
.L_803A3530:
/* 803A3530 0036CAF0  80 A3 00 24 */	lwz r5, 0x24(r3)
/* 803A3534 0036CAF4  7C 05 00 D0 */	neg r0, r5
/* 803A3538 0036CAF8  7C 00 2B 78 */	or r0, r0, r5
/* 803A353C 0036CAFC  54 00 0F FE */	srwi r0, r0, 0x1f
.L_803A3540:
/* 803A3540 0036CB00  2C 00 00 01 */	cmpwi r0, 1
/* 803A3544 0036CB04  4C 82 00 20 */	bnelr 
/* 803A3548 0036CB08  80 A3 00 08 */	lwz r5, 8(r3)
/* 803A354C 0036CB0C  80 63 00 24 */	lwz r3, 0x24(r3)
/* 803A3550 0036CB10  2C 05 00 00 */	cmpwi r5, 0
/* 803A3554 0036CB14  4D 82 00 20 */	beqlr 
/* 803A3558 0036CB18  81 85 00 28 */	lwz r12, 0x28(r5)
/* 803A355C 0036CB1C  2C 0C 00 00 */	cmpwi r12, 0
/* 803A3560 0036CB20  4D 82 00 20 */	beqlr 
/* 803A3564 0036CB24  7D 89 03 A6 */	mtctr r12
/* 803A3568 0036CB28  4E 80 04 20 */	bctr 
/* 803A356C 0036CB2C  4E 80 00 20 */	blr 
.endfn MWSST_SetOutVol

.fn MWSST_GetOutVol, global
/* 803A3570 0036CB30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A3574 0036CB34  7C 08 02 A6 */	mflr r0
/* 803A3578 0036CB38  3C 80 80 60 */	lis r4, mwsstmng@ha
/* 803A357C 0036CB3C  38 A0 00 00 */	li r5, 0
/* 803A3580 0036CB40  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A3584 0036CB44  38 84 5E C0 */	addi r4, r4, mwsstmng@l
/* 803A3588 0036CB48  80 03 00 04 */	lwz r0, 4(r3)
/* 803A358C 0036CB4C  54 00 18 38 */	slwi r0, r0, 3
/* 803A3590 0036CB50  7C 04 00 2E */	lwzx r0, r4, r0
/* 803A3594 0036CB54  2C 00 00 00 */	cmpwi r0, 0
/* 803A3598 0036CB58  40 82 00 0C */	bne .L_803A35A4
/* 803A359C 0036CB5C  38 00 00 00 */	li r0, 0
/* 803A35A0 0036CB60  48 00 00 28 */	b .L_803A35C8
.L_803A35A4:
/* 803A35A4 0036CB64  80 03 00 00 */	lwz r0, 0(r3)
/* 803A35A8 0036CB68  2C 00 00 01 */	cmpwi r0, 1
/* 803A35AC 0036CB6C  41 82 00 0C */	beq .L_803A35B8
/* 803A35B0 0036CB70  38 00 00 00 */	li r0, 0
/* 803A35B4 0036CB74  48 00 00 14 */	b .L_803A35C8
.L_803A35B8:
/* 803A35B8 0036CB78  80 83 00 24 */	lwz r4, 0x24(r3)
/* 803A35BC 0036CB7C  7C 04 00 D0 */	neg r0, r4
/* 803A35C0 0036CB80  7C 00 23 78 */	or r0, r0, r4
/* 803A35C4 0036CB84  54 00 0F FE */	srwi r0, r0, 0x1f
.L_803A35C8:
/* 803A35C8 0036CB88  2C 00 00 01 */	cmpwi r0, 1
/* 803A35CC 0036CB8C  41 82 00 0C */	beq .L_803A35D8
/* 803A35D0 0036CB90  38 60 00 00 */	li r3, 0
/* 803A35D4 0036CB94  48 00 00 30 */	b .L_803A3604
.L_803A35D8:
/* 803A35D8 0036CB98  80 83 00 08 */	lwz r4, 8(r3)
/* 803A35DC 0036CB9C  80 63 00 24 */	lwz r3, 0x24(r3)
/* 803A35E0 0036CBA0  2C 04 00 00 */	cmpwi r4, 0
/* 803A35E4 0036CBA4  41 82 00 1C */	beq .L_803A3600
/* 803A35E8 0036CBA8  81 84 00 2C */	lwz r12, 0x2c(r4)
/* 803A35EC 0036CBAC  2C 0C 00 00 */	cmpwi r12, 0
/* 803A35F0 0036CBB0  41 82 00 10 */	beq .L_803A3600
/* 803A35F4 0036CBB4  7D 89 03 A6 */	mtctr r12
/* 803A35F8 0036CBB8  4E 80 04 21 */	bctrl 
/* 803A35FC 0036CBBC  7C 65 1B 78 */	mr r5, r3
.L_803A3600:
/* 803A3600 0036CBC0  7C A3 2B 78 */	mr r3, r5
.L_803A3604:
/* 803A3604 0036CBC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A3608 0036CBC8  7C 08 03 A6 */	mtlr r0
/* 803A360C 0036CBCC  38 21 00 10 */	addi r1, r1, 0x10
/* 803A3610 0036CBD0  4E 80 00 20 */	blr 
.endfn MWSST_GetOutVol

.fn MWSST_SetLnkSw, global
/* 803A3614 0036CBD4  80 03 00 04 */	lwz r0, 4(r3)
/* 803A3618 0036CBD8  3C A0 80 60 */	lis r5, mwsstmng@ha
/* 803A361C 0036CBDC  38 A5 5E C0 */	addi r5, r5, mwsstmng@l
/* 803A3620 0036CBE0  54 00 18 38 */	slwi r0, r0, 3
/* 803A3624 0036CBE4  7C 05 00 2E */	lwzx r0, r5, r0
/* 803A3628 0036CBE8  2C 00 00 00 */	cmpwi r0, 0
/* 803A362C 0036CBEC  40 82 00 0C */	bne .L_803A3638
/* 803A3630 0036CBF0  38 00 00 00 */	li r0, 0
/* 803A3634 0036CBF4  48 00 00 28 */	b .L_803A365C
.L_803A3638:
/* 803A3638 0036CBF8  80 03 00 00 */	lwz r0, 0(r3)
/* 803A363C 0036CBFC  2C 00 00 01 */	cmpwi r0, 1
/* 803A3640 0036CC00  41 82 00 0C */	beq .L_803A364C
/* 803A3644 0036CC04  38 00 00 00 */	li r0, 0
/* 803A3648 0036CC08  48 00 00 14 */	b .L_803A365C
.L_803A364C:
/* 803A364C 0036CC0C  80 A3 00 24 */	lwz r5, 0x24(r3)
/* 803A3650 0036CC10  7C 05 00 D0 */	neg r0, r5
/* 803A3654 0036CC14  7C 00 2B 78 */	or r0, r0, r5
/* 803A3658 0036CC18  54 00 0F FE */	srwi r0, r0, 0x1f
.L_803A365C:
/* 803A365C 0036CC1C  2C 00 00 01 */	cmpwi r0, 1
/* 803A3660 0036CC20  4C 82 00 20 */	bnelr 
/* 803A3664 0036CC24  80 A3 00 08 */	lwz r5, 8(r3)
/* 803A3668 0036CC28  80 63 00 24 */	lwz r3, 0x24(r3)
/* 803A366C 0036CC2C  2C 05 00 00 */	cmpwi r5, 0
/* 803A3670 0036CC30  4D 82 00 20 */	beqlr 
/* 803A3674 0036CC34  81 85 00 30 */	lwz r12, 0x30(r5)
/* 803A3678 0036CC38  2C 0C 00 00 */	cmpwi r12, 0
/* 803A367C 0036CC3C  4D 82 00 20 */	beqlr 
/* 803A3680 0036CC40  7D 89 03 A6 */	mtctr r12
/* 803A3684 0036CC44  4E 80 04 20 */	bctr 
/* 803A3688 0036CC48  4E 80 00 20 */	blr 
.endfn MWSST_SetLnkSw

.fn MWSST_Create, global
/* 803A368C 0036CC4C  80 03 00 04 */	lwz r0, 4(r3)
/* 803A3690 0036CC50  3C 80 80 60 */	lis r4, mwsstmng@ha
/* 803A3694 0036CC54  38 84 5E C0 */	addi r4, r4, mwsstmng@l
/* 803A3698 0036CC58  54 00 18 38 */	slwi r0, r0, 3
/* 803A369C 0036CC5C  7C 04 00 2E */	lwzx r0, r4, r0
/* 803A36A0 0036CC60  2C 00 00 00 */	cmpwi r0, 0
/* 803A36A4 0036CC64  40 82 00 0C */	bne .L_803A36B0
/* 803A36A8 0036CC68  38 00 00 00 */	li r0, 0
/* 803A36AC 0036CC6C  48 00 00 28 */	b .L_803A36D4
.L_803A36B0:
/* 803A36B0 0036CC70  80 03 00 00 */	lwz r0, 0(r3)
/* 803A36B4 0036CC74  2C 00 00 01 */	cmpwi r0, 1
/* 803A36B8 0036CC78  41 82 00 0C */	beq .L_803A36C4
/* 803A36BC 0036CC7C  38 00 00 00 */	li r0, 0
/* 803A36C0 0036CC80  48 00 00 14 */	b .L_803A36D4
.L_803A36C4:
/* 803A36C4 0036CC84  80 83 00 24 */	lwz r4, 0x24(r3)
/* 803A36C8 0036CC88  7C 04 00 D0 */	neg r0, r4
/* 803A36CC 0036CC8C  7C 00 23 78 */	or r0, r0, r4
/* 803A36D0 0036CC90  54 00 0F FE */	srwi r0, r0, 0x1f
.L_803A36D4:
/* 803A36D4 0036CC94  2C 00 00 01 */	cmpwi r0, 1
/* 803A36D8 0036CC98  4C 82 00 20 */	bnelr 
/* 803A36DC 0036CC9C  80 83 00 08 */	lwz r4, 8(r3)
/* 803A36E0 0036CCA0  80 63 00 24 */	lwz r3, 0x24(r3)
/* 803A36E4 0036CCA4  2C 04 00 00 */	cmpwi r4, 0
/* 803A36E8 0036CCA8  4D 82 00 20 */	beqlr 
/* 803A36EC 0036CCAC  81 84 00 34 */	lwz r12, 0x34(r4)
/* 803A36F0 0036CCB0  2C 0C 00 00 */	cmpwi r12, 0
/* 803A36F4 0036CCB4  4D 82 00 20 */	beqlr 
/* 803A36F8 0036CCB8  7D 89 03 A6 */	mtctr r12
/* 803A36FC 0036CCBC  4E 80 04 20 */	bctr 
/* 803A3700 0036CCC0  4E 80 00 20 */	blr 
.endfn MWSST_Create

.fn MWSST_Reset, global
/* 803A3704 0036CCC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A3708 0036CCC8  7C 08 02 A6 */	mflr r0
/* 803A370C 0036CCCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A3710 0036CCD0  1C 04 00 28 */	mulli r0, r4, 0x28
/* 803A3714 0036CCD4  3C 80 80 60 */	lis r4, mwsstmng@ha
/* 803A3718 0036CCD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A371C 0036CCDC  7C A3 02 14 */	add r5, r3, r0
/* 803A3720 0036CCE0  38 84 5E C0 */	addi r4, r4, mwsstmng@l
/* 803A3724 0036CCE4  80 05 05 CC */	lwz r0, 0x5cc(r5)
/* 803A3728 0036CCE8  83 E5 05 DC */	lwz r31, 0x5dc(r5)
/* 803A372C 0036CCEC  54 00 18 38 */	slwi r0, r0, 3
/* 803A3730 0036CCF0  7C 84 00 2E */	lwzx r4, r4, r0
/* 803A3734 0036CCF4  2C 04 00 00 */	cmpwi r4, 0
/* 803A3738 0036CCF8  40 82 00 0C */	bne .L_803A3744
/* 803A373C 0036CCFC  38 00 00 00 */	li r0, 0
/* 803A3740 0036CD00  48 00 00 28 */	b .L_803A3768
.L_803A3744:
/* 803A3744 0036CD04  80 05 05 C8 */	lwz r0, 0x5c8(r5)
/* 803A3748 0036CD08  2C 00 00 01 */	cmpwi r0, 1
/* 803A374C 0036CD0C  41 82 00 0C */	beq .L_803A3758
/* 803A3750 0036CD10  38 00 00 00 */	li r0, 0
/* 803A3754 0036CD14  48 00 00 14 */	b .L_803A3768
.L_803A3758:
/* 803A3758 0036CD18  80 65 05 EC */	lwz r3, 0x5ec(r5)
/* 803A375C 0036CD1C  7C 03 00 D0 */	neg r0, r3
/* 803A3760 0036CD20  7C 00 1B 78 */	or r0, r0, r3
/* 803A3764 0036CD24  54 00 0F FE */	srwi r0, r0, 0x1f
.L_803A3768:
/* 803A3768 0036CD28  2C 00 00 01 */	cmpwi r0, 1
/* 803A376C 0036CD2C  40 82 00 80 */	bne .L_803A37EC
/* 803A3770 0036CD30  2C 04 00 00 */	cmpwi r4, 0
/* 803A3774 0036CD34  40 82 00 0C */	bne .L_803A3780
/* 803A3778 0036CD38  38 00 00 00 */	li r0, 0
/* 803A377C 0036CD3C  48 00 00 28 */	b .L_803A37A4
.L_803A3780:
/* 803A3780 0036CD40  80 05 05 C8 */	lwz r0, 0x5c8(r5)
/* 803A3784 0036CD44  2C 00 00 01 */	cmpwi r0, 1
/* 803A3788 0036CD48  41 82 00 0C */	beq .L_803A3794
/* 803A378C 0036CD4C  38 00 00 00 */	li r0, 0
/* 803A3790 0036CD50  48 00 00 14 */	b .L_803A37A4
.L_803A3794:
/* 803A3794 0036CD54  80 65 05 EC */	lwz r3, 0x5ec(r5)
/* 803A3798 0036CD58  7C 03 00 D0 */	neg r0, r3
/* 803A379C 0036CD5C  7C 00 1B 78 */	or r0, r0, r3
/* 803A37A0 0036CD60  54 00 0F FE */	srwi r0, r0, 0x1f
.L_803A37A4:
/* 803A37A4 0036CD64  2C 00 00 01 */	cmpwi r0, 1
/* 803A37A8 0036CD68  40 82 00 30 */	bne .L_803A37D8
/* 803A37AC 0036CD6C  80 65 05 EC */	lwz r3, 0x5ec(r5)
/* 803A37B0 0036CD70  80 85 05 D0 */	lwz r4, 0x5d0(r5)
/* 803A37B4 0036CD74  2C 03 00 00 */	cmpwi r3, 0
/* 803A37B8 0036CD78  41 82 00 20 */	beq .L_803A37D8
/* 803A37BC 0036CD7C  2C 04 00 00 */	cmpwi r4, 0
/* 803A37C0 0036CD80  41 82 00 18 */	beq .L_803A37D8
/* 803A37C4 0036CD84  81 84 00 18 */	lwz r12, 0x18(r4)
/* 803A37C8 0036CD88  2C 0C 00 00 */	cmpwi r12, 0
/* 803A37CC 0036CD8C  41 82 00 0C */	beq .L_803A37D8
/* 803A37D0 0036CD90  7D 89 03 A6 */	mtctr r12
/* 803A37D4 0036CD94  4E 80 04 21 */	bctrl 
.L_803A37D8:
/* 803A37D8 0036CD98  80 9F 00 00 */	lwz r4, 0(r31)
/* 803A37DC 0036CD9C  7F E3 FB 78 */	mr r3, r31
/* 803A37E0 0036CDA0  81 84 00 14 */	lwz r12, 0x14(r4)
/* 803A37E4 0036CDA4  7D 89 03 A6 */	mtctr r12
/* 803A37E8 0036CDA8  4E 80 04 21 */	bctrl 
.L_803A37EC:
/* 803A37EC 0036CDAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A37F0 0036CDB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A37F4 0036CDB4  7C 08 03 A6 */	mtlr r0
/* 803A37F8 0036CDB8  38 21 00 10 */	addi r1, r1, 0x10
/* 803A37FC 0036CDBC  4E 80 00 20 */	blr 
.endfn MWSST_Reset

.fn MWSST_Destroy, global
/* 803A3800 0036CDC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A3804 0036CDC4  7C 08 02 A6 */	mflr r0
/* 803A3808 0036CDC8  3C 80 80 60 */	lis r4, mwsstmng@ha
/* 803A380C 0036CDCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A3810 0036CDD0  38 84 5E C0 */	addi r4, r4, mwsstmng@l
/* 803A3814 0036CDD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A3818 0036CDD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A381C 0036CDDC  7C 7E 1B 78 */	mr r30, r3
/* 803A3820 0036CDE0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803A3824 0036CDE4  93 81 00 10 */	stw r28, 0x10(r1)
/* 803A3828 0036CDE8  80 03 00 04 */	lwz r0, 4(r3)
/* 803A382C 0036CDEC  54 00 18 38 */	slwi r0, r0, 3
/* 803A3830 0036CDF0  7F E4 02 14 */	add r31, r4, r0
/* 803A3834 0036CDF4  7C 04 00 2E */	lwzx r0, r4, r0
/* 803A3838 0036CDF8  2C 00 00 00 */	cmpwi r0, 0
/* 803A383C 0036CDFC  40 82 00 0C */	bne .L_803A3848
/* 803A3840 0036CE00  38 00 00 00 */	li r0, 0
/* 803A3844 0036CE04  48 00 00 28 */	b .L_803A386C
.L_803A3848:
/* 803A3848 0036CE08  80 03 00 00 */	lwz r0, 0(r3)
/* 803A384C 0036CE0C  2C 00 00 01 */	cmpwi r0, 1
/* 803A3850 0036CE10  41 82 00 0C */	beq .L_803A385C
/* 803A3854 0036CE14  38 00 00 00 */	li r0, 0
/* 803A3858 0036CE18  48 00 00 14 */	b .L_803A386C
.L_803A385C:
/* 803A385C 0036CE1C  80 83 00 24 */	lwz r4, 0x24(r3)
/* 803A3860 0036CE20  7C 04 00 D0 */	neg r0, r4
/* 803A3864 0036CE24  7C 00 23 78 */	or r0, r0, r4
/* 803A3868 0036CE28  54 00 0F FE */	srwi r0, r0, 0x1f
.L_803A386C:
/* 803A386C 0036CE2C  2C 00 00 01 */	cmpwi r0, 1
/* 803A3870 0036CE30  40 82 01 1C */	bne .L_803A398C
/* 803A3874 0036CE34  83 A3 00 24 */	lwz r29, 0x24(r3)
/* 803A3878 0036CE38  83 83 00 14 */	lwz r28, 0x14(r3)
/* 803A387C 0036CE3C  2C 1D 00 00 */	cmpwi r29, 0
/* 803A3880 0036CE40  41 82 01 0C */	beq .L_803A398C
/* 803A3884 0036CE44  4B FF A4 D1 */	bl MWSFSVM_GotoIdleBorder
/* 803A3888 0036CE48  80 1E 00 04 */	lwz r0, 4(r30)
/* 803A388C 0036CE4C  3C 60 80 60 */	lis r3, mwsstmng@ha
/* 803A3890 0036CE50  38 63 5E C0 */	addi r3, r3, mwsstmng@l
/* 803A3894 0036CE54  54 00 18 38 */	slwi r0, r0, 3
/* 803A3898 0036CE58  7C 03 00 2E */	lwzx r0, r3, r0
/* 803A389C 0036CE5C  2C 00 00 00 */	cmpwi r0, 0
/* 803A38A0 0036CE60  40 82 00 0C */	bne .L_803A38AC
/* 803A38A4 0036CE64  38 00 00 00 */	li r0, 0
/* 803A38A8 0036CE68  48 00 00 28 */	b .L_803A38D0
.L_803A38AC:
/* 803A38AC 0036CE6C  80 1E 00 00 */	lwz r0, 0(r30)
/* 803A38B0 0036CE70  2C 00 00 01 */	cmpwi r0, 1
/* 803A38B4 0036CE74  41 82 00 0C */	beq .L_803A38C0
/* 803A38B8 0036CE78  38 00 00 00 */	li r0, 0
/* 803A38BC 0036CE7C  48 00 00 14 */	b .L_803A38D0
.L_803A38C0:
/* 803A38C0 0036CE80  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 803A38C4 0036CE84  7C 03 00 D0 */	neg r0, r3
/* 803A38C8 0036CE88  7C 00 1B 78 */	or r0, r0, r3
/* 803A38CC 0036CE8C  54 00 0F FE */	srwi r0, r0, 0x1f
.L_803A38D0:
/* 803A38D0 0036CE90  2C 00 00 01 */	cmpwi r0, 1
/* 803A38D4 0036CE94  40 82 00 30 */	bne .L_803A3904
/* 803A38D8 0036CE98  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 803A38DC 0036CE9C  80 9E 00 08 */	lwz r4, 8(r30)
/* 803A38E0 0036CEA0  2C 03 00 00 */	cmpwi r3, 0
/* 803A38E4 0036CEA4  41 82 00 20 */	beq .L_803A3904
/* 803A38E8 0036CEA8  2C 04 00 00 */	cmpwi r4, 0
/* 803A38EC 0036CEAC  41 82 00 18 */	beq .L_803A3904
/* 803A38F0 0036CEB0  81 84 00 18 */	lwz r12, 0x18(r4)
/* 803A38F4 0036CEB4  2C 0C 00 00 */	cmpwi r12, 0
/* 803A38F8 0036CEB8  41 82 00 0C */	beq .L_803A3904
/* 803A38FC 0036CEBC  7D 89 03 A6 */	mtctr r12
/* 803A3900 0036CEC0  4E 80 04 21 */	bctrl 
.L_803A3904:
/* 803A3904 0036CEC4  38 00 00 00 */	li r0, 0
/* 803A3908 0036CEC8  2C 1D 00 00 */	cmpwi r29, 0
/* 803A390C 0036CECC  90 1E 00 00 */	stw r0, 0(r30)
/* 803A3910 0036CED0  80 7F 00 00 */	lwz r3, 0(r31)
/* 803A3914 0036CED4  41 82 00 24 */	beq .L_803A3938
/* 803A3918 0036CED8  2C 03 00 00 */	cmpwi r3, 0
/* 803A391C 0036CEDC  41 82 00 1C */	beq .L_803A3938
/* 803A3920 0036CEE0  81 83 00 10 */	lwz r12, 0x10(r3)
/* 803A3924 0036CEE4  2C 0C 00 00 */	cmpwi r12, 0
/* 803A3928 0036CEE8  41 82 00 10 */	beq .L_803A3938
/* 803A392C 0036CEEC  7F A3 EB 78 */	mr r3, r29
/* 803A3930 0036CEF0  7D 89 03 A6 */	mtctr r12
/* 803A3934 0036CEF4  4E 80 04 21 */	bctrl 
.L_803A3938:
/* 803A3938 0036CEF8  80 9C 00 00 */	lwz r4, 0(r28)
/* 803A393C 0036CEFC  7F 83 E3 78 */	mr r3, r28
/* 803A3940 0036CF00  81 84 00 0C */	lwz r12, 0xc(r4)
/* 803A3944 0036CF04  7D 89 03 A6 */	mtctr r12
/* 803A3948 0036CF08  4E 80 04 21 */	bctrl 
/* 803A394C 0036CF0C  38 00 00 00 */	li r0, 0
/* 803A3950 0036CF10  90 1E 00 24 */	stw r0, 0x24(r30)
/* 803A3954 0036CF14  80 7F 00 00 */	lwz r3, 0(r31)
/* 803A3958 0036CF18  2C 03 00 00 */	cmpwi r3, 0
/* 803A395C 0036CF1C  41 82 00 30 */	beq .L_803A398C
/* 803A3960 0036CF20  80 1F 00 04 */	lwz r0, 4(r31)
/* 803A3964 0036CF24  2C 00 00 00 */	cmpwi r0, 0
/* 803A3968 0036CF28  41 82 00 24 */	beq .L_803A398C
/* 803A396C 0036CF2C  34 00 FF FF */	addic. r0, r0, -1
/* 803A3970 0036CF30  90 1F 00 04 */	stw r0, 4(r31)
/* 803A3974 0036CF34  40 82 00 18 */	bne .L_803A398C
/* 803A3978 0036CF38  81 83 00 04 */	lwz r12, 4(r3)
/* 803A397C 0036CF3C  2C 0C 00 00 */	cmpwi r12, 0
/* 803A3980 0036CF40  41 82 00 0C */	beq .L_803A398C
/* 803A3984 0036CF44  7D 89 03 A6 */	mtctr r12
/* 803A3988 0036CF48  4E 80 04 21 */	bctrl 
.L_803A398C:
/* 803A398C 0036CF4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A3990 0036CF50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A3994 0036CF54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A3998 0036CF58  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803A399C 0036CF5C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803A39A0 0036CF60  7C 08 03 A6 */	mtlr r0
/* 803A39A4 0036CF64  38 21 00 20 */	addi r1, r1, 0x20
/* 803A39A8 0036CF68  4E 80 00 20 */	blr 
.endfn MWSST_Destroy

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.balign 8
.obj mwsstmng, global
	.skip 0x10
.endobj mwsstmng
