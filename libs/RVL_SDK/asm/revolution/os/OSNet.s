.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn __OSInitNet, global
/* 8035E070 00327630  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035E074 00327634  7C 08 02 A6 */	mflr r0
/* 8035E078 00327638  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035E07C 0032763C  38 61 00 08 */	addi r3, r1, 8
/* 8035E080 00327640  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035E084 00327644  3F E0 80 56 */	lis r31, lbl_8055ED30@ha
/* 8035E088 00327648  3B FF ED 30 */	addi r31, r31, lbl_8055ED30@l
/* 8035E08C 0032764C  4B FF 39 25 */	bl __OSGetIOSRev
/* 8035E090 00327650  88 01 00 09 */	lbz r0, 9(r1)
/* 8035E094 00327654  28 00 00 04 */	cmplwi r0, 4
/* 8035E098 00327658  40 81 00 78 */	ble .L_8035E110
/* 8035E09C 0032765C  28 00 00 09 */	cmplwi r0, 9
/* 8035E0A0 00327660  40 82 00 08 */	bne .L_8035E0A8
/* 8035E0A4 00327664  48 00 00 6C */	b .L_8035E110
.L_8035E0A8:
/* 8035E0A8 00327668  48 00 00 89 */	bl NWC24iPrepareShutdown
/* 8035E0AC 0032766C  2C 03 00 00 */	cmpwi r3, 0
/* 8035E0B0 00327670  41 82 00 34 */	beq .L_8035E0E4
/* 8035E0B4 00327674  40 80 00 14 */	bge .L_8035E0C8
/* 8035E0B8 00327678  7C 64 1B 78 */	mr r4, r3
/* 8035E0BC 0032767C  38 7F 00 00 */	addi r3, r31, 0
/* 8035E0C0 00327680  4C C6 31 82 */	crclr 6
/* 8035E0C4 00327684  4B FF 6E 2D */	bl OSReport
.L_8035E0C8:
/* 8035E0C8 00327688  48 00 01 C9 */	bl NWC24SuspendScheduler
/* 8035E0CC 0032768C  2C 03 00 00 */	cmpwi r3, 0
/* 8035E0D0 00327690  40 80 00 14 */	bge .L_8035E0E4
/* 8035E0D4 00327694  7C 64 1B 78 */	mr r4, r3
/* 8035E0D8 00327698  38 7F 00 34 */	addi r3, r31, 0x34
/* 8035E0DC 0032769C  4C C6 31 82 */	crclr 6
/* 8035E0E0 003276A0  4B FF 6E 11 */	bl OSReport
.L_8035E0E4:
/* 8035E0E4 003276A4  80 0D B8 80 */	lwz r0, __OSInIPL@sda21(r13)
/* 8035E0E8 003276A8  2C 00 00 00 */	cmpwi r0, 0
/* 8035E0EC 003276AC  40 82 00 24 */	bne .L_8035E110
/* 8035E0F0 003276B0  38 60 00 00 */	li r3, 0
/* 8035E0F4 003276B4  48 00 00 FD */	bl NWC24iSynchronizeRtcCounter
/* 8035E0F8 003276B8  2C 03 00 00 */	cmpwi r3, 0
/* 8035E0FC 003276BC  41 82 00 14 */	beq .L_8035E110
/* 8035E100 003276C0  7C 64 1B 78 */	mr r4, r3
/* 8035E104 003276C4  38 7F 00 68 */	addi r3, r31, 0x68
/* 8035E108 003276C8  4C C6 31 82 */	crclr 6
/* 8035E10C 003276CC  4B FF 6D E5 */	bl OSReport
.L_8035E110:
/* 8035E110 003276D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035E114 003276D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035E118 003276D8  7C 08 03 A6 */	mtlr r0
/* 8035E11C 003276DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8035E120 003276E0  4E 80 00 20 */	blr 
.endfn __OSInitNet

