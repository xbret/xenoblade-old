.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn OSDisableInterrupts, global
/* 803589B0 00321F70  7C 60 00 A6 */	mfmsr r3
/* 803589B4 00321F74  54 64 04 5E */	rlwinm r4, r3, 0, 0x11, 0xf
/* 803589B8 00321F78  7C 80 01 24 */	mtmsr r4
.endfn OSDisableInterrupts


.fn __RAS_OSDisableInterrupts_end, global
/* 803589BC 00321F7C  54 63 8F FE */	rlwinm r3, r3, 0x11, 0x1f, 0x1f
/* 803589C0 00321F80  4E 80 00 20 */	blr 
.endfn __RAS_OSDisableInterrupts_end

.balign 16, 0
.fn OSEnableInterrupts, global
/* 803589D0 00321F90  7C 60 00 A6 */	mfmsr r3
/* 803589D4 00321F94  60 64 80 00 */	ori r4, r3, 0x8000
/* 803589D8 00321F98  7C 80 01 24 */	mtmsr r4
/* 803589DC 00321F9C  54 63 8F FE */	rlwinm r3, r3, 0x11, 0x1f, 0x1f
/* 803589E0 00321FA0  4E 80 00 20 */	blr 
.endfn OSEnableInterrupts

.balign 16, 0
.fn OSRestoreInterrupts, global
/* 803589F0 00321FB0  2C 03 00 00 */	cmpwi r3, 0
/* 803589F4 00321FB4  7C 80 00 A6 */	mfmsr r4
/* 803589F8 00321FB8  41 82 00 0C */	beq .L_80358A04
/* 803589FC 00321FBC  60 85 80 00 */	ori r5, r4, 0x8000
/* 80358A00 00321FC0  48 00 00 08 */	b .L_80358A08
.L_80358A04:
/* 80358A04 00321FC4  54 85 04 5E */	rlwinm r5, r4, 0, 0x11, 0xf
.L_80358A08:
/* 80358A08 00321FC8  7C A0 01 24 */	mtmsr r5
/* 80358A0C 00321FCC  54 83 8F FE */	rlwinm r3, r4, 0x11, 0x1f, 0x1f
/* 80358A10 00321FD0  4E 80 00 20 */	blr 
.endfn OSRestoreInterrupts

.balign 16, 0
.fn __OSSetInterruptHandler, global
/* 80358A20 00321FE0  80 AD B9 20 */	lwz r5, lbl_80667AA0@sda21(r13)
/* 80358A24 00321FE4  54 60 10 3A */	slwi r0, r3, 2
/* 80358A28 00321FE8  7C 65 00 2E */	lwzx r3, r5, r0
/* 80358A2C 00321FEC  7C 85 01 2E */	stwx r4, r5, r0
/* 80358A30 00321FF0  4E 80 00 20 */	blr 
.endfn __OSSetInterruptHandler

.balign 16, 0
.fn __OSGetInterruptHandler, global
/* 80358A40 00322000  80 8D B9 20 */	lwz r4, lbl_80667AA0@sda21(r13)
/* 80358A44 00322004  54 60 10 3A */	slwi r0, r3, 2
/* 80358A48 00322008  7C 64 00 2E */	lwzx r3, r4, r0
/* 80358A4C 0032200C  4E 80 00 20 */	blr 
.endfn __OSGetInterruptHandler

.balign 16, 0
.fn __OSInterruptInit, global
/* 80358A50 00322010  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80358A54 00322014  7C 08 02 A6 */	mflr r0
/* 80358A58 00322018  38 80 00 00 */	li r4, 0
/* 80358A5C 0032201C  38 A0 00 80 */	li r5, 0x80
/* 80358A60 00322020  90 01 00 24 */	stw r0, 0x24(r1)
/* 80358A64 00322024  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80358A68 00322028  3F E0 80 00 */	lis r31, 0x80003040@ha
/* 80358A6C 0032202C  38 7F 30 40 */	addi r3, r31, 0x80003040@l
/* 80358A70 00322030  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80358A74 00322034  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80358A78 00322038  90 6D B9 20 */	stw r3, lbl_80667AA0@sda21(r13)
/* 80358A7C 0032203C  4B CA B8 D5 */	bl memset
/* 80358A80 00322040  38 00 00 00 */	li r0, 0
/* 80358A84 00322044  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 80358A88 00322048  3C 80 CC 00 */	lis r4, 0xCC003004@ha
/* 80358A8C 0032204C  38 A0 00 F0 */	li r5, 0xf0
/* 80358A90 00322050  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 80358A94 00322054  3C 60 CD 00 */	lis r3, 0xCD000034@ha
/* 80358A98 00322058  3C 00 40 00 */	lis r0, 0x4000
/* 80358A9C 0032205C  3B C0 FF F0 */	li r30, -16
/* 80358AA0 00322060  90 A4 30 04 */	stw r5, 0xCC003004@l(r4)
/* 80358AA4 00322064  90 03 00 34 */	stw r0, 0xCD000034@l(r3)
/* 80358AA8 00322068  4B FF FF 09 */	bl OSDisableInterrupts
/* 80358AAC 0032206C  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 80358AB0 00322070  7C 7D 1B 78 */	mr r29, r3
/* 80358AB4 00322074  80 9F 00 C8 */	lwz r4, 0xc8(r31)
/* 80358AB8 00322078  7F DE 03 78 */	or r30, r30, r0
/* 80358ABC 0032207C  7C 00 20 F8 */	nor r0, r0, r4
/* 80358AC0 00322080  93 DF 00 C4 */	stw r30, 0xc4(r31)
/* 80358AC4 00322084  54 03 00 36 */	rlwinm r3, r0, 0, 0, 0x1b
/* 80358AC8 00322088  7F DE 23 78 */	or r30, r30, r4
/* 80358ACC 0032208C  48 00 00 0C */	b .L_80358AD8
.L_80358AD0:
/* 80358AD0 00322090  7F C4 F3 78 */	mr r4, r30
/* 80358AD4 00322094  48 00 00 4D */	bl SetInterruptMask
.L_80358AD8:
/* 80358AD8 00322098  2C 03 00 00 */	cmpwi r3, 0
/* 80358ADC 0032209C  40 82 FF F4 */	bne .L_80358AD0
/* 80358AE0 003220A0  7F A3 EB 78 */	mr r3, r29
/* 80358AE4 003220A4  4B FF FF 0D */	bl OSRestoreInterrupts
/* 80358AE8 003220A8  3C 80 80 36 */	lis r4, ExternalInterruptHandler@ha
/* 80358AEC 003220AC  38 60 00 04 */	li r3, 4
/* 80358AF0 003220B0  38 84 91 30 */	addi r4, r4, ExternalInterruptHandler@l
/* 80358AF4 003220B4  4B FF A0 6D */	bl __OSSetExceptionHandler
/* 80358AF8 003220B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80358AFC 003220BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80358B00 003220C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80358B04 003220C4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80358B08 003220C8  7C 08 03 A6 */	mtlr r0
/* 80358B0C 003220CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80358B10 003220D0  4E 80 00 20 */	blr 
.endfn __OSInterruptInit

