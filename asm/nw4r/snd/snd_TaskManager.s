.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn GetInstance__Q44nw4r3snd6detail11TaskManagerFv, global
/* 804257C4 003EED84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804257C8 003EED88  7C 08 02 A6 */	mflr r0
/* 804257CC 003EED8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804257D0 003EED90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804257D4 003EED94  88 0D BC 88 */	lbz r0, lbl_80667E08@sda21(r13)
/* 804257D8 003EED98  7C 00 07 75 */	extsb. r0, r0
/* 804257DC 003EED9C  40 82 00 68 */	bne .L_80425844
/* 804257E0 003EEDA0  3F E0 80 65 */	lis r31, lbl_80657024@ha
/* 804257E4 003EEDA4  3C 80 80 42 */	lis r4, __ct__Q34nw4r2ut35LinkList_Q44nw4r3snd6detail4Task_4_Fv@ha
/* 804257E8 003EEDA8  3B FF 70 24 */	addi r31, r31, lbl_80657024@l
/* 804257EC 003EEDAC  3C A0 80 42 */	lis r5, __dt__Q34nw4r2ut35LinkList_Q44nw4r3snd6detail4Task_4_Fv@ha
/* 804257F0 003EEDB0  7F E3 FB 78 */	mr r3, r31
/* 804257F4 003EEDB4  38 84 59 1C */	addi r4, r4, __ct__Q34nw4r2ut35LinkList_Q44nw4r3snd6detail4Task_4_Fv@l
/* 804257F8 003EEDB8  38 A5 58 C4 */	addi r5, r5, __dt__Q34nw4r2ut35LinkList_Q44nw4r3snd6detail4Task_4_Fv@l
/* 804257FC 003EEDBC  38 C0 00 0C */	li r6, 0xc
/* 80425800 003EEDC0  38 E0 00 03 */	li r7, 3
/* 80425804 003EEDC4  4B E9 42 FD */	bl __construct_array
/* 80425808 003EEDC8  38 00 00 00 */	li r0, 0
/* 8042580C 003EEDCC  38 7F 00 2C */	addi r3, r31, 0x2c
/* 80425810 003EEDD0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80425814 003EEDD4  98 1F 00 28 */	stb r0, 0x28(r31)
/* 80425818 003EEDD8  4B F3 5D B9 */	bl OSInitThreadQueue
/* 8042581C 003EEDDC  38 7F 00 34 */	addi r3, r31, 0x34
/* 80425820 003EEDE0  4B F3 5D B1 */	bl OSInitThreadQueue
/* 80425824 003EEDE4  3C 80 80 42 */	lis r4, __dt__Q44nw4r3snd6detail11TaskManagerFv@ha
/* 80425828 003EEDE8  3C A0 80 65 */	lis r5, lbl_80657018@ha
/* 8042582C 003EEDEC  7F E3 FB 78 */	mr r3, r31
/* 80425830 003EEDF0  38 84 58 60 */	addi r4, r4, __dt__Q44nw4r3snd6detail11TaskManagerFv@l
/* 80425834 003EEDF4  38 A5 70 18 */	addi r5, r5, lbl_80657018@l
/* 80425838 003EEDF8  4B E9 3E 65 */	bl __register_global_object
/* 8042583C 003EEDFC  38 00 00 01 */	li r0, 1
/* 80425840 003EEE00  98 0D BC 88 */	stb r0, lbl_80667E08@sda21(r13)
.L_80425844:
/* 80425844 003EEE04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80425848 003EEE08  3C 60 80 65 */	lis r3, lbl_80657024@ha
/* 8042584C 003EEE0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80425850 003EEE10  38 63 70 24 */	addi r3, r3, lbl_80657024@l
/* 80425854 003EEE14  7C 08 03 A6 */	mtlr r0
/* 80425858 003EEE18  38 21 00 10 */	addi r1, r1, 0x10
/* 8042585C 003EEE1C  4E 80 00 20 */	blr
.endfn GetInstance__Q44nw4r3snd6detail11TaskManagerFv

