.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

#MakeTexSrtMtx_S__Q54nw4r3g3d6detail3dcc24@unnamed@g3d_3dsmax_cpp@FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
.fn MakeTexSrtMtx_S__Q54nw4r3g3d6detail3dcc24_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F395C 003BCF1C  C0 A4 00 00 */	lfs f5, 0(r4)
/* 803F3960 003BCF20  C0 02 C1 48 */	lfs f0, float_8066C4C8@sda21(r2)
/* 803F3964 003BCF24  C0 24 00 04 */	lfs f1, 4(r4)
/* 803F3968 003BCF28  EC 40 28 28 */	fsubs f2, f0, f5
/* 803F396C 003BCF2C  C0 62 C1 44 */	lfs f3, float_8066C4C4@sda21(r2)
/* 803F3970 003BCF30  EC 00 08 28 */	fsubs f0, f0, f1
/* 803F3974 003BCF34  C0 82 C1 40 */	lfs f4, float_8066C4C0@sda21(r2)
/* 803F3978 003BCF38  D0 A3 00 00 */	stfs f5, 0(r3)
/* 803F397C 003BCF3C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803F3980 003BCF40  EC 03 00 32 */	fmuls f0, f3, f0
/* 803F3984 003BCF44  D0 83 00 04 */	stfs f4, 4(r3)
/* 803F3988 003BCF48  D0 83 00 08 */	stfs f4, 8(r3)
/* 803F398C 003BCF4C  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 803F3990 003BCF50  D0 83 00 10 */	stfs f4, 0x10(r3)
/* 803F3994 003BCF54  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 803F3998 003BCF58  D0 83 00 18 */	stfs f4, 0x18(r3)
/* 803F399C 003BCF5C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 803F39A0 003BCF60  4E 80 00 20 */	blr 
.endfn MakeTexSrtMtx_S__Q54nw4r3g3d6detail3dcc24_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

#MakeTexSrtMtx_R__Q54nw4r3g3d6detail3dcc24@unnamed@g3d_3dsmax_cpp@FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
.fn MakeTexSrtMtx_R__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F39A4 003BCF64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F39A8 003BCF68  7C 08 02 A6 */	mflr r0
/* 803F39AC 003BCF6C  C0 24 00 08 */	lfs f1, 8(r4)
/* 803F39B0 003BCF70  C0 02 C1 4C */	lfs f0, float_8066C4CC@sda21(r2)
/* 803F39B4 003BCF74  38 81 00 08 */	addi r4, r1, 8
/* 803F39B8 003BCF78  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F39BC 003BCF7C  EC 20 00 72 */	fmuls f1, f0, f1
/* 803F39C0 003BCF80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F39C4 003BCF84  7C 7F 1B 78 */	mr r31, r3
/* 803F39C8 003BCF88  38 61 00 0C */	addi r3, r1, 0xc
/* 803F39CC 003BCF8C  48 01 74 21 */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 803F39D0 003BCF90  C0 01 00 08 */	lfs f0, 8(r1)
/* 803F39D4 003BCF94  C0 82 C1 40 */	lfs f4, float_8066C4C0@sda21(r2)
/* 803F39D8 003BCF98  D0 1F 00 00 */	stfs f0, 0(r31)
/* 803F39DC 003BCF9C  C0 62 C1 48 */	lfs f3, float_8066C4C8@sda21(r2)
/* 803F39E0 003BCFA0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803F39E4 003BCFA4  C0 42 C1 50 */	lfs f2, float_8066C4D0@sda21(r2)
/* 803F39E8 003BCFA8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 803F39EC 003BCFAC  D0 9F 00 08 */	stfs f4, 8(r31)
/* 803F39F0 003BCFB0  C0 21 00 08 */	lfs f1, 8(r1)
/* 803F39F4 003BCFB4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803F39F8 003BCFB8  EC 01 00 2A */	fadds f0, f1, f0
/* 803F39FC 003BCFBC  EC 00 18 28 */	fsubs f0, f0, f3
/* 803F3A00 003BCFC0  EC 02 00 32 */	fmuls f0, f2, f0
/* 803F3A04 003BCFC4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 803F3A08 003BCFC8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803F3A0C 003BCFCC  FC 00 00 50 */	fneg f0, f0
/* 803F3A10 003BCFD0  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 803F3A14 003BCFD4  C0 01 00 08 */	lfs f0, 8(r1)
/* 803F3A18 003BCFD8  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 803F3A1C 003BCFDC  D0 9F 00 18 */	stfs f4, 0x18(r31)
/* 803F3A20 003BCFE0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 803F3A24 003BCFE4  C0 01 00 08 */	lfs f0, 8(r1)
/* 803F3A28 003BCFE8  FC 20 08 50 */	fneg f1, f1
/* 803F3A2C 003BCFEC  EC 01 00 2A */	fadds f0, f1, f0
/* 803F3A30 003BCFF0  EC 00 18 28 */	fsubs f0, f0, f3
/* 803F3A34 003BCFF4  EC 02 00 32 */	fmuls f0, f2, f0
/* 803F3A38 003BCFF8  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 803F3A3C 003BCFFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F3A40 003BD000  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F3A44 003BD004  7C 08 03 A6 */	mtlr r0
/* 803F3A48 003BD008  38 21 00 20 */	addi r1, r1, 0x20
/* 803F3A4C 003BD00C  4E 80 00 20 */	blr 
.endfn MakeTexSrtMtx_R__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

#MakeTexSrtMtx_T__Q54nw4r3g3d6detail3dcc24@unnamed@g3d_3dsmax_cpp@FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
.fn MakeTexSrtMtx_T__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F3A50 003BD010  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 803F3A54 003BD014  C0 42 C1 40 */	lfs f2, float_8066C4C0@sda21(r2)
/* 803F3A58 003BD018  FC 20 00 50 */	fneg f1, f0
/* 803F3A5C 003BD01C  C0 62 C1 48 */	lfs f3, float_8066C4C8@sda21(r2)
/* 803F3A60 003BD020  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 803F3A64 003BD024  D0 63 00 00 */	stfs f3, 0(r3)
/* 803F3A68 003BD028  D0 43 00 04 */	stfs f2, 4(r3)
/* 803F3A6C 003BD02C  D0 43 00 08 */	stfs f2, 8(r3)
/* 803F3A70 003BD030  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 803F3A74 003BD034  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 803F3A78 003BD038  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 803F3A7C 003BD03C  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 803F3A80 003BD040  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 803F3A84 003BD044  4E 80 00 20 */	blr 
.endfn MakeTexSrtMtx_T__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

