.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn Block_link, global
/* 802BBDB8 00285378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BBDBC 0028537C  7C 08 02 A6 */	mflr r0
/* 802BBDC0 00285380  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BBDC4 00285384  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BBDC8 00285388  93 C1 00 08 */	stw r30, 8(r1)
/* 802BBDCC 0028538C  7C 7E 1B 78 */	mr r30, r3
/* 802BBDD0 00285390  80 04 00 00 */	lwz r0, 0(r4)
/* 802BBDD4 00285394  54 06 00 38 */	rlwinm r6, r0, 0, 0, 0x1c
/* 802BBDD8 00285398  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 802BBDDC 0028539C  90 04 00 00 */	stw r0, 0(r4)
/* 802BBDE0 002853A0  7C A4 32 14 */	add r5, r4, r6
/* 802BBDE4 002853A4  7C 04 30 2E */	lwzx r0, r4, r6
/* 802BBDE8 002853A8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 802BBDEC 002853AC  7C 04 31 2E */	stwx r0, r4, r6
/* 802BBDF0 002853B0  90 C5 FF FC */	stw r6, -4(r5)
/* 802BBDF4 002853B4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802BBDF8 002853B8  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 802BBDFC 002853BC  7F E3 02 14 */	add r31, r3, r0
/* 802BBE00 002853C0  84 7F FF FC */	lwzu r3, -4(r31)
/* 802BBE04 002853C4  2C 03 00 00 */	cmpwi r3, 0
/* 802BBE08 002853C8  41 82 00 C0 */	beq .L_802BBEC8
/* 802BBE0C 002853CC  80 A3 00 08 */	lwz r5, 8(r3)
/* 802BBE10 002853D0  7C 83 23 78 */	mr r3, r4
/* 802BBE14 002853D4  90 A4 00 08 */	stw r5, 8(r4)
/* 802BBE18 002853D8  90 85 00 0C */	stw r4, 0xc(r5)
/* 802BBE1C 002853DC  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BBE20 002853E0  90 04 00 0C */	stw r0, 0xc(r4)
/* 802BBE24 002853E4  80 BF 00 00 */	lwz r5, 0(r31)
/* 802BBE28 002853E8  90 85 00 08 */	stw r4, 8(r5)
/* 802BBE2C 002853EC  90 9F 00 00 */	stw r4, 0(r31)
/* 802BBE30 002853F0  80 04 00 00 */	lwz r0, 0(r4)
/* 802BBE34 002853F4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 802BBE38 002853F8  40 82 00 80 */	bne .L_802BBEB8
/* 802BBE3C 002853FC  80 C4 FF FC */	lwz r6, -4(r4)
/* 802BBE40 00285400  54 C0 07 BD */	rlwinm. r0, r6, 0, 0x1e, 0x1e
/* 802BBE44 00285404  41 82 00 08 */	beq .L_802BBE4C
/* 802BBE48 00285408  48 00 00 70 */	b .L_802BBEB8
.L_802BBE4C:
/* 802BBE4C 0028540C  7C 66 20 50 */	subf r3, r6, r4
/* 802BBE50 00285410  80 03 00 00 */	lwz r0, 0(r3)
/* 802BBE54 00285414  54 05 07 7E */	clrlwi r5, r0, 0x1d
/* 802BBE58 00285418  90 A3 00 00 */	stw r5, 0(r3)
/* 802BBE5C 0028541C  80 04 00 00 */	lwz r0, 0(r4)
/* 802BBE60 00285420  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 802BBE64 00285424  7C 06 02 14 */	add r0, r6, r0
/* 802BBE68 00285428  50 05 00 38 */	rlwimi r5, r0, 0, 0, 0x1c
/* 802BBE6C 0028542C  90 A3 00 00 */	stw r5, 0(r3)
/* 802BBE70 00285430  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 802BBE74 00285434  40 82 00 18 */	bne .L_802BBE8C
/* 802BBE78 00285438  80 04 00 00 */	lwz r0, 0(r4)
/* 802BBE7C 0028543C  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 802BBE80 00285440  7C 06 02 14 */	add r0, r6, r0
/* 802BBE84 00285444  7C A3 02 14 */	add r5, r3, r0
/* 802BBE88 00285448  90 05 FF FC */	stw r0, -4(r5)
.L_802BBE8C:
/* 802BBE8C 0028544C  80 BF 00 00 */	lwz r5, 0(r31)
/* 802BBE90 00285450  7C 05 20 40 */	cmplw r5, r4
/* 802BBE94 00285454  40 82 00 0C */	bne .L_802BBEA0
/* 802BBE98 00285458  80 05 00 0C */	lwz r0, 0xc(r5)
/* 802BBE9C 0028545C  90 1F 00 00 */	stw r0, 0(r31)
.L_802BBEA0:
/* 802BBEA0 00285460  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 802BBEA4 00285464  80 04 00 08 */	lwz r0, 8(r4)
/* 802BBEA8 00285468  90 05 00 08 */	stw r0, 8(r5)
/* 802BBEAC 0028546C  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 802BBEB0 00285470  80 85 00 08 */	lwz r4, 8(r5)
/* 802BBEB4 00285474  90 A4 00 0C */	stw r5, 0xc(r4)
.L_802BBEB8:
/* 802BBEB8 00285478  90 7F 00 00 */	stw r3, 0(r31)
/* 802BBEBC 0028547C  7F E4 FB 78 */	mr r4, r31
/* 802BBEC0 00285480  48 00 00 49 */	bl SubBlock_merge_next
/* 802BBEC4 00285484  48 00 00 10 */	b .L_802BBED4
.L_802BBEC8:
/* 802BBEC8 00285488  90 9F 00 00 */	stw r4, 0(r31)
/* 802BBECC 0028548C  90 84 00 08 */	stw r4, 8(r4)
/* 802BBED0 00285490  90 84 00 0C */	stw r4, 0xc(r4)
.L_802BBED4:
/* 802BBED4 00285494  80 7F 00 00 */	lwz r3, 0(r31)
/* 802BBED8 00285498  80 1E 00 08 */	lwz r0, 8(r30)
/* 802BBEDC 0028549C  80 63 00 00 */	lwz r3, 0(r3)
/* 802BBEE0 002854A0  54 63 00 38 */	rlwinm r3, r3, 0, 0, 0x1c
/* 802BBEE4 002854A4  7C 00 18 40 */	cmplw r0, r3
/* 802BBEE8 002854A8  40 80 00 08 */	bge .L_802BBEF0
/* 802BBEEC 002854AC  90 7E 00 08 */	stw r3, 8(r30)
.L_802BBEF0:
/* 802BBEF0 002854B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BBEF4 002854B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BBEF8 002854B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BBEFC 002854BC  7C 08 03 A6 */	mtlr r0
/* 802BBF00 002854C0  38 21 00 10 */	addi r1, r1, 0x10
/* 802BBF04 002854C4  4E 80 00 20 */	blr 
.endfn Block_link

