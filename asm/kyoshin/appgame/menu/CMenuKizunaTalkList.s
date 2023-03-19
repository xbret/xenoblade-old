.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CMenuKizunaTalkList, global
/* 80271DD4 0023B394  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80271DD8 0023B398  7C 08 02 A6 */	mflr r0
/* 80271DDC 0023B39C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80271DE0 0023B3A0  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 80271DE4 0023B3A4  7C 7D 1B 78 */	mr r29, r3
/* 80271DE8 0023B3A8  7C 9E 23 78 */	mr r30, r4
/* 80271DEC 0023B3AC  48 1D 2C 2D */	bl __ct__8CProcessFv
/* 80271DF0 0023B3B0  3C 60 80 53 */	lis r3, __vt__CTTask_IUICf@ha
/* 80271DF4 0023B3B4  3C A0 80 54 */	lis r5, __vt__CMenuKizunaTalkList@ha
/* 80271DF8 0023B3B8  38 63 F7 40 */	addi r3, r3, __vt__CTTask_IUICf@l
/* 80271DFC 0023B3BC  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80271E00 0023B3C0  3D 00 80 51 */	lis r8, lbl_8050CE10@ha
/* 80271E04 0023B3C4  38 A5 B4 70 */	addi r5, r5, __vt__CMenuKizunaTalkList@l
/* 80271E08 0023B3C8  84 C8 CE 10 */	lwzu r6, lbl_8050CE10@l(r8)
/* 80271E0C 0023B3CC  38 05 00 24 */	addi r0, r5, 0x24
/* 80271E10 0023B3D0  3B E0 00 00 */	li r31, 0
/* 80271E14 0023B3D4  38 80 00 00 */	li r4, 0
/* 80271E18 0023B3D8  80 68 00 04 */	lwz r3, 4(r8)
/* 80271E1C 0023B3DC  90 7D 00 40 */	stw r3, 0x40(r29)
/* 80271E20 0023B3E0  38 7D 00 60 */	addi r3, r29, 0x60
/* 80271E24 0023B3E4  90 DD 00 3C */	stw r6, 0x3c(r29)
/* 80271E28 0023B3E8  80 C8 00 08 */	lwz r6, 8(r8)
/* 80271E2C 0023B3EC  90 DD 00 44 */	stw r6, 0x44(r29)
/* 80271E30 0023B3F0  80 E8 00 00 */	lwz r7, 0(r8)
/* 80271E34 0023B3F4  80 C8 00 04 */	lwz r6, 4(r8)
/* 80271E38 0023B3F8  90 DD 00 4C */	stw r6, 0x4c(r29)
/* 80271E3C 0023B3FC  90 FD 00 48 */	stw r7, 0x48(r29)
/* 80271E40 0023B400  80 C8 00 08 */	lwz r6, 8(r8)
/* 80271E44 0023B404  90 DD 00 50 */	stw r6, 0x50(r29)
/* 80271E48 0023B408  9B FD 00 54 */	stb r31, 0x54(r29)
/* 80271E4C 0023B40C  9B FD 00 55 */	stb r31, 0x55(r29)
/* 80271E50 0023B410  90 BD 00 10 */	stw r5, 0x10(r29)
/* 80271E54 0023B414  90 1D 00 58 */	stw r0, 0x58(r29)
/* 80271E58 0023B418  93 DD 00 5C */	stw r30, 0x5c(r29)
/* 80271E5C 0023B41C  4B F5 1B 19 */	bl __ct__CBgTex
/* 80271E60 0023B420  38 7D 00 80 */	addi r3, r29, 0x80
/* 80271E64 0023B424  38 80 00 00 */	li r4, 0
/* 80271E68 0023B428  38 A0 00 00 */	li r5, 0
/* 80271E6C 0023B42C  4B F5 20 65 */	bl __ct__CTitleAHelp
/* 80271E70 0023B430  38 7D 00 B8 */	addi r3, r29, 0xb8
/* 80271E74 0023B434  38 80 00 00 */	li r4, 0
/* 80271E78 0023B438  48 00 12 A9 */	bl func_80273120
/* 80271E7C 0023B43C  9B FD 15 4C */	stb r31, 0x154c(r29)
/* 80271E80 0023B440  7F A3 EB 78 */	mr r3, r29
/* 80271E84 0023B444  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 80271E88 0023B448  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80271E8C 0023B44C  7C 08 03 A6 */	mtlr r0
/* 80271E90 0023B450  38 21 00 20 */	addi r1, r1, 0x20
/* 80271E94 0023B454  4E 80 00 20 */	blr
.endfn __ct__CMenuKizunaTalkList

.fn __dt__CMenuKizunaTalkList, global
/* 80271E98 0023B458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80271E9C 0023B45C  7C 08 02 A6 */	mflr r0
/* 80271EA0 0023B460  2C 03 00 00 */	cmpwi r3, 0
/* 80271EA4 0023B464  90 01 00 14 */	stw r0, 0x14(r1)
/* 80271EA8 0023B468  BF C1 00 08 */	stmw r30, 8(r1)
/* 80271EAC 0023B46C  7C 7E 1B 78 */	mr r30, r3
/* 80271EB0 0023B470  7C 9F 23 78 */	mr r31, r4
/* 80271EB4 0023B474  41 82 00 44 */	beq .L_80271EF8
/* 80271EB8 0023B478  38 80 FF FF */	li r4, -1
/* 80271EBC 0023B47C  38 63 00 B8 */	addi r3, r3, 0xb8
/* 80271EC0 0023B480  48 00 13 AD */	bl __dt__CKizunaTalkList
/* 80271EC4 0023B484  38 7E 00 80 */	addi r3, r30, 0x80
/* 80271EC8 0023B488  38 80 FF FF */	li r4, -1
/* 80271ECC 0023B48C  4B F5 20 85 */	bl __dt__CTitleAHelp
/* 80271ED0 0023B490  38 7E 00 60 */	addi r3, r30, 0x60
/* 80271ED4 0023B494  38 80 FF FF */	li r4, -1
/* 80271ED8 0023B498  4B F5 1A F9 */	bl __dt__CBgTex
/* 80271EDC 0023B49C  7F C3 F3 78 */	mr r3, r30
/* 80271EE0 0023B4A0  38 80 00 00 */	li r4, 0
/* 80271EE4 0023B4A4  4B E8 CE 29 */	bl __dt__800FED0C
/* 80271EE8 0023B4A8  2C 1F 00 00 */	cmpwi r31, 0
/* 80271EEC 0023B4AC  40 81 00 0C */	ble .L_80271EF8
/* 80271EF0 0023B4B0  7F C3 F3 78 */	mr r3, r30
/* 80271EF4 0023B4B4  48 1C 2D 39 */	bl __dl__FPv
.L_80271EF8:
/* 80271EF8 0023B4B8  7F C3 F3 78 */	mr r3, r30
/* 80271EFC 0023B4BC  BB C1 00 08 */	lmw r30, 8(r1)
/* 80271F00 0023B4C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80271F04 0023B4C4  7C 08 03 A6 */	mtlr r0
/* 80271F08 0023B4C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80271F0C 0023B4CC  4E 80 00 20 */	blr 
.endfn __dt__CMenuKizunaTalkList

