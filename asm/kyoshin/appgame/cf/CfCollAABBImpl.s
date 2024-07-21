.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_800AAE24, global
/* 800AAE24 000743E4  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 800AAE28 000743E8  7C 08 02 A6 */	mflr r0
/* 800AAE2C 000743EC  C0 02 8E 70 */	lfs f0, float_806691F0@sda21(r2)
/* 800AAE30 000743F0  90 01 01 74 */	stw r0, 0x174(r1)
/* 800AAE34 000743F4  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 800AAE38 000743F8  F3 E1 01 68 */	psq_st f31, 360(r1), 0, qr0
/* 800AAE3C 000743FC  DB C1 01 50 */	stfd f30, 0x150(r1)
/* 800AAE40 00074400  F3 C1 01 58 */	psq_st f30, 344(r1), 0, qr0
/* 800AAE44 00074404  93 E1 01 4C */	stw r31, 0x14c(r1)
/* 800AAE48 00074408  7C 9F 23 78 */	mr r31, r4
/* 800AAE4C 0007440C  C3 C4 01 4C */	lfs f30, 0x14c(r4)
/* 800AAE50 00074410  EC 20 07 B2 */	fmuls f1, f0, f30
/* 800AAE54 00074414  48 35 FE D9 */	bl SinFIdx__Q24nw4r4mathFf
/* 800AAE58 00074418  C0 02 8E 70 */	lfs f0, float_806691F0@sda21(r2)
/* 800AAE5C 0007441C  FF E0 08 90 */	fmr f31, f1
/* 800AAE60 00074420  EC 20 07 B2 */	fmuls f1, f0, f30
/* 800AAE64 00074424  48 35 FF 31 */	bl CosFIdx__Q24nw4r4mathFf
/* 800AAE68 00074428  FC 00 F8 50 */	fneg f0, f31
/* 800AAE6C 0007442C  C0 62 8E 58 */	lfs f3, float_806691D8@sda21(r2)
/* 800AAE70 00074430  C0 42 8E 5C */	lfs f2, float_806691DC@sda21(r2)
/* 800AAE74 00074434  7F E3 FB 78 */	mr r3, r31
/* 800AAE78 00074438  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 800AAE7C 0007443C  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 800AAE80 00074440  D3 E1 00 50 */	stfs f31, 0x50(r1)
/* 800AAE84 00074444  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 800AAE88 00074448  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 800AAE8C 0007444C  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 800AAE90 00074450  D0 61 00 60 */	stfs f3, 0x60(r1)
/* 800AAE94 00074454  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 800AAE98 00074458  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 800AAE9C 0007445C  D0 61 00 6C */	stfs f3, 0x6c(r1)
/* 800AAEA0 00074460  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 800AAEA4 00074464  D0 61 00 74 */	stfs f3, 0x74(r1)
/* 800AAEA8 00074468  81 9F 00 00 */	lwz r12, 0(r31)
/* 800AAEAC 0007446C  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 800AAEB0 00074470  7D 89 03 A6 */	mtctr r12
/* 800AAEB4 00074474  4E 80 04 21 */	bctrl 
/* 800AAEB8 00074478  C0 03 00 00 */	lfs f0, 0(r3)
/* 800AAEBC 0007447C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800AAEC0 00074480  C0 03 00 04 */	lfs f0, 4(r3)
/* 800AAEC4 00074484  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 800AAEC8 00074488  C0 03 00 08 */	lfs f0, 8(r3)
/* 800AAECC 0007448C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 800AAED0 00074490  80 1F 00 94 */	lwz r0, 0x94(r31)
/* 800AAED4 00074494  2C 00 00 01 */	cmpwi r0, 1
/* 800AAED8 00074498  40 82 00 44 */	bne .L_800AAF1C
/* 800AAEDC 0007449C  C0 22 8E 5C */	lfs f1, float_806691DC@sda21(r2)
/* 800AAEE0 000744A0  C0 42 8E 58 */	lfs f2, float_806691D8@sda21(r2)
/* 800AAEE4 000744A4  C0 02 8E 74 */	lfs f0, float_806691F4@sda21(r2)
/* 800AAEE8 000744A8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 800AAEEC 000744AC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 800AAEF0 000744B0  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 800AAEF4 000744B4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 800AAEF8 000744B8  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 800AAEFC 000744BC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800AAF00 000744C0  80 61 00 30 */	lwz r3, 0x30(r1)
/* 800AAF04 000744C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800AAF08 000744C8  90 A1 00 38 */	stw r5, 0x38(r1)
/* 800AAF0C 000744CC  90 81 00 3C */	stw r4, 0x3c(r1)
/* 800AAF10 000744D0  90 61 00 40 */	stw r3, 0x40(r1)
/* 800AAF14 000744D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 800AAF18 000744D8  48 00 00 44 */	b .L_800AAF5C
.L_800AAF1C:
/* 800AAF1C 000744DC  C0 62 8E 58 */	lfs f3, float_806691D8@sda21(r2)
/* 800AAF20 000744E0  C0 42 8E 78 */	lfs f2, float_806691F8@sda21(r2)
/* 800AAF24 000744E4  C0 22 8E 5C */	lfs f1, float_806691DC@sda21(r2)
/* 800AAF28 000744E8  C0 02 8E 7C */	lfs f0, float_806691FC@sda21(r2)
/* 800AAF2C 000744EC  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 800AAF30 000744F0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800AAF34 000744F4  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 800AAF38 000744F8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800AAF3C 000744FC  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 800AAF40 00074500  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800AAF44 00074504  80 61 00 20 */	lwz r3, 0x20(r1)
/* 800AAF48 00074508  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AAF4C 0007450C  90 A1 00 38 */	stw r5, 0x38(r1)
/* 800AAF50 00074510  90 81 00 3C */	stw r4, 0x3c(r1)
/* 800AAF54 00074514  90 61 00 40 */	stw r3, 0x40(r1)
/* 800AAF58 00074518  90 01 00 44 */	stw r0, 0x44(r1)
.L_800AAF5C:
/* 800AAF5C 0007451C  38 61 00 78 */	addi r3, r1, 0x78
/* 800AAF60 00074520  48 3A B1 D5 */	bl func_80456134__17UnkClass_804561ACFv
/* 800AAF64 00074524  80 6D A5 94 */	lwz r3, lbl_80666714@sda21(r13)
/* 800AAF68 00074528  38 81 00 78 */	addi r4, r1, 0x78
/* 800AAF6C 0007452C  38 A0 00 00 */	li r5, 0
/* 800AAF70 00074530  48 3E 53 DD */	bl func_8049034C
/* 800AAF74 00074534  C0 22 8E 5C */	lfs f1, float_806691DC@sda21(r2)
/* 800AAF78 00074538  38 61 00 78 */	addi r3, r1, 0x78
/* 800AAF7C 0007453C  C0 42 8E 58 */	lfs f2, float_806691D8@sda21(r2)
/* 800AAF80 00074540  38 81 00 08 */	addi r4, r1, 8
/* 800AAF84 00074544  C0 02 8E 60 */	lfs f0, float_806691E0@sda21(r2)
/* 800AAF88 00074548  D0 41 00 08 */	stfs f2, 8(r1)
/* 800AAF8C 0007454C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800AAF90 00074550  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800AAF94 00074554  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800AAF98 00074558  48 3A B5 09 */	bl func_804564A0__17UnkClass_804561ACFUl
/* 800AAF9C 0007455C  38 61 00 78 */	addi r3, r1, 0x78
/* 800AAFA0 00074560  38 81 00 48 */	addi r4, r1, 0x48
/* 800AAFA4 00074564  48 3A B2 A9 */	bl func_8045624C
/* 800AAFA8 00074568  38 61 00 78 */	addi r3, r1, 0x78
/* 800AAFAC 0007456C  38 81 00 38 */	addi r4, r1, 0x38
/* 800AAFB0 00074570  48 3A B4 F1 */	bl func_804564A0__17UnkClass_804561ACFUl
/* 800AAFB4 00074574  38 61 00 78 */	addi r3, r1, 0x78
/* 800AAFB8 00074578  38 9F 00 D8 */	addi r4, r31, 0xd8
/* 800AAFBC 0007457C  38 BF 00 E4 */	addi r5, r31, 0xe4
/* 800AAFC0 00074580  48 3A BE D1 */	bl func_80456E90
/* 800AAFC4 00074584  38 61 00 78 */	addi r3, r1, 0x78
/* 800AAFC8 00074588  38 80 FF FF */	li r4, -1
/* 800AAFCC 0007458C  48 3A B1 E1 */	bl __dt__17UnkClass_804561ACFv
/* 800AAFD0 00074590  80 01 01 74 */	lwz r0, 0x174(r1)
/* 800AAFD4 00074594  E3 E1 01 68 */	psq_l f31, 360(r1), 0, qr0
/* 800AAFD8 00074598  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 800AAFDC 0007459C  E3 C1 01 58 */	psq_l f30, 344(r1), 0, qr0
/* 800AAFE0 000745A0  CB C1 01 50 */	lfd f30, 0x150(r1)
/* 800AAFE4 000745A4  83 E1 01 4C */	lwz r31, 0x14c(r1)
/* 800AAFE8 000745A8  7C 08 03 A6 */	mtlr r0
/* 800AAFEC 000745AC  38 21 01 70 */	addi r1, r1, 0x170
/* 800AAFF0 000745B0  4E 80 00 20 */	blr 
.endfn func_800AAE24

.fn func_800AAFF4, global
/* 800AAFF4 000745B4  7C 88 23 78 */	mr r8, r4
/* 800AAFF8 000745B8  7C A3 2B 78 */	mr r3, r5
/* 800AAFFC 000745BC  7C C7 33 78 */	mr r7, r6
/* 800AB000 000745C0  38 84 00 D8 */	addi r4, r4, 0xd8
/* 800AB004 000745C4  38 A8 00 E4 */	addi r5, r8, 0xe4
/* 800AB008 000745C8  38 C8 00 F0 */	addi r6, r8, 0xf0
/* 800AB00C 000745CC  4B FF AF DC */	b func_800A5FE8
.endfn func_800AAFF4

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80009394", local
.hidden "@etb_80009394"
	.4byte 0x088A0000
	.4byte 0x00000150
	.4byte 0x00140010
	.4byte 0x00000000
	.4byte 0x82000078
	.4byte __dt__17UnkClass_804561ACFv
.endobj "@etb_80009394"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80024BE4", local
.hidden "@eti_80024BE4"
	.4byte func_800AAE24
	.4byte 0x000001D0
	.4byte "@etb_80009394"
.endobj "@eti_80024BE4"