.fn __dt__Q44nw4r3snd6detail11TaskManagerFv, global
/* 80425860 003EEE20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80425864 003EEE24  7C 08 02 A6 */	mflr r0
/* 80425868 003EEE28  2C 03 00 00 */	cmpwi r3, 0
/* 8042586C 003EEE2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80425870 003EEE30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80425874 003EEE34  7C 9F 23 78 */	mr r31, r4
/* 80425878 003EEE38  93 C1 00 08 */	stw r30, 8(r1)
/* 8042587C 003EEE3C  7C 7E 1B 78 */	mr r30, r3
/* 80425880 003EEE40  41 82 00 28 */	beq .L_804258A8
/* 80425884 003EEE44  3C 80 80 42 */	lis r4, __dt__Q34nw4r2ut35LinkList_Q44nw4r3snd6detail4Task_4_Fv@ha
/* 80425888 003EEE48  38 A0 00 0C */	li r5, 0xc
/* 8042588C 003EEE4C  38 84 58 C4 */	addi r4, r4, __dt__Q34nw4r2ut35LinkList_Q44nw4r3snd6detail4Task_4_Fv@l
/* 80425890 003EEE50  38 C0 00 03 */	li r6, 3
/* 80425894 003EEE54  4B E9 43 65 */	bl __destroy_arr
/* 80425898 003EEE58  2C 1F 00 00 */	cmpwi r31, 0
/* 8042589C 003EEE5C  40 81 00 0C */	ble .L_804258A8
/* 804258A0 003EEE60  7F C3 F3 78 */	mr r3, r30
/* 804258A4 003EEE64  48 00 F3 89 */	bl __dl__FPv
.L_804258A8:
/* 804258A8 003EEE68  7F C3 F3 78 */	mr r3, r30
/* 804258AC 003EEE6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804258B0 003EEE70  83 C1 00 08 */	lwz r30, 8(r1)
/* 804258B4 003EEE74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804258B8 003EEE78  7C 08 03 A6 */	mtlr r0
/* 804258BC 003EEE7C  38 21 00 10 */	addi r1, r1, 0x10
/* 804258C0 003EEE80  4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail11TaskManagerFv

#__dt__Q34nw4r2ut35LinkList<Q44nw4r3snd6detail4Task,4>Fv
.fn __dt__Q34nw4r2ut35LinkList_Q44nw4r3snd6detail4Task_4_Fv, global
/* 804258C4 003EEE84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804258C8 003EEE88  7C 08 02 A6 */	mflr r0
/* 804258CC 003EEE8C  2C 03 00 00 */	cmpwi r3, 0
/* 804258D0 003EEE90  90 01 00 14 */	stw r0, 0x14(r1)
/* 804258D4 003EEE94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804258D8 003EEE98  7C 9F 23 78 */	mr r31, r4
/* 804258DC 003EEE9C  93 C1 00 08 */	stw r30, 8(r1)
/* 804258E0 003EEEA0  7C 7E 1B 78 */	mr r30, r3
/* 804258E4 003EEEA4  41 82 00 1C */	beq .L_80425900
/* 804258E8 003EEEA8  38 80 00 00 */	li r4, 0
/* 804258EC 003EEEAC  48 00 5B 25 */	bl __dt__Q44nw4r2ut6detail12LinkListImplFv
/* 804258F0 003EEEB0  2C 1F 00 00 */	cmpwi r31, 0
/* 804258F4 003EEEB4  40 81 00 0C */	ble .L_80425900
/* 804258F8 003EEEB8  7F C3 F3 78 */	mr r3, r30
/* 804258FC 003EEEBC  48 00 F3 31 */	bl __dl__FPv
.L_80425900:
/* 80425900 003EEEC0  7F C3 F3 78 */	mr r3, r30
/* 80425904 003EEEC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80425908 003EEEC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042590C 003EEECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80425910 003EEED0  7C 08 03 A6 */	mtlr r0
/* 80425914 003EEED4  38 21 00 10 */	addi r1, r1, 0x10
/* 80425918 003EEED8  4E 80 00 20 */	blr
.endfn __dt__Q34nw4r2ut35LinkList_Q44nw4r3snd6detail4Task_4_Fv

#__ct__q34nw4r2ut35linklist<Q44nw4r3snd6detail4Task,4>Fv
.fn __ct__Q34nw4r2ut35LinkList_Q44nw4r3snd6detail4Task_4_Fv, global
/* 8042591C 003EEEDC  38 00 00 00 */	li r0, 0
/* 80425920 003EEEE0  38 83 00 04 */	addi r4, r3, 4
/* 80425924 003EEEE4  90 03 00 04 */	stw r0, 4(r3)
/* 80425928 003EEEE8  90 03 00 08 */	stw r0, 8(r3)
/* 8042592C 003EEEEC  90 03 00 00 */	stw r0, 0(r3)
/* 80425930 003EEEF0  90 83 00 04 */	stw r4, 4(r3)
/* 80425934 003EEEF4  90 83 00 08 */	stw r4, 8(r3)
/* 80425938 003EEEF8  4E 80 00 20 */	blr 
.endfn __ct__Q34nw4r2ut35LinkList_Q44nw4r3snd6detail4Task_4_Fv

.fn AppendTask__Q44nw4r3snd6detail11TaskManagerFPQ44nw4r3snd6detail4TaskQ54nw4r3snd6detail11TaskManager12TaskPriority, global
/* 8042593C 003EEEFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80425940 003EEF00  7C 08 02 A6 */	mflr r0
/* 80425944 003EEF04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80425948 003EEF08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8042594C 003EEF0C  7C BF 2B 78 */	mr r31, r5
/* 80425950 003EEF10  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80425954 003EEF14  7C 9E 23 78 */	mr r30, r4
/* 80425958 003EEF18  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8042595C 003EEF1C  7C 7D 1B 78 */	mr r29, r3
/* 80425960 003EEF20  4B F3 30 51 */	bl OSDisableInterrupts
/* 80425964 003EEF24  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 80425968 003EEF28  38 80 00 01 */	li r4, 1
/* 8042596C 003EEF2C  98 9E 00 0C */	stb r4, 0xc(r30)
/* 80425970 003EEF30  7C 7F 1B 78 */	mr r31, r3
/* 80425974 003EEF34  38 81 00 08 */	addi r4, r1, 8
/* 80425978 003EEF38  7C 7D 02 14 */	add r3, r29, r0
/* 8042597C 003EEF3C  38 03 00 04 */	addi r0, r3, 4
/* 80425980 003EEF40  38 BE 00 04 */	addi r5, r30, 4
/* 80425984 003EEF44  90 01 00 08 */	stw r0, 8(r1)
/* 80425988 003EEF48  48 00 5B 99 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 8042598C 003EEF4C  38 7D 00 2C */	addi r3, r29, 0x2c
/* 80425990 003EEF50  4B F3 6D D1 */	bl OSWakeupThread
/* 80425994 003EEF54  7F E3 FB 78 */	mr r3, r31
/* 80425998 003EEF58  4B F3 30 59 */	bl OSRestoreInterrupts
/* 8042599C 003EEF5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804259A0 003EEF60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804259A4 003EEF64  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804259A8 003EEF68  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 804259AC 003EEF6C  7C 08 03 A6 */	mtlr r0
/* 804259B0 003EEF70  38 21 00 20 */	addi r1, r1, 0x20
/* 804259B4 003EEF74  4E 80 00 20 */	blr 
.endfn AppendTask__Q44nw4r3snd6detail11TaskManagerFPQ44nw4r3snd6detail4TaskQ54nw4r3snd6detail11TaskManager12TaskPriority