.balign 16, 0
.fn SetInterruptMask, global
/* 80358B20 003220E0  7C 60 00 34 */	cntlzw r0, r3
/* 80358B24 003220E4  2C 00 00 0C */	cmpwi r0, 0xc
/* 80358B28 003220E8  40 80 00 24 */	bge .L_80358B4C
/* 80358B2C 003220EC  2C 00 00 08 */	cmpwi r0, 8
/* 80358B30 003220F0  41 82 00 CC */	beq .L_80358BFC
/* 80358B34 003220F4  40 80 00 F4 */	bge .L_80358C28
/* 80358B38 003220F8  2C 00 00 05 */	cmpwi r0, 5
/* 80358B3C 003220FC  40 80 00 80 */	bge .L_80358BBC
/* 80358B40 00322100  2C 00 00 00 */	cmpwi r0, 0
/* 80358B44 00322104  40 80 00 28 */	bge .L_80358B6C
/* 80358B48 00322108  4E 80 00 20 */	blr
.L_80358B4C:
/* 80358B4C 0032210C  2C 00 00 11 */	cmpwi r0, 0x11
/* 80358B50 00322110  40 80 00 10 */	bge .L_80358B60
/* 80358B54 00322114  2C 00 00 0F */	cmpwi r0, 0xf
/* 80358B58 00322118  40 80 01 58 */	bge .L_80358CB0
/* 80358B5C 0032211C  48 00 01 10 */	b .L_80358C6C
.L_80358B60:
/* 80358B60 00322120  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80358B64 00322124  4C 80 00 20 */	bgelr 
/* 80358B68 00322128  48 00 01 7C */	b .L_80358CE4
.L_80358B6C:
/* 80358B6C 0032212C  54 80 00 01 */	rlwinm. r0, r4, 0, 0, 0
/* 80358B70 00322130  38 A0 00 00 */	li r5, 0
/* 80358B74 00322134  40 82 00 08 */	bne .L_80358B7C
/* 80358B78 00322138  60 A5 00 01 */	ori r5, r5, 1
.L_80358B7C:
/* 80358B7C 0032213C  54 80 00 43 */	rlwinm. r0, r4, 0, 1, 1
/* 80358B80 00322140  40 82 00 08 */	bne .L_80358B88
/* 80358B84 00322144  60 A5 00 02 */	ori r5, r5, 2
.L_80358B88:
/* 80358B88 00322148  54 80 00 85 */	rlwinm. r0, r4, 0, 2, 2
/* 80358B8C 0032214C  40 82 00 08 */	bne .L_80358B94
/* 80358B90 00322150  60 A5 00 04 */	ori r5, r5, 4
.L_80358B94:
/* 80358B94 00322154  54 80 00 C7 */	rlwinm. r0, r4, 0, 3, 3
/* 80358B98 00322158  40 82 00 08 */	bne .L_80358BA0
/* 80358B9C 0032215C  60 A5 00 08 */	ori r5, r5, 8
.L_80358BA0:
/* 80358BA0 00322160  54 80 01 09 */	rlwinm. r0, r4, 0, 4, 4
/* 80358BA4 00322164  40 82 00 08 */	bne .L_80358BAC
/* 80358BA8 00322168  60 A5 00 10 */	ori r5, r5, 0x10
.L_80358BAC:
/* 80358BAC 0032216C  3C 80 CC 00 */	lis r4, 0xCC00401C@ha
/* 80358BB0 00322170  54 63 01 7E */	clrlwi r3, r3, 5
/* 80358BB4 00322174  B0 A4 40 1C */	sth r5, 0xCC00401C@l(r4)
/* 80358BB8 00322178  4E 80 00 20 */	blr
.L_80358BBC:
/* 80358BBC 0032217C  3C A0 CC 00 */	lis r5, 0xCC00500A@ha
/* 80358BC0 00322180  54 80 01 4B */	rlwinm. r0, r4, 0, 5, 5
/* 80358BC4 00322184  A0 A5 50 0A */	lhz r5, 0xCC00500A@l(r5)
/* 80358BC8 00322188  54 A5 07 6C */	rlwinm r5, r5, 0, 0x1d, 0x16
/* 80358BCC 0032218C  40 82 00 08 */	bne .L_80358BD4
/* 80358BD0 00322190  60 A5 00 10 */	ori r5, r5, 0x10
.L_80358BD4:
/* 80358BD4 00322194  54 80 01 8D */	rlwinm. r0, r4, 0, 6, 6
/* 80358BD8 00322198  40 82 00 08 */	bne .L_80358BE0
/* 80358BDC 0032219C  60 A5 00 40 */	ori r5, r5, 0x40
.L_80358BE0:
/* 80358BE0 003221A0  54 80 01 CF */	rlwinm. r0, r4, 0, 7, 7
/* 80358BE4 003221A4  40 82 00 08 */	bne .L_80358BEC
/* 80358BE8 003221A8  60 A5 01 00 */	ori r5, r5, 0x100
.L_80358BEC:
/* 80358BEC 003221AC  3C 80 CC 00 */	lis r4, 0xCC00500A@ha
/* 80358BF0 003221B0  54 63 02 08 */	rlwinm r3, r3, 0, 8, 4
/* 80358BF4 003221B4  B0 A4 50 0A */	sth r5, 0xCC00500A@l(r4)
/* 80358BF8 003221B8  4E 80 00 20 */	blr
.L_80358BFC:
/* 80358BFC 003221BC  54 80 02 11 */	rlwinm. r0, r4, 0, 8, 8
/* 80358C00 003221C0  3C 80 CD 00 */	lis r4, 0xCD006C00@ha
/* 80358C04 003221C4  80 A4 6C 00 */	lwz r5, 0xCD006C00@l(r4)
/* 80358C08 003221C8  38 00 FF D3 */	li r0, -45
/* 80358C0C 003221CC  7C A5 00 38 */	and r5, r5, r0
/* 80358C10 003221D0  40 82 00 08 */	bne .L_80358C18
/* 80358C14 003221D4  60 A5 00 04 */	ori r5, r5, 4
.L_80358C18:
/* 80358C18 003221D8  3C 80 CD 00 */	lis r4, 0xCD006C00@ha
/* 80358C1C 003221DC  54 63 02 4E */	rlwinm r3, r3, 0, 9, 7
/* 80358C20 003221E0  90 A4 6C 00 */	stw r5, 0xCD006C00@l(r4)
/* 80358C24 003221E4  4E 80 00 20 */	blr
.L_80358C28:
/* 80358C28 003221E8  54 80 02 53 */	rlwinm. r0, r4, 0, 9, 9
/* 80358C2C 003221EC  3C A0 CD 00 */	lis r5, 0xCD006800@ha
/* 80358C30 003221F0  80 A5 68 00 */	lwz r5, 0xCD006800@l(r5)
/* 80358C34 003221F4  38 00 D3 F0 */	li r0, -11280
/* 80358C38 003221F8  7C A5 00 38 */	and r5, r5, r0
/* 80358C3C 003221FC  40 82 00 08 */	bne .L_80358C44
/* 80358C40 00322200  60 A5 00 01 */	ori r5, r5, 1
.L_80358C44:
/* 80358C44 00322204  54 80 02 95 */	rlwinm. r0, r4, 0, 0xa, 0xa
/* 80358C48 00322208  40 82 00 08 */	bne .L_80358C50
/* 80358C4C 0032220C  60 A5 00 04 */	ori r5, r5, 4
.L_80358C50:
/* 80358C50 00322210  54 80 02 D7 */	rlwinm. r0, r4, 0, 0xb, 0xb
/* 80358C54 00322214  40 82 00 08 */	bne .L_80358C5C
/* 80358C58 00322218  60 A5 04 00 */	ori r5, r5, 0x400
.L_80358C5C:
/* 80358C5C 0032221C  3C 80 CD 00 */	lis r4, 0xCD006800@ha
/* 80358C60 00322220  54 63 03 10 */	rlwinm r3, r3, 0, 0xc, 8
/* 80358C64 00322224  90 A4 68 00 */	stw r5, 0xCD006800@l(r4)
/* 80358C68 00322228  4E 80 00 20 */	blr
.L_80358C6C:
/* 80358C6C 0032222C  54 80 03 19 */	rlwinm. r0, r4, 0, 0xc, 0xc
/* 80358C70 00322230  3C A0 CD 00 */	lis r5, 0xCD006814@ha
/* 80358C74 00322234  80 A5 68 14 */	lwz r5, 0xCD006814@l(r5)
/* 80358C78 00322238  38 00 F3 F0 */	li r0, -3088
/* 80358C7C 0032223C  7C A5 00 38 */	and r5, r5, r0
/* 80358C80 00322240  40 82 00 08 */	bne .L_80358C88
/* 80358C84 00322244  60 A5 00 01 */	ori r5, r5, 1
.L_80358C88:
/* 80358C88 00322248  54 80 03 5B */	rlwinm. r0, r4, 0, 0xd, 0xd
/* 80358C8C 0032224C  40 82 00 08 */	bne .L_80358C94
/* 80358C90 00322250  60 A5 00 04 */	ori r5, r5, 4
.L_80358C94:
/* 80358C94 00322254  54 80 03 9D */	rlwinm. r0, r4, 0, 0xe, 0xe
/* 80358C98 00322258  40 82 00 08 */	bne .L_80358CA0
/* 80358C9C 0032225C  60 A5 04 00 */	ori r5, r5, 0x400
.L_80358CA0:
/* 80358CA0 00322260  3C 80 CD 00 */	lis r4, 0xCD006814@ha
/* 80358CA4 00322264  54 63 03 D6 */	rlwinm r3, r3, 0, 0xf, 0xb
/* 80358CA8 00322268  90 A4 68 14 */	stw r5, 0xCD006814@l(r4)
/* 80358CAC 0032226C  4E 80 00 20 */	blr
.L_80358CB0:
/* 80358CB0 00322270  3C A0 CD 00 */	lis r5, 0xCD006828@ha
/* 80358CB4 00322274  54 80 03 DF */	rlwinm. r0, r4, 0, 0xf, 0xf
/* 80358CB8 00322278  80 A5 68 28 */	lwz r5, 0xCD006828@l(r5)
/* 80358CBC 0032227C  54 A5 00 36 */	rlwinm r5, r5, 0, 0, 0x1b
/* 80358CC0 00322280  40 82 00 08 */	bne .L_80358CC8
/* 80358CC4 00322284  60 A5 00 01 */	ori r5, r5, 1
.L_80358CC8:
/* 80358CC8 00322288  54 80 04 21 */	rlwinm. r0, r4, 0, 0x10, 0x10
/* 80358CCC 0032228C  40 82 00 08 */	bne .L_80358CD4
/* 80358CD0 00322290  60 A5 00 04 */	ori r5, r5, 4
.L_80358CD4:
/* 80358CD4 00322294  3C 80 CD 00 */	lis r4, 0xCD006828@ha
/* 80358CD8 00322298  54 63 04 5C */	rlwinm r3, r3, 0, 0x11, 0xe
/* 80358CDC 0032229C  90 A4 68 28 */	stw r5, 0xCD006828@l(r4)
/* 80358CE0 003222A0  4E 80 00 20 */	blr
.L_80358CE4:
/* 80358CE4 003222A4  54 80 04 63 */	rlwinm. r0, r4, 0, 0x11, 0x11
/* 80358CE8 003222A8  38 A0 00 F0 */	li r5, 0xf0
/* 80358CEC 003222AC  40 82 00 08 */	bne .L_80358CF4
/* 80358CF0 003222B0  60 A5 08 00 */	ori r5, r5, 0x800
.L_80358CF4:
/* 80358CF4 003222B4  54 80 05 29 */	rlwinm. r0, r4, 0, 0x14, 0x14
/* 80358CF8 003222B8  40 82 00 08 */	bne .L_80358D00
/* 80358CFC 003222BC  60 A5 00 08 */	ori r5, r5, 8
.L_80358D00:
/* 80358D00 003222C0  54 80 05 6B */	rlwinm. r0, r4, 0, 0x15, 0x15
/* 80358D04 003222C4  40 82 00 08 */	bne .L_80358D0C
/* 80358D08 003222C8  60 A5 00 04 */	ori r5, r5, 4
.L_80358D0C:
/* 80358D0C 003222CC  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 80358D10 003222D0  40 82 00 08 */	bne .L_80358D18
/* 80358D14 003222D4  60 A5 00 02 */	ori r5, r5, 2
.L_80358D18:
/* 80358D18 003222D8  54 80 05 EF */	rlwinm. r0, r4, 0, 0x17, 0x17
/* 80358D1C 003222DC  40 82 00 08 */	bne .L_80358D24
/* 80358D20 003222E0  60 A5 00 01 */	ori r5, r5, 1
.L_80358D24:
/* 80358D24 003222E4  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 80358D28 003222E8  40 82 00 08 */	bne .L_80358D30
/* 80358D2C 003222EC  60 A5 01 00 */	ori r5, r5, 0x100
.L_80358D30:
/* 80358D30 003222F0  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 80358D34 003222F4  40 82 00 08 */	bne .L_80358D3C
/* 80358D38 003222F8  60 A5 10 00 */	ori r5, r5, 0x1000
.L_80358D3C:
/* 80358D3C 003222FC  54 80 04 A5 */	rlwinm. r0, r4, 0, 0x12, 0x12
/* 80358D40 00322300  40 82 00 08 */	bne .L_80358D48
/* 80358D44 00322304  60 A5 02 00 */	ori r5, r5, 0x200
.L_80358D48:
/* 80358D48 00322308  54 80 04 E7 */	rlwinm. r0, r4, 0, 0x13, 0x13
/* 80358D4C 0032230C  40 82 00 08 */	bne .L_80358D54
/* 80358D50 00322310  60 A5 04 00 */	ori r5, r5, 0x400
.L_80358D54:
/* 80358D54 00322314  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 80358D58 00322318  40 82 00 08 */	bne .L_80358D60
/* 80358D5C 0032231C  60 A5 20 00 */	ori r5, r5, 0x2000
.L_80358D60:
/* 80358D60 00322320  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 80358D64 00322324  40 82 00 08 */	bne .L_80358D6C
/* 80358D68 00322328  60 A5 40 00 */	ori r5, r5, 0x4000
.L_80358D6C:
/* 80358D6C 0032232C  3C 80 CC 00 */	lis r4, 0xCC003004@ha
/* 80358D70 00322330  54 63 07 20 */	rlwinm r3, r3, 0, 0x1c, 0x10
/* 80358D74 00322334  90 A4 30 04 */	stw r5, 0xCC003004@l(r4)
/* 80358D78 00322338  4E 80 00 20 */	blr 
.endfn SetInterruptMask

