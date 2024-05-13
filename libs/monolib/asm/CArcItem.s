.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CArcItem, global
/* 804DEB14 004A80D4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804DEB18 004A80D8  7C 08 02 A6 */	mflr r0
/* 804DEB1C 004A80DC  3C A0 80 57 */	lis r5, __vt__8CArcItem@ha
/* 804DEB20 004A80E0  90 01 00 64 */	stw r0, 0x64(r1)
/* 804DEB24 004A80E4  38 00 00 00 */	li r0, 0
/* 804DEB28 004A80E8  38 A5 38 28 */	addi r5, r5, __vt__8CArcItem@l
/* 804DEB2C 004A80EC  BF C1 00 58 */	stmw r30, 0x58(r1)
/* 804DEB30 004A80F0  7C 7E 1B 78 */	mr r30, r3
/* 804DEB34 004A80F4  7C 9F 23 78 */	mr r31, r4
/* 804DEB38 004A80F8  90 A3 00 00 */	stw r5, 0(r3)
/* 804DEB3C 004A80FC  98 03 00 04 */	stb r0, 4(r3)
/* 804DEB40 004A8100  90 03 00 24 */	stw r0, 0x24(r3)
/* 804DEB44 004A8104  90 03 00 28 */	stw r0, 0x28(r3)
/* 804DEB48 004A8108  90 03 00 2C */	stw r0, 0x2c(r3)
/* 804DEB4C 004A810C  98 03 00 30 */	stb r0, 0x30(r3)
/* 804DEB50 004A8110  90 83 00 34 */	stw r4, 0x34(r3)
/* 804DEB54 004A8114  90 03 00 38 */	stw r0, 0x38(r3)
/* 804DEB58 004A8118  4B F5 58 49 */	bl Heap_getRegionIndex2
/* 804DEB5C 004A811C  7F E4 FB 78 */	mr r4, r31
/* 804DEB60 004A8120  7F C5 F3 78 */	mr r5, r30
/* 804DEB64 004A8124  38 C0 00 00 */	li r6, 0
/* 804DEB68 004A8128  38 E0 00 00 */	li r7, 0
/* 804DEB6C 004A812C  4B F6 FC 29 */	bl CDeviceFile_openFile1
/* 804DEB70 004A8130  90 7E 00 28 */	stw r3, 0x28(r30)
/* 804DEB74 004A8134  7F E4 FB 78 */	mr r4, r31
/* 804DEB78 004A8138  38 61 00 08 */	addi r3, r1, 8
/* 804DEB7C 004A813C  4B F5 64 FD */	bl func_80435078__2mlFPQ22ml9UnkStructPCc
/* 804DEB80 004A8140  38 61 00 08 */	addi r3, r1, 8
/* 804DEB84 004A8144  4B DD AA 35 */	bl strlen
/* 804DEB88 004A8148  90 7E 00 24 */	stw r3, 0x24(r30)
/* 804DEB8C 004A814C  38 7E 00 04 */	addi r3, r30, 4
/* 804DEB90 004A8150  38 81 00 08 */	addi r4, r1, 8
/* 804DEB94 004A8154  4B DE 3B 25 */	bl strcpy
/* 804DEB98 004A8158  7F C3 F3 78 */	mr r3, r30
/* 804DEB9C 004A815C  BB C1 00 58 */	lmw r30, 0x58(r1)
/* 804DEBA0 004A8160  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804DEBA4 004A8164  7C 08 03 A6 */	mtlr r0
/* 804DEBA8 004A8168  38 21 00 60 */	addi r1, r1, 0x60
/* 804DEBAC 004A816C  4E 80 00 20 */	blr 
.endfn __ct__CArcItem

