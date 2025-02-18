.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn __AXAuxInit, global
/* 802D26B0 0029BC70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D26B4 0029BC74  7C 08 02 A6 */	mflr r0
/* 802D26B8 0029BC78  3C C0 80 58 */	lis r6, __AXBufferAuxA@ha
/* 802D26BC 0029BC7C  38 A0 00 00 */	li r5, 0
/* 802D26C0 0029BC80  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D26C4 0029BC84  38 C6 D9 40 */	addi r6, r6, __AXBufferAuxA@l
/* 802D26C8 0029BC88  38 00 00 20 */	li r0, 0x20
/* 802D26CC 0029BC8C  38 80 00 01 */	li r4, 1
/* 802D26D0 0029BC90  38 60 00 02 */	li r3, 2
/* 802D26D4 0029BC94  90 AD B4 D0 */	stw r5, __AXCallbackAuxA@sda21(r13)
/* 802D26D8 0029BC98  38 E6 00 00 */	addi r7, r6, 0
/* 802D26DC 0029BC9C  39 06 12 00 */	addi r8, r6, 0x1200
/* 802D26E0 0029BCA0  90 AD B4 CC */	stw r5, __AXCallbackAuxB@sda21(r13)
/* 802D26E4 0029BCA4  38 C6 24 00 */	addi r6, r6, 0x2400
/* 802D26E8 0029BCA8  90 AD B4 C8 */	stw r5, __AXCallbackAuxC@sda21(r13)
/* 802D26EC 0029BCAC  90 AD B4 C4 */	stw r5, __AXContextAuxA@sda21(r13)
/* 802D26F0 0029BCB0  90 AD B4 C0 */	stw r5, __AXContextAuxB@sda21(r13)
/* 802D26F4 0029BCB4  90 AD B4 BC */	stw r5, __AXContextAuxC@sda21(r13)
/* 802D26F8 0029BCB8  90 AD B4 A0 */	stw r5, __AXAuxDspWritePosition@sda21(r13)
/* 802D26FC 0029BCBC  90 8D B4 9C */	stw r4, __AXAuxDspReadPosition@sda21(r13)
/* 802D2700 0029BCC0  90 6D B4 98 */	stw r3, __AXAuxCpuReadWritePosition@sda21(r13)
/* 802D2704 0029BCC4  7C 09 03 A6 */	mtctr r0
.L_802D2708:
/* 802D2708 0029BCC8  90 A7 00 00 */	stw r5, 0(r7)
/* 802D270C 0029BCCC  90 A8 00 00 */	stw r5, 0(r8)
/* 802D2710 0029BCD0  90 A6 00 00 */	stw r5, 0(r6)
/* 802D2714 0029BCD4  90 A7 00 04 */	stw r5, 4(r7)
/* 802D2718 0029BCD8  90 A8 00 04 */	stw r5, 4(r8)
/* 802D271C 0029BCDC  90 A6 00 04 */	stw r5, 4(r6)
/* 802D2720 0029BCE0  90 A7 00 08 */	stw r5, 8(r7)
/* 802D2724 0029BCE4  90 A8 00 08 */	stw r5, 8(r8)
/* 802D2728 0029BCE8  90 A6 00 08 */	stw r5, 8(r6)
/* 802D272C 0029BCEC  90 A7 00 0C */	stw r5, 0xc(r7)
/* 802D2730 0029BCF0  90 A8 00 0C */	stw r5, 0xc(r8)
/* 802D2734 0029BCF4  90 A6 00 0C */	stw r5, 0xc(r6)
/* 802D2738 0029BCF8  90 A7 00 10 */	stw r5, 0x10(r7)
/* 802D273C 0029BCFC  90 A8 00 10 */	stw r5, 0x10(r8)
/* 802D2740 0029BD00  90 A6 00 10 */	stw r5, 0x10(r6)
/* 802D2744 0029BD04  90 A7 00 14 */	stw r5, 0x14(r7)
/* 802D2748 0029BD08  90 A8 00 14 */	stw r5, 0x14(r8)
/* 802D274C 0029BD0C  90 A6 00 14 */	stw r5, 0x14(r6)
/* 802D2750 0029BD10  90 A7 00 18 */	stw r5, 0x18(r7)
/* 802D2754 0029BD14  90 A8 00 18 */	stw r5, 0x18(r8)
/* 802D2758 0029BD18  90 A6 00 18 */	stw r5, 0x18(r6)
/* 802D275C 0029BD1C  90 A7 00 1C */	stw r5, 0x1c(r7)
/* 802D2760 0029BD20  90 A8 00 1C */	stw r5, 0x1c(r8)
/* 802D2764 0029BD24  90 A6 00 1C */	stw r5, 0x1c(r6)
/* 802D2768 0029BD28  90 A7 00 20 */	stw r5, 0x20(r7)
/* 802D276C 0029BD2C  38 E7 00 24 */	addi r7, r7, 0x24
/* 802D2770 0029BD30  90 A8 00 20 */	stw r5, 0x20(r8)
/* 802D2774 0029BD34  39 08 00 24 */	addi r8, r8, 0x24
/* 802D2778 0029BD38  90 A6 00 20 */	stw r5, 0x20(r6)
/* 802D277C 0029BD3C  38 C6 00 24 */	addi r6, r6, 0x24
/* 802D2780 0029BD40  42 00 FF 88 */	bdnz .L_802D2708
/* 802D2784 0029BD44  38 6D B4 DC */	addi r3, r13, __clearAuxA@sda21
/* 802D2788 0029BD48  38 80 00 00 */	li r4, 0
/* 802D278C 0029BD4C  38 A0 00 03 */	li r5, 3
/* 802D2790 0029BD50  4B D3 1B C1 */	bl memset
/* 802D2794 0029BD54  38 6D B4 D8 */	addi r3, r13, __clearAuxB@sda21
/* 802D2798 0029BD58  38 80 00 00 */	li r4, 0
/* 802D279C 0029BD5C  38 A0 00 03 */	li r5, 3
/* 802D27A0 0029BD60  4B D3 1B B1 */	bl memset
/* 802D27A4 0029BD64  38 6D B4 D4 */	addi r3, r13, __clearAuxC@sda21
/* 802D27A8 0029BD68  38 80 00 00 */	li r4, 0
/* 802D27AC 0029BD6C  38 A0 00 03 */	li r5, 3
/* 802D27B0 0029BD70  4B D3 1B A1 */	bl memset
/* 802D27B4 0029BD74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D27B8 0029BD78  7C 08 03 A6 */	mtlr r0
/* 802D27BC 0029BD7C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D27C0 0029BD80  4E 80 00 20 */	blr 
.endfn __AXAuxInit