.fn func_80271F10, global
/* 80271F10 0023B4D0  94 21 EB 00 */	stwu r1, -0x1500(r1)
/* 80271F14 0023B4D4  7C 08 02 A6 */	mflr r0
/* 80271F18 0023B4D8  90 01 15 04 */	stw r0, 0x1504(r1)
/* 80271F1C 0023B4DC  93 E1 14 FC */	stw r31, 0x14fc(r1)
/* 80271F20 0023B4E0  7C 7F 1B 78 */	mr r31, r3
/* 80271F24 0023B4E4  38 60 00 01 */	li r3, 1
/* 80271F28 0023B4E8  4B E1 0A 25 */	bl func_8008294C
/* 80271F2C 0023B4EC  38 61 00 08 */	addi r3, r1, 8
/* 80271F30 0023B4F0  38 80 00 00 */	li r4, 0
/* 80271F34 0023B4F4  4B F5 1A 41 */	bl __ct__CBgTex
/* 80271F38 0023B4F8  38 7F 00 64 */	addi r3, r31, 0x64
/* 80271F3C 0023B4FC  38 81 00 0C */	addi r4, r1, 0xc
/* 80271F40 0023B500  4B EA AA 35 */	bl __ct__8011C974
/* 80271F44 0023B504  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80271F48 0023B508  38 61 00 08 */	addi r3, r1, 8
/* 80271F4C 0023B50C  90 1F 00 74 */	stw r0, 0x74(r31)
/* 80271F50 0023B510  38 80 FF FF */	li r4, -1
/* 80271F54 0023B514  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80271F58 0023B518  90 1F 00 78 */	stw r0, 0x78(r31)
/* 80271F5C 0023B51C  88 01 00 24 */	lbz r0, 0x24(r1)
/* 80271F60 0023B520  98 1F 00 7C */	stb r0, 0x7c(r31)
/* 80271F64 0023B524  88 01 00 25 */	lbz r0, 0x25(r1)
/* 80271F68 0023B528  98 1F 00 7D */	stb r0, 0x7d(r31)
/* 80271F6C 0023B52C  88 01 00 26 */	lbz r0, 0x26(r1)
/* 80271F70 0023B530  98 1F 00 7E */	stb r0, 0x7e(r31)
/* 80271F74 0023B534  4B F5 1A 5D */	bl __dt__CBgTex
/* 80271F78 0023B538  38 7F 00 60 */	addi r3, r31, 0x60
/* 80271F7C 0023B53C  4B F5 1C 99 */	bl func_801C3C14
/* 80271F80 0023B540  3C 60 80 51 */	lis r3, lbl_80509FF8@ha
/* 80271F84 0023B544  38 A0 00 11 */	li r5, 0x11
/* 80271F88 0023B548  38 63 9F F8 */	addi r3, r3, lbl_80509FF8@l
/* 80271F8C 0023B54C  38 83 00 0B */	addi r4, r3, 0xb
/* 80271F90 0023B550  4B EC 42 01 */	bl func_80136190
/* 80271F94 0023B554  7C 64 1B 78 */	mr r4, r3
/* 80271F98 0023B558  38 61 00 28 */	addi r3, r1, 0x28
/* 80271F9C 0023B55C  38 A0 00 00 */	li r5, 0
/* 80271FA0 0023B560  4B F5 1F 31 */	bl __ct__CTitleAHelp
/* 80271FA4 0023B564  38 7F 00 84 */	addi r3, r31, 0x84
/* 80271FA8 0023B568  38 81 00 2C */	addi r4, r1, 0x2c
/* 80271FAC 0023B56C  4B EA A9 C9 */	bl __ct__8011C974
/* 80271FB0 0023B570  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80271FB4 0023B574  38 61 00 28 */	addi r3, r1, 0x28
/* 80271FB8 0023B578  90 1F 00 94 */	stw r0, 0x94(r31)
/* 80271FBC 0023B57C  38 80 FF FF */	li r4, -1
/* 80271FC0 0023B580  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80271FC4 0023B584  90 1F 00 98 */	stw r0, 0x98(r31)
/* 80271FC8 0023B588  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80271FCC 0023B58C  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 80271FD0 0023B590  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80271FD4 0023B594  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 80271FD8 0023B598  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80271FDC 0023B59C  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 80271FE0 0023B5A0  88 01 00 50 */	lbz r0, 0x50(r1)
/* 80271FE4 0023B5A4  98 1F 00 A8 */	stb r0, 0xa8(r31)
/* 80271FE8 0023B5A8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80271FEC 0023B5AC  90 1F 00 AC */	stw r0, 0xac(r31)
/* 80271FF0 0023B5B0  80 01 00 58 */	lwz r0, 0x58(r1)
/* 80271FF4 0023B5B4  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 80271FF8 0023B5B8  88 01 00 5C */	lbz r0, 0x5c(r1)
/* 80271FFC 0023B5BC  98 1F 00 B4 */	stb r0, 0xb4(r31)
/* 80272000 0023B5C0  88 01 00 5D */	lbz r0, 0x5d(r1)
/* 80272004 0023B5C4  98 1F 00 B5 */	stb r0, 0xb5(r31)
/* 80272008 0023B5C8  88 01 00 5E */	lbz r0, 0x5e(r1)
/* 8027200C 0023B5CC  98 1F 00 B6 */	stb r0, 0xb6(r31)
/* 80272010 0023B5D0  88 01 00 5F */	lbz r0, 0x5f(r1)
/* 80272014 0023B5D4  98 1F 00 B7 */	stb r0, 0xb7(r31)
/* 80272018 0023B5D8  4B F5 1F 39 */	bl __dt__CTitleAHelp
/* 8027201C 0023B5DC  38 7F 00 80 */	addi r3, r31, 0x80
/* 80272020 0023B5E0  4B F5 1F 85 */	bl CTitleAHelp_load
/* 80272024 0023B5E4  38 61 00 60 */	addi r3, r1, 0x60
/* 80272028 0023B5E8  38 80 00 00 */	li r4, 0
/* 8027202C 0023B5EC  48 00 10 F5 */	bl func_80273120
/* 80272030 0023B5F0  38 7F 00 BC */	addi r3, r31, 0xbc
/* 80272034 0023B5F4  38 81 00 64 */	addi r4, r1, 0x64
/* 80272038 0023B5F8  4B EA A9 3D */	bl __ct__8011C974
/* 8027203C 0023B5FC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80272040 0023B600  38 7F 01 00 */	addi r3, r31, 0x100
/* 80272044 0023B604  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 80272048 0023B608  38 81 00 A8 */	addi r4, r1, 0xa8
/* 8027204C 0023B60C  80 01 00 78 */	lwz r0, 0x78(r1)
/* 80272050 0023B610  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 80272054 0023B614  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80272058 0023B618  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 8027205C 0023B61C  80 01 00 80 */	lwz r0, 0x80(r1)
/* 80272060 0023B620  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 80272064 0023B624  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80272068 0023B628  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 8027206C 0023B62C  80 01 00 88 */	lwz r0, 0x88(r1)
/* 80272070 0023B630  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 80272074 0023B634  80 01 00 90 */	lwz r0, 0x90(r1)
/* 80272078 0023B638  90 1F 00 E8 */	stw r0, 0xe8(r31)
/* 8027207C 0023B63C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80272080 0023B640  90 1F 00 EC */	stw r0, 0xec(r31)
/* 80272084 0023B644  80 01 00 98 */	lwz r0, 0x98(r1)
/* 80272088 0023B648  90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 8027208C 0023B64C  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 80272090 0023B650  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 80272094 0023B654  88 01 00 A0 */	lbz r0, 0xa0(r1)
/* 80272098 0023B658  98 1F 00 F8 */	stb r0, 0xf8(r31)
/* 8027209C 0023B65C  88 01 00 A1 */	lbz r0, 0xa1(r1)
/* 802720A0 0023B660  98 1F 00 F9 */	stb r0, 0xf9(r31)
/* 802720A4 0023B664  4B EA A8 D1 */	bl __ct__8011C974
/* 802720A8 0023B668  80 01 00 B8 */	lwz r0, 0xb8(r1)
/* 802720AC 0023B66C  38 9F 01 44 */	addi r4, r31, 0x144
/* 802720B0 0023B670  90 1F 01 10 */	stw r0, 0x110(r31)
/* 802720B4 0023B674  38 A1 00 EC */	addi r5, r1, 0xec
/* 802720B8 0023B678  38 1F 15 44 */	addi r0, r31, 0x1544
/* 802720BC 0023B67C  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 802720C0 0023B680  90 7F 01 14 */	stw r3, 0x114(r31)
/* 802720C4 0023B684  80 61 00 C0 */	lwz r3, 0xc0(r1)
/* 802720C8 0023B688  90 7F 01 18 */	stw r3, 0x118(r31)
/* 802720CC 0023B68C  80 61 00 C4 */	lwz r3, 0xc4(r1)
/* 802720D0 0023B690  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 802720D4 0023B694  88 61 00 C8 */	lbz r3, 0xc8(r1)
/* 802720D8 0023B698  98 7F 01 20 */	stb r3, 0x120(r31)
/* 802720DC 0023B69C  88 61 00 C9 */	lbz r3, 0xc9(r1)
/* 802720E0 0023B6A0  98 7F 01 21 */	stb r3, 0x121(r31)
/* 802720E4 0023B6A4  88 61 00 CA */	lbz r3, 0xca(r1)
/* 802720E8 0023B6A8  98 7F 01 22 */	stb r3, 0x122(r31)
/* 802720EC 0023B6AC  88 61 00 CB */	lbz r3, 0xcb(r1)
/* 802720F0 0023B6B0  98 7F 01 23 */	stb r3, 0x123(r31)
/* 802720F4 0023B6B4  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 802720F8 0023B6B8  D0 1F 01 24 */	stfs f0, 0x124(r31)
/* 802720FC 0023B6BC  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80272100 0023B6C0  D0 1F 01 28 */	stfs f0, 0x128(r31)
/* 80272104 0023B6C4  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80272108 0023B6C8  D0 1F 01 2C */	stfs f0, 0x12c(r31)
/* 8027210C 0023B6CC  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80272110 0023B6D0  D0 1F 01 30 */	stfs f0, 0x130(r31)
/* 80272114 0023B6D4  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80272118 0023B6D8  D0 1F 01 34 */	stfs f0, 0x134(r31)
/* 8027211C 0023B6DC  88 61 00 E0 */	lbz r3, 0xe0(r1)
/* 80272120 0023B6E0  98 7F 01 38 */	stb r3, 0x138(r31)
/* 80272124 0023B6E4  88 61 00 E4 */	lbz r3, 0xe4(r1)
/* 80272128 0023B6E8  98 7F 01 3C */	stb r3, 0x13c(r31)
/* 8027212C 0023B6EC  88 61 00 E5 */	lbz r3, 0xe5(r1)
/* 80272130 0023B6F0  98 7F 01 3D */	stb r3, 0x13d(r31)
/* 80272134 0023B6F4  88 61 00 E6 */	lbz r3, 0xe6(r1)
/* 80272138 0023B6F8  98 7F 01 3E */	stb r3, 0x13e(r31)
/* 8027213C 0023B6FC  88 61 00 E7 */	lbz r3, 0xe7(r1)
/* 80272140 0023B700  98 7F 01 3F */	stb r3, 0x13f(r31)
/* 80272144 0023B704  88 61 00 E8 */	lbz r3, 0xe8(r1)
/* 80272148 0023B708  98 7F 01 40 */	stb r3, 0x140(r31)
/* 8027214C 0023B70C  A8 61 00 EA */	lha r3, 0xea(r1)
/* 80272150 0023B710  B0 7F 01 42 */	sth r3, 0x142(r31)
.L_80272154:
/* 80272154 0023B714  80 65 00 00 */	lwz r3, 0(r5)
/* 80272158 0023B718  90 64 00 00 */	stw r3, 0(r4)
/* 8027215C 0023B71C  80 65 00 04 */	lwz r3, 4(r5)
/* 80272160 0023B720  90 64 00 04 */	stw r3, 4(r4)
/* 80272164 0023B724  80 65 00 08 */	lwz r3, 8(r5)
/* 80272168 0023B728  90 64 00 08 */	stw r3, 8(r4)
/* 8027216C 0023B72C  80 65 00 0C */	lwz r3, 0xc(r5)
/* 80272170 0023B730  90 64 00 0C */	stw r3, 0xc(r4)
/* 80272174 0023B734  A8 65 00 10 */	lha r3, 0x10(r5)
/* 80272178 0023B738  B0 64 00 10 */	sth r3, 0x10(r4)
/* 8027217C 0023B73C  88 65 00 12 */	lbz r3, 0x12(r5)
/* 80272180 0023B740  98 64 00 12 */	stb r3, 0x12(r4)
/* 80272184 0023B744  88 65 00 13 */	lbz r3, 0x13(r5)
/* 80272188 0023B748  38 A5 00 14 */	addi r5, r5, 0x14
/* 8027218C 0023B74C  98 64 00 13 */	stb r3, 0x13(r4)
/* 80272190 0023B750  38 84 00 14 */	addi r4, r4, 0x14
/* 80272194 0023B754  7C 04 00 40 */	cmplw r4, r0
/* 80272198 0023B758  41 80 FF BC */	blt .L_80272154
/* 8027219C 0023B75C  88 01 14 EC */	lbz r0, 0x14ec(r1)
/* 802721A0 0023B760  38 61 00 60 */	addi r3, r1, 0x60
/* 802721A4 0023B764  98 1F 15 44 */	stb r0, 0x1544(r31)
/* 802721A8 0023B768  38 80 FF FF */	li r4, -1
/* 802721AC 0023B76C  80 01 14 F0 */	lwz r0, 0x14f0(r1)
/* 802721B0 0023B770  90 1F 15 48 */	stw r0, 0x1548(r31)
/* 802721B4 0023B774  48 00 10 B9 */	bl __dt__CKizunaTalkList
/* 802721B8 0023B778  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 802721BC 0023B77C  48 00 11 39 */	bl func_802732F4
/* 802721C0 0023B780  2C 1F 00 00 */	cmpwi r31, 0
/* 802721C4 0023B784  7F E4 FB 78 */	mr r4, r31
/* 802721C8 0023B788  41 82 00 08 */	beq .L_802721D0
/* 802721CC 0023B78C  38 9F 00 58 */	addi r4, r31, 0x58
.L_802721D0:
/* 802721D0 0023B790  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 802721D4 0023B794  38 A0 00 0D */	li r5, 0xd
/* 802721D8 0023B798  38 C0 00 00 */	li r6, 0
/* 802721DC 0023B79C  48 22 3C D9 */	bl func_80495EB4
/* 802721E0 0023B7A0  80 01 15 04 */	lwz r0, 0x1504(r1)
/* 802721E4 0023B7A4  83 E1 14 FC */	lwz r31, 0x14fc(r1)
/* 802721E8 0023B7A8  7C 08 03 A6 */	mtlr r0
/* 802721EC 0023B7AC  38 21 15 00 */	addi r1, r1, 0x1500
/* 802721F0 0023B7B0  4E 80 00 20 */	blr 
.endfn func_80271F10