.fn __dt__CArcItem, global
/* 804DEBB0 004A8170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DEBB4 004A8174  7C 08 02 A6 */	mflr r0
/* 804DEBB8 004A8178  2C 03 00 00 */	cmpwi r3, 0
/* 804DEBBC 004A817C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DEBC0 004A8180  BF C1 00 08 */	stmw r30, 8(r1)
/* 804DEBC4 004A8184  7C 7E 1B 78 */	mr r30, r3
/* 804DEBC8 004A8188  7C 9F 23 78 */	mr r31, r4
/* 804DEBCC 004A818C  41 82 00 4C */	beq .L_804DEC18
/* 804DEBD0 004A8190  80 03 00 28 */	lwz r0, 0x28(r3)
/* 804DEBD4 004A8194  3C 80 80 57 */	lis r4, __vt__8CArcItem@ha
/* 804DEBD8 004A8198  38 84 38 28 */	addi r4, r4, __vt__8CArcItem@l
/* 804DEBDC 004A819C  90 83 00 00 */	stw r4, 0(r3)
/* 804DEBE0 004A81A0  2C 00 00 00 */	cmpwi r0, 0
/* 804DEBE4 004A81A4  41 82 00 0C */	beq .L_804DEBF0
/* 804DEBE8 004A81A8  7C 03 03 78 */	mr r3, r0
/* 804DEBEC 004A81AC  4B F7 05 2D */	bl func_8044F118
.L_804DEBF0:
/* 804DEBF0 004A81B0  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 804DEBF4 004A81B4  2C 03 00 00 */	cmpwi r3, 0
/* 804DEBF8 004A81B8  41 82 00 10 */	beq .L_804DEC08
/* 804DEBFC 004A81BC  4B F5 58 DD */	bl func_804344D8
/* 804DEC00 004A81C0  38 00 00 00 */	li r0, 0
/* 804DEC04 004A81C4  90 1E 00 38 */	stw r0, 0x38(r30)
.L_804DEC08:
/* 804DEC08 004A81C8  2C 1F 00 00 */	cmpwi r31, 0
/* 804DEC0C 004A81CC  40 81 00 0C */	ble .L_804DEC18
/* 804DEC10 004A81D0  7F C3 F3 78 */	mr r3, r30
/* 804DEC14 004A81D4  4B F5 60 19 */	bl __dl__FPv
.L_804DEC18:
/* 804DEC18 004A81D8  7F C3 F3 78 */	mr r3, r30
/* 804DEC1C 004A81DC  BB C1 00 08 */	lmw r30, 8(r1)
/* 804DEC20 004A81E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DEC24 004A81E4  7C 08 03 A6 */	mtlr r0
/* 804DEC28 004A81E8  38 21 00 10 */	addi r1, r1, 0x10
/* 804DEC2C 004A81EC  4E 80 00 20 */	blr 
.endfn __dt__CArcItem

.fn func_804DEC30, global
/* 804DEC30 004A81F0  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804DEC34 004A81F4  2C 00 00 00 */	cmpwi r0, 0
/* 804DEC38 004A81F8  4C 82 00 20 */	bnelr 
/* 804DEC3C 004A81FC  88 03 00 30 */	lbz r0, 0x30(r3)
/* 804DEC40 004A8200  2C 00 00 00 */	cmpwi r0, 0
/* 804DEC44 004A8204  41 82 00 10 */	beq .L_804DEC54
/* 804DEC48 004A8208  38 00 00 02 */	li r0, 2
/* 804DEC4C 004A820C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 804DEC50 004A8210  4E 80 00 20 */	blr
.L_804DEC54:
/* 804DEC54 004A8214  80 03 00 38 */	lwz r0, 0x38(r3)
/* 804DEC58 004A8218  2C 00 00 00 */	cmpwi r0, 0
/* 804DEC5C 004A821C  4D 82 00 20 */	beqlr 
/* 804DEC60 004A8220  38 00 00 02 */	li r0, 2
/* 804DEC64 004A8224  90 03 00 2C */	stw r0, 0x2c(r3)
/* 804DEC68 004A8228  4E 80 00 20 */	blr
.endfn func_804DEC30