.fn SubBlock_merge_next, global
/* 802BBF08 002854C8  80 C3 00 00 */	lwz r6, 0(r3)
/* 802BBF0C 002854CC  54 C7 00 38 */	rlwinm r7, r6, 0, 0, 0x1c
/* 802BBF10 002854D0  7C A3 38 2E */	lwzx r5, r3, r7
/* 802BBF14 002854D4  7D 03 3A 14 */	add r8, r3, r7
/* 802BBF18 002854D8  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 802BBF1C 002854DC  4C 82 00 20 */	bnelr 
/* 802BBF20 002854E0  54 A5 00 38 */	rlwinm r5, r5, 0, 0, 0x1c
/* 802BBF24 002854E4  54 C0 07 7E */	clrlwi r0, r6, 0x1d
/* 802BBF28 002854E8  7C C7 2A 14 */	add r6, r7, r5
/* 802BBF2C 002854EC  50 C0 00 38 */	rlwimi r0, r6, 0, 0, 0x1c
/* 802BBF30 002854F0  90 03 00 00 */	stw r0, 0(r3)
/* 802BBF34 002854F4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802BBF38 002854F8  40 82 00 0C */	bne .L_802BBF44
/* 802BBF3C 002854FC  7C A3 32 14 */	add r5, r3, r6
/* 802BBF40 00285500  90 C5 FF FC */	stw r6, -4(r5)
.L_802BBF44:
/* 802BBF44 00285504  80 03 00 00 */	lwz r0, 0(r3)
/* 802BBF48 00285508  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802BBF4C 0028550C  40 82 00 14 */	bne .L_802BBF60
/* 802BBF50 00285510  7C 03 30 2E */	lwzx r0, r3, r6
/* 802BBF54 00285514  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 802BBF58 00285518  7C 03 31 2E */	stwx r0, r3, r6
/* 802BBF5C 0028551C  48 00 00 10 */	b .L_802BBF6C
.L_802BBF60:
/* 802BBF60 00285520  7C 03 30 2E */	lwzx r0, r3, r6
/* 802BBF64 00285524  60 00 00 04 */	ori r0, r0, 4
/* 802BBF68 00285528  7C 03 31 2E */	stwx r0, r3, r6
.L_802BBF6C:
/* 802BBF6C 0028552C  80 64 00 00 */	lwz r3, 0(r4)
/* 802BBF70 00285530  7C 03 40 40 */	cmplw r3, r8
/* 802BBF74 00285534  40 82 00 0C */	bne .L_802BBF80
/* 802BBF78 00285538  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802BBF7C 0028553C  90 04 00 00 */	stw r0, 0(r4)
.L_802BBF80:
/* 802BBF80 00285540  80 04 00 00 */	lwz r0, 0(r4)
/* 802BBF84 00285544  7C 00 40 40 */	cmplw r0, r8
/* 802BBF88 00285548  40 82 00 0C */	bne .L_802BBF94
/* 802BBF8C 0028554C  38 00 00 00 */	li r0, 0
/* 802BBF90 00285550  90 04 00 00 */	stw r0, 0(r4)
.L_802BBF94:
/* 802BBF94 00285554  80 68 00 0C */	lwz r3, 0xc(r8)
/* 802BBF98 00285558  80 08 00 08 */	lwz r0, 8(r8)
/* 802BBF9C 0028555C  90 03 00 08 */	stw r0, 8(r3)
/* 802BBFA0 00285560  80 68 00 08 */	lwz r3, 8(r8)
/* 802BBFA4 00285564  80 08 00 0C */	lwz r0, 0xc(r8)
/* 802BBFA8 00285568  90 03 00 0C */	stw r0, 0xc(r3)
/* 802BBFAC 0028556C  4E 80 00 20 */	blr 
.endfn SubBlock_merge_next