.fn func_802721F4, global
/* 802721F4 0023B7B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802721F8 0023B7B8  7C 08 02 A6 */	mflr r0
/* 802721FC 0023B7BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80272200 0023B7C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80272204 0023B7C4  7C 7F 1B 78 */	mr r31, r3
/* 80272208 0023B7C8  48 1D 68 3D */	bl func_80448A44
/* 8027220C 0023B7CC  2C 1F 00 00 */	cmpwi r31, 0
/* 80272210 0023B7D0  7F E4 FB 78 */	mr r4, r31
/* 80272214 0023B7D4  41 82 00 08 */	beq .L_8027221C
/* 80272218 0023B7D8  38 9F 00 58 */	addi r4, r31, 0x58
.L_8027221C:
/* 8027221C 0023B7DC  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 80272220 0023B7E0  48 22 3D 31 */	bl func_80495F50
/* 80272224 0023B7E4  38 7F 00 60 */	addi r3, r31, 0x60
/* 80272228 0023B7E8  4B F5 1B 75 */	bl func_801C3D9C
/* 8027222C 0023B7EC  38 7F 00 80 */	addi r3, r31, 0x80
/* 80272230 0023B7F0  4B F5 1E 71 */	bl func_801C40A0
/* 80272234 0023B7F4  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80272238 0023B7F8  48 00 12 35 */	bl func_8027346C
/* 8027223C 0023B7FC  38 00 00 00 */	li r0, 0
/* 80272240 0023B800  90 0D B0 20 */	stw r0, lbl_806671A0@sda21(r13)
/* 80272244 0023B804  38 60 00 00 */	li r3, 0
/* 80272248 0023B808  4B E1 07 05 */	bl func_8008294C
/* 8027224C 0023B80C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80272250 0023B810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80272254 0023B814  7C 08 03 A6 */	mtlr r0
/* 80272258 0023B818  38 21 00 10 */	addi r1, r1, 0x10
/* 8027225C 0023B81C  4E 80 00 20 */	blr 
.endfn func_802721F4