.fn PopTask__Q44nw4r3snd6detail11TaskManagerFv, global
/* 804259B8 003EEF78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804259BC 003EEF7C  7C 08 02 A6 */	mflr r0
/* 804259C0 003EEF80  90 01 00 34 */	stw r0, 0x34(r1)
/* 804259C4 003EEF84  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804259C8 003EEF88  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804259CC 003EEF8C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 804259D0 003EEF90  93 81 00 20 */	stw r28, 0x20(r1)
/* 804259D4 003EEF94  7C 7C 1B 78 */	mr r28, r3
/* 804259D8 003EEF98  4B F3 2F D9 */	bl OSDisableInterrupts
/* 804259DC 003EEF9C  7C 7F 1B 78 */	mr r31, r3
/* 804259E0 003EEFA0  4B F3 2F D1 */	bl OSDisableInterrupts
/* 804259E4 003EEFA4  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 804259E8 003EEFA8  7C 7E 1B 78 */	mr r30, r3
/* 804259EC 003EEFAC  2C 00 00 00 */	cmpwi r0, 0
/* 804259F0 003EEFB0  40 82 00 10 */	bne .L_80425A00
/* 804259F4 003EEFB4  4B F3 2F FD */	bl OSRestoreInterrupts
/* 804259F8 003EEFB8  3B C0 00 00 */	li r30, 0
/* 804259FC 003EEFBC  48 00 00 24 */	b .L_80425A20
.L_80425A00:
/* 80425A00 003EEFC0  83 BC 00 1C */	lwz r29, 0x1c(r28)
/* 80425A04 003EEFC4  38 7C 00 18 */	addi r3, r28, 0x18
/* 80425A08 003EEFC8  38 81 00 10 */	addi r4, r1, 0x10
/* 80425A0C 003EEFCC  93 A1 00 10 */	stw r29, 0x10(r1)
/* 80425A10 003EEFD0  48 00 5A 85 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8Iterator
/* 80425A14 003EEFD4  7F C3 F3 78 */	mr r3, r30
/* 80425A18 003EEFD8  4B F3 2F D9 */	bl OSRestoreInterrupts
/* 80425A1C 003EEFDC  3B DD FF FC */	addi r30, r29, -4
.L_80425A20:
/* 80425A20 003EEFE0  2C 1E 00 00 */	cmpwi r30, 0
/* 80425A24 003EEFE4  41 82 00 14 */	beq .L_80425A38
/* 80425A28 003EEFE8  7F E3 FB 78 */	mr r3, r31
/* 80425A2C 003EEFEC  4B F3 2F C5 */	bl OSRestoreInterrupts
/* 80425A30 003EEFF0  7F C3 F3 78 */	mr r3, r30
/* 80425A34 003EEFF4  48 00 00 C0 */	b .L_80425AF4
.L_80425A38:
/* 80425A38 003EEFF8  4B F3 2F 79 */	bl OSDisableInterrupts
/* 80425A3C 003EEFFC  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80425A40 003EF000  7C 7E 1B 78 */	mr r30, r3
/* 80425A44 003EF004  2C 00 00 00 */	cmpwi r0, 0
/* 80425A48 003EF008  40 82 00 10 */	bne .L_80425A58
/* 80425A4C 003EF00C  4B F3 2F A5 */	bl OSRestoreInterrupts
/* 80425A50 003EF010  3B C0 00 00 */	li r30, 0
/* 80425A54 003EF014  48 00 00 24 */	b .L_80425A78
.L_80425A58:
/* 80425A58 003EF018  83 BC 00 10 */	lwz r29, 0x10(r28)
/* 80425A5C 003EF01C  38 7C 00 0C */	addi r3, r28, 0xc
/* 80425A60 003EF020  38 81 00 0C */	addi r4, r1, 0xc
/* 80425A64 003EF024  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80425A68 003EF028  48 00 5A 2D */	bl Erase__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8Iterator
/* 80425A6C 003EF02C  7F C3 F3 78 */	mr r3, r30
/* 80425A70 003EF030  4B F3 2F 81 */	bl OSRestoreInterrupts
/* 80425A74 003EF034  3B DD FF FC */	addi r30, r29, -4
.L_80425A78:
/* 80425A78 003EF038  2C 1E 00 00 */	cmpwi r30, 0
/* 80425A7C 003EF03C  41 82 00 14 */	beq .L_80425A90
/* 80425A80 003EF040  7F E3 FB 78 */	mr r3, r31
/* 80425A84 003EF044  4B F3 2F 6D */	bl OSRestoreInterrupts
/* 80425A88 003EF048  7F C3 F3 78 */	mr r3, r30
/* 80425A8C 003EF04C  48 00 00 68 */	b .L_80425AF4
.L_80425A90:
/* 80425A90 003EF050  4B F3 2F 21 */	bl OSDisableInterrupts
/* 80425A94 003EF054  80 1C 00 00 */	lwz r0, 0(r28)
/* 80425A98 003EF058  7C 7E 1B 78 */	mr r30, r3
/* 80425A9C 003EF05C  2C 00 00 00 */	cmpwi r0, 0
/* 80425AA0 003EF060  40 82 00 10 */	bne .L_80425AB0
/* 80425AA4 003EF064  4B F3 2F 4D */	bl OSRestoreInterrupts
/* 80425AA8 003EF068  3B C0 00 00 */	li r30, 0
/* 80425AAC 003EF06C  48 00 00 24 */	b .L_80425AD0
.L_80425AB0:
/* 80425AB0 003EF070  83 BC 00 04 */	lwz r29, 4(r28)
/* 80425AB4 003EF074  7F 83 E3 78 */	mr r3, r28
/* 80425AB8 003EF078  38 81 00 08 */	addi r4, r1, 8
/* 80425ABC 003EF07C  93 A1 00 08 */	stw r29, 8(r1)
/* 80425AC0 003EF080  48 00 59 D5 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8Iterator
/* 80425AC4 003EF084  7F C3 F3 78 */	mr r3, r30
/* 80425AC8 003EF088  4B F3 2F 29 */	bl OSRestoreInterrupts
/* 80425ACC 003EF08C  3B DD FF FC */	addi r30, r29, -4
.L_80425AD0:
/* 80425AD0 003EF090  2C 1E 00 00 */	cmpwi r30, 0
/* 80425AD4 003EF094  41 82 00 14 */	beq .L_80425AE8
/* 80425AD8 003EF098  7F E3 FB 78 */	mr r3, r31
/* 80425ADC 003EF09C  4B F3 2F 15 */	bl OSRestoreInterrupts
/* 80425AE0 003EF0A0  7F C3 F3 78 */	mr r3, r30
/* 80425AE4 003EF0A4  48 00 00 10 */	b .L_80425AF4
.L_80425AE8:
/* 80425AE8 003EF0A8  7F E3 FB 78 */	mr r3, r31
/* 80425AEC 003EF0AC  4B F3 2F 05 */	bl OSRestoreInterrupts
/* 80425AF0 003EF0B0  38 60 00 00 */	li r3, 0
.L_80425AF4:
/* 80425AF4 003EF0B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80425AF8 003EF0B8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80425AFC 003EF0BC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80425B00 003EF0C0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80425B04 003EF0C4  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80425B08 003EF0C8  7C 08 03 A6 */	mtlr r0
/* 80425B0C 003EF0CC  38 21 00 30 */	addi r1, r1, 0x30
/* 80425B10 003EF0D0  4E 80 00 20 */	blr 
.endfn PopTask__Q44nw4r3snd6detail11TaskManagerFv