.balign 16, 0
.fn NWC24iPrepareShutdown, global
/* 8035E130 003276F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035E134 003276F4  7C 08 02 A6 */	mflr r0
/* 8035E138 003276F8  3C 80 80 5D */	lis r4, ShutdownFuncInfo@ha
/* 8035E13C 003276FC  3C A0 80 36 */	lis r5, NWC24Shutdown_@ha
/* 8035E140 00327700  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035E144 00327704  38 64 54 40 */	addi r3, r4, ShutdownFuncInfo@l
/* 8035E148 00327708  38 00 00 6E */	li r0, 0x6e
/* 8035E14C 0032770C  38 A5 E4 00 */	addi r5, r5, NWC24Shutdown_@l
/* 8035E150 00327710  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035E154 00327714  3B E0 00 00 */	li r31, 0
/* 8035E158 00327718  90 A4 54 40 */	stw r5, ShutdownFuncInfo@l(r4)
/* 8035E15C 0032771C  90 03 00 04 */	stw r0, 4(r3)
/* 8035E160 00327720  4B FF BD B1 */	bl OSRegisterShutdownFunction
/* 8035E164 00327724  80 0D 9A 28 */	lwz r0, nwc24ShtFd@sda21(r13)
/* 8035E168 00327728  2C 00 00 00 */	cmpwi r0, 0
/* 8035E16C 0032772C  40 80 00 50 */	bge .L_8035E1BC
/* 8035E170 00327730  38 0D 9A 28 */	addi r0, r13, nwc24ShtFd@sda21
/* 8035E174 00327734  3C 60 80 56 */	lis r3, lbl_8055EDF0@ha
/* 8035E178 00327738  2C 00 00 00 */	cmpwi r0, 0
/* 8035E17C 0032773C  38 63 ED F0 */	addi r3, r3, lbl_8055EDF0@l
/* 8035E180 00327740  40 82 00 0C */	bne .L_8035E18C
/* 8035E184 00327744  3B E0 FF FD */	li r31, -3
/* 8035E188 00327748  48 00 00 34 */	b .L_8035E1BC
.L_8035E18C:
/* 8035E18C 0032774C  38 80 00 01 */	li r4, 1
/* 8035E190 00327750  4B FE 52 01 */	bl IOS_Open
/* 8035E194 00327754  2C 03 00 00 */	cmpwi r3, 0
/* 8035E198 00327758  90 6D 9A 28 */	stw r3, nwc24ShtFd@sda21(r13)
/* 8035E19C 0032775C  40 80 00 1C */	bge .L_8035E1B8
/* 8035E1A0 00327760  2C 03 FF FA */	cmpwi r3, -6
/* 8035E1A4 00327764  40 82 00 0C */	bne .L_8035E1B0
/* 8035E1A8 00327768  3B E0 FF E3 */	li r31, -29
/* 8035E1AC 0032776C  48 00 00 10 */	b .L_8035E1BC
.L_8035E1B0:
/* 8035E1B0 00327770  3B E0 FF D6 */	li r31, -42
/* 8035E1B4 00327774  48 00 00 08 */	b .L_8035E1BC
.L_8035E1B8:
/* 8035E1B8 00327778  3B E0 00 00 */	li r31, 0
.L_8035E1BC:
/* 8035E1BC 0032777C  2C 1F 00 00 */	cmpwi r31, 0
/* 8035E1C0 00327780  38 00 00 05 */	li r0, 5
/* 8035E1C4 00327784  90 0D B9 A8 */	stw r0, nwc24ShtRetryRest@sda21(r13)
/* 8035E1C8 00327788  40 82 00 08 */	bne .L_8035E1D0
/* 8035E1CC 0032778C  3B E0 00 01 */	li r31, 1
.L_8035E1D0:
/* 8035E1D0 00327790  7F E3 FB 78 */	mr r3, r31
/* 8035E1D4 00327794  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035E1D8 00327798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035E1DC 0032779C  7C 08 03 A6 */	mtlr r0
/* 8035E1E0 003277A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8035E1E4 003277A4  4E 80 00 20 */	blr 
.endfn NWC24iPrepareShutdown