.balign 16, 0
.fn __OSMaskInterrupts, global
/* 80358D80 00322340  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80358D84 00322344  7C 08 02 A6 */	mflr r0
/* 80358D88 00322348  90 01 00 24 */	stw r0, 0x24(r1)
/* 80358D8C 0032234C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80358D90 00322350  7C 7F 1B 78 */	mr r31, r3
/* 80358D94 00322354  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80358D98 00322358  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80358D9C 0032235C  4B FF FC 15 */	bl OSDisableInterrupts
/* 80358DA0 00322360  3C 80 80 00 */	lis r4, 0x800000C4@ha
/* 80358DA4 00322364  7C 7E 1B 78 */	mr r30, r3
/* 80358DA8 00322368  83 A4 00 C4 */	lwz r29, 0x800000C4@l(r4)
/* 80358DAC 0032236C  80 A4 00 C8 */	lwz r5, 0xc8(r4)
/* 80358DB0 00322370  7F A0 2B 78 */	or r0, r29, r5
/* 80358DB4 00322374  7F E3 00 78 */	andc r3, r31, r0
/* 80358DB8 00322378  7F FF EB 78 */	or r31, r31, r29
/* 80358DBC 0032237C  93 E4 00 C4 */	stw r31, 0xc4(r4)
/* 80358DC0 00322380  7F FF 2B 78 */	or r31, r31, r5
/* 80358DC4 00322384  48 00 00 0C */	b .L_80358DD0
.L_80358DC8:
/* 80358DC8 00322388  7F E4 FB 78 */	mr r4, r31
/* 80358DCC 0032238C  4B FF FD 55 */	bl SetInterruptMask
.L_80358DD0:
/* 80358DD0 00322390  2C 03 00 00 */	cmpwi r3, 0
/* 80358DD4 00322394  40 82 FF F4 */	bne .L_80358DC8
/* 80358DD8 00322398  7F C3 F3 78 */	mr r3, r30
/* 80358DDC 0032239C  4B FF FC 15 */	bl OSRestoreInterrupts
/* 80358DE0 003223A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80358DE4 003223A4  7F A3 EB 78 */	mr r3, r29
/* 80358DE8 003223A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80358DEC 003223AC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80358DF0 003223B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80358DF4 003223B4  7C 08 03 A6 */	mtlr r0
/* 80358DF8 003223B8  38 21 00 20 */	addi r1, r1, 0x20
/* 80358DFC 003223BC  4E 80 00 20 */	blr 
.endfn __OSMaskInterrupts