.fn GetNextTask__Q44nw4r3snd6detail11TaskManagerFv, global
/* 80425B14 003EF0D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80425B18 003EF0D8  7C 08 02 A6 */	mflr r0
/* 80425B1C 003EF0DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80425B20 003EF0E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80425B24 003EF0E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80425B28 003EF0E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80425B2C 003EF0EC  7C 7D 1B 78 */	mr r29, r3
/* 80425B30 003EF0F0  4B F3 2E 81 */	bl OSDisableInterrupts
/* 80425B34 003EF0F4  7C 7F 1B 78 */	mr r31, r3
/* 80425B38 003EF0F8  4B F3 2E 79 */	bl OSDisableInterrupts
/* 80425B3C 003EF0FC  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80425B40 003EF100  2C 00 00 00 */	cmpwi r0, 0
/* 80425B44 003EF104  40 82 00 10 */	bne .L_80425B54
/* 80425B48 003EF108  4B F3 2E A9 */	bl OSRestoreInterrupts
/* 80425B4C 003EF10C  3B C0 00 00 */	li r30, 0
/* 80425B50 003EF110  48 00 00 10 */	b .L_80425B60
.L_80425B54:
/* 80425B54 003EF114  83 DD 00 1C */	lwz r30, 0x1c(r29)
/* 80425B58 003EF118  4B F3 2E 99 */	bl OSRestoreInterrupts
/* 80425B5C 003EF11C  3B DE FF FC */	addi r30, r30, -4
.L_80425B60:
/* 80425B60 003EF120  2C 1E 00 00 */	cmpwi r30, 0
/* 80425B64 003EF124  41 82 00 14 */	beq .L_80425B78
/* 80425B68 003EF128  7F E3 FB 78 */	mr r3, r31
/* 80425B6C 003EF12C  4B F3 2E 85 */	bl OSRestoreInterrupts
/* 80425B70 003EF130  7F C3 F3 78 */	mr r3, r30
/* 80425B74 003EF134  48 00 00 90 */	b .L_80425C04
.L_80425B78:
/* 80425B78 003EF138  4B F3 2E 39 */	bl OSDisableInterrupts
/* 80425B7C 003EF13C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80425B80 003EF140  2C 00 00 00 */	cmpwi r0, 0
/* 80425B84 003EF144  40 82 00 10 */	bne .L_80425B94
/* 80425B88 003EF148  4B F3 2E 69 */	bl OSRestoreInterrupts
/* 80425B8C 003EF14C  3B C0 00 00 */	li r30, 0
/* 80425B90 003EF150  48 00 00 10 */	b .L_80425BA0
.L_80425B94:
/* 80425B94 003EF154  83 DD 00 10 */	lwz r30, 0x10(r29)
/* 80425B98 003EF158  4B F3 2E 59 */	bl OSRestoreInterrupts
/* 80425B9C 003EF15C  3B DE FF FC */	addi r30, r30, -4
.L_80425BA0:
/* 80425BA0 003EF160  2C 1E 00 00 */	cmpwi r30, 0
/* 80425BA4 003EF164  41 82 00 14 */	beq .L_80425BB8
/* 80425BA8 003EF168  7F E3 FB 78 */	mr r3, r31
/* 80425BAC 003EF16C  4B F3 2E 45 */	bl OSRestoreInterrupts
/* 80425BB0 003EF170  7F C3 F3 78 */	mr r3, r30
/* 80425BB4 003EF174  48 00 00 50 */	b .L_80425C04
.L_80425BB8:
/* 80425BB8 003EF178  4B F3 2D F9 */	bl OSDisableInterrupts
/* 80425BBC 003EF17C  80 1D 00 00 */	lwz r0, 0(r29)
/* 80425BC0 003EF180  2C 00 00 00 */	cmpwi r0, 0
/* 80425BC4 003EF184  40 82 00 10 */	bne .L_80425BD4
/* 80425BC8 003EF188  4B F3 2E 29 */	bl OSRestoreInterrupts
/* 80425BCC 003EF18C  3B C0 00 00 */	li r30, 0
/* 80425BD0 003EF190  48 00 00 10 */	b .L_80425BE0
.L_80425BD4:
/* 80425BD4 003EF194  83 DD 00 04 */	lwz r30, 4(r29)
/* 80425BD8 003EF198  4B F3 2E 19 */	bl OSRestoreInterrupts
/* 80425BDC 003EF19C  3B DE FF FC */	addi r30, r30, -4
.L_80425BE0:
/* 80425BE0 003EF1A0  2C 1E 00 00 */	cmpwi r30, 0
/* 80425BE4 003EF1A4  41 82 00 14 */	beq .L_80425BF8
/* 80425BE8 003EF1A8  7F E3 FB 78 */	mr r3, r31
/* 80425BEC 003EF1AC  4B F3 2E 05 */	bl OSRestoreInterrupts
/* 80425BF0 003EF1B0  7F C3 F3 78 */	mr r3, r30
/* 80425BF4 003EF1B4  48 00 00 10 */	b .L_80425C04
.L_80425BF8:
/* 80425BF8 003EF1B8  7F E3 FB 78 */	mr r3, r31
/* 80425BFC 003EF1BC  4B F3 2D F5 */	bl OSRestoreInterrupts
/* 80425C00 003EF1C0  38 60 00 00 */	li r3, 0
.L_80425C04:
/* 80425C04 003EF1C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80425C08 003EF1C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80425C0C 003EF1CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80425C10 003EF1D0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80425C14 003EF1D4  7C 08 03 A6 */	mtlr r0
/* 80425C18 003EF1D8  38 21 00 20 */	addi r1, r1, 0x20
/* 80425C1C 003EF1DC  4E 80 00 20 */	blr 
.endfn GetNextTask__Q44nw4r3snd6detail11TaskManagerFv