.fn func_804DEC6C, global
/* 804DEC6C 004A822C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804DEC70 004A8230  7C 08 02 A6 */	mflr r0
/* 804DEC74 004A8234  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DEC78 004A8238  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 804DEC7C 004A823C  7C 7D 1B 78 */	mr r29, r3
/* 804DEC80 004A8240  7C BE 2B 78 */	mr r30, r5
/* 804DEC84 004A8244  7C DF 33 78 */	mr r31, r6
/* 804DEC88 004A8248  80 03 00 38 */	lwz r0, 0x38(r3)
/* 804DEC8C 004A824C  2C 00 00 00 */	cmpwi r0, 0
/* 804DEC90 004A8250  41 82 00 10 */	beq .L_804DECA0
/* 804DEC94 004A8254  88 03 00 30 */	lbz r0, 0x30(r3)
/* 804DEC98 004A8258  2C 00 00 00 */	cmpwi r0, 0
/* 804DEC9C 004A825C  41 82 00 0C */	beq .L_804DECA8
.L_804DECA0:
/* 804DECA0 004A8260  38 60 00 00 */	li r3, 0
/* 804DECA4 004A8264  48 00 00 60 */	b .L_804DED04
.L_804DECA8:
/* 804DECA8 004A8268  38 63 00 3C */	addi r3, r3, 0x3c
/* 804DECAC 004A826C  4B DF 2D 65 */	bl ARCConvertPathToEntrynum
/* 804DECB0 004A8270  2C 03 00 00 */	cmpwi r3, 0
/* 804DECB4 004A8274  40 80 00 0C */	bge .L_804DECC0
/* 804DECB8 004A8278  38 60 00 00 */	li r3, 0
/* 804DECBC 004A827C  48 00 00 48 */	b .L_804DED04
.L_804DECC0:
/* 804DECC0 004A8280  7C 64 1B 78 */	mr r4, r3
/* 804DECC4 004A8284  38 7D 00 3C */	addi r3, r29, 0x3c
/* 804DECC8 004A8288  38 A1 00 08 */	addi r5, r1, 8
/* 804DECCC 004A828C  4B DF 2C F5 */	bl ARCFastOpen
/* 804DECD0 004A8290  2C 03 00 00 */	cmpwi r3, 0
/* 804DECD4 004A8294  41 82 00 2C */	beq .L_804DED00
/* 804DECD8 004A8298  38 61 00 08 */	addi r3, r1, 8
/* 804DECDC 004A829C  4B DF 31 85 */	bl ARCGetStartAddrInMem
/* 804DECE0 004A82A0  90 7E 00 00 */	stw r3, 0(r30)
/* 804DECE4 004A82A4  38 61 00 08 */	addi r3, r1, 8
/* 804DECE8 004A82A8  4B DF 31 99 */	bl ARCGetLength
/* 804DECEC 004A82AC  90 7F 00 00 */	stw r3, 0(r31)
/* 804DECF0 004A82B0  38 61 00 08 */	addi r3, r1, 8
/* 804DECF4 004A82B4  4B DF 31 9D */	bl ARCClose
/* 804DECF8 004A82B8  38 60 00 01 */	li r3, 1
/* 804DECFC 004A82BC  48 00 00 08 */	b .L_804DED04
.L_804DED00:
/* 804DED00 004A82C0  38 60 00 00 */	li r3, 0
.L_804DED04:
/* 804DED04 004A82C4  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 804DED08 004A82C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DED0C 004A82CC  7C 08 03 A6 */	mtlr r0
/* 804DED10 004A82D0  38 21 00 30 */	addi r1, r1, 0x30
/* 804DED14 004A82D4  4E 80 00 20 */	blr 
.endfn func_804DEC6C

.fn CArcItem_OnFileEvent, global
/* 804DED18 004A82D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DED1C 004A82DC  7C 08 02 A6 */	mflr r0
/* 804DED20 004A82E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DED24 004A82E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DED28 004A82E8  7C 7F 1B 78 */	mr r31, r3
/* 804DED2C 004A82EC  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 804DED30 004A82F0  80 04 00 04 */	lwz r0, 4(r4)
/* 804DED34 004A82F4  7C 00 30 40 */	cmplw r0, r6
/* 804DED38 004A82F8  40 82 00 58 */	bne .L_804DED90
/* 804DED3C 004A82FC  80 04 00 00 */	lwz r0, 0(r4)
/* 804DED40 004A8300  2C 00 00 01 */	cmpwi r0, 1
/* 804DED44 004A8304  40 82 00 34 */	bne .L_804DED78
/* 804DED48 004A8308  80 A6 00 04 */	lwz r5, 4(r6)
/* 804DED4C 004A830C  38 00 00 00 */	li r0, 0
/* 804DED50 004A8310  38 9F 00 3C */	addi r4, r31, 0x3c
/* 804DED54 004A8314  90 06 00 04 */	stw r0, 4(r6)
/* 804DED58 004A8318  90 A3 00 38 */	stw r5, 0x38(r3)
/* 804DED5C 004A831C  7C A3 2B 78 */	mr r3, r5
/* 804DED60 004A8320  4B DF 29 11 */	bl ARCInitHandle
/* 804DED64 004A8324  2C 03 00 00 */	cmpwi r3, 0
/* 804DED68 004A8328  40 82 00 18 */	bne .L_804DED80
/* 804DED6C 004A832C  38 00 00 01 */	li r0, 1
/* 804DED70 004A8330  98 1F 00 30 */	stb r0, 0x30(r31)
/* 804DED74 004A8334  48 00 00 0C */	b .L_804DED80
.L_804DED78:
/* 804DED78 004A8338  38 00 00 01 */	li r0, 1
/* 804DED7C 004A833C  98 03 00 30 */	stb r0, 0x30(r3)
.L_804DED80:
/* 804DED80 004A8340  38 00 00 00 */	li r0, 0
/* 804DED84 004A8344  90 1F 00 28 */	stw r0, 0x28(r31)
/* 804DED88 004A8348  38 60 00 01 */	li r3, 1
/* 804DED8C 004A834C  48 00 00 08 */	b .L_804DED94
.L_804DED90:
/* 804DED90 004A8350  38 60 00 00 */	li r3, 0
.L_804DED94:
/* 804DED94 004A8354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DED98 004A8358  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DED9C 004A835C  7C 08 03 A6 */	mtlr r0
/* 804DEDA0 004A8360  38 21 00 10 */	addi r1, r1, 0x10
/* 804DEDA4 004A8364  4E 80 00 20 */	blr 
.endfn CArcItem_OnFileEvent

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CArcItem_typestr, global
	.asciz "CArcItem"
	.balign 4
