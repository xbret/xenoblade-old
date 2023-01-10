.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global ESP_InitLib
ESP_InitLib:
/* 80313750 002DCD10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80313754 002DCD14  7C 08 02 A6 */	mflr r0
/* 80313758 002DCD18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031375C 002DCD1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80313760 002DCD20  3B E0 00 00 */	li r31, 0
/* 80313764 002DCD24  80 0D 98 48 */	lwz r0, lbl_806659C8@sda21(r13)
/* 80313768 002DCD28  2C 00 00 00 */	cmpwi r0, 0
/* 8031376C 002DCD2C  40 80 00 20 */	bge .L_8031378C
/* 80313770 002DCD30  38 6D 98 50 */	addi r3, r13, lbl_806659D0@sda21
/* 80313774 002DCD34  38 80 00 00 */	li r4, 0
/* 80313778 002DCD38  48 02 FC 19 */	bl IOS_Open
/* 8031377C 002DCD3C  2C 03 00 00 */	cmpwi r3, 0
/* 80313780 002DCD40  90 6D 98 48 */	stw r3, lbl_806659C8@sda21(r13)
/* 80313784 002DCD44  40 80 00 08 */	bge .L_8031378C
/* 80313788 002DCD48  7C 7F 1B 78 */	mr r31, r3
.L_8031378C:
/* 8031378C 002DCD4C  7F E3 FB 78 */	mr r3, r31
/* 80313790 002DCD50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80313794 002DCD54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80313798 002DCD58  7C 08 03 A6 */	mtlr r0
/* 8031379C 002DCD5C  38 21 00 10 */	addi r1, r1, 0x10
/* 803137A0 002DCD60  4E 80 00 20 */	blr 

.balign 16, 0
.global ESP_CloseLib
ESP_CloseLib:
/* 803137B0 002DCD70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803137B4 002DCD74  7C 08 02 A6 */	mflr r0
/* 803137B8 002DCD78  38 80 00 00 */	li r4, 0
/* 803137BC 002DCD7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803137C0 002DCD80  80 6D 98 48 */	lwz r3, lbl_806659C8@sda21(r13)
/* 803137C4 002DCD84  2C 03 00 00 */	cmpwi r3, 0
/* 803137C8 002DCD88  41 80 00 1C */	blt .L_803137E4
/* 803137CC 002DCD8C  48 02 FD B5 */	bl IOS_Close
/* 803137D0 002DCD90  2C 03 00 00 */	cmpwi r3, 0
/* 803137D4 002DCD94  7C 64 1B 78 */	mr r4, r3
/* 803137D8 002DCD98  40 82 00 0C */	bne .L_803137E4
/* 803137DC 002DCD9C  38 00 FF FF */	li r0, -1
/* 803137E0 002DCDA0  90 0D 98 48 */	stw r0, lbl_806659C8@sda21(r13)
.L_803137E4:
/* 803137E4 002DCDA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803137E8 002DCDA8  7C 83 23 78 */	mr r3, r4
/* 803137EC 002DCDAC  7C 08 03 A6 */	mtlr r0
/* 803137F0 002DCDB0  38 21 00 10 */	addi r1, r1, 0x10
/* 803137F4 002DCDB4  4E 80 00 20 */	blr 