#MakeTexSrtMtx_SR__Q54nw4r3g3d6detail3dcc24@unnamed@g3d_3dsmax_cpp@FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
.fn MakeTexSrtMtx_SR__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F3A88 003BD048  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F3A8C 003BD04C  7C 08 02 A6 */	mflr r0
/* 803F3A90 003BD050  C0 24 00 08 */	lfs f1, 8(r4)
/* 803F3A94 003BD054  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F3A98 003BD058  C0 02 C1 4C */	lfs f0, float_8066C4CC@sda21(r2)
/* 803F3A9C 003BD05C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F3AA0 003BD060  7C 9F 23 78 */	mr r31, r4
/* 803F3AA4 003BD064  EC 20 00 72 */	fmuls f1, f0, f1
/* 803F3AA8 003BD068  38 81 00 08 */	addi r4, r1, 8
/* 803F3AAC 003BD06C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F3AB0 003BD070  7C 7E 1B 78 */	mr r30, r3
/* 803F3AB4 003BD074  38 61 00 0C */	addi r3, r1, 0xc
/* 803F3AB8 003BD078  48 01 73 35 */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 803F3ABC 003BD07C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 803F3AC0 003BD080  C0 1F 00 04 */	lfs f0, 4(r31)
/* 803F3AC4 003BD084  C0 7F 00 00 */	lfs f3, 0(r31)
/* 803F3AC8 003BD088  C0 41 00 08 */	lfs f2, 8(r1)
/* 803F3ACC 003BD08C  ED 20 00 72 */	fmuls f9, f0, f1
/* 803F3AD0 003BD090  EC E3 00 72 */	fmuls f7, f3, f1
/* 803F3AD4 003BD094  C0 A2 C1 40 */	lfs f5, float_8066C4C0@sda21(r2)
/* 803F3AD8 003BD098  EC C3 00 B2 */	fmuls f6, f3, f2
/* 803F3ADC 003BD09C  C0 82 C1 48 */	lfs f4, float_8066C4C8@sda21(r2)
/* 803F3AE0 003BD0A0  ED 00 00 B2 */	fmuls f8, f0, f2
/* 803F3AE4 003BD0A4  FC 20 48 50 */	fneg f1, f9
/* 803F3AE8 003BD0A8  EC 46 38 2A */	fadds f2, f6, f7
/* 803F3AEC 003BD0AC  C0 62 C1 50 */	lfs f3, float_8066C4D0@sda21(r2)
/* 803F3AF0 003BD0B0  D0 DE 00 00 */	stfs f6, 0(r30)
/* 803F3AF4 003BD0B4  EC 01 40 2A */	fadds f0, f1, f8
/* 803F3AF8 003BD0B8  EC 42 20 28 */	fsubs f2, f2, f4
/* 803F3AFC 003BD0BC  D0 FE 00 04 */	stfs f7, 4(r30)
/* 803F3B00 003BD0C0  EC 00 20 28 */	fsubs f0, f0, f4
/* 803F3B04 003BD0C4  D0 BE 00 08 */	stfs f5, 8(r30)
/* 803F3B08 003BD0C8  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803F3B0C 003BD0CC  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 803F3B10 003BD0D0  EC 03 00 32 */	fmuls f0, f3, f0
/* 803F3B14 003BD0D4  D0 5E 00 0C */	stfs f2, 0xc(r30)
/* 803F3B18 003BD0D8  D1 1E 00 14 */	stfs f8, 0x14(r30)
/* 803F3B1C 003BD0DC  D0 BE 00 18 */	stfs f5, 0x18(r30)
/* 803F3B20 003BD0E0  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 803F3B24 003BD0E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F3B28 003BD0E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F3B2C 003BD0EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F3B30 003BD0F0  7C 08 03 A6 */	mtlr r0
/* 803F3B34 003BD0F4  38 21 00 20 */	addi r1, r1, 0x20
/* 803F3B38 003BD0F8  4E 80 00 20 */	blr 
.endfn MakeTexSrtMtx_SR__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

#MakeTexSrtMtx_RT__Q54nw4r3g3d6detail3dcc24@unnamed@g3d_3dsmax_cpp@FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
.fn MakeTexSrtMtx_RT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F3B3C 003BD0FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F3B40 003BD100  7C 08 02 A6 */	mflr r0
/* 803F3B44 003BD104  C0 24 00 08 */	lfs f1, 8(r4)
/* 803F3B48 003BD108  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F3B4C 003BD10C  C0 02 C1 4C */	lfs f0, float_8066C4CC@sda21(r2)
/* 803F3B50 003BD110  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F3B54 003BD114  7C 9F 23 78 */	mr r31, r4
/* 803F3B58 003BD118  EC 20 00 72 */	fmuls f1, f0, f1
/* 803F3B5C 003BD11C  38 81 00 08 */	addi r4, r1, 8
/* 803F3B60 003BD120  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F3B64 003BD124  7C 7E 1B 78 */	mr r30, r3
/* 803F3B68 003BD128  38 61 00 0C */	addi r3, r1, 0xc
/* 803F3B6C 003BD12C  48 01 72 81 */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 803F3B70 003BD130  C0 01 00 08 */	lfs f0, 8(r1)
/* 803F3B74 003BD134  C0 A2 C1 40 */	lfs f5, float_8066C4C0@sda21(r2)
/* 803F3B78 003BD138  D0 1E 00 00 */	stfs f0, 0(r30)
/* 803F3B7C 003BD13C  C0 82 C1 44 */	lfs f4, float_8066C4C4@sda21(r2)
/* 803F3B80 003BD140  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803F3B84 003BD144  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 803F3B88 003BD148  D0 1E 00 04 */	stfs f0, 4(r30)
/* 803F3B8C 003BD14C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 803F3B90 003BD150  EC 64 08 2A */	fadds f3, f4, f1
/* 803F3B94 003BD154  D0 BE 00 08 */	stfs f5, 8(r30)
/* 803F3B98 003BD158  EC 40 20 28 */	fsubs f2, f0, f4
/* 803F3B9C 003BD15C  C0 21 00 08 */	lfs f1, 8(r1)
/* 803F3BA0 003BD160  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803F3BA4 003BD164  FC 20 08 50 */	fneg f1, f1
/* 803F3BA8 003BD168  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803F3BAC 003BD16C  EC 21 00 F2 */	fmuls f1, f1, f3
/* 803F3BB0 003BD170  EC 01 00 2A */	fadds f0, f1, f0
/* 803F3BB4 003BD174  EC 04 00 2A */	fadds f0, f4, f0
/* 803F3BB8 003BD178  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 803F3BBC 003BD17C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803F3BC0 003BD180  FC 00 00 50 */	fneg f0, f0
/* 803F3BC4 003BD184  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 803F3BC8 003BD188  C0 01 00 08 */	lfs f0, 8(r1)
/* 803F3BCC 003BD18C  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 803F3BD0 003BD190  D0 BE 00 18 */	stfs f5, 0x18(r30)
/* 803F3BD4 003BD194  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 803F3BD8 003BD198  C0 01 00 08 */	lfs f0, 8(r1)
/* 803F3BDC 003BD19C  EC 21 00 F2 */	fmuls f1, f1, f3
/* 803F3BE0 003BD1A0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803F3BE4 003BD1A4  EC 01 00 2A */	fadds f0, f1, f0
/* 803F3BE8 003BD1A8  EC 04 00 2A */	fadds f0, f4, f0
/* 803F3BEC 003BD1AC  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 803F3BF0 003BD1B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F3BF4 003BD1B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F3BF8 003BD1B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F3BFC 003BD1BC  7C 08 03 A6 */	mtlr r0
/* 803F3C00 003BD1C0  38 21 00 20 */	addi r1, r1, 0x20
/* 803F3C04 003BD1C4  4E 80 00 20 */	blr 
.endfn MakeTexSrtMtx_RT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

