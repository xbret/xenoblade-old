.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16

.fn WUDHidHostCallback, global
/* 8037BFE0 003455A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037BFE4 003455A4  7C 08 02 A6 */	mflr r0
/* 8037BFE8 003455A8  28 03 00 0F */	cmplwi r3, 0xf
/* 8037BFEC 003455AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037BFF0 003455B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037BFF4 003455B4  3F E0 80 56 */	lis r31, lbl_80563470@ha
/* 8037BFF8 003455B8  3B FF 34 70 */	addi r31, r31, lbl_80563470@l
/* 8037BFFC 003455BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037C000 003455C0  3F C0 80 5E */	lis r30, __rvl_wudcb@ha
/* 8037C004 003455C4  3B DE 12 80 */	addi r30, r30, __rvl_wudcb@l
/* 8037C008 003455C8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8037C00C 003455CC  7C 9D 23 78 */	mr r29, r4
/* 8037C010 003455D0  93 81 00 10 */	stw r28, 0x10(r1)
/* 8037C014 003455D4  41 81 05 2C */	bgt .L_8037C540
/* 8037C018 003455D8  3C A0 80 56 */	lis r5, jumptable_80563688@ha
/* 8037C01C 003455DC  54 60 10 3A */	slwi r0, r3, 2
/* 8037C020 003455E0  38 A5 36 88 */	addi r5, r5, jumptable_80563688@l
/* 8037C024 003455E4  7C A5 00 2E */	lwzx r5, r5, r0
/* 8037C028 003455E8  7C A9 03 A6 */	mtctr r5
/* 8037C02C 003455EC  4E 80 04 20 */	bctr
.L_8037C030:
/* 8037C030 003455F0  38 7F 00 00 */	addi r3, r31, 0x0
/* 8037C034 003455F4  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C038 003455F8  48 00 05 99 */	bl WUD_DEBUGPrint
/* 8037C03C 003455FC  80 1E 07 40 */	lwz r0, 0x740(r30)
/* 8037C040 00345600  60 00 00 01 */	ori r0, r0, 0x1
/* 8037C044 00345604  90 1E 07 40 */	stw r0, 0x740(r30)
/* 8037C048 00345608  48 00 04 F8 */	b .L_8037C540
.L_8037C04C:
/* 8037C04C 0034560C  38 7F 00 14 */	addi r3, r31, 0x14
/* 8037C050 00345610  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C054 00345614  48 00 05 7D */	bl WUD_DEBUGPrint
/* 8037C058 00345618  48 00 04 E8 */	b .L_8037C540
.L_8037C05C:
/* 8037C05C 0034561C  38 7F 00 28 */	addi r3, r31, 0x28
/* 8037C060 00345620  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C064 00345624  48 00 05 6D */	bl WUD_DEBUGPrint
/* 8037C068 00345628  88 9D 00 07 */	lbz r4, 0x7(r29)
/* 8037C06C 0034562C  38 7F 00 3C */	addi r3, r31, 0x3c
/* 8037C070 00345630  88 BD 00 00 */	lbz r5, 0x0(r29)
/* 8037C074 00345634  88 DD 00 01 */	lbz r6, 0x1(r29)
/* 8037C078 00345638  88 FD 00 02 */	lbz r7, 0x2(r29)
/* 8037C07C 0034563C  89 1D 00 03 */	lbz r8, 0x3(r29)
/* 8037C080 00345640  89 3D 00 04 */	lbz r9, 0x4(r29)
/* 8037C084 00345644  89 5D 00 05 */	lbz r10, 0x5(r29)
/* 8037C088 00345648  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C08C 0034564C  48 00 05 45 */	bl WUD_DEBUGPrint
/* 8037C090 00345650  88 9D 00 06 */	lbz r4, 0x6(r29)
/* 8037C094 00345654  2C 04 00 00 */	cmpwi r4, 0x0
/* 8037C098 00345658  40 82 01 3C */	bne .L_8037C1D4
/* 8037C09C 0034565C  4B FF FD 85 */	bl WUDiGetDiscoverDevice
/* 8037C0A0 00345660  7C 7C 1B 78 */	mr r28, r3
/* 8037C0A4 00345664  7F A4 EB 78 */	mr r4, r29
/* 8037C0A8 00345668  38 A0 00 06 */	li r5, 0x6
/* 8037C0AC 0034566C  38 63 00 40 */	addi r3, r3, 0x40
/* 8037C0B0 00345670  4B F4 27 7D */	bl memcmp
/* 8037C0B4 00345674  2C 03 00 00 */	cmpwi r3, 0x0
/* 8037C0B8 00345678  41 82 00 10 */	beq .L_8037C0C8
/* 8037C0BC 0034567C  7F A3 EB 78 */	mr r3, r29
/* 8037C0C0 00345680  4B FF E2 41 */	bl WUDiGetDevInfo
/* 8037C0C4 00345684  7C 7C 1B 78 */	mr r28, r3
.L_8037C0C8:
/* 8037C0C8 00345688  88 1C 00 59 */	lbz r0, 0x59(r28)
/* 8037C0CC 0034568C  2C 00 00 0C */	cmpwi r0, 0xc
/* 8037C0D0 00345690  41 82 00 10 */	beq .L_8037C0E0
/* 8037C0D4 00345694  2C 00 00 02 */	cmpwi r0, 0x2
/* 8037C0D8 00345698  41 82 00 14 */	beq .L_8037C0EC
/* 8037C0DC 0034569C  48 00 00 18 */	b .L_8037C0F4
.L_8037C0E0:
/* 8037C0E0 003456A0  38 00 00 12 */	li r0, 0x12
/* 8037C0E4 003456A4  98 1E 00 0C */	stb r0, 0xc(r30)
/* 8037C0E8 003456A8  48 00 00 0C */	b .L_8037C0F4
.L_8037C0EC:
/* 8037C0EC 003456AC  38 00 00 17 */	li r0, 0x17
/* 8037C0F0 003456B0  98 1E 00 0C */	stb r0, 0xc(r30)
.L_8037C0F4:
/* 8037C0F4 003456B4  38 00 00 08 */	li r0, 0x8
/* 8037C0F8 003456B8  98 1C 00 59 */	stb r0, 0x59(r28)
/* 8037C0FC 003456BC  7F A3 EB 78 */	mr r3, r29
/* 8037C100 003456C0  88 1D 00 07 */	lbz r0, 0x7(r29)
/* 8037C104 003456C4  98 1C 00 56 */	stb r0, 0x56(r28)
/* 8037C108 003456C8  88 9E 06 E4 */	lbz r4, 0x6e4(r30)
/* 8037C10C 003456CC  38 04 00 01 */	addi r0, r4, 0x1
/* 8037C110 003456D0  98 1E 06 E4 */	stb r0, 0x6e4(r30)
/* 8037C114 003456D4  4B FF E1 ED */	bl WUDiGetDevInfo
/* 8037C118 003456D8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8037C11C 003456DC  7C 7C 1B 78 */	mr r28, r3
/* 8037C120 003456E0  40 82 00 0C */	bne .L_8037C12C
/* 8037C124 003456E4  4B FF FC FD */	bl WUDiGetDiscoverDevice
/* 8037C128 003456E8  7C 7C 1B 78 */	mr r28, r3
.L_8037C12C:
/* 8037C12C 003456EC  88 7D 00 07 */	lbz r3, 0x7(r29)
/* 8037C130 003456F0  38 9C 00 40 */	addi r4, r28, 0x40
/* 8037C134 003456F4  4B FF FE 2D */	bl WUDiSetDevAddrForHandle
/* 8037C138 003456F8  88 7D 00 07 */	lbz r3, 0x7(r29)
/* 8037C13C 003456FC  38 80 00 00 */	li r4, 0x0
/* 8037C140 00345700  4B FF FE 61 */	bl WUDiSetQueueSizeForHandle
/* 8037C144 00345704  88 7D 00 07 */	lbz r3, 0x7(r29)
/* 8037C148 00345708  38 80 00 00 */	li r4, 0x0
/* 8037C14C 0034570C  4B FF FE 75 */	bl WUDiSetNotAckNumForHandle
/* 8037C150 00345710  88 1C 00 5B */	lbz r0, 0x5b(r28)
/* 8037C154 00345714  28 00 00 03 */	cmplwi r0, 0x3
/* 8037C158 00345718  41 82 00 0C */	beq .L_8037C164
/* 8037C15C 0034571C  28 00 00 01 */	cmplwi r0, 0x1
/* 8037C160 00345720  40 82 00 10 */	bne .L_8037C170
.L_8037C164:
/* 8037C164 00345724  7F 83 E3 78 */	mr r3, r28
/* 8037C168 00345728  4B FF E2 79 */	bl WUDiMoveTopSmpDevInfoPtr
/* 8037C16C 0034572C  48 00 00 3C */	b .L_8037C1A8
.L_8037C170:
/* 8037C170 00345730  4B FF 9A 71 */	bl WUDIsLinkedWBC
/* 8037C174 00345734  2C 03 00 00 */	cmpwi r3, 0x0
/* 8037C178 00345738  41 82 00 28 */	beq .L_8037C1A0
/* 8037C17C 0034573C  4B FF 9A 65 */	bl WUDIsLinkedWBC
/* 8037C180 00345740  2C 03 00 00 */	cmpwi r3, 0x0
/* 8037C184 00345744  41 82 00 24 */	beq .L_8037C1A8
/* 8037C188 00345748  7F 83 E3 78 */	mr r3, r28
/* 8037C18C 0034574C  38 9F 00 70 */	addi r4, r31, 0x70
/* 8037C190 00345750  38 A0 00 10 */	li r5, 0x10
/* 8037C194 00345754  4B F4 26 99 */	bl memcmp
/* 8037C198 00345758  2C 03 00 00 */	cmpwi r3, 0x0
/* 8037C19C 0034575C  40 82 00 0C */	bne .L_8037C1A8
.L_8037C1A0:
/* 8037C1A0 00345760  7F 83 E3 78 */	mr r3, r28
/* 8037C1A4 00345764  4B FF E5 ED */	bl WUDiMoveTopStdDevInfoPtr
.L_8037C1A8:
/* 8037C1A8 00345768  38 7C 00 40 */	addi r3, r28, 0x40
/* 8037C1AC 0034576C  38 80 00 08 */	li r4, 0x8
/* 8037C1B0 00345770  4B FF D0 F1 */	bl WUDSetSniffMode
/* 8037C1B4 00345774  81 9E 06 F0 */	lwz r12, 0x6f0(r30)
/* 8037C1B8 00345778  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8037C1BC 0034577C  41 82 03 84 */	beq .L_8037C540
/* 8037C1C0 00345780  7F 83 E3 78 */	mr r3, r28
/* 8037C1C4 00345784  38 80 00 01 */	li r4, 0x1
/* 8037C1C8 00345788  7D 89 03 A6 */	mtctr r12
/* 8037C1CC 0034578C  4E 80 04 21 */	bctrl
/* 8037C1D0 00345790  48 00 03 70 */	b .L_8037C540
.L_8037C1D4:
/* 8037C1D4 00345794  38 7F 00 88 */	addi r3, r31, 0x88
/* 8037C1D8 00345798  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C1DC 0034579C  48 00 03 F5 */	bl WUD_DEBUGPrint
/* 8037C1E0 003457A0  88 1E 00 0C */	lbz r0, 0xc(r30)
/* 8037C1E4 003457A4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8037C1E8 003457A8  41 82 00 6C */	beq .L_8037C254
/* 8037C1EC 003457AC  4B FF FC 35 */	bl WUDiGetDiscoverDevice
/* 8037C1F0 003457B0  7C 7F 1B 78 */	mr r31, r3
/* 8037C1F4 003457B4  7F A3 EB 78 */	mr r3, r29
/* 8037C1F8 003457B8  38 9F 00 40 */	addi r4, r31, 0x40
/* 8037C1FC 003457BC  38 A0 00 06 */	li r5, 0x6
/* 8037C200 003457C0  4B F4 26 2D */	bl memcmp
/* 8037C204 003457C4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8037C208 003457C8  40 82 03 38 */	bne .L_8037C540
/* 8037C20C 003457CC  88 1F 00 59 */	lbz r0, 0x59(r31)
/* 8037C210 003457D0  28 00 00 02 */	cmplwi r0, 0x2
/* 8037C214 003457D4  40 82 03 2C */	bne .L_8037C540
/* 8037C218 003457D8  7F A3 EB 78 */	mr r3, r29
/* 8037C21C 003457DC  4B FF E0 E5 */	bl WUDiGetDevInfo
/* 8037C220 003457E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8037C224 003457E4  41 82 00 24 */	beq .L_8037C248
/* 8037C228 003457E8  88 1D 00 06 */	lbz r0, 0x6(r29)
/* 8037C22C 003457EC  28 00 00 0C */	cmplwi r0, 0xc
/* 8037C230 003457F0  40 82 00 18 */	bne .L_8037C248
/* 8037C234 003457F4  7F A3 EB 78 */	mr r3, r29
/* 8037C238 003457F8  4B FF DF 49 */	bl WUDiRemoveDevice
/* 8037C23C 003457FC  88 7E 06 E5 */	lbz r3, 0x6e5(r30)
/* 8037C240 00345800  38 03 FF FF */	addi r0, r3, -0x1
/* 8037C244 00345804  98 1E 06 E5 */	stb r0, 0x6e5(r30)
.L_8037C248:
/* 8037C248 00345808  38 00 00 FF */	li r0, 0xff
/* 8037C24C 0034580C  98 1E 00 0C */	stb r0, 0xc(r30)
/* 8037C250 00345810  48 00 02 F0 */	b .L_8037C540
.L_8037C254:
/* 8037C254 00345814  7F A3 EB 78 */	mr r3, r29
/* 8037C258 00345818  4B FF E0 A9 */	bl WUDiGetDevInfo
/* 8037C25C 0034581C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8037C260 00345820  41 82 02 E0 */	beq .L_8037C540
/* 8037C264 00345824  88 1D 00 06 */	lbz r0, 0x6(r29)
/* 8037C268 00345828  28 00 00 0C */	cmplwi r0, 0xc
/* 8037C26C 0034582C  40 82 02 D4 */	bne .L_8037C540
/* 8037C270 00345830  7F A3 EB 78 */	mr r3, r29
/* 8037C274 00345834  4B FF E0 8D */	bl WUDiGetDevInfo
/* 8037C278 00345838  2C 03 00 00 */	cmpwi r3, 0x0
/* 8037C27C 0034583C  41 82 00 24 */	beq .L_8037C2A0
/* 8037C280 00345840  88 03 00 5B */	lbz r0, 0x5b(r3)
/* 8037C284 00345844  28 00 00 03 */	cmplwi r0, 0x3
/* 8037C288 00345848  41 82 00 0C */	beq .L_8037C294
/* 8037C28C 0034584C  28 00 00 01 */	cmplwi r0, 0x1
/* 8037C290 00345850  40 82 00 0C */	bne .L_8037C29C
.L_8037C294:
/* 8037C294 00345854  4B FF E2 6D */	bl WUDiMoveBottomSmpDevInfoPtr
/* 8037C298 00345858  48 00 00 08 */	b .L_8037C2A0
.L_8037C29C:
/* 8037C29C 0034585C  4B FF E6 15 */	bl WUDiMoveBottomStdDevInfoPtr
.L_8037C2A0:
/* 8037C2A0 00345860  7F A3 EB 78 */	mr r3, r29
/* 8037C2A4 00345864  4B FF DE DD */	bl WUDiRemoveDevice
/* 8037C2A8 00345868  88 7E 06 E5 */	lbz r3, 0x6e5(r30)
/* 8037C2AC 0034586C  38 03 FF FF */	addi r0, r3, -0x1
/* 8037C2B0 00345870  98 1E 06 E5 */	stb r0, 0x6e5(r30)
/* 8037C2B4 00345874  48 00 02 8C */	b .L_8037C540
.L_8037C2B8:
/* 8037C2B8 00345878  38 7F 00 98 */	addi r3, r31, 0x98
/* 8037C2BC 0034587C  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C2C0 00345880  48 00 03 11 */	bl WUD_DEBUGPrint
/* 8037C2C4 00345884  88 9E 06 E4 */	lbz r4, 0x6e4(r30)
/* 8037C2C8 00345888  38 7F 00 AC */	addi r3, r31, 0xac
/* 8037C2CC 0034588C  38 04 FF FF */	addi r0, r4, -0x1
/* 8037C2D0 00345890  98 1E 06 E4 */	stb r0, 0x6e4(r30)
/* 8037C2D4 00345894  88 9D 00 01 */	lbz r4, 0x1(r29)
/* 8037C2D8 00345898  88 BD 00 00 */	lbz r5, 0x0(r29)
/* 8037C2DC 0034589C  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C2E0 003458A0  48 00 02 F1 */	bl WUD_DEBUGPrint
/* 8037C2E4 003458A4  88 7D 00 01 */	lbz r3, 0x1(r29)
/* 8037C2E8 003458A8  4B FF FC 99 */	bl WUDiGetDevAddrForHandle
/* 8037C2EC 003458AC  4B FF E0 15 */	bl WUDiGetDevInfo
/* 8037C2F0 003458B0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8037C2F4 003458B4  7C 7C 1B 78 */	mr r28, r3
/* 8037C2F8 003458B8  41 82 00 5C */	beq .L_8037C354
/* 8037C2FC 003458BC  88 03 00 5B */	lbz r0, 0x5b(r3)
/* 8037C300 003458C0  28 00 00 03 */	cmplwi r0, 0x3
/* 8037C304 003458C4  41 82 00 0C */	beq .L_8037C310
/* 8037C308 003458C8  28 00 00 01 */	cmplwi r0, 0x1
/* 8037C30C 003458CC  40 82 00 10 */	bne .L_8037C31C
.L_8037C310:
/* 8037C310 003458D0  7F 83 E3 78 */	mr r3, r28
/* 8037C314 003458D4  4B FF E3 0D */	bl WUDiMoveTopOfDisconnectedSmpDevice
/* 8037C318 003458D8  48 00 00 3C */	b .L_8037C354
.L_8037C31C:
/* 8037C31C 003458DC  4B FF 98 C5 */	bl WUDIsLinkedWBC
/* 8037C320 003458E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8037C324 003458E4  41 82 00 28 */	beq .L_8037C34C
/* 8037C328 003458E8  4B FF 98 B9 */	bl WUDIsLinkedWBC
/* 8037C32C 003458EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8037C330 003458F0  41 82 00 24 */	beq .L_8037C354
/* 8037C334 003458F4  7F 83 E3 78 */	mr r3, r28
/* 8037C338 003458F8  38 9F 00 70 */	addi r4, r31, 0x70
/* 8037C33C 003458FC  38 A0 00 10 */	li r5, 0x10
/* 8037C340 00345900  4B F4 24 ED */	bl memcmp
/* 8037C344 00345904  2C 03 00 00 */	cmpwi r3, 0x0
/* 8037C348 00345908  40 82 00 0C */	bne .L_8037C354
.L_8037C34C:
/* 8037C34C 0034590C  7F 83 E3 78 */	mr r3, r28
/* 8037C350 00345910  4B FF E6 81 */	bl WUDiMoveTopOfDisconnectedStdDevice
.L_8037C354:
/* 8037C354 00345914  88 7D 00 01 */	lbz r3, 0x1(r29)
/* 8037C358 00345918  38 80 00 00 */	li r4, 0x0
/* 8037C35C 0034591C  4B FF FC 05 */	bl WUDiSetDevAddrForHandle
/* 8037C360 00345920  88 7D 00 01 */	lbz r3, 0x1(r29)
/* 8037C364 00345924  38 80 00 00 */	li r4, 0x0
/* 8037C368 00345928  4B FF FC 39 */	bl WUDiSetQueueSizeForHandle
/* 8037C36C 0034592C  88 7D 00 01 */	lbz r3, 0x1(r29)
/* 8037C370 00345930  38 80 00 00 */	li r4, 0x0
/* 8037C374 00345934  4B FF FC 4D */	bl WUDiSetNotAckNumForHandle
/* 8037C378 00345938  81 9E 06 F0 */	lwz r12, 0x6f0(r30)
/* 8037C37C 0034593C  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8037C380 00345940  41 82 01 C0 */	beq .L_8037C540
/* 8037C384 00345944  7F 83 E3 78 */	mr r3, r28
/* 8037C388 00345948  38 80 00 00 */	li r4, 0x0
/* 8037C38C 0034594C  7D 89 03 A6 */	mtctr r12
/* 8037C390 00345950  4E 80 04 21 */	bctrl
/* 8037C394 00345954  48 00 01 AC */	b .L_8037C540
.L_8037C398:
/* 8037C398 00345958  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 8037C39C 0034595C  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C3A0 00345960  48 00 02 31 */	bl WUD_DEBUGPrint
/* 8037C3A4 00345964  88 1D 00 05 */	lbz r0, 0x5(r29)
/* 8037C3A8 00345968  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 8037C3AC 0034596C  90 01 00 08 */	stw r0, 0x8(r1)
/* 8037C3B0 00345970  88 9D 00 06 */	lbz r4, 0x6(r29)
/* 8037C3B4 00345974  88 BD 00 07 */	lbz r5, 0x7(r29)
/* 8037C3B8 00345978  88 DD 00 00 */	lbz r6, 0x0(r29)
/* 8037C3BC 0034597C  88 FD 00 01 */	lbz r7, 0x1(r29)
/* 8037C3C0 00345980  89 1D 00 02 */	lbz r8, 0x2(r29)
/* 8037C3C4 00345984  89 3D 00 03 */	lbz r9, 0x3(r29)
/* 8037C3C8 00345988  89 5D 00 04 */	lbz r10, 0x4(r29)
/* 8037C3CC 0034598C  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C3D0 00345990  48 00 02 01 */	bl WUD_DEBUGPrint
/* 8037C3D4 00345994  7F A3 EB 78 */	mr r3, r29
/* 8037C3D8 00345998  4B FF DF 29 */	bl WUDiGetDevInfo
/* 8037C3DC 0034599C  88 1D 00 07 */	lbz r0, 0x7(r29)
/* 8037C3E0 003459A0  38 83 00 40 */	addi r4, r3, 0x40
/* 8037C3E4 003459A4  98 03 00 56 */	stb r0, 0x56(r3)
/* 8037C3E8 003459A8  88 7D 00 07 */	lbz r3, 0x7(r29)
/* 8037C3EC 003459AC  4B FF FB 75 */	bl WUDiSetDevAddrForHandle
/* 8037C3F0 003459B0  88 7D 00 07 */	lbz r3, 0x7(r29)
/* 8037C3F4 003459B4  38 80 00 00 */	li r4, 0x0
/* 8037C3F8 003459B8  4B FF FB A9 */	bl WUDiSetQueueSizeForHandle
/* 8037C3FC 003459BC  88 7D 00 07 */	lbz r3, 0x7(r29)
/* 8037C400 003459C0  38 80 00 00 */	li r4, 0x0
/* 8037C404 003459C4  4B FF FB BD */	bl WUDiSetNotAckNumForHandle
/* 8037C408 003459C8  48 00 01 38 */	b .L_8037C540
.L_8037C40C:
/* 8037C40C 003459CC  38 7F 01 24 */	addi r3, r31, 0x124
/* 8037C410 003459D0  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C414 003459D4  48 00 01 BD */	bl WUD_DEBUGPrint
/* 8037C418 003459D8  88 1D 00 05 */	lbz r0, 0x5(r29)
/* 8037C41C 003459DC  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 8037C420 003459E0  90 01 00 08 */	stw r0, 0x8(r1)
/* 8037C424 003459E4  88 9D 00 06 */	lbz r4, 0x6(r29)
/* 8037C428 003459E8  88 BD 00 07 */	lbz r5, 0x7(r29)
/* 8037C42C 003459EC  88 DD 00 00 */	lbz r6, 0x0(r29)
/* 8037C430 003459F0  88 FD 00 01 */	lbz r7, 0x1(r29)
/* 8037C434 003459F4  89 1D 00 02 */	lbz r8, 0x2(r29)
/* 8037C438 003459F8  89 3D 00 03 */	lbz r9, 0x3(r29)
/* 8037C43C 003459FC  89 5D 00 04 */	lbz r10, 0x4(r29)
/* 8037C440 00345A00  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C444 00345A04  48 00 01 8D */	bl WUD_DEBUGPrint
/* 8037C448 00345A08  48 00 00 F8 */	b .L_8037C540
.L_8037C44C:
/* 8037C44C 00345A0C  A0 04 00 00 */	lhz r0, 0x0(r4)
/* 8037C450 00345A10  B0 1E 07 44 */	sth r0, 0x744(r30)
/* 8037C454 00345A14  88 7E 06 E5 */	lbz r3, 0x6e5(r30)
/* 8037C458 00345A18  A0 04 00 02 */	lhz r0, 0x2(r4)
/* 8037C45C 00345A1C  B0 1E 07 46 */	sth r0, 0x746(r30)
/* 8037C460 00345A20  A0 04 00 04 */	lhz r0, 0x4(r4)
/* 8037C464 00345A24  7C 03 00 00 */	cmpw r3, r0
/* 8037C468 00345A28  40 80 00 18 */	bge .L_8037C480
/* 8037C46C 00345A2C  38 7F 01 38 */	addi r3, r31, 0x138
/* 8037C470 00345A30  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C474 00345A34  4B FD 8A 7D */	bl OSReport
/* 8037C478 00345A38  A0 1D 00 04 */	lhz r0, 0x4(r29)
/* 8037C47C 00345A3C  98 1E 06 E5 */	stb r0, 0x6e5(r30)
.L_8037C480:
/* 8037C480 00345A40  7F BE EB 78 */	mr r30, r29
/* 8037C484 00345A44  3B 80 00 00 */	li r28, 0x0
/* 8037C488 00345A48  48 00 00 2C */	b .L_8037C4B4
.L_8037C48C:
/* 8037C48C 00345A4C  88 7E 00 06 */	lbz r3, 0x6(r30)
/* 8037C490 00345A50  28 03 00 10 */	cmplwi r3, 0x10
/* 8037C494 00345A54  40 80 00 18 */	bge .L_8037C4AC
/* 8037C498 00345A58  A0 9E 00 08 */	lhz r4, 0x8(r30)
/* 8037C49C 00345A5C  4B FF FB 05 */	bl WUDiSetQueueSizeForHandle
/* 8037C4A0 00345A60  88 7E 00 06 */	lbz r3, 0x6(r30)
/* 8037C4A4 00345A64  A0 9E 00 0A */	lhz r4, 0xa(r30)
/* 8037C4A8 00345A68  4B FF FB 19 */	bl WUDiSetNotAckNumForHandle
.L_8037C4AC:
/* 8037C4AC 00345A6C  3B DE 00 06 */	addi r30, r30, 0x6
/* 8037C4B0 00345A70  3B 9C 00 01 */	addi r28, r28, 0x1
.L_8037C4B4:
/* 8037C4B4 00345A74  A0 1D 00 04 */	lhz r0, 0x4(r29)
/* 8037C4B8 00345A78  7C 1C 00 00 */	cmpw r28, r0
/* 8037C4BC 00345A7C  41 80 FF D0 */	blt .L_8037C48C
/* 8037C4C0 00345A80  48 00 00 80 */	b .L_8037C540
.L_8037C4C4:
/* 8037C4C4 00345A84  38 7F 01 60 */	addi r3, r31, 0x160
/* 8037C4C8 00345A88  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C4CC 00345A8C  48 00 01 05 */	bl WUD_DEBUGPrint
/* 8037C4D0 00345A90  48 00 00 70 */	b .L_8037C540
.L_8037C4D4:
/* 8037C4D4 00345A94  38 7F 01 74 */	addi r3, r31, 0x174
/* 8037C4D8 00345A98  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C4DC 00345A9C  48 00 00 F5 */	bl WUD_DEBUGPrint
/* 8037C4E0 00345AA0  48 00 00 60 */	b .L_8037C540
.L_8037C4E4:
/* 8037C4E4 00345AA4  38 7F 01 88 */	addi r3, r31, 0x188
/* 8037C4E8 00345AA8  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C4EC 00345AAC  48 00 00 E5 */	bl WUD_DEBUGPrint
/* 8037C4F0 00345AB0  48 00 00 50 */	b .L_8037C540
.L_8037C4F4:
/* 8037C4F4 00345AB4  38 7F 01 A0 */	addi r3, r31, 0x1a0
/* 8037C4F8 00345AB8  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C4FC 00345ABC  48 00 00 D5 */	bl WUD_DEBUGPrint
/* 8037C500 00345AC0  48 00 00 40 */	b .L_8037C540
.L_8037C504:
/* 8037C504 00345AC4  38 7F 01 B8 */	addi r3, r31, 0x1b8
/* 8037C508 00345AC8  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C50C 00345ACC  48 00 00 C5 */	bl WUD_DEBUGPrint
/* 8037C510 00345AD0  48 00 00 30 */	b .L_8037C540
.L_8037C514:
/* 8037C514 00345AD4  38 7F 01 D0 */	addi r3, r31, 0x1d0
/* 8037C518 00345AD8  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C51C 00345ADC  48 00 00 B5 */	bl WUD_DEBUGPrint
/* 8037C520 00345AE0  48 00 00 20 */	b .L_8037C540
.L_8037C524:
/* 8037C524 00345AE4  38 7F 01 E8 */	addi r3, r31, 0x1e8
/* 8037C528 00345AE8  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C52C 00345AEC  48 00 00 A5 */	bl WUD_DEBUGPrint
/* 8037C530 00345AF0  48 00 00 10 */	b .L_8037C540
.L_8037C534:
/* 8037C534 00345AF4  38 7F 02 00 */	addi r3, r31, 0x200
/* 8037C538 00345AF8  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C53C 00345AFC  48 00 00 95 */	bl WUD_DEBUGPrint
.L_8037C540:
/* 8037C540 00345B00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037C544 00345B04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037C548 00345B08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037C54C 00345B0C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8037C550 00345B10  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8037C554 00345B14  7C 08 03 A6 */	mtlr r0
/* 8037C558 00345B18  38 21 00 20 */	addi r1, r1, 0x20
/* 8037C55C 00345B1C  4E 80 00 20 */	blr
.endfn WUDHidHostCallback