.fn func_80272260, global
/* 80272260 0023B820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80272264 0023B824  7C 08 02 A6 */	mflr r0
/* 80272268 0023B828  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027226C 0023B82C  BF C1 00 08 */	stmw r30, 8(r1)
/* 80272270 0023B830  7C 7E 1B 78 */	mr r30, r3
/* 80272274 0023B834  4B DC E2 75 */	bl func_800404E8
/* 80272278 0023B838  4B DD 04 79 */	bl func_800426F0
/* 8027227C 0023B83C  2C 03 00 00 */	cmpwi r3, 0
/* 80272280 0023B840  40 82 00 DC */	bne .L_8027235C
/* 80272284 0023B844  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 80272288 0023B848  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 8027228C 0023B84C  41 82 00 08 */	beq .L_80272294
/* 80272290 0023B850  48 00 00 CC */	b .L_8027235C
.L_80272294:
/* 80272294 0023B854  4B E1 4F 29 */	bl func_800871BC
/* 80272298 0023B858  7C 7F 1B 78 */	mr r31, r3
/* 8027229C 0023B85C  38 60 FF FF */	li r3, -1
/* 802722A0 0023B860  4B E1 4C FD */	bl func_80086F9C
/* 802722A4 0023B864  2C 03 00 00 */	cmpwi r3, 0
/* 802722A8 0023B868  41 82 00 10 */	beq .L_802722B8
/* 802722AC 0023B86C  80 1F 00 04 */	lwz r0, 4(r31)
/* 802722B0 0023B870  54 00 4F FE */	rlwinm r0, r0, 9, 0x1f, 0x1f
/* 802722B4 0023B874  48 00 00 0C */	b .L_802722C0
.L_802722B8:
/* 802722B8 0023B878  80 1F 00 04 */	lwz r0, 4(r31)
/* 802722BC 0023B87C  54 00 B7 FE */	rlwinm r0, r0, 0x16, 0x1f, 0x1f
.L_802722C0:
/* 802722C0 0023B880  2C 00 00 00 */	cmpwi r0, 0
/* 802722C4 0023B884  41 82 00 2C */	beq .L_802722F0
/* 802722C8 0023B888  4B E8 CB 31 */	bl func_800FEDF8
/* 802722CC 0023B88C  2C 03 00 00 */	cmpwi r3, 0
/* 802722D0 0023B890  41 82 00 10 */	beq .L_802722E0
/* 802722D4 0023B894  4B E8 D6 41 */	bl func_800FF914
/* 802722D8 0023B898  38 60 00 06 */	li r3, 6
/* 802722DC 0023B89C  4B EC 5D 9D */	bl func_80138078
.L_802722E0:
/* 802722E0 0023B8A0  38 60 00 04 */	li r3, 4
/* 802722E4 0023B8A4  38 00 00 01 */	li r0, 1
/* 802722E8 0023B8A8  98 7E 15 4C */	stb r3, 0x154c(r30)
/* 802722EC 0023B8AC  98 1E 00 54 */	stb r0, 0x54(r30)
.L_802722F0:
/* 802722F0 0023B8B0  88 1E 15 4C */	lbz r0, 0x154c(r30)
/* 802722F4 0023B8B4  2C 00 00 00 */	cmpwi r0, 0
/* 802722F8 0023B8B8  41 82 00 20 */	beq .L_80272318
/* 802722FC 0023B8BC  2C 00 00 01 */	cmpwi r0, 1
/* 80272300 0023B8C0  41 82 00 24 */	beq .L_80272324
/* 80272304 0023B8C4  2C 00 00 02 */	cmpwi r0, 2
/* 80272308 0023B8C8  41 82 00 28 */	beq .L_80272330
/* 8027230C 0023B8CC  2C 00 00 03 */	cmpwi r0, 3
/* 80272310 0023B8D0  41 82 00 2C */	beq .L_8027233C
/* 80272314 0023B8D4  48 00 00 30 */	b .L_80272344
.L_80272318:
/* 80272318 0023B8D8  7F C3 F3 78 */	mr r3, r30
/* 8027231C 0023B8DC  48 00 01 7D */	bl func_80272498
/* 80272320 0023B8E0  48 00 00 24 */	b .L_80272344
.L_80272324:
/* 80272324 0023B8E4  7F C3 F3 78 */	mr r3, r30
/* 80272328 0023B8E8  48 00 01 E9 */	bl func_80272510
/* 8027232C 0023B8EC  48 00 00 18 */	b .L_80272344
.L_80272330:
/* 80272330 0023B8F0  7F C3 F3 78 */	mr r3, r30
/* 80272334 0023B8F4  48 00 02 2D */	bl func_80272560
/* 80272338 0023B8F8  48 00 00 0C */	b .L_80272344
.L_8027233C:
/* 8027233C 0023B8FC  7F C3 F3 78 */	mr r3, r30
/* 80272340 0023B900  48 00 03 55 */	bl func_80272694
.L_80272344:
/* 80272344 0023B904  38 7E 00 60 */	addi r3, r30, 0x60
/* 80272348 0023B908  4B F5 1A 0D */	bl func_801C3D54
/* 8027234C 0023B90C  38 7E 00 80 */	addi r3, r30, 0x80
/* 80272350 0023B910  4B F5 1C A1 */	bl func_801C3FF0
/* 80272354 0023B914  38 7E 00 B8 */	addi r3, r30, 0xb8
/* 80272358 0023B918  48 00 10 15 */	bl func_8027336C
.L_8027235C:
/* 8027235C 0023B91C  BB C1 00 08 */	lmw r30, 8(r1)
/* 80272360 0023B920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80272364 0023B924  7C 08 03 A6 */	mtlr r0
/* 80272368 0023B928  38 21 00 10 */	addi r1, r1, 0x10
/* 8027236C 0023B92C  4E 80 00 20 */	blr
.endfn func_80272260