#MakeTexSrtMtx_ST__Q54nw4r3g3d6detail3dcc24@unnamed@g3d_3dsmax_cpp@FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
.fn MakeTexSrtMtx_ST__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F3C08 003BD1C8  C0 C4 00 00 */	lfs f6, 0(r4)
/* 803F3C0C 003BD1CC  C0 62 C1 44 */	lfs f3, float_8066C4C4@sda21(r2)
/* 803F3C10 003BD1D0  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 803F3C14 003BD1D4  FC 80 30 50 */	fneg f4, f6
/* 803F3C18 003BD1D8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 803F3C1C 003BD1DC  EC 43 08 2A */	fadds f2, f3, f1
/* 803F3C20 003BD1E0  C0 24 00 04 */	lfs f1, 4(r4)
/* 803F3C24 003BD1E4  EC 00 18 28 */	fsubs f0, f0, f3
/* 803F3C28 003BD1E8  C0 A2 C1 40 */	lfs f5, float_8066C4C0@sda21(r2)
/* 803F3C2C 003BD1EC  D0 C3 00 00 */	stfs f6, 0(r3)
/* 803F3C30 003BD1F0  EC 44 00 B2 */	fmuls f2, f4, f2
/* 803F3C34 003BD1F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F3C38 003BD1F8  D0 A3 00 04 */	stfs f5, 4(r3)
/* 803F3C3C 003BD1FC  EC 43 10 2A */	fadds f2, f3, f2
/* 803F3C40 003BD200  D0 A3 00 08 */	stfs f5, 8(r3)
/* 803F3C44 003BD204  EC 03 00 2A */	fadds f0, f3, f0
/* 803F3C48 003BD208  D0 A3 00 10 */	stfs f5, 0x10(r3)
/* 803F3C4C 003BD20C  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 803F3C50 003BD210  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 803F3C54 003BD214  D0 A3 00 18 */	stfs f5, 0x18(r3)
/* 803F3C58 003BD218  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 803F3C5C 003BD21C  4E 80 00 20 */	blr 
.endfn MakeTexSrtMtx_ST__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

#MakeTexSrtMtx_SRT__Q54nw4r3g3d6detail3dcc24@unnamed@g3d_3dsmax_cpp@FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
.fn MakeTexSrtMtx_SRT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F3C60 003BD220  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F3C64 003BD224  7C 08 02 A6 */	mflr r0
/* 803F3C68 003BD228  C0 24 00 08 */	lfs f1, 8(r4)
/* 803F3C6C 003BD22C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F3C70 003BD230  C0 02 C1 4C */	lfs f0, float_8066C4CC@sda21(r2)
/* 803F3C74 003BD234  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F3C78 003BD238  7C 9F 23 78 */	mr r31, r4
/* 803F3C7C 003BD23C  EC 20 00 72 */	fmuls f1, f0, f1
/* 803F3C80 003BD240  38 81 00 08 */	addi r4, r1, 8
/* 803F3C84 003BD244  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F3C88 003BD248  7C 7E 1B 78 */	mr r30, r3
/* 803F3C8C 003BD24C  38 61 00 0C */	addi r3, r1, 0xc
/* 803F3C90 003BD250  48 01 71 5D */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 803F3C94 003BD254  C0 3F 00 00 */	lfs f1, 0(r31)
/* 803F3C98 003BD258  C0 01 00 08 */	lfs f0, 8(r1)
/* 803F3C9C 003BD25C  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 803F3CA0 003BD260  C0 5F 00 04 */	lfs f2, 4(r31)
/* 803F3CA4 003BD264  EC A1 00 32 */	fmuls f5, f1, f0
/* 803F3CA8 003BD268  EC E1 00 F2 */	fmuls f7, f1, f3
/* 803F3CAC 003BD26C  C0 82 C1 44 */	lfs f4, float_8066C4C4@sda21(r2)
/* 803F3CB0 003BD270  ED 02 00 32 */	fmuls f8, f2, f0
/* 803F3CB4 003BD274  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 803F3CB8 003BD278  ED 22 00 F2 */	fmuls f9, f2, f3
/* 803F3CBC 003BD27C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 803F3CC0 003BD280  EC 64 08 2A */	fadds f3, f4, f1
/* 803F3CC4 003BD284  D0 BE 00 00 */	stfs f5, 0(r30)
/* 803F3CC8 003BD288  EC 40 20 28 */	fsubs f2, f0, f4
/* 803F3CCC 003BD28C  C0 C2 C1 40 */	lfs f6, float_8066C4C0@sda21(r2)
/* 803F3CD0 003BD290  FC A0 28 50 */	fneg f5, f5
/* 803F3CD4 003BD294  D0 FE 00 04 */	stfs f7, 4(r30)
/* 803F3CD8 003BD298  EC 29 00 F2 */	fmuls f1, f9, f3
/* 803F3CDC 003BD29C  D0 DE 00 08 */	stfs f6, 8(r30)
/* 803F3CE0 003BD2A0  EC 08 00 B2 */	fmuls f0, f8, f2
/* 803F3CE4 003BD2A4  EC 65 00 F2 */	fmuls f3, f5, f3
/* 803F3CE8 003BD2A8  D1 1E 00 14 */	stfs f8, 0x14(r30)
/* 803F3CEC 003BD2AC  EC 47 00 B2 */	fmuls f2, f7, f2
/* 803F3CF0 003BD2B0  EC 01 00 2A */	fadds f0, f1, f0
/* 803F3CF4 003BD2B4  D0 DE 00 18 */	stfs f6, 0x18(r30)
/* 803F3CF8 003BD2B8  FC 20 48 50 */	fneg f1, f9
/* 803F3CFC 003BD2BC  EC 43 10 2A */	fadds f2, f3, f2
/* 803F3D00 003BD2C0  EC 04 00 2A */	fadds f0, f4, f0
/* 803F3D04 003BD2C4  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 803F3D08 003BD2C8  EC 44 10 2A */	fadds f2, f4, f2
/* 803F3D0C 003BD2CC  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 803F3D10 003BD2D0  D0 5E 00 0C */	stfs f2, 0xc(r30)
/* 803F3D14 003BD2D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F3D18 003BD2D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F3D1C 003BD2DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F3D20 003BD2E0  7C 08 03 A6 */	mtlr r0
/* 803F3D24 003BD2E4  38 21 00 20 */	addi r1, r1, 0x20
/* 803F3D28 003BD2E8  4E 80 00 20 */	blr 
.endfn MakeTexSrtMtx_SRT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

#ProductTexSrtMtx_S__Q54nw4r3g3d6detail3dcc24@unnamed@g3d_3dsmax_cpp@FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
.fn ProductTexSrtMtx_S__Q54nw4r3g3d6detail3dcc24_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F3D2C 003BD2EC  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 803F3D30 003BD2F0  C0 C2 C1 44 */	lfs f6, float_8066C4C4@sda21(r2)
/* 803F3D34 003BD2F4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 803F3D38 003BD2F8  EC 21 30 28 */	fsubs f1, f1, f6
/* 803F3D3C 003BD2FC  C1 44 00 00 */	lfs f10, 0(r4)
/* 803F3D40 003BD300  C0 43 00 00 */	lfs f2, 0(r3)
/* 803F3D44 003BD304  EC 00 30 28 */	fsubs f0, f0, f6
/* 803F3D48 003BD308  C0 84 00 04 */	lfs f4, 4(r4)
/* 803F3D4C 003BD30C  EC AA 00 72 */	fmuls f5, f10, f1
/* 803F3D50 003BD310  ED 22 02 B2 */	fmuls f9, f2, f10
/* 803F3D54 003BD314  C1 03 00 04 */	lfs f8, 4(r3)
/* 803F3D58 003BD318  EC 04 00 32 */	fmuls f0, f4, f0
/* 803F3D5C 003BD31C  C0 E3 00 08 */	lfs f7, 8(r3)
/* 803F3D60 003BD320  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 803F3D64 003BD324  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 803F3D68 003BD328  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 803F3D6C 003BD32C  ED 08 02 B2 */	fmuls f8, f8, f10
/* 803F3D70 003BD330  EC E7 02 B2 */	fmuls f7, f7, f10
/* 803F3D74 003BD334  D1 23 00 00 */	stfs f9, 0(r3)
/* 803F3D78 003BD338  EC A6 28 2A */	fadds f5, f6, f5
/* 803F3D7C 003BD33C  EC 63 01 32 */	fmuls f3, f3, f4
/* 803F3D80 003BD340  D1 03 00 04 */	stfs f8, 4(r3)
/* 803F3D84 003BD344  EC 42 01 32 */	fmuls f2, f2, f4
/* 803F3D88 003BD348  EC 21 01 32 */	fmuls f1, f1, f4
/* 803F3D8C 003BD34C  D0 E3 00 08 */	stfs f7, 8(r3)
/* 803F3D90 003BD350  EC 06 00 2A */	fadds f0, f6, f0
/* 803F3D94 003BD354  D0 A3 00 0C */	stfs f5, 0xc(r3)
/* 803F3D98 003BD358  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 803F3D9C 003BD35C  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 803F3DA0 003BD360  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 803F3DA4 003BD364  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 803F3DA8 003BD368  4E 80 00 20 */	blr 
.endfn ProductTexSrtMtx_S__Q54nw4r3g3d6detail3dcc24_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