.balign 16, 0
.fn NWC24iSynchronizeRtcCounter, global
/* 8035E1F0 003277B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035E1F4 003277B4  7C 08 02 A6 */	mflr r0
/* 8035E1F8 003277B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035E1FC 003277BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035E200 003277C0  93 C1 00 08 */	stw r30, 8(r1)
/* 8035E204 003277C4  7C 7E 1B 78 */	mr r30, r3
.L_8035E208:
/* 8035E208 003277C8  48 00 13 C9 */	bl SCCheckStatus
/* 8035E20C 003277CC  28 03 00 02 */	cmplwi r3, 2
/* 8035E210 003277D0  40 82 00 0C */	bne .L_8035E21C
/* 8035E214 003277D4  38 60 FF FF */	li r3, -1
/* 8035E218 003277D8  48 00 00 34 */	b .L_8035E24C
.L_8035E21C:
/* 8035E21C 003277DC  2C 03 00 00 */	cmpwi r3, 0
/* 8035E220 003277E0  40 82 FF E8 */	bne .L_8035E208
/* 8035E224 003277E4  48 00 2F 7D */	bl SCGetCounterBias
/* 8035E228 003277E8  7C 7F 1B 78 */	mr r31, r3
/* 8035E22C 003277EC  4B FF E7 35 */	bl OSGetTime
/* 8035E230 003277F0  3C C0 80 00 */	lis r6, 0x800000F8@ha
/* 8035E234 003277F4  38 A0 00 00 */	li r5, 0
/* 8035E238 003277F8  80 06 00 F8 */	lwz r0, 0x800000F8@l(r6)
/* 8035E23C 003277FC  54 06 F0 BE */	srwi r6, r0, 2
/* 8035E240 00327800  4B F5 C0 65 */	bl __div2i
/* 8035E244 00327804  7F FF 20 10 */	subfc r31, r31, r4
/* 8035E248 00327808  38 60 00 00 */	li r3, 0
.L_8035E24C:
/* 8035E24C 0032780C  2C 03 00 00 */	cmpwi r3, 0
/* 8035E250 00327810  41 82 00 08 */	beq .L_8035E258
/* 8035E254 00327814  48 00 00 18 */	b .L_8035E26C
.L_8035E258:
/* 8035E258 00327818  7C 1E 00 D0 */	neg r0, r30
/* 8035E25C 0032781C  7F E3 FB 78 */	mr r3, r31
/* 8035E260 00327820  7C 00 F3 78 */	or r0, r0, r30
/* 8035E264 00327824  54 04 0F FE */	srwi r4, r0, 0x1f
/* 8035E268 00327828  48 00 02 59 */	bl NWC24iSetRtcCounter_
.L_8035E26C:
/* 8035E26C 0032782C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035E270 00327830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035E274 00327834  83 C1 00 08 */	lwz r30, 8(r1)
/* 8035E278 00327838  7C 08 03 A6 */	mtlr r0
/* 8035E27C 0032783C  38 21 00 10 */	addi r1, r1, 0x10
/* 8035E280 00327840  4E 80 00 20 */	blr 
.endfn NWC24iSynchronizeRtcCounter