.balign 16, 0
.fn __OSUnmaskInterrupts, global
/* 80358E00 003223C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80358E04 003223C4  7C 08 02 A6 */	mflr r0
/* 80358E08 003223C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80358E0C 003223CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80358E10 003223D0  7C 7F 1B 78 */	mr r31, r3
/* 80358E14 003223D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80358E18 003223D8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80358E1C 003223DC  4B FF FB 95 */	bl OSDisableInterrupts
/* 80358E20 003223E0  3C 80 80 00 */	lis r4, 0x800000C4@ha
/* 80358E24 003223E4  7C 7E 1B 78 */	mr r30, r3
/* 80358E28 003223E8  83 A4 00 C4 */	lwz r29, 0x800000C4@l(r4)
/* 80358E2C 003223EC  80 A4 00 C8 */	lwz r5, 0xc8(r4)
/* 80358E30 003223F0  7F A0 2B 78 */	or r0, r29, r5
/* 80358E34 003223F4  7F E3 00 38 */	and r3, r31, r0
/* 80358E38 003223F8  7F BF F8 78 */	andc r31, r29, r31
/* 80358E3C 003223FC  93 E4 00 C4 */	stw r31, 0xc4(r4)
/* 80358E40 00322400  7F FF 2B 78 */	or r31, r31, r5
/* 80358E44 00322404  48 00 00 0C */	b .L_80358E50
.L_80358E48:
/* 80358E48 00322408  7F E4 FB 78 */	mr r4, r31
/* 80358E4C 0032240C  4B FF FC D5 */	bl SetInterruptMask
.L_80358E50:
/* 80358E50 00322410  2C 03 00 00 */	cmpwi r3, 0
/* 80358E54 00322414  40 82 FF F4 */	bne .L_80358E48
/* 80358E58 00322418  7F C3 F3 78 */	mr r3, r30
/* 80358E5C 0032241C  4B FF FB 95 */	bl OSRestoreInterrupts
/* 80358E60 00322420  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80358E64 00322424  7F A3 EB 78 */	mr r3, r29
/* 80358E68 00322428  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80358E6C 0032242C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80358E70 00322430  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80358E74 00322434  7C 08 03 A6 */	mtlr r0
/* 80358E78 00322438  38 21 00 20 */	addi r1, r1, 0x20
/* 80358E7C 0032243C  4E 80 00 20 */	blr 
.endfn __OSUnmaskInterrupts