#ProductTexSrtMtx_R__Q54nw4r3g3d6detail3dcc24@unnamed@g3d_3dsmax_cpp@FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
.fn ProductTexSrtMtx_R__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F3DAC 003BD36C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F3DB0 003BD370  7C 08 02 A6 */	mflr r0
/* 803F3DB4 003BD374  C0 24 00 08 */	lfs f1, 8(r4)
/* 803F3DB8 003BD378  C0 02 C1 4C */	lfs f0, float_8066C4CC@sda21(r2)
/* 803F3DBC 003BD37C  38 81 00 08 */	addi r4, r1, 8
/* 803F3DC0 003BD380  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F3DC4 003BD384  EC 20 00 72 */	fmuls f1, f0, f1
/* 803F3DC8 003BD388  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F3DCC 003BD38C  7C 7F 1B 78 */	mr r31, r3
/* 803F3DD0 003BD390  38 61 00 0C */	addi r3, r1, 0xc
/* 803F3DD4 003BD394  48 01 70 19 */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 803F3DD8 003BD398  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 803F3DDC 003BD39C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 803F3DE0 003BD3A0  FC 20 10 50 */	fneg f1, f2
/* 803F3DE4 003BD3A4  C0 9F 00 00 */	lfs f4, 0(r31)
/* 803F3DE8 003BD3A8  C0 61 00 08 */	lfs f3, 8(r1)
/* 803F3DEC 003BD3AC  EC 42 00 32 */	fmuls f2, f2, f0
/* 803F3DF0 003BD3B0  C0 E2 C1 44 */	lfs f7, float_8066C4C4@sda21(r2)
/* 803F3DF4 003BD3B4  EC 03 00 32 */	fmuls f0, f3, f0
/* 803F3DF8 003BD3B8  EC 63 01 32 */	fmuls f3, f3, f4
/* 803F3DFC 003BD3BC  C1 5F 00 04 */	lfs f10, 4(r31)
/* 803F3E00 003BD3C0  EC 21 01 32 */	fmuls f1, f1, f4
/* 803F3E04 003BD3C4  C0 BF 00 14 */	lfs f5, 0x14(r31)
/* 803F3E08 003BD3C8  C1 1F 00 08 */	lfs f8, 8(r31)
/* 803F3E0C 003BD3CC  EC 43 10 2A */	fadds f2, f3, f2
/* 803F3E10 003BD3D0  EC 61 00 2A */	fadds f3, f1, f0
/* 803F3E14 003BD3D4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 803F3E18 003BD3D8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 803F3E1C 003BD3DC  D0 5F 00 00 */	stfs f2, 0(r31)
/* 803F3E20 003BD3E0  EC C1 38 28 */	fsubs f6, f1, f7
/* 803F3E24 003BD3E4  C0 9F 00 18 */	lfs f4, 0x18(r31)
/* 803F3E28 003BD3E8  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 803F3E2C 003BD3EC  EC 60 38 28 */	fsubs f3, f0, f7
/* 803F3E30 003BD3F0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 803F3E34 003BD3F4  C1 61 00 08 */	lfs f11, 8(r1)
/* 803F3E38 003BD3F8  FC 00 08 50 */	fneg f0, f1
/* 803F3E3C 003BD3FC  EC 41 01 72 */	fmuls f2, f1, f5
/* 803F3E40 003BD400  ED 2B 02 B2 */	fmuls f9, f11, f10
/* 803F3E44 003BD404  EC 20 02 B2 */	fmuls f1, f0, f10
/* 803F3E48 003BD408  EC 0B 01 72 */	fmuls f0, f11, f5
/* 803F3E4C 003BD40C  EC 49 10 2A */	fadds f2, f9, f2
/* 803F3E50 003BD410  EC 01 00 2A */	fadds f0, f1, f0
/* 803F3E54 003BD414  D0 5F 00 04 */	stfs f2, 4(r31)
/* 803F3E58 003BD418  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 803F3E5C 003BD41C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 803F3E60 003BD420  C1 21 00 08 */	lfs f9, 8(r1)
/* 803F3E64 003BD424  FC 00 08 50 */	fneg f0, f1
/* 803F3E68 003BD428  EC 41 01 32 */	fmuls f2, f1, f4
/* 803F3E6C 003BD42C  EC A9 02 32 */	fmuls f5, f9, f8
/* 803F3E70 003BD430  EC 20 02 32 */	fmuls f1, f0, f8
/* 803F3E74 003BD434  EC 09 01 32 */	fmuls f0, f9, f4
/* 803F3E78 003BD438  EC 45 10 2A */	fadds f2, f5, f2
/* 803F3E7C 003BD43C  EC 01 00 2A */	fadds f0, f1, f0
/* 803F3E80 003BD440  D0 5F 00 08 */	stfs f2, 8(r31)
/* 803F3E84 003BD444  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 803F3E88 003BD448  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 803F3E8C 003BD44C  C0 A1 00 08 */	lfs f5, 8(r1)
/* 803F3E90 003BD450  FC 00 08 50 */	fneg f0, f1
/* 803F3E94 003BD454  EC 41 00 F2 */	fmuls f2, f1, f3
/* 803F3E98 003BD458  EC 85 01 B2 */	fmuls f4, f5, f6
/* 803F3E9C 003BD45C  EC 20 01 B2 */	fmuls f1, f0, f6
/* 803F3EA0 003BD460  EC 05 00 F2 */	fmuls f0, f5, f3
/* 803F3EA4 003BD464  EC 44 10 2A */	fadds f2, f4, f2
/* 803F3EA8 003BD468  EC 01 00 2A */	fadds f0, f1, f0
/* 803F3EAC 003BD46C  EC 27 10 2A */	fadds f1, f7, f2
/* 803F3EB0 003BD470  EC 07 00 2A */	fadds f0, f7, f0
/* 803F3EB4 003BD474  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 803F3EB8 003BD478  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 803F3EBC 003BD47C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F3EC0 003BD480  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F3EC4 003BD484  7C 08 03 A6 */	mtlr r0
/* 803F3EC8 003BD488  38 21 00 20 */	addi r1, r1, 0x20
/* 803F3ECC 003BD48C  4E 80 00 20 */	blr 
.endfn ProductTexSrtMtx_R__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