.balign 16, 0
.fn __AXAuxQuit, global
/* 802D27D0 0029BD90  38 00 00 00 */	li r0, 0
/* 802D27D4 0029BD94  90 0D B4 D0 */	stw r0, __AXCallbackAuxA@sda21(r13)
/* 802D27D8 0029BD98  90 0D B4 CC */	stw r0, __AXCallbackAuxB@sda21(r13)
/* 802D27DC 0029BD9C  90 0D B4 C8 */	stw r0, __AXCallbackAuxC@sda21(r13)
/* 802D27E0 0029BDA0  4E 80 00 20 */	blr 
.endfn __AXAuxQuit

.balign 16, 0
.fn __AXGetAuxAInput, global
/* 802D27F0 0029BDB0  80 0D B4 D0 */	lwz r0, __AXCallbackAuxA@sda21(r13)
/* 802D27F4 0029BDB4  2C 00 00 00 */	cmpwi r0, 0
/* 802D27F8 0029BDB8  41 82 00 20 */	beq .L_802D2818
/* 802D27FC 0029BDBC  80 0D B4 A0 */	lwz r0, __AXAuxDspWritePosition@sda21(r13)
/* 802D2800 0029BDC0  3C 80 80 58 */	lis r4, __AXBufferAuxA@ha
/* 802D2804 0029BDC4  38 84 D9 40 */	addi r4, r4, __AXBufferAuxA@l
/* 802D2808 0029BDC8  1C 00 06 00 */	mulli r0, r0, 0x600
/* 802D280C 0029BDCC  7C 04 02 14 */	add r0, r4, r0
/* 802D2810 0029BDD0  90 03 00 00 */	stw r0, 0(r3)
/* 802D2814 0029BDD4  4E 80 00 20 */	blr
.L_802D2818:
/* 802D2818 0029BDD8  38 00 00 00 */	li r0, 0
/* 802D281C 0029BDDC  90 03 00 00 */	stw r0, 0(r3)
/* 802D2820 0029BDE0  4E 80 00 20 */	blr 
.endfn __AXGetAuxAInput

.balign 16, 0
.fn __AXGetAuxAOutput, global
/* 802D2830 0029BDF0  80 0D B4 9C */	lwz r0, __AXAuxDspReadPosition@sda21(r13)
/* 802D2834 0029BDF4  3C 80 80 58 */	lis r4, __AXBufferAuxA@ha
/* 802D2838 0029BDF8  38 84 D9 40 */	addi r4, r4, __AXBufferAuxA@l
/* 802D283C 0029BDFC  1C 00 06 00 */	mulli r0, r0, 0x600
/* 802D2840 0029BE00  7C 04 02 14 */	add r0, r4, r0
/* 802D2844 0029BE04  90 03 00 00 */	stw r0, 0(r3)
/* 802D2848 0029BE08  4E 80 00 20 */	blr 
.endfn __AXGetAuxAOutput

.balign 16, 0
.fn __AXGetAuxAInputDpl2, global
/* 802D2850 0029BE10  80 0D B4 A0 */	lwz r0, __AXAuxDspWritePosition@sda21(r13)
/* 802D2854 0029BE14  3C 80 80 58 */	lis r4, __AXBufferAuxA@ha
/* 802D2858 0029BE18  38 84 D9 40 */	addi r4, r4, __AXBufferAuxA@l
/* 802D285C 0029BE1C  1C 00 06 00 */	mulli r0, r0, 0x600
/* 802D2860 0029BE20  7C 84 02 14 */	add r4, r4, r0
/* 802D2864 0029BE24  38 04 04 80 */	addi r0, r4, 0x480
/* 802D2868 0029BE28  90 03 00 00 */	stw r0, 0(r3)
/* 802D286C 0029BE2C  4E 80 00 20 */	blr 
.endfn __AXGetAuxAInputDpl2

.balign 16, 0
.fn __AXGetAuxAOutputDpl2R, global
/* 802D2870 0029BE30  80 0D B4 9C */	lwz r0, __AXAuxDspReadPosition@sda21(r13)
/* 802D2874 0029BE34  3C 80 80 58 */	lis r4, __AXBufferAuxA@ha
/* 802D2878 0029BE38  38 84 D9 40 */	addi r4, r4, __AXBufferAuxA@l
/* 802D287C 0029BE3C  1C 00 06 00 */	mulli r0, r0, 0x600
/* 802D2880 0029BE40  7C 84 02 14 */	add r4, r4, r0
/* 802D2884 0029BE44  38 04 01 80 */	addi r0, r4, 0x180
/* 802D2888 0029BE48  90 03 00 00 */	stw r0, 0(r3)
/* 802D288C 0029BE4C  4E 80 00 20 */	blr 
.endfn __AXGetAuxAOutputDpl2R

.balign 16, 0
.fn __AXGetAuxAOutputDpl2Ls, global
/* 802D2890 0029BE50  80 0D B4 9C */	lwz r0, __AXAuxDspReadPosition@sda21(r13)
/* 802D2894 0029BE54  3C 80 80 58 */	lis r4, __AXBufferAuxA@ha
/* 802D2898 0029BE58  38 84 D9 40 */	addi r4, r4, __AXBufferAuxA@l
/* 802D289C 0029BE5C  1C 00 06 00 */	mulli r0, r0, 0x600
/* 802D28A0 0029BE60  7C 84 02 14 */	add r4, r4, r0
/* 802D28A4 0029BE64  38 04 03 00 */	addi r0, r4, 0x300
/* 802D28A8 0029BE68  90 03 00 00 */	stw r0, 0(r3)
/* 802D28AC 0029BE6C  4E 80 00 20 */	blr 
.endfn __AXGetAuxAOutputDpl2Ls

.balign 16, 0
.fn __AXGetAuxAOutputDpl2Rs, global
/* 802D28B0 0029BE70  80 0D B4 9C */	lwz r0, __AXAuxDspReadPosition@sda21(r13)
/* 802D28B4 0029BE74  3C 80 80 58 */	lis r4, __AXBufferAuxA@ha
/* 802D28B8 0029BE78  38 84 D9 40 */	addi r4, r4, __AXBufferAuxA@l
/* 802D28BC 0029BE7C  1C 00 06 00 */	mulli r0, r0, 0x600
/* 802D28C0 0029BE80  7C 84 02 14 */	add r4, r4, r0
/* 802D28C4 0029BE84  38 04 04 80 */	addi r0, r4, 0x480
/* 802D28C8 0029BE88  90 03 00 00 */	stw r0, 0(r3)
/* 802D28CC 0029BE8C  4E 80 00 20 */	blr 
.endfn __AXGetAuxAOutputDpl2Rs