.fn func_80272370, global
/* 80272370 0023B930  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80272374 0023B934  7C 08 02 A6 */	mflr r0
/* 80272378 0023B938  90 01 00 74 */	stw r0, 0x74(r1)
/* 8027237C 0023B93C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80272380 0023B940  7C 7F 1B 78 */	mr r31, r3
/* 80272384 0023B944  4B DC E1 65 */	bl func_800404E8
/* 80272388 0023B948  4B DD 03 69 */	bl func_800426F0
/* 8027238C 0023B94C  2C 03 00 00 */	cmpwi r3, 0
/* 80272390 0023B950  40 82 00 70 */	bne .L_80272400
/* 80272394 0023B954  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 80272398 0023B958  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 8027239C 0023B95C  41 82 00 08 */	beq .L_802723A4
/* 802723A0 0023B960  48 00 00 60 */	b .L_80272400
.L_802723A4:
/* 802723A4 0023B964  4B EC 9A AD */	bl func_8013BE50
/* 802723A8 0023B968  2C 03 00 00 */	cmpwi r3, 0
/* 802723AC 0023B96C  41 82 00 54 */	beq .L_80272400
/* 802723B0 0023B970  38 60 00 00 */	li r3, 0
/* 802723B4 0023B974  38 80 00 00 */	li r4, 0
/* 802723B8 0023B978  38 A0 00 00 */	li r5, 0
/* 802723BC 0023B97C  48 0A BE 85 */	bl GXSetZMode
/* 802723C0 0023B980  38 61 00 08 */	addi r3, r1, 8
/* 802723C4 0023B984  48 19 62 A5 */	bl __ct__Q34nw4r3lyt8DrawInfoFv
/* 802723C8 0023B988  38 61 00 08 */	addi r3, r1, 8
/* 802723CC 0023B98C  4B EC 4E 85 */	bl func_80137250
/* 802723D0 0023B990  38 7F 00 60 */	addi r3, r31, 0x60
/* 802723D4 0023B994  38 81 00 08 */	addi r4, r1, 8
/* 802723D8 0023B998  4B F5 19 A5 */	bl func_801C3D7C
/* 802723DC 0023B99C  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 802723E0 0023B9A0  38 81 00 08 */	addi r4, r1, 8
/* 802723E4 0023B9A4  48 00 10 29 */	bl func_8027340C
/* 802723E8 0023B9A8  38 7F 00 80 */	addi r3, r31, 0x80
/* 802723EC 0023B9AC  38 81 00 08 */	addi r4, r1, 8
/* 802723F0 0023B9B0  4B F5 1C 91 */	bl func_801C4080
/* 802723F4 0023B9B4  38 61 00 08 */	addi r3, r1, 8
/* 802723F8 0023B9B8  38 80 FF FF */	li r4, -1
/* 802723FC 0023B9BC  48 19 62 E1 */	bl __dt__Q34nw4r3lyt8DrawInfoFv
.L_80272400:
/* 80272400 0023B9C0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80272404 0023B9C4  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80272408 0023B9C8  7C 08 03 A6 */	mtlr r0
/* 8027240C 0023B9CC  38 21 00 70 */	addi r1, r1, 0x70
/* 80272410 0023B9D0  4E 80 00 20 */	blr 
.endfn func_80272370