.balign 16, 0
.fn NWC24SuspendScheduler, global
/* 8035E290 00327850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035E294 00327854  7C 08 02 A6 */	mflr r0
/* 8035E298 00327858  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035E29C 0032785C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035E2A0 00327860  93 C1 00 08 */	stw r30, 8(r1)
/* 8035E2A4 00327864  4B FF D3 3D */	bl OSGetCurrentThread
/* 8035E2A8 00327868  2C 03 00 00 */	cmpwi r3, 0
/* 8035E2AC 0032786C  40 82 00 0C */	bne .L_8035E2B8
/* 8035E2B0 00327870  38 60 FF FF */	li r3, -1
/* 8035E2B4 00327874  48 00 00 08 */	b .L_8035E2BC
.L_8035E2B8:
/* 8035E2B8 00327878  38 60 00 00 */	li r3, 0
.L_8035E2BC:
/* 8035E2BC 0032787C  2C 03 00 00 */	cmpwi r3, 0
/* 8035E2C0 00327880  40 80 00 08 */	bge .L_8035E2C8
/* 8035E2C4 00327884  48 00 00 B4 */	b .L_8035E378
.L_8035E2C8:
/* 8035E2C8 00327888  3C 60 80 56 */	lis r3, lbl_8055EDF0@ha
/* 8035E2CC 0032788C  38 80 00 00 */	li r4, 0
/* 8035E2D0 00327890  38 63 ED F0 */	addi r3, r3, lbl_8055EDF0@l
/* 8035E2D4 00327894  4B FE 50 BD */	bl IOS_Open
/* 8035E2D8 00327898  2C 03 00 00 */	cmpwi r3, 0
/* 8035E2DC 0032789C  7C 7E 1B 78 */	mr r30, r3
/* 8035E2E0 003278A0  40 80 00 1C */	bge .L_8035E2FC
/* 8035E2E4 003278A4  2C 03 FF FA */	cmpwi r3, -6
/* 8035E2E8 003278A8  40 82 00 0C */	bne .L_8035E2F4
/* 8035E2EC 003278AC  3B E0 FF E3 */	li r31, -29
/* 8035E2F0 003278B0  48 00 00 10 */	b .L_8035E300
.L_8035E2F4:
/* 8035E2F4 003278B4  3B E0 FF D6 */	li r31, -42
/* 8035E2F8 003278B8  48 00 00 08 */	b .L_8035E300
.L_8035E2FC:
/* 8035E2FC 003278BC  3B E0 00 00 */	li r31, 0
.L_8035E300:
/* 8035E300 003278C0  2C 1F 00 00 */	cmpwi r31, 0
/* 8035E304 003278C4  41 80 00 70 */	blt .L_8035E374
/* 8035E308 003278C8  3C E0 80 5D */	lis r7, "@LOCAL@NWC24SuspendScheduler__Fv@susResult"@ha
/* 8035E30C 003278CC  7F C3 F3 78 */	mr r3, r30
/* 8035E310 003278D0  38 E7 54 60 */	addi r7, r7, "@LOCAL@NWC24SuspendScheduler__Fv@susResult"@l
/* 8035E314 003278D4  38 80 00 01 */	li r4, 1
/* 8035E318 003278D8  38 A0 00 00 */	li r5, 0
/* 8035E31C 003278DC  38 C0 00 00 */	li r6, 0
/* 8035E320 003278E0  39 00 00 20 */	li r8, 0x20
/* 8035E324 003278E4  4B FE 59 4D */	bl IOS_Ioctl
/* 8035E328 003278E8  2C 03 00 00 */	cmpwi r3, 0
/* 8035E32C 003278EC  40 80 00 0C */	bge .L_8035E338
/* 8035E330 003278F0  3B E0 FF D6 */	li r31, -42
/* 8035E334 003278F4  48 00 00 08 */	b .L_8035E33C
.L_8035E338:
/* 8035E338 003278F8  3B E0 00 00 */	li r31, 0
.L_8035E33C:
/* 8035E33C 003278FC  2C 1F 00 00 */	cmpwi r31, 0
/* 8035E340 00327900  41 80 00 0C */	blt .L_8035E34C
/* 8035E344 00327904  3C 60 80 5D */	lis r3, "@LOCAL@NWC24SuspendScheduler__Fv@susResult"@ha
/* 8035E348 00327908  83 E3 54 60 */	lwz r31, "@LOCAL@NWC24SuspendScheduler__Fv@susResult"@l(r3)
.L_8035E34C:
/* 8035E34C 0032790C  7F C3 F3 78 */	mr r3, r30
/* 8035E350 00327910  4B FE 52 31 */	bl IOS_Close
/* 8035E354 00327914  2C 03 00 00 */	cmpwi r3, 0
/* 8035E358 00327918  40 80 00 0C */	bge .L_8035E364
/* 8035E35C 0032791C  38 00 FF D6 */	li r0, -42
/* 8035E360 00327920  48 00 00 08 */	b .L_8035E368
.L_8035E364:
/* 8035E364 00327924  38 00 00 00 */	li r0, 0
.L_8035E368:
/* 8035E368 00327928  2C 00 00 00 */	cmpwi r0, 0
/* 8035E36C 0032792C  40 80 00 08 */	bge .L_8035E374
/* 8035E370 00327930  7C 1F 03 78 */	mr r31, r0
.L_8035E374:
/* 8035E374 00327934  7F E3 FB 78 */	mr r3, r31
.L_8035E378:
/* 8035E378 00327938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035E37C 0032793C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035E380 00327940  83 C1 00 08 */	lwz r30, 8(r1)
/* 8035E384 00327944  7C 08 03 A6 */	mtlr r0
/* 8035E388 00327948  38 21 00 10 */	addi r1, r1, 0x10
/* 8035E38C 0032794C  4E 80 00 20 */	blr
.endfn NWC24SuspendScheduler

