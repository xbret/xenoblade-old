.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

#CMainMenu?
.global func_800D7A04
func_800D7A04:
/* 800D7A04 000A0FC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D7A08 000A0FC8  7C 08 02 A6 */	mflr r0
/* 800D7A0C 000A0FCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D7A10 000A0FD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D7A14 000A0FD4  7C 9F 23 78 */	mr r31, r4
/* 800D7A18 000A0FD8  93 C1 00 08 */	stw r30, 8(r1)
/* 800D7A1C 000A0FDC  81 83 00 00 */	lwz r12, 0(r3)
/* 800D7A20 000A0FE0  81 8C 02 98 */	lwz r12, 0x298(r12)
/* 800D7A24 000A0FE4  7D 89 03 A6 */	mtctr r12
/* 800D7A28 000A0FE8  4E 80 04 21 */	bctrl 
/* 800D7A2C 000A0FEC  80 83 00 74 */	lwz r4, 0x74(r3)
/* 800D7A30 000A0FF0  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 800D7A34 000A0FF4  41 82 00 38 */	beq .L_800D7A6C
/* 800D7A38 000A0FF8  C0 22 93 18 */	lfs f1, float_80669698@sda21(r2)
/* 800D7A3C 000A0FFC  38 60 00 00 */	li r3, 0
/* 800D7A40 000A1000  38 80 01 92 */	li r4, 0x192
/* 800D7A44 000A1004  38 A0 00 00 */	li r5, 0
/* 800D7A48 000A1008  38 C0 00 00 */	li r6, 0
/* 800D7A4C 000A100C  48 0E 81 ED */	bl func_801BFC38
/* 800D7A50 000A1010  C0 22 93 18 */	lfs f1, float_80669698@sda21(r2)
/* 800D7A54 000A1014  38 60 00 00 */	li r3, 0
/* 800D7A58 000A1018  38 80 01 91 */	li r4, 0x191
/* 800D7A5C 000A101C  38 A0 00 00 */	li r5, 0
/* 800D7A60 000A1020  38 C0 00 00 */	li r6, 0
/* 800D7A64 000A1024  48 0E 81 D5 */	bl func_801BFC38
/* 800D7A68 000A1028  48 00 02 A4 */	b .L_800D7D0C
.L_800D7A6C:
/* 800D7A6C 000A102C  54 80 04 A5 */	rlwinm. r0, r4, 0, 0x12, 0x12
/* 800D7A70 000A1030  41 82 00 20 */	beq .L_800D7A90
/* 800D7A74 000A1034  C0 22 93 18 */	lfs f1, float_80669698@sda21(r2)
/* 800D7A78 000A1038  38 60 00 00 */	li r3, 0
/* 800D7A7C 000A103C  38 80 01 C5 */	li r4, 0x1c5
/* 800D7A80 000A1040  38 A0 00 00 */	li r5, 0
/* 800D7A84 000A1044  38 C0 00 00 */	li r6, 0
/* 800D7A88 000A1048  48 0E 81 B1 */	bl func_801BFC38
/* 800D7A8C 000A104C  48 00 02 80 */	b .L_800D7D0C
.L_800D7A90:
/* 800D7A90 000A1050  83 C3 00 50 */	lwz r30, 0x50(r3)
/* 800D7A94 000A1054  2C 1E 00 00 */	cmpwi r30, 0
/* 800D7A98 000A1058  41 82 02 74 */	beq .L_800D7D0C
/* 800D7A9C 000A105C  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 800D7AA0 000A1060  54 60 01 CF */	rlwinm. r0, r3, 0, 7, 7
/* 800D7AA4 000A1064  41 82 00 8C */	beq .L_800D7B30
/* 800D7AA8 000A1068  81 9F 00 00 */	lwz r12, 0(r31)
/* 800D7AAC 000A106C  7F E3 FB 78 */	mr r3, r31
/* 800D7AB0 000A1070  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 800D7AB4 000A1074  7D 89 03 A6 */	mtctr r12
/* 800D7AB8 000A1078  4E 80 04 21 */	bctrl 
/* 800D7ABC 000A107C  2C 03 00 01 */	cmpwi r3, 1
/* 800D7AC0 000A1080  41 82 00 20 */	beq .L_800D7AE0
/* 800D7AC4 000A1084  81 9F 00 00 */	lwz r12, 0(r31)
/* 800D7AC8 000A1088  7F E3 FB 78 */	mr r3, r31
/* 800D7ACC 000A108C  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 800D7AD0 000A1090  7D 89 03 A6 */	mtctr r12
/* 800D7AD4 000A1094  4E 80 04 21 */	bctrl 
/* 800D7AD8 000A1098  2C 03 00 02 */	cmpwi r3, 2
/* 800D7ADC 000A109C  40 82 00 2C */	bne .L_800D7B08
.L_800D7AE0:
/* 800D7AE0 000A10A0  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 800D7AE4 000A10A4  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 800D7AE8 000A10A8  40 82 00 74 */	bne .L_800D7B5C
/* 800D7AEC 000A10AC  C0 22 93 18 */	lfs f1, float_80669698@sda21(r2)
/* 800D7AF0 000A10B0  38 60 00 00 */	li r3, 0
/* 800D7AF4 000A10B4  38 80 01 B4 */	li r4, 0x1b4
/* 800D7AF8 000A10B8  38 A0 00 00 */	li r5, 0
/* 800D7AFC 000A10BC  38 C0 00 00 */	li r6, 0
/* 800D7B00 000A10C0  48 0E 81 39 */	bl func_801BFC38
/* 800D7B04 000A10C4  48 00 02 08 */	b .L_800D7D0C
.L_800D7B08:
/* 800D7B08 000A10C8  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 800D7B0C 000A10CC  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 800D7B10 000A10D0  40 82 00 4C */	bne .L_800D7B5C
/* 800D7B14 000A10D4  C0 22 93 18 */	lfs f1, float_80669698@sda21(r2)
/* 800D7B18 000A10D8  38 60 00 00 */	li r3, 0
/* 800D7B1C 000A10DC  38 80 01 B5 */	li r4, 0x1b5
/* 800D7B20 000A10E0  38 A0 00 00 */	li r5, 0
/* 800D7B24 000A10E4  38 C0 00 00 */	li r6, 0
/* 800D7B28 000A10E8  48 0E 81 11 */	bl func_801BFC38
/* 800D7B2C 000A10EC  48 00 01 E0 */	b .L_800D7D0C
.L_800D7B30:
/* 800D7B30 000A10F0  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 800D7B34 000A10F4  41 82 00 28 */	beq .L_800D7B5C
/* 800D7B38 000A10F8  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 800D7B3C 000A10FC  40 82 00 20 */	bne .L_800D7B5C
/* 800D7B40 000A1100  C0 22 93 18 */	lfs f1, float_80669698@sda21(r2)
/* 800D7B44 000A1104  38 60 00 00 */	li r3, 0
/* 800D7B48 000A1108  38 80 01 B5 */	li r4, 0x1b5
/* 800D7B4C 000A110C  38 A0 00 00 */	li r5, 0
/* 800D7B50 000A1110  38 C0 00 00 */	li r6, 0
/* 800D7B54 000A1114  48 0E 80 E5 */	bl func_801BFC38
/* 800D7B58 000A1118  48 00 01 B4 */	b .L_800D7D0C
.L_800D7B5C:
/* 800D7B5C 000A111C  A0 1E 00 40 */	lhz r0, 0x40(r30)
/* 800D7B60 000A1120  2C 00 00 01 */	cmpwi r0, 1
/* 800D7B64 000A1124  40 82 00 C0 */	bne .L_800D7C24
/* 800D7B68 000A1128  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 800D7B6C 000A112C  41 82 00 20 */	beq .L_800D7B8C
/* 800D7B70 000A1130  C0 22 93 18 */	lfs f1, float_80669698@sda21(r2)
/* 800D7B74 000A1134  38 60 00 00 */	li r3, 0
/* 800D7B78 000A1138  38 80 01 AF */	li r4, 0x1af
/* 800D7B7C 000A113C  38 A0 00 00 */	li r5, 0
/* 800D7B80 000A1140  38 C0 00 00 */	li r6, 0
/* 800D7B84 000A1144  48 0E 80 B5 */	bl func_801BFC38
/* 800D7B88 000A1148  48 00 01 84 */	b .L_800D7D0C
.L_800D7B8C:
/* 800D7B8C 000A114C  2C 1F 00 00 */	cmpwi r31, 0
/* 800D7B90 000A1150  41 82 00 24 */	beq .L_800D7BB4
/* 800D7B94 000A1154  80 1F 3F 00 */	lwz r0, 0x3f00(r31)
/* 800D7B98 000A1158  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800D7B9C 000A115C  41 82 00 18 */	beq .L_800D7BB4
/* 800D7BA0 000A1160  A0 7F 3F 28 */	lhz r3, 0x3f28(r31)
/* 800D7BA4 000A1164  4B FC 70 F9 */	bl func_8009EC9C
/* 800D7BA8 000A1168  38 80 00 01 */	li r4, 1
/* 800D7BAC 000A116C  38 63 00 1C */	addi r3, r3, 0x1c
/* 800D7BB0 000A1170  4B FC 5C 35 */	bl func_8009D7E4
.L_800D7BB4:
/* 800D7BB4 000A1174  81 9F 00 00 */	lwz r12, 0(r31)
/* 800D7BB8 000A1178  7F E3 FB 78 */	mr r3, r31
/* 800D7BBC 000A117C  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 800D7BC0 000A1180  7D 89 03 A6 */	mtctr r12
/* 800D7BC4 000A1184  4E 80 04 21 */	bctrl 
/* 800D7BC8 000A1188  2C 03 00 01 */	cmpwi r3, 1
/* 800D7BCC 000A118C  41 82 00 20 */	beq .L_800D7BEC
/* 800D7BD0 000A1190  81 9F 00 00 */	lwz r12, 0(r31)
/* 800D7BD4 000A1194  7F E3 FB 78 */	mr r3, r31
/* 800D7BD8 000A1198  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 800D7BDC 000A119C  7D 89 03 A6 */	mtctr r12
/* 800D7BE0 000A11A0  4E 80 04 21 */	bctrl 
/* 800D7BE4 000A11A4  2C 03 00 02 */	cmpwi r3, 2
/* 800D7BE8 000A11A8  40 82 00 20 */	bne .L_800D7C08
.L_800D7BEC:
/* 800D7BEC 000A11AC  C0 22 93 18 */	lfs f1, float_80669698@sda21(r2)
/* 800D7BF0 000A11B0  38 60 00 00 */	li r3, 0
/* 800D7BF4 000A11B4  38 80 01 AE */	li r4, 0x1ae
/* 800D7BF8 000A11B8  38 A0 00 00 */	li r5, 0
/* 800D7BFC 000A11BC  38 C0 00 00 */	li r6, 0
/* 800D7C00 000A11C0  48 0E 80 39 */	bl func_801BFC38
/* 800D7C04 000A11C4  48 00 01 08 */	b .L_800D7D0C
.L_800D7C08:
/* 800D7C08 000A11C8  C0 22 93 18 */	lfs f1, float_80669698@sda21(r2)
/* 800D7C0C 000A11CC  38 60 00 00 */	li r3, 0
/* 800D7C10 000A11D0  38 80 01 AD */	li r4, 0x1ad
/* 800D7C14 000A11D4  38 A0 00 00 */	li r5, 0
/* 800D7C18 000A11D8  38 C0 00 00 */	li r6, 0
/* 800D7C1C 000A11DC  48 0E 80 1D */	bl func_801BFC38
/* 800D7C20 000A11E0  48 00 00 EC */	b .L_800D7D0C
.L_800D7C24:
/* 800D7C24 000A11E4  2C 00 00 02 */	cmpwi r0, 2
/* 800D7C28 000A11E8  40 82 00 C0 */	bne .L_800D7CE8
/* 800D7C2C 000A11EC  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 800D7C30 000A11F0  41 82 00 20 */	beq .L_800D7C50
/* 800D7C34 000A11F4  C0 22 93 18 */	lfs f1, float_80669698@sda21(r2)
/* 800D7C38 000A11F8  38 60 00 00 */	li r3, 0
/* 800D7C3C 000A11FC  38 80 01 AC */	li r4, 0x1ac
/* 800D7C40 000A1200  38 A0 00 00 */	li r5, 0
/* 800D7C44 000A1204  38 C0 00 00 */	li r6, 0
/* 800D7C48 000A1208  48 0E 7F F1 */	bl func_801BFC38
/* 800D7C4C 000A120C  48 00 00 C0 */	b .L_800D7D0C
.L_800D7C50:
/* 800D7C50 000A1210  2C 1F 00 00 */	cmpwi r31, 0
/* 800D7C54 000A1214  41 82 00 24 */	beq .L_800D7C78
/* 800D7C58 000A1218  80 1F 3F 00 */	lwz r0, 0x3f00(r31)
/* 800D7C5C 000A121C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800D7C60 000A1220  41 82 00 18 */	beq .L_800D7C78
/* 800D7C64 000A1224  A0 7F 3F 28 */	lhz r3, 0x3f28(r31)
/* 800D7C68 000A1228  4B FC 70 35 */	bl func_8009EC9C
/* 800D7C6C 000A122C  38 80 00 01 */	li r4, 1
/* 800D7C70 000A1230  38 63 00 1C */	addi r3, r3, 0x1c
/* 800D7C74 000A1234  4B FC 5B 71 */	bl func_8009D7E4
.L_800D7C78:
/* 800D7C78 000A1238  81 9F 00 00 */	lwz r12, 0(r31)
/* 800D7C7C 000A123C  7F E3 FB 78 */	mr r3, r31
/* 800D7C80 000A1240  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 800D7C84 000A1244  7D 89 03 A6 */	mtctr r12
/* 800D7C88 000A1248  4E 80 04 21 */	bctrl 
/* 800D7C8C 000A124C  2C 03 00 01 */	cmpwi r3, 1
/* 800D7C90 000A1250  41 82 00 20 */	beq .L_800D7CB0
/* 800D7C94 000A1254  81 9F 00 00 */	lwz r12, 0(r31)
/* 800D7C98 000A1258  7F E3 FB 78 */	mr r3, r31
/* 800D7C9C 000A125C  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 800D7CA0 000A1260  7D 89 03 A6 */	mtctr r12
/* 800D7CA4 000A1264  4E 80 04 21 */	bctrl 
/* 800D7CA8 000A1268  2C 03 00 02 */	cmpwi r3, 2
/* 800D7CAC 000A126C  40 82 00 20 */	bne .L_800D7CCC
.L_800D7CB0:
/* 800D7CB0 000A1270  C0 22 93 18 */	lfs f1, float_80669698@sda21(r2)
/* 800D7CB4 000A1274  38 60 00 00 */	li r3, 0
/* 800D7CB8 000A1278  38 80 01 AB */	li r4, 0x1ab
/* 800D7CBC 000A127C  38 A0 00 00 */	li r5, 0
/* 800D7CC0 000A1280  38 C0 00 00 */	li r6, 0
/* 800D7CC4 000A1284  48 0E 7F 75 */	bl func_801BFC38
/* 800D7CC8 000A1288  48 00 00 44 */	b .L_800D7D0C
.L_800D7CCC:
/* 800D7CCC 000A128C  C0 22 93 18 */	lfs f1, float_80669698@sda21(r2)
/* 800D7CD0 000A1290  38 60 00 00 */	li r3, 0
/* 800D7CD4 000A1294  38 80 01 AA */	li r4, 0x1aa
/* 800D7CD8 000A1298  38 A0 00 00 */	li r5, 0
/* 800D7CDC 000A129C  38 C0 00 00 */	li r6, 0
/* 800D7CE0 000A12A0  48 0E 7F 59 */	bl func_801BFC38
/* 800D7CE4 000A12A4  48 00 00 28 */	b .L_800D7D0C
.L_800D7CE8:
/* 800D7CE8 000A12A8  3C 60 80 50 */	lis r3, lbl_804F8228@ha
/* 800D7CEC 000A12AC  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 800D7CF0 000A12B0  38 63 82 28 */	addi r3, r3, lbl_804F8228@l
/* 800D7CF4 000A12B4  C0 22 93 18 */	lfs f1, float_80669698@sda21(r2)
/* 800D7CF8 000A12B8  7C 83 00 2E */	lwzx r4, r3, r0
/* 800D7CFC 000A12BC  38 60 00 00 */	li r3, 0
/* 800D7D00 000A12C0  38 A0 00 00 */	li r5, 0
/* 800D7D04 000A12C4  38 C0 00 00 */	li r6, 0
/* 800D7D08 000A12C8  48 0E 7F 31 */	bl func_801BFC38
.L_800D7D0C:
/* 800D7D0C 000A12CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D7D10 000A12D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D7D14 000A12D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D7D18 000A12D8  7C 08 03 A6 */	mtlr r0
/* 800D7D1C 000A12DC  38 21 00 10 */	addi r1, r1, 0x10
/* 800D7D20 000A12E0  4E 80 00 20 */	blr 

