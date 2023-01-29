.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 8

.fn hidd_pm_set_now, global
/* 802F37C8 002BCD88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F37CC 002BCD8C  7C 08 02 A6 */	mflr r0
/* 802F37D0 002BCD90  3C 80 80 5C */	lis r4, lbl_805C2570@ha
/* 802F37D4 002BCD94  38 A0 00 00 */	li r5, 0x0
/* 802F37D8 002BCD98  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F37DC 002BCD9C  38 84 25 70 */	addi r4, r4, lbl_805C2570@l
/* 802F37E0 002BCDA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F37E4 002BCDA4  88 04 00 6E */	lbz r0, 0x6e(r4)
/* 802F37E8 002BCDA8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802F37EC 002BCDAC  2C 00 00 00 */	cmpwi r0, 0x0
/* 802F37F0 002BCDB0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802F37F4 002BCDB4  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 802F37F8 002BCDB8  98 A1 00 08 */	stb r5, 0x8(r1)
/* 802F37FC 002BCDBC  40 82 00 38 */	bne .L_802F3834
/* 802F3800 002BCDC0  88 C4 00 6A */	lbz r6, 0x6a(r4)
/* 802F3804 002BCDC4  88 A3 00 08 */	lbz r5, 0x8(r3)
/* 802F3808 002BCDC8  7C 05 30 40 */	cmplw r5, r6
/* 802F380C 002BCDCC  40 82 00 40 */	bne .L_802F384C
/* 802F3810 002BCDD0  2C 05 00 00 */	cmpwi r5, 0x0
/* 802F3814 002BCDD4  41 82 00 20 */	beq .L_802F3834
/* 802F3818 002BCDD8  A0 84 00 6C */	lhz r4, 0x6c(r4)
/* 802F381C 002BCDDC  A0 03 00 02 */	lhz r0, 0x2(r3)
/* 802F3820 002BCDE0  7C 04 00 40 */	cmplw r4, r0
/* 802F3824 002BCDE4  41 80 00 28 */	blt .L_802F384C
/* 802F3828 002BCDE8  A0 03 00 00 */	lhz r0, 0x0(r3)
/* 802F382C 002BCDEC  7C 04 00 40 */	cmplw r4, r0
/* 802F3830 002BCDF0  41 81 00 1C */	bgt .L_802F384C
.L_802F3834:
/* 802F3834 002BCDF4  3C 80 80 5C */	lis r4, lbl_805C2570@ha
/* 802F3838 002BCDF8  38 00 00 FF */	li r0, 0xff
/* 802F383C 002BCDFC  38 84 25 70 */	addi r4, r4, lbl_805C2570@l
/* 802F3840 002BCE00  38 60 00 01 */	li r3, 0x1
/* 802F3844 002BCE04  98 04 00 78 */	stb r0, 0x78(r4)
/* 802F3848 002BCE08  48 00 01 44 */	b .L_802F398C
.L_802F384C:
/* 802F384C 002BCE0C  2C 05 00 02 */	cmpwi r5, 0x2
/* 802F3850 002BCE10  41 82 00 80 */	beq .L_802F38D0
/* 802F3854 002BCE14  40 80 00 10 */	bge .L_802F3864
/* 802F3858 002BCE18  2C 05 00 00 */	cmpwi r5, 0x0
/* 802F385C 002BCE1C  41 82 00 14 */	beq .L_802F3870
/* 802F3860 002BCE20  48 00 00 E4 */	b .L_802F3944
.L_802F3864:
/* 802F3864 002BCE24  2C 05 00 04 */	cmpwi r5, 0x4
/* 802F3868 002BCE28  40 80 00 DC */	bge .L_802F3944
/* 802F386C 002BCE2C  48 00 00 A0 */	b .L_802F390C
.L_802F3870:
/* 802F3870 002BCE30  28 06 00 02 */	cmplwi r6, 0x2
/* 802F3874 002BCE34  40 82 00 2C */	bne .L_802F38A0
/* 802F3878 002BCE38  3F E0 80 5C */	lis r31, lbl_805C2570@ha
/* 802F387C 002BCE3C  38 A1 00 0C */	addi r5, r1, 0xc
/* 802F3880 002BCE40  38 9F 25 70 */	addi r4, r31, lbl_805C2570@l
/* 802F3884 002BCE44  38 60 00 80 */	li r3, 0x80
/* 802F3888 002BCE48  4B FF 66 F5 */	bl BTM_SetPowerMode
/* 802F388C 002BCE4C  38 9F 25 70 */	addi r4, r31, lbl_805C2570@l
/* 802F3890 002BCE50  38 00 00 01 */	li r0, 0x1
/* 802F3894 002BCE54  98 61 00 08 */	stb r3, 0x8(r1)
/* 802F3898 002BCE58  98 04 00 6E */	stb r0, 0x6e(r4)
/* 802F389C 002BCE5C  48 00 00 A8 */	b .L_802F3944
.L_802F38A0:
/* 802F38A0 002BCE60  28 06 00 03 */	cmplwi r6, 0x3
/* 802F38A4 002BCE64  40 82 00 A0 */	bne .L_802F3944
/* 802F38A8 002BCE68  3F E0 80 5C */	lis r31, lbl_805C2570@ha
/* 802F38AC 002BCE6C  38 A1 00 0C */	addi r5, r1, 0xc
/* 802F38B0 002BCE70  38 9F 25 70 */	addi r4, r31, lbl_805C2570@l
/* 802F38B4 002BCE74  38 60 00 80 */	li r3, 0x80
/* 802F38B8 002BCE78  4B FF 66 C5 */	bl BTM_SetPowerMode
/* 802F38BC 002BCE7C  38 9F 25 70 */	addi r4, r31, lbl_805C2570@l
/* 802F38C0 002BCE80  38 00 00 01 */	li r0, 0x1
/* 802F38C4 002BCE84  98 61 00 08 */	stb r3, 0x8(r1)
/* 802F38C8 002BCE88  98 04 00 6E */	stb r0, 0x6e(r4)
/* 802F38CC 002BCE8C  48 00 00 78 */	b .L_802F3944
.L_802F38D0:
/* 802F38D0 002BCE90  2C 06 00 00 */	cmpwi r6, 0x0
/* 802F38D4 002BCE94  41 82 00 10 */	beq .L_802F38E4
/* 802F38D8 002BCE98  38 61 00 0C */	addi r3, r1, 0xc
/* 802F38DC 002BCE9C  4B FF FE ED */	bl hidd_pm_set_now
/* 802F38E0 002BCEA0  48 00 00 64 */	b .L_802F3944
.L_802F38E4:
/* 802F38E4 002BCEA4  3F E0 80 5C */	lis r31, lbl_805C2570@ha
/* 802F38E8 002BCEA8  7C 65 1B 78 */	mr r5, r3
/* 802F38EC 002BCEAC  38 9F 25 70 */	addi r4, r31, lbl_805C2570@l
/* 802F38F0 002BCEB0  38 60 00 80 */	li r3, 0x80
/* 802F38F4 002BCEB4  4B FF 66 89 */	bl BTM_SetPowerMode
/* 802F38F8 002BCEB8  38 9F 25 70 */	addi r4, r31, lbl_805C2570@l
/* 802F38FC 002BCEBC  38 00 00 01 */	li r0, 0x1
/* 802F3900 002BCEC0  98 61 00 08 */	stb r3, 0x8(r1)
/* 802F3904 002BCEC4  98 04 00 6E */	stb r0, 0x6e(r4)
/* 802F3908 002BCEC8  48 00 00 3C */	b .L_802F3944
.L_802F390C:
/* 802F390C 002BCECC  2C 06 00 00 */	cmpwi r6, 0x0
/* 802F3910 002BCED0  41 82 00 10 */	beq .L_802F3920
/* 802F3914 002BCED4  38 61 00 0C */	addi r3, r1, 0xc
/* 802F3918 002BCED8  4B FF FE B1 */	bl hidd_pm_set_now
/* 802F391C 002BCEDC  48 00 00 28 */	b .L_802F3944
.L_802F3920:
/* 802F3920 002BCEE0  3F E0 80 5C */	lis r31, lbl_805C2570@ha
/* 802F3924 002BCEE4  7C 65 1B 78 */	mr r5, r3
/* 802F3928 002BCEE8  38 9F 25 70 */	addi r4, r31, lbl_805C2570@l
/* 802F392C 002BCEEC  38 60 00 80 */	li r3, 0x80
/* 802F3930 002BCEF0  4B FF 66 4D */	bl BTM_SetPowerMode
/* 802F3934 002BCEF4  38 9F 25 70 */	addi r4, r31, lbl_805C2570@l
/* 802F3938 002BCEF8  38 00 00 01 */	li r0, 0x1
/* 802F393C 002BCEFC  98 61 00 08 */	stb r3, 0x8(r1)
/* 802F3940 002BCF00  98 04 00 6E */	stb r0, 0x6e(r4)
.L_802F3944:
/* 802F3944 002BCF04  88 81 00 08 */	lbz r4, 0x8(r1)
/* 802F3948 002BCF08  28 04 00 01 */	cmplwi r4, 0x1
/* 802F394C 002BCF0C  41 81 00 0C */	bgt .L_802F3958
/* 802F3950 002BCF10  38 60 00 01 */	li r3, 0x1
/* 802F3954 002BCF14  48 00 00 38 */	b .L_802F398C
.L_802F3958:
/* 802F3958 002BCF18  3C 60 80 5C */	lis r3, lbl_805C2570@ha
/* 802F395C 002BCF1C  38 04 00 37 */	addi r0, r4, 0x37
/* 802F3960 002BCF20  38 63 25 70 */	addi r3, r3, lbl_805C2570@l
/* 802F3964 002BCF24  98 01 00 08 */	stb r0, 0x8(r1)
/* 802F3968 002BCF28  81 83 00 C4 */	lwz r12, 0xc4(r3)
/* 802F396C 002BCF2C  2C 0C 00 00 */	cmpwi r12, 0x0
/* 802F3970 002BCF30  41 82 00 18 */	beq .L_802F3988
/* 802F3974 002BCF34  88 83 00 6F */	lbz r4, 0x6f(r3)
/* 802F3978 002BCF38  38 A1 00 08 */	addi r5, r1, 0x8
/* 802F397C 002BCF3C  38 60 00 04 */	li r3, 0x4
/* 802F3980 002BCF40  7D 89 03 A6 */	mtctr r12
/* 802F3984 002BCF44  4E 80 04 21 */	bctrl
.L_802F3988:
/* 802F3988 002BCF48  38 60 00 00 */	li r3, 0x0
.L_802F398C:
/* 802F398C 002BCF4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F3990 002BCF50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F3994 002BCF54  7C 08 03 A6 */	mtlr r0
/* 802F3998 002BCF58  38 21 00 20 */	addi r1, r1, 0x20
/* 802F399C 002BCF5C  4E 80 00 20 */	blr
.endfn hidd_pm_set_now

