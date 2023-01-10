.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global UpdateSpeaker__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext
UpdateSpeaker__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext:
/* 80321990 002EAF50  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80321994 002EAF54  7C 08 02 A6 */	mflr r0
/* 80321998 002EAF58  90 01 00 94 */	stw r0, 0x94(r1)
/* 8032199C 002EAF5C  39 61 00 90 */	addi r11, r1, 0x90
/* 803219A0 002EAF60  4B F9 87 B1 */	bl _savegpr_26
/* 803219A4 002EAF64  3C 60 80 5D */	lis r3, lbl_805CD748@ha
/* 803219A8 002EAF68  83 A3 D7 48 */	lwz r29, lbl_805CD748@l(r3)
/* 803219AC 002EAF6C  2C 1D 00 00 */	cmpwi r29, 0
/* 803219B0 002EAF70  41 82 02 34 */	beq .L_80321BE4
/* 803219B4 002EAF74  3B 80 00 00 */	li r28, 0
/* 803219B8 002EAF78  3B E0 00 00 */	li r31, 0
/* 803219BC 002EAF7C  3F C0 66 66 */	lis r30, 0x6666
/* 803219C0 002EAF80  3B 40 FF FF */	li r26, -1
.L_803219C4:
/* 803219C4 002EAF84  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 803219C8 002EAF88  2C 00 00 00 */	cmpwi r0, 0
/* 803219CC 002EAF8C  41 82 02 08 */	beq .L_80321BD4
/* 803219D0 002EAF90  7F 83 E3 78 */	mr r3, r28
/* 803219D4 002EAF94  48 04 B6 9D */	bl WPADIsSpeakerEnabled
/* 803219D8 002EAF98  2C 03 00 00 */	cmpwi r3, 0
/* 803219DC 002EAF9C  41 82 01 F8 */	beq .L_80321BD4
/* 803219E0 002EAFA0  48 03 6F D1 */	bl OSDisableInterrupts
/* 803219E4 002EAFA4  7C 7B 1B 78 */	mr r27, r3
/* 803219E8 002EAFA8  7F 83 E3 78 */	mr r3, r28
/* 803219EC 002EAFAC  48 04 CE A5 */	bl WPADCanSendStreamData
/* 803219F0 002EAFB0  2C 03 00 00 */	cmpwi r3, 0
/* 803219F4 002EAFB4  41 82 01 B8 */	beq .L_80321BAC
/* 803219F8 002EAFB8  80 1D 00 54 */	lwz r0, 0x54(r29)
/* 803219FC 002EAFBC  38 E1 00 20 */	addi r7, r1, 0x20
/* 80321A00 002EAFC0  89 1D 00 5D */	lbz r8, 0x5d(r29)
/* 80321A04 002EAFC4  38 A0 00 28 */	li r5, 0x28
/* 80321A08 002EAFC8  54 09 F8 7E */	srwi r9, r0, 1
/* 80321A0C 002EAFCC  80 DD 00 50 */	lwz r6, 0x50(r29)
/* 80321A10 002EAFD0  28 09 00 28 */	cmplwi r9, 0x28
/* 80321A14 002EAFD4  7D 08 07 74 */	extsb r8, r8
/* 80321A18 002EAFD8  41 81 00 08 */	bgt .L_80321A20
/* 80321A1C 002EAFDC  7D 25 4B 78 */	mr r5, r9
.L_80321A20:
/* 80321A20 002EAFE0  28 05 00 00 */	cmplwi r5, 0
/* 80321A24 002EAFE4  38 9E 66 67 */	addi r4, r30, 0x6667
/* 80321A28 002EAFE8  40 81 00 C0 */	ble .L_80321AE8
/* 80321A2C 002EAFEC  54 A0 F0 BF */	rlwinm. r0, r5, 0x1e, 2, 0x1f
/* 80321A30 002EAFF0  7C 09 03 A6 */	mtctr r0
/* 80321A34 002EAFF4  41 82 00 88 */	beq .L_80321ABC
.L_80321A38:
/* 80321A38 002EAFF8  A8 06 00 00 */	lha r0, 0(r6)
/* 80321A3C 002EAFFC  7C 00 41 D6 */	mullw r0, r0, r8
/* 80321A40 002EB000  7C 04 00 96 */	mulhw r0, r4, r0
/* 80321A44 002EB004  7C 00 16 70 */	srawi r0, r0, 2
/* 80321A48 002EB008  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80321A4C 002EB00C  7C 00 1A 14 */	add r0, r0, r3
/* 80321A50 002EB010  B0 07 00 00 */	sth r0, 0(r7)
/* 80321A54 002EB014  A8 06 00 02 */	lha r0, 2(r6)
/* 80321A58 002EB018  7C 00 41 D6 */	mullw r0, r0, r8
/* 80321A5C 002EB01C  7C 04 00 96 */	mulhw r0, r4, r0
/* 80321A60 002EB020  7C 00 16 70 */	srawi r0, r0, 2
/* 80321A64 002EB024  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80321A68 002EB028  7C 00 1A 14 */	add r0, r0, r3
/* 80321A6C 002EB02C  B0 07 00 02 */	sth r0, 2(r7)
/* 80321A70 002EB030  A8 06 00 04 */	lha r0, 4(r6)
/* 80321A74 002EB034  7C 00 41 D6 */	mullw r0, r0, r8
/* 80321A78 002EB038  7C 04 00 96 */	mulhw r0, r4, r0
/* 80321A7C 002EB03C  7C 00 16 70 */	srawi r0, r0, 2
/* 80321A80 002EB040  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80321A84 002EB044  7C 00 1A 14 */	add r0, r0, r3
/* 80321A88 002EB048  B0 07 00 04 */	sth r0, 4(r7)
/* 80321A8C 002EB04C  A8 06 00 06 */	lha r0, 6(r6)
/* 80321A90 002EB050  38 C6 00 08 */	addi r6, r6, 8
/* 80321A94 002EB054  7C 00 41 D6 */	mullw r0, r0, r8
/* 80321A98 002EB058  7C 04 00 96 */	mulhw r0, r4, r0
/* 80321A9C 002EB05C  7C 00 16 70 */	srawi r0, r0, 2
/* 80321AA0 002EB060  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80321AA4 002EB064  7C 00 1A 14 */	add r0, r0, r3
/* 80321AA8 002EB068  B0 07 00 06 */	sth r0, 6(r7)
/* 80321AAC 002EB06C  38 E7 00 08 */	addi r7, r7, 8
/* 80321AB0 002EB070  42 00 FF 88 */	bdnz .L_80321A38
/* 80321AB4 002EB074  70 A5 00 03 */	andi. r5, r5, 3
/* 80321AB8 002EB078  41 82 00 30 */	beq .L_80321AE8
.L_80321ABC:
/* 80321ABC 002EB07C  7C A9 03 A6 */	mtctr r5
.L_80321AC0:
/* 80321AC0 002EB080  A8 06 00 00 */	lha r0, 0(r6)
/* 80321AC4 002EB084  38 C6 00 02 */	addi r6, r6, 2
/* 80321AC8 002EB088  7C 00 41 D6 */	mullw r0, r0, r8
/* 80321ACC 002EB08C  7C 04 00 96 */	mulhw r0, r4, r0
/* 80321AD0 002EB090  7C 00 16 70 */	srawi r0, r0, 2
/* 80321AD4 002EB094  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80321AD8 002EB098  7C 00 1A 14 */	add r0, r0, r3
/* 80321ADC 002EB09C  B0 07 00 00 */	sth r0, 0(r7)
/* 80321AE0 002EB0A0  38 E7 00 02 */	addi r7, r7, 2
/* 80321AE4 002EB0A4  42 00 FF DC */	bdnz .L_80321AC0
.L_80321AE8:
/* 80321AE8 002EB0A8  28 09 00 28 */	cmplwi r9, 0x28
/* 80321AEC 002EB0AC  41 81 00 60 */	bgt .L_80321B4C
/* 80321AF0 002EB0B0  20 69 00 28 */	subfic r3, r9, 0x28
/* 80321AF4 002EB0B4  28 03 00 00 */	cmplwi r3, 0
/* 80321AF8 002EB0B8  40 81 00 54 */	ble .L_80321B4C
/* 80321AFC 002EB0BC  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 80321B00 002EB0C0  7C 09 03 A6 */	mtctr r0
/* 80321B04 002EB0C4  41 82 00 34 */	beq .L_80321B38
.L_80321B08:
/* 80321B08 002EB0C8  B3 E7 00 00 */	sth r31, 0(r7)
/* 80321B0C 002EB0CC  B3 E7 00 02 */	sth r31, 2(r7)
/* 80321B10 002EB0D0  B3 E7 00 04 */	sth r31, 4(r7)
/* 80321B14 002EB0D4  B3 E7 00 06 */	sth r31, 6(r7)
/* 80321B18 002EB0D8  B3 E7 00 08 */	sth r31, 8(r7)
/* 80321B1C 002EB0DC  B3 E7 00 0A */	sth r31, 0xa(r7)
/* 80321B20 002EB0E0  B3 E7 00 0C */	sth r31, 0xc(r7)
/* 80321B24 002EB0E4  B3 E7 00 0E */	sth r31, 0xe(r7)
/* 80321B28 002EB0E8  38 E7 00 10 */	addi r7, r7, 0x10
/* 80321B2C 002EB0EC  42 00 FF DC */	bdnz .L_80321B08
/* 80321B30 002EB0F0  70 63 00 07 */	andi. r3, r3, 7
/* 80321B34 002EB0F4  41 82 00 18 */	beq .L_80321B4C
.L_80321B38:
/* 80321B38 002EB0F8  7C 69 03 A6 */	mtctr r3
/* 80321B3C 002EB0FC  60 00 00 00 */	nop 
.L_80321B40:
/* 80321B40 002EB100  B3 E7 00 00 */	sth r31, 0(r7)
/* 80321B44 002EB104  38 E7 00 02 */	addi r7, r7, 2
/* 80321B48 002EB108  42 00 FF F8 */	bdnz .L_80321B40
.L_80321B4C:
/* 80321B4C 002EB10C  88 1D 00 5C */	lbz r0, 0x5c(r29)
/* 80321B50 002EB110  38 7D 00 30 */	addi r3, r29, 0x30
/* 80321B54 002EB114  38 A1 00 20 */	addi r5, r1, 0x20
/* 80321B58 002EB118  38 E1 00 08 */	addi r7, r1, 8
/* 80321B5C 002EB11C  7C 00 00 34 */	cntlzw r0, r0
/* 80321B60 002EB120  38 C0 00 28 */	li r6, 0x28
/* 80321B64 002EB124  54 04 D9 7E */	srwi r4, r0, 5
/* 80321B68 002EB128  48 04 6F 25 */	bl WENCGetEncodeData
/* 80321B6C 002EB12C  7F 83 E3 78 */	mr r3, r28
/* 80321B70 002EB130  38 81 00 08 */	addi r4, r1, 8
/* 80321B74 002EB134  38 A0 00 14 */	li r5, 0x14
/* 80321B78 002EB138  48 04 CD A9 */	bl WPADSendStreamData
/* 80321B7C 002EB13C  9B FD 00 5C */	stb r31, 0x5c(r29)
/* 80321B80 002EB140  9B FD 00 5E */	stb r31, 0x5e(r29)
/* 80321B84 002EB144  80 7D 00 50 */	lwz r3, 0x50(r29)
/* 80321B88 002EB148  38 03 00 50 */	addi r0, r3, 0x50
/* 80321B8C 002EB14C  90 1D 00 50 */	stw r0, 0x50(r29)
/* 80321B90 002EB150  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 80321B94 002EB154  34 03 FF B0 */	addic. r0, r3, -80
/* 80321B98 002EB158  90 1D 00 54 */	stw r0, 0x54(r29)
/* 80321B9C 002EB15C  41 81 00 30 */	bgt .L_80321BCC
/* 80321BA0 002EB160  93 5D 00 58 */	stw r26, 0x58(r29)
/* 80321BA4 002EB164  93 FD 00 50 */	stw r31, 0x50(r29)
/* 80321BA8 002EB168  48 00 00 24 */	b .L_80321BCC
.L_80321BAC:
/* 80321BAC 002EB16C  88 7D 00 5E */	lbz r3, 0x5e(r29)
/* 80321BB0 002EB170  38 03 00 01 */	addi r0, r3, 1
/* 80321BB4 002EB174  98 1D 00 5E */	stb r0, 0x5e(r29)
/* 80321BB8 002EB178  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80321BBC 002EB17C  7C 00 07 74 */	extsb r0, r0
/* 80321BC0 002EB180  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80321BC4 002EB184  40 81 00 08 */	ble .L_80321BCC
/* 80321BC8 002EB188  93 FD 00 50 */	stw r31, 0x50(r29)
.L_80321BCC:
/* 80321BCC 002EB18C  7F 63 DB 78 */	mr r3, r27
/* 80321BD0 002EB190  48 03 6E 21 */	bl OSRestoreInterrupts
.L_80321BD4:
/* 80321BD4 002EB194  3B 9C 00 01 */	addi r28, r28, 1
/* 80321BD8 002EB198  3B BD 00 68 */	addi r29, r29, 0x68
/* 80321BDC 002EB19C  2C 1C 00 04 */	cmpwi r28, 4
/* 80321BE0 002EB1A0  41 80 FD E4 */	blt .L_803219C4
.L_80321BE4:
/* 80321BE4 002EB1A4  39 61 00 90 */	addi r11, r1, 0x90
/* 80321BE8 002EB1A8  4B F9 85 B5 */	bl _restgpr_26
/* 80321BEC 002EB1AC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80321BF0 002EB1B0  7C 08 03 A6 */	mtlr r0
/* 80321BF4 002EB1B4  38 21 00 90 */	addi r1, r1, 0x90
/* 80321BF8 002EB1B8  4E 80 00 20 */	blr 