#ProductTexSrtMtx_T__Q54nw4r3g3d6detail3dcc24@unnamed@g3d_3dsmax_cpp@FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
.fn ProductTexSrtMtx_T__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F3ED0 003BD490  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 803F3ED4 003BD494  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 803F3ED8 003BD498  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 803F3EDC 003BD49C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 803F3EE0 003BD4A0  EC 43 10 28 */	fsubs f2, f3, f2
/* 803F3EE4 003BD4A4  EC 01 00 2A */	fadds f0, f1, f0
/* 803F3EE8 003BD4A8  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 803F3EEC 003BD4AC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 803F3EF0 003BD4B0  4E 80 00 20 */	blr 
.endfn ProductTexSrtMtx_T__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

#ProductTexSrtMtx_SR__Q54nw4r3g3d6detail3dcc24@unnamed@g3d_3dsmax_cpp@FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
.fn ProductTexSrtMtx_SR__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F3EF4 003BD4B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803F3EF8 003BD4B8  7C 08 02 A6 */	mflr r0
/* 803F3EFC 003BD4BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 803F3F00 003BD4C0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803F3F04 003BD4C4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 803F3F08 003BD4C8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 803F3F0C 003BD4CC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 803F3F10 003BD4D0  C0 24 00 08 */	lfs f1, 8(r4)
/* 803F3F14 003BD4D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F3F18 003BD4D8  7C 9F 23 78 */	mr r31, r4
/* 803F3F1C 003BD4DC  C0 02 C1 4C */	lfs f0, float_8066C4CC@sda21(r2)
/* 803F3F20 003BD4E0  38 81 00 08 */	addi r4, r1, 8
/* 803F3F24 003BD4E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F3F28 003BD4E8  7C 7E 1B 78 */	mr r30, r3
/* 803F3F2C 003BD4EC  EC 20 00 72 */	fmuls f1, f0, f1
/* 803F3F30 003BD4F0  38 61 00 0C */	addi r3, r1, 0xc
/* 803F3F34 003BD4F4  48 01 6E B9 */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 803F3F38 003BD4F8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803F3F3C 003BD4FC  C0 BF 00 04 */	lfs f5, 4(r31)
/* 803F3F40 003BD500  C0 5F 00 00 */	lfs f2, 0(r31)
/* 803F3F44 003BD504  ED 05 00 32 */	fmuls f8, f5, f0
/* 803F3F48 003BD508  C0 C1 00 08 */	lfs f6, 8(r1)
/* 803F3F4C 003BD50C  EC 22 00 32 */	fmuls f1, f2, f0
/* 803F3F50 003BD510  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 803F3F54 003BD514  C0 E2 C1 44 */	lfs f7, float_8066C4C4@sda21(r2)
/* 803F3F58 003BD518  EC 02 01 B2 */	fmuls f0, f2, f6
/* 803F3F5C 003BD51C  FD 80 40 50 */	fneg f12, f8
/* 803F3F60 003BD520  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 803F3F64 003BD524  EC 83 38 28 */	fsubs f4, f3, f7
/* 803F3F68 003BD528  C3 DE 00 00 */	lfs f30, 0(r30)
/* 803F3F6C 003BD52C  EC 62 38 28 */	fsubs f3, f2, f7
/* 803F3F70 003BD530  C1 BE 00 10 */	lfs f13, 0x10(r30)
/* 803F3F74 003BD534  EC 45 01 B2 */	fmuls f2, f5, f6
/* 803F3F78 003BD538  C1 7E 00 04 */	lfs f11, 4(r30)
/* 803F3F7C 003BD53C  EC C0 01 32 */	fmuls f6, f0, f4
/* 803F3F80 003BD540  C1 5E 00 14 */	lfs f10, 0x14(r30)
/* 803F3F84 003BD544  EC A1 00 F2 */	fmuls f5, f1, f3
/* 803F3F88 003BD548  C1 3E 00 08 */	lfs f9, 8(r30)
/* 803F3F8C 003BD54C  EC 8C 01 32 */	fmuls f4, f12, f4
/* 803F3F90 003BD550  C1 1E 00 18 */	lfs f8, 0x18(r30)
/* 803F3F94 003BD554  EC 62 00 F2 */	fmuls f3, f2, f3
/* 803F3F98 003BD558  EC A6 28 2A */	fadds f5, f6, f5
/* 803F3F9C 003BD55C  EF E0 07 B2 */	fmuls f31, f0, f30
/* 803F3FA0 003BD560  EC C1 03 72 */	fmuls f6, f1, f13
/* 803F3FA4 003BD564  EC 64 18 2A */	fadds f3, f4, f3
/* 803F3FA8 003BD568  EC 87 28 2A */	fadds f4, f7, f5
/* 803F3FAC 003BD56C  EF FF 30 2A */	fadds f31, f31, f6
/* 803F3FB0 003BD570  EC E7 18 2A */	fadds f7, f7, f3
/* 803F3FB4 003BD574  D0 9E 00 0C */	stfs f4, 0xc(r30)
/* 803F3FB8 003BD578  EC CC 07 B2 */	fmuls f6, f12, f30
/* 803F3FBC 003BD57C  EC A2 03 72 */	fmuls f5, f2, f13
/* 803F3FC0 003BD580  EC 80 02 F2 */	fmuls f4, f0, f11
/* 803F3FC4 003BD584  D0 FE 00 1C */	stfs f7, 0x1c(r30)
/* 803F3FC8 003BD588  EC 61 02 B2 */	fmuls f3, f1, f10
/* 803F3FCC 003BD58C  ED A6 28 2A */	fadds f13, f6, f5
/* 803F3FD0 003BD590  D3 FE 00 00 */	stfs f31, 0(r30)
/* 803F3FD4 003BD594  EC CC 02 F2 */	fmuls f6, f12, f11
/* 803F3FD8 003BD598  EC E4 18 2A */	fadds f7, f4, f3
/* 803F3FDC 003BD59C  EC A2 02 B2 */	fmuls f5, f2, f10
/* 803F3FE0 003BD5A0  D1 BE 00 10 */	stfs f13, 0x10(r30)
/* 803F3FE4 003BD5A4  EC 80 02 72 */	fmuls f4, f0, f9
/* 803F3FE8 003BD5A8  EC 61 02 32 */	fmuls f3, f1, f8
/* 803F3FEC 003BD5AC  D0 FE 00 04 */	stfs f7, 4(r30)
/* 803F3FF0 003BD5B0  EC 02 02 32 */	fmuls f0, f2, f8
/* 803F3FF4 003BD5B4  EC 2C 02 72 */	fmuls f1, f12, f9
/* 803F3FF8 003BD5B8  EC A6 28 2A */	fadds f5, f6, f5
/* 803F3FFC 003BD5BC  EC 44 18 2A */	fadds f2, f4, f3
/* 803F4000 003BD5C0  EC 01 00 2A */	fadds f0, f1, f0
/* 803F4004 003BD5C4  D0 BE 00 14 */	stfs f5, 0x14(r30)
/* 803F4008 003BD5C8  D0 5E 00 08 */	stfs f2, 8(r30)
/* 803F400C 003BD5CC  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 803F4010 003BD5D0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 803F4014 003BD5D4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803F4018 003BD5D8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 803F401C 003BD5DC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 803F4020 003BD5E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F4024 003BD5E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F4028 003BD5E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803F402C 003BD5EC  7C 08 03 A6 */	mtlr r0
/* 803F4030 003BD5F0  38 21 00 40 */	addi r1, r1, 0x40
/* 803F4034 003BD5F4  4E 80 00 20 */	blr 
.endfn ProductTexSrtMtx_SR__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