.fn hidd_pm_proc_mode_change, global
/* 802F39A0 002BCF60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F39A4 002BCF64  7C 08 02 A6 */	mflr r0
/* 802F39A8 002BCF68  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F39AC 002BCF6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F39B0 002BCF70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802F39B4 002BCF74  3F C0 80 5C */	lis r30, lbl_805C2570@ha
/* 802F39B8 002BCF78  3B DE 25 70 */	addi r30, r30, lbl_805C2570@l
/* 802F39BC 002BCF7C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802F39C0 002BCF80  7C 9D 23 78 */	mr r29, r4
/* 802F39C4 002BCF84  88 1E 01 40 */	lbz r0, 0x140(r30)
/* 802F39C8 002BCF88  98 61 00 08 */	stb r3, 0x8(r1)
/* 802F39CC 002BCF8C  2C 00 00 00 */	cmpwi r0, 0x0
/* 802F39D0 002BCF90  B0 A1 00 0A */	sth r5, 0xa(r1)
/* 802F39D4 002BCF94  41 82 01 08 */	beq .L_802F3ADC
/* 802F39D8 002BCF98  3B E0 00 00 */	li r31, 0x0
/* 802F39DC 002BCF9C  54 60 06 3F */	clrlwi. r0, r3, 24
/* 802F39E0 002BCFA0  9B FE 00 6E */	stb r31, 0x6e(r30)
/* 802F39E4 002BCFA4  41 82 00 28 */	beq .L_802F3A0C
/* 802F39E8 002BCFA8  81 9E 00 C4 */	lwz r12, 0xc4(r30)
/* 802F39EC 002BCFAC  2C 0C 00 00 */	cmpwi r12, 0x0
/* 802F39F0 002BCFB0  41 82 00 EC */	beq .L_802F3ADC
/* 802F39F4 002BCFB4  38 A1 00 08 */	addi r5, r1, 0x8
/* 802F39F8 002BCFB8  88 9E 00 6F */	lbz r4, 0x6f(r30)
/* 802F39FC 002BCFBC  38 60 00 04 */	li r3, 0x4
/* 802F3A00 002BCFC0  7D 89 03 A6 */	mtctr r12
/* 802F3A04 002BCFC4  4E 80 04 21 */	bctrl
/* 802F3A08 002BCFC8  48 00 00 D4 */	b .L_802F3ADC
.L_802F3A0C:
/* 802F3A0C 002BCFCC  88 1E 00 78 */	lbz r0, 0x78(r30)
/* 802F3A10 002BCFD0  54 A3 04 3E */	clrlwi r3, r5, 16
/* 802F3A14 002BCFD4  98 9E 00 6A */	stb r4, 0x6a(r30)
/* 802F3A18 002BCFD8  28 00 00 FF */	cmplwi r0, 0xff
/* 802F3A1C 002BCFDC  B0 BE 00 6C */	sth r5, 0x6c(r30)
/* 802F3A20 002BCFE0  41 82 00 54 */	beq .L_802F3A74
/* 802F3A24 002BCFE4  7C 00 20 40 */	cmplw r0, r4
/* 802F3A28 002BCFE8  40 82 00 24 */	bne .L_802F3A4C
/* 802F3A2C 002BCFEC  2C 00 00 00 */	cmpwi r0, 0x0
/* 802F3A30 002BCFF0  41 82 00 30 */	beq .L_802F3A60
/* 802F3A34 002BCFF4  A0 1E 00 72 */	lhz r0, 0x72(r30)
/* 802F3A38 002BCFF8  7C 03 00 40 */	cmplw r3, r0
/* 802F3A3C 002BCFFC  41 80 00 10 */	blt .L_802F3A4C
/* 802F3A40 002BD000  A0 1E 00 70 */	lhz r0, 0x70(r30)
/* 802F3A44 002BD004  7C 03 00 40 */	cmplw r3, r0
/* 802F3A48 002BD008  40 81 00 18 */	ble .L_802F3A60
.L_802F3A4C:
/* 802F3A4C 002BD00C  3C 60 80 5C */	lis r3, lbl_805C2570@ha
/* 802F3A50 002BD010  38 63 25 70 */	addi r3, r3, lbl_805C2570@l
/* 802F3A54 002BD014  38 63 00 70 */	addi r3, r3, 0x70
/* 802F3A58 002BD018  4B FF FD 71 */	bl hidd_pm_set_now
/* 802F3A5C 002BD01C  48 00 00 58 */	b .L_802F3AB4
.L_802F3A60:
/* 802F3A60 002BD020  3C 60 80 5C */	lis r3, lbl_805C2570@ha
/* 802F3A64 002BD024  38 00 00 FF */	li r0, 0xff
/* 802F3A68 002BD028  38 63 25 70 */	addi r3, r3, lbl_805C2570@l
/* 802F3A6C 002BD02C  98 03 00 78 */	stb r0, 0x78(r3)
/* 802F3A70 002BD030  48 00 00 44 */	b .L_802F3AB4
.L_802F3A74:
/* 802F3A74 002BD034  2C 04 00 00 */	cmpwi r4, 0x0
/* 802F3A78 002BD038  40 82 00 3C */	bne .L_802F3AB4
/* 802F3A7C 002BD03C  38 7E 00 70 */	addi r3, r30, 0x70
/* 802F3A80 002BD040  38 9E 00 4C */	addi r4, r30, 0x4c
/* 802F3A84 002BD044  38 A0 00 0A */	li r5, 0xa
/* 802F3A88 002BD048  4B D1 05 79 */	bl memcpy
/* 802F3A8C 002BD04C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 802F3A90 002BD050  4B FF FD 39 */	bl hidd_pm_set_now
/* 802F3A94 002BD054  3C 60 80 2F */	lis r3, hidd_pm_inact_timeout@ha
/* 802F3A98 002BD058  9B FE 00 6F */	stb r31, 0x6f(r30)
/* 802F3A9C 002BD05C  38 63 3A F8 */	addi r3, r3, hidd_pm_inact_timeout@l
/* 802F3AA0 002BD060  38 80 00 16 */	li r4, 0x16
/* 802F3AA4 002BD064  90 7E 00 44 */	stw r3, 0x44(r30)
/* 802F3AA8 002BD068  38 7E 00 34 */	addi r3, r30, 0x34
/* 802F3AAC 002BD06C  38 A0 00 3C */	li r5, 0x3c
/* 802F3AB0 002BD070  4B FE AB 01 */	bl btu_start_timer
.L_802F3AB4:
/* 802F3AB4 002BD074  3C 60 80 5C */	lis r3, lbl_805C2570@ha
/* 802F3AB8 002BD078  38 63 25 70 */	addi r3, r3, lbl_805C2570@l
/* 802F3ABC 002BD07C  81 83 00 C4 */	lwz r12, 0xc4(r3)
/* 802F3AC0 002BD080  2C 0C 00 00 */	cmpwi r12, 0x0
/* 802F3AC4 002BD084  41 82 00 18 */	beq .L_802F3ADC
/* 802F3AC8 002BD088  7F A4 EB 78 */	mr r4, r29
/* 802F3ACC 002BD08C  38 A1 00 0A */	addi r5, r1, 0xa
/* 802F3AD0 002BD090  38 60 00 03 */	li r3, 0x3
/* 802F3AD4 002BD094  7D 89 03 A6 */	mtctr r12
/* 802F3AD8 002BD098  4E 80 04 21 */	bctrl
.L_802F3ADC:
/* 802F3ADC 002BD09C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F3AE0 002BD0A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F3AE4 002BD0A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802F3AE8 002BD0A8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802F3AEC 002BD0AC  7C 08 03 A6 */	mtlr r0
/* 802F3AF0 002BD0B0  38 21 00 20 */	addi r1, r1, 0x20
/* 802F3AF4 002BD0B4  4E 80 00 20 */	blr
.endfn hidd_pm_proc_mode_change