.fn bta_hh_co_data, global
/* 8037C560 00345B20  28 08 00 03 */	cmplwi r8, 0x3
/* 8037C564 00345B24  3C C0 80 5E */	lis r6, __rvl_wudcb@ha
/* 8037C568 00345B28  38 C6 12 80 */	addi r6, r6, __rvl_wudcb@l
/* 8037C56C 00345B2C  40 82 00 18 */	bne .L_8037C584
/* 8037C570 00345B30  81 86 06 EC */	lwz r12, 0x6ec(r6)
/* 8037C574 00345B34  2C 0C 00 00 */	cmpwi r12, 0x0
/* 8037C578 00345B38  4D 82 00 20 */	beqlr
/* 8037C57C 00345B3C  7D 89 03 A6 */	mtctr r12
/* 8037C580 00345B40  4E 80 04 20 */	bctr
.L_8037C584:
/* 8037C584 00345B44  3C 60 80 56 */	lis r3, lbl_805636C8@ha
/* 8037C588 00345B48  7D 04 43 78 */	mr r4, r8
/* 8037C58C 00345B4C  38 63 36 C8 */	addi r3, r3, lbl_805636C8@l
/* 8037C590 00345B50  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C594 00345B54  48 00 00 3C */	b WUD_DEBUGPrint
/* 8037C598 00345B58  4E 80 00 20 */	blr
.endfn bta_hh_co_data
/* 8037C59C 00345B5C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn bta_hh_co_open, global
/* 8037C5A0 00345B60  3C 60 80 56 */	lis r3, lbl_805636E0@ha
/* 8037C5A4 00345B64  38 63 36 E0 */	addi r3, r3, lbl_805636E0@l
/* 8037C5A8 00345B68  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C5AC 00345B6C  48 00 00 24 */	b WUD_DEBUGPrint
.endfn bta_hh_co_open