.balign 16, 0
.fn __OSDispatchInterrupt, global
/* 80358E80 00322440  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80358E84 00322444  7C 08 02 A6 */	mflr r0
/* 80358E88 00322448  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 80358E8C 0032244C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80358E90 00322450  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80358E94 00322454  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80358E98 00322458  7C 9E 23 78 */	mr r30, r4
/* 80358E9C 0032245C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80358EA0 00322460  83 E3 30 00 */	lwz r31, 0xCC003000@l(r3)
/* 80358EA4 00322464  80 03 30 04 */	lwz r0, 0x3004(r3)
/* 80358EA8 00322468  57 FF 04 1D */	rlwinm. r31, r31, 0, 0x10, 0xe
/* 80358EAC 0032246C  41 82 00 0C */	beq .L_80358EB8
/* 80358EB0 00322470  7F E0 00 39 */	and. r0, r31, r0
/* 80358EB4 00322474  40 82 00 0C */	bne .L_80358EC0
.L_80358EB8:
/* 80358EB8 00322478  7F C3 F3 78 */	mr r3, r30
/* 80358EBC 0032247C  4B FF BA B5 */	bl OSLoadContext
.L_80358EC0:
/* 80358EC0 00322480  57 E0 06 31 */	rlwinm. r0, r31, 0, 0x18, 0x18
/* 80358EC4 00322484  38 00 00 00 */	li r0, 0
/* 80358EC8 00322488  41 82 00 48 */	beq .L_80358F10
/* 80358ECC 0032248C  3C 60 CC 00 */	lis r3, 0xCC00401E@ha
/* 80358ED0 00322490  A0 83 40 1E */	lhz r4, 0xCC00401E@l(r3)
/* 80358ED4 00322494  54 83 07 FF */	clrlwi. r3, r4, 0x1f
/* 80358ED8 00322498  41 82 00 08 */	beq .L_80358EE0
/* 80358EDC 0032249C  64 00 80 00 */	oris r0, r0, 0x8000
.L_80358EE0:
/* 80358EE0 003224A0  54 83 07 BD */	rlwinm. r3, r4, 0, 0x1e, 0x1e
/* 80358EE4 003224A4  41 82 00 08 */	beq .L_80358EEC
/* 80358EE8 003224A8  64 00 40 00 */	oris r0, r0, 0x4000
.L_80358EEC:
/* 80358EEC 003224AC  54 83 07 7B */	rlwinm. r3, r4, 0, 0x1d, 0x1d
/* 80358EF0 003224B0  41 82 00 08 */	beq .L_80358EF8
/* 80358EF4 003224B4  64 00 20 00 */	oris r0, r0, 0x2000
.L_80358EF8:
/* 80358EF8 003224B8  54 83 07 39 */	rlwinm. r3, r4, 0, 0x1c, 0x1c
/* 80358EFC 003224BC  41 82 00 08 */	beq .L_80358F04
/* 80358F00 003224C0  64 00 10 00 */	oris r0, r0, 0x1000
.L_80358F04:
/* 80358F04 003224C4  54 83 06 F7 */	rlwinm. r3, r4, 0, 0x1b, 0x1b
/* 80358F08 003224C8  41 82 00 08 */	beq .L_80358F10
/* 80358F0C 003224CC  64 00 08 00 */	oris r0, r0, 0x800
.L_80358F10:
/* 80358F10 003224D0  57 E3 06 73 */	rlwinm. r3, r31, 0, 0x19, 0x19
/* 80358F14 003224D4  41 82 00 30 */	beq .L_80358F44
/* 80358F18 003224D8  3C 60 CC 00 */	lis r3, 0xCC00500A@ha
/* 80358F1C 003224DC  A0 83 50 0A */	lhz r4, 0xCC00500A@l(r3)
/* 80358F20 003224E0  54 83 07 39 */	rlwinm. r3, r4, 0, 0x1c, 0x1c
/* 80358F24 003224E4  41 82 00 08 */	beq .L_80358F2C
/* 80358F28 003224E8  64 00 04 00 */	oris r0, r0, 0x400
.L_80358F2C:
/* 80358F2C 003224EC  54 83 06 B5 */	rlwinm. r3, r4, 0, 0x1a, 0x1a
/* 80358F30 003224F0  41 82 00 08 */	beq .L_80358F38
/* 80358F34 003224F4  64 00 02 00 */	oris r0, r0, 0x200
.L_80358F38:
/* 80358F38 003224F8  54 83 06 31 */	rlwinm. r3, r4, 0, 0x18, 0x18
/* 80358F3C 003224FC  41 82 00 08 */	beq .L_80358F44
/* 80358F40 00322500  64 00 01 00 */	oris r0, r0, 0x100
.L_80358F44:
/* 80358F44 00322504  57 E3 06 B5 */	rlwinm. r3, r31, 0, 0x1a, 0x1a
/* 80358F48 00322508  41 82 00 18 */	beq .L_80358F60
/* 80358F4C 0032250C  3C 60 CD 00 */	lis r3, 0xCD006C00@ha
/* 80358F50 00322510  80 63 6C 00 */	lwz r3, 0xCD006C00@l(r3)
/* 80358F54 00322514  54 63 07 39 */	rlwinm. r3, r3, 0, 0x1c, 0x1c
/* 80358F58 00322518  41 82 00 08 */	beq .L_80358F60
/* 80358F5C 0032251C  64 00 00 80 */	oris r0, r0, 0x80
.L_80358F60:
/* 80358F60 00322520  57 E3 06 F7 */	rlwinm. r3, r31, 0, 0x1b, 0x1b
/* 80358F64 00322524  41 82 00 7C */	beq .L_80358FE0
/* 80358F68 00322528  3C 60 CD 00 */	lis r3, 0xCD006800@ha
/* 80358F6C 0032252C  80 83 68 00 */	lwz r4, 0xCD006800@l(r3)
/* 80358F70 00322530  54 83 07 BD */	rlwinm. r3, r4, 0, 0x1e, 0x1e
/* 80358F74 00322534  41 82 00 08 */	beq .L_80358F7C
/* 80358F78 00322538  64 00 00 40 */	oris r0, r0, 0x40
.L_80358F7C:
/* 80358F7C 0032253C  54 83 07 39 */	rlwinm. r3, r4, 0, 0x1c, 0x1c
/* 80358F80 00322540  41 82 00 08 */	beq .L_80358F88
/* 80358F84 00322544  64 00 00 20 */	oris r0, r0, 0x20
.L_80358F88:
/* 80358F88 00322548  54 83 05 29 */	rlwinm. r3, r4, 0, 0x14, 0x14
/* 80358F8C 0032254C  41 82 00 08 */	beq .L_80358F94
/* 80358F90 00322550  64 00 00 10 */	oris r0, r0, 0x10
.L_80358F94:
/* 80358F94 00322554  3C 60 CD 00 */	lis r3, 0xCD006814@ha
/* 80358F98 00322558  80 83 68 14 */	lwz r4, 0xCD006814@l(r3)
/* 80358F9C 0032255C  54 83 07 BD */	rlwinm. r3, r4, 0, 0x1e, 0x1e
/* 80358FA0 00322560  41 82 00 08 */	beq .L_80358FA8
/* 80358FA4 00322564  64 00 00 08 */	oris r0, r0, 8
.L_80358FA8:
/* 80358FA8 00322568  54 83 07 39 */	rlwinm. r3, r4, 0, 0x1c, 0x1c
/* 80358FAC 0032256C  41 82 00 08 */	beq .L_80358FB4
/* 80358FB0 00322570  64 00 00 04 */	oris r0, r0, 4
.L_80358FB4:
/* 80358FB4 00322574  54 83 05 29 */	rlwinm. r3, r4, 0, 0x14, 0x14
/* 80358FB8 00322578  41 82 00 08 */	beq .L_80358FC0
/* 80358FBC 0032257C  64 00 00 02 */	oris r0, r0, 2
.L_80358FC0:
/* 80358FC0 00322580  3C 60 CD 00 */	lis r3, 0xCD006828@ha
/* 80358FC4 00322584  80 83 68 28 */	lwz r4, 0xCD006828@l(r3)
/* 80358FC8 00322588  54 83 07 BD */	rlwinm. r3, r4, 0, 0x1e, 0x1e
/* 80358FCC 0032258C  41 82 00 08 */	beq .L_80358FD4
/* 80358FD0 00322590  64 00 00 01 */	oris r0, r0, 1
.L_80358FD4:
/* 80358FD4 00322594  54 83 07 39 */	rlwinm. r3, r4, 0, 0x1c, 0x1c
/* 80358FD8 00322598  41 82 00 08 */	beq .L_80358FE0
/* 80358FDC 0032259C  60 00 80 00 */	ori r0, r0, 0x8000
.L_80358FE0:
/* 80358FE0 003225A0  57 E3 04 A5 */	rlwinm. r3, r31, 0, 0x12, 0x12
/* 80358FE4 003225A4  41 82 00 08 */	beq .L_80358FEC
/* 80358FE8 003225A8  60 00 00 20 */	ori r0, r0, 0x20
.L_80358FEC:
/* 80358FEC 003225AC  57 E3 04 E7 */	rlwinm. r3, r31, 0, 0x13, 0x13
/* 80358FF0 003225B0  41 82 00 08 */	beq .L_80358FF8
/* 80358FF4 003225B4  60 00 00 40 */	ori r0, r0, 0x40
.L_80358FF8:
/* 80358FF8 003225B8  57 E3 05 6B */	rlwinm. r3, r31, 0, 0x15, 0x15
/* 80358FFC 003225BC  41 82 00 08 */	beq .L_80359004
/* 80359000 003225C0  60 00 10 00 */	ori r0, r0, 0x1000
.L_80359004:
/* 80359004 003225C4  57 E3 05 AD */	rlwinm. r3, r31, 0, 0x16, 0x16
/* 80359008 003225C8  41 82 00 08 */	beq .L_80359010
/* 8035900C 003225CC  60 00 20 00 */	ori r0, r0, 0x2000
.L_80359010:
/* 80359010 003225D0  57 E3 05 EF */	rlwinm. r3, r31, 0, 0x17, 0x17
/* 80359014 003225D4  41 82 00 08 */	beq .L_8035901C
/* 80359018 003225D8  60 00 00 80 */	ori r0, r0, 0x80
.L_8035901C:
/* 8035901C 003225DC  57 E3 07 39 */	rlwinm. r3, r31, 0, 0x1c, 0x1c
/* 80359020 003225E0  41 82 00 08 */	beq .L_80359028
/* 80359024 003225E4  60 00 08 00 */	ori r0, r0, 0x800
.L_80359028:
/* 80359028 003225E8  57 E3 07 7B */	rlwinm. r3, r31, 0, 0x1d, 0x1d
/* 8035902C 003225EC  41 82 00 08 */	beq .L_80359034
/* 80359030 003225F0  60 00 04 00 */	ori r0, r0, 0x400
.L_80359034:
/* 80359034 003225F4  57 E3 07 BD */	rlwinm. r3, r31, 0, 0x1e, 0x1e
/* 80359038 003225F8  41 82 00 08 */	beq .L_80359040
/* 8035903C 003225FC  60 00 02 00 */	ori r0, r0, 0x200
.L_80359040:
/* 80359040 00322600  57 E3 05 29 */	rlwinm. r3, r31, 0, 0x14, 0x14
/* 80359044 00322604  41 82 00 08 */	beq .L_8035904C
/* 80359048 00322608  60 00 40 00 */	ori r0, r0, 0x4000
.L_8035904C:
/* 8035904C 0032260C  57 E3 07 FF */	clrlwi. r3, r31, 0x1f
/* 80359050 00322610  41 82 00 08 */	beq .L_80359058
/* 80359054 00322614  60 00 01 00 */	ori r0, r0, 0x100
.L_80359058:
/* 80359058 00322618  57 E3 04 63 */	rlwinm. r3, r31, 0, 0x11, 0x11
/* 8035905C 0032261C  41 82 00 08 */	beq .L_80359064
/* 80359060 00322620  60 00 00 10 */	ori r0, r0, 0x10
.L_80359064:
/* 80359064 00322624  3C 60 80 00 */	lis r3, 0x800000C4@ha
/* 80359068 00322628  80 83 00 C4 */	lwz r4, 0x800000C4@l(r3)
/* 8035906C 0032262C  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 80359070 00322630  7C 83 1B 78 */	or r3, r4, r3
/* 80359074 00322634  7C 03 18 79 */	andc. r3, r0, r3
/* 80359078 00322638  41 82 00 8C */	beq .L_80359104
/* 8035907C 0032263C  3C 80 80 55 */	lis r4, lbl_80552AB0@ha
/* 80359080 00322640  38 84 2A B0 */	addi r4, r4, lbl_80552AB0@l
/* 80359084 00322644  60 00 00 00 */	nop 
.L_80359088:
/* 80359088 00322648  80 04 00 00 */	lwz r0, 0(r4)
/* 8035908C 0032264C  7C 60 00 39 */	and. r0, r3, r0
/* 80359090 00322650  41 82 00 10 */	beq .L_803590A0
/* 80359094 00322654  7C 00 00 34 */	cntlzw r0, r0
/* 80359098 00322658  7C 1D 07 34 */	extsh r29, r0
/* 8035909C 0032265C  48 00 00 0C */	b .L_803590A8
.L_803590A0:
/* 803590A0 00322660  38 84 00 04 */	addi r4, r4, 4
/* 803590A4 00322664  4B FF FF E4 */	b .L_80359088
.L_803590A8:
/* 803590A8 00322668  80 6D B9 20 */	lwz r3, lbl_80667AA0@sda21(r13)
/* 803590AC 0032266C  57 A0 10 3A */	slwi r0, r29, 2
/* 803590B0 00322670  7F E3 00 2E */	lwzx r31, r3, r0
/* 803590B4 00322674  2C 1F 00 00 */	cmpwi r31, 0
/* 803590B8 00322678  41 82 00 4C */	beq .L_80359104
/* 803590BC 0032267C  2C 1D 00 04 */	cmpwi r29, 4
/* 803590C0 00322680  40 81 00 1C */	ble .L_803590DC
/* 803590C4 00322684  B3 AD B9 14 */	sth r29, lbl_80667A94@sda21(r13)
/* 803590C8 00322688  48 00 38 99 */	bl OSGetTime
/* 803590CC 0032268C  90 8D B9 1C */	stw r4, lbl_80667A9C@sda21(r13)
/* 803590D0 00322690  90 6D B9 18 */	stw r3, lbl_80667A98@sda21(r13)
/* 803590D4 00322694  80 1E 01 98 */	lwz r0, 0x198(r30)
/* 803590D8 00322698  90 0D B9 10 */	stw r0, lbl_80667A90@sda21(r13)
.L_803590DC:
/* 803590DC 0032269C  48 00 25 15 */	bl OSDisableScheduler
/* 803590E0 003226A0  7F EC FB 78 */	mr r12, r31
/* 803590E4 003226A4  7F A3 EB 78 */	mr r3, r29
/* 803590E8 003226A8  7F C4 F3 78 */	mr r4, r30
/* 803590EC 003226AC  7D 89 03 A6 */	mtctr r12
/* 803590F0 003226B0  4E 80 04 21 */	bctrl 
/* 803590F4 003226B4  48 00 25 3D */	bl OSEnableScheduler
/* 803590F8 003226B8  48 00 2A 59 */	bl __OSReschedule
/* 803590FC 003226BC  7F C3 F3 78 */	mr r3, r30
/* 80359100 003226C0  4B FF B8 71 */	bl OSLoadContext
.L_80359104:
/* 80359104 003226C4  7F C3 F3 78 */	mr r3, r30
/* 80359108 003226C8  4B FF B8 69 */	bl OSLoadContext
/* 8035910C 003226CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80359110 003226D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80359114 003226D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80359118 003226D8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035911C 003226DC  7C 08 03 A6 */	mtlr r0
/* 80359120 003226E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80359124 003226E4  4E 80 00 20 */	blr 
.endfn __OSDispatchInterrupt