.balign 16, 0
.fn NWC24iRequestShutdown, local
/* 8035E390 00327950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035E394 00327954  7C 08 02 A6 */	mflr r0
/* 8035E398 00327958  3C E0 80 5D */	lis r7, "@LOCAL@NWC24iRequestShutdown__FUlPl@shtResult@0"@ha
/* 8035E39C 0032795C  3D 20 80 36 */	lis r9, CallbackAsyncIpc@ha
/* 8035E3A0 00327960  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035E3A4 00327964  3C A0 80 5D */	lis r5, "@LOCAL@NWC24iRequestShutdown__FUlPl@shtBuffer"@ha
/* 8035E3A8 00327968  7C 8A 23 78 */	mr r10, r4
/* 8035E3AC 0032796C  38 E7 54 A0 */	addi r7, r7, "@LOCAL@NWC24iRequestShutdown__FUlPl@shtResult@0"@l
/* 8035E3B0 00327970  90 65 54 80 */	stw r3, "@LOCAL@NWC24iRequestShutdown__FUlPl@shtBuffer"@l(r5)
/* 8035E3B4 00327974  38 A5 54 80 */	addi r5, r5, "@LOCAL@NWC24iRequestShutdown__FUlPl@shtBuffer"@l
/* 8035E3B8 00327978  80 6D 9A 28 */	lwz r3, nwc24ShtFd@sda21(r13)
/* 8035E3BC 0032797C  39 29 E5 F0 */	addi r9, r9, CallbackAsyncIpc@l
/* 8035E3C0 00327980  38 80 00 28 */	li r4, 0x28
/* 8035E3C4 00327984  38 C0 00 20 */	li r6, 0x20
/* 8035E3C8 00327988  39 00 00 20 */	li r8, 0x20
/* 8035E3CC 0032798C  4B FE 57 65 */	bl IOS_IoctlAsync
/* 8035E3D0 00327990  2C 03 00 00 */	cmpwi r3, 0
/* 8035E3D4 00327994  40 80 00 0C */	bge .L_8035E3E0
/* 8035E3D8 00327998  38 60 FF D6 */	li r3, -42
/* 8035E3DC 0032799C  48 00 00 10 */	b .L_8035E3EC
.L_8035E3E0:
/* 8035E3E0 003279A0  38 00 00 01 */	li r0, 1
/* 8035E3E4 003279A4  90 0D B9 AC */	stw r0, NWC24iIsRequestPending@sda21(r13)
/* 8035E3E8 003279A8  38 60 00 00 */	li r3, 0
.L_8035E3EC:
/* 8035E3EC 003279AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035E3F0 003279B0  7C 08 03 A6 */	mtlr r0
/* 8035E3F4 003279B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8035E3F8 003279B8  4E 80 00 20 */	blr 
.endfn NWC24iRequestShutdown