#ProductTexSrtMtx_RT__Q54nw4r3g3d6detail3dcc24@unnamed@g3d_3dsmax_cpp@FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
.fn ProductTexSrtMtx_RT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F4038 003BD5F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F403C 003BD5FC  7C 08 02 A6 */	mflr r0
/* 803F4040 003BD600  C0 24 00 08 */	lfs f1, 8(r4)
/* 803F4044 003BD604  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F4048 003BD608  C0 02 C1 4C */	lfs f0, float_8066C4CC@sda21(r2)
/* 803F404C 003BD60C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F4050 003BD610  7C 9F 23 78 */	mr r31, r4
/* 803F4054 003BD614  EC 20 00 72 */	fmuls f1, f0, f1
/* 803F4058 003BD618  38 81 00 08 */	addi r4, r1, 8
/* 803F405C 003BD61C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F4060 003BD620  7C 7E 1B 78 */	mr r30, r3
/* 803F4064 003BD624  38 61 00 0C */	addi r3, r1, 0xc
/* 803F4068 003BD628  48 01 6D 85 */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 803F406C 003BD62C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 803F4070 003BD630  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 803F4074 003BD634  FC 20 10 50 */	fneg f1, f2
/* 803F4078 003BD638  C0 9E 00 00 */	lfs f4, 0(r30)
/* 803F407C 003BD63C  C0 61 00 08 */	lfs f3, 8(r1)
/* 803F4080 003BD640  EC 42 00 32 */	fmuls f2, f2, f0
/* 803F4084 003BD644  C1 5E 00 04 */	lfs f10, 4(r30)
/* 803F4088 003BD648  EC 03 00 32 */	fmuls f0, f3, f0
/* 803F408C 003BD64C  EC 63 01 32 */	fmuls f3, f3, f4
/* 803F4090 003BD650  C0 DE 00 14 */	lfs f6, 0x14(r30)
/* 803F4094 003BD654  EC 21 01 32 */	fmuls f1, f1, f4
/* 803F4098 003BD658  C0 E2 C1 44 */	lfs f7, float_8066C4C4@sda21(r2)
/* 803F409C 003BD65C  C1 1E 00 08 */	lfs f8, 8(r30)
/* 803F40A0 003BD660  EC 63 10 2A */	fadds f3, f3, f2
/* 803F40A4 003BD664  EC A1 00 2A */	fadds f5, f1, f0
/* 803F40A8 003BD668  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 803F40AC 003BD66C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 803F40B0 003BD670  D0 7E 00 00 */	stfs f3, 0(r30)
/* 803F40B4 003BD674  EC 42 00 28 */	fsubs f2, f2, f0
/* 803F40B8 003BD678  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 803F40BC 003BD67C  D0 BE 00 10 */	stfs f5, 0x10(r30)
/* 803F40C0 003BD680  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 803F40C4 003BD684  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 803F40C8 003BD688  EC 01 00 2A */	fadds f0, f1, f0
/* 803F40CC 003BD68C  C1 61 00 08 */	lfs f11, 8(r1)
/* 803F40D0 003BD690  FC 20 18 50 */	fneg f1, f3
/* 803F40D4 003BD694  C0 9E 00 18 */	lfs f4, 0x18(r30)
/* 803F40D8 003BD698  EC A3 01 B2 */	fmuls f5, f3, f6
/* 803F40DC 003BD69C  ED 2B 02 B2 */	fmuls f9, f11, f10
/* 803F40E0 003BD6A0  EC 61 02 B2 */	fmuls f3, f1, f10
/* 803F40E4 003BD6A4  EC 2B 01 B2 */	fmuls f1, f11, f6
/* 803F40E8 003BD6A8  EC A9 28 2A */	fadds f5, f9, f5
/* 803F40EC 003BD6AC  EC C2 38 28 */	fsubs f6, f2, f7
/* 803F40F0 003BD6B0  EC 23 08 2A */	fadds f1, f3, f1
/* 803F40F4 003BD6B4  D0 BE 00 04 */	stfs f5, 4(r30)
/* 803F40F8 003BD6B8  EC 60 38 28 */	fsubs f3, f0, f7
/* 803F40FC 003BD6BC  D0 3E 00 14 */	stfs f1, 0x14(r30)
/* 803F4100 003BD6C0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 803F4104 003BD6C4  C1 21 00 08 */	lfs f9, 8(r1)
/* 803F4108 003BD6C8  FC 00 08 50 */	fneg f0, f1
/* 803F410C 003BD6CC  EC 41 01 32 */	fmuls f2, f1, f4
/* 803F4110 003BD6D0  EC A9 02 32 */	fmuls f5, f9, f8
/* 803F4114 003BD6D4  EC 20 02 32 */	fmuls f1, f0, f8
/* 803F4118 003BD6D8  EC 09 01 32 */	fmuls f0, f9, f4
/* 803F411C 003BD6DC  EC 45 10 2A */	fadds f2, f5, f2
/* 803F4120 003BD6E0  EC 01 00 2A */	fadds f0, f1, f0
/* 803F4124 003BD6E4  D0 5E 00 08 */	stfs f2, 8(r30)
/* 803F4128 003BD6E8  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 803F412C 003BD6EC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 803F4130 003BD6F0  C0 A1 00 08 */	lfs f5, 8(r1)
/* 803F4134 003BD6F4  FC 00 08 50 */	fneg f0, f1
/* 803F4138 003BD6F8  EC 41 00 F2 */	fmuls f2, f1, f3
/* 803F413C 003BD6FC  EC 85 01 B2 */	fmuls f4, f5, f6
/* 803F4140 003BD700  EC 20 01 B2 */	fmuls f1, f0, f6
/* 803F4144 003BD704  EC 05 00 F2 */	fmuls f0, f5, f3
/* 803F4148 003BD708  EC 44 10 2A */	fadds f2, f4, f2
/* 803F414C 003BD70C  EC 01 00 2A */	fadds f0, f1, f0
/* 803F4150 003BD710  EC 27 10 2A */	fadds f1, f7, f2
/* 803F4154 003BD714  EC 07 00 2A */	fadds f0, f7, f0
/* 803F4158 003BD718  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 803F415C 003BD71C  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 803F4160 003BD720  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F4164 003BD724  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F4168 003BD728  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F416C 003BD72C  7C 08 03 A6 */	mtlr r0
/* 803F4170 003BD730  38 21 00 20 */	addi r1, r1, 0x20
/* 803F4174 003BD734  4E 80 00 20 */	blr 
.endfn ProductTexSrtMtx_RT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