.fn ExecuteTask__Q44nw4r3snd6detail11TaskManagerFv, global
/* 80425C20 003EF1E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80425C24 003EF1E4  7C 08 02 A6 */	mflr r0
/* 80425C28 003EF1E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80425C2C 003EF1EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80425C30 003EF1F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80425C34 003EF1F4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80425C38 003EF1F8  7C 7D 1B 78 */	mr r29, r3
/* 80425C3C 003EF1FC  4B FF FD 7D */	bl PopTask__Q44nw4r3snd6detail11TaskManagerFv
/* 80425C40 003EF200  2C 03 00 00 */	cmpwi r3, 0
/* 80425C44 003EF204  7C 7E 1B 78 */	mr r30, r3
/* 80425C48 003EF208  40 82 00 0C */	bne .L_80425C54
/* 80425C4C 003EF20C  38 60 00 00 */	li r3, 0
/* 80425C50 003EF210  48 00 00 30 */	b .L_80425C80
.L_80425C54:
/* 80425C54 003EF214  90 7D 00 24 */	stw r3, 0x24(r29)
/* 80425C58 003EF218  3B E0 00 00 */	li r31, 0
/* 80425C5C 003EF21C  9B E3 00 0C */	stb r31, 0xc(r3)
/* 80425C60 003EF220  81 83 00 00 */	lwz r12, 0(r3)
/* 80425C64 003EF224  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80425C68 003EF228  7D 89 03 A6 */	mtctr r12
/* 80425C6C 003EF22C  4E 80 04 21 */	bctrl 
/* 80425C70 003EF230  93 FD 00 24 */	stw r31, 0x24(r29)
/* 80425C74 003EF234  38 7D 00 34 */	addi r3, r29, 0x34
/* 80425C78 003EF238  4B F3 6A E9 */	bl OSWakeupThread
/* 80425C7C 003EF23C  7F C3 F3 78 */	mr r3, r30
.L_80425C80:
/* 80425C80 003EF240  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80425C84 003EF244  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80425C88 003EF248  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80425C8C 003EF24C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80425C90 003EF250  7C 08 03 A6 */	mtlr r0
/* 80425C94 003EF254  38 21 00 20 */	addi r1, r1, 0x20
/* 80425C98 003EF258  4E 80 00 20 */	blr 
.endfn ExecuteTask__Q44nw4r3snd6detail11TaskManagerFv

