.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn SUD_Init, global
/* 803D70B0 003A0670  3C A0 80 62 */	lis r5, sud_init_cnt@ha
/* 803D70B4 003A0674  80 65 D7 08 */	lwz r3, sud_init_cnt@l(r5)
/* 803D70B8 003A0678  2C 03 00 01 */	cmpwi r3, 1
/* 803D70BC 003A067C  4C 80 00 20 */	bgelr 
/* 803D70C0 003A0680  3C 80 80 52 */	lis r4, sud_ver_str@ha
/* 803D70C4 003A0684  38 03 00 01 */	addi r0, r3, 1
/* 803D70C8 003A0688  38 84 0D 60 */	addi r4, r4, sud_ver_str@l
/* 803D70CC 003A068C  3C 60 80 62 */	lis r3, sud_dummy@ha
/* 803D70D0 003A0690  90 83 D7 0C */	stw r4, sud_dummy@l(r3)
/* 803D70D4 003A0694  90 05 D7 08 */	stw r0, sud_init_cnt@l(r5)
/* 803D70D8 003A0698  4E 80 00 20 */	blr 
.endfn SUD_Init

.fn SUD_AnalyTypeDivField, global
/* 803D70DC 003A069C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D70E0 003A06A0  7C 08 02 A6 */	mflr r0
/* 803D70E4 003A06A4  2C 03 00 00 */	cmpwi r3, 0
/* 803D70E8 003A06A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D70EC 003A06AC  41 82 00 0C */	beq .L_803D70F8
/* 803D70F0 003A06B0  2C 04 00 00 */	cmpwi r4, 0
/* 803D70F4 003A06B4  40 80 00 0C */	bge .L_803D7100
.L_803D70F8:
/* 803D70F8 003A06B8  38 60 00 00 */	li r3, 0
/* 803D70FC 003A06BC  48 00 00 24 */	b .L_803D7120
.L_803D7100:
/* 803D7100 003A06C0  3C 80 80 52 */	lis r4, sud_lib_strpool@ha
/* 803D7104 003A06C4  38 A0 00 01 */	li r5, 1
/* 803D7108 003A06C8  38 84 0D 94 */	addi r4, r4, sud_lib_strpool@l
/* 803D710C 003A06CC  38 63 00 12 */	addi r3, r3, 0x12
/* 803D7110 003A06D0  38 84 00 15 */	addi r4, r4, 0x15
/* 803D7114 003A06D4  4B EE B8 3D */	bl strncmp
/* 803D7118 003A06D8  7C 60 00 34 */	cntlzw r0, r3
/* 803D711C 003A06DC  54 03 D9 7E */	srwi r3, r0, 5
.L_803D7120:
/* 803D7120 003A06E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D7124 003A06E4  7C 08 03 A6 */	mtlr r0
/* 803D7128 003A06E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803D712C 003A06EC  4E 80 00 20 */	blr 
.endfn SUD_AnalyTypeDivField

.fn SUD_AnalyTypeCcs, global
/* 803D7130 003A06F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D7134 003A06F4  7C 08 02 A6 */	mflr r0
/* 803D7138 003A06F8  2C 03 00 00 */	cmpwi r3, 0
/* 803D713C 003A06FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D7140 003A0700  41 82 00 0C */	beq .L_803D714C
/* 803D7144 003A0704  2C 04 00 00 */	cmpwi r4, 0
/* 803D7148 003A0708  40 80 00 0C */	bge .L_803D7154
.L_803D714C:
/* 803D714C 003A070C  38 60 00 00 */	li r3, 0
/* 803D7150 003A0710  48 00 00 24 */	b .L_803D7174
.L_803D7154:
/* 803D7154 003A0714  3C 80 80 52 */	lis r4, sud_lib_strpool@ha
/* 803D7158 003A0718  38 A0 00 01 */	li r5, 1
/* 803D715C 003A071C  38 84 0D 94 */	addi r4, r4, sud_lib_strpool@l
/* 803D7160 003A0720  38 63 00 13 */	addi r3, r3, 0x13
/* 803D7164 003A0724  38 84 00 17 */	addi r4, r4, 0x17
/* 803D7168 003A0728  4B EE B7 E9 */	bl strncmp
/* 803D716C 003A072C  7C 60 00 34 */	cntlzw r0, r3
/* 803D7170 003A0730  54 03 D9 7E */	srwi r3, r0, 5
.L_803D7174:
/* 803D7174 003A0734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D7178 003A0738  7C 08 03 A6 */	mtlr r0
/* 803D717C 003A073C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D7180 003A0740  4E 80 00 20 */	blr 
.endfn SUD_AnalyTypeCcs

