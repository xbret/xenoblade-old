.include "macros.inc"

.section .init, "ax"  # 0x80004000 - 0x800066E0

#This is very likely handwritten
.global memcpy
memcpy:
/* 80004000 00000100  28 85 00 00 */	cmplwi cr1, r5, 0
/* 80004004 00000104  4D 86 00 20 */	beqlr cr1
/* 80004008 00000108  7C 84 18 40 */	cmplw cr1, r4, r3
/* 8000400C 0000010C  41 84 01 6C */	blt cr1, lbl_80004178
/* 80004010 00000110  4D 86 00 20 */	beqlr cr1
/* 80004014 00000114  38 C0 00 80 */	li r6, 0x80
/* 80004018 00000118  7E 85 30 40 */	cmplw cr5, r5, r6
/* 8000401C 0000011C  41 94 00 A4 */	blt cr5, lbl_800040C0
/* 80004020 00000120  54 89 07 7E */	clrlwi r9, r4, 0x1d
/* 80004024 00000124  54 6A 07 7E */	clrlwi r10, r3, 0x1d
/* 80004028 00000128  7D 0A 18 50 */	subf r8, r10, r3
/* 8000402C 0000012C  7C 00 22 2C */	dcbt 0, r4
/* 80004030 00000130  7D 4B 4A 79 */	xor. r11, r10, r9
/* 80004034 00000134  40 82 01 28 */	bne lbl_8000415C
/* 80004038 00000138  71 4A 00 07 */	andi. r10, r10, 7
/* 8000403C 0000013C  41 A2 00 2C */	beq+ lbl_80004068
/* 80004040 00000140  38 C0 00 08 */	li r6, 8
/* 80004044 00000144  7D 29 30 50 */	subf r9, r9, r6
/* 80004048 00000148  39 03 00 00 */	addi r8, r3, 0
/* 8000404C 0000014C  7D 29 03 A6 */	mtctr r9
/* 80004050 00000150  7C A9 28 50 */	subf r5, r9, r5
lbl_80004054:
/* 80004054 00000154  89 24 00 00 */	lbz r9, 0(r4)
/* 80004058 00000158  38 84 00 01 */	addi r4, r4, 1
/* 8000405C 0000015C  99 28 00 00 */	stb r9, 0(r8)
/* 80004060 00000160  39 08 00 01 */	addi r8, r8, 1
/* 80004064 00000164  42 00 FF F0 */	bdnz lbl_80004054
lbl_80004068:
/* 80004068 00000168  54 A6 D9 7E */	srwi r6, r5, 5
/* 8000406C 0000016C  7C C9 03 A6 */	mtctr r6
lbl_80004070:
/* 80004070 00000170  C8 24 00 00 */	lfd f1, 0(r4)
/* 80004074 00000174  C8 44 00 08 */	lfd f2, 8(r4)
/* 80004078 00000178  C8 64 00 10 */	lfd f3, 0x10(r4)
/* 8000407C 0000017C  C8 84 00 18 */	lfd f4, 0x18(r4)
/* 80004080 00000180  38 84 00 20 */	addi r4, r4, 0x20
/* 80004084 00000184  D8 28 00 00 */	stfd f1, 0(r8)
/* 80004088 00000188  D8 48 00 08 */	stfd f2, 8(r8)
/* 8000408C 0000018C  D8 68 00 10 */	stfd f3, 0x10(r8)
/* 80004090 00000190  D8 88 00 18 */	stfd f4, 0x18(r8)
/* 80004094 00000194  39 08 00 20 */	addi r8, r8, 0x20
/* 80004098 00000198  42 00 FF D8 */	bdnz lbl_80004070
/* 8000409C 0000019C  70 A6 00 1F */	andi. r6, r5, 0x1f
/* 800040A0 000001A0  4D 82 00 20 */	beqlr 
/* 800040A4 000001A4  38 84 FF FF */	addi r4, r4, -1
/* 800040A8 000001A8  7C C9 03 A6 */	mtctr r6
/* 800040AC 000001AC  39 08 FF FF */	addi r8, r8, -1
lbl_800040B0:
/* 800040B0 000001B0  8D 24 00 01 */	lbzu r9, 1(r4)
/* 800040B4 000001B4  9D 28 00 01 */	stbu r9, 1(r8)
/* 800040B8 000001B8  42 00 FF F8 */	bdnz lbl_800040B0
/* 800040BC 000001BC  4E 80 00 20 */	blr 
lbl_800040C0:
/* 800040C0 000001C0  38 C0 00 14 */	li r6, 0x14
/* 800040C4 000001C4  7E 85 30 40 */	cmplw cr5, r5, r6
/* 800040C8 000001C8  40 95 00 94 */	ble cr5, lbl_8000415C
/* 800040CC 000001CC  54 89 07 BE */	clrlwi r9, r4, 0x1e
/* 800040D0 000001D0  54 6A 07 BE */	clrlwi r10, r3, 0x1e
/* 800040D4 000001D4  7D 4B 4A 79 */	xor. r11, r10, r9
/* 800040D8 000001D8  40 82 00 84 */	bne lbl_8000415C
/* 800040DC 000001DC  38 C0 00 04 */	li r6, 4
/* 800040E0 000001E0  7D 29 30 50 */	subf r9, r9, r6
/* 800040E4 000001E4  39 03 00 00 */	addi r8, r3, 0
/* 800040E8 000001E8  7C A9 28 50 */	subf r5, r9, r5
/* 800040EC 000001EC  7D 29 03 A6 */	mtctr r9
lbl_800040F0:
/* 800040F0 000001F0  89 24 00 00 */	lbz r9, 0(r4)
/* 800040F4 000001F4  38 84 00 01 */	addi r4, r4, 1
/* 800040F8 000001F8  99 28 00 00 */	stb r9, 0(r8)
/* 800040FC 000001FC  39 08 00 01 */	addi r8, r8, 1
/* 80004100 00000200  42 00 FF F0 */	bdnz lbl_800040F0
/* 80004104 00000204  54 A6 E1 3E */	srwi r6, r5, 4
/* 80004108 00000208  7C C9 03 A6 */	mtctr r6
lbl_8000410C:
/* 8000410C 0000020C  81 24 00 00 */	lwz r9, 0(r4)
/* 80004110 00000210  81 44 00 04 */	lwz r10, 4(r4)
/* 80004114 00000214  81 64 00 08 */	lwz r11, 8(r4)
/* 80004118 00000218  81 84 00 0C */	lwz r12, 0xc(r4)
/* 8000411C 0000021C  38 84 00 10 */	addi r4, r4, 0x10
/* 80004120 00000220  91 28 00 00 */	stw r9, 0(r8)
/* 80004124 00000224  91 48 00 04 */	stw r10, 4(r8)
/* 80004128 00000228  91 68 00 08 */	stw r11, 8(r8)
/* 8000412C 0000022C  91 88 00 0C */	stw r12, 0xc(r8)
/* 80004130 00000230  39 08 00 10 */	addi r8, r8, 0x10
/* 80004134 00000234  42 00 FF D8 */	bdnz lbl_8000410C
/* 80004138 00000238  70 A6 00 0F */	andi. r6, r5, 0xf
/* 8000413C 0000023C  4D 82 00 20 */	beqlr 
/* 80004140 00000240  38 84 FF FF */	addi r4, r4, -1
/* 80004144 00000244  7C C9 03 A6 */	mtctr r6
/* 80004148 00000248  39 08 FF FF */	addi r8, r8, -1
lbl_8000414C:
/* 8000414C 0000024C  8D 24 00 01 */	lbzu r9, 1(r4)
/* 80004150 00000250  9D 28 00 01 */	stbu r9, 1(r8)
/* 80004154 00000254  42 00 FF F8 */	bdnz lbl_8000414C
/* 80004158 00000258  4E 80 00 20 */	blr 
lbl_8000415C:
/* 8000415C 0000025C  38 E4 FF FF */	addi r7, r4, -1
/* 80004160 00000260  39 03 FF FF */	addi r8, r3, -1
/* 80004164 00000264  7C A9 03 A6 */	mtctr r5
lbl_80004168:
/* 80004168 00000268  8D 27 00 01 */	lbzu r9, 1(r7)
/* 8000416C 0000026C  9D 28 00 01 */	stbu r9, 1(r8)
/* 80004170 00000270  42 00 FF F8 */	bdnz lbl_80004168
/* 80004174 00000274  4E 80 00 20 */	blr 
lbl_80004178:
/* 80004178 00000278  7C 84 2A 14 */	add r4, r4, r5
/* 8000417C 0000027C  7D 83 2A 14 */	add r12, r3, r5
/* 80004180 00000280  38 C0 00 80 */	li r6, 0x80
/* 80004184 00000284  7E 85 30 40 */	cmplw cr5, r5, r6
/* 80004188 00000288  41 94 00 7C */	blt cr5, lbl_80004204
/* 8000418C 0000028C  54 89 07 7E */	clrlwi r9, r4, 0x1d
/* 80004190 00000290  55 8A 07 7E */	clrlwi r10, r12, 0x1d
/* 80004194 00000294  7D 4B 4A 79 */	xor. r11, r10, r9
/* 80004198 00000298  40 82 00 F0 */	bne lbl_80004288
/* 8000419C 0000029C  71 4A 00 07 */	andi. r10, r10, 7
/* 800041A0 000002A0  41 A2 00 14 */	beq+ lbl_800041B4
/* 800041A4 000002A4  7D 49 03 A6 */	mtctr r10
lbl_800041A8:
/* 800041A8 000002A8  8D 24 FF FF */	lbzu r9, -1(r4)
/* 800041AC 000002AC  9D 2C FF FF */	stbu r9, -1(r12)
/* 800041B0 000002B0  42 00 FF F8 */	bdnz lbl_800041A8
lbl_800041B4:
/* 800041B4 000002B4  7C AA 28 50 */	subf r5, r10, r5
/* 800041B8 000002B8  54 A6 D9 7E */	srwi r6, r5, 5
/* 800041BC 000002BC  7C C9 03 A6 */	mtctr r6
lbl_800041C0:
/* 800041C0 000002C0  C8 24 FF F8 */	lfd f1, -8(r4)
/* 800041C4 000002C4  C8 44 FF F0 */	lfd f2, -0x10(r4)
/* 800041C8 000002C8  C8 64 FF E8 */	lfd f3, -0x18(r4)
/* 800041CC 000002CC  C8 84 FF E0 */	lfd f4, -0x20(r4)
/* 800041D0 000002D0  38 84 FF E0 */	addi r4, r4, -32
/* 800041D4 000002D4  D8 2C FF F8 */	stfd f1, -8(r12)
/* 800041D8 000002D8  D8 4C FF F0 */	stfd f2, -0x10(r12)
/* 800041DC 000002DC  D8 6C FF E8 */	stfd f3, -0x18(r12)
/* 800041E0 000002E0  DC 8C FF E0 */	stfdu f4, -0x20(r12) #why?
/* 800041E4 000002E4  42 00 FF DC */	bdnz lbl_800041C0
/* 800041E8 000002E8  70 A6 00 1F */	andi. r6, r5, 0x1f
/* 800041EC 000002EC  4D 82 00 20 */	beqlr 
/* 800041F0 000002F0  7C C9 03 A6 */	mtctr r6
lbl_800041F4:
/* 800041F4 000002F4  8D 24 FF FF */	lbzu r9, -1(r4)
/* 800041F8 000002F8  9D 2C FF FF */	stbu r9, -1(r12)
/* 800041FC 000002FC  42 00 FF F8 */	bdnz lbl_800041F4
/* 80004200 00000300  4E 80 00 20 */	blr 
lbl_80004204:
/* 80004204 00000304  38 C0 00 14 */	li r6, 0x14
/* 80004208 00000308  7E 85 30 40 */	cmplw cr5, r5, r6
/* 8000420C 0000030C  40 95 00 7C */	ble cr5, lbl_80004288
/* 80004210 00000310  54 89 07 BE */	clrlwi r9, r4, 0x1e
/* 80004214 00000314  55 8A 07 BE */	clrlwi r10, r12, 0x1e
/* 80004218 00000318  7D 4B 4A 79 */	xor. r11, r10, r9
/* 8000421C 0000031C  40 82 00 6C */	bne lbl_80004288
/* 80004220 00000320  71 4A 00 07 */	andi. r10, r10, 7
/* 80004224 00000324  41 A2 00 14 */	beq+ lbl_80004238
/* 80004228 00000328  7D 49 03 A6 */	mtctr r10
lbl_8000422C:
/* 8000422C 0000032C  8D 24 FF FF */	lbzu r9, -1(r4)
/* 80004230 00000330  9D 2C FF FF */	stbu r9, -1(r12)
/* 80004234 00000334  42 00 FF F8 */	bdnz lbl_8000422C
lbl_80004238:
/* 80004238 00000338  7C AA 28 50 */	subf r5, r10, r5
/* 8000423C 0000033C  54 A6 E1 3E */	srwi r6, r5, 4
/* 80004240 00000340  7C C9 03 A6 */	mtctr r6
lbl_80004244:
/* 80004244 00000344  81 24 FF FC */	lwz r9, -4(r4)
/* 80004248 00000348  81 44 FF F8 */	lwz r10, -8(r4)
/* 8000424C 0000034C  81 64 FF F4 */	lwz r11, -0xc(r4)
/* 80004250 00000350  81 04 FF F0 */	lwz r8, -0x10(r4)
/* 80004254 00000354  38 84 FF F0 */	addi r4, r4, -16
/* 80004258 00000358  91 2C FF FC */	stw r9, -4(r12)
/* 8000425C 0000035C  91 4C FF F8 */	stw r10, -8(r12)
/* 80004260 00000360  91 6C FF F4 */	stw r11, -0xc(r12)
/* 80004264 00000364  95 0C FF F0 */	stwu r8, -0x10(r12) #also why?
/* 80004268 00000368  42 00 FF DC */	bdnz lbl_80004244
/* 8000426C 0000036C  70 A6 00 0F */	andi. r6, r5, 0xf
/* 80004270 00000370  4D 82 00 20 */	beqlr 
/* 80004274 00000374  7C C9 03 A6 */	mtctr r6
lbl_80004278:
/* 80004278 00000378  8D 24 FF FF */	lbzu r9, -1(r4)
/* 8000427C 0000037C  9D 2C FF FF */	stbu r9, -1(r12)
/* 80004280 00000380  42 00 FF F8 */	bdnz lbl_80004278
/* 80004284 00000384  4E 80 00 20 */	blr
lbl_80004288:
/* 80004288 00000388  7C A9 03 A6 */	mtctr r5
lbl_8000428C:
/* 8000428C 0000038C  8D 24 FF FF */	lbzu r9, -1(r4)
/* 80004290 00000390  9D 2C FF FF */	stbu r9, -1(r12)
/* 80004294 00000394  42 00 FF F8 */	bdnz lbl_8000428C
/* 80004298 00000398  4E 80 00 20 */	blr 