.fn CancelTask__Q44nw4r3snd6detail11TaskManagerFPQ44nw4r3snd6detail4Task, global
/* 80425C9C 003EF25C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80425CA0 003EF260  7C 08 02 A6 */	mflr r0
/* 80425CA4 003EF264  90 01 00 34 */	stw r0, 0x34(r1)
/* 80425CA8 003EF268  39 61 00 30 */	addi r11, r1, 0x30
/* 80425CAC 003EF26C  4B E9 44 A1 */	bl _savegpr_25
/* 80425CB0 003EF270  7C 79 1B 78 */	mr r25, r3
/* 80425CB4 003EF274  7C 9A 23 78 */	mr r26, r4
/* 80425CB8 003EF278  4B F3 2C F9 */	bl OSDisableInterrupts
/* 80425CBC 003EF27C  80 19 00 24 */	lwz r0, 0x24(r25)
/* 80425CC0 003EF280  7C 7E 1B 78 */	mr r30, r3
/* 80425CC4 003EF284  7C 1A 00 40 */	cmplw r26, r0
/* 80425CC8 003EF288  40 82 00 34 */	bne .L_80425CFC
/* 80425CCC 003EF28C  81 9A 00 00 */	lwz r12, 0(r26)
/* 80425CD0 003EF290  7F 43 D3 78 */	mr r3, r26
/* 80425CD4 003EF294  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80425CD8 003EF298  7D 89 03 A6 */	mtctr r12
/* 80425CDC 003EF29C  4E 80 04 21 */	bctrl 
/* 80425CE0 003EF2A0  48 00 00 0C */	b .L_80425CEC
.L_80425CE4:
/* 80425CE4 003EF2A4  38 79 00 34 */	addi r3, r25, 0x34
/* 80425CE8 003EF2A8  4B F3 69 89 */	bl OSSleepThread
.L_80425CEC:
/* 80425CEC 003EF2AC  80 19 00 24 */	lwz r0, 0x24(r25)
/* 80425CF0 003EF2B0  7C 1A 00 40 */	cmplw r26, r0
/* 80425CF4 003EF2B4  41 82 FF F0 */	beq .L_80425CE4
/* 80425CF8 003EF2B8  48 00 00 74 */	b .L_80425D6C
.L_80425CFC:
/* 80425CFC 003EF2BC  3B 60 00 00 */	li r27, 0
/* 80425D00 003EF2C0  3B E0 00 00 */	li r31, 0
/* 80425D04 003EF2C4  3B A0 00 00 */	li r29, 0
.L_80425D08:
/* 80425D08 003EF2C8  7C 79 FA 14 */	add r3, r25, r31
/* 80425D0C 003EF2CC  80 83 00 04 */	lwz r4, 4(r3)
/* 80425D10 003EF2D0  38 03 00 04 */	addi r0, r3, 4
/* 80425D14 003EF2D4  48 00 00 40 */	b .L_80425D54
.L_80425D18:
/* 80425D18 003EF2D8  7C 9C 23 78 */	mr r28, r4
/* 80425D1C 003EF2DC  80 84 00 00 */	lwz r4, 0(r4)
/* 80425D20 003EF2E0  38 BC FF FC */	addi r5, r28, -4
/* 80425D24 003EF2E4  7C 05 D0 40 */	cmplw r5, r26
/* 80425D28 003EF2E8  40 82 00 2C */	bne .L_80425D54
/* 80425D2C 003EF2EC  93 81 00 08 */	stw r28, 8(r1)
/* 80425D30 003EF2F0  38 81 00 08 */	addi r4, r1, 8
/* 80425D34 003EF2F4  48 00 57 61 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8Iterator
/* 80425D38 003EF2F8  9B BC 00 08 */	stb r29, 8(r28)
/* 80425D3C 003EF2FC  38 7C FF FC */	addi r3, r28, -4
/* 80425D40 003EF300  81 9C FF FC */	lwz r12, -4(r28)
/* 80425D44 003EF304  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80425D48 003EF308  7D 89 03 A6 */	mtctr r12
/* 80425D4C 003EF30C  4E 80 04 21 */	bctrl 
/* 80425D50 003EF310  48 00 00 0C */	b .L_80425D5C
.L_80425D54:
/* 80425D54 003EF314  7C 04 00 40 */	cmplw r4, r0
/* 80425D58 003EF318  40 82 FF C0 */	bne .L_80425D18
.L_80425D5C:
/* 80425D5C 003EF31C  3B 7B 00 01 */	addi r27, r27, 1
/* 80425D60 003EF320  3B FF 00 0C */	addi r31, r31, 0xc
/* 80425D64 003EF324  2C 1B 00 03 */	cmpwi r27, 3
/* 80425D68 003EF328  41 80 FF A0 */	blt .L_80425D08
.L_80425D6C:
/* 80425D6C 003EF32C  7F C3 F3 78 */	mr r3, r30
/* 80425D70 003EF330  4B F3 2C 81 */	bl OSRestoreInterrupts
/* 80425D74 003EF334  39 61 00 30 */	addi r11, r1, 0x30
/* 80425D78 003EF338  4B E9 44 21 */	bl _restgpr_25
/* 80425D7C 003EF33C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80425D80 003EF340  7C 08 03 A6 */	mtlr r0
/* 80425D84 003EF344  38 21 00 30 */	addi r1, r1, 0x30
/* 80425D88 003EF348  4E 80 00 20 */	blr 
.endfn CancelTask__Q44nw4r3snd6detail11TaskManagerFPQ44nw4r3snd6detail4Task