.balign 16, 0
.global ESP_LaunchTitle
ESP_LaunchTitle:
/* 80313800 002DCDC0  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 80313804 002DCDC4  7C 2C 0B 78 */	mr r12, r1
/* 80313808 002DCDC8  21 6B FE E0 */	subfic r11, r11, -288
/* 8031380C 002DCDCC  7C 21 59 6E */	stwux r1, r1, r11
/* 80313810 002DCDD0  7C 08 02 A6 */	mflr r0
/* 80313814 002DCDD4  90 0C 00 04 */	stw r0, 4(r12)
/* 80313818 002DCDD8  38 E1 00 F0 */	addi r7, r1, 0xf0
/* 8031381C 002DCDDC  39 21 00 20 */	addi r9, r1, 0x20
/* 80313820 002DCDE0  80 CD 98 48 */	lwz r6, lbl_806659C8@sda21(r13)
/* 80313824 002DCDE4  2C 06 00 00 */	cmpwi r6, 0
/* 80313828 002DCDE8  40 80 00 0C */	bge .L_80313834
/* 8031382C 002DCDEC  38 60 FC 07 */	li r3, -1017
/* 80313830 002DCDF0  48 00 00 50 */	b .L_80313880
.L_80313834:
/* 80313834 002DCDF4  54 A0 06 FF */	clrlwi. r0, r5, 0x1b
/* 80313838 002DCDF8  41 82 00 0C */	beq .L_80313844
/* 8031383C 002DCDFC  38 60 FC 07 */	li r3, -1017
/* 80313840 002DCE00  48 00 00 40 */	b .L_80313880
.L_80313844:
/* 80313844 002DCE04  90 81 00 24 */	stw r4, 0x24(r1)
/* 80313848 002DCE08  39 00 00 08 */	li r8, 8
/* 8031384C 002DCE0C  38 00 00 D8 */	li r0, 0xd8
/* 80313850 002DCE10  38 80 00 08 */	li r4, 8
/* 80313854 002DCE14  90 61 00 20 */	stw r3, 0x20(r1)
/* 80313858 002DCE18  7C C3 33 78 */	mr r3, r6
/* 8031385C 002DCE1C  38 C0 00 00 */	li r6, 0
/* 80313860 002DCE20  90 A1 00 F8 */	stw r5, 0xf8(r1)
/* 80313864 002DCE24  38 A0 00 02 */	li r5, 2
/* 80313868 002DCE28  91 21 00 F0 */	stw r9, 0xf0(r1)
/* 8031386C 002DCE2C  91 01 00 F4 */	stw r8, 0xf4(r1)
/* 80313870 002DCE30  90 01 00 FC */	stw r0, 0xfc(r1)
/* 80313874 002DCE34  48 03 08 3D */	bl IOS_IoctlvReboot
/* 80313878 002DCE38  38 00 FF FF */	li r0, -1
/* 8031387C 002DCE3C  90 0D 98 48 */	stw r0, lbl_806659C8@sda21(r13)
.L_80313880:
/* 80313880 002DCE40  81 41 00 00 */	lwz r10, 0(r1)
/* 80313884 002DCE44  80 0A 00 04 */	lwz r0, 4(r10)
/* 80313888 002DCE48  7C 08 03 A6 */	mtlr r0
/* 8031388C 002DCE4C  7D 41 53 78 */	mr r1, r10
/* 80313890 002DCE50  4E 80 00 20 */	blr 