.fn deallocate_from_fixed_pools, global
/* 802BBFB0 00285570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BBFB4 00285574  7C 08 02 A6 */	mflr r0
/* 802BBFB8 00285578  3C C0 80 51 */	lis r6, lbl_8050CF00@ha
/* 802BBFBC 0028557C  38 E0 00 00 */	li r7, 0
/* 802BBFC0 00285580  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BBFC4 00285584  38 C6 CF 00 */	addi r6, r6, lbl_8050CF00@l
/* 802BBFC8 00285588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BBFCC 0028558C  7C 7F 1B 78 */	mr r31, r3
/* 802BBFD0 00285590  93 C1 00 08 */	stw r30, 8(r1)
/* 802BBFD4 00285594  48 00 00 0C */	b .L_802BBFE0
.L_802BBFD8:
/* 802BBFD8 00285598  38 C6 00 04 */	addi r6, r6, 4
/* 802BBFDC 0028559C  38 E7 00 01 */	addi r7, r7, 1
.L_802BBFE0:
/* 802BBFE0 002855A0  80 06 00 00 */	lwz r0, 0(r6)
/* 802BBFE4 002855A4  7C 05 00 40 */	cmplw r5, r0
/* 802BBFE8 002855A8  41 81 FF F0 */	bgt .L_802BBFD8
/* 802BBFEC 002855AC  38 C4 FF FC */	addi r6, r4, -4
/* 802BBFF0 002855B0  80 84 FF FC */	lwz r4, -4(r4)
/* 802BBFF4 002855B4  54 E0 18 38 */	slwi r0, r7, 3
/* 802BBFF8 002855B8  7C 63 02 14 */	add r3, r3, r0
/* 802BBFFC 002855BC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802BC000 002855C0  2C 00 00 00 */	cmpwi r0, 0
/* 802BC004 002855C4  40 82 00 6C */	bne .L_802BC070
/* 802BC008 002855C8  80 A3 00 08 */	lwz r5, 8(r3)
/* 802BC00C 002855CC  7C 05 20 40 */	cmplw r5, r4
/* 802BC010 002855D0  41 82 00 60 */	beq .L_802BC070
/* 802BC014 002855D4  80 03 00 04 */	lwz r0, 4(r3)
/* 802BC018 002855D8  7C 00 20 40 */	cmplw r0, r4
/* 802BC01C 002855DC  40 82 00 1C */	bne .L_802BC038
/* 802BC020 002855E0  80 05 00 00 */	lwz r0, 0(r5)
/* 802BC024 002855E4  90 03 00 08 */	stw r0, 8(r3)
/* 802BC028 002855E8  80 A3 00 04 */	lwz r5, 4(r3)
/* 802BC02C 002855EC  80 05 00 00 */	lwz r0, 0(r5)
/* 802BC030 002855F0  90 03 00 04 */	stw r0, 4(r3)
/* 802BC034 002855F4  48 00 00 3C */	b .L_802BC070
.L_802BC038:
/* 802BC038 002855F8  80 A4 00 00 */	lwz r5, 0(r4)
/* 802BC03C 002855FC  80 04 00 04 */	lwz r0, 4(r4)
/* 802BC040 00285600  90 05 00 04 */	stw r0, 4(r5)
/* 802BC044 00285604  80 A4 00 04 */	lwz r5, 4(r4)
/* 802BC048 00285608  80 04 00 00 */	lwz r0, 0(r4)
/* 802BC04C 0028560C  90 05 00 00 */	stw r0, 0(r5)
/* 802BC050 00285610  80 A3 00 08 */	lwz r5, 8(r3)
/* 802BC054 00285614  90 A4 00 04 */	stw r5, 4(r4)
/* 802BC058 00285618  80 A5 00 00 */	lwz r5, 0(r5)
/* 802BC05C 0028561C  90 A4 00 00 */	stw r5, 0(r4)
/* 802BC060 00285620  90 85 00 04 */	stw r4, 4(r5)
/* 802BC064 00285624  80 A4 00 04 */	lwz r5, 4(r4)
/* 802BC068 00285628  90 85 00 00 */	stw r4, 0(r5)
/* 802BC06C 0028562C  90 83 00 08 */	stw r4, 8(r3)
.L_802BC070:
/* 802BC070 00285630  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802BC074 00285634  90 06 00 04 */	stw r0, 4(r6)
/* 802BC078 00285638  90 C4 00 0C */	stw r6, 0xc(r4)
/* 802BC07C 0028563C  80 04 00 10 */	lwz r0, 0x10(r4)
/* 802BC080 00285640  34 00 FF FF */	addic. r0, r0, -1
/* 802BC084 00285644  90 04 00 10 */	stw r0, 0x10(r4)
/* 802BC088 00285648  40 82 00 FC */	bne .L_802BC184
/* 802BC08C 0028564C  80 03 00 08 */	lwz r0, 8(r3)
/* 802BC090 00285650  7C 00 20 40 */	cmplw r0, r4
/* 802BC094 00285654  40 82 00 0C */	bne .L_802BC0A0
/* 802BC098 00285658  80 04 00 04 */	lwz r0, 4(r4)
/* 802BC09C 0028565C  90 03 00 08 */	stw r0, 8(r3)
.L_802BC0A0:
/* 802BC0A0 00285660  80 03 00 04 */	lwz r0, 4(r3)
/* 802BC0A4 00285664  7C 00 20 40 */	cmplw r0, r4
/* 802BC0A8 00285668  40 82 00 0C */	bne .L_802BC0B4
/* 802BC0AC 0028566C  80 04 00 00 */	lwz r0, 0(r4)
/* 802BC0B0 00285670  90 03 00 04 */	stw r0, 4(r3)
.L_802BC0B4:
/* 802BC0B4 00285674  80 A4 00 00 */	lwz r5, 0(r4)
/* 802BC0B8 00285678  80 04 00 04 */	lwz r0, 4(r4)
/* 802BC0BC 0028567C  90 05 00 04 */	stw r0, 4(r5)
/* 802BC0C0 00285680  80 A4 00 04 */	lwz r5, 4(r4)
/* 802BC0C4 00285684  80 04 00 00 */	lwz r0, 0(r4)
/* 802BC0C8 00285688  90 05 00 00 */	stw r0, 0(r5)
/* 802BC0CC 0028568C  80 03 00 08 */	lwz r0, 8(r3)
/* 802BC0D0 00285690  7C 00 20 40 */	cmplw r0, r4
/* 802BC0D4 00285694  40 82 00 0C */	bne .L_802BC0E0
/* 802BC0D8 00285698  38 00 00 00 */	li r0, 0
/* 802BC0DC 0028569C  90 03 00 08 */	stw r0, 8(r3)
.L_802BC0E0:
/* 802BC0E0 002856A0  80 03 00 04 */	lwz r0, 4(r3)
/* 802BC0E4 002856A4  7C 00 20 40 */	cmplw r0, r4
/* 802BC0E8 002856A8  40 82 00 0C */	bne .L_802BC0F4
/* 802BC0EC 002856AC  38 00 00 00 */	li r0, 0
/* 802BC0F0 002856B0  90 03 00 04 */	stw r0, 4(r3)
.L_802BC0F4:
/* 802BC0F4 002856B4  38 84 FF F8 */	addi r4, r4, -8
/* 802BC0F8 002856B8  80 04 00 04 */	lwz r0, 4(r4)
/* 802BC0FC 002856BC  54 1E 00 3C */	rlwinm r30, r0, 0, 0, 0x1e
/* 802BC100 002856C0  7F C3 F3 78 */	mr r3, r30
/* 802BC104 002856C4  4B FF FC B5 */	bl Block_link
/* 802BC108 002856C8  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802BC10C 002856CC  38 A0 00 00 */	li r5, 0
/* 802BC110 002856D0  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 802BC114 002856D4  40 82 00 20 */	bne .L_802BC134
/* 802BC118 002856D8  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802BC11C 002856DC  54 64 00 38 */	rlwinm r4, r3, 0, 0, 0x1c
/* 802BC120 002856E0  54 03 00 38 */	rlwinm r3, r0, 0, 0, 0x1c
/* 802BC124 002856E4  38 03 FF E8 */	addi r0, r3, -24
/* 802BC128 002856E8  7C 04 00 40 */	cmplw r4, r0
/* 802BC12C 002856EC  40 82 00 08 */	bne .L_802BC134
/* 802BC130 002856F0  38 A0 00 01 */	li r5, 1
.L_802BC134:
/* 802BC134 002856F4  2C 05 00 00 */	cmpwi r5, 0
/* 802BC138 002856F8  41 82 00 4C */	beq .L_802BC184
/* 802BC13C 002856FC  80 9E 00 04 */	lwz r4, 4(r30)
/* 802BC140 00285700  7C 04 F0 40 */	cmplw r4, r30
/* 802BC144 00285704  40 82 00 08 */	bne .L_802BC14C
/* 802BC148 00285708  38 80 00 00 */	li r4, 0
.L_802BC14C:
/* 802BC14C 0028570C  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BC150 00285710  7C 00 F0 40 */	cmplw r0, r30
/* 802BC154 00285714  40 82 00 08 */	bne .L_802BC15C
/* 802BC158 00285718  90 9F 00 00 */	stw r4, 0(r31)
.L_802BC15C:
/* 802BC15C 0028571C  2C 04 00 00 */	cmpwi r4, 0
/* 802BC160 00285720  41 82 00 10 */	beq .L_802BC170
/* 802BC164 00285724  80 7E 00 00 */	lwz r3, 0(r30)
/* 802BC168 00285728  90 64 00 00 */	stw r3, 0(r4)
/* 802BC16C 0028572C  90 83 00 04 */	stw r4, 4(r3)
.L_802BC170:
/* 802BC170 00285730  38 00 00 00 */	li r0, 0
/* 802BC174 00285734  90 1E 00 04 */	stw r0, 4(r30)
/* 802BC178 00285738  7F C3 F3 78 */	mr r3, r30
/* 802BC17C 0028573C  90 1E 00 00 */	stw r0, 0(r30)
/* 802BC180 00285740  4B FF FB 81 */	bl __sys_free
.L_802BC184:
/* 802BC184 00285744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BC188 00285748  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BC18C 0028574C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BC190 00285750  7C 08 03 A6 */	mtlr r0
/* 802BC194 00285754  38 21 00 10 */	addi r1, r1, 0x10
/* 802BC198 00285758  4E 80 00 20 */	blr 
.endfn deallocate_from_fixed_pools