.balign 16, 0
.fn NWC24Shutdown_, local
/* 8035E400 003279C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035E404 003279C4  7C 08 02 A6 */	mflr r0
/* 8035E408 003279C8  2C 03 00 00 */	cmpwi r3, 0
/* 8035E40C 003279CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035E410 003279D0  41 82 00 0C */	beq .L_8035E41C
/* 8035E414 003279D4  38 60 00 01 */	li r3, 1
/* 8035E418 003279D8  48 00 00 90 */	b .L_8035E4A8
.L_8035E41C:
/* 8035E41C 003279DC  80 0D B9 B0 */	lwz r0, "@LOCAL@NWC24Shutdown___FiUl@shuttingdown"@sda21(r13)
/* 8035E420 003279E0  2C 00 00 00 */	cmpwi r0, 0
/* 8035E424 003279E4  41 82 00 64 */	beq .L_8035E488
/* 8035E428 003279E8  80 0D B9 AC */	lwz r0, NWC24iIsRequestPending@sda21(r13)
/* 8035E42C 003279EC  2C 00 00 00 */	cmpwi r0, 0
/* 8035E430 003279F0  41 82 00 0C */	beq .L_8035E43C
/* 8035E434 003279F4  38 60 00 00 */	li r3, 0
/* 8035E438 003279F8  48 00 00 70 */	b .L_8035E4A8
.L_8035E43C:
/* 8035E43C 003279FC  80 0D B9 B4 */	lwz r0, "@LOCAL@NWC24Shutdown___FiUl@result@0"@sda21(r13)
/* 8035E440 00327A00  2C 00 00 00 */	cmpwi r0, 0
/* 8035E444 00327A04  41 80 00 0C */	blt .L_8035E450
/* 8035E448 00327A08  38 60 00 01 */	li r3, 1
/* 8035E44C 00327A0C  48 00 00 5C */	b .L_8035E4A8
.L_8035E450:
/* 8035E450 00327A10  80 6D B9 A8 */	lwz r3, nwc24ShtRetryRest@sda21(r13)
/* 8035E454 00327A14  2C 03 00 00 */	cmpwi r3, 0
/* 8035E458 00327A18  40 81 00 18 */	ble .L_8035E470
/* 8035E45C 00327A1C  38 03 FF FF */	addi r0, r3, -1
/* 8035E460 00327A20  38 60 00 00 */	li r3, 0
/* 8035E464 00327A24  90 6D B9 B0 */	stw r3, "@LOCAL@NWC24Shutdown___FiUl@shuttingdown"@sda21(r13)
/* 8035E468 00327A28  90 0D B9 A8 */	stw r0, nwc24ShtRetryRest@sda21(r13)
/* 8035E46C 00327A2C  48 00 00 38 */	b .L_8035E4A4
.L_8035E470:
/* 8035E470 00327A30  3C 60 80 56 */	lis r3, lbl_8055EE4C@ha
/* 8035E474 00327A34  38 63 EE 4C */	addi r3, r3, lbl_8055EE4C@l
/* 8035E478 00327A38  4C C6 31 82 */	crclr 6
/* 8035E47C 00327A3C  4B FF 6A 75 */	bl OSReport
/* 8035E480 00327A40  38 60 00 01 */	li r3, 1
/* 8035E484 00327A44  48 00 00 24 */	b .L_8035E4A8
.L_8035E488:
/* 8035E488 00327A48  7C 83 23 78 */	mr r3, r4
/* 8035E48C 00327A4C  38 8D B9 B4 */	addi r4, r13, "@LOCAL@NWC24Shutdown___FiUl@result@0"@sda21
/* 8035E490 00327A50  4B FF FF 01 */	bl NWC24iRequestShutdown
/* 8035E494 00327A54  2C 03 00 00 */	cmpwi r3, 0
/* 8035E498 00327A58  41 80 00 0C */	blt .L_8035E4A4
/* 8035E49C 00327A5C  38 00 00 01 */	li r0, 1
/* 8035E4A0 00327A60  90 0D B9 B0 */	stw r0, "@LOCAL@NWC24Shutdown___FiUl@shuttingdown"@sda21(r13)
.L_8035E4A4:
/* 8035E4A4 00327A64  38 60 00 00 */	li r3, 0
.L_8035E4A8:
/* 8035E4A8 00327A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035E4AC 00327A6C  7C 08 03 A6 */	mtlr r0
/* 8035E4B0 00327A70  38 21 00 10 */	addi r1, r1, 0x10
/* 8035E4B4 00327A74  4E 80 00 20 */	blr 
.endfn NWC24Shutdown_