.fn func_80272414, global
/* 80272414 0023B9D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80272418 0023B9D8  7C 08 02 A6 */	mflr r0
/* 8027241C 0023B9DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80272420 0023B9E0  BF C1 00 08 */	stmw r30, 8(r1)
/* 80272424 0023B9E4  7C 7E 1B 78 */	mr r30, r3
/* 80272428 0023B9E8  7C 9F 23 78 */	mr r31, r4
/* 8027242C 0023B9EC  80 0D B0 20 */	lwz r0, lbl_806671A0@sda21(r13)
/* 80272430 0023B9F0  2C 00 00 00 */	cmpwi r0, 0
/* 80272434 0023B9F4  41 82 00 0C */	beq .L_80272440
/* 80272438 0023B9F8  38 60 00 00 */	li r3, 0
/* 8027243C 0023B9FC  48 00 00 38 */	b .L_80272474
.L_80272440:
/* 80272440 0023BA00  48 1C 51 75 */	bl getMemRegionIndex
/* 80272444 0023BA04  7C 64 1B 78 */	mr r4, r3
/* 80272448 0023BA08  38 60 15 50 */	li r3, 0x1550
/* 8027244C 0023BA0C  48 1C 26 11 */	bl heap_malloc
/* 80272450 0023BA10  2C 03 00 00 */	cmpwi r3, 0
/* 80272454 0023BA14  41 82 00 0C */	beq .L_80272460
/* 80272458 0023BA18  7F E4 FB 78 */	mr r4, r31
/* 8027245C 0023BA1C  4B FF F9 79 */	bl __ct__CMenuKizunaTalkList
.L_80272460:
/* 80272460 0023BA20  90 6D B0 20 */	stw r3, lbl_806671A0@sda21(r13)
/* 80272464 0023BA24  7F C4 F3 78 */	mr r4, r30
/* 80272468 0023BA28  38 A0 00 00 */	li r5, 0
/* 8027246C 0023BA2C  48 1D 28 09 */	bl func_80444C74
/* 80272470 0023BA30  80 6D B0 20 */	lwz r3, lbl_806671A0@sda21(r13)
.L_80272474:
/* 80272474 0023BA34  BB C1 00 08 */	lmw r30, 8(r1)
/* 80272478 0023BA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027247C 0023BA3C  7C 08 03 A6 */	mtlr r0
/* 80272480 0023BA40  38 21 00 10 */	addi r1, r1, 0x10
/* 80272484 0023BA44  4E 80 00 20 */	blr 
.endfn func_80272414

.fn func_80272488, global
/* 80272488 0023BA48  80 6D B0 20 */	lwz r3, lbl_806671A0@sda21(r13)
/* 8027248C 0023BA4C  30 03 FF FF */	addic r0, r3, -1
/* 80272490 0023BA50  7C 60 19 10 */	subfe r3, r0, r3
/* 80272494 0023BA54  4E 80 00 20 */	blr 
.endfn func_80272488

.fn func_80272498, global
/* 80272498 0023BA58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027249C 0023BA5C  7C 08 02 A6 */	mflr r0
/* 802724A0 0023BA60  90 01 00 14 */	stw r0, 0x14(r1)
/* 802724A4 0023BA64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802724A8 0023BA68  7C 7F 1B 78 */	mr r31, r3
/* 802724AC 0023BA6C  38 63 00 60 */	addi r3, r3, 0x60
/* 802724B0 0023BA70  4B F5 19 85 */	bl func_801C3E34
/* 802724B4 0023BA74  2C 03 00 00 */	cmpwi r3, 0
/* 802724B8 0023BA78  41 82 00 44 */	beq .L_802724FC
/* 802724BC 0023BA7C  38 7F 00 80 */	addi r3, r31, 0x80
/* 802724C0 0023BA80  4B F5 1C 55 */	bl func_801C4114
/* 802724C4 0023BA84  2C 03 00 00 */	cmpwi r3, 0
/* 802724C8 0023BA88  41 82 00 34 */	beq .L_802724FC
/* 802724CC 0023BA8C  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 802724D0 0023BA90  48 00 10 49 */	bl func_80273518
/* 802724D4 0023BA94  2C 03 00 00 */	cmpwi r3, 0
/* 802724D8 0023BA98  41 82 00 24 */	beq .L_802724FC
/* 802724DC 0023BA9C  38 7F 00 80 */	addi r3, r31, 0x80
/* 802724E0 0023BAA0  4B F5 1C 4D */	bl func_801C412C
/* 802724E4 0023BAA4  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 802724E8 0023BAA8  48 00 10 7D */	bl func_80273564
/* 802724EC 0023BAAC  38 00 00 01 */	li r0, 1
/* 802724F0 0023BAB0  98 1F 15 4C */	stb r0, 0x154c(r31)
/* 802724F4 0023BAB4  38 60 00 6D */	li r3, 0x6d
/* 802724F8 0023BAB8  4B EC 5B 81 */	bl func_80138078
.L_802724FC:
/* 802724FC 0023BABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80272500 0023BAC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80272504 0023BAC4  7C 08 03 A6 */	mtlr r0
/* 80272508 0023BAC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8027250C 0023BACC  4E 80 00 20 */	blr 
.endfn func_80272498

.fn func_80272510, global
/* 80272510 0023BAD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80272514 0023BAD4  7C 08 02 A6 */	mflr r0
/* 80272518 0023BAD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027251C 0023BADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80272520 0023BAE0  7C 7F 1B 78 */	mr r31, r3
/* 80272524 0023BAE4  38 63 00 80 */	addi r3, r3, 0x80
/* 80272528 0023BAE8  4B F5 1B FD */	bl func_801C4124
/* 8027252C 0023BAEC  2C 03 00 00 */	cmpwi r3, 0
/* 80272530 0023BAF0  41 82 00 1C */	beq .L_8027254C
/* 80272534 0023BAF4  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80272538 0023BAF8  48 00 10 25 */	bl func_8027355C
/* 8027253C 0023BAFC  2C 03 00 00 */	cmpwi r3, 0
/* 80272540 0023BB00  41 82 00 0C */	beq .L_8027254C
/* 80272544 0023BB04  38 00 00 02 */	li r0, 2
/* 80272548 0023BB08  98 1F 15 4C */	stb r0, 0x154c(r31)
.L_8027254C:
/* 8027254C 0023BB0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80272550 0023BB10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80272554 0023BB14  7C 08 03 A6 */	mtlr r0
/* 80272558 0023BB18  38 21 00 10 */	addi r1, r1, 0x10
/* 8027255C 0023BB1C  4E 80 00 20 */	blr 
.endfn func_80272510