.balign 16, 0
.global ClearPcm__Q210homebutton9RemoteSpkFv
ClearPcm__Q210homebutton9RemoteSpkFv:
/* 80321C00 002EB1C0  38 80 00 00 */	li r4, 0
/* 80321C04 002EB1C4  38 00 FF FF */	li r0, -1
/* 80321C08 002EB1C8  90 83 00 50 */	stw r4, 0x50(r3)
/* 80321C0C 002EB1CC  90 03 00 58 */	stw r0, 0x58(r3)
/* 80321C10 002EB1D0  90 83 00 B8 */	stw r4, 0xb8(r3)
/* 80321C14 002EB1D4  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 80321C18 002EB1D8  90 83 01 20 */	stw r4, 0x120(r3)
/* 80321C1C 002EB1DC  90 03 01 28 */	stw r0, 0x128(r3)
/* 80321C20 002EB1E0  90 83 01 88 */	stw r4, 0x188(r3)
/* 80321C24 002EB1E4  90 03 01 90 */	stw r0, 0x190(r3)
/* 80321C28 002EB1E8  4E 80 00 20 */	blr 

.balign 16, 0
.global __ct__Q210homebutton9RemoteSpkFPv
__ct__Q210homebutton9RemoteSpkFPv:
/* 80321C30 002EB1F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80321C34 002EB1F4  7C 08 02 A6 */	mflr r0
/* 80321C38 002EB1F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80321C3C 002EB1FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80321C40 002EB200  4B F9 85 11 */	bl _savegpr_26
/* 80321C44 002EB204  3C A0 80 55 */	lis r5, __vt__homebutton_RemoteSpk@ha
/* 80321C48 002EB208  2C 04 00 00 */	cmpwi r4, 0
/* 80321C4C 002EB20C  38 A5 C4 F8 */	addi r5, r5, __vt__homebutton_RemoteSpk@l
/* 80321C50 002EB210  90 A3 01 F0 */	stw r5, 0x1f0(r3)
/* 80321C54 002EB214  3C A0 80 5D */	lis r5, lbl_805CD748@ha
/* 80321C58 002EB218  7C 7A 1B 78 */	mr r26, r3
/* 80321C5C 002EB21C  90 65 D7 48 */	stw r3, lbl_805CD748@l(r5)
/* 80321C60 002EB220  41 82 00 24 */	beq .L_80321C84
/* 80321C64 002EB224  7C 83 23 78 */	mr r3, r4
/* 80321C68 002EB228  38 9A 01 D0 */	addi r4, r26, 0x1d0
/* 80321C6C 002EB22C  4B FA FA 05 */	bl ARCInitHandle
/* 80321C70 002EB230  7C 03 00 D0 */	neg r0, r3
/* 80321C74 002EB234  7C 00 1B 78 */	or r0, r0, r3
/* 80321C78 002EB238  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80321C7C 002EB23C  98 1A 01 EC */	stb r0, 0x1ec(r26)
/* 80321C80 002EB240  48 00 00 0C */	b .L_80321C8C
.L_80321C84:
/* 80321C84 002EB244  38 00 00 00 */	li r0, 0
/* 80321C88 002EB248  98 03 01 EC */	stb r0, 0x1ec(r3)
.L_80321C8C:
/* 80321C8C 002EB24C  38 7A 01 A0 */	addi r3, r26, 0x1a0
/* 80321C90 002EB250  48 03 11 91 */	bl OSCreateAlarm
/* 80321C94 002EB254  7F 5C D3 78 */	mr r28, r26
/* 80321C98 002EB258  3B 60 00 00 */	li r27, 0
/* 80321C9C 002EB25C  3B A0 00 00 */	li r29, 0
/* 80321CA0 002EB260  3B C0 FF FF */	li r30, -1
/* 80321CA4 002EB264  3B E0 00 01 */	li r31, 1
.L_80321CA8:
/* 80321CA8 002EB268  7F 83 E3 78 */	mr r3, r28
/* 80321CAC 002EB26C  48 03 11 75 */	bl OSCreateAlarm
/* 80321CB0 002EB270  93 BC 00 50 */	stw r29, 0x50(r28)
/* 80321CB4 002EB274  3B 7B 00 01 */	addi r27, r27, 1
/* 80321CB8 002EB278  2C 1B 00 04 */	cmpwi r27, 4
/* 80321CBC 002EB27C  93 DC 00 58 */	stw r30, 0x58(r28)
/* 80321CC0 002EB280  9B FC 00 5C */	stb r31, 0x5c(r28)
/* 80321CC4 002EB284  9B FC 00 62 */	stb r31, 0x62(r28)
/* 80321CC8 002EB288  3B 9C 00 68 */	addi r28, r28, 0x68
/* 80321CCC 002EB28C  41 80 FF DC */	blt .L_80321CA8
/* 80321CD0 002EB290  39 61 00 20 */	addi r11, r1, 0x20
/* 80321CD4 002EB294  7F 43 D3 78 */	mr r3, r26
/* 80321CD8 002EB298  4B F9 84 C5 */	bl _restgpr_26
/* 80321CDC 002EB29C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80321CE0 002EB2A0  7C 08 03 A6 */	mtlr r0
/* 80321CE4 002EB2A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80321CE8 002EB2A8  4E 80 00 20 */	blr 