.fn SUD_SearchSudDat, global
/* 803D7184 003A0744  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D7188 003A0748  7C 08 02 A6 */	mflr r0
/* 803D718C 003A074C  2C 03 00 00 */	cmpwi r3, 0
/* 803D7190 003A0750  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D7194 003A0754  38 00 00 00 */	li r0, 0
/* 803D7198 003A0758  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 803D719C 003A075C  7C 7C 1B 78 */	mr r28, r3
/* 803D71A0 003A0760  7C 99 23 78 */	mr r25, r4
/* 803D71A4 003A0764  7C BA 2B 78 */	mr r26, r5
/* 803D71A8 003A0768  7C DB 33 78 */	mr r27, r6
/* 803D71AC 003A076C  90 05 00 00 */	stw r0, 0(r5)
/* 803D71B0 003A0770  90 06 00 00 */	stw r0, 0(r6)
/* 803D71B4 003A0774  41 82 00 7C */	beq .L_803D7230
/* 803D71B8 003A0778  2C 04 00 00 */	cmpwi r4, 0
/* 803D71BC 003A077C  41 81 00 08 */	bgt .L_803D71C4
/* 803D71C0 003A0780  48 00 00 70 */	b .L_803D7230
.L_803D71C4:
/* 803D71C4 003A0784  3F C0 80 52 */	lis r30, sud_lib_strpool@ha
/* 803D71C8 003A0788  3B A0 00 00 */	li r29, 0
/* 803D71CC 003A078C  3B DE 0D 94 */	addi r30, r30, sud_lib_strpool@l
/* 803D71D0 003A0790  3B E0 00 23 */	li r31, 0x23
/* 803D71D4 003A0794  48 00 00 54 */	b .L_803D7228
.L_803D71D8:
/* 803D71D8 003A0798  7F 83 E3 78 */	mr r3, r28
/* 803D71DC 003A079C  38 9E 00 1F */	addi r4, r30, 0x1f
/* 803D71E0 003A07A0  38 A0 00 01 */	li r5, 1
/* 803D71E4 003A07A4  4B EE 76 49 */	bl memcmp
/* 803D71E8 003A07A8  2C 03 00 00 */	cmpwi r3, 0
/* 803D71EC 003A07AC  40 82 00 34 */	bne .L_803D7220
/* 803D71F0 003A07B0  7F 83 E3 78 */	mr r3, r28
/* 803D71F4 003A07B4  7F C4 F3 78 */	mr r4, r30
/* 803D71F8 003A07B8  38 A0 00 08 */	li r5, 8
/* 803D71FC 003A07BC  4B EE 76 31 */	bl memcmp
/* 803D7200 003A07C0  2C 03 00 00 */	cmpwi r3, 0
/* 803D7204 003A07C4  40 82 00 1C */	bne .L_803D7220
/* 803D7208 003A07C8  7F 80 00 34 */	cntlzw r0, r28
/* 803D720C 003A07CC  93 9A 00 00 */	stw r28, 0(r26)
/* 803D7210 003A07D0  54 00 DF FE */	rlwinm r0, r0, 0x1b, 0x1f, 0x1f
/* 803D7214 003A07D4  7C 00 00 D0 */	neg r0, r0
/* 803D7218 003A07D8  7F E0 00 78 */	andc r0, r31, r0
/* 803D721C 003A07DC  90 1B 00 00 */	stw r0, 0(r27)
.L_803D7220:
/* 803D7220 003A07E0  3B 9C 00 01 */	addi r28, r28, 1
/* 803D7224 003A07E4  3B BD 00 01 */	addi r29, r29, 1
.L_803D7228:
/* 803D7228 003A07E8  7C 1D C8 00 */	cmpw r29, r25
/* 803D722C 003A07EC  41 80 FF AC */	blt .L_803D71D8
.L_803D7230:
/* 803D7230 003A07F0  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 803D7234 003A07F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D7238 003A07F8  7C 08 03 A6 */	mtlr r0
/* 803D723C 003A07FC  38 21 00 30 */	addi r1, r1, 0x30
/* 803D7240 003A0800  4E 80 00 20 */	blr 
.endfn SUD_SearchSudDat

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8


.obj sud_ver_str, global
	.asciz "\nCRI SUD/WII Ver.0.05 Build:Nov 13 2008 18:22:10\n"
	.balign 4
.endobj sud_ver_str


.obj sud_lib_strpool, global
	.asciz "<SUDPS_>"
	.asciz "<%06X>"
	.asciz "02"
	.asciz "\n"
	.asciz "D"
	.asciz "C"
	.asciz "I"
	.asciz "P"
	.asciz "A"
	.asciz "<"
	.balign 4
.endobj sud_lib_strpool

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.balign 8
.obj sud_init_cnt, global
	.skip 0x4
.endobj sud_init_cnt

.obj sud_dummy, local
	.skip 0x4
.endobj sud_dummy