.global func_800D7D24
func_800D7D24:
/* 800D7D24 000A12E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D7D28 000A12E8  7C 08 02 A6 */	mflr r0
/* 800D7D2C 000A12EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D7D30 000A12F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D7D34 000A12F4  3B E0 00 00 */	li r31, 0
/* 800D7D38 000A12F8  93 C1 00 08 */	stw r30, 8(r1)
/* 800D7D3C 000A12FC  7C 7E 1B 78 */	mr r30, r3
/* 800D7D40 000A1300  80 03 00 78 */	lwz r0, 0x78(r3)
/* 800D7D44 000A1304  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800D7D48 000A1308  40 82 00 0C */	bne .L_800D7D54
/* 800D7D4C 000A130C  3B E0 00 01 */	li r31, 1
/* 800D7D50 000A1310  48 00 01 34 */	b .L_800D7E84
.L_800D7D54:
/* 800D7D54 000A1314  80 C3 00 B8 */	lwz r6, 0xb8(r3)
/* 800D7D58 000A1318  2C 06 00 00 */	cmpwi r6, 0
/* 800D7D5C 000A131C  41 82 01 28 */	beq .L_800D7E84
/* 800D7D60 000A1320  38 00 00 02 */	li r0, 2
/* 800D7D64 000A1324  7C C5 33 78 */	mr r5, r6
/* 800D7D68 000A1328  38 80 00 00 */	li r4, 0
/* 800D7D6C 000A132C  7C 09 03 A6 */	mtctr r0
.L_800D7D70:
/* 800D7D70 000A1330  80 65 00 08 */	lwz r3, 8(r5)
/* 800D7D74 000A1334  80 06 00 04 */	lwz r0, 4(r6)
/* 800D7D78 000A1338  7C 03 00 40 */	cmplw r3, r0
/* 800D7D7C 000A133C  40 82 00 0C */	bne .L_800D7D88
/* 800D7D80 000A1340  38 00 00 01 */	li r0, 1
/* 800D7D84 000A1344  48 00 00 A0 */	b .L_800D7E24
.L_800D7D88:
/* 800D7D88 000A1348  80 65 00 0C */	lwz r3, 0xc(r5)
/* 800D7D8C 000A134C  7C 03 00 40 */	cmplw r3, r0
/* 800D7D90 000A1350  40 82 00 0C */	bne .L_800D7D9C
/* 800D7D94 000A1354  38 00 00 01 */	li r0, 1
/* 800D7D98 000A1358  48 00 00 8C */	b .L_800D7E24
.L_800D7D9C:
/* 800D7D9C 000A135C  80 65 00 10 */	lwz r3, 0x10(r5)
/* 800D7DA0 000A1360  7C 03 00 40 */	cmplw r3, r0
/* 800D7DA4 000A1364  40 82 00 0C */	bne .L_800D7DB0
/* 800D7DA8 000A1368  38 00 00 01 */	li r0, 1
/* 800D7DAC 000A136C  48 00 00 78 */	b .L_800D7E24
.L_800D7DB0:
/* 800D7DB0 000A1370  80 65 00 14 */	lwz r3, 0x14(r5)
/* 800D7DB4 000A1374  7C 03 00 40 */	cmplw r3, r0
/* 800D7DB8 000A1378  40 82 00 0C */	bne .L_800D7DC4
/* 800D7DBC 000A137C  38 00 00 01 */	li r0, 1
/* 800D7DC0 000A1380  48 00 00 64 */	b .L_800D7E24
.L_800D7DC4:
/* 800D7DC4 000A1384  80 65 00 18 */	lwz r3, 0x18(r5)
/* 800D7DC8 000A1388  7C 03 00 40 */	cmplw r3, r0
/* 800D7DCC 000A138C  40 82 00 0C */	bne .L_800D7DD8
/* 800D7DD0 000A1390  38 00 00 01 */	li r0, 1
/* 800D7DD4 000A1394  48 00 00 50 */	b .L_800D7E24
.L_800D7DD8:
/* 800D7DD8 000A1398  80 65 00 1C */	lwz r3, 0x1c(r5)
/* 800D7DDC 000A139C  7C 03 00 40 */	cmplw r3, r0
/* 800D7DE0 000A13A0  40 82 00 0C */	bne .L_800D7DEC
/* 800D7DE4 000A13A4  38 00 00 01 */	li r0, 1
/* 800D7DE8 000A13A8  48 00 00 3C */	b .L_800D7E24
.L_800D7DEC:
/* 800D7DEC 000A13AC  80 65 00 20 */	lwz r3, 0x20(r5)
/* 800D7DF0 000A13B0  7C 03 00 40 */	cmplw r3, r0
/* 800D7DF4 000A13B4  40 82 00 0C */	bne .L_800D7E00
/* 800D7DF8 000A13B8  38 00 00 01 */	li r0, 1
/* 800D7DFC 000A13BC  48 00 00 28 */	b .L_800D7E24
.L_800D7E00:
/* 800D7E00 000A13C0  80 65 00 24 */	lwz r3, 0x24(r5)
/* 800D7E04 000A13C4  7C 03 00 40 */	cmplw r3, r0
/* 800D7E08 000A13C8  40 82 00 0C */	bne .L_800D7E14
/* 800D7E0C 000A13CC  38 00 00 01 */	li r0, 1
/* 800D7E10 000A13D0  48 00 00 14 */	b .L_800D7E24
.L_800D7E14:
/* 800D7E14 000A13D4  38 A5 00 20 */	addi r5, r5, 0x20
/* 800D7E18 000A13D8  38 84 00 07 */	addi r4, r4, 7
/* 800D7E1C 000A13DC  42 00 FF 54 */	bdnz .L_800D7D70
/* 800D7E20 000A13E0  38 00 00 00 */	li r0, 0
.L_800D7E24:
/* 800D7E24 000A13E4  2C 00 00 00 */	cmpwi r0, 0
/* 800D7E28 000A13E8  41 82 00 14 */	beq .L_800D7E3C
/* 800D7E2C 000A13EC  80 66 00 04 */	lwz r3, 4(r6)
/* 800D7E30 000A13F0  4B FD F2 5D */	bl func_800B708C
/* 800D7E34 000A13F4  2C 03 00 00 */	cmpwi r3, 0
/* 800D7E38 000A13F8  40 82 00 4C */	bne .L_800D7E84
.L_800D7E3C:
/* 800D7E3C 000A13FC  38 00 00 10 */	li r0, 0x10
/* 800D7E40 000A1400  7F C3 F3 78 */	mr r3, r30
/* 800D7E44 000A1404  38 80 00 00 */	li r4, 0
/* 800D7E48 000A1408  7C 09 03 A6 */	mtctr r0
.L_800D7E4C:
/* 800D7E4C 000A140C  80 03 00 08 */	lwz r0, 8(r3)
/* 800D7E50 000A1410  2C 00 00 00 */	cmpwi r0, 0
/* 800D7E54 000A1414  41 82 00 24 */	beq .L_800D7E78
/* 800D7E58 000A1418  54 83 10 3A */	slwi r3, r4, 2
/* 800D7E5C 000A141C  80 1E 00 04 */	lwz r0, 4(r30)
/* 800D7E60 000A1420  7C 7E 1A 14 */	add r3, r30, r3
/* 800D7E64 000A1424  80 63 00 08 */	lwz r3, 8(r3)
/* 800D7E68 000A1428  7C 03 00 40 */	cmplw r3, r0
/* 800D7E6C 000A142C  40 82 00 18 */	bne .L_800D7E84
/* 800D7E70 000A1430  3B E0 00 01 */	li r31, 1
/* 800D7E74 000A1434  48 00 00 10 */	b .L_800D7E84
.L_800D7E78:
/* 800D7E78 000A1438  38 63 00 04 */	addi r3, r3, 4
/* 800D7E7C 000A143C  38 84 00 01 */	addi r4, r4, 1
/* 800D7E80 000A1440  42 00 FF CC */	bdnz .L_800D7E4C
.L_800D7E84:
/* 800D7E84 000A1444  7F E3 FB 78 */	mr r3, r31
/* 800D7E88 000A1448  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D7E8C 000A144C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D7E90 000A1450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D7E94 000A1454  7C 08 03 A6 */	mtlr r0
/* 800D7E98 000A1458  38 21 00 10 */	addi r1, r1, 0x10
/* 800D7E9C 000A145C  4E 80 00 20 */	blr 

