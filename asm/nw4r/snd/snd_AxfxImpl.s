.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl, global
/* 804115B4 003DAB74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804115B8 003DAB78  7C 08 02 A6 */	mflr r0
/* 804115BC 003DAB7C  2C 04 00 00 */	cmpwi r4, 0
/* 804115C0 003DAB80  90 01 00 14 */	stw r0, 0x14(r1)
/* 804115C4 003DAB84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804115C8 003DAB88  7C 7F 1B 78 */	mr r31, r3
/* 804115CC 003DAB8C  41 82 00 0C */	beq .L_804115D8
/* 804115D0 003DAB90  2C 05 00 00 */	cmpwi r5, 0
/* 804115D4 003DAB94  40 82 00 14 */	bne .L_804115E8
.L_804115D8:
/* 804115D8 003DAB98  38 00 00 00 */	li r0, 0
/* 804115DC 003DAB9C  90 03 00 00 */	stw r0, 0(r3)
/* 804115E0 003DABA0  38 60 00 00 */	li r3, 0
/* 804115E4 003DABA4  48 00 00 24 */	b .L_80411608
.L_804115E8:
/* 804115E8 003DABA8  7C 83 23 78 */	mr r3, r4
/* 804115EC 003DABAC  7C A4 2B 78 */	mr r4, r5
/* 804115F0 003DABB0  38 A0 00 00 */	li r5, 0
/* 804115F4 003DABB4  4B F3 81 7D */	bl MEMCreateFrmHeapEx
/* 804115F8 003DABB8  7C 03 00 D0 */	neg r0, r3
/* 804115FC 003DABBC  90 7F 00 00 */	stw r3, 0(r31)
/* 80411600 003DABC0  7C 00 1B 78 */	or r0, r0, r3
/* 80411604 003DABC4  54 03 0F FE */	srwi r3, r0, 0x1f
.L_80411608:
/* 80411608 003DABC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041160C 003DABCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80411610 003DABD0  7C 08 03 A6 */	mtlr r0
/* 80411614 003DABD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80411618 003DABD8  4E 80 00 20 */	blr
.endfn CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl

.fn DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv, global
/* 8041161C 003DABDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80411620 003DABE0  7C 08 02 A6 */	mflr r0
/* 80411624 003DABE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80411628 003DABE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041162C 003DABEC  7C 7F 1B 78 */	mr r31, r3
/* 80411630 003DABF0  80 03 00 00 */	lwz r0, 0(r3)
/* 80411634 003DABF4  2C 00 00 00 */	cmpwi r0, 0
/* 80411638 003DABF8  41 82 00 14 */	beq .L_8041164C
/* 8041163C 003DABFC  7C 03 03 78 */	mr r3, r0
/* 80411640 003DAC00  4B F3 81 C1 */	bl MEMDestroyFrmHeap
/* 80411644 003DAC04  38 00 00 00 */	li r0, 0
/* 80411648 003DAC08  90 1F 00 00 */	stw r0, 0(r31)
.L_8041164C:
/* 8041164C 003DAC0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80411650 003DAC10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80411654 003DAC14  7C 08 03 A6 */	mtlr r0
/* 80411658 003DAC18  38 21 00 10 */	addi r1, r1, 0x10
/* 8041165C 003DAC1C  4E 80 00 20 */	blr 
.endfn DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv

.fn HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v, global
/* 80411660 003DAC20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80411664 003DAC24  7C 08 02 A6 */	mflr r0
/* 80411668 003DAC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041166C 003DAC2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80411670 003DAC30  7C 7F 1B 78 */	mr r31, r3
/* 80411674 003DAC34  7C 83 23 78 */	mr r3, r4
/* 80411678 003DAC38  7C A4 2B 78 */	mr r4, r5
/* 8041167C 003DAC3C  4B EC 94 B5 */	bl AXFXGetHooks
/* 80411680 003DAC40  3C 60 80 41 */	lis r3, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@ha
/* 80411684 003DAC44  3C 80 80 41 */	lis r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@ha
/* 80411688 003DAC48  38 63 16 E8 */	addi r3, r3, Alloc__Q44nw4r3snd6detail8AxfxImplFUl@l
/* 8041168C 003DAC4C  38 84 17 48 */	addi r4, r4, Free__Q44nw4r3snd6detail8AxfxImplFPv@l
/* 80411690 003DAC50  4B EC 94 91 */	bl AXFXSetHooks
/* 80411694 003DAC54  38 00 00 00 */	li r0, 0
/* 80411698 003DAC58  93 ED BC 28 */	stw r31, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r13)
/* 8041169C 003DAC5C  90 0D BC 2C */	stw r0, mAllocatedSize__Q44nw4r3snd6detail8AxfxImpl@sda21(r13)
/* 804116A0 003DAC60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804116A4 003DAC64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804116A8 003DAC68  7C 08 03 A6 */	mtlr r0
/* 804116AC 003DAC6C  38 21 00 10 */	addi r1, r1, 0x10
/* 804116B0 003DAC70  4E 80 00 20 */	blr 
.endfn HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v