.balign 16, 0
.fn __AXGetAuxBInput, global
/* 802D28D0 0029BE90  80 0D B4 CC */	lwz r0, __AXCallbackAuxB@sda21(r13)
/* 802D28D4 0029BE94  2C 00 00 00 */	cmpwi r0, 0
/* 802D28D8 0029BE98  41 82 00 20 */	beq .L_802D28F8
/* 802D28DC 0029BE9C  80 0D B4 A0 */	lwz r0, __AXAuxDspWritePosition@sda21(r13)
/* 802D28E0 0029BEA0  3C 80 80 58 */	lis r4, __AXBufferAuxB@ha
/* 802D28E4 0029BEA4  38 84 EB 40 */	addi r4, r4, __AXBufferAuxB@l
/* 802D28E8 0029BEA8  1C 00 06 00 */	mulli r0, r0, 0x600
/* 802D28EC 0029BEAC  7C 04 02 14 */	add r0, r4, r0
/* 802D28F0 0029BEB0  90 03 00 00 */	stw r0, 0(r3)
/* 802D28F4 0029BEB4  4E 80 00 20 */	blr
.L_802D28F8:
/* 802D28F8 0029BEB8  38 00 00 00 */	li r0, 0
/* 802D28FC 0029BEBC  90 03 00 00 */	stw r0, 0(r3)
/* 802D2900 0029BEC0  4E 80 00 20 */	blr 
.endfn __AXGetAuxBInput

.balign 16, 0
.fn __AXGetAuxBOutput, global
/* 802D2910 0029BED0  80 0D B4 9C */	lwz r0, __AXAuxDspReadPosition@sda21(r13)
/* 802D2914 0029BED4  3C 80 80 58 */	lis r4, __AXBufferAuxB@ha
/* 802D2918 0029BED8  38 84 EB 40 */	addi r4, r4, __AXBufferAuxB@l
/* 802D291C 0029BEDC  1C 00 06 00 */	mulli r0, r0, 0x600
/* 802D2920 0029BEE0  7C 04 02 14 */	add r0, r4, r0
/* 802D2924 0029BEE4  90 03 00 00 */	stw r0, 0(r3)
/* 802D2928 0029BEE8  4E 80 00 20 */	blr 
.endfn __AXGetAuxBOutput

.balign 16, 0
.fn __AXGetAuxBInputDpl2, global
/* 802D2930 0029BEF0  80 0D B4 A0 */	lwz r0, __AXAuxDspWritePosition@sda21(r13)
/* 802D2934 0029BEF4  3C 80 80 58 */	lis r4, __AXBufferAuxB@ha
/* 802D2938 0029BEF8  38 84 EB 40 */	addi r4, r4, __AXBufferAuxB@l
/* 802D293C 0029BEFC  1C 00 06 00 */	mulli r0, r0, 0x600
/* 802D2940 0029BF00  7C 84 02 14 */	add r4, r4, r0
/* 802D2944 0029BF04  38 04 04 80 */	addi r0, r4, 0x480
/* 802D2948 0029BF08  90 03 00 00 */	stw r0, 0(r3)
/* 802D294C 0029BF0C  4E 80 00 20 */	blr 
.endfn __AXGetAuxBInputDpl2

.balign 16, 0
.fn __AXGetAuxBOutputDpl2R, global
/* 802D2950 0029BF10  80 0D B4 9C */	lwz r0, __AXAuxDspReadPosition@sda21(r13)
/* 802D2954 0029BF14  3C 80 80 58 */	lis r4, __AXBufferAuxB@ha
/* 802D2958 0029BF18  38 84 EB 40 */	addi r4, r4, __AXBufferAuxB@l
/* 802D295C 0029BF1C  1C 00 06 00 */	mulli r0, r0, 0x600
/* 802D2960 0029BF20  7C 84 02 14 */	add r4, r4, r0
/* 802D2964 0029BF24  38 04 01 80 */	addi r0, r4, 0x180
/* 802D2968 0029BF28  90 03 00 00 */	stw r0, 0(r3)
/* 802D296C 0029BF2C  4E 80 00 20 */	blr 
.endfn __AXGetAuxBOutputDpl2R

.balign 16, 0
.fn __AXGetAuxBOutputDpl2Ls, global
/* 802D2970 0029BF30  80 0D B4 9C */	lwz r0, __AXAuxDspReadPosition@sda21(r13)
/* 802D2974 0029BF34  3C 80 80 58 */	lis r4, __AXBufferAuxB@ha
/* 802D2978 0029BF38  38 84 EB 40 */	addi r4, r4, __AXBufferAuxB@l
/* 802D297C 0029BF3C  1C 00 06 00 */	mulli r0, r0, 0x600
/* 802D2980 0029BF40  7C 84 02 14 */	add r4, r4, r0
/* 802D2984 0029BF44  38 04 03 00 */	addi r0, r4, 0x300
/* 802D2988 0029BF48  90 03 00 00 */	stw r0, 0(r3)
/* 802D298C 0029BF4C  4E 80 00 20 */	blr 
.endfn __AXGetAuxBOutputDpl2Ls

.balign 16, 0
.fn __AXGetAuxBOutputDpl2Rs, global
/* 802D2990 0029BF50  80 0D B4 9C */	lwz r0, __AXAuxDspReadPosition@sda21(r13)
/* 802D2994 0029BF54  3C 80 80 58 */	lis r4, __AXBufferAuxB@ha
/* 802D2998 0029BF58  38 84 EB 40 */	addi r4, r4, __AXBufferAuxB@l
/* 802D299C 0029BF5C  1C 00 06 00 */	mulli r0, r0, 0x600
/* 802D29A0 0029BF60  7C 84 02 14 */	add r4, r4, r0
/* 802D29A4 0029BF64  38 04 04 80 */	addi r0, r4, 0x480
/* 802D29A8 0029BF68  90 03 00 00 */	stw r0, 0(r3)
/* 802D29AC 0029BF6C  4E 80 00 20 */	blr 
.endfn __AXGetAuxBOutputDpl2Rs

.balign 16, 0
.fn __AXGetAuxCInput, global
/* 802D29B0 0029BF70  80 0D B4 C8 */	lwz r0, __AXCallbackAuxC@sda21(r13)
/* 802D29B4 0029BF74  2C 00 00 00 */	cmpwi r0, 0
/* 802D29B8 0029BF78  41 82 00 20 */	beq .L_802D29D8
/* 802D29BC 0029BF7C  80 0D B4 A0 */	lwz r0, __AXAuxDspWritePosition@sda21(r13)
/* 802D29C0 0029BF80  3C 80 80 58 */	lis r4, __AXBufferAuxC@ha
/* 802D29C4 0029BF84  38 84 FD 40 */	addi r4, r4, __AXBufferAuxC@l
/* 802D29C8 0029BF88  1C 00 04 80 */	mulli r0, r0, 0x480
/* 802D29CC 0029BF8C  7C 04 02 14 */	add r0, r4, r0
/* 802D29D0 0029BF90  90 03 00 00 */	stw r0, 0(r3)
/* 802D29D4 0029BF94  4E 80 00 20 */	blr
.L_802D29D8:
/* 802D29D8 0029BF98  38 00 00 00 */	li r0, 0
/* 802D29DC 0029BF9C  90 03 00 00 */	stw r0, 0(r3)
/* 802D29E0 0029BFA0  4E 80 00 20 */	blr 
.endfn __AXGetAuxCInput