.global func_800D7EA0
func_800D7EA0:
/* 800D7EA0 000A1460  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800D7EA4 000A1464  7C 08 02 A6 */	mflr r0
/* 800D7EA8 000A1468  2C 03 00 00 */	cmpwi r3, 0
/* 800D7EAC 000A146C  90 01 00 44 */	stw r0, 0x44(r1)
/* 800D7EB0 000A1470  3C 00 43 30 */	lis r0, 0x4330
/* 800D7EB4 000A1474  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800D7EB8 000A1478  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 800D7EBC 000A147C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800D7EC0 000A1480  7C 9F 23 78 */	mr r31, r4
/* 800D7EC4 000A1484  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800D7EC8 000A1488  7C 7E 1B 78 */	mr r30, r3
/* 800D7ECC 000A148C  90 01 00 10 */	stw r0, 0x10(r1)
/* 800D7ED0 000A1490  90 01 00 18 */	stw r0, 0x18(r1)
/* 800D7ED4 000A1494  41 82 00 0C */	beq .L_800D7EE0
/* 800D7ED8 000A1498  2C 04 00 00 */	cmpwi r4, 0
/* 800D7EDC 000A149C  40 82 00 0C */	bne .L_800D7EE8
.L_800D7EE0:
/* 800D7EE0 000A14A0  C0 22 93 1C */	lfs f1, float_8066969C@sda21(r2)
/* 800D7EE4 000A14A4  48 00 02 A4 */	b .L_800D8188
.L_800D7EE8:
/* 800D7EE8 000A14A8  80 84 00 78 */	lwz r4, 0x78(r4)
/* 800D7EEC 000A14AC  C3 E2 93 1C */	lfs f31, float_8066969C@sda21(r2)
/* 800D7EF0 000A14B0  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 800D7EF4 000A14B4  41 82 00 48 */	beq .L_800D7F3C
/* 800D7EF8 000A14B8  38 80 00 B4 */	li r4, 0xb4
/* 800D7EFC 000A14BC  38 63 00 08 */	addi r3, r3, 8
/* 800D7F00 000A14C0  48 07 08 79 */	bl func_80148778
/* 800D7F04 000A14C4  2C 03 00 00 */	cmpwi r3, 0
/* 800D7F08 000A14C8  41 82 00 7C */	beq .L_800D7F84
/* 800D7F0C 000A14CC  38 7E 00 08 */	addi r3, r30, 8
/* 800D7F10 000A14D0  38 80 00 B4 */	li r4, 0xb4
/* 800D7F14 000A14D4  48 07 12 41 */	bl func_80149154
/* 800D7F18 000A14D8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800D7F1C 000A14DC  C8 42 93 28 */	lfd f2, double_806696A8@sda21(r2)
/* 800D7F20 000A14E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D7F24 000A14E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D7F28 000A14E8  C0 02 93 20 */	lfs f0, float_806696A0@sda21(r2)
/* 800D7F2C 000A14EC  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800D7F30 000A14F0  EC 21 10 28 */	fsubs f1, f1, f2
/* 800D7F34 000A14F4  EF E0 F8 7C */	fnmsubs f31, f0, f1, f31
/* 800D7F38 000A14F8  48 00 00 4C */	b .L_800D7F84
.L_800D7F3C:
/* 800D7F3C 000A14FC  54 80 05 2B */	rlwinm. r0, r4, 0, 0x14, 0x15
/* 800D7F40 000A1500  41 82 00 44 */	beq .L_800D7F84
/* 800D7F44 000A1504  38 80 00 B5 */	li r4, 0xb5
/* 800D7F48 000A1508  38 63 00 08 */	addi r3, r3, 8
/* 800D7F4C 000A150C  48 07 08 2D */	bl func_80148778
/* 800D7F50 000A1510  2C 03 00 00 */	cmpwi r3, 0
/* 800D7F54 000A1514  41 82 00 30 */	beq .L_800D7F84
/* 800D7F58 000A1518  38 7E 00 08 */	addi r3, r30, 8
/* 800D7F5C 000A151C  38 80 00 B5 */	li r4, 0xb5
/* 800D7F60 000A1520  48 07 11 F5 */	bl func_80149154
/* 800D7F64 000A1524  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800D7F68 000A1528  C8 42 93 28 */	lfd f2, double_806696A8@sda21(r2)
/* 800D7F6C 000A152C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D7F70 000A1530  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800D7F74 000A1534  C0 02 93 20 */	lfs f0, float_806696A0@sda21(r2)
/* 800D7F78 000A1538  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 800D7F7C 000A153C  EC 21 10 28 */	fsubs f1, f1, f2
/* 800D7F80 000A1540  EF E0 F8 7C */	fnmsubs f31, f0, f1, f31
.L_800D7F84:
/* 800D7F84 000A1544  38 7E 00 08 */	addi r3, r30, 8
/* 800D7F88 000A1548  38 80 00 B3 */	li r4, 0xb3
/* 800D7F8C 000A154C  48 07 07 ED */	bl func_80148778
/* 800D7F90 000A1550  2C 03 00 00 */	cmpwi r3, 0
/* 800D7F94 000A1554  41 82 00 30 */	beq .L_800D7FC4
/* 800D7F98 000A1558  38 7E 00 08 */	addi r3, r30, 8
/* 800D7F9C 000A155C  38 80 00 B3 */	li r4, 0xb3
/* 800D7FA0 000A1560  48 07 11 B5 */	bl func_80149154
/* 800D7FA4 000A1564  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800D7FA8 000A1568  C8 42 93 28 */	lfd f2, double_806696A8@sda21(r2)
/* 800D7FAC 000A156C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D7FB0 000A1570  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D7FB4 000A1574  C0 02 93 20 */	lfs f0, float_806696A0@sda21(r2)
/* 800D7FB8 000A1578  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800D7FBC 000A157C  EC 21 10 28 */	fsubs f1, f1, f2
/* 800D7FC0 000A1580  EF E0 F8 7A */	fmadds f31, f0, f1, f31
.L_800D7FC4:
/* 800D7FC4 000A1584  38 7E 00 08 */	addi r3, r30, 8
/* 800D7FC8 000A1588  38 80 00 B6 */	li r4, 0xb6
/* 800D7FCC 000A158C  48 07 07 AD */	bl func_80148778
/* 800D7FD0 000A1590  2C 03 00 00 */	cmpwi r3, 0
/* 800D7FD4 000A1594  41 82 00 30 */	beq .L_800D8004
/* 800D7FD8 000A1598  38 7E 00 08 */	addi r3, r30, 8
/* 800D7FDC 000A159C  38 80 00 B6 */	li r4, 0xb6
/* 800D7FE0 000A15A0  48 07 11 75 */	bl func_80149154
/* 800D7FE4 000A15A4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800D7FE8 000A15A8  C8 42 93 28 */	lfd f2, double_806696A8@sda21(r2)
/* 800D7FEC 000A15AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D7FF0 000A15B0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800D7FF4 000A15B4  C0 02 93 20 */	lfs f0, float_806696A0@sda21(r2)
/* 800D7FF8 000A15B8  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 800D7FFC 000A15BC  EC 21 10 28 */	fsubs f1, f1, f2
/* 800D8000 000A15C0  EF E0 F8 7C */	fnmsubs f31, f0, f1, f31
.L_800D8004:
/* 800D8004 000A15C4  81 9E 00 00 */	lwz r12, 0(r30)
/* 800D8008 000A15C8  7F C3 F3 78 */	mr r3, r30
/* 800D800C 000A15CC  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 800D8010 000A15D0  7D 89 03 A6 */	mtctr r12
/* 800D8014 000A15D4  4E 80 04 21 */	bctrl 
/* 800D8018 000A15D8  2C 03 00 00 */	cmpwi r3, 0
/* 800D801C 000A15DC  41 82 01 58 */	beq .L_800D8174
/* 800D8020 000A15E0  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 800D8024 000A15E4  54 00 05 2B */	rlwinm. r0, r0, 0, 0x14, 0x15
/* 800D8028 000A15E8  41 82 00 4C */	beq .L_800D8074
/* 800D802C 000A15EC  81 9E 00 00 */	lwz r12, 0(r30)
/* 800D8030 000A15F0  7F C3 F3 78 */	mr r3, r30
/* 800D8034 000A15F4  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 800D8038 000A15F8  7D 89 03 A6 */	mtctr r12
/* 800D803C 000A15FC  4E 80 04 21 */	bctrl 
/* 800D8040 000A1600  38 A1 00 08 */	addi r5, r1, 8
/* 800D8044 000A1604  38 80 00 64 */	li r4, 0x64
/* 800D8048 000A1608  48 18 82 1D */	bl func_80260264
/* 800D804C 000A160C  2C 03 00 00 */	cmpwi r3, 0
/* 800D8050 000A1610  41 82 00 24 */	beq .L_800D8074
/* 800D8054 000A1614  80 01 00 08 */	lwz r0, 8(r1)
/* 800D8058 000A1618  C8 42 93 28 */	lfd f2, double_806696A8@sda21(r2)
/* 800D805C 000A161C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D8060 000A1620  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D8064 000A1624  C0 02 93 20 */	lfs f0, float_806696A0@sda21(r2)
/* 800D8068 000A1628  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800D806C 000A162C  EC 21 10 28 */	fsubs f1, f1, f2
/* 800D8070 000A1630  EF E0 F8 7C */	fnmsubs f31, f0, f1, f31
.L_800D8074:
/* 800D8074 000A1634  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 800D8078 000A1638  C0 02 93 24 */	lfs f0, float_806696A4@sda21(r2)
/* 800D807C 000A163C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D8080 000A1640  40 81 00 4C */	ble .L_800D80CC
/* 800D8084 000A1644  81 9E 00 00 */	lwz r12, 0(r30)
/* 800D8088 000A1648  7F C3 F3 78 */	mr r3, r30
/* 800D808C 000A164C  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 800D8090 000A1650  7D 89 03 A6 */	mtctr r12
/* 800D8094 000A1654  4E 80 04 21 */	bctrl 
/* 800D8098 000A1658  38 A1 00 08 */	addi r5, r1, 8
/* 800D809C 000A165C  38 80 00 6F */	li r4, 0x6f
/* 800D80A0 000A1660  48 18 81 C5 */	bl func_80260264
/* 800D80A4 000A1664  2C 03 00 00 */	cmpwi r3, 0
/* 800D80A8 000A1668  41 82 00 24 */	beq .L_800D80CC
/* 800D80AC 000A166C  80 01 00 08 */	lwz r0, 8(r1)
/* 800D80B0 000A1670  C8 42 93 28 */	lfd f2, double_806696A8@sda21(r2)
/* 800D80B4 000A1674  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D80B8 000A1678  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800D80BC 000A167C  C0 02 93 20 */	lfs f0, float_806696A0@sda21(r2)
/* 800D80C0 000A1680  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 800D80C4 000A1684  EC 21 10 28 */	fsubs f1, f1, f2
/* 800D80C8 000A1688  EF E0 F8 7A */	fmadds f31, f0, f1, f31
.L_800D80CC:
/* 800D80CC 000A168C  81 9E 00 00 */	lwz r12, 0(r30)
/* 800D80D0 000A1690  7F C3 F3 78 */	mr r3, r30
/* 800D80D4 000A1694  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 800D80D8 000A1698  7D 89 03 A6 */	mtctr r12
/* 800D80DC 000A169C  4E 80 04 21 */	bctrl 
/* 800D80E0 000A16A0  38 A1 00 08 */	addi r5, r1, 8
/* 800D80E4 000A16A4  38 80 00 71 */	li r4, 0x71
/* 800D80E8 000A16A8  48 18 81 7D */	bl func_80260264
/* 800D80EC 000A16AC  2C 03 00 00 */	cmpwi r3, 0
/* 800D80F0 000A16B0  41 82 00 30 */	beq .L_800D8120
/* 800D80F4 000A16B4  80 1E 15 30 */	lwz r0, 0x1530(r30)
/* 800D80F8 000A16B8  2C 00 00 00 */	cmpwi r0, 0
/* 800D80FC 000A16BC  41 82 00 24 */	beq .L_800D8120
/* 800D8100 000A16C0  80 01 00 08 */	lwz r0, 8(r1)
/* 800D8104 000A16C4  C8 42 93 28 */	lfd f2, double_806696A8@sda21(r2)
/* 800D8108 000A16C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D810C 000A16CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D8110 000A16D0  C0 02 93 20 */	lfs f0, float_806696A0@sda21(r2)
/* 800D8114 000A16D4  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800D8118 000A16D8  EC 21 10 28 */	fsubs f1, f1, f2
/* 800D811C 000A16DC  EF E0 F8 7C */	fnmsubs f31, f0, f1, f31
.L_800D8120:
/* 800D8120 000A16E0  81 9E 00 00 */	lwz r12, 0(r30)
/* 800D8124 000A16E4  7F C3 F3 78 */	mr r3, r30
/* 800D8128 000A16E8  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 800D812C 000A16EC  7D 89 03 A6 */	mtctr r12
/* 800D8130 000A16F0  4E 80 04 21 */	bctrl 
/* 800D8134 000A16F4  38 A1 00 08 */	addi r5, r1, 8
/* 800D8138 000A16F8  38 80 00 70 */	li r4, 0x70
/* 800D813C 000A16FC  48 18 81 29 */	bl func_80260264
/* 800D8140 000A1700  2C 03 00 00 */	cmpwi r3, 0
/* 800D8144 000A1704  41 82 00 30 */	beq .L_800D8174
/* 800D8148 000A1708  80 1E 33 74 */	lwz r0, 0x3374(r30)
/* 800D814C 000A170C  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 800D8150 000A1710  41 82 00 24 */	beq .L_800D8174
/* 800D8154 000A1714  80 01 00 08 */	lwz r0, 8(r1)
/* 800D8158 000A1718  C8 42 93 28 */	lfd f2, double_806696A8@sda21(r2)
/* 800D815C 000A171C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D8160 000A1720  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800D8164 000A1724  C0 02 93 20 */	lfs f0, float_806696A0@sda21(r2)
/* 800D8168 000A1728  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 800D816C 000A172C  EC 21 10 28 */	fsubs f1, f1, f2
/* 800D8170 000A1730  EF E0 F8 7A */	fmadds f31, f0, f1, f31
.L_800D8174:
/* 800D8174 000A1734  C0 02 93 24 */	lfs f0, float_806696A4@sda21(r2)
/* 800D8178 000A1738  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800D817C 000A173C  40 80 00 08 */	bge .L_800D8184
/* 800D8180 000A1740  FF E0 00 90 */	fmr f31, f0
.L_800D8184:
/* 800D8184 000A1744  FC 20 F8 90 */	fmr f1, f31
.L_800D8188:
/* 800D8188 000A1748  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800D818C 000A174C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 800D8190 000A1750  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800D8194 000A1754  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800D8198 000A1758  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800D819C 000A175C  7C 08 03 A6 */	mtlr r0
/* 800D81A0 000A1760  38 21 00 40 */	addi r1, r1, 0x40
/* 800D81A4 000A1764  4E 80 00 20 */	blr 