.balign 16, 0
.fn NWC24iSetRtcCounter_, local
/* 8035E4C0 00327A80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035E4C4 00327A84  7C 08 02 A6 */	mflr r0
/* 8035E4C8 00327A88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035E4CC 00327A8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035E4D0 00327A90  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035E4D4 00327A94  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8035E4D8 00327A98  7C 9D 23 78 */	mr r29, r4
/* 8035E4DC 00327A9C  93 81 00 10 */	stw r28, 0x10(r1)
/* 8035E4E0 00327AA0  7C 7C 1B 78 */	mr r28, r3
/* 8035E4E4 00327AA4  4B FF D0 FD */	bl OSGetCurrentThread
/* 8035E4E8 00327AA8  2C 03 00 00 */	cmpwi r3, 0
/* 8035E4EC 00327AAC  40 82 00 0C */	bne .L_8035E4F8
/* 8035E4F0 00327AB0  38 60 FF FF */	li r3, -1
/* 8035E4F4 00327AB4  48 00 00 08 */	b .L_8035E4FC
.L_8035E4F8:
/* 8035E4F8 00327AB8  38 60 00 00 */	li r3, 0
.L_8035E4FC:
/* 8035E4FC 00327ABC  2C 03 00 00 */	cmpwi r3, 0
/* 8035E500 00327AC0  40 80 00 08 */	bge .L_8035E508
/* 8035E504 00327AC4  48 00 00 C0 */	b .L_8035E5C4
.L_8035E508:
/* 8035E508 00327AC8  3C 60 80 56 */	lis r3, lbl_8055EE80@ha
/* 8035E50C 00327ACC  38 80 00 00 */	li r4, 0
/* 8035E510 00327AD0  38 63 EE 80 */	addi r3, r3, lbl_8055EE80@l
/* 8035E514 00327AD4  4B FE 4E 7D */	bl IOS_Open
/* 8035E518 00327AD8  2C 03 00 00 */	cmpwi r3, 0
/* 8035E51C 00327ADC  7C 7E 1B 78 */	mr r30, r3
/* 8035E520 00327AE0  40 80 00 1C */	bge .L_8035E53C
/* 8035E524 00327AE4  2C 03 FF FA */	cmpwi r3, -6
/* 8035E528 00327AE8  40 82 00 0C */	bne .L_8035E534
/* 8035E52C 00327AEC  3B E0 FF E3 */	li r31, -29
/* 8035E530 00327AF0  48 00 00 10 */	b .L_8035E540
.L_8035E534:
/* 8035E534 00327AF4  3B E0 FF D6 */	li r31, -42
/* 8035E538 00327AF8  48 00 00 08 */	b .L_8035E540
.L_8035E53C:
/* 8035E53C 00327AFC  3B E0 00 00 */	li r31, 0
.L_8035E540:
/* 8035E540 00327B00  2C 1F 00 00 */	cmpwi r31, 0
/* 8035E544 00327B04  41 80 00 7C */	blt .L_8035E5C0
/* 8035E548 00327B08  3C 60 80 5D */	lis r3, nwc24TimeCommonBuffer@ha
/* 8035E54C 00327B0C  3C E0 80 5D */	lis r7, nwc24TimeCommonResult@ha
/* 8035E550 00327B10  38 A3 54 C0 */	addi r5, r3, nwc24TimeCommonBuffer@l
/* 8035E554 00327B14  93 83 54 C0 */	stw r28, nwc24TimeCommonBuffer@l(r3)
/* 8035E558 00327B18  7F C3 F3 78 */	mr r3, r30
/* 8035E55C 00327B1C  38 E7 54 E0 */	addi r7, r7, nwc24TimeCommonResult@l
/* 8035E560 00327B20  93 A5 00 04 */	stw r29, 4(r5)
/* 8035E564 00327B24  38 80 00 17 */	li r4, 0x17
/* 8035E568 00327B28  38 C0 00 20 */	li r6, 0x20
/* 8035E56C 00327B2C  39 00 00 20 */	li r8, 0x20
/* 8035E570 00327B30  4B FE 57 01 */	bl IOS_Ioctl
/* 8035E574 00327B34  2C 03 00 00 */	cmpwi r3, 0
/* 8035E578 00327B38  40 80 00 0C */	bge .L_8035E584
/* 8035E57C 00327B3C  3B E0 FF D6 */	li r31, -42
/* 8035E580 00327B40  48 00 00 08 */	b .L_8035E588
.L_8035E584:
/* 8035E584 00327B44  3B E0 00 00 */	li r31, 0
.L_8035E588:
/* 8035E588 00327B48  2C 1F 00 00 */	cmpwi r31, 0
/* 8035E58C 00327B4C  41 80 00 0C */	blt .L_8035E598
/* 8035E590 00327B50  3C 60 80 5D */	lis r3, nwc24TimeCommonResult@ha
/* 8035E594 00327B54  83 E3 54 E0 */	lwz r31, nwc24TimeCommonResult@l(r3)
.L_8035E598:
/* 8035E598 00327B58  7F C3 F3 78 */	mr r3, r30
/* 8035E59C 00327B5C  4B FE 4F E5 */	bl IOS_Close
/* 8035E5A0 00327B60  2C 03 00 00 */	cmpwi r3, 0
/* 8035E5A4 00327B64  40 80 00 0C */	bge .L_8035E5B0
/* 8035E5A8 00327B68  38 00 FF D6 */	li r0, -42
/* 8035E5AC 00327B6C  48 00 00 08 */	b .L_8035E5B4
.L_8035E5B0:
/* 8035E5B0 00327B70  38 00 00 00 */	li r0, 0
.L_8035E5B4:
/* 8035E5B4 00327B74  2C 1F 00 00 */	cmpwi r31, 0
/* 8035E5B8 00327B78  41 80 00 08 */	blt .L_8035E5C0
/* 8035E5BC 00327B7C  7C 1F 03 78 */	mr r31, r0
.L_8035E5C0:
/* 8035E5C0 00327B80  7F E3 FB 78 */	mr r3, r31
.L_8035E5C4:
/* 8035E5C4 00327B84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035E5C8 00327B88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035E5CC 00327B8C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035E5D0 00327B90  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035E5D4 00327B94  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8035E5D8 00327B98  7C 08 03 A6 */	mtlr r0
/* 8035E5DC 00327B9C  38 21 00 20 */	addi r1, r1, 0x20
/* 8035E5E0 00327BA0  4E 80 00 20 */	blr 
.endfn NWC24iSetRtcCounter_