.balign 16, 0
.global ESP_GetTicketViews
ESP_GetTicketViews:
/* 803138A0 002DCE60  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 803138A4 002DCE64  7C 2C 0B 78 */	mr r12, r1
/* 803138A8 002DCE68  21 6B FE C0 */	subfic r11, r11, -320
/* 803138AC 002DCE6C  7C 21 59 6E */	stwux r1, r1, r11
/* 803138B0 002DCE70  7C 08 02 A6 */	mflr r0
/* 803138B4 002DCE74  90 0C 00 04 */	stw r0, 4(r12)
/* 803138B8 002DCE78  38 E1 00 F0 */	addi r7, r1, 0xf0
/* 803138BC 002DCE7C  39 41 00 20 */	addi r10, r1, 0x20
/* 803138C0 002DCE80  39 61 00 40 */	addi r11, r1, 0x40
/* 803138C4 002DCE84  93 EC FF FC */	stw r31, -4(r12)
/* 803138C8 002DCE88  7C DF 33 78 */	mr r31, r6
/* 803138CC 002DCE8C  81 2D 98 48 */	lwz r9, lbl_806659C8@sda21(r13)
/* 803138D0 002DCE90  2C 09 00 00 */	cmpwi r9, 0
/* 803138D4 002DCE94  41 80 00 10 */	blt .L_803138E4
/* 803138D8 002DCE98  39 00 00 00 */	li r8, 0
/* 803138DC 002DCE9C  7C 06 40 40 */	cmplw r6, r8
/* 803138E0 002DCEA0  40 82 00 0C */	bne .L_803138EC
.L_803138E4:
/* 803138E4 002DCEA4  38 60 FC 07 */	li r3, -1017
/* 803138E8 002DCEA8  48 00 00 B4 */	b .L_8031399C
.L_803138EC:
/* 803138EC 002DCEAC  54 A0 06 FF */	clrlwi. r0, r5, 0x1b
/* 803138F0 002DCEB0  41 82 00 0C */	beq .L_803138FC
/* 803138F4 002DCEB4  38 60 FC 07 */	li r3, -1017
/* 803138F8 002DCEB8  48 00 00 A4 */	b .L_8031399C
.L_803138FC:
/* 803138FC 002DCEBC  7C 05 40 40 */	cmplw r5, r8
/* 80313900 002DCEC0  90 81 00 24 */	stw r4, 0x24(r1)
/* 80313904 002DCEC4  90 61 00 20 */	stw r3, 0x20(r1)
/* 80313908 002DCEC8  40 82 00 44 */	bne .L_8031394C
/* 8031390C 002DCECC  38 A0 00 08 */	li r5, 8
/* 80313910 002DCED0  38 00 00 04 */	li r0, 4
/* 80313914 002DCED4  90 A1 00 F4 */	stw r5, 0xf4(r1)
/* 80313918 002DCED8  7D 23 4B 78 */	mr r3, r9
/* 8031391C 002DCEDC  38 80 00 12 */	li r4, 0x12
/* 80313920 002DCEE0  38 A0 00 01 */	li r5, 1
/* 80313924 002DCEE4  91 41 00 F0 */	stw r10, 0xf0(r1)
/* 80313928 002DCEE8  38 C0 00 01 */	li r6, 1
/* 8031392C 002DCEEC  91 61 00 F8 */	stw r11, 0xf8(r1)
/* 80313930 002DCEF0  90 01 00 FC */	stw r0, 0xfc(r1)
/* 80313934 002DCEF4  48 03 06 9D */	bl IOS_Ioctlv
/* 80313938 002DCEF8  2C 03 00 00 */	cmpwi r3, 0
/* 8031393C 002DCEFC  40 82 00 60 */	bne .L_8031399C
/* 80313940 002DCF00  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80313944 002DCF04  90 1F 00 00 */	stw r0, 0(r31)
/* 80313948 002DCF08  48 00 00 54 */	b .L_8031399C
.L_8031394C:
/* 8031394C 002DCF0C  80 66 00 00 */	lwz r3, 0(r6)
/* 80313950 002DCF10  2C 03 00 00 */	cmpwi r3, 0
/* 80313954 002DCF14  40 82 00 0C */	bne .L_80313960
/* 80313958 002DCF18  38 60 FC 07 */	li r3, -1017
/* 8031395C 002DCF1C  48 00 00 40 */	b .L_8031399C
.L_80313960:
/* 80313960 002DCF20  1C 03 00 D8 */	mulli r0, r3, 0xd8
/* 80313964 002DCF24  90 A1 01 00 */	stw r5, 0x100(r1)
/* 80313968 002DCF28  38 C0 00 08 */	li r6, 8
/* 8031396C 002DCF2C  39 00 00 04 */	li r8, 4
/* 80313970 002DCF30  90 61 00 40 */	stw r3, 0x40(r1)
/* 80313974 002DCF34  7D 23 4B 78 */	mr r3, r9
/* 80313978 002DCF38  90 C1 00 F4 */	stw r6, 0xf4(r1)
/* 8031397C 002DCF3C  38 80 00 13 */	li r4, 0x13
/* 80313980 002DCF40  38 A0 00 02 */	li r5, 2
/* 80313984 002DCF44  38 C0 00 01 */	li r6, 1
/* 80313988 002DCF48  91 41 00 F0 */	stw r10, 0xf0(r1)
/* 8031398C 002DCF4C  91 61 00 F8 */	stw r11, 0xf8(r1)
/* 80313990 002DCF50  91 01 00 FC */	stw r8, 0xfc(r1)
/* 80313994 002DCF54  90 01 01 04 */	stw r0, 0x104(r1)
/* 80313998 002DCF58  48 03 06 39 */	bl IOS_Ioctlv
.L_8031399C:
/* 8031399C 002DCF5C  81 41 00 00 */	lwz r10, 0(r1)
/* 803139A0 002DCF60  80 0A 00 04 */	lwz r0, 4(r10)
/* 803139A4 002DCF64  83 EA FF FC */	lwz r31, -4(r10)
/* 803139A8 002DCF68  7C 08 03 A6 */	mtlr r0
/* 803139AC 002DCF6C  7D 41 53 78 */	mr r1, r10
/* 803139B0 002DCF70  4E 80 00 20 */	blr 