.global func_800D81A8
func_800D81A8:
/* 800D81A8 000A1768  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800D81AC 000A176C  7C 08 02 A6 */	mflr r0
/* 800D81B0 000A1770  2C 05 00 00 */	cmpwi r5, 0
/* 800D81B4 000A1774  90 01 00 44 */	stw r0, 0x44(r1)
/* 800D81B8 000A1778  3C 00 43 30 */	lis r0, 0x4330
/* 800D81BC 000A177C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800D81C0 000A1780  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 800D81C4 000A1784  C3 E2 93 1C */	lfs f31, float_8066969C@sda21(r2)
/* 800D81C8 000A1788  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800D81CC 000A178C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800D81D0 000A1790  7C 9E 23 78 */	mr r30, r4
/* 800D81D4 000A1794  93 A1 00 24 */	stw r29, 0x24(r1)
/* 800D81D8 000A1798  7C 7D 1B 78 */	mr r29, r3
/* 800D81DC 000A179C  90 01 00 10 */	stw r0, 0x10(r1)
/* 800D81E0 000A17A0  90 01 00 18 */	stw r0, 0x18(r1)
/* 800D81E4 000A17A4  41 82 00 0C */	beq .L_800D81F0
/* 800D81E8 000A17A8  83 E5 00 50 */	lwz r31, 0x50(r5)
/* 800D81EC 000A17AC  48 00 00 08 */	b .L_800D81F4
.L_800D81F0:
/* 800D81F0 000A17B0  3B E0 00 00 */	li r31, 0
.L_800D81F4:
/* 800D81F4 000A17B4  2C 04 00 00 */	cmpwi r4, 0
/* 800D81F8 000A17B8  41 82 01 0C */	beq .L_800D8304
/* 800D81FC 000A17BC  38 64 00 08 */	addi r3, r4, 8
/* 800D8200 000A17C0  38 80 00 8F */	li r4, 0x8f
/* 800D8204 000A17C4  48 07 05 75 */	bl func_80148778
/* 800D8208 000A17C8  2C 03 00 00 */	cmpwi r3, 0
/* 800D820C 000A17CC  41 82 00 34 */	beq .L_800D8240
/* 800D8210 000A17D0  38 7E 00 08 */	addi r3, r30, 8
/* 800D8214 000A17D4  38 80 00 8F */	li r4, 0x8f
/* 800D8218 000A17D8  48 07 0F 3D */	bl func_80149154
/* 800D821C 000A17DC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800D8220 000A17E0  C8 42 93 28 */	lfd f2, double_806696A8@sda21(r2)
/* 800D8224 000A17E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D8228 000A17E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D822C 000A17EC  C0 02 93 20 */	lfs f0, float_806696A0@sda21(r2)
/* 800D8230 000A17F0  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800D8234 000A17F4  EC 21 10 28 */	fsubs f1, f1, f2
/* 800D8238 000A17F8  EF E0 F8 7A */	fmadds f31, f0, f1, f31
/* 800D823C 000A17FC  48 00 00 44 */	b .L_800D8280
.L_800D8240:
/* 800D8240 000A1800  38 7E 00 08 */	addi r3, r30, 8
/* 800D8244 000A1804  38 80 00 8E */	li r4, 0x8e
/* 800D8248 000A1808  48 07 05 31 */	bl func_80148778
/* 800D824C 000A180C  2C 03 00 00 */	cmpwi r3, 0
/* 800D8250 000A1810  41 82 00 30 */	beq .L_800D8280
/* 800D8254 000A1814  38 7E 00 08 */	addi r3, r30, 8
/* 800D8258 000A1818  38 80 00 8E */	li r4, 0x8e
/* 800D825C 000A181C  48 07 0E F9 */	bl func_80149154
/* 800D8260 000A1820  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800D8264 000A1824  C8 42 93 28 */	lfd f2, double_806696A8@sda21(r2)
/* 800D8268 000A1828  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D826C 000A182C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800D8270 000A1830  C0 02 93 20 */	lfs f0, float_806696A0@sda21(r2)
/* 800D8274 000A1834  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 800D8278 000A1838  EC 21 10 28 */	fsubs f1, f1, f2
/* 800D827C 000A183C  EF E0 F8 7A */	fmadds f31, f0, f1, f31
.L_800D8280:
/* 800D8280 000A1840  81 9E 00 00 */	lwz r12, 0(r30)
/* 800D8284 000A1844  7F C3 F3 78 */	mr r3, r30
/* 800D8288 000A1848  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 800D828C 000A184C  7D 89 03 A6 */	mtctr r12
/* 800D8290 000A1850  4E 80 04 21 */	bctrl 
/* 800D8294 000A1854  2C 03 00 00 */	cmpwi r3, 0
/* 800D8298 000A1858  41 82 00 6C */	beq .L_800D8304
/* 800D829C 000A185C  2C 1F 00 00 */	cmpwi r31, 0
/* 800D82A0 000A1860  41 82 00 64 */	beq .L_800D8304
/* 800D82A4 000A1864  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 800D82A8 000A1868  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 800D82AC 000A186C  41 82 00 58 */	beq .L_800D8304
/* 800D82B0 000A1870  A0 1F 00 3C */	lhz r0, 0x3c(r31)
/* 800D82B4 000A1874  2C 00 00 03 */	cmpwi r0, 3
/* 800D82B8 000A1878  40 82 00 4C */	bne .L_800D8304
/* 800D82BC 000A187C  81 9E 00 00 */	lwz r12, 0(r30)
/* 800D82C0 000A1880  7F C3 F3 78 */	mr r3, r30
/* 800D82C4 000A1884  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 800D82C8 000A1888  7D 89 03 A6 */	mtctr r12
/* 800D82CC 000A188C  4E 80 04 21 */	bctrl 
/* 800D82D0 000A1890  38 A1 00 08 */	addi r5, r1, 8
/* 800D82D4 000A1894  38 80 00 3E */	li r4, 0x3e
/* 800D82D8 000A1898  48 18 7F 8D */	bl func_80260264
/* 800D82DC 000A189C  2C 03 00 00 */	cmpwi r3, 0
/* 800D82E0 000A18A0  41 82 00 24 */	beq .L_800D8304
/* 800D82E4 000A18A4  80 01 00 08 */	lwz r0, 8(r1)
/* 800D82E8 000A18A8  C8 42 93 28 */	lfd f2, double_806696A8@sda21(r2)
/* 800D82EC 000A18AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D82F0 000A18B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D82F4 000A18B4  C0 02 93 20 */	lfs f0, float_806696A0@sda21(r2)
/* 800D82F8 000A18B8  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800D82FC 000A18BC  EC 21 10 28 */	fsubs f1, f1, f2
/* 800D8300 000A18C0  EF E0 F8 7A */	fmadds f31, f0, f1, f31
.L_800D8304:
/* 800D8304 000A18C4  2C 1D 00 00 */	cmpwi r29, 0
/* 800D8308 000A18C8  41 82 01 CC */	beq .L_800D84D4
/* 800D830C 000A18CC  2C 1F 00 00 */	cmpwi r31, 0
/* 800D8310 000A18D0  41 82 00 10 */	beq .L_800D8320
/* 800D8314 000A18D4  A0 1F 00 3C */	lhz r0, 0x3c(r31)
/* 800D8318 000A18D8  2C 00 00 03 */	cmpwi r0, 3
/* 800D831C 000A18DC  40 82 00 28 */	bne .L_800D8344
.L_800D8320:
/* 800D8320 000A18E0  80 6D A6 78 */	lwz r3, lbl_806667F8@sda21(r13)
/* 800D8324 000A18E4  7F A4 EB 78 */	mr r4, r29
/* 800D8328 000A18E8  38 63 01 A8 */	addi r3, r3, 0x1a8
/* 800D832C 000A18EC  48 1A 16 C5 */	bl func_802799F0
/* 800D8330 000A18F0  2C 03 00 00 */	cmpwi r3, 0
/* 800D8334 000A18F4  41 82 00 10 */	beq .L_800D8344
/* 800D8338 000A18F8  80 6D A6 78 */	lwz r3, lbl_806667F8@sda21(r13)
/* 800D833C 000A18FC  C0 03 20 AC */	lfs f0, 0x20ac(r3)
/* 800D8340 000A1900  EF FF 00 2A */	fadds f31, f31, f0
.L_800D8344:
/* 800D8344 000A1904  81 9D 00 00 */	lwz r12, 0(r29)
/* 800D8348 000A1908  7F A3 EB 78 */	mr r3, r29
/* 800D834C 000A190C  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 800D8350 000A1910  7D 89 03 A6 */	mtctr r12
/* 800D8354 000A1914  4E 80 04 21 */	bctrl 
/* 800D8358 000A1918  2C 03 00 00 */	cmpwi r3, 0
/* 800D835C 000A191C  41 82 01 78 */	beq .L_800D84D4
/* 800D8360 000A1920  2C 1F 00 00 */	cmpwi r31, 0
/* 800D8364 000A1924  41 82 00 64 */	beq .L_800D83C8
/* 800D8368 000A1928  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 800D836C 000A192C  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 800D8370 000A1930  41 82 00 58 */	beq .L_800D83C8
/* 800D8374 000A1934  A0 1F 00 3C */	lhz r0, 0x3c(r31)
/* 800D8378 000A1938  2C 00 00 03 */	cmpwi r0, 3
/* 800D837C 000A193C  40 82 00 4C */	bne .L_800D83C8
/* 800D8380 000A1940  81 9D 00 00 */	lwz r12, 0(r29)
/* 800D8384 000A1944  7F A3 EB 78 */	mr r3, r29
/* 800D8388 000A1948  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 800D838C 000A194C  7D 89 03 A6 */	mtctr r12
/* 800D8390 000A1950  4E 80 04 21 */	bctrl 
/* 800D8394 000A1954  38 A1 00 08 */	addi r5, r1, 8
/* 800D8398 000A1958  38 80 00 3D */	li r4, 0x3d
/* 800D839C 000A195C  48 18 7E C9 */	bl func_80260264
/* 800D83A0 000A1960  2C 03 00 00 */	cmpwi r3, 0
/* 800D83A4 000A1964  41 82 00 24 */	beq .L_800D83C8
/* 800D83A8 000A1968  80 01 00 08 */	lwz r0, 8(r1)
/* 800D83AC 000A196C  C8 42 93 28 */	lfd f2, double_806696A8@sda21(r2)
/* 800D83B0 000A1970  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D83B4 000A1974  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800D83B8 000A1978  C0 02 93 20 */	lfs f0, float_806696A0@sda21(r2)
/* 800D83BC 000A197C  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 800D83C0 000A1980  EC 21 10 28 */	fsubs f1, f1, f2
/* 800D83C4 000A1984  EF E0 F8 7A */	fmadds f31, f0, f1, f31
.L_800D83C8:
/* 800D83C8 000A1988  2C 1F 00 00 */	cmpwi r31, 0
/* 800D83CC 000A198C  41 82 00 64 */	beq .L_800D8430
/* 800D83D0 000A1990  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 800D83D4 000A1994  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 800D83D8 000A1998  41 82 00 58 */	beq .L_800D8430
/* 800D83DC 000A199C  A0 1F 00 40 */	lhz r0, 0x40(r31)
/* 800D83E0 000A19A0  2C 00 00 05 */	cmpwi r0, 5
/* 800D83E4 000A19A4  40 82 00 4C */	bne .L_800D8430
/* 800D83E8 000A19A8  81 9D 00 00 */	lwz r12, 0(r29)
/* 800D83EC 000A19AC  7F A3 EB 78 */	mr r3, r29
/* 800D83F0 000A19B0  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 800D83F4 000A19B4  7D 89 03 A6 */	mtctr r12
/* 800D83F8 000A19B8  4E 80 04 21 */	bctrl 
/* 800D83FC 000A19BC  38 A1 00 08 */	addi r5, r1, 8
/* 800D8400 000A19C0  38 80 00 42 */	li r4, 0x42
/* 800D8404 000A19C4  48 18 7E 61 */	bl func_80260264
/* 800D8408 000A19C8  2C 03 00 00 */	cmpwi r3, 0
/* 800D840C 000A19CC  41 82 00 24 */	beq .L_800D8430
/* 800D8410 000A19D0  80 01 00 08 */	lwz r0, 8(r1)
/* 800D8414 000A19D4  C8 42 93 28 */	lfd f2, double_806696A8@sda21(r2)
/* 800D8418 000A19D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D841C 000A19DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D8420 000A19E0  C0 02 93 20 */	lfs f0, float_806696A0@sda21(r2)
/* 800D8424 000A19E4  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800D8428 000A19E8  EC 21 10 28 */	fsubs f1, f1, f2
/* 800D842C 000A19EC  EF E0 F8 7A */	fmadds f31, f0, f1, f31
.L_800D8430:
/* 800D8430 000A19F0  2C 1F 00 00 */	cmpwi r31, 0
/* 800D8434 000A19F4  41 82 00 A0 */	beq .L_800D84D4
/* 800D8438 000A19F8  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 800D843C 000A19FC  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 800D8440 000A1A00  41 82 00 94 */	beq .L_800D84D4
/* 800D8444 000A1A04  81 9D 00 00 */	lwz r12, 0(r29)
/* 800D8448 000A1A08  7F A3 EB 78 */	mr r3, r29
/* 800D844C 000A1A0C  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 800D8450 000A1A10  7D 89 03 A6 */	mtctr r12
/* 800D8454 000A1A14  4E 80 04 21 */	bctrl 
/* 800D8458 000A1A18  38 A1 00 08 */	addi r5, r1, 8
/* 800D845C 000A1A1C  38 80 00 3F */	li r4, 0x3f
/* 800D8460 000A1A20  48 18 7E 05 */	bl func_80260264
/* 800D8464 000A1A24  2C 03 00 00 */	cmpwi r3, 0
/* 800D8468 000A1A28  41 82 00 6C */	beq .L_800D84D4
/* 800D846C 000A1A2C  2C 1E 00 00 */	cmpwi r30, 0
/* 800D8470 000A1A30  41 82 00 64 */	beq .L_800D84D4
/* 800D8474 000A1A34  81 9D 00 00 */	lwz r12, 0(r29)
/* 800D8478 000A1A38  7F A3 EB 78 */	mr r3, r29
/* 800D847C 000A1A3C  7F C4 F3 78 */	mr r4, r30
/* 800D8480 000A1A40  81 8C 05 C0 */	lwz r12, 0x5c0(r12)
/* 800D8484 000A1A44  7D 89 03 A6 */	mtctr r12
/* 800D8488 000A1A48  4E 80 04 21 */	bctrl 
/* 800D848C 000A1A4C  2C 03 00 00 */	cmpwi r3, 0
/* 800D8490 000A1A50  41 82 00 44 */	beq .L_800D84D4
/* 800D8494 000A1A54  81 9E 00 00 */	lwz r12, 0(r30)
/* 800D8498 000A1A58  7F C3 F3 78 */	mr r3, r30
/* 800D849C 000A1A5C  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 800D84A0 000A1A60  7D 89 03 A6 */	mtctr r12
/* 800D84A4 000A1A64  4E 80 04 21 */	bctrl 
/* 800D84A8 000A1A68  C0 02 93 30 */	lfs f0, float_806696B0@sda21(r2)
/* 800D84AC 000A1A6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D84B0 000A1A70  40 80 00 24 */	bge .L_800D84D4
/* 800D84B4 000A1A74  80 01 00 08 */	lwz r0, 8(r1)
/* 800D84B8 000A1A78  C8 42 93 28 */	lfd f2, double_806696A8@sda21(r2)
/* 800D84BC 000A1A7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D84C0 000A1A80  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800D84C4 000A1A84  C0 02 93 20 */	lfs f0, float_806696A0@sda21(r2)
/* 800D84C8 000A1A88  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 800D84CC 000A1A8C  EC 21 10 28 */	fsubs f1, f1, f2
/* 800D84D0 000A1A90  EF E0 F8 7A */	fmadds f31, f0, f1, f31
.L_800D84D4:
/* 800D84D4 000A1A94  FC 20 F8 90 */	fmr f1, f31
/* 800D84D8 000A1A98  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 800D84DC 000A1A9C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800D84E0 000A1AA0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800D84E4 000A1AA4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800D84E8 000A1AA8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800D84EC 000A1AAC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800D84F0 000A1AB0  7C 08 03 A6 */	mtlr r0
/* 800D84F4 000A1AB4  38 21 00 40 */	addi r1, r1, 0x40
/* 800D84F8 000A1AB8  4E 80 00 20 */	blr 


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global float_80669698
float_80669698:
	.float 0.6 #0x3F19999A


.global float_8066969C
float_8066969C:
	.float 1.0


.global float_806696A0
float_806696A0:
	.float 0.01 #0x3C23D70A


.global float_806696A4
float_806696A4:
	.float 0


.global double_806696A8
double_806696A8:
	.4byte 0x43300000
	.4byte 0x80000000


.global float_806696B0
float_806696B0:
	.float 0.5

.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_8000A5FC
lbl_8000A5FC:
	.4byte 0x100A0000
	.4byte 0

.global lbl_8000A604
lbl_8000A604:
	.4byte 0x10080000
	.4byte 0

.global lbl_8000A60C
lbl_8000A60C:
	.4byte 0x104A0000
	.4byte 0

.global lbl_8000A614
lbl_8000A614:
	.4byte 0x184A0000
	.4byte 0

.section extabindex, "a"  # 0x80021020 - 0x80039220

.4byte func_800D7A04
	.4byte 0x00000320
	.4byte lbl_8000A5FC
	.4byte func_800D7D24
	.4byte 0x0000017C
	.4byte lbl_8000A604
	.4byte func_800D7EA0
	.4byte 0x00000308
	.4byte lbl_8000A60C
	.4byte func_800D81A8
	.4byte 0x00000354
	.4byte lbl_8000A614