.endobj CArcItem_typestr


.obj lbl_80528014, global
	.asciz "adx"
	.asciz "ahx"
	.asciz ".pkb"
	.balign 4
	.4byte 0
.endobj lbl_80528014

	
.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__8CArcItem, global
	.4byte __RTTI__8CArcItem
	.4byte 0
	.4byte __dt__CArcItem
	.4byte IWorkEvent_WorkEvent1
	.4byte CArcItem_OnFileEvent
	.4byte IWorkEvent_WorkEvent3
	.4byte IWorkEvent_WorkEvent4
	.4byte IWorkEvent_WorkEvent5
	.4byte IWorkEvent_WorkEvent6
	.4byte IWorkEvent_WorkEvent7
	.4byte IWorkEvent_WorkEvent8
	.4byte IWorkEvent_WorkEvent9
	.4byte IWorkEvent_WorkEvent10
	.4byte IWorkEvent_WorkEvent11
	.4byte IWorkEvent_WorkEvent12
	.4byte IWorkEvent_WorkEvent13
	.4byte IWorkEvent_WorkEvent14
	.4byte IWorkEvent_WorkEvent15
	.4byte IWorkEvent_WorkEvent16
	.4byte IWorkEvent_WorkEvent17
	.4byte IWorkEvent_WorkEvent18
	.4byte IWorkEvent_WorkEvent19
	.4byte IWorkEvent_WorkEvent20
	.4byte IWorkEvent_WorkEvent21
	.4byte IWorkEvent_WorkEvent22
	.4byte IWorkEvent_WorkEvent23
	.4byte IWorkEvent_WorkEvent24
	.4byte IWorkEvent_WorkEvent25
	.4byte IWorkEvent_WorkEvent26
	.4byte IWorkEvent_WorkEvent27
	.4byte IWorkEvent_WorkEvent28
	.4byte IWorkEvent_WorkEvent29
	.4byte IWorkEvent_WorkEvent30
	.4byte IWorkEvent_WorkEvent31
.endobj __vt__8CArcItem

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__8CArcItem, global
	.4byte CArcItem_typestr
	.4byte 0
.endobj __RTTI__8CArcItem

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80020938", local
.hidden "@etb_80020938"
	.4byte 0x10080000
	.4byte 0x00000048
	.4byte 0x00090010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__IWorkEvent
.endobj "@etb_80020938"

.obj "@etb_80020954", local
.hidden "@etb_80020954"
	.4byte 0x10080000
	.4byte 0x00000040
	.4byte 0x00040010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__IWorkEvent
.endobj "@etb_80020954"

.obj "@etb_80020970", local
.hidden "@etb_80020970"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80020970"

.obj "@etb_80020978", local
.hidden "@etb_80020978"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020978"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80038990", local
.hidden "@eti_80038990"
	.4byte __ct__CArcItem
	.4byte 0x0000009C
	.4byte "@etb_80020938"
.endobj "@eti_80038990"

.obj "@eti_8003899C", local
.hidden "@eti_8003899C"
	.4byte __dt__CArcItem
	.4byte 0x00000080
	.4byte "@etb_80020954"
.endobj "@eti_8003899C"

.obj "@eti_800389A8", local
.hidden "@eti_800389A8"
	.4byte func_804DEC6C
	.4byte 0x000000AC
	.4byte "@etb_80020970"
.endobj "@eti_800389A8"

.obj "@eti_800389B4", local
.hidden "@eti_800389B4"
	.4byte CArcItem_OnFileEvent
	.4byte 0x00000090
	.4byte "@etb_80020978"
.endobj "@eti_800389B4"