.balign 16, 0
.global ESP_DiGetTicketView
ESP_DiGetTicketView:
/* 803139C0 002DCF80  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 803139C4 002DCF84  7C 2C 0B 78 */	mr r12, r1
/* 803139C8 002DCF88  21 6B FE E0 */	subfic r11, r11, -288
/* 803139CC 002DCF8C  7C 21 59 6E */	stwux r1, r1, r11
/* 803139D0 002DCF90  7C 08 02 A6 */	mflr r0
/* 803139D4 002DCF94  90 0C 00 04 */	stw r0, 4(r12)
/* 803139D8 002DCF98  38 E1 00 F0 */	addi r7, r1, 0xf0
/* 803139DC 002DCF9C  80 0D 98 48 */	lwz r0, lbl_806659C8@sda21(r13)
/* 803139E0 002DCFA0  2C 00 00 00 */	cmpwi r0, 0
/* 803139E4 002DCFA4  41 80 00 10 */	blt .L_803139F4
/* 803139E8 002DCFA8  38 A0 00 00 */	li r5, 0
/* 803139EC 002DCFAC  7C 04 28 40 */	cmplw r4, r5
/* 803139F0 002DCFB0  40 82 00 0C */	bne .L_803139FC
.L_803139F4:
/* 803139F4 002DCFB4  38 60 FC 07 */	li r3, -1017
/* 803139F8 002DCFB8  48 00 00 58 */	b .L_80313A50
.L_803139FC:
/* 803139FC 002DCFBC  54 60 06 FF */	clrlwi. r0, r3, 0x1b
/* 80313A00 002DCFC0  40 82 00 0C */	bne .L_80313A0C
/* 80313A04 002DCFC4  54 80 06 FF */	clrlwi. r0, r4, 0x1b
/* 80313A08 002DCFC8  41 82 00 0C */	beq .L_80313A14
.L_80313A0C:
/* 80313A0C 002DCFCC  38 60 FC 07 */	li r3, -1017
/* 80313A10 002DCFD0  48 00 00 40 */	b .L_80313A50
.L_80313A14:
/* 80313A14 002DCFD4  7C 03 28 40 */	cmplw r3, r5
/* 80313A18 002DCFD8  90 61 00 F0 */	stw r3, 0xf0(r1)
/* 80313A1C 002DCFDC  40 82 00 0C */	bne .L_80313A28
/* 80313A20 002DCFE0  90 A1 00 F4 */	stw r5, 0xf4(r1)
/* 80313A24 002DCFE4  48 00 00 0C */	b .L_80313A30
.L_80313A28:
/* 80313A28 002DCFE8  38 00 02 A4 */	li r0, 0x2a4
/* 80313A2C 002DCFEC  90 01 00 F4 */	stw r0, 0xf4(r1)
.L_80313A30:
/* 80313A30 002DCFF0  90 81 00 F8 */	stw r4, 0xf8(r1)
/* 80313A34 002DCFF4  38 00 00 D8 */	li r0, 0xd8
/* 80313A38 002DCFF8  80 6D 98 48 */	lwz r3, lbl_806659C8@sda21(r13)
/* 80313A3C 002DCFFC  38 80 00 1B */	li r4, 0x1b
/* 80313A40 002DD000  90 01 00 FC */	stw r0, 0xfc(r1)
/* 80313A44 002DD004  38 A0 00 01 */	li r5, 1
/* 80313A48 002DD008  38 C0 00 01 */	li r6, 1
/* 80313A4C 002DD00C  48 03 05 85 */	bl IOS_Ioctlv
.L_80313A50:
/* 80313A50 002DD010  81 41 00 00 */	lwz r10, 0(r1)
/* 80313A54 002DD014  80 0A 00 04 */	lwz r0, 4(r10)
/* 80313A58 002DD018  7C 08 03 A6 */	mtlr r0
/* 80313A5C 002DD01C  7D 41 53 78 */	mr r1, r10
/* 80313A60 002DD020  4E 80 00 20 */	blr 