.fn free, global
/* 802BC19C 0028575C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BC1A0 00285760  7C 08 02 A6 */	mflr r0
/* 802BC1A4 00285764  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BC1A8 00285768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BC1AC 0028576C  7C 7F 1B 78 */	mr r31, r3
/* 802BC1B0 00285770  93 C1 00 08 */	stw r30, 8(r1)
/* 802BC1B4 00285774  88 0D B3 A8 */	lbz r0, lbl_80667528@sda21(r13)
/* 802BC1B8 00285778  2C 00 00 00 */	cmpwi r0, 0
/* 802BC1BC 0028577C  40 82 00 20 */	bne .L_802BC1DC
/* 802BC1C0 00285780  3C 60 80 58 */	lis r3, lbl_8057B010@ha
/* 802BC1C4 00285784  38 80 00 00 */	li r4, 0
/* 802BC1C8 00285788  38 63 B0 10 */	addi r3, r3, lbl_8057B010@l
/* 802BC1CC 0028578C  38 A0 00 34 */	li r5, 0x34
/* 802BC1D0 00285790  4B D4 81 81 */	bl memset
/* 802BC1D4 00285794  38 00 00 01 */	li r0, 1
/* 802BC1D8 00285798  98 0D B3 A8 */	stb r0, lbl_80667528@sda21(r13)
.L_802BC1DC:
/* 802BC1DC 0028579C  2C 1F 00 00 */	cmpwi r31, 0
/* 802BC1E0 002857A0  3F C0 80 58 */	lis r30, lbl_8057B010@ha
/* 802BC1E4 002857A4  3B DE B0 10 */	addi r30, r30, lbl_8057B010@l
/* 802BC1E8 002857A8  41 82 00 CC */	beq .L_802BC2B4
/* 802BC1EC 002857AC  80 7F FF FC */	lwz r3, -4(r31)
/* 802BC1F0 002857B0  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 802BC1F4 002857B4  40 82 00 0C */	bne .L_802BC200
/* 802BC1F8 002857B8  80 A3 00 08 */	lwz r5, 8(r3)
/* 802BC1FC 002857BC  48 00 00 10 */	b .L_802BC20C
.L_802BC200:
/* 802BC200 002857C0  80 1F FF F8 */	lwz r0, -8(r31)
/* 802BC204 002857C4  54 03 00 38 */	rlwinm r3, r0, 0, 0, 0x1c
/* 802BC208 002857C8  38 A3 FF F8 */	addi r5, r3, -8
.L_802BC20C:
/* 802BC20C 002857CC  28 05 00 44 */	cmplwi r5, 0x44
/* 802BC210 002857D0  41 81 00 14 */	bgt .L_802BC224
/* 802BC214 002857D4  7F C3 F3 78 */	mr r3, r30
/* 802BC218 002857D8  7F E4 FB 78 */	mr r4, r31
/* 802BC21C 002857DC  4B FF FD 95 */	bl deallocate_from_fixed_pools
/* 802BC220 002857E0  48 00 00 94 */	b .L_802BC2B4
.L_802BC224:
/* 802BC224 002857E4  80 1F FF FC */	lwz r0, -4(r31)
/* 802BC228 002857E8  38 9F FF F8 */	addi r4, r31, -8
/* 802BC22C 002857EC  54 1F 00 3C */	rlwinm r31, r0, 0, 0, 0x1e
/* 802BC230 002857F0  7F E3 FB 78 */	mr r3, r31
/* 802BC234 002857F4  4B FF FB 85 */	bl Block_link
/* 802BC238 002857F8  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802BC23C 002857FC  38 A0 00 00 */	li r5, 0
/* 802BC240 00285800  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 802BC244 00285804  40 82 00 20 */	bne .L_802BC264
/* 802BC248 00285808  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802BC24C 0028580C  54 64 00 38 */	rlwinm r4, r3, 0, 0, 0x1c
/* 802BC250 00285810  54 03 00 38 */	rlwinm r3, r0, 0, 0, 0x1c
/* 802BC254 00285814  38 03 FF E8 */	addi r0, r3, -24
/* 802BC258 00285818  7C 04 00 40 */	cmplw r4, r0
/* 802BC25C 0028581C  40 82 00 08 */	bne .L_802BC264
/* 802BC260 00285820  38 A0 00 01 */	li r5, 1
.L_802BC264:
/* 802BC264 00285824  2C 05 00 00 */	cmpwi r5, 0
/* 802BC268 00285828  41 82 00 4C */	beq .L_802BC2B4
/* 802BC26C 0028582C  80 9F 00 04 */	lwz r4, 4(r31)
/* 802BC270 00285830  7C 04 F8 40 */	cmplw r4, r31
/* 802BC274 00285834  40 82 00 08 */	bne .L_802BC27C
/* 802BC278 00285838  38 80 00 00 */	li r4, 0
.L_802BC27C:
/* 802BC27C 0028583C  80 1E 00 00 */	lwz r0, 0(r30)
/* 802BC280 00285840  7C 00 F8 40 */	cmplw r0, r31
/* 802BC284 00285844  40 82 00 08 */	bne .L_802BC28C
/* 802BC288 00285848  90 9E 00 00 */	stw r4, 0(r30)
.L_802BC28C:
/* 802BC28C 0028584C  2C 04 00 00 */	cmpwi r4, 0
/* 802BC290 00285850  41 82 00 10 */	beq .L_802BC2A0
/* 802BC294 00285854  80 7F 00 00 */	lwz r3, 0(r31)
/* 802BC298 00285858  90 64 00 00 */	stw r3, 0(r4)
/* 802BC29C 0028585C  90 83 00 04 */	stw r4, 4(r3)
.L_802BC2A0:
/* 802BC2A0 00285860  38 00 00 00 */	li r0, 0
/* 802BC2A4 00285864  90 1F 00 04 */	stw r0, 4(r31)
/* 802BC2A8 00285868  7F E3 FB 78 */	mr r3, r31
/* 802BC2AC 0028586C  90 1F 00 00 */	stw r0, 0(r31)
/* 802BC2B0 00285870  4B FF FA 51 */	bl __sys_free
.L_802BC2B4:
/* 802BC2B4 00285874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BC2B8 00285878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BC2BC 0028587C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BC2C0 00285880  7C 08 03 A6 */	mtlr r0
/* 802BC2C4 00285884  38 21 00 10 */	addi r1, r1, 0x10
/* 802BC2C8 00285888  4E 80 00 20 */	blr
.endfn free

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

#needed to align global_destructor_chain.c
#TODO: get rid of this in favor for padding in the C file
.4byte 0

.global lbl_80667528
lbl_80667528:
	.skip 0x8

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0
.global lbl_8050CF00
lbl_8050CF00:
	.4byte 0x00000004
	.4byte 0x0000000C
	.4byte 0x00000014
	.4byte 0x00000024
	.4byte 0x00000034
	.4byte 0x00000044

.section .bss, "wa"  # 0x80573C80 - 0x8066417B
.global lbl_8057B010
lbl_8057B010:
	.skip 0x38