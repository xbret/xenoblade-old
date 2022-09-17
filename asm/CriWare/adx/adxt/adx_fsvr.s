.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global ADXT_ExecFsSvr
ADXT_ExecFsSvr:
/* 8037F57C 00348B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037F580 00348B40  7C 08 02 A6 */	mflr r0
/* 8037F584 00348B44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037F588 00348B48  48 00 9E 7D */	bl ADXCRS_Enter
/* 8037F58C 00348B4C  48 00 00 19 */	bl adxt_ExecFsSvr
/* 8037F590 00348B50  48 00 9E 79 */	bl ADXCRS_Leave
/* 8037F594 00348B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037F598 00348B58  7C 08 03 A6 */	mtlr r0
/* 8037F59C 00348B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8037F5A0 00348B60  4E 80 00 20 */	blr 

.global adxt_ExecFsSvr
adxt_ExecFsSvr:
/* 8037F5A4 00348B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037F5A8 00348B68  7C 08 02 A6 */	mflr r0
/* 8037F5AC 00348B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037F5B0 00348B70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037F5B4 00348B74  3F E0 80 5E */	lis r31, lbl_805E5D30@ha
/* 8037F5B8 00348B78  3B FF 5D 30 */	addi r31, r31, lbl_805E5D30@l
/* 8037F5BC 00348B7C  48 00 9E 41 */	bl ADXCRS_Lock
/* 8037F5C0 00348B80  80 1F 00 00 */	lwz r0, 0(r31)
/* 8037F5C4 00348B84  2C 00 00 00 */	cmpwi r0, 0
/* 8037F5C8 00348B88  41 82 00 0C */	beq lbl_8037F5D4
/* 8037F5CC 00348B8C  48 00 9E 35 */	bl ADXCRS_Unlock
/* 8037F5D0 00348B90  48 00 00 90 */	b lbl_8037F660
lbl_8037F5D4:
/* 8037F5D4 00348B94  38 00 00 01 */	li r0, 1
/* 8037F5D8 00348B98  90 1F 00 00 */	stw r0, 0(r31)
/* 8037F5DC 00348B9C  48 00 9E 25 */	bl ADXCRS_Unlock
/* 8037F5E0 00348BA0  81 9F 00 08 */	lwz r12, 8(r31)
/* 8037F5E4 00348BA4  2C 0C 00 00 */	cmpwi r12, 0
/* 8037F5E8 00348BA8  41 82 00 10 */	beq lbl_8037F5F8
/* 8037F5EC 00348BAC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8037F5F0 00348BB0  7D 89 03 A6 */	mtctr r12
/* 8037F5F4 00348BB4  4E 80 04 21 */	bctrl 
lbl_8037F5F8:
/* 8037F5F8 00348BB8  38 00 00 03 */	li r0, 3
/* 8037F5FC 00348BBC  90 1F 00 00 */	stw r0, 0(r31)
/* 8037F600 00348BC0  48 00 2B 2D */	bl ADXSTM_ExecFsSvr
/* 8037F604 00348BC4  38 00 00 04 */	li r0, 4
/* 8037F608 00348BC8  90 1F 00 00 */	stw r0, 0(r31)
/* 8037F60C 00348BCC  48 00 2A 9D */	bl ADXSTM_ExecServer
/* 8037F610 00348BD0  38 00 00 05 */	li r0, 5
/* 8037F614 00348BD4  90 1F 00 00 */	stw r0, 0(r31)
/* 8037F618 00348BD8  4B FF F6 11 */	bl ADXF_ExecServer
/* 8037F61C 00348BDC  38 00 00 06 */	li r0, 6
/* 8037F620 00348BE0  90 1F 00 00 */	stw r0, 0(r31)
/* 8037F624 00348BE4  48 00 2A 85 */	bl ADXSTM_ExecServer
/* 8037F628 00348BE8  38 00 00 07 */	li r0, 7
/* 8037F62C 00348BEC  90 1F 00 00 */	stw r0, 0(r31)
/* 8037F630 00348BF0  48 00 2A FD */	bl ADXSTM_ExecFsSvr
/* 8037F634 00348BF4  38 00 00 09 */	li r0, 9
/* 8037F638 00348BF8  90 1F 00 00 */	stw r0, 0(r31)
/* 8037F63C 00348BFC  48 00 2B 19 */	bl ADXSTM_ExecFsIdle
/* 8037F640 00348C00  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 8037F644 00348C04  38 00 00 00 */	li r0, 0
/* 8037F648 00348C08  90 1F 00 00 */	stw r0, 0(r31)
/* 8037F64C 00348C0C  2C 0C 00 00 */	cmpwi r12, 0
/* 8037F650 00348C10  41 82 00 10 */	beq lbl_8037F660
/* 8037F654 00348C14  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8037F658 00348C18  7D 89 03 A6 */	mtctr r12
/* 8037F65C 00348C1C  4E 80 04 21 */	bctrl 
lbl_8037F660:
/* 8037F660 00348C20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037F664 00348C24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037F668 00348C28  7C 08 03 A6 */	mtlr r0
/* 8037F66C 00348C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8037F670 00348C30  4E 80 00 20 */	blr