.balign 16, 0
.global ESP_DiGetTmd
ESP_DiGetTmd:
/* 80313A70 002DD030  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 80313A74 002DD034  7C 2C 0B 78 */	mr r12, r1
/* 80313A78 002DD038  21 6B FE C0 */	subfic r11, r11, -320
/* 80313A7C 002DD03C  7C 21 59 6E */	stwux r1, r1, r11
/* 80313A80 002DD040  7C 08 02 A6 */	mflr r0
/* 80313A84 002DD044  90 0C 00 04 */	stw r0, 4(r12)
/* 80313A88 002DD048  38 E1 00 F0 */	addi r7, r1, 0xf0
/* 80313A8C 002DD04C  39 21 00 20 */	addi r9, r1, 0x20
/* 80313A90 002DD050  93 EC FF FC */	stw r31, -4(r12)
/* 80313A94 002DD054  7C 9F 23 78 */	mr r31, r4
/* 80313A98 002DD058  80 CD 98 48 */	lwz r6, lbl_806659C8@sda21(r13)
/* 80313A9C 002DD05C  2C 06 00 00 */	cmpwi r6, 0
/* 80313AA0 002DD060  41 80 00 10 */	blt .L_80313AB0
/* 80313AA4 002DD064  38 A0 00 00 */	li r5, 0
/* 80313AA8 002DD068  7C 04 28 40 */	cmplw r4, r5
/* 80313AAC 002DD06C  40 82 00 0C */	bne .L_80313AB8
.L_80313AB0:
/* 80313AB0 002DD070  38 60 FC 07 */	li r3, -1017
/* 80313AB4 002DD074  48 00 00 90 */	b .L_80313B44
.L_80313AB8:
/* 80313AB8 002DD078  54 60 06 FF */	clrlwi. r0, r3, 0x1b
/* 80313ABC 002DD07C  41 82 00 0C */	beq .L_80313AC8
/* 80313AC0 002DD080  38 60 FC 07 */	li r3, -1017
/* 80313AC4 002DD084  48 00 00 80 */	b .L_80313B44
.L_80313AC8:
/* 80313AC8 002DD088  7C 03 28 40 */	cmplw r3, r5
/* 80313ACC 002DD08C  40 82 00 38 */	bne .L_80313B04
/* 80313AD0 002DD090  38 00 00 04 */	li r0, 4
/* 80313AD4 002DD094  91 21 00 F0 */	stw r9, 0xf0(r1)
/* 80313AD8 002DD098  7C C3 33 78 */	mr r3, r6
/* 80313ADC 002DD09C  38 80 00 39 */	li r4, 0x39
/* 80313AE0 002DD0A0  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80313AE4 002DD0A4  38 A0 00 00 */	li r5, 0
/* 80313AE8 002DD0A8  38 C0 00 01 */	li r6, 1
/* 80313AEC 002DD0AC  48 03 04 E5 */	bl IOS_Ioctlv
/* 80313AF0 002DD0B0  2C 03 00 00 */	cmpwi r3, 0
/* 80313AF4 002DD0B4  40 82 00 50 */	bne .L_80313B44
/* 80313AF8 002DD0B8  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80313AFC 002DD0BC  90 1F 00 00 */	stw r0, 0(r31)
/* 80313B00 002DD0C0  48 00 00 44 */	b .L_80313B44
.L_80313B04:
/* 80313B04 002DD0C4  81 04 00 00 */	lwz r8, 0(r4)
/* 80313B08 002DD0C8  2C 08 00 00 */	cmpwi r8, 0
/* 80313B0C 002DD0CC  40 82 00 0C */	bne .L_80313B18
/* 80313B10 002DD0D0  38 60 FC 07 */	li r3, -1017
/* 80313B14 002DD0D4  48 00 00 30 */	b .L_80313B44
.L_80313B18:
/* 80313B18 002DD0D8  90 61 00 F8 */	stw r3, 0xf8(r1)
/* 80313B1C 002DD0DC  38 00 00 04 */	li r0, 4
/* 80313B20 002DD0E0  7C C3 33 78 */	mr r3, r6
/* 80313B24 002DD0E4  38 80 00 3A */	li r4, 0x3a
/* 80313B28 002DD0E8  91 01 00 20 */	stw r8, 0x20(r1)
/* 80313B2C 002DD0EC  38 A0 00 01 */	li r5, 1
/* 80313B30 002DD0F0  38 C0 00 01 */	li r6, 1
/* 80313B34 002DD0F4  91 21 00 F0 */	stw r9, 0xf0(r1)
/* 80313B38 002DD0F8  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80313B3C 002DD0FC  91 01 00 FC */	stw r8, 0xfc(r1)
/* 80313B40 002DD100  48 03 04 91 */	bl IOS_Ioctlv
.L_80313B44:
/* 80313B44 002DD104  81 41 00 00 */	lwz r10, 0(r1)
/* 80313B48 002DD108  80 0A 00 04 */	lwz r0, 4(r10)
/* 80313B4C 002DD10C  83 EA FF FC */	lwz r31, -4(r10)
/* 80313B50 002DD110  7C 08 03 A6 */	mtlr r0
/* 80313B54 002DD114  7D 41 53 78 */	mr r1, r10
/* 80313B58 002DD118  4E 80 00 20 */	blr 