.fn func_80272560, global
/* 80272560 0023BB20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80272564 0023BB24  7C 08 02 A6 */	mflr r0
/* 80272568 0023BB28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027256C 0023BB2C  BF C1 00 08 */	stmw r30, 8(r1)
/* 80272570 0023BB30  7C 7F 1B 78 */	mr r31, r3
/* 80272574 0023BB34  4B E1 4C C5 */	bl func_80087238
/* 80272578 0023BB38  7C 7E 1B 78 */	mr r30, r3
/* 8027257C 0023BB3C  38 60 FF FF */	li r3, -1
/* 80272580 0023BB40  4B E1 4A 1D */	bl func_80086F9C
/* 80272584 0023BB44  2C 03 00 00 */	cmpwi r3, 0
/* 80272588 0023BB48  41 82 00 48 */	beq .L_802725D0
/* 8027258C 0023BB4C  80 FE 01 04 */	lwz r7, 0x104(r30)
/* 80272590 0023BB50  80 1E 00 04 */	lwz r0, 4(r30)
/* 80272594 0023BB54  70 E6 80 04 */	andi. r6, r7, 0x8004
/* 80272598 0023BB58  54 E5 03 DE */	rlwinm r5, r7, 0, 0xf, 0xf
/* 8027259C 0023BB5C  70 E4 20 01 */	andi. r4, r7, 0x2001
/* 802725A0 0023BB60  70 E3 40 02 */	andi. r3, r7, 0x4002
/* 802725A4 0023BB64  50 E5 07 38 */	rlwimi r5, r7, 0, 0x1c, 0x1c
/* 802725A8 0023BB68  54 07 57 FE */	rlwinm r7, r0, 0xa, 0x1f, 0x1f
/* 802725AC 0023BB6C  30 06 FF FF */	addic r0, r6, -1
/* 802725B0 0023BB70  7C C0 31 10 */	subfe r6, r0, r6
/* 802725B4 0023BB74  30 05 FF FF */	addic r0, r5, -1
/* 802725B8 0023BB78  7C A0 29 10 */	subfe r5, r0, r5
/* 802725BC 0023BB7C  30 04 FF FF */	addic r0, r4, -1
/* 802725C0 0023BB80  7C 80 21 10 */	subfe r4, r0, r4
/* 802725C4 0023BB84  30 03 FF FF */	addic r0, r3, -1
/* 802725C8 0023BB88  7C 00 19 10 */	subfe r0, r0, r3
/* 802725CC 0023BB8C  48 00 00 44 */	b .L_80272610
.L_802725D0:
/* 802725D0 0023BB90  80 FE 01 04 */	lwz r7, 0x104(r30)
/* 802725D4 0023BB94  80 1E 00 04 */	lwz r0, 4(r30)
/* 802725D8 0023BB98  70 E6 80 04 */	andi. r6, r7, 0x8004
/* 802725DC 0023BB9C  54 E5 03 DE */	rlwinm r5, r7, 0, 0xf, 0xf
/* 802725E0 0023BBA0  70 E4 20 01 */	andi. r4, r7, 0x2001
/* 802725E4 0023BBA4  70 E3 40 02 */	andi. r3, r7, 0x4002
/* 802725E8 0023BBA8  50 E5 07 38 */	rlwimi r5, r7, 0, 0x1c, 0x1c
/* 802725EC 0023BBAC  54 07 DF FE */	rlwinm r7, r0, 0x1b, 0x1f, 0x1f
/* 802725F0 0023BBB0  30 06 FF FF */	addic r0, r6, -1
/* 802725F4 0023BBB4  7C C0 31 10 */	subfe r6, r0, r6
/* 802725F8 0023BBB8  30 05 FF FF */	addic r0, r5, -1
/* 802725FC 0023BBBC  7C A0 29 10 */	subfe r5, r0, r5
/* 80272600 0023BBC0  30 04 FF FF */	addic r0, r4, -1
/* 80272604 0023BBC4  7C 80 21 10 */	subfe r4, r0, r4
/* 80272608 0023BBC8  30 03 FF FF */	addic r0, r3, -1
/* 8027260C 0023BBCC  7C 00 19 10 */	subfe r0, r0, r3
.L_80272610:
/* 80272610 0023BBD0  2C 07 00 00 */	cmpwi r7, 0
/* 80272614 0023BBD4  41 82 00 20 */	beq .L_80272634
/* 80272618 0023BBD8  38 7F 00 80 */	addi r3, r31, 0x80
/* 8027261C 0023BBDC  4B F5 1B 31 */	bl func_801C414C
/* 80272620 0023BBE0  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80272624 0023BBE4  48 00 0F CD */	bl func_802735F0
/* 80272628 0023BBE8  38 00 00 03 */	li r0, 3
/* 8027262C 0023BBEC  98 1F 15 4C */	stb r0, 0x154c(r31)
/* 80272630 0023BBF0  48 00 00 50 */	b .L_80272680
.L_80272634:
/* 80272634 0023BBF4  2C 06 00 00 */	cmpwi r6, 0
/* 80272638 0023BBF8  41 82 00 10 */	beq .L_80272648
/* 8027263C 0023BBFC  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80272640 0023BC00  48 00 10 15 */	bl func_80273654
/* 80272644 0023BC04  48 00 00 3C */	b .L_80272680
.L_80272648:
/* 80272648 0023BC08  2C 05 00 00 */	cmpwi r5, 0
/* 8027264C 0023BC0C  41 82 00 10 */	beq .L_8027265C
/* 80272650 0023BC10  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80272654 0023BC14  48 00 10 BD */	bl func_80273710
/* 80272658 0023BC18  48 00 00 28 */	b .L_80272680
.L_8027265C:
/* 8027265C 0023BC1C  2C 04 00 00 */	cmpwi r4, 0
/* 80272660 0023BC20  41 82 00 10 */	beq .L_80272670
/* 80272664 0023BC24  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80272668 0023BC28  48 00 11 79 */	bl func_802737E0
/* 8027266C 0023BC2C  48 00 00 14 */	b .L_80272680
.L_80272670:
/* 80272670 0023BC30  2C 00 00 00 */	cmpwi r0, 0
/* 80272674 0023BC34  41 82 00 0C */	beq .L_80272680
/* 80272678 0023BC38  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 8027267C 0023BC3C  48 00 12 01 */	bl func_8027387C
.L_80272680:
/* 80272680 0023BC40  BB C1 00 08 */	lmw r30, 8(r1)
/* 80272684 0023BC44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80272688 0023BC48  7C 08 03 A6 */	mtlr r0
/* 8027268C 0023BC4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80272690 0023BC50  4E 80 00 20 */	blr 
.endfn func_80272560

.fn func_80272694, global
/* 80272694 0023BC54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80272698 0023BC58  7C 08 02 A6 */	mflr r0
/* 8027269C 0023BC5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802726A0 0023BC60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802726A4 0023BC64  7C 7F 1B 78 */	mr r31, r3
/* 802726A8 0023BC68  38 63 00 80 */	addi r3, r3, 0x80
/* 802726AC 0023BC6C  4B F5 1A 79 */	bl func_801C4124
/* 802726B0 0023BC70  2C 03 00 00 */	cmpwi r3, 0
/* 802726B4 0023BC74  41 82 00 1C */	beq .L_802726D0
/* 802726B8 0023BC78  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 802726BC 0023BC7C  48 00 0E A1 */	bl func_8027355C
/* 802726C0 0023BC80  2C 03 00 00 */	cmpwi r3, 0
/* 802726C4 0023BC84  41 82 00 0C */	beq .L_802726D0
/* 802726C8 0023BC88  38 00 00 01 */	li r0, 1
/* 802726CC 0023BC8C  98 1F 00 54 */	stb r0, 0x54(r31)
.L_802726D0:
/* 802726D0 0023BC90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802726D4 0023BC94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802726D8 0023BC98  7C 08 03 A6 */	mtlr r0
/* 802726DC 0023BC9C  38 21 00 10 */	addi r1, r1, 0x10
/* 802726E0 0023BCA0  4E 80 00 20 */	blr 
.endfn func_80272694

.fn func_802726E4, global
/* 802726E4 0023BCA4  38 63 FF A8 */	addi r3, r3, -88
/* 802726E8 0023BCA8  4B FF FC 88 */	b func_80272370
.endfn func_802726E4