.fn CancelAllTask__Q44nw4r3snd6detail11TaskManagerFv, global
/* 80425D8C 003EF34C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80425D90 003EF350  7C 08 02 A6 */	mflr r0
/* 80425D94 003EF354  90 01 00 34 */	stw r0, 0x34(r1)
/* 80425D98 003EF358  39 61 00 30 */	addi r11, r1, 0x30
/* 80425D9C 003EF35C  4B E9 43 B1 */	bl _savegpr_25
/* 80425DA0 003EF360  7C 79 1B 78 */	mr r25, r3
/* 80425DA4 003EF364  4B F3 2C 0D */	bl OSDisableInterrupts
/* 80425DA8 003EF368  7C 7E 1B 78 */	mr r30, r3
/* 80425DAC 003EF36C  3B 60 00 00 */	li r27, 0
/* 80425DB0 003EF370  3B E0 00 00 */	li r31, 0
/* 80425DB4 003EF374  3B A0 00 00 */	li r29, 0
.L_80425DB8:
/* 80425DB8 003EF378  7C 19 F8 2E */	lwzx r0, r25, r31
/* 80425DBC 003EF37C  7F 59 FA 14 */	add r26, r25, r31
/* 80425DC0 003EF380  2C 00 00 00 */	cmpwi r0, 0
/* 80425DC4 003EF384  41 82 00 44 */	beq .L_80425E08
/* 80425DC8 003EF388  48 00 00 34 */	b .L_80425DFC
.L_80425DCC:
/* 80425DCC 003EF38C  80 BA 00 08 */	lwz r5, 8(r26)
/* 80425DD0 003EF390  7F 43 D3 78 */	mr r3, r26
/* 80425DD4 003EF394  38 81 00 08 */	addi r4, r1, 8
/* 80425DD8 003EF398  90 A1 00 08 */	stw r5, 8(r1)
/* 80425DDC 003EF39C  3B 85 FF FC */	addi r28, r5, -4
/* 80425DE0 003EF3A0  48 00 56 B5 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8Iterator
/* 80425DE4 003EF3A4  9B BC 00 0C */	stb r29, 0xc(r28)
/* 80425DE8 003EF3A8  7F 83 E3 78 */	mr r3, r28
/* 80425DEC 003EF3AC  81 9C 00 00 */	lwz r12, 0(r28)
/* 80425DF0 003EF3B0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80425DF4 003EF3B4  7D 89 03 A6 */	mtctr r12
/* 80425DF8 003EF3B8  4E 80 04 21 */	bctrl 
.L_80425DFC:
/* 80425DFC 003EF3BC  80 1A 00 00 */	lwz r0, 0(r26)
/* 80425E00 003EF3C0  2C 00 00 00 */	cmpwi r0, 0
/* 80425E04 003EF3C4  40 82 FF C8 */	bne .L_80425DCC
.L_80425E08:
/* 80425E08 003EF3C8  3B 7B 00 01 */	addi r27, r27, 1
/* 80425E0C 003EF3CC  3B FF 00 0C */	addi r31, r31, 0xc
/* 80425E10 003EF3D0  2C 1B 00 03 */	cmpwi r27, 3
/* 80425E14 003EF3D4  41 80 FF A4 */	blt .L_80425DB8
/* 80425E18 003EF3D8  80 19 00 24 */	lwz r0, 0x24(r25)
/* 80425E1C 003EF3DC  2C 00 00 00 */	cmpwi r0, 0
/* 80425E20 003EF3E0  41 82 00 30 */	beq .L_80425E50
/* 80425E24 003EF3E4  80 79 00 24 */	lwz r3, 0x24(r25)
/* 80425E28 003EF3E8  81 83 00 00 */	lwz r12, 0(r3)
/* 80425E2C 003EF3EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80425E30 003EF3F0  7D 89 03 A6 */	mtctr r12
/* 80425E34 003EF3F4  4E 80 04 21 */	bctrl 
/* 80425E38 003EF3F8  48 00 00 0C */	b .L_80425E44
.L_80425E3C:
/* 80425E3C 003EF3FC  38 79 00 34 */	addi r3, r25, 0x34
/* 80425E40 003EF400  4B F3 68 31 */	bl OSSleepThread
.L_80425E44:
/* 80425E44 003EF404  80 19 00 24 */	lwz r0, 0x24(r25)
/* 80425E48 003EF408  2C 00 00 00 */	cmpwi r0, 0
/* 80425E4C 003EF40C  40 82 FF F0 */	bne .L_80425E3C
.L_80425E50:
/* 80425E50 003EF410  7F C3 F3 78 */	mr r3, r30
/* 80425E54 003EF414  4B F3 2B 9D */	bl OSRestoreInterrupts
/* 80425E58 003EF418  39 61 00 30 */	addi r11, r1, 0x30
/* 80425E5C 003EF41C  4B E9 43 3D */	bl _restgpr_25
/* 80425E60 003EF420  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80425E64 003EF424  7C 08 03 A6 */	mtlr r0
/* 80425E68 003EF428  38 21 00 30 */	addi r1, r1, 0x30
/* 80425E6C 003EF42C  4E 80 00 20 */	blr 
.endfn CancelAllTask__Q44nw4r3snd6detail11TaskManagerFv