.balign 16, 0
.fn __AXGetAuxCOutput, global
/* 802D29F0 0029BFB0  80 0D B4 9C */	lwz r0, __AXAuxDspReadPosition@sda21(r13)
/* 802D29F4 0029BFB4  3C 80 80 58 */	lis r4, __AXBufferAuxC@ha
/* 802D29F8 0029BFB8  38 84 FD 40 */	addi r4, r4, __AXBufferAuxC@l
/* 802D29FC 0029BFBC  1C 00 04 80 */	mulli r0, r0, 0x480
/* 802D2A00 0029BFC0  7C 04 02 14 */	add r0, r4, r0
/* 802D2A04 0029BFC4  90 03 00 00 */	stw r0, 0(r3)
/* 802D2A08 0029BFC8  4E 80 00 20 */	blr 
.endfn __AXGetAuxCOutput

.balign 16, 0
.fn __AXProcessAux, global
/* 802D2A10 0029BFD0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802D2A14 0029BFD4  7C 08 02 A6 */	mflr r0
/* 802D2A18 0029BFD8  90 01 00 64 */	stw r0, 0x64(r1)
/* 802D2A1C 0029BFDC  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 802D2A20 0029BFE0  3F E0 80 58 */	lis r31, __AXBufferAuxA@ha
/* 802D2A24 0029BFE4  3B FF D9 40 */	addi r31, r31, __AXBufferAuxA@l
/* 802D2A28 0029BFE8  93 C1 00 58 */	stw r30, 0x58(r1)
/* 802D2A2C 0029BFEC  39 1F 00 00 */	addi r8, r31, 0
/* 802D2A30 0029BFF0  38 7F 12 00 */	addi r3, r31, 0x1200
/* 802D2A34 0029BFF4  93 A1 00 54 */	stw r29, 0x54(r1)
/* 802D2A38 0029BFF8  81 2D B4 A0 */	lwz r9, __AXAuxDspWritePosition@sda21(r13)
/* 802D2A3C 0029BFFC  80 ED B4 9C */	lwz r7, __AXAuxDspReadPosition@sda21(r13)
/* 802D2A40 0029C000  1C A9 06 00 */	mulli r5, r9, 0x600
/* 802D2A44 0029C004  80 0D B4 D0 */	lwz r0, __AXCallbackAuxA@sda21(r13)
/* 802D2A48 0029C008  2C 00 00 00 */	cmpwi r0, 0
/* 802D2A4C 0029C00C  1C 87 06 00 */	mulli r4, r7, 0x600
/* 802D2A50 0029C010  7C 08 2A 14 */	add r0, r8, r5
/* 802D2A54 0029C014  90 0D B4 B8 */	stw r0, __AXAuxADspWrite@sda21(r13)
/* 802D2A58 0029C018  7C 03 2A 14 */	add r0, r3, r5
/* 802D2A5C 0029C01C  90 0D B4 B0 */	stw r0, __AXAuxBDspWrite@sda21(r13)
/* 802D2A60 0029C020  7C A3 22 14 */	add r5, r3, r4
/* 802D2A64 0029C024  7C C8 22 14 */	add r6, r8, r4
/* 802D2A68 0029C028  1C 69 04 80 */	mulli r3, r9, 0x480
/* 802D2A6C 0029C02C  38 9F 24 00 */	addi r4, r31, 0x2400
/* 802D2A70 0029C030  90 CD B4 B4 */	stw r6, __AXAuxADspRead@sda21(r13)
/* 802D2A74 0029C034  1C 07 04 80 */	mulli r0, r7, 0x480
/* 802D2A78 0029C038  90 AD B4 AC */	stw r5, __AXAuxBDspRead@sda21(r13)
/* 802D2A7C 0029C03C  7C 64 1A 14 */	add r3, r4, r3
/* 802D2A80 0029C040  90 6D B4 A8 */	stw r3, __AXAuxCDspWrite@sda21(r13)
/* 802D2A84 0029C044  7C 04 02 14 */	add r0, r4, r0
/* 802D2A88 0029C048  90 0D B4 A4 */	stw r0, __AXAuxCDspRead@sda21(r13)
/* 802D2A8C 0029C04C  41 82 00 B0 */	beq .L_802D2B3C
/* 802D2A90 0029C050  80 0D B4 F8 */	lwz r0, __AXClMode@sda21(r13)
/* 802D2A94 0029C054  28 00 00 02 */	cmplwi r0, 2
/* 802D2A98 0029C058  40 82 00 58 */	bne .L_802D2AF0
/* 802D2A9C 0029C05C  80 0D B4 98 */	lwz r0, __AXAuxCpuReadWritePosition@sda21(r13)
/* 802D2AA0 0029C060  38 80 06 00 */	li r4, 0x600
/* 802D2AA4 0029C064  1C 00 06 00 */	mulli r0, r0, 0x600
/* 802D2AA8 0029C068  7C 68 02 14 */	add r3, r8, r0
/* 802D2AAC 0029C06C  90 61 00 40 */	stw r3, 0x40(r1)
/* 802D2AB0 0029C070  38 C3 01 80 */	addi r6, r3, 0x180
/* 802D2AB4 0029C074  38 A3 03 00 */	addi r5, r3, 0x300
/* 802D2AB8 0029C078  38 03 04 80 */	addi r0, r3, 0x480
/* 802D2ABC 0029C07C  90 C1 00 44 */	stw r6, 0x44(r1)
/* 802D2AC0 0029C080  90 A1 00 48 */	stw r5, 0x48(r1)
/* 802D2AC4 0029C084  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802D2AC8 0029C088  48 08 14 B9 */	bl DCInvalidateRange
/* 802D2ACC 0029C08C  81 8D B4 D0 */	lwz r12, __AXCallbackAuxA@sda21(r13)
/* 802D2AD0 0029C090  38 61 00 40 */	addi r3, r1, 0x40
/* 802D2AD4 0029C094  80 8D B4 C4 */	lwz r4, __AXContextAuxA@sda21(r13)
/* 802D2AD8 0029C098  7D 89 03 A6 */	mtctr r12
/* 802D2ADC 0029C09C  4E 80 04 21 */	bctrl 
/* 802D2AE0 0029C0A0  80 61 00 40 */	lwz r3, 0x40(r1)
/* 802D2AE4 0029C0A4  38 80 06 00 */	li r4, 0x600
/* 802D2AE8 0029C0A8  48 08 15 29 */	bl DCFlushRangeNoSync
/* 802D2AEC 0029C0AC  48 00 00 94 */	b .L_802D2B80
.L_802D2AF0:
/* 802D2AF0 0029C0B0  80 0D B4 98 */	lwz r0, __AXAuxCpuReadWritePosition@sda21(r13)
/* 802D2AF4 0029C0B4  38 80 04 80 */	li r4, 0x480
/* 802D2AF8 0029C0B8  1C 00 06 00 */	mulli r0, r0, 0x600
/* 802D2AFC 0029C0BC  7C 68 02 14 */	add r3, r8, r0
/* 802D2B00 0029C0C0  90 61 00 30 */	stw r3, 0x30(r1)
/* 802D2B04 0029C0C4  38 A3 01 80 */	addi r5, r3, 0x180
/* 802D2B08 0029C0C8  38 03 03 00 */	addi r0, r3, 0x300
/* 802D2B0C 0029C0CC  90 A1 00 34 */	stw r5, 0x34(r1)
/* 802D2B10 0029C0D0  90 01 00 38 */	stw r0, 0x38(r1)
/* 802D2B14 0029C0D4  48 08 14 6D */	bl DCInvalidateRange
/* 802D2B18 0029C0D8  81 8D B4 D0 */	lwz r12, __AXCallbackAuxA@sda21(r13)
/* 802D2B1C 0029C0DC  38 61 00 30 */	addi r3, r1, 0x30
/* 802D2B20 0029C0E0  80 8D B4 C4 */	lwz r4, __AXContextAuxA@sda21(r13)
/* 802D2B24 0029C0E4  7D 89 03 A6 */	mtctr r12
/* 802D2B28 0029C0E8  4E 80 04 21 */	bctrl 
/* 802D2B2C 0029C0EC  80 61 00 30 */	lwz r3, 0x30(r1)
/* 802D2B30 0029C0F0  38 80 04 80 */	li r4, 0x480
/* 802D2B34 0029C0F4  48 08 14 DD */	bl DCFlushRangeNoSync
/* 802D2B38 0029C0F8  48 00 00 48 */	b .L_802D2B80
.L_802D2B3C:
/* 802D2B3C 0029C0FC  80 6D B4 98 */	lwz r3, __AXAuxCpuReadWritePosition@sda21(r13)
/* 802D2B40 0029C100  3B CD B4 DC */	addi r30, r13, __clearAuxA@sda21
/* 802D2B44 0029C104  7C 1E 18 AE */	lbzx r0, r30, r3
/* 802D2B48 0029C108  2C 00 00 00 */	cmpwi r0, 0
/* 802D2B4C 0029C10C  41 82 00 34 */	beq .L_802D2B80
/* 802D2B50 0029C110  1C 03 06 00 */	mulli r0, r3, 0x600
/* 802D2B54 0029C114  38 80 00 00 */	li r4, 0
/* 802D2B58 0029C118  38 A0 06 00 */	li r5, 0x600
/* 802D2B5C 0029C11C  7F A8 02 14 */	add r29, r8, r0
/* 802D2B60 0029C120  7F A3 EB 78 */	mr r3, r29
/* 802D2B64 0029C124  4B D3 17 ED */	bl memset
/* 802D2B68 0029C128  7F A3 EB 78 */	mr r3, r29
/* 802D2B6C 0029C12C  38 80 06 00 */	li r4, 0x600
/* 802D2B70 0029C130  48 08 14 41 */	bl DCFlushRange
/* 802D2B74 0029C134  80 0D B4 98 */	lwz r0, __AXAuxCpuReadWritePosition@sda21(r13)
/* 802D2B78 0029C138  38 60 00 00 */	li r3, 0
/* 802D2B7C 0029C13C  7C 7E 01 AE */	stbx r3, r30, r0
.L_802D2B80:
/* 802D2B80 0029C140  80 0D B4 CC */	lwz r0, __AXCallbackAuxB@sda21(r13)
/* 802D2B84 0029C144  2C 00 00 00 */	cmpwi r0, 0
/* 802D2B88 0029C148  41 82 00 B8 */	beq .L_802D2C40
/* 802D2B8C 0029C14C  80 0D B4 F8 */	lwz r0, __AXClMode@sda21(r13)
/* 802D2B90 0029C150  28 00 00 02 */	cmplwi r0, 2
/* 802D2B94 0029C154  40 82 00 5C */	bne .L_802D2BF0
/* 802D2B98 0029C158  80 6D B4 98 */	lwz r3, __AXAuxCpuReadWritePosition@sda21(r13)
/* 802D2B9C 0029C15C  38 1F 12 00 */	addi r0, r31, 0x1200
/* 802D2BA0 0029C160  38 80 06 00 */	li r4, 0x600
/* 802D2BA4 0029C164  1C 63 06 00 */	mulli r3, r3, 0x600
/* 802D2BA8 0029C168  7C 60 1A 14 */	add r3, r0, r3
/* 802D2BAC 0029C16C  90 61 00 20 */	stw r3, 0x20(r1)
/* 802D2BB0 0029C170  38 C3 01 80 */	addi r6, r3, 0x180
/* 802D2BB4 0029C174  38 A3 03 00 */	addi r5, r3, 0x300
/* 802D2BB8 0029C178  38 03 04 80 */	addi r0, r3, 0x480
/* 802D2BBC 0029C17C  90 C1 00 24 */	stw r6, 0x24(r1)
/* 802D2BC0 0029C180  90 A1 00 28 */	stw r5, 0x28(r1)
/* 802D2BC4 0029C184  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802D2BC8 0029C188  48 08 13 B9 */	bl DCInvalidateRange
/* 802D2BCC 0029C18C  81 8D B4 CC */	lwz r12, __AXCallbackAuxB@sda21(r13)
/* 802D2BD0 0029C190  38 61 00 20 */	addi r3, r1, 0x20
/* 802D2BD4 0029C194  80 8D B4 C0 */	lwz r4, __AXContextAuxB@sda21(r13)
/* 802D2BD8 0029C198  7D 89 03 A6 */	mtctr r12
/* 802D2BDC 0029C19C  4E 80 04 21 */	bctrl 
/* 802D2BE0 0029C1A0  80 61 00 20 */	lwz r3, 0x20(r1)
/* 802D2BE4 0029C1A4  38 80 06 00 */	li r4, 0x600
/* 802D2BE8 0029C1A8  48 08 14 29 */	bl DCFlushRangeNoSync
/* 802D2BEC 0029C1AC  48 00 00 9C */	b .L_802D2C88
.L_802D2BF0:
/* 802D2BF0 0029C1B0  80 6D B4 98 */	lwz r3, __AXAuxCpuReadWritePosition@sda21(r13)
/* 802D2BF4 0029C1B4  38 1F 12 00 */	addi r0, r31, 0x1200
/* 802D2BF8 0029C1B8  38 80 04 80 */	li r4, 0x480
/* 802D2BFC 0029C1BC  1C 63 06 00 */	mulli r3, r3, 0x600
/* 802D2C00 0029C1C0  7C 60 1A 14 */	add r3, r0, r3
/* 802D2C04 0029C1C4  90 61 00 14 */	stw r3, 0x14(r1)
/* 802D2C08 0029C1C8  38 A3 01 80 */	addi r5, r3, 0x180
/* 802D2C0C 0029C1CC  38 03 03 00 */	addi r0, r3, 0x300
/* 802D2C10 0029C1D0  90 A1 00 18 */	stw r5, 0x18(r1)
/* 802D2C14 0029C1D4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802D2C18 0029C1D8  48 08 13 69 */	bl DCInvalidateRange
/* 802D2C1C 0029C1DC  81 8D B4 CC */	lwz r12, __AXCallbackAuxB@sda21(r13)
/* 802D2C20 0029C1E0  38 61 00 14 */	addi r3, r1, 0x14
/* 802D2C24 0029C1E4  80 8D B4 C0 */	lwz r4, __AXContextAuxB@sda21(r13)
/* 802D2C28 0029C1E8  7D 89 03 A6 */	mtctr r12
/* 802D2C2C 0029C1EC  4E 80 04 21 */	bctrl 
/* 802D2C30 0029C1F0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 802D2C34 0029C1F4  38 80 04 80 */	li r4, 0x480
/* 802D2C38 0029C1F8  48 08 13 D9 */	bl DCFlushRangeNoSync
/* 802D2C3C 0029C1FC  48 00 00 4C */	b .L_802D2C88
.L_802D2C40:
/* 802D2C40 0029C200  80 6D B4 98 */	lwz r3, __AXAuxCpuReadWritePosition@sda21(r13)
/* 802D2C44 0029C204  3B CD B4 D8 */	addi r30, r13, __clearAuxB@sda21
/* 802D2C48 0029C208  7C 1E 18 AE */	lbzx r0, r30, r3
/* 802D2C4C 0029C20C  2C 00 00 00 */	cmpwi r0, 0
/* 802D2C50 0029C210  41 82 00 38 */	beq .L_802D2C88
/* 802D2C54 0029C214  1C 63 06 00 */	mulli r3, r3, 0x600
/* 802D2C58 0029C218  38 1F 12 00 */	addi r0, r31, 0x1200
/* 802D2C5C 0029C21C  38 80 00 00 */	li r4, 0
/* 802D2C60 0029C220  38 A0 06 00 */	li r5, 0x600
/* 802D2C64 0029C224  7F A0 1A 14 */	add r29, r0, r3
/* 802D2C68 0029C228  7F A3 EB 78 */	mr r3, r29
/* 802D2C6C 0029C22C  4B D3 16 E5 */	bl memset
/* 802D2C70 0029C230  7F A3 EB 78 */	mr r3, r29
/* 802D2C74 0029C234  38 80 06 00 */	li r4, 0x600
/* 802D2C78 0029C238  48 08 13 39 */	bl DCFlushRange
/* 802D2C7C 0029C23C  80 0D B4 98 */	lwz r0, __AXAuxCpuReadWritePosition@sda21(r13)
/* 802D2C80 0029C240  38 60 00 00 */	li r3, 0
/* 802D2C84 0029C244  7C 7E 01 AE */	stbx r3, r30, r0
.L_802D2C88:
/* 802D2C88 0029C248  80 0D B4 C8 */	lwz r0, __AXCallbackAuxC@sda21(r13)
/* 802D2C8C 0029C24C  2C 00 00 00 */	cmpwi r0, 0
/* 802D2C90 0029C250  41 82 00 60 */	beq .L_802D2CF0
/* 802D2C94 0029C254  80 0D B4 F8 */	lwz r0, __AXClMode@sda21(r13)
/* 802D2C98 0029C258  28 00 00 02 */	cmplwi r0, 2
/* 802D2C9C 0029C25C  41 82 00 54 */	beq .L_802D2CF0
/* 802D2CA0 0029C260  80 6D B4 98 */	lwz r3, __AXAuxCpuReadWritePosition@sda21(r13)
/* 802D2CA4 0029C264  38 1F 24 00 */	addi r0, r31, 0x2400
/* 802D2CA8 0029C268  38 80 04 80 */	li r4, 0x480
/* 802D2CAC 0029C26C  1C 63 04 80 */	mulli r3, r3, 0x480
/* 802D2CB0 0029C270  7C 60 1A 14 */	add r3, r0, r3
/* 802D2CB4 0029C274  90 61 00 08 */	stw r3, 8(r1)
/* 802D2CB8 0029C278  38 A3 01 80 */	addi r5, r3, 0x180
/* 802D2CBC 0029C27C  38 03 03 00 */	addi r0, r3, 0x300
/* 802D2CC0 0029C280  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802D2CC4 0029C284  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D2CC8 0029C288  48 08 12 B9 */	bl DCInvalidateRange
/* 802D2CCC 0029C28C  81 8D B4 C8 */	lwz r12, __AXCallbackAuxC@sda21(r13)
/* 802D2CD0 0029C290  38 61 00 08 */	addi r3, r1, 8
/* 802D2CD4 0029C294  80 8D B4 BC */	lwz r4, __AXContextAuxC@sda21(r13)
/* 802D2CD8 0029C298  7D 89 03 A6 */	mtctr r12
/* 802D2CDC 0029C29C  4E 80 04 21 */	bctrl 
/* 802D2CE0 0029C2A0  80 61 00 08 */	lwz r3, 8(r1)
/* 802D2CE4 0029C2A4  38 80 04 80 */	li r4, 0x480
/* 802D2CE8 0029C2A8  48 08 13 29 */	bl DCFlushRangeNoSync
/* 802D2CEC 0029C2AC  48 00 00 58 */	b .L_802D2D44
.L_802D2CF0:
/* 802D2CF0 0029C2B0  80 0D B4 C8 */	lwz r0, __AXCallbackAuxC@sda21(r13)
/* 802D2CF4 0029C2B4  2C 00 00 00 */	cmpwi r0, 0
/* 802D2CF8 0029C2B8  40 82 00 4C */	bne .L_802D2D44
/* 802D2CFC 0029C2BC  80 6D B4 98 */	lwz r3, __AXAuxCpuReadWritePosition@sda21(r13)
/* 802D2D00 0029C2C0  3B CD B4 D4 */	addi r30, r13, __clearAuxC@sda21
/* 802D2D04 0029C2C4  7C 1E 18 AE */	lbzx r0, r30, r3
/* 802D2D08 0029C2C8  2C 00 00 00 */	cmpwi r0, 0
/* 802D2D0C 0029C2CC  41 82 00 38 */	beq .L_802D2D44
/* 802D2D10 0029C2D0  1C 63 04 80 */	mulli r3, r3, 0x480
/* 802D2D14 0029C2D4  38 1F 24 00 */	addi r0, r31, 0x2400
/* 802D2D18 0029C2D8  38 80 00 00 */	li r4, 0
/* 802D2D1C 0029C2DC  38 A0 04 80 */	li r5, 0x480
/* 802D2D20 0029C2E0  7F A0 1A 14 */	add r29, r0, r3
/* 802D2D24 0029C2E4  7F A3 EB 78 */	mr r3, r29
/* 802D2D28 0029C2E8  4B D3 16 29 */	bl memset
/* 802D2D2C 0029C2EC  7F A3 EB 78 */	mr r3, r29
/* 802D2D30 0029C2F0  38 80 04 80 */	li r4, 0x480
/* 802D2D34 0029C2F4  48 08 12 7D */	bl DCFlushRange
/* 802D2D38 0029C2F8  80 0D B4 98 */	lwz r0, __AXAuxCpuReadWritePosition@sda21(r13)
/* 802D2D3C 0029C2FC  38 60 00 00 */	li r3, 0
/* 802D2D40 0029C300  7C 7E 01 AE */	stbx r3, r30, r0
.L_802D2D44:
/* 802D2D44 0029C304  3C 60 AA AB */	lis r3, 0xAAAAAAAB@ha
/* 802D2D48 0029C308  80 AD B4 A0 */	lwz r5, __AXAuxDspWritePosition@sda21(r13)
/* 802D2D4C 0029C30C  38 03 AA AB */	addi r0, r3, 0xAAAAAAAB@l
/* 802D2D50 0029C310  80 6D B4 98 */	lwz r3, __AXAuxCpuReadWritePosition@sda21(r13)
/* 802D2D54 0029C314  80 8D B4 9C */	lwz r4, __AXAuxDspReadPosition@sda21(r13)
/* 802D2D58 0029C318  38 E5 00 01 */	addi r7, r5, 1
/* 802D2D5C 0029C31C  38 63 00 01 */	addi r3, r3, 1
/* 802D2D60 0029C320  38 A4 00 01 */	addi r5, r4, 1
/* 802D2D64 0029C324  7C C0 38 16 */	mulhwu r6, r0, r7
/* 802D2D68 0029C328  7C 80 28 16 */	mulhwu r4, r0, r5
/* 802D2D6C 0029C32C  54 C6 F8 7E */	srwi r6, r6, 1
/* 802D2D70 0029C330  7C 00 18 16 */	mulhwu r0, r0, r3
/* 802D2D74 0029C334  54 84 F8 7E */	srwi r4, r4, 1
/* 802D2D78 0029C338  1C C6 00 03 */	mulli r6, r6, 3
/* 802D2D7C 0029C33C  54 00 F8 7E */	srwi r0, r0, 1
/* 802D2D80 0029C340  1C 84 00 03 */	mulli r4, r4, 3
/* 802D2D84 0029C344  7C C6 38 50 */	subf r6, r6, r7
/* 802D2D88 0029C348  90 CD B4 A0 */	stw r6, __AXAuxDspWritePosition@sda21(r13)
/* 802D2D8C 0029C34C  1C 00 00 03 */	mulli r0, r0, 3
/* 802D2D90 0029C350  7C 84 28 50 */	subf r4, r4, r5
/* 802D2D94 0029C354  90 8D B4 9C */	stw r4, __AXAuxDspReadPosition@sda21(r13)
/* 802D2D98 0029C358  7C 00 18 50 */	subf r0, r0, r3
/* 802D2D9C 0029C35C  90 0D B4 98 */	stw r0, __AXAuxCpuReadWritePosition@sda21(r13)
/* 802D2DA0 0029C360  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 802D2DA4 0029C364  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 802D2DA8 0029C368  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 802D2DAC 0029C36C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802D2DB0 0029C370  7C 08 03 A6 */	mtlr r0
/* 802D2DB4 0029C374  38 21 00 60 */	addi r1, r1, 0x60
/* 802D2DB8 0029C378  4E 80 00 20 */	blr 
.endfn __AXProcessAux