.balign 16, 0
.global ESP_GetTmdView
ESP_GetTmdView:
/* 80313B60 002DD120  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 80313B64 002DD124  7C 2C 0B 78 */	mr r12, r1
/* 80313B68 002DD128  21 6B FE E0 */	subfic r11, r11, -288
/* 80313B6C 002DD12C  7C 21 59 6E */	stwux r1, r1, r11
/* 80313B70 002DD130  7C 08 02 A6 */	mflr r0
/* 80313B74 002DD134  90 0C 00 04 */	stw r0, 4(r12)
/* 80313B78 002DD138  38 E1 00 F0 */	addi r7, r1, 0xf0
/* 80313B7C 002DD13C  39 21 00 20 */	addi r9, r1, 0x20
/* 80313B80 002DD140  80 CD 98 48 */	lwz r6, lbl_806659C8@sda21(r13)
/* 80313B84 002DD144  2C 06 00 00 */	cmpwi r6, 0
/* 80313B88 002DD148  41 80 00 10 */	blt .L_80313B98
/* 80313B8C 002DD14C  38 00 00 00 */	li r0, 0
/* 80313B90 002DD150  7C 05 00 40 */	cmplw r5, r0
/* 80313B94 002DD154  40 82 00 0C */	bne .L_80313BA0
.L_80313B98:
/* 80313B98 002DD158  38 60 FC 07 */	li r3, -1017
/* 80313B9C 002DD15C  48 00 00 48 */	b .L_80313BE4
.L_80313BA0:
/* 80313BA0 002DD160  54 A0 06 FF */	clrlwi. r0, r5, 0x1b
/* 80313BA4 002DD164  41 82 00 0C */	beq .L_80313BB0
/* 80313BA8 002DD168  38 60 FC 07 */	li r3, -1017
/* 80313BAC 002DD16C  48 00 00 38 */	b .L_80313BE4
.L_80313BB0:
/* 80313BB0 002DD170  90 81 00 24 */	stw r4, 0x24(r1)
/* 80313BB4 002DD174  39 00 00 08 */	li r8, 8
/* 80313BB8 002DD178  38 00 00 1E */	li r0, 0x1e
/* 80313BBC 002DD17C  38 80 00 1D */	li r4, 0x1d
/* 80313BC0 002DD180  90 61 00 20 */	stw r3, 0x20(r1)
/* 80313BC4 002DD184  7C C3 33 78 */	mr r3, r6
/* 80313BC8 002DD188  38 C0 00 01 */	li r6, 1
/* 80313BCC 002DD18C  90 A1 00 F8 */	stw r5, 0xf8(r1)
/* 80313BD0 002DD190  38 A0 00 01 */	li r5, 1
/* 80313BD4 002DD194  91 21 00 F0 */	stw r9, 0xf0(r1)
/* 80313BD8 002DD198  91 01 00 F4 */	stw r8, 0xf4(r1)
/* 80313BDC 002DD19C  90 01 00 FC */	stw r0, 0xfc(r1)
/* 80313BE0 002DD1A0  48 03 03 F1 */	bl IOS_Ioctlv
.L_80313BE4:
/* 80313BE4 002DD1A4  81 41 00 00 */	lwz r10, 0(r1)
/* 80313BE8 002DD1A8  80 0A 00 04 */	lwz r0, 4(r10)
/* 80313BEC 002DD1AC  7C 08 03 A6 */	mtlr r0
/* 80313BF0 002DD1B0  7D 41 53 78 */	mr r1, r10
/* 80313BF4 002DD1B4  4E 80 00 20 */	blr 