.fn hidd_pm_inact_timeout, global
/* 802F3AF8 002BD0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3AFC 002BD0BC  7C 08 02 A6 */	mflr r0
/* 802F3B00 002BD0C0  38 A0 00 0A */	li r5, 0xa
/* 802F3B04 002BD0C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3B08 002BD0C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F3B0C 002BD0CC  3F E0 80 5C */	lis r31, lbl_805C2570@ha
/* 802F3B10 002BD0D0  3B FF 25 70 */	addi r31, r31, lbl_805C2570@l
/* 802F3B14 002BD0D4  38 7F 00 70 */	addi r3, r31, 0x70
/* 802F3B18 002BD0D8  38 9F 00 56 */	addi r4, r31, 0x56
/* 802F3B1C 002BD0DC  4B D1 04 E5 */	bl memcpy
/* 802F3B20 002BD0E0  38 7F 00 56 */	addi r3, r31, 0x56
/* 802F3B24 002BD0E4  4B FF FC A5 */	bl hidd_pm_set_now
/* 802F3B28 002BD0E8  38 00 00 01 */	li r0, 0x1
/* 802F3B2C 002BD0EC  98 1F 00 6F */	stb r0, 0x6f(r31)
/* 802F3B30 002BD0F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F3B34 002BD0F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3B38 002BD0F8  7C 08 03 A6 */	mtlr r0
/* 802F3B3C 002BD0FC  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3B40 002BD100  4E 80 00 20 */	blr
.endfn hidd_pm_inact_timeout

# 0x805C2570 - 0x805C26B8
.section .bss, "wa", @nobits
.balign 8
.global lbl_805C2570
lbl_805C2570:
	.skip 0x148