.balign 16, 0
.global __dt__Q210homebutton9RemoteSpkFv
__dt__Q210homebutton9RemoteSpkFv:
/* 80321CF0 002EB2B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80321CF4 002EB2B4  7C 08 02 A6 */	mflr r0
/* 80321CF8 002EB2B8  2C 03 00 00 */	cmpwi r3, 0
/* 80321CFC 002EB2BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80321D00 002EB2C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80321D04 002EB2C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80321D08 002EB2C8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80321D0C 002EB2CC  7C 9D 23 78 */	mr r29, r4
/* 80321D10 002EB2D0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80321D14 002EB2D4  7C 7C 1B 78 */	mr r28, r3
/* 80321D18 002EB2D8  41 82 00 58 */	beq .L_80321D70
/* 80321D1C 002EB2DC  3C A0 80 55 */	lis r5, __vt__homebutton_RemoteSpk@ha
/* 80321D20 002EB2E0  3C 80 80 5D */	lis r4, lbl_805CD748@ha
/* 80321D24 002EB2E4  38 A5 C4 F8 */	addi r5, r5, __vt__homebutton_RemoteSpk@l
/* 80321D28 002EB2E8  90 A3 01 F0 */	stw r5, 0x1f0(r3)
/* 80321D2C 002EB2EC  38 00 00 00 */	li r0, 0
/* 80321D30 002EB2F0  90 04 D7 48 */	stw r0, lbl_805CD748@l(r4)
/* 80321D34 002EB2F4  98 03 01 EC */	stb r0, 0x1ec(r3)
/* 80321D38 002EB2F8  38 63 01 A0 */	addi r3, r3, 0x1a0
/* 80321D3C 002EB2FC  48 03 14 45 */	bl OSCancelAlarm
/* 80321D40 002EB300  7F 9F E3 78 */	mr r31, r28
/* 80321D44 002EB304  3B C0 00 00 */	li r30, 0
.L_80321D48:
/* 80321D48 002EB308  7F E3 FB 78 */	mr r3, r31
/* 80321D4C 002EB30C  48 03 14 35 */	bl OSCancelAlarm
/* 80321D50 002EB310  3B DE 00 01 */	addi r30, r30, 1
/* 80321D54 002EB314  3B FF 00 68 */	addi r31, r31, 0x68
/* 80321D58 002EB318  2C 1E 00 04 */	cmpwi r30, 4
/* 80321D5C 002EB31C  41 80 FF EC */	blt .L_80321D48
/* 80321D60 002EB320  2C 1D 00 00 */	cmpwi r29, 0
/* 80321D64 002EB324  40 81 00 0C */	ble .L_80321D70
/* 80321D68 002EB328  7F 83 E3 78 */	mr r3, r28
/* 80321D6C 002EB32C  48 11 2E C1 */	bl __dl__FPv
.L_80321D70:
/* 80321D70 002EB330  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80321D74 002EB334  7F 83 E3 78 */	mr r3, r28
/* 80321D78 002EB338  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80321D7C 002EB33C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80321D80 002EB340  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80321D84 002EB344  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80321D88 002EB348  7C 08 03 A6 */	mtlr r0
/* 80321D8C 002EB34C  38 21 00 20 */	addi r1, r1, 0x20
/* 80321D90 002EB350  4E 80 00 20 */	blr 