.balign 16, 0
.fn CallbackAsyncIpc, local
/* 8035E5F0 00327BB0  2C 04 00 00 */	cmpwi r4, 0
/* 8035E5F4 00327BB4  41 82 00 08 */	beq .L_8035E5FC
/* 8035E5F8 00327BB8  90 64 00 00 */	stw r3, 0(r4)
.L_8035E5FC:
/* 8035E5FC 00327BBC  38 00 00 00 */	li r0, 0
/* 8035E600 00327BC0  90 0D B9 AC */	stw r0, NWC24iIsRequestPending@sda21(r13)
/* 8035E604 00327BC4  38 60 00 00 */	li r3, 0
/* 8035E608 00327BC8  4E 80 00 20 */	blr 
.endfn CallbackAsyncIpc

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8


.obj lbl_8055ED30, global
	.asciz "Failed to register network shutdown function. %d\n"
	.balign 4
	.asciz "Failed to suspend the WiiConnect24 scheduler. %d\n"
	.balign 4
	.asciz "Failed to synchronize time with network resource managers. %d\n"
	.balign 4
	.asciz "NWC24iPrepareShutdown"
	.balign 4
.endobj lbl_8055ED30


.obj lbl_8055EDF0, global
	.asciz "/dev/net/kd/request"
	.asciz "NWC24SuspendScheduler"
	.balign 4
	.asciz "NWC24ResumeScheduler"
	.balign 4
	.asciz "NWC24iRequestShutdown"
	.balign 4
.endobj lbl_8055EDF0


.obj lbl_8055EE4C, global
	.asciz "NWC24Shutdown_: Give up!\n"
	.balign 4
	.asciz "NWC24iSetRtcCounter_"
	.balign 4
.endobj lbl_8055EE4C


.obj lbl_8055EE80, global
	.asciz "/dev/net/kd/time"
	.balign 4
.endobj lbl_8055EE80

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj nwc24ShtFd, local
	.4byte 0xFFFFFFFF
.endobj nwc24ShtFd

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj ShutdownFuncInfo, local
	.skip 0x10
.endobj ShutdownFuncInfo

.balign 32
.obj "@LOCAL@NWC24SuspendScheduler__Fv@susResult", local
	.skip 0x20
.endobj "@LOCAL@NWC24SuspendScheduler__Fv@susResult"

#@LOCAL@NWC24ResumeScheduler__Fv@susResult (unused)

.balign 32
.obj "@LOCAL@NWC24iRequestShutdown__FUlPl@shtBuffer", local
	.skip 0x20
.endobj "@LOCAL@NWC24iRequestShutdown__FUlPl@shtBuffer"

.balign 32
.obj "@LOCAL@NWC24iRequestShutdown__FUlPl@shtResult@0", local
	.skip 0x20
.endobj "@LOCAL@NWC24iRequestShutdown__FUlPl@shtResult@0"

.balign 32
.obj nwc24TimeCommonBuffer, local
	.skip 0x20
.endobj nwc24TimeCommonBuffer

.balign 32
.obj nwc24TimeCommonResult, local
	.skip 0x20
.endobj nwc24TimeCommonResult

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj nwc24ShtRetryRest, local
	.skip 0x4
.endobj nwc24ShtRetryRest

.obj NWC24iIsRequestPending, local
	.skip 0x4
.endobj NWC24iIsRequestPending

.obj "@LOCAL@NWC24Shutdown___FiUl@shuttingdown", local
	.skip 0x4
.endobj "@LOCAL@NWC24Shutdown___FiUl@shuttingdown"

.obj "@LOCAL@NWC24Shutdown___FiUl@result@0", local
	.skip 0x4
.endobj "@LOCAL@NWC24Shutdown___FiUl@result@0"