.balign 16, 0
.fn AXRegisterAuxACallback, global
/* 802D2DC0 0029C380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D2DC4 0029C384  7C 08 02 A6 */	mflr r0
/* 802D2DC8 0029C388  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D2DCC 0029C38C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D2DD0 0029C390  7C 7F 1B 78 */	mr r31, r3
/* 802D2DD4 0029C394  93 C1 00 08 */	stw r30, 8(r1)
/* 802D2DD8 0029C398  7C 9E 23 78 */	mr r30, r4
/* 802D2DDC 0029C39C  48 08 5B D5 */	bl OSDisableInterrupts
/* 802D2DE0 0029C3A0  2C 1F 00 00 */	cmpwi r31, 0
/* 802D2DE4 0029C3A4  93 ED B4 D0 */	stw r31, __AXCallbackAuxA@sda21(r13)
/* 802D2DE8 0029C3A8  7C 7F 1B 78 */	mr r31, r3
/* 802D2DEC 0029C3AC  93 CD B4 C4 */	stw r30, __AXContextAuxA@sda21(r13)
/* 802D2DF0 0029C3B0  40 82 00 14 */	bne .L_802D2E04
/* 802D2DF4 0029C3B4  38 6D B4 DC */	addi r3, r13, __clearAuxA@sda21
/* 802D2DF8 0029C3B8  38 80 00 01 */	li r4, 1
/* 802D2DFC 0029C3BC  38 A0 00 03 */	li r5, 3
/* 802D2E00 0029C3C0  4B D3 15 51 */	bl memset
.L_802D2E04:
/* 802D2E04 0029C3C4  7F E3 FB 78 */	mr r3, r31
/* 802D2E08 0029C3C8  48 08 5B E9 */	bl OSRestoreInterrupts
/* 802D2E0C 0029C3CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D2E10 0029C3D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D2E14 0029C3D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D2E18 0029C3D8  7C 08 03 A6 */	mtlr r0
/* 802D2E1C 0029C3DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D2E20 0029C3E0  4E 80 00 20 */	blr 
.endfn AXRegisterAuxACallback