#ProductTexSrtMtx_ST__Q54nw4r3g3d6detail3dcc24@unnamed@g3d_3dsmax_cpp@FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
.fn ProductTexSrtMtx_ST__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F4178 003BD738  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 803F417C 003BD73C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 803F4180 003BD740  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 803F4184 003BD744  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 803F4188 003BD748  EC 01 00 2A */	fadds f0, f1, f0
/* 803F418C 003BD74C  C0 E2 C1 44 */	lfs f7, float_8066C4C4@sda21(r2)
/* 803F4190 003BD750  EC 83 10 28 */	fsubs f4, f3, f2
/* 803F4194 003BD754  C0 A4 00 04 */	lfs f5, 4(r4)
/* 803F4198 003BD758  EC 00 38 28 */	fsubs f0, f0, f7
/* 803F419C 003BD75C  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 803F41A0 003BD760  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 803F41A4 003BD764  EC C4 38 28 */	fsubs f6, f4, f7
/* 803F41A8 003BD768  EC 05 00 32 */	fmuls f0, f5, f0
/* 803F41AC 003BD76C  C1 64 00 00 */	lfs f11, 0(r4)
/* 803F41B0 003BD770  EC 82 01 72 */	fmuls f4, f2, f5
/* 803F41B4 003BD774  C1 03 00 00 */	lfs f8, 0(r3)
/* 803F41B8 003BD778  EC 4B 01 B2 */	fmuls f2, f11, f6
/* 803F41BC 003BD77C  ED 48 02 F2 */	fmuls f10, f8, f11
/* 803F41C0 003BD780  EC 07 00 2A */	fadds f0, f7, f0
/* 803F41C4 003BD784  C1 23 00 04 */	lfs f9, 4(r3)
/* 803F41C8 003BD788  EC C7 10 2A */	fadds f6, f7, f2
/* 803F41CC 003BD78C  C1 03 00 08 */	lfs f8, 8(r3)
/* 803F41D0 003BD790  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 803F41D4 003BD794  ED 29 02 F2 */	fmuls f9, f9, f11
/* 803F41D8 003BD798  EC E8 02 F2 */	fmuls f7, f8, f11
/* 803F41DC 003BD79C  D1 43 00 00 */	stfs f10, 0(r3)
/* 803F41E0 003BD7A0  EC 63 01 72 */	fmuls f3, f3, f5
/* 803F41E4 003BD7A4  EC 42 01 72 */	fmuls f2, f2, f5
/* 803F41E8 003BD7A8  D0 C3 00 0C */	stfs f6, 0xc(r3)
/* 803F41EC 003BD7AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F41F0 003BD7B0  D1 23 00 04 */	stfs f9, 4(r3)
/* 803F41F4 003BD7B4  D0 E3 00 08 */	stfs f7, 8(r3)
/* 803F41F8 003BD7B8  D0 83 00 10 */	stfs f4, 0x10(r3)
/* 803F41FC 003BD7BC  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 803F4200 003BD7C0  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 803F4204 003BD7C4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 803F4208 003BD7C8  4E 80 00 20 */	blr 
.endfn ProductTexSrtMtx_ST__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

#ProductTexSrtMtx_SRT__Q54nw4r3g3d6detail3dcc24@unnamed@g3d_3dsmax_cpp@FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
.fn ProductTexSrtMtx_SRT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt, global
/* 803F420C 003BD7CC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803F4210 003BD7D0  7C 08 02 A6 */	mflr r0
/* 803F4214 003BD7D4  90 01 00 54 */	stw r0, 0x54(r1)
/* 803F4218 003BD7D8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803F421C 003BD7DC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 803F4220 003BD7E0  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 803F4224 003BD7E4  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 803F4228 003BD7E8  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 803F422C 003BD7EC  F3 A1 00 28 */	psq_st f29, 40(r1), 0, qr0
/* 803F4230 003BD7F0  C0 24 00 08 */	lfs f1, 8(r4)
/* 803F4234 003BD7F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F4238 003BD7F8  7C 9F 23 78 */	mr r31, r4
/* 803F423C 003BD7FC  C0 02 C1 4C */	lfs f0, float_8066C4CC@sda21(r2)
/* 803F4240 003BD800  38 81 00 08 */	addi r4, r1, 8
/* 803F4244 003BD804  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F4248 003BD808  7C 7E 1B 78 */	mr r30, r3
/* 803F424C 003BD80C  EC 20 00 72 */	fmuls f1, f0, f1
/* 803F4250 003BD810  38 61 00 0C */	addi r3, r1, 0xc
/* 803F4254 003BD814  48 01 6B 99 */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 803F4258 003BD818  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 803F425C 003BD81C  C0 BF 00 04 */	lfs f5, 4(r31)
/* 803F4260 003BD820  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 803F4264 003BD824  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 803F4268 003BD828  ED 25 00 B2 */	fmuls f9, f5, f2
/* 803F426C 003BD82C  C1 1F 00 00 */	lfs f8, 0(r31)
/* 803F4270 003BD830  EC 81 00 28 */	fsubs f4, f1, f0
/* 803F4274 003BD834  C0 C1 00 08 */	lfs f6, 8(r1)
/* 803F4278 003BD838  EC 28 00 B2 */	fmuls f1, f8, f2
/* 803F427C 003BD83C  C0 E2 C1 44 */	lfs f7, float_8066C4C4@sda21(r2)
/* 803F4280 003BD840  EC 08 01 B2 */	fmuls f0, f8, f6
/* 803F4284 003BD844  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 803F4288 003BD848  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 803F428C 003BD84C  FD 80 48 50 */	fneg f12, f9
/* 803F4290 003BD850  C3 BE 00 00 */	lfs f29, 0(r30)
/* 803F4294 003BD854  EC 84 38 28 */	fsubs f4, f4, f7
/* 803F4298 003BD858  EC 63 10 2A */	fadds f3, f3, f2
/* 803F429C 003BD85C  C3 FE 00 10 */	lfs f31, 0x10(r30)
/* 803F42A0 003BD860  EC 45 01 B2 */	fmuls f2, f5, f6
/* 803F42A4 003BD864  EC C0 01 32 */	fmuls f6, f0, f4
/* 803F42A8 003BD868  C1 7E 00 04 */	lfs f11, 4(r30)
/* 803F42AC 003BD86C  EC 63 38 28 */	fsubs f3, f3, f7
/* 803F42B0 003BD870  EC 8C 01 32 */	fmuls f4, f12, f4
/* 803F42B4 003BD874  C1 5E 00 14 */	lfs f10, 0x14(r30)
/* 803F42B8 003BD878  EF C0 07 72 */	fmuls f30, f0, f29
/* 803F42BC 003BD87C  EC A1 00 F2 */	fmuls f5, f1, f3
/* 803F42C0 003BD880  C1 3E 00 08 */	lfs f9, 8(r30)
/* 803F42C4 003BD884  EC 62 00 F2 */	fmuls f3, f2, f3
/* 803F42C8 003BD888  ED A1 07 F2 */	fmuls f13, f1, f31
/* 803F42CC 003BD88C  C1 1E 00 18 */	lfs f8, 0x18(r30)
/* 803F42D0 003BD890  EC A6 28 2A */	fadds f5, f6, f5
/* 803F42D4 003BD894  EC 64 18 2A */	fadds f3, f4, f3
/* 803F42D8 003BD898  EC 9E 68 2A */	fadds f4, f30, f13
/* 803F42DC 003BD89C  ED A7 28 2A */	fadds f13, f7, f5
/* 803F42E0 003BD8A0  EC E7 18 2A */	fadds f7, f7, f3
/* 803F42E4 003BD8A4  D0 9E 00 00 */	stfs f4, 0(r30)
/* 803F42E8 003BD8A8  EC CC 07 72 */	fmuls f6, f12, f29
/* 803F42EC 003BD8AC  EC A2 07 F2 */	fmuls f5, f2, f31
/* 803F42F0 003BD8B0  D1 BE 00 0C */	stfs f13, 0xc(r30)
/* 803F42F4 003BD8B4  EC 80 02 F2 */	fmuls f4, f0, f11
/* 803F42F8 003BD8B8  EC 61 02 B2 */	fmuls f3, f1, f10
/* 803F42FC 003BD8BC  ED A6 28 2A */	fadds f13, f6, f5
/* 803F4300 003BD8C0  D0 FE 00 1C */	stfs f7, 0x1c(r30)
/* 803F4304 003BD8C4  EC CC 02 F2 */	fmuls f6, f12, f11
/* 803F4308 003BD8C8  EC E4 18 2A */	fadds f7, f4, f3
/* 803F430C 003BD8CC  EC A2 02 B2 */	fmuls f5, f2, f10
/* 803F4310 003BD8D0  D1 BE 00 10 */	stfs f13, 0x10(r30)
/* 803F4314 003BD8D4  EC 80 02 72 */	fmuls f4, f0, f9
/* 803F4318 003BD8D8  EC 61 02 32 */	fmuls f3, f1, f8
/* 803F431C 003BD8DC  D0 FE 00 04 */	stfs f7, 4(r30)
/* 803F4320 003BD8E0  EC 02 02 32 */	fmuls f0, f2, f8
/* 803F4324 003BD8E4  EC 2C 02 72 */	fmuls f1, f12, f9
/* 803F4328 003BD8E8  EC A6 28 2A */	fadds f5, f6, f5
/* 803F432C 003BD8EC  EC 44 18 2A */	fadds f2, f4, f3
/* 803F4330 003BD8F0  EC 01 00 2A */	fadds f0, f1, f0
/* 803F4334 003BD8F4  D0 BE 00 14 */	stfs f5, 0x14(r30)
/* 803F4338 003BD8F8  D0 5E 00 08 */	stfs f2, 8(r30)
/* 803F433C 003BD8FC  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 803F4340 003BD900  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 803F4344 003BD904  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803F4348 003BD908  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 803F434C 003BD90C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 803F4350 003BD910  E3 A1 00 28 */	psq_l f29, 40(r1), 0, qr0
/* 803F4354 003BD914  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 803F4358 003BD918  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F435C 003BD91C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F4360 003BD920  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803F4364 003BD924  7C 08 03 A6 */	mtlr r0
/* 803F4368 003BD928  38 21 00 50 */	addi r1, r1, 0x50
/* 803F436C 003BD92C  4E 80 00 20 */	blr 
.endfn ProductTexSrtMtx_SRT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