.balign 16, 0
.global Start__Q210homebutton9RemoteSpkFv
Start__Q210homebutton9RemoteSpkFv:
/* 80321DA0 002EB360  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80321DA4 002EB364  7C 08 02 A6 */	mflr r0
/* 80321DA8 002EB368  90 01 00 24 */	stw r0, 0x24(r1)
/* 80321DAC 002EB36C  39 61 00 20 */	addi r11, r1, 0x20
/* 80321DB0 002EB370  4B F9 83 A5 */	bl _savegpr_27
/* 80321DB4 002EB374  88 03 01 EC */	lbz r0, 0x1ec(r3)
/* 80321DB8 002EB378  7C 7F 1B 78 */	mr r31, r3
/* 80321DBC 002EB37C  2C 00 00 00 */	cmpwi r0, 0
/* 80321DC0 002EB380  41 82 00 9C */	beq .L_80321E5C
/* 80321DC4 002EB384  38 63 01 A0 */	addi r3, r3, 0x1a0
/* 80321DC8 002EB388  48 03 10 59 */	bl OSCreateAlarm
/* 80321DCC 002EB38C  48 03 AB 95 */	bl OSGetTime
/* 80321DD0 002EB390  3C C0 80 00 */	lis r6, 0x800000F8@ha
/* 80321DD4 002EB394  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 80321DD8 002EB398  80 06 00 F8 */	lwz r0, 0x800000F8@l(r6)
/* 80321DDC 002EB39C  3C C0 10 62 */	lis r6, 0x10624DD3@ha
/* 80321DE0 002EB3A0  39 46 4D D3 */	addi r10, r6, 0x10624DD3@l
/* 80321DE4 002EB3A4  3D 20 80 32 */	lis r9, UpdateSpeaker__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext@ha
/* 80321DE8 002EB3A8  54 00 F0 BE */	srwi r0, r0, 2
/* 80321DEC 002EB3AC  38 A5 DE 83 */	addi r5, r5, 0x431BDE83@l
/* 80321DF0 002EB3B0  7D 05 00 16 */	mulhwu r8, r5, r0
/* 80321DF4 002EB3B4  3C E0 00 66 */	lis r7, 0x0065B9AB@ha
/* 80321DF8 002EB3B8  7C 86 23 78 */	mr r6, r4
/* 80321DFC 002EB3BC  38 07 B9 AB */	addi r0, r7, 0x0065B9AB@l
/* 80321E00 002EB3C0  7C 65 1B 78 */	mr r5, r3
/* 80321E04 002EB3C4  38 7F 01 A0 */	addi r3, r31, 0x1a0
/* 80321E08 002EB3C8  55 04 8B FE */	srwi r4, r8, 0xf
/* 80321E0C 002EB3CC  39 29 19 90 */	addi r9, r9, UpdateSpeaker__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext@l
/* 80321E10 002EB3D0  7C 04 01 D6 */	mullw r0, r4, r0
/* 80321E14 002EB3D4  38 E0 00 00 */	li r7, 0
/* 80321E18 002EB3D8  7C 0A 00 16 */	mulhwu r0, r10, r0
/* 80321E1C 002EB3DC  54 08 BA 7E */	srwi r8, r0, 9
/* 80321E20 002EB3E0  48 03 12 D1 */	bl OSSetPeriodicAlarm
/* 80321E24 002EB3E4  3B 60 00 00 */	li r27, 0
/* 80321E28 002EB3E8  3B 80 00 00 */	li r28, 0
/* 80321E2C 002EB3EC  3B A0 FF FF */	li r29, -1
/* 80321E30 002EB3F0  3B C0 00 01 */	li r30, 1
.L_80321E34:
/* 80321E34 002EB3F4  7F E3 FB 78 */	mr r3, r31
/* 80321E38 002EB3F8  48 03 0F E9 */	bl OSCreateAlarm
/* 80321E3C 002EB3FC  93 9F 00 50 */	stw r28, 0x50(r31)
/* 80321E40 002EB400  3B 7B 00 01 */	addi r27, r27, 1
/* 80321E44 002EB404  2C 1B 00 04 */	cmpwi r27, 4
/* 80321E48 002EB408  93 BF 00 58 */	stw r29, 0x58(r31)
/* 80321E4C 002EB40C  9B DF 00 5C */	stb r30, 0x5c(r31)
/* 80321E50 002EB410  9B DF 00 62 */	stb r30, 0x62(r31)
/* 80321E54 002EB414  3B FF 00 68 */	addi r31, r31, 0x68
/* 80321E58 002EB418  41 80 FF DC */	blt .L_80321E34
.L_80321E5C:
/* 80321E5C 002EB41C  39 61 00 20 */	addi r11, r1, 0x20
/* 80321E60 002EB420  4B F9 83 41 */	bl _restgpr_27
/* 80321E64 002EB424  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80321E68 002EB428  7C 08 03 A6 */	mtlr r0
/* 80321E6C 002EB42C  38 21 00 20 */	addi r1, r1, 0x20
/* 80321E70 002EB430  4E 80 00 20 */	blr 