.balign 16, 0
.global ESP_GetTitleId
ESP_GetTitleId:
/* 80313C00 002DD1C0  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 80313C04 002DD1C4  7C 2C 0B 78 */	mr r12, r1
/* 80313C08 002DD1C8  21 6B FE C0 */	subfic r11, r11, -320
/* 80313C0C 002DD1CC  7C 21 59 6E */	stwux r1, r1, r11
/* 80313C10 002DD1D0  7C 08 02 A6 */	mflr r0
/* 80313C14 002DD1D4  90 0C 00 04 */	stw r0, 4(r12)
/* 80313C18 002DD1D8  38 E1 00 F0 */	addi r7, r1, 0xf0
/* 80313C1C 002DD1DC  93 EC FF FC */	stw r31, -4(r12)
/* 80313C20 002DD1E0  7C 7F 1B 78 */	mr r31, r3
/* 80313C24 002DD1E4  80 8D 98 48 */	lwz r4, lbl_806659C8@sda21(r13)
/* 80313C28 002DD1E8  2C 04 00 00 */	cmpwi r4, 0
/* 80313C2C 002DD1EC  41 80 00 10 */	blt .L_80313C3C
/* 80313C30 002DD1F0  38 00 00 00 */	li r0, 0
/* 80313C34 002DD1F4  7C 03 00 40 */	cmplw r3, r0
/* 80313C38 002DD1F8  40 82 00 0C */	bne .L_80313C44
.L_80313C3C:
/* 80313C3C 002DD1FC  38 60 FC 07 */	li r3, -1017
/* 80313C40 002DD200  48 00 00 40 */	b .L_80313C80
.L_80313C44:
/* 80313C44 002DD204  38 61 00 20 */	addi r3, r1, 0x20
/* 80313C48 002DD208  38 00 00 08 */	li r0, 8
/* 80313C4C 002DD20C  90 61 00 F0 */	stw r3, 0xf0(r1)
/* 80313C50 002DD210  7C 83 23 78 */	mr r3, r4
/* 80313C54 002DD214  38 80 00 20 */	li r4, 0x20
/* 80313C58 002DD218  38 A0 00 00 */	li r5, 0
/* 80313C5C 002DD21C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80313C60 002DD220  38 C0 00 01 */	li r6, 1
/* 80313C64 002DD224  48 03 03 6D */	bl IOS_Ioctlv
/* 80313C68 002DD228  2C 03 00 00 */	cmpwi r3, 0
/* 80313C6C 002DD22C  40 82 00 14 */	bne .L_80313C80
/* 80313C70 002DD230  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80313C74 002DD234  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80313C78 002DD238  90 9F 00 04 */	stw r4, 4(r31)
/* 80313C7C 002DD23C  90 1F 00 00 */	stw r0, 0(r31)
.L_80313C80:
/* 80313C80 002DD240  81 41 00 00 */	lwz r10, 0(r1)
/* 80313C84 002DD244  80 0A 00 04 */	lwz r0, 4(r10)
/* 80313C88 002DD248  83 EA FF FC */	lwz r31, -4(r10)
/* 80313C8C 002DD24C  7C 08 03 A6 */	mtlr r0
/* 80313C90 002DD250  7D 41 53 78 */	mr r1, r10
/* 80313C94 002DD254  4E 80 00 20 */	blr 

