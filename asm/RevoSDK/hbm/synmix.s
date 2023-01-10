.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global func_803416D0
func_803416D0:
/* 803416D0 0030AC90  88 03 00 0E */	lbz r0, 0xe(r3)
/* 803416D4 0030AC94  3C 80 80 55 */	lis r4, lbl_8054FC90@ha
/* 803416D8 0030AC98  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 803416DC 0030AC9C  38 84 FC 90 */	addi r4, r4, lbl_8054FC90@l
/* 803416E0 0030ACA0  54 00 10 3A */	slwi r0, r0, 2
/* 803416E4 0030ACA4  80 A5 00 04 */	lwz r5, 4(r5)
/* 803416E8 0030ACA8  7C 04 00 2E */	lwzx r0, r4, r0
/* 803416EC 0030ACAC  7C 05 02 14 */	add r0, r5, r0
/* 803416F0 0030ACB0  90 03 00 2C */	stw r0, 0x2c(r3)
/* 803416F4 0030ACB4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80341700
func_80341700:
/* 80341700 0030ACC0  80 83 00 08 */	lwz r4, 8(r3)
/* 80341704 0030ACC4  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80341708 0030ACC8  7C 84 02 14 */	add r4, r4, r0
/* 8034170C 0030ACCC  88 04 00 EC */	lbz r0, 0xec(r4)
/* 80341710 0030ACD0  98 03 00 0F */	stb r0, 0xf(r3)
/* 80341714 0030ACD4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80341720
func_80341720:
/* 80341720 0030ACE0  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 80341724 0030ACE4  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80341728 0030ACE8  7C 04 02 14 */	add r0, r4, r0
/* 8034172C 0030ACEC  7C 03 86 70 */	srawi r3, r0, 0x10
/* 80341730 0030ACF0  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80341740
func_80341740:
/* 80341740 0030AD00  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80341744 0030AD04  80 83 00 08 */	lwz r4, 8(r3)
/* 80341748 0030AD08  54 00 10 3A */	slwi r0, r0, 2
/* 8034174C 0030AD0C  7C 64 02 14 */	add r3, r4, r0
/* 80341750 0030AD10  80 84 00 68 */	lwz r4, 0x68(r4)
/* 80341754 0030AD14  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 80341758 0030AD18  7C 04 02 14 */	add r0, r4, r0
/* 8034175C 0030AD1C  7C 03 86 70 */	srawi r3, r0, 0x10
/* 80341760 0030AD20  4E 80 00 20 */	blr 