.balign 16, 0
.global Stop__Q210homebutton9RemoteSpkFv
Stop__Q210homebutton9RemoteSpkFv:
/* 80321E80 002EB440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80321E84 002EB444  7C 08 02 A6 */	mflr r0
/* 80321E88 002EB448  90 01 00 14 */	stw r0, 0x14(r1)
/* 80321E8C 002EB44C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80321E90 002EB450  93 C1 00 08 */	stw r30, 8(r1)
/* 80321E94 002EB454  7C 7E 1B 78 */	mr r30, r3
/* 80321E98 002EB458  38 63 01 A0 */	addi r3, r3, 0x1a0
/* 80321E9C 002EB45C  48 03 12 E5 */	bl OSCancelAlarm
/* 80321EA0 002EB460  3B E0 00 00 */	li r31, 0
.L_80321EA4:
/* 80321EA4 002EB464  7F C3 F3 78 */	mr r3, r30
/* 80321EA8 002EB468  48 03 12 D9 */	bl OSCancelAlarm
/* 80321EAC 002EB46C  3B FF 00 01 */	addi r31, r31, 1
/* 80321EB0 002EB470  3B DE 00 68 */	addi r30, r30, 0x68
/* 80321EB4 002EB474  2C 1F 00 04 */	cmpwi r31, 4
/* 80321EB8 002EB478  41 80 FF EC */	blt .L_80321EA4
/* 80321EBC 002EB47C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80321EC0 002EB480  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80321EC4 002EB484  83 C1 00 08 */	lwz r30, 8(r1)
/* 80321EC8 002EB488  7C 08 03 A6 */	mtlr r0
/* 80321ECC 002EB48C  38 21 00 10 */	addi r1, r1, 0x10
/* 80321ED0 002EB490  4E 80 00 20 */	blr

.balign 16, 0
.global DelaySpeakerOnCallback
DelaySpeakerOnCallback:
/* 80321EE0 002EB4A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80321EE4 002EB4A4  7C 08 02 A6 */	mflr r0
/* 80321EE8 002EB4A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80321EEC 002EB4AC  48 03 16 D5 */	bl OSGetAlarmUserData
/* 80321EF0 002EB4B0  3C A0 80 32 */	lis r5, SpeakerOnCallback__Q210homebutton9RemoteSpkFll@ha
/* 80321EF4 002EB4B4  38 80 00 01 */	li r4, 1
/* 80321EF8 002EB4B8  38 A5 1F 10 */	addi r5, r5, SpeakerOnCallback__Q210homebutton9RemoteSpkFll@l
/* 80321EFC 002EB4BC  48 04 B1 C5 */	bl WPADControlSpeaker
/* 80321F00 002EB4C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80321F04 002EB4C4  7C 08 03 A6 */	mtlr r0
/* 80321F08 002EB4C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80321F0C 002EB4CC  4E 80 00 20 */	blr