.balign 16, 0
.global ESP_GetConsumption
ESP_GetConsumption:
/* 80313CA0 002DD260  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 80313CA4 002DD264  7C 2C 0B 78 */	mr r12, r1
/* 80313CA8 002DD268  21 6B FE C0 */	subfic r11, r11, -320
/* 80313CAC 002DD26C  7C 21 59 6E */	stwux r1, r1, r11
/* 80313CB0 002DD270  7C 08 02 A6 */	mflr r0
/* 80313CB4 002DD274  90 0C 00 04 */	stw r0, 4(r12)
/* 80313CB8 002DD278  38 E1 00 F0 */	addi r7, r1, 0xf0
/* 80313CBC 002DD27C  39 21 00 20 */	addi r9, r1, 0x20
/* 80313CC0 002DD280  39 41 00 40 */	addi r10, r1, 0x40
/* 80313CC4 002DD284  93 EC FF FC */	stw r31, -4(r12)
/* 80313CC8 002DD288  7C DF 33 78 */	mr r31, r6
/* 80313CCC 002DD28C  80 0D 98 48 */	lwz r0, lbl_806659C8@sda21(r13)
/* 80313CD0 002DD290  2C 00 00 00 */	cmpwi r0, 0
/* 80313CD4 002DD294  40 80 00 0C */	bge .L_80313CE0
/* 80313CD8 002DD298  38 60 FC 07 */	li r3, -1017
/* 80313CDC 002DD29C  48 00 00 7C */	b .L_80313D58
.L_80313CE0:
/* 80313CE0 002DD2A0  54 A0 06 FF */	clrlwi. r0, r5, 0x1b
/* 80313CE4 002DD2A4  41 82 00 0C */	beq .L_80313CF0
/* 80313CE8 002DD2A8  38 60 FC 07 */	li r3, -1017
/* 80313CEC 002DD2AC  48 00 00 6C */	b .L_80313D58
.L_80313CF0:
/* 80313CF0 002DD2B0  38 00 00 00 */	li r0, 0
/* 80313CF4 002DD2B4  39 00 00 08 */	li r8, 8
/* 80313CF8 002DD2B8  7C 05 00 40 */	cmplw r5, r0
/* 80313CFC 002DD2BC  90 81 00 24 */	stw r4, 0x24(r1)
/* 80313D00 002DD2C0  90 61 00 20 */	stw r3, 0x20(r1)
/* 80313D04 002DD2C4  91 21 00 F0 */	stw r9, 0xf0(r1)
/* 80313D08 002DD2C8  91 01 00 F4 */	stw r8, 0xf4(r1)
/* 80313D0C 002DD2CC  40 82 00 10 */	bne .L_80313D1C
/* 80313D10 002DD2D0  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 80313D14 002DD2D4  90 01 00 FC */	stw r0, 0xfc(r1)
/* 80313D18 002DD2D8  48 00 00 18 */	b .L_80313D30
.L_80313D1C:
/* 80313D1C 002DD2DC  90 A1 00 F8 */	stw r5, 0xf8(r1)
/* 80313D20 002DD2E0  80 06 00 00 */	lwz r0, 0(r6)
/* 80313D24 002DD2E4  90 01 00 40 */	stw r0, 0x40(r1)
/* 80313D28 002DD2E8  54 00 18 38 */	slwi r0, r0, 3
/* 80313D2C 002DD2EC  90 01 00 FC */	stw r0, 0xfc(r1)
.L_80313D30:
/* 80313D30 002DD2F0  38 00 00 04 */	li r0, 4
/* 80313D34 002DD2F4  91 41 01 00 */	stw r10, 0x100(r1)
/* 80313D38 002DD2F8  80 6D 98 48 */	lwz r3, lbl_806659C8@sda21(r13)
/* 80313D3C 002DD2FC  38 80 00 16 */	li r4, 0x16
/* 80313D40 002DD300  90 01 01 04 */	stw r0, 0x104(r1)
/* 80313D44 002DD304  38 A0 00 01 */	li r5, 1
/* 80313D48 002DD308  38 C0 00 02 */	li r6, 2
/* 80313D4C 002DD30C  48 03 02 85 */	bl IOS_Ioctlv
/* 80313D50 002DD310  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80313D54 002DD314  90 1F 00 00 */	stw r0, 0(r31)
.L_80313D58:
/* 80313D58 002DD318  81 41 00 00 */	lwz r10, 0(r1)
/* 80313D5C 002DD31C  80 0A 00 04 */	lwz r0, 4(r10)
/* 80313D60 002DD320  83 EA FF FC */	lwz r31, -4(r10)
/* 80313D64 002DD324  7C 08 03 A6 */	mtlr r0
/* 80313D68 002DD328  7D 41 53 78 */	mr r1, r10
/* 80313D6C 002DD32C  4E 80 00 20 */	blr 

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global lbl_806659C8
lbl_806659C8:
	.4byte 0xFFFFFFFF
	.4byte 0


.global lbl_806659D0
lbl_806659D0:
	.asciz "/dev/es"