.fn func_802726EC, global
/* 802726EC 0023BCAC  38 63 FF A8 */	addi r3, r3, -88
/* 802726F0 0023BCB0  4B FF F7 A8 */	b __dt__CMenuKizunaTalkList
.endfn func_802726EC

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CMenuKizunaTalkList_typestr, global
	.asciz "CMenuKizunaTalkList"
	.4byte 0
.endobj CMenuKizunaTalkList_typestr


.obj lbl_80509FF8, global
	.asciz "MNU_update"
	.asciz "info"
.endobj lbl_80509FF8

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CMenuKizunaTalkList, global
	.4byte __RTTI__CMenuKizunaTalkList
	.4byte 0
	.4byte __dt__CMenuKizunaTalkList
	.4byte CChildListNode_Reset
	.4byte func_80271F10
	.4byte func_802721F4
	.4byte func_80272260
	.4byte func_80101FB8
	.4byte func_80043F20
	.4byte __RTTI__CMenuKizunaTalkList
	.4byte 0xFFFFFFA8
	.4byte func_802726EC
	.4byte func_802726E4
	.4byte func_80272370
.endobj __vt__CMenuKizunaTalkList

.obj CMenuKizunaTalkList_hierarchy, global
	.4byte __RTTI__IScnRender
	.4byte 0x00000058
	.4byte __RTTI__CDoubleListNode
	.4byte 0
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __RTTI__CProcess
	.4byte 0
	.4byte __RTTI__CTTask_IUICf
	.4byte 0
	.4byte __RTTI__IUICf
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CMenuKizunaTalkList_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CMenuKizunaTalkList, global
	.4byte CMenuKizunaTalkList_typestr
	.4byte CMenuKizunaTalkList_hierarchy
.endobj __RTTI__CMenuKizunaTalkList


.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_806671A0, global
	.skip 0x8
.endobj lbl_806671A0

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80018134", local
.hidden "@etb_80018134"
	.4byte 0x18080000
	.4byte 0x0000008C
	.4byte 0x00000038
	.4byte 0x0000009C
	.4byte 0x0000002C
	.4byte 0x000000A8
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x0780001D
	.4byte 0x00000080
	.4byte __dt__CTitleAHelp
	.4byte 0x0780001D
	.4byte 0x00000060
	.4byte __dt__CBgTex
	.4byte 0x0680001D
	.4byte 0x00000058
	.4byte __dt__IScnRender
	.4byte 0x8680001D
	.4byte 0x00000000
	.4byte __dt__800FED0C
.endobj "@etb_80018134"

.obj "@etb_80018184", local
.hidden "@etb_80018184"
	.4byte 0x10080000
	.4byte 0x00000038
	.4byte 0x00000020
	.4byte 0x00000044
	.4byte 0x0000002C
	.4byte 0x00000050
	.4byte 0x00000044
	.4byte 0x00000000
	.4byte 0x8780001E
	.4byte 0x000000B8
	.4byte __dt__CKizunaTalkList
	.4byte 0x0780001E
	.4byte 0x000000B8
	.4byte __dt__CKizunaTalkList
	.4byte 0x8780001E
	.4byte 0x00000080
	.4byte __dt__CTitleAHelp
	.4byte 0x0780001E
	.4byte 0x000000B8
	.4byte __dt__CKizunaTalkList
	.4byte 0x0780001E
	.4byte 0x00000080
	.4byte __dt__CTitleAHelp
	.4byte 0x0780001E
	.4byte 0x00000060
	.4byte __dt__CBgTex
	.4byte 0x8680001E
	.4byte 0x00000058
	.4byte __dt__IScnRender
.endobj "@etb_80018184"

.obj "@etb_800181F8", local
.hidden "@etb_800181F8"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_800181F8"

.obj "@etb_80018200", local
.hidden "@etb_80018200"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80018200"

.obj "@etb_80018208", local
.hidden "@etb_80018208"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80018208"

.obj "@etb_80018210", local
.hidden "@etb_80018210"
	.4byte 0x08080000
	.4byte 0x00000060
	.4byte 0x00090010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__Q34nw4r3lyt8DrawInfoFv
.endobj "@etb_80018210"

.obj "@etb_80018228", local
.hidden "@etb_80018228"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80018228"

.obj "@etb_80018230", local
.hidden "@etb_80018230"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80018230"

.obj "@etb_80018238", local
.hidden "@etb_80018238"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80018238"

.obj "@etb_80018240", local
.hidden "@etb_80018240"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80018240"

.obj "@etb_80018248", local
.hidden "@etb_80018248"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80018248"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800308A8", local
.hidden "@eti_800308A8"
	.4byte __ct__CMenuKizunaTalkList
	.4byte 0x000000C4
	.4byte "@etb_80018134"
.endobj "@eti_800308A8"

.obj "@eti_800308B4", local
.hidden "@eti_800308B4"
	.4byte __dt__CMenuKizunaTalkList
	.4byte 0x00000078
	.4byte "@etb_80018184"
.endobj "@eti_800308B4"

.obj "@eti_800308C0", local
.hidden "@eti_800308C0"
	.4byte func_80271F10
	.4byte 0x000002E4
	.4byte "@etb_800181F8"
.endobj "@eti_800308C0"

.obj "@eti_800308CC", local
.hidden "@eti_800308CC"
	.4byte func_802721F4
	.4byte 0x0000006C
	.4byte "@etb_80018200"
.endobj "@eti_800308CC"

.obj "@eti_800308D8", local
.hidden "@eti_800308D8"
	.4byte func_80272260
	.4byte 0x00000110
	.4byte "@etb_80018208"
.endobj "@eti_800308D8"

.obj "@eti_800308E4", local
.hidden "@eti_800308E4"
	.4byte func_80272370
	.4byte 0x000000A4
	.4byte "@etb_80018210"
.endobj "@eti_800308E4"

.obj "@eti_800308F0", local
.hidden "@eti_800308F0"
	.4byte func_80272414
	.4byte 0x00000074
	.4byte "@etb_80018228"
.endobj "@eti_800308F0"

.obj "@eti_800308FC", local
.hidden "@eti_800308FC"
	.4byte func_80272498
	.4byte 0x00000078
	.4byte "@etb_80018230"
.endobj "@eti_800308FC"

.obj "@eti_80030908", local
.hidden "@eti_80030908"
	.4byte func_80272510
	.4byte 0x00000050
	.4byte "@etb_80018238"
.endobj "@eti_80030908"

.obj "@eti_80030914", local
.hidden "@eti_80030914"
	.4byte func_80272560
	.4byte 0x00000134
	.4byte "@etb_80018240"
.endobj "@eti_80030914"

.obj "@eti_80030920", local
.hidden "@eti_80030920"
	.4byte func_80272694
	.4byte 0x00000050
	.4byte "@etb_80018248"
.endobj "@eti_80030920"