.balign 16, 0
.global SpeakerOnCallback__Q210homebutton9RemoteSpkFll
SpeakerOnCallback__Q210homebutton9RemoteSpkFll:
/* 80321F10 002EB4D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80321F14 002EB4D4  7C 08 02 A6 */	mflr r0
/* 80321F18 002EB4D8  3C A0 80 5D */	lis r5, lbl_805CD748@ha
/* 80321F1C 002EB4DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80321F20 002EB4E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80321F24 002EB4E4  80 C5 D7 48 */	lwz r6, lbl_805CD748@l(r5)
/* 80321F28 002EB4E8  2C 06 00 00 */	cmpwi r6, 0
/* 80321F2C 002EB4EC  41 82 00 A8 */	beq .L_80321FD4
/* 80321F30 002EB4F0  2C 04 00 00 */	cmpwi r4, 0
/* 80321F34 002EB4F4  41 82 00 18 */	beq .L_80321F4C
/* 80321F38 002EB4F8  2C 04 FF FD */	cmpwi r4, -3
/* 80321F3C 002EB4FC  41 82 00 34 */	beq .L_80321F70
/* 80321F40 002EB500  2C 04 FF FE */	cmpwi r4, -2
/* 80321F44 002EB504  41 82 00 40 */	beq .L_80321F84
/* 80321F48 002EB508  48 00 00 8C */	b .L_80321FD4
.L_80321F4C:
/* 80321F4C 002EB50C  1C 03 00 68 */	mulli r0, r3, 0x68
/* 80321F50 002EB510  3C A0 80 32 */	lis r5, SpeakerOffCallback__Q210homebutton9RemoteSpkFll@ha
/* 80321F54 002EB514  38 E0 00 01 */	li r7, 1
/* 80321F58 002EB518  38 A5 20 20 */	addi r5, r5, SpeakerOffCallback__Q210homebutton9RemoteSpkFll@l
/* 80321F5C 002EB51C  7C C6 02 14 */	add r6, r6, r0
/* 80321F60 002EB520  38 80 00 04 */	li r4, 4
/* 80321F64 002EB524  98 E6 00 5C */	stb r7, 0x5c(r6)
/* 80321F68 002EB528  48 04 B1 59 */	bl WPADControlSpeaker
/* 80321F6C 002EB52C  48 00 00 68 */	b .L_80321FD4
.L_80321F70:
/* 80321F70 002EB530  1C 03 00 68 */	mulli r0, r3, 0x68
/* 80321F74 002EB534  38 80 00 00 */	li r4, 0
/* 80321F78 002EB538  7C 66 02 14 */	add r3, r6, r0
/* 80321F7C 002EB53C  98 83 00 62 */	stb r4, 0x62(r3)
/* 80321F80 002EB540  48 00 00 54 */	b .L_80321FD4
.L_80321F84:
/* 80321F84 002EB544  1C 03 00 68 */	mulli r0, r3, 0x68
/* 80321F88 002EB548  7C 64 1B 78 */	mr r4, r3
/* 80321F8C 002EB54C  7F E6 02 14 */	add r31, r6, r0
/* 80321F90 002EB550  7F E3 FB 78 */	mr r3, r31
/* 80321F94 002EB554  48 03 16 1D */	bl OSSetAlarmUserData
/* 80321F98 002EB558  7F E3 FB 78 */	mr r3, r31
/* 80321F9C 002EB55C  48 03 11 E5 */	bl OSCancelAlarm
/* 80321FA0 002EB560  3C 80 80 00 */	lis r4, 0x800000F8@ha
/* 80321FA4 002EB564  3C E0 80 32 */	lis r7, DelaySpeakerOnCallback@ha
/* 80321FA8 002EB568  80 04 00 F8 */	lwz r0, 0x800000F8@l(r4)
/* 80321FAC 002EB56C  3C 60 10 62 */	lis r3, 0x10624DD3@ha
/* 80321FB0 002EB570  38 83 4D D3 */	addi r4, r3, 0x10624DD3@l
/* 80321FB4 002EB574  38 E7 1E E0 */	addi r7, r7, DelaySpeakerOnCallback@l
/* 80321FB8 002EB578  54 00 F0 BE */	srwi r0, r0, 2
/* 80321FBC 002EB57C  7F E3 FB 78 */	mr r3, r31
/* 80321FC0 002EB580  7C 04 00 16 */	mulhwu r0, r4, r0
/* 80321FC4 002EB584  38 A0 00 00 */	li r5, 0
/* 80321FC8 002EB588  54 00 D1 BE */	srwi r0, r0, 6
/* 80321FCC 002EB58C  1C C0 00 32 */	mulli r6, r0, 0x32
/* 80321FD0 002EB590  48 03 10 B1 */	bl OSSetAlarm
.L_80321FD4:
/* 80321FD4 002EB594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80321FD8 002EB598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80321FDC 002EB59C  7C 08 03 A6 */	mtlr r0
/* 80321FE0 002EB5A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80321FE4 002EB5A4  4E 80 00 20 */	blr

.balign 16, 0
.global DelaySpeakerOffCallback__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext
DelaySpeakerOffCallback__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext:
/* 80321FF0 002EB5B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80321FF4 002EB5B4  7C 08 02 A6 */	mflr r0
/* 80321FF8 002EB5B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80321FFC 002EB5BC  48 03 15 C5 */	bl OSGetAlarmUserData
/* 80322000 002EB5C0  3C A0 80 32 */	lis r5, SpeakerOffCallback__Q210homebutton9RemoteSpkFll@ha
/* 80322004 002EB5C4  38 80 00 04 */	li r4, 4
/* 80322008 002EB5C8  38 A5 20 20 */	addi r5, r5, SpeakerOffCallback__Q210homebutton9RemoteSpkFll@l
/* 8032200C 002EB5CC  48 04 B0 B5 */	bl WPADControlSpeaker
/* 80322010 002EB5D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80322014 002EB5D4  7C 08 03 A6 */	mtlr r0
/* 80322018 002EB5D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8032201C 002EB5DC  4E 80 00 20 */	blr