.balign 16, 0
.fn AXRegisterAuxBCallback, global
/* 802D2E30 0029C3F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D2E34 0029C3F4  7C 08 02 A6 */	mflr r0
/* 802D2E38 0029C3F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D2E3C 0029C3FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D2E40 0029C400  7C 7F 1B 78 */	mr r31, r3
/* 802D2E44 0029C404  93 C1 00 08 */	stw r30, 8(r1)
/* 802D2E48 0029C408  7C 9E 23 78 */	mr r30, r4
/* 802D2E4C 0029C40C  48 08 5B 65 */	bl OSDisableInterrupts
/* 802D2E50 0029C410  2C 1F 00 00 */	cmpwi r31, 0
/* 802D2E54 0029C414  93 ED B4 CC */	stw r31, __AXCallbackAuxB@sda21(r13)
/* 802D2E58 0029C418  7C 7F 1B 78 */	mr r31, r3
/* 802D2E5C 0029C41C  93 CD B4 C0 */	stw r30, __AXContextAuxB@sda21(r13)
/* 802D2E60 0029C420  40 82 00 14 */	bne .L_802D2E74
/* 802D2E64 0029C424  38 6D B4 D8 */	addi r3, r13, __clearAuxB@sda21
/* 802D2E68 0029C428  38 80 00 01 */	li r4, 1
/* 802D2E6C 0029C42C  38 A0 00 03 */	li r5, 3
/* 802D2E70 0029C430  4B D3 14 E1 */	bl memset
.L_802D2E74:
/* 802D2E74 0029C434  7F E3 FB 78 */	mr r3, r31
/* 802D2E78 0029C438  48 08 5B 79 */	bl OSRestoreInterrupts
/* 802D2E7C 0029C43C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D2E80 0029C440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D2E84 0029C444  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D2E88 0029C448  7C 08 03 A6 */	mtlr r0
/* 802D2E8C 0029C44C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D2E90 0029C450  4E 80 00 20 */	blr 
.endfn AXRegisterAuxBCallback