.balign 16, 0
.global __HBMSYNUpdateMix
__HBMSYNUpdateMix:
/* 80341770 0030AD30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80341774 0030AD34  7C 08 02 A6 */	mflr r0
/* 80341778 0030AD38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034177C 0030AD3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80341780 0030AD40  7C 7F 1B 78 */	mr r31, r3
/* 80341784 0030AD44  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 80341788 0030AD48  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 8034178C 0030AD4C  80 63 00 04 */	lwz r3, 4(r3)
/* 80341790 0030AD50  7C 04 02 14 */	add r0, r4, r0
/* 80341794 0030AD54  7C 04 86 70 */	srawi r4, r0, 0x10
/* 80341798 0030AD58  4B FF E4 F9 */	bl HBMMIXSetInput
/* 8034179C 0030AD5C  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 803417A0 0030AD60  80 9F 00 08 */	lwz r4, 8(r31)
/* 803417A4 0030AD64  54 00 10 3A */	slwi r0, r0, 2
/* 803417A8 0030AD68  80 7F 00 04 */	lwz r3, 4(r31)
/* 803417AC 0030AD6C  7C 84 02 14 */	add r4, r4, r0
/* 803417B0 0030AD70  80 04 00 AC */	lwz r0, 0xac(r4)
/* 803417B4 0030AD74  7C 04 86 70 */	srawi r4, r0, 0x10
/* 803417B8 0030AD78  4B FF E5 19 */	bl HBMMIXSetAuxA
/* 803417BC 0030AD7C  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 803417C0 0030AD80  80 BF 00 08 */	lwz r5, 8(r31)
/* 803417C4 0030AD84  54 00 10 3A */	slwi r0, r0, 2
/* 803417C8 0030AD88  80 7F 00 04 */	lwz r3, 4(r31)
/* 803417CC 0030AD8C  7C 85 02 14 */	add r4, r5, r0
/* 803417D0 0030AD90  80 A5 00 68 */	lwz r5, 0x68(r5)
/* 803417D4 0030AD94  80 04 00 6C */	lwz r0, 0x6c(r4)
/* 803417D8 0030AD98  7C 05 02 14 */	add r0, r5, r0
/* 803417DC 0030AD9C  7C 04 86 70 */	srawi r4, r0, 0x10
/* 803417E0 0030ADA0  4B FF E5 B1 */	bl HBMMIXSetFader
/* 803417E4 0030ADA4  80 9F 00 08 */	lwz r4, 8(r31)
/* 803417E8 0030ADA8  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 803417EC 0030ADAC  80 7F 00 04 */	lwz r3, 4(r31)
/* 803417F0 0030ADB0  7C 84 02 14 */	add r4, r4, r0
/* 803417F4 0030ADB4  88 84 00 EC */	lbz r4, 0xec(r4)
/* 803417F8 0030ADB8  4B FF E5 19 */	bl HBMMIXSetPan
/* 803417FC 0030ADBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80341800 0030ADC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80341804 0030ADC4  7C 08 03 A6 */	mtlr r0
/* 80341808 0030ADC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8034180C 0030ADCC  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8054FC90
lbl_8054FC90:
	.4byte 0xFC400000
	.4byte 0xFCB67A80
	.4byte 0xFD2EE3F9
	.4byte 0xFD7553B8
	.4byte 0xFDA74D72
	.4byte 0xFDCE1108
	.4byte 0xFDEDBD30
	.4byte 0xFE08848A
	.4byte 0xFE1FB6EA
	.4byte 0xFE342CEF
	.4byte 0xFE467A80
	.4byte 0xFE57091D
	.4byte 0xFE6626A9
	.4byte 0xFE740E4D
	.4byte 0xFE80EE03
	.4byte 0xFE8CEA3F
	.4byte 0xFE982063
	.4byte 0xFEA2A878
	.4byte 0xFEAC9668
	.4byte 0xFEB5FADF
	.4byte 0xFEBEE3F9
	.4byte 0xFEC75DC2
	.4byte 0xFECF7295
	.4byte 0xFED72B6E
	.4byte 0xFEDE9022
	.4byte 0xFEE5A78F
	.4byte 0xFEEC77C6
	.4byte 0xFEF30626
	.4byte 0xFEF9577C
	.4byte 0xFEFF700E
	.4byte 0xFF0553B8
	.4byte 0xFF0B05F0
	.4byte 0xFF1089DC
	.4byte 0xFF15E254
	.4byte 0xFF1B11F1
	.4byte 0xFF201B12
	.4byte 0xFF24FFE1
	.4byte 0xFF29C25C
	.4byte 0xFF2E6457
	.4byte 0xFF32E784
	.4byte 0xFF374D72
	.4byte 0xFF3B9791
	.4byte 0xFF3FC73A
	.4byte 0xFF43DDAC
	.4byte 0xFF47DC0E
	.4byte 0xFF4BC376
	.4byte 0xFF4F94E7
	.4byte 0xFF535152
	.4byte 0xFF56F99B
	.4byte 0xFF5A8E94
	.4byte 0xFF5E1108
	.4byte 0xFF6181B0
	.4byte 0xFF64E13E
	.4byte 0xFF68305A
	.4byte 0xFF6B6F9F
	.4byte 0xFF6E9FA4
	.4byte 0xFF71C0F4
	.4byte 0xFF74D416
	.4byte 0xFF77D987
	.4byte 0xFF7AD1BF
	.4byte 0xFF7DBD30
	.4byte 0xFF809C47
	.4byte 0xFF836F69
	.4byte 0xFF8636F9
	.4byte 0xFF88F355
	.4byte 0xFF8BA4D4
	.4byte 0xFF8E4BCD
	.4byte 0xFF90E890
	.4byte 0xFF937B6A
	.4byte 0xFF9604A6
	.4byte 0xFF98848A
	.4byte 0xFF9AFB5B
	.4byte 0xFF9D6959
	.4byte 0xFF9FCEC3
	.4byte 0xFFA22BD4
	.4byte 0xFFA480C6
	.4byte 0xFFA6CDD0
	.4byte 0xFFA91327
	.4byte 0xFFAB50FD
	.4byte 0xFFAD8784
	.4byte 0xFFAFB6EA
	.4byte 0xFFB1DF5E
	.4byte 0xFFB4010A
	.4byte 0xFFB61C19
	.4byte 0xFFB830B3
	.4byte 0xFFBA3F00
	.4byte 0xFFBC4724
	.4byte 0xFFBE4946
	.4byte 0xFFC04587
	.4byte 0xFFC23C0A
	.4byte 0xFFC42CEF
	.4byte 0xFFC61857
	.4byte 0xFFC7FE60
	.4byte 0xFFC9DF28
	.4byte 0xFFCBBACB
	.4byte 0xFFCD9166
	.4byte 0xFFCF6313
	.4byte 0xFFD12FED
	.4byte 0xFFD2F80D
	.4byte 0xFFD4BB8B
	.4byte 0xFFD67A80
	.4byte 0xFFD83502
	.4byte 0xFFD9EB29
	.4byte 0xFFDB9D08
	.4byte 0xFFDD4AB7
	.4byte 0xFFDEF449
	.4byte 0xFFE099D2
	.4byte 0xFFE23B66
	.4byte 0xFFE3D918
	.4byte 0xFFE572F9
	.4byte 0xFFE7091D
	.4byte 0xFFE89B93
	.4byte 0xFFEA2A6D
	.4byte 0xFFEBB5BC
	.4byte 0xFFED3D8F
	.4byte 0xFFEEC1F6
	.4byte 0xFFF04300
	.4byte 0xFFF1C0BC
	.4byte 0xFFF33B38
	.4byte 0xFFF4B283
	.4byte 0xFFF626A9
	.4byte 0xFFF797B9
	.4byte 0xFFF905BF
	.4byte 0xFFFA70C9
	.4byte 0xFFFBD8E2
	.4byte 0xFFFD3E16
	.4byte 0xFFFEA072
	.4byte 0


.global lbl_8054FE90
lbl_8054FE90:
	.4byte 0xFC400000
	.4byte 0xFE70DF7B
	.4byte 0xFEAD1437
	.4byte 0xFED04C17
	.4byte 0xFEE948F4
	.4byte 0xFEFCAABF
	.4byte 0xFF0C80D3
	.4byte 0xFF19E480
	.4byte 0xFF257DB0
	.4byte 0xFF2FB8B2
	.4byte 0xFF38DF7B
	.4byte 0xFF4126C9
	.4byte 0xFF48B58F
	.4byte 0xFF4FA961
	.4byte 0xFF56193C
	.4byte 0xFF5C175A
	.4byte 0xFF61B26C
	.4byte 0xFF66F677
	.4byte 0xFF6BED6F
	.4byte 0xFF709FAA
	.4byte 0xFF751437
	.4byte 0xFF79511C
	.4byte 0xFF7D5B85
	.4byte 0xFF8137F2
	.4byte 0xFF84EA4C
	.4byte 0xFF887602
	.4byte 0xFF8BDE1E
	.4byte 0xFF8F254E
	.4byte 0xFF924DF9
	.4byte 0xFF955A42
	.4byte 0xFF984C17
	.4byte 0xFF9B2533
	.4byte 0xFF9DE729
	.4byte 0xFFA09365
	.4byte 0xFFA32B33
	.4byte 0xFFA5AFC4
	.4byte 0xFFA8222B
	.4byte 0xFFAA8369
	.4byte 0xFFACD466
	.4byte 0xFFAF15FD
	.4byte 0xFFB148F4
	.4byte 0xFFB36E03
	.4byte 0xFFB585D8
	.4byte 0xFFB79111
	.4byte 0xFFB99042
	.4byte 0xFFBB83F6
	.4byte 0xFFBD6CAE
	.4byte 0xFFBF4AE4
	.4byte 0xFFC11F08
	.4byte 0xFFC2E985
	.4byte 0xFFC4AABF
	.4byte 0xFFC66313
	.4byte 0xFFC812DA
	.4byte 0xFFC9BA68
	.4byte 0xFFCB5A0A
	.4byte 0xFFCCF20D
	.4byte 0xFFCE82B5
	.4byte 0xFFD00C46
	.4byte 0xFFD18EFE
	.4byte 0xFFD30B1A
	.4byte 0xFFD480D3
	.4byte 0xFFD5F05E
	.4byte 0xFFD759EF
	.4byte 0xFFD8BDB7
	.4byte 0xFFDA1BE5
	.4byte 0xFFDB74A5
	.4byte 0xFFDCC821
	.4byte 0xFFDE1683
	.4byte 0xFFDF5FF0
	.4byte 0xFFE0A48E
	.4byte 0xFFE1E480
	.4byte 0xFFE31FE8
	.4byte 0xFFE456E7
	.4byte 0xFFE5899C
	.4byte 0xFFE6B825
	.4byte 0xFFE7E29E
	.4byte 0xFFE90923
	.4byte 0xFFEA2BCE
	.4byte 0xFFEB4AB9
	.4byte 0xFFEC65FD
	.4byte 0xFFED7DB0
	.4byte 0xFFEE91EA
	.4byte 0xFFEFA2C0
	.4byte 0xFFF0B047
	.4byte 0xFFF1BA94
	.4byte 0xFFF2C1BB
	.4byte 0xFFF3C5CD
	.4byte 0xFFF4C6DE
	.4byte 0xFFF5C4FE
	.4byte 0xFFF6C040
	.4byte 0xFFF7B8B2
	.4byte 0xFFF8AE66
	.4byte 0xFFF9A16B
	.4byte 0xFFFA91CF
	.4byte 0xFFFB7FA0
	.4byte 0xFFFC6AEE
	.4byte 0xFFFD53C4
	.4byte 0xFFFE3A31
	.4byte 0xFFFF1E41
	.4byte 0