.balign 16, 0
.fn ExternalInterruptHandler, global
/* 80359130 003226F0  90 04 00 00 */	stw r0, 0(r4)
/* 80359134 003226F4  90 24 00 04 */	stw r1, 4(r4)
/* 80359138 003226F8  90 44 00 08 */	stw r2, 8(r4)
/* 8035913C 003226FC  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 80359140 00322700  7C 11 E2 A6 */	mfspr r0, 0x391
/* 80359144 00322704  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 80359148 00322708  7C 12 E2 A6 */	mfspr r0, 0x392
/* 8035914C 0032270C  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 80359150 00322710  7C 13 E2 A6 */	mfspr r0, 0x393
/* 80359154 00322714  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 80359158 00322718  7C 14 E2 A6 */	mfspr r0, 0x394
/* 8035915C 0032271C  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 80359160 00322720  7C 15 E2 A6 */	mfspr r0, 0x395
/* 80359164 00322724  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 80359168 00322728  7C 16 E2 A6 */	mfspr r0, 0x396
/* 8035916C 0032272C  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 80359170 00322730  7C 17 E2 A6 */	mfspr r0, 0x397
/* 80359174 00322734  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 80359178 00322738  94 21 FF F8 */	stwu r1, -8(r1)
/* 8035917C 0032273C  4B FF FD 04 */	b __OSDispatchInterrupt
.endfn ExternalInterruptHandler