.balign 16, 0
.global SpeakerOffCallback__Q210homebutton9RemoteSpkFll
SpeakerOffCallback__Q210homebutton9RemoteSpkFll:
/* 80322020 002EB5E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80322024 002EB5E4  7C 08 02 A6 */	mflr r0
/* 80322028 002EB5E8  3C A0 80 5D */	lis r5, lbl_805CD748@ha
/* 8032202C 002EB5EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80322030 002EB5F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80322034 002EB5F4  80 A5 D7 48 */	lwz r5, lbl_805CD748@l(r5)
/* 80322038 002EB5F8  2C 05 00 00 */	cmpwi r5, 0
/* 8032203C 002EB5FC  41 82 00 B4 */	beq .L_803220F0
/* 80322040 002EB600  2C 04 00 00 */	cmpwi r4, 0
/* 80322044 002EB604  41 82 00 20 */	beq .L_80322064
/* 80322048 002EB608  2C 04 FF FD */	cmpwi r4, -3
/* 8032204C 002EB60C  41 82 00 2C */	beq .L_80322078
/* 80322050 002EB610  2C 04 FF FF */	cmpwi r4, -1
/* 80322054 002EB614  41 82 00 38 */	beq .L_8032208C
/* 80322058 002EB618  2C 04 FF FE */	cmpwi r4, -2
/* 8032205C 002EB61C  41 82 00 44 */	beq .L_803220A0
/* 80322060 002EB620  48 00 00 90 */	b .L_803220F0
.L_80322064:
/* 80322064 002EB624  1C 03 00 68 */	mulli r0, r3, 0x68
/* 80322068 002EB628  38 80 00 01 */	li r4, 1
/* 8032206C 002EB62C  7C 65 02 14 */	add r3, r5, r0
/* 80322070 002EB630  98 83 00 62 */	stb r4, 0x62(r3)
/* 80322074 002EB634  48 00 00 7C */	b .L_803220F0
.L_80322078:
/* 80322078 002EB638  1C 03 00 68 */	mulli r0, r3, 0x68
/* 8032207C 002EB63C  38 80 00 00 */	li r4, 0
/* 80322080 002EB640  7C 65 02 14 */	add r3, r5, r0
/* 80322084 002EB644  98 83 00 62 */	stb r4, 0x62(r3)
/* 80322088 002EB648  48 00 00 68 */	b .L_803220F0
.L_8032208C:
/* 8032208C 002EB64C  1C 03 00 68 */	mulli r0, r3, 0x68
/* 80322090 002EB650  38 80 00 00 */	li r4, 0
/* 80322094 002EB654  7C 65 02 14 */	add r3, r5, r0
/* 80322098 002EB658  98 83 00 62 */	stb r4, 0x62(r3)
/* 8032209C 002EB65C  48 00 00 54 */	b .L_803220F0
.L_803220A0:
/* 803220A0 002EB660  1C 03 00 68 */	mulli r0, r3, 0x68
/* 803220A4 002EB664  7C 64 1B 78 */	mr r4, r3
/* 803220A8 002EB668  7F E5 02 14 */	add r31, r5, r0
/* 803220AC 002EB66C  7F E3 FB 78 */	mr r3, r31
/* 803220B0 002EB670  48 03 15 01 */	bl OSSetAlarmUserData
/* 803220B4 002EB674  7F E3 FB 78 */	mr r3, r31
/* 803220B8 002EB678  48 03 10 C9 */	bl OSCancelAlarm
/* 803220BC 002EB67C  3C 80 80 00 */	lis r4, 0x800000F8@ha
/* 803220C0 002EB680  3C E0 80 32 */	lis r7, DelaySpeakerOffCallback__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext@ha
/* 803220C4 002EB684  80 04 00 F8 */	lwz r0, 0x800000F8@l(r4)
/* 803220C8 002EB688  3C 60 10 62 */	lis r3, 0x10624DD3@ha
/* 803220CC 002EB68C  38 83 4D D3 */	addi r4, r3, 0x10624DD3@l
/* 803220D0 002EB690  38 E7 1F F0 */	addi r7, r7, DelaySpeakerOffCallback__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext@l
/* 803220D4 002EB694  54 00 F0 BE */	srwi r0, r0, 2
/* 803220D8 002EB698  7F E3 FB 78 */	mr r3, r31
/* 803220DC 002EB69C  7C 04 00 16 */	mulhwu r0, r4, r0
/* 803220E0 002EB6A0  38 A0 00 00 */	li r5, 0
/* 803220E4 002EB6A4  54 00 D1 BE */	srwi r0, r0, 6
/* 803220E8 002EB6A8  1C C0 00 32 */	mulli r6, r0, 0x32
/* 803220EC 002EB6AC  48 03 0F 95 */	bl OSSetAlarm
.L_803220F0:
/* 803220F0 002EB6B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803220F4 002EB6B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803220F8 002EB6B8  7C 08 03 A6 */	mtlr r0
/* 803220FC 002EB6BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80322100 002EB6C0  4E 80 00 20 */	blr 

.balign 16, 0
.global Disconnect__Q210homebutton9RemoteSpkFl
Disconnect__Q210homebutton9RemoteSpkFl:
/* 80322110 002EB6D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80322114 002EB6D4  7C 08 02 A6 */	mflr r0
/* 80322118 002EB6D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032211C 002EB6DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80322120 002EB6E0  7C 9F 23 78 */	mr r31, r4
/* 80322124 002EB6E4  93 C1 00 08 */	stw r30, 8(r1)
/* 80322128 002EB6E8  7C 7E 1B 78 */	mr r30, r3
/* 8032212C 002EB6EC  88 03 01 EC */	lbz r0, 0x1ec(r3)
/* 80322130 002EB6F0  2C 00 00 00 */	cmpwi r0, 0
/* 80322134 002EB6F4  41 82 00 50 */	beq .L_80322184
/* 80322138 002EB6F8  3C A0 80 32 */	lis r5, SpeakerOnCallback__Q210homebutton9RemoteSpkFll@ha
/* 8032213C 002EB6FC  7F E3 FB 78 */	mr r3, r31
/* 80322140 002EB700  38 A5 1F 10 */	addi r5, r5, SpeakerOnCallback__Q210homebutton9RemoteSpkFll@l
/* 80322144 002EB704  38 80 00 01 */	li r4, 1
/* 80322148 002EB708  48 04 AF 79 */	bl WPADControlSpeaker
/* 8032214C 002EB70C  1C 9F 00 68 */	mulli r4, r31, 0x68
/* 80322150 002EB710  38 60 00 00 */	li r3, 0
/* 80322154 002EB714  38 00 00 01 */	li r0, 1
/* 80322158 002EB718  7C 9E 22 14 */	add r4, r30, r4
/* 8032215C 002EB71C  90 64 00 30 */	stw r3, 0x30(r4)
/* 80322160 002EB720  90 64 00 34 */	stw r3, 0x34(r4)
/* 80322164 002EB724  90 64 00 38 */	stw r3, 0x38(r4)
/* 80322168 002EB728  90 64 00 3C */	stw r3, 0x3c(r4)
/* 8032216C 002EB72C  90 64 00 40 */	stw r3, 0x40(r4)
/* 80322170 002EB730  90 64 00 44 */	stw r3, 0x44(r4)
/* 80322174 002EB734  90 64 00 48 */	stw r3, 0x48(r4)
/* 80322178 002EB738  90 64 00 4C */	stw r3, 0x4c(r4)
/* 8032217C 002EB73C  98 04 00 5C */	stb r0, 0x5c(r4)
/* 80322180 002EB740  98 64 00 62 */	stb r3, 0x62(r4)
.L_80322184:
/* 80322184 002EB744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80322188 002EB748  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032218C 002EB74C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80322190 002EB750  7C 08 03 A6 */	mtlr r0
/* 80322194 002EB754  38 21 00 10 */	addi r1, r1, 0x10
/* 80322198 002EB758  4E 80 00 20 */	blr 