.balign 16, 0
.fn AXRegisterAuxCCallback, global
/* 802D2EA0 0029C460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D2EA4 0029C464  7C 08 02 A6 */	mflr r0
/* 802D2EA8 0029C468  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D2EAC 0029C46C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D2EB0 0029C470  7C 7F 1B 78 */	mr r31, r3
/* 802D2EB4 0029C474  93 C1 00 08 */	stw r30, 8(r1)
/* 802D2EB8 0029C478  7C 9E 23 78 */	mr r30, r4
/* 802D2EBC 0029C47C  48 08 5A F5 */	bl OSDisableInterrupts
/* 802D2EC0 0029C480  2C 1F 00 00 */	cmpwi r31, 0
/* 802D2EC4 0029C484  93 ED B4 C8 */	stw r31, __AXCallbackAuxC@sda21(r13)
/* 802D2EC8 0029C488  7C 7F 1B 78 */	mr r31, r3
/* 802D2ECC 0029C48C  93 CD B4 BC */	stw r30, __AXContextAuxC@sda21(r13)
/* 802D2ED0 0029C490  40 82 00 14 */	bne .L_802D2EE4
/* 802D2ED4 0029C494  38 6D B4 D4 */	addi r3, r13, __clearAuxC@sda21
/* 802D2ED8 0029C498  38 80 00 01 */	li r4, 1
/* 802D2EDC 0029C49C  38 A0 00 03 */	li r5, 3
/* 802D2EE0 0029C4A0  4B D3 14 71 */	bl memset
.L_802D2EE4:
/* 802D2EE4 0029C4A4  7F E3 FB 78 */	mr r3, r31
/* 802D2EE8 0029C4A8  48 08 5B 09 */	bl OSRestoreInterrupts
/* 802D2EEC 0029C4AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D2EF0 0029C4B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D2EF4 0029C4B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D2EF8 0029C4B8  7C 08 03 A6 */	mtlr r0
/* 802D2EFC 0029C4BC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D2F00 0029C4C0  4E 80 00 20 */	blr 
.endfn AXRegisterAuxCCallback