.fn CalcTexMtx_3dsmax__Q44nw4r3g3d6detail3dccFPQ34nw4r4math5MTX34bRCQ34nw4r3g3d6TexSrtQ44nw4r3g3d6TexSrt4Flag, global
/* 803F4370 003BD930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F4374 003BD934  7C 08 02 A6 */	mflr r0
/* 803F4378 003BD938  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F437C 003BD93C  54 C0 FF 7E */	rlwinm r0, r6, 0x1f, 0x1d, 0x1f
/* 803F4380 003BD940  28 00 00 07 */	cmplwi r0, 7
/* 803F4384 003BD944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F4388 003BD948  7C 7F 1B 78 */	mr r31, r3
/* 803F438C 003BD94C  40 82 00 0C */	bne .L_803F4398
/* 803F4390 003BD950  38 60 00 00 */	li r3, 0
/* 803F4394 003BD954  48 00 00 64 */	b .L_803F43F8
.L_803F4398:
/* 803F4398 003BD958  2C 04 00 00 */	cmpwi r4, 0
/* 803F439C 003BD95C  41 82 00 24 */	beq .L_803F43C0
/* 803F43A0 003BD960  3C C0 80 52 */	lis r6, lbl_80521048@ha
/* 803F43A4 003BD964  54 00 10 3A */	slwi r0, r0, 2
/* 803F43A8 003BD968  38 C6 10 48 */	addi r6, r6, lbl_80521048@l
/* 803F43AC 003BD96C  7C A4 2B 78 */	mr r4, r5
/* 803F43B0 003BD970  7D 86 00 2E */	lwzx r12, r6, r0
/* 803F43B4 003BD974  7D 89 03 A6 */	mtctr r12
/* 803F43B8 003BD978  4E 80 04 21 */	bctrl 
/* 803F43BC 003BD97C  48 00 00 20 */	b .L_803F43DC
.L_803F43C0:
/* 803F43C0 003BD980  3C C0 80 52 */	lis r6, lbl_80521064@ha
/* 803F43C4 003BD984  54 00 10 3A */	slwi r0, r0, 2
/* 803F43C8 003BD988  38 C6 10 64 */	addi r6, r6, lbl_80521064@l
/* 803F43CC 003BD98C  7C A4 2B 78 */	mr r4, r5
/* 803F43D0 003BD990  7D 86 00 2E */	lwzx r12, r6, r0
/* 803F43D4 003BD994  7D 89 03 A6 */	mtctr r12
/* 803F43D8 003BD998  4E 80 04 21 */	bctrl 
.L_803F43DC:
/* 803F43DC 003BD99C  C0 22 C1 40 */	lfs f1, float_8066C4C0@sda21(r2)
/* 803F43E0 003BD9A0  38 60 00 01 */	li r3, 1
/* 803F43E4 003BD9A4  C0 02 C1 48 */	lfs f0, float_8066C4C8@sda21(r2)
/* 803F43E8 003BD9A8  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 803F43EC 003BD9AC  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 803F43F0 003BD9B0  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 803F43F4 003BD9B4  D0 3F 00 2C */	stfs f1, 0x2c(r31)
.L_803F43F8:
/* 803F43F8 003BD9B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F43FC 003BD9BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F4400 003BD9C0  7C 08 03 A6 */	mtlr r0
/* 803F4404 003BD9C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803F4408 003BD9C8  4E 80 00 20 */	blr
.endfn CalcTexMtx_3dsmax__Q44nw4r3g3d6detail3dccFPQ34nw4r4math5MTX34bRCQ34nw4r3g3d6TexSrtQ44nw4r3g3d6TexSrt4Flag

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0


#funcTable$6185
.global lbl_80521048
lbl_80521048:
	.4byte MakeTexSrtMtx_SRT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte MakeTexSrtMtx_RT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte MakeTexSrtMtx_ST__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte MakeTexSrtMtx_T__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte MakeTexSrtMtx_SR__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte MakeTexSrtMtx_R__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte MakeTexSrtMtx_S__Q54nw4r3g3d6detail3dcc24_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt


#funcTable$6187
.global lbl_80521064
lbl_80521064:
	.4byte ProductTexSrtMtx_SRT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte ProductTexSrtMtx_RT__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte ProductTexSrtMtx_ST__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte ProductTexSrtMtx_T__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte ProductTexSrtMtx_SR__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte ProductTexSrtMtx_R__Q54nw4r3g3d6detail3dcc22_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt
	.4byte ProductTexSrtMtx_S__Q54nw4r3g3d6detail3dcc24_unnamed_g3d_3dsmax_cpp_FPQ34nw4r4math5MTX34RCQ34nw4r3g3d6TexSrt

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global float_8066C4C0
float_8066C4C0:
	.float 0


.global float_8066C4C4
float_8066C4C4:
	.float 0.5


.global float_8066C4C8
float_8066C4C8:
	.float 1.0


.global float_8066C4CC
float_8066C4CC:
	.float 0.7111111 #0x3F360B61


.global float_8066C4D0
float_8066C4D0:
	.4byte 0xBF000000
	.4byte 0