.balign 16, 0
.global Play__Q210homebutton9RemoteSpkFliSc
Play__Q210homebutton9RemoteSpkFliSc:
/* 803221A0 002EB760  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803221A4 002EB764  7C 08 02 A6 */	mflr r0
/* 803221A8 002EB768  90 01 00 34 */	stw r0, 0x34(r1)
/* 803221AC 002EB76C  39 61 00 30 */	addi r11, r1, 0x30
/* 803221B0 002EB770  4B F9 7F A1 */	bl _savegpr_26
/* 803221B4 002EB774  88 03 01 EC */	lbz r0, 0x1ec(r3)
/* 803221B8 002EB778  7C 7A 1B 78 */	mr r26, r3
/* 803221BC 002EB77C  7C 9B 23 78 */	mr r27, r4
/* 803221C0 002EB780  7C BC 2B 78 */	mr r28, r5
/* 803221C4 002EB784  2C 00 00 00 */	cmpwi r0, 0
/* 803221C8 002EB788  7C DD 33 78 */	mr r29, r6
/* 803221CC 002EB78C  41 82 00 54 */	beq .L_80322220
/* 803221D0 002EB790  7F 84 E3 78 */	mr r4, r28
/* 803221D4 002EB794  38 A1 00 08 */	addi r5, r1, 8
/* 803221D8 002EB798  38 63 01 D0 */	addi r3, r3, 0x1d0
/* 803221DC 002EB79C  4B FA F7 E5 */	bl ARCFastOpen
/* 803221E0 002EB7A0  38 61 00 08 */	addi r3, r1, 8
/* 803221E4 002EB7A4  4B FA FC 7D */	bl ARCGetStartAddrInMem
/* 803221E8 002EB7A8  7C 7E 1B 78 */	mr r30, r3
/* 803221EC 002EB7AC  38 61 00 08 */	addi r3, r1, 8
/* 803221F0 002EB7B0  4B FA FC 91 */	bl ARCGetLength
/* 803221F4 002EB7B4  7C 7F 1B 78 */	mr r31, r3
/* 803221F8 002EB7B8  38 61 00 08 */	addi r3, r1, 8
/* 803221FC 002EB7BC  4B FA FC 95 */	bl ARCClose
/* 80322200 002EB7C0  1C 7B 00 68 */	mulli r3, r27, 0x68
/* 80322204 002EB7C4  38 00 00 00 */	li r0, 0
/* 80322208 002EB7C8  7C 7A 1A 14 */	add r3, r26, r3
/* 8032220C 002EB7CC  98 03 00 5E */	stb r0, 0x5e(r3)
/* 80322210 002EB7D0  93 83 00 58 */	stw r28, 0x58(r3)
/* 80322214 002EB7D4  93 E3 00 54 */	stw r31, 0x54(r3)
/* 80322218 002EB7D8  9B A3 00 5D */	stb r29, 0x5d(r3)
/* 8032221C 002EB7DC  93 C3 00 50 */	stw r30, 0x50(r3)
.L_80322220:
/* 80322220 002EB7E0  39 61 00 30 */	addi r11, r1, 0x30
/* 80322224 002EB7E4  4B F9 7F 79 */	bl _restgpr_26
/* 80322228 002EB7E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8032222C 002EB7EC  7C 08 03 A6 */	mtlr r0
/* 80322230 002EB7F0  38 21 00 30 */	addi r1, r1, 0x30
/* 80322234 002EB7F4  4E 80 00 20 */	blr 

.balign 16, 0
.global isPlaying__Q210homebutton9RemoteSpkCFl
isPlaying__Q210homebutton9RemoteSpkCFl:
/* 80322240 002EB800  1C 04 00 68 */	mulli r0, r4, 0x68
/* 80322244 002EB804  7C 63 02 14 */	add r3, r3, r0
/* 80322248 002EB808  80 63 00 50 */	lwz r3, 0x50(r3)
/* 8032224C 002EB80C  7C 03 00 D0 */	neg r0, r3
/* 80322250 002EB810  7C 00 1B 78 */	or r0, r0, r3
/* 80322254 002EB814  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80322258 002EB818  4E 80 00 20 */	blr 

.balign 16, 0
.global isPlayingId__Q210homebutton9RemoteSpkCFli
isPlayingId__Q210homebutton9RemoteSpkCFli:
/* 80322260 002EB820  1C 04 00 68 */	mulli r0, r4, 0x68
/* 80322264 002EB824  7C 63 02 14 */	add r3, r3, r0
/* 80322268 002EB828  80 03 00 50 */	lwz r0, 0x50(r3)
/* 8032226C 002EB82C  2C 00 00 00 */	cmpwi r0, 0
/* 80322270 002EB830  41 82 00 18 */	beq .L_80322288
/* 80322274 002EB834  80 03 00 58 */	lwz r0, 0x58(r3)
/* 80322278 002EB838  7C 05 00 00 */	cmpw r5, r0
/* 8032227C 002EB83C  40 82 00 0C */	bne .L_80322288
/* 80322280 002EB840  38 60 00 01 */	li r3, 1
/* 80322284 002EB844  4E 80 00 20 */	blr
.L_80322288:
/* 80322288 002EB848  38 60 00 00 */	li r3, 0
/* 8032228C 002EB84C  4E 80 00 20 */	blr


.balign 16, 0
.global isPlayReady__Q210homebutton9RemoteSpkCFl
isPlayReady__Q210homebutton9RemoteSpkCFl:
/* 80322290 002EB850  1C 04 00 68 */	mulli r0, r4, 0x68
/* 80322294 002EB854  7C 63 02 14 */	add r3, r3, r0
/* 80322298 002EB858  88 63 00 62 */	lbz r3, 0x62(r3)
/* 8032229C 002EB85C  7C 03 00 D0 */	neg r0, r3
/* 803222A0 002EB860  7C 00 1B 78 */	or r0, r0, r3
/* 803222A4 002EB864  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803222A8 002EB868  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global __vt__homebutton_RemoteSpk
__vt__homebutton_RemoteSpk:
	.4byte __RTTI__homebutton_RemoteSpk
	.4byte 0
	.4byte __dt__Q210homebutton9RemoteSpkFv

.global homebutton_RemoteSpk_typestr
homebutton_RemoteSpk_typestr:
	.asciz "homebutton::RemoteSpk"
	.balign 4
	.4byte 0

.global __RTTI__homebutton_RemoteSpk
__RTTI__homebutton_RemoteSpk:
	.4byte homebutton_RemoteSpk_typestr
	.4byte 0

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.global lbl_805CD748
lbl_805CD748:
	.skip 0x8