.fn RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v, global
/* 804116B4 003DAC74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804116B8 003DAC78  7C 08 02 A6 */	mflr r0
/* 804116BC 003DAC7C  7C 83 23 78 */	mr r3, r4
/* 804116C0 003DAC80  7C A4 2B 78 */	mr r4, r5
/* 804116C4 003DAC84  90 01 00 14 */	stw r0, 0x14(r1)
/* 804116C8 003DAC88  4B EC 94 59 */	bl AXFXSetHooks
/* 804116CC 003DAC8C  38 00 00 00 */	li r0, 0
/* 804116D0 003DAC90  80 6D BC 2C */	lwz r3, mAllocatedSize__Q44nw4r3snd6detail8AxfxImpl@sda21(r13)
/* 804116D4 003DAC94  90 0D BC 28 */	stw r0, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r13)
/* 804116D8 003DAC98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804116DC 003DAC9C  7C 08 03 A6 */	mtlr r0
/* 804116E0 003DACA0  38 21 00 10 */	addi r1, r1, 0x10
/* 804116E4 003DACA4  4E 80 00 20 */	blr
.endfn RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v

.fn Alloc__Q44nw4r3snd6detail8AxfxImplFUl, global
/* 804116E8 003DACA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804116EC 003DACAC  7C 08 02 A6 */	mflr r0
/* 804116F0 003DACB0  38 A0 00 04 */	li r5, 4
/* 804116F4 003DACB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804116F8 003DACB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804116FC 003DACBC  7C 7F 1B 78 */	mr r31, r3
/* 80411700 003DACC0  7F E4 FB 78 */	mr r4, r31
/* 80411704 003DACC4  80 CD BC 28 */	lwz r6, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r13)
/* 80411708 003DACC8  80 66 00 00 */	lwz r3, 0(r6)
/* 8041170C 003DACCC  4B F3 81 25 */	bl MEMAllocFromFrmHeapEx
/* 80411710 003DACD0  80 AD BC 28 */	lwz r5, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r13)
/* 80411714 003DACD4  38 1F 00 03 */	addi r0, r31, 3
/* 80411718 003DACD8  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 8041171C 003DACDC  80 85 00 04 */	lwz r4, 4(r5)
/* 80411720 003DACE0  38 84 00 01 */	addi r4, r4, 1
/* 80411724 003DACE4  90 85 00 04 */	stw r4, 4(r5)
/* 80411728 003DACE8  80 8D BC 2C */	lwz r4, mAllocatedSize__Q44nw4r3snd6detail8AxfxImpl@sda21(r13)
/* 8041172C 003DACEC  7C 04 02 14 */	add r0, r4, r0
/* 80411730 003DACF0  90 0D BC 2C */	stw r0, mAllocatedSize__Q44nw4r3snd6detail8AxfxImpl@sda21(r13)
/* 80411734 003DACF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80411738 003DACF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041173C 003DACFC  7C 08 03 A6 */	mtlr r0
/* 80411740 003DAD00  38 21 00 10 */	addi r1, r1, 0x10
/* 80411744 003DAD04  4E 80 00 20 */	blr
.endfn Alloc__Q44nw4r3snd6detail8AxfxImplFUl

.fn Free__Q44nw4r3snd6detail8AxfxImplFPv, global
/* 80411748 003DAD08  80 8D BC 28 */	lwz r4, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r13)
/* 8041174C 003DAD0C  80 64 00 04 */	lwz r3, 4(r4)
/* 80411750 003DAD10  2C 03 00 00 */	cmpwi r3, 0
/* 80411754 003DAD14  41 82 00 0C */	beq .L_80411760
/* 80411758 003DAD18  38 03 FF FF */	addi r0, r3, -1
/* 8041175C 003DAD1C  90 04 00 04 */	stw r0, 4(r4)
.L_80411760:
/* 80411760 003DAD20  80 6D BC 28 */	lwz r3, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r13)
/* 80411764 003DAD24  80 03 00 04 */	lwz r0, 4(r3)
/* 80411768 003DAD28  2C 00 00 00 */	cmpwi r0, 0
/* 8041176C 003DAD2C  4C 82 00 20 */	bnelr 
/* 80411770 003DAD30  80 63 00 00 */	lwz r3, 0(r3)
/* 80411774 003DAD34  38 80 00 03 */	li r4, 3
/* 80411778 003DAD38  4B F3 81 D8 */	b MEMFreeToFrmHeap
/* 8041177C 003DAD3C  4E 80 00 20 */	blr 
.endfn Free__Q44nw4r3snd6detail8AxfxImplFPv

.section .sbss, "wa"  # 0x80666600 - 0x8066836F


mCurrentFx__Q44nw4r3snd6detail8AxfxImpl:
	.skip 0x4

mAllocatedSize__Q44nw4r3snd6detail8AxfxImpl:
	.skip 0x4