.fn bta_hh_co_close, global
/* 8037C5B0 00345B70  3C 60 80 56 */	lis r3, lbl_805636F4@ha
/* 8037C5B4 00345B74  38 63 36 F4 */	addi r3, r3, lbl_805636F4@l
/* 8037C5B8 00345B78  4C C6 31 82 */	crclr 4*cr1+eq
/* 8037C5BC 00345B7C  48 00 00 14 */	b WUD_DEBUGPrint
.endfn bta_hh_co_close

.fn bta_dm_co_get_compress_memory, global
/* 8037C5C0 00345B80  38 60 00 00 */	li r3, 0x0
/* 8037C5C4 00345B84  4E 80 00 20 */	blr
.endfn bta_dm_co_get_compress_memory
/* 8037C5C8 00345B88  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8037C5CC 00345B8C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

# 0x80563470 - 0x80563708
.data
.balign 8
.global lbl_80563470
lbl_80563470:
	.4byte 0x4254415F
	.4byte 0x48485F45
	.4byte 0x4E41424C
	.4byte 0x455F4556
	.4byte 0x540A0000
	.4byte 0x4254415F
	.4byte 0x48485F44
	.4byte 0x49534142
	.4byte 0x4C455F45
	.4byte 0x56540A00
	.4byte 0x4254415F
	.4byte 0x48485F4F
	.4byte 0x50454E5F
	.4byte 0x4556540A
	.4byte 0x00000000
	.4byte 0x68616E64
	.4byte 0x6C653A20
	.4byte 0x25642C20
	.4byte 0x61646472
	.4byte 0x3A202530
	.4byte 0x32783A25
	.4byte 0x3032783A
	.4byte 0x25303278
	.4byte 0x3A253032
	.4byte 0x783A2530
	.4byte 0x32783A25
	.4byte 0x3032780A
	.4byte 0x00000000
	.4byte 0x4E696E74
	.4byte 0x656E646F
	.4byte 0x2052564C
	.4byte 0x2D434E54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x6572726F
	.4byte 0x7220636F
	.4byte 0x64653A20
	.4byte 0x25640A00
	.4byte 0x4254415F
	.4byte 0x48485F43
	.4byte 0x4C4F5345
	.4byte 0x5F455654
	.4byte 0x0A000000
	.4byte 0x64657669
	.4byte 0x63652068
	.4byte 0x616E646C
	.4byte 0x65203A20
	.4byte 0x25642020
	.4byte 0x20737461
	.4byte 0x74757320
	.4byte 0x3D202564
	.4byte 0x0A000000
	.4byte 0x4254415F
	.4byte 0x48485F41
	.4byte 0x44445F44
	.4byte 0x45565F45
	.4byte 0x56540A00
	.4byte 0x72657375
	.4byte 0x6C743A20
	.4byte 0x25642C20
	.4byte 0x68616E64
	.4byte 0x6C653A20
	.4byte 0x25642C20
	.4byte 0x61646472
	.4byte 0x3A202530
	.4byte 0x32783A25
	.4byte 0x3032783A
	.4byte 0x25303278
	.4byte 0x3A253032
	.4byte 0x783A2530
	.4byte 0x32783A25
	.4byte 0x3032780A
	.4byte 0x00000000
	.4byte 0x4254415F
	.4byte 0x48485F52
	.4byte 0x4D565F44
	.4byte 0x45565F45
	.4byte 0x56540A00
	.4byte 0x5741524E
	.4byte 0x494E473A
	.4byte 0x206C696E
	.4byte 0x6B206E75
	.4byte 0x6D20636F
	.4byte 0x756E7420
	.4byte 0x6973206D
	.4byte 0x6F646966
	.4byte 0x6965642E
	.4byte 0x0A000000
	.4byte 0x4254415F
	.4byte 0x48485F53
	.4byte 0x45545F52
	.4byte 0x50545F45
	.4byte 0x56540A00
	.4byte 0x4254415F
	.4byte 0x48485F47
	.4byte 0x45545F52
	.4byte 0x50545F45
	.4byte 0x56540A00
	.4byte 0x4254415F
	.4byte 0x48485F53
	.4byte 0x45545F50
	.4byte 0x524F544F
	.4byte 0x5F455654
	.4byte 0x0A000000
	.4byte 0x4254415F
	.4byte 0x48485F47
	.4byte 0x45545F50
	.4byte 0x524F544F
	.4byte 0x5F455654
	.4byte 0x0A000000
	.4byte 0x4254415F
	.4byte 0x48485F53
	.4byte 0x45545F49
	.4byte 0x444C455F
	.4byte 0x4556540A
	.4byte 0x00000000
	.4byte 0x4254415F
	.4byte 0x48485F47
	.4byte 0x45545F49
	.4byte 0x444C455F
	.4byte 0x4556540A
	.4byte 0x00000000
	.4byte 0x4254415F
	.4byte 0x48485F47
	.4byte 0x45545F44
	.4byte 0x4353505F
	.4byte 0x4556540A
	.4byte 0x00000000
	.4byte 0x4254415F
	.4byte 0x48485F56
	.4byte 0x535F554E
	.4byte 0x504C5547
	.4byte 0x5F455654
	.4byte 0x0A000000

jumptable_80563688:
	.rel WUDHidHostCallback, .L_8037C030
	.rel WUDHidHostCallback, .L_8037C04C
	.rel WUDHidHostCallback, .L_8037C05C
	.rel WUDHidHostCallback, .L_8037C2B8
	.rel WUDHidHostCallback, .L_8037C4D4
	.rel WUDHidHostCallback, .L_8037C4C4
	.rel WUDHidHostCallback, .L_8037C4F4
	.rel WUDHidHostCallback, .L_8037C4E4
	.rel WUDHidHostCallback, .L_8037C514
	.rel WUDHidHostCallback, .L_8037C504
	.rel WUDHidHostCallback, .L_8037C524
	.rel WUDHidHostCallback, .L_8037C398
	.rel WUDHidHostCallback, .L_8037C40C
	.rel WUDHidHostCallback, .L_8037C534
	.rel WUDHidHostCallback, .L_8037C540
	.rel WUDHidHostCallback, .L_8037C44C
.global lbl_805636C8
lbl_805636C8:
	.4byte 0x496E7661
	.4byte 0x6C696420
	.4byte 0x6170705F
	.4byte 0x6964205B
	.4byte 0x25645D0A
	.4byte 0x00000000
.global lbl_805636E0
lbl_805636E0:
	.4byte 0x6274615F
	.4byte 0x68685F63
	.4byte 0x6F5F6F70
	.4byte 0x656E2829
	.4byte 0x0A000000
.global lbl_805636F4
lbl_805636F4:
	.4byte 0x6274615F
	.4byte 0x68685F63
	.4byte 0x6F5F636C
	.4byte 0x6F736528
	.4byte 0x290A0000