.fn WaitTask__Q44nw4r3snd6detail11TaskManagerFv, global
/* 80425E70 003EF430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80425E74 003EF434  7C 08 02 A6 */	mflr r0
/* 80425E78 003EF438  90 01 00 14 */	stw r0, 0x14(r1)
/* 80425E7C 003EF43C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80425E80 003EF440  93 C1 00 08 */	stw r30, 8(r1)
/* 80425E84 003EF444  7C 7E 1B 78 */	mr r30, r3
/* 80425E88 003EF448  4B F3 2B 29 */	bl OSDisableInterrupts
/* 80425E8C 003EF44C  38 00 00 00 */	li r0, 0
/* 80425E90 003EF450  7C 7F 1B 78 */	mr r31, r3
/* 80425E94 003EF454  98 1E 00 28 */	stb r0, 0x28(r30)
/* 80425E98 003EF458  48 00 00 0C */	b .L_80425EA4
.L_80425E9C:
/* 80425E9C 003EF45C  38 7E 00 2C */	addi r3, r30, 0x2c
/* 80425EA0 003EF460  4B F3 67 D1 */	bl OSSleepThread
.L_80425EA4:
/* 80425EA4 003EF464  7F C3 F3 78 */	mr r3, r30
/* 80425EA8 003EF468  4B FF FC 6D */	bl GetNextTask__Q44nw4r3snd6detail11TaskManagerFv
/* 80425EAC 003EF46C  2C 03 00 00 */	cmpwi r3, 0
/* 80425EB0 003EF470  40 82 00 10 */	bne .L_80425EC0
/* 80425EB4 003EF474  88 1E 00 28 */	lbz r0, 0x28(r30)
/* 80425EB8 003EF478  2C 00 00 00 */	cmpwi r0, 0
/* 80425EBC 003EF47C  41 82 FF E0 */	beq .L_80425E9C
.L_80425EC0:
/* 80425EC0 003EF480  7F E3 FB 78 */	mr r3, r31
/* 80425EC4 003EF484  4B F3 2B 2D */	bl OSRestoreInterrupts
/* 80425EC8 003EF488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80425ECC 003EF48C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80425ED0 003EF490  83 C1 00 08 */	lwz r30, 8(r1)
/* 80425ED4 003EF494  7C 08 03 A6 */	mtlr r0
/* 80425ED8 003EF498  38 21 00 10 */	addi r1, r1, 0x10
/* 80425EDC 003EF49C  4E 80 00 20 */	blr 
.endfn WaitTask__Q44nw4r3snd6detail11TaskManagerFv

.fn CancelWaitTask__Q44nw4r3snd6detail11TaskManagerFv, global
/* 80425EE0 003EF4A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80425EE4 003EF4A4  7C 08 02 A6 */	mflr r0
/* 80425EE8 003EF4A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80425EEC 003EF4AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80425EF0 003EF4B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80425EF4 003EF4B4  7C 7E 1B 78 */	mr r30, r3
/* 80425EF8 003EF4B8  4B F3 2A B9 */	bl OSDisableInterrupts
/* 80425EFC 003EF4BC  38 00 00 01 */	li r0, 1
/* 80425F00 003EF4C0  7C 7F 1B 78 */	mr r31, r3
/* 80425F04 003EF4C4  98 1E 00 28 */	stb r0, 0x28(r30)
/* 80425F08 003EF4C8  38 7E 00 2C */	addi r3, r30, 0x2c
/* 80425F0C 003EF4CC  4B F3 68 55 */	bl OSWakeupThread
/* 80425F10 003EF4D0  7F E3 FB 78 */	mr r3, r31
/* 80425F14 003EF4D4  4B F3 2A DD */	bl OSRestoreInterrupts
/* 80425F18 003EF4D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80425F1C 003EF4DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80425F20 003EF4E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80425F24 003EF4E4  7C 08 03 A6 */	mtlr r0
/* 80425F28 003EF4E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80425F2C 003EF4EC  4E 80 00 20 */	blr 
.endfn CancelWaitTask__Q44nw4r3snd6detail11TaskManagerFv

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.global lbl_80657018
lbl_80657018:
	.skip 0xC
.global lbl_80657024
lbl_80657024:
	.skip 0x3C

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.global lbl_80667E08
lbl_80667E08:
	.skip 0x8