.balign 16, 0
.fn __OSModuleInit, global
/* 80359180 00322740  3C 60 80 00 */	lis r3, 0x800030CC@ha
/* 80359184 00322744  38 00 00 00 */	li r0, 0
/* 80359188 00322748  90 03 30 CC */	stw r0, 0x800030CC@l(r3)
/* 8035918C 0032274C  90 03 30 C8 */	stw r0, 0x30c8(r3)
/* 80359190 00322750  90 03 30 D0 */	stw r0, 0x30d0(r3)
/* 80359194 00322754  4E 80 00 20 */	blr 
.endfn __OSModuleInit

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_80552AB0
lbl_80552AB0:
	.4byte 0x00000100
	.4byte 0x00000040
	.4byte 0xF8000000
	.4byte 0x00000200
	.4byte 0x00000080
	.4byte 0x00000010
	.4byte 0x00003000
	.4byte 0x00000020
	.4byte 0x03FF8C00
	.4byte 0x04000000
	.4byte 0x00004000
	.4byte 0xFFFFFFFF

.section .sbss, "wa"  # 0x80666600 - 0x8066836F


.global lbl_80667A90
lbl_80667A90:
	.skip 0x4
.global lbl_80667A94
lbl_80667A94:
	.skip 0x4
.global lbl_80667A98
lbl_80667A98:
	.skip 0x4
.global lbl_80667A9C
lbl_80667A9C:
	.skip 0x4
.global lbl_80667AA0
lbl_80667AA0:
	.skip 0x8