.balign 16, 0
.fn AXGetAuxACallback, global
/* 802D2F10 0029C4D0  80 0D B4 D0 */	lwz r0, __AXCallbackAuxA@sda21(r13)
/* 802D2F14 0029C4D4  90 03 00 00 */	stw r0, 0(r3)
/* 802D2F18 0029C4D8  80 0D B4 C4 */	lwz r0, __AXContextAuxA@sda21(r13)
/* 802D2F1C 0029C4DC  90 04 00 00 */	stw r0, 0(r4)
/* 802D2F20 0029C4E0  4E 80 00 20 */	blr 
.endfn AXGetAuxACallback

.balign 16, 0
.fn AXGetAuxBCallback, global
/* 802D2F30 0029C4F0  80 0D B4 CC */	lwz r0, __AXCallbackAuxB@sda21(r13)
/* 802D2F34 0029C4F4  90 03 00 00 */	stw r0, 0(r3)
/* 802D2F38 0029C4F8  80 0D B4 C0 */	lwz r0, __AXContextAuxB@sda21(r13)
/* 802D2F3C 0029C4FC  90 04 00 00 */	stw r0, 0(r4)
/* 802D2F40 0029C500  4E 80 00 20 */	blr 
.endfn AXGetAuxBCallback

.balign 16, 0
.fn AXGetAuxCCallback, global
/* 802D2F50 0029C510  80 0D B4 C8 */	lwz r0, __AXCallbackAuxC@sda21(r13)
/* 802D2F54 0029C514  90 03 00 00 */	stw r0, 0(r3)
/* 802D2F58 0029C518  80 0D B4 BC */	lwz r0, __AXContextAuxC@sda21(r13)
/* 802D2F5C 0029C51C  90 04 00 00 */	stw r0, 0(r4)
/* 802D2F60 0029C520  4E 80 00 20 */	blr 
.endfn AXGetAuxCCallback

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.balign 32
.obj __AXBufferAuxA, local
	.skip 0x1200
.endobj __AXBufferAuxA

.balign 32
.obj __AXBufferAuxB, local
	.skip 0x1200
.endobj __AXBufferAuxB

.balign 32
.obj __AXBufferAuxC, local
	.skip 0xD80
.endobj __AXBufferAuxC

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj __AXAuxCpuReadWritePosition, local
	.skip 0x4
.endobj __AXAuxCpuReadWritePosition

.obj __AXAuxDspReadPosition, local
	.skip 0x4
.endobj __AXAuxDspReadPosition

.obj __AXAuxDspWritePosition, local
	.skip 0x4
.endobj __AXAuxDspWritePosition

.obj __AXAuxCDspRead, local
	.skip 0x4
.endobj __AXAuxCDspRead

.obj __AXAuxCDspWrite, local
	.skip 0x4
.endobj __AXAuxCDspWrite

.obj __AXAuxBDspRead, local
	.skip 0x4
.endobj __AXAuxBDspRead

.obj __AXAuxBDspWrite, local
	.skip 0x4
.endobj __AXAuxBDspWrite

.obj __AXAuxADspRead, local
	.skip 0x4
.endobj __AXAuxADspRead

.obj __AXAuxADspWrite, local
	.skip 0x4
.endobj __AXAuxADspWrite

.obj __AXContextAuxC, local
	.skip 0x4
.endobj __AXContextAuxC

.obj __AXContextAuxB, local
	.skip 0x4
.endobj __AXContextAuxB

.obj __AXContextAuxA, local
	.skip 0x4
.endobj __AXContextAuxA

.obj __AXCallbackAuxC, local
	.skip 0x4
.endobj __AXCallbackAuxC

.obj __AXCallbackAuxB, local
	.skip 0x4
.endobj __AXCallbackAuxB

.obj __AXCallbackAuxA, local
	.skip 0x4
.endobj __AXCallbackAuxA

.obj __clearAuxC, local
	.skip 0x4
.endobj __clearAuxC

.obj __clearAuxB, local
	.skip 0x4
.endobj __clearAuxB

.obj __clearAuxA, local
	.skip 0x4
.endobj __clearAuxA
