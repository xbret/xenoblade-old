.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__9CDeviceGXFPCcP11CWorkThread, global
/* 804550E4 0041E6A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804550E8 0041E6A8  7C 08 02 A6 */	mflr r0
/* 804550EC 0041E6AC  38 C0 00 00 */	li r6, 0
/* 804550F0 0041E6B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804550F4 0041E6B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804550F8 0041E6B8  93 C1 00 08 */	stw r30, 8(r1)
/* 804550FC 0041E6BC  7C 7E 1B 78 */	mr r30, r3
/* 80455100 0041E6C0  4B FE 24 BD */	bl __ct__11CWorkThreadFPCcP11CWorkThreadi
/* 80455104 0041E6C4  3C 60 80 57 */	lis r3, __vt__11CDeviceBase@ha
/* 80455108 0041E6C8  3B E0 00 00 */	li r31, 0
/* 8045510C 0041E6CC  38 63 F4 F8 */	addi r3, r3, __vt__11CDeviceBase@l
/* 80455110 0041E6D0  90 7E 00 00 */	stw r3, 0(r30)
/* 80455114 0041E6D4  38 7E 01 C8 */	addi r3, r30, 0x1c8
/* 80455118 0041E6D8  93 FE 01 C4 */	stw r31, 0x1c4(r30)
/* 8045511C 0041E6DC  4B FF 3E 25 */	bl __ct__11CDeviceVICbFv
/* 80455120 0041E6E0  3C 60 80 57 */	lis r3, __vt__9CDeviceGX@ha
/* 80455124 0041E6E4  C0 02 C8 70 */	lfs f0, float_8066CBF0@sda21(r2)
/* 80455128 0041E6E8  38 63 01 A8 */	addi r3, r3, __vt__9CDeviceGX@l
/* 8045512C 0041E6EC  38 00 00 01 */	li r0, 1
/* 80455130 0041E6F0  38 83 00 A0 */	addi r4, r3, 0xa0
/* 80455134 0041E6F4  90 7E 00 00 */	stw r3, 0(r30)
/* 80455138 0041E6F8  38 7E 02 7C */	addi r3, r30, 0x27c
/* 8045513C 0041E6FC  90 9E 01 C8 */	stw r4, 0x1c8(r30)
/* 80455140 0041E700  93 FE 01 CC */	stw r31, 0x1cc(r30)
/* 80455144 0041E704  93 FE 02 50 */	stw r31, 0x250(r30)
/* 80455148 0041E708  93 FE 02 54 */	stw r31, 0x254(r30)
/* 8045514C 0041E70C  D0 1E 02 64 */	stfs f0, 0x264(r30)
/* 80455150 0041E710  93 FE 02 6C */	stw r31, 0x26c(r30)
/* 80455154 0041E714  93 FE 02 70 */	stw r31, 0x270(r30)
/* 80455158 0041E718  98 1E 02 74 */	stb r0, 0x274(r30)
/* 8045515C 0041E71C  93 FE 02 78 */	stw r31, 0x278(r30)
/* 80455160 0041E720  4B FF 40 05 */	bl __ct__8CGXCacheFv
/* 80455164 0041E724  38 1E 02 7C */	addi r0, r30, 0x27c
/* 80455168 0041E728  93 CD BD F8 */	stw r30, instance__9CDeviceGX@sda21(r13)
/* 8045516C 0041E72C  90 0D BD FC */	stw r0, cacheInstance__9CDeviceGX@sda21(r13)
/* 80455170 0041E730  4B FF 7E E9 */	bl func_8044D058__Fv
/* 80455174 0041E734  7C 64 1B 78 */	mr r4, r3
/* 80455178 0041E738  80 6D 9E F8 */	lwz r3, gxHeapSize@sda21(r13)
/* 8045517C 0041E73C  38 A0 00 20 */	li r5, 0x20
/* 80455180 0041E740  4B FD F9 E5 */	bl allocateHeap__3mtlFUliUl
/* 80455184 0041E744  90 7E 02 50 */	stw r3, 0x250(r30)
/* 80455188 0041E748  80 0D 9E F8 */	lwz r0, gxHeapSize@sda21(r13)
/* 8045518C 0041E74C  7C 03 02 14 */	add r0, r3, r0
/* 80455190 0041E750  90 1E 02 54 */	stw r0, 0x254(r30)
/* 80455194 0041E754  38 60 00 00 */	li r3, 0
/* 80455198 0041E758  80 8D BD FC */	lwz r4, cacheInstance__9CDeviceGX@sda21(r13)
/* 8045519C 0041E75C  93 E4 05 0C */	stw r31, 0x50c(r4)
/* 804551A0 0041E760  48 00 01 E1 */	bl updateVerticalFilter__9CDeviceGXF15EVerticalFilter
/* 804551A4 0041E764  80 6D BD FC */	lwz r3, cacheInstance__9CDeviceGX@sda21(r13)
/* 804551A8 0041E768  38 80 00 00 */	li r4, 0
/* 804551AC 0041E76C  4B FF 60 E9 */	bl func_8044B294__8CGXCacheFUl
/* 804551B0 0041E770  C0 22 C8 74 */	lfs f1, float_8066CBF4@sda21(r2)
/* 804551B4 0041E774  C0 02 C8 70 */	lfs f0, float_8066CBF0@sda21(r2)
/* 804551B8 0041E778  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804551BC 0041E77C  40 80 00 0C */	bge .L_804551C8
/* 804551C0 0041E780  FC 20 00 90 */	fmr f1, f0
/* 804551C4 0041E784  48 00 00 14 */	b .L_804551D8
.L_804551C8:
/* 804551C8 0041E788  C0 02 C8 78 */	lfs f0, float_8066CBF8@sda21(r2)
/* 804551CC 0041E78C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804551D0 0041E790  40 81 00 08 */	ble .L_804551D8
/* 804551D4 0041E794  FC 20 00 90 */	fmr f1, f0
.L_804551D8:
/* 804551D8 0041E798  D0 3E 02 60 */	stfs f1, 0x260(r30)
/* 804551DC 0041E79C  7F C3 F3 78 */	mr r3, r30
/* 804551E0 0041E7A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804551E4 0041E7A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804551E8 0041E7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804551EC 0041E7AC  7C 08 03 A6 */	mtlr r0
/* 804551F0 0041E7B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804551F4 0041E7B4  4E 80 00 20 */	blr
.endfn __ct__9CDeviceGXFPCcP11CWorkThread

.fn __dt__9CDeviceGXFv, global
/* 804551F8 0041E7B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804551FC 0041E7BC  7C 08 02 A6 */	mflr r0
/* 80455200 0041E7C0  2C 03 00 00 */	cmpwi r3, 0
/* 80455204 0041E7C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80455208 0041E7C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045520C 0041E7CC  7C 9F 23 78 */	mr r31, r4
/* 80455210 0041E7D0  93 C1 00 08 */	stw r30, 8(r1)
/* 80455214 0041E7D4  7C 7E 1B 78 */	mr r30, r3
/* 80455218 0041E7D8  41 82 00 78 */	beq .L_80455290
/* 8045521C 0041E7DC  80 A3 02 50 */	lwz r5, 0x250(r3)
/* 80455220 0041E7E0  3C 80 80 57 */	lis r4, __vt__9CDeviceGX@ha
/* 80455224 0041E7E4  38 84 01 A8 */	addi r4, r4, __vt__9CDeviceGX@l
/* 80455228 0041E7E8  90 83 00 00 */	stw r4, 0(r3)
/* 8045522C 0041E7EC  2C 05 00 00 */	cmpwi r5, 0
/* 80455230 0041E7F0  38 04 00 A0 */	addi r0, r4, 0xa0
/* 80455234 0041E7F4  90 03 01 C8 */	stw r0, 0x1c8(r3)
/* 80455238 0041E7F8  41 82 00 14 */	beq .L_8045524C
/* 8045523C 0041E7FC  7C A3 2B 78 */	mr r3, r5
/* 80455240 0041E800  4B FD FB A1 */	bl __dla__FPv
/* 80455244 0041E804  38 00 00 00 */	li r0, 0
/* 80455248 0041E808  90 1E 02 50 */	stw r0, 0x250(r30)
.L_8045524C:
/* 8045524C 0041E80C  38 00 00 00 */	li r0, 0
/* 80455250 0041E810  90 0D BD F8 */	stw r0, instance__9CDeviceGX@sda21(r13)
/* 80455254 0041E814  38 7E 02 7C */	addi r3, r30, 0x27c
/* 80455258 0041E818  38 80 FF FF */	li r4, -1
/* 8045525C 0041E81C  4B FF 4A A9 */	bl __dt__8CGXCacheFv
/* 80455260 0041E820  38 7E 01 C8 */	addi r3, r30, 0x1c8
/* 80455264 0041E824  38 80 00 00 */	li r4, 0
/* 80455268 0041E828  4B FF 3D 15 */	bl __dt__11CDeviceVICbFv
/* 8045526C 0041E82C  2C 1E 00 00 */	cmpwi r30, 0
/* 80455270 0041E830  41 82 00 10 */	beq .L_80455280
/* 80455274 0041E834  7F C3 F3 78 */	mr r3, r30
/* 80455278 0041E838  38 80 00 00 */	li r4, 0
/* 8045527C 0041E83C  4B FE 28 4D */	bl __dt__11CWorkThreadFv
.L_80455280:
/* 80455280 0041E840  2C 1F 00 00 */	cmpwi r31, 0
/* 80455284 0041E844  40 81 00 0C */	ble .L_80455290
/* 80455288 0041E848  7F C3 F3 78 */	mr r3, r30
/* 8045528C 0041E84C  4B FD F9 A1 */	bl __dl__FPv
.L_80455290:
/* 80455290 0041E850  7F C3 F3 78 */	mr r3, r30
/* 80455294 0041E854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80455298 0041E858  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045529C 0041E85C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804552A0 0041E860  7C 08 03 A6 */	mtlr r0
/* 804552A4 0041E864  38 21 00 10 */	addi r1, r1, 0x10
/* 804552A8 0041E868  4E 80 00 20 */	blr 
.endfn __dt__9CDeviceGXFv

.fn getInstance__9CDeviceGXFv, global
/* 804552AC 0041E86C  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 804552B0 0041E870  4E 80 00 20 */	blr 
.endfn getInstance__9CDeviceGXFv

.fn func_804552B4__9CDeviceGXFv, global
/* 804552B4 0041E874  80 CD BD F8 */	lwz r6, instance__9CDeviceGX@sda21(r13)
/* 804552B8 0041E878  80 06 00 7C */	lwz r0, 0x7c(r6)
/* 804552BC 0041E87C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804552C0 0041E880  41 82 00 0C */	beq .L_804552CC
/* 804552C4 0041E884  38 00 00 01 */	li r0, 1
/* 804552C8 0041E888  48 00 00 5C */	b .L_80455324
.L_804552CC:
/* 804552CC 0041E88C  80 06 01 AC */	lwz r0, 0x1ac(r6)
/* 804552D0 0041E890  38 E0 00 00 */	li r7, 0
/* 804552D4 0041E894  7C 09 03 A6 */	mtctr r0
/* 804552D8 0041E898  28 00 00 00 */	cmplwi r0, 0
/* 804552DC 0041E89C  40 81 00 3C */	ble .L_80455318
.L_804552E0:
/* 804552E0 0041E8A0  80 06 01 A8 */	lwz r0, 0x1a8(r6)
/* 804552E4 0041E8A4  80 66 01 B0 */	lwz r3, 0x1b0(r6)
/* 804552E8 0041E8A8  7C 80 3A 14 */	add r4, r0, r7
/* 804552EC 0041E8AC  80 A6 01 A4 */	lwz r5, 0x1a4(r6)
/* 804552F0 0041E8B0  7C 04 1B 96 */	divwu r0, r4, r3
/* 804552F4 0041E8B4  7C 00 19 D6 */	mullw r0, r0, r3
/* 804552F8 0041E8B8  7C 00 20 50 */	subf r0, r0, r4
/* 804552FC 0041E8BC  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80455300 0041E8C0  7C 05 00 2E */	lwzx r0, r5, r0
/* 80455304 0041E8C4  28 00 00 02 */	cmplwi r0, 2
/* 80455308 0041E8C8  40 82 00 08 */	bne .L_80455310
/* 8045530C 0041E8CC  48 00 00 10 */	b .L_8045531C
.L_80455310:
/* 80455310 0041E8D0  38 E7 00 01 */	addi r7, r7, 1
/* 80455314 0041E8D4  42 00 FF CC */	bdnz .L_804552E0
.L_80455318:
/* 80455318 0041E8D8  38 E0 FF FF */	li r7, -1
.L_8045531C:
/* 8045531C 0041E8DC  54 E0 0F FE */	srwi r0, r7, 0x1f
/* 80455320 0041E8E0  68 00 00 01 */	xori r0, r0, 1
.L_80455324:
/* 80455324 0041E8E4  2C 00 00 00 */	cmpwi r0, 0
/* 80455328 0041E8E8  38 60 00 00 */	li r3, 0
/* 8045532C 0041E8EC  4C 82 00 20 */	bnelr 
/* 80455330 0041E8F0  80 86 00 48 */	lwz r4, 0x48(r6)
/* 80455334 0041E8F4  38 00 00 01 */	li r0, 1
/* 80455338 0041E8F8  2C 04 00 02 */	cmpwi r4, 2
/* 8045533C 0041E8FC  41 82 00 10 */	beq .L_8045534C
/* 80455340 0041E900  2C 04 00 03 */	cmpwi r4, 3
/* 80455344 0041E904  41 82 00 08 */	beq .L_8045534C
/* 80455348 0041E908  38 00 00 00 */	li r0, 0
.L_8045534C:
/* 8045534C 0041E90C  2C 00 00 00 */	cmpwi r0, 0
/* 80455350 0041E910  4D 82 00 20 */	beqlr 
/* 80455354 0041E914  38 60 00 01 */	li r3, 1
/* 80455358 0041E918  4E 80 00 20 */	blr 
.endfn func_804552B4__9CDeviceGXFv

.fn func_8045535C__9CDeviceGXFUl, global
/* 8045535C 0041E91C  80 8D BD F8 */	lwz r4, instance__9CDeviceGX@sda21(r13)
/* 80455360 0041E920  90 64 01 CC */	stw r3, 0x1cc(r4)
/* 80455364 0041E924  4E 80 00 20 */	blr 
.endfn func_8045535C__9CDeviceGXFUl

.fn func_80455368__9CDeviceGXFv, global
/* 80455368 0041E928  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 8045536C 0041E92C  80 63 01 CC */	lwz r3, 0x1cc(r3)
/* 80455370 0041E930  38 03 FF FF */	addi r0, r3, -1
/* 80455374 0041E934  7C 00 00 34 */	cntlzw r0, r0
/* 80455378 0041E938  54 03 D9 7E */	srwi r3, r0, 5
/* 8045537C 0041E93C  4E 80 00 20 */	blr 
.endfn func_80455368__9CDeviceGXFv

.fn updateVerticalFilter__9CDeviceGXF15EVerticalFilter, global
/* 80455380 0041E940  80 8D BD F8 */	lwz r4, instance__9CDeviceGX@sda21(r13)
/* 80455384 0041E944  90 64 02 78 */	stw r3, 0x278(r4)
/* 80455388 0041E948  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 8045538C 0041E94C  80 03 02 78 */	lwz r0, 0x278(r3)
/* 80455390 0041E950  2C 00 00 01 */	cmpwi r0, 1
/* 80455394 0041E954  40 82 00 54 */	bne .L_804553E8
/* 80455398 0041E958  38 C0 00 00 */	li r6, 0
/* 8045539C 0041E95C  98 C3 02 58 */	stb r6, 0x258(r3)
/* 804553A0 0041E960  38 A0 00 03 */	li r5, 3
/* 804553A4 0041E964  38 80 00 13 */	li r4, 0x13
/* 804553A8 0041E968  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 804553AC 0041E96C  38 00 00 14 */	li r0, 0x14
/* 804553B0 0041E970  98 A3 02 59 */	stb r5, 0x259(r3)
/* 804553B4 0041E974  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 804553B8 0041E978  98 83 02 5A */	stb r4, 0x25a(r3)
/* 804553BC 0041E97C  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 804553C0 0041E980  98 03 02 5B */	stb r0, 0x25b(r3)
/* 804553C4 0041E984  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 804553C8 0041E988  98 83 02 5C */	stb r4, 0x25c(r3)
/* 804553CC 0041E98C  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 804553D0 0041E990  98 A3 02 5D */	stb r5, 0x25d(r3)
/* 804553D4 0041E994  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 804553D8 0041E998  98 C3 02 5E */	stb r6, 0x25e(r3)
/* 804553DC 0041E99C  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 804553E0 0041E9A0  98 C3 02 5F */	stb r6, 0x25f(r3)
/* 804553E4 0041E9A4  4E 80 00 20 */	blr
.L_804553E8:
/* 804553E8 0041E9A8  2C 00 00 02 */	cmpwi r0, 2
/* 804553EC 0041E9AC  40 82 00 54 */	bne .L_80455440
/* 804553F0 0041E9B0  38 C0 00 04 */	li r6, 4
/* 804553F4 0041E9B4  98 C3 02 58 */	stb r6, 0x258(r3)
/* 804553F8 0041E9B8  38 A0 00 0F */	li r5, 0xf
/* 804553FC 0041E9BC  38 80 00 12 */	li r4, 0x12
/* 80455400 0041E9C0  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 80455404 0041E9C4  38 00 00 00 */	li r0, 0
/* 80455408 0041E9C8  98 C3 02 59 */	stb r6, 0x259(r3)
/* 8045540C 0041E9CC  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 80455410 0041E9D0  98 A3 02 5A */	stb r5, 0x25a(r3)
/* 80455414 0041E9D4  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 80455418 0041E9D8  98 83 02 5B */	stb r4, 0x25b(r3)
/* 8045541C 0041E9DC  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 80455420 0041E9E0  98 A3 02 5C */	stb r5, 0x25c(r3)
/* 80455424 0041E9E4  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 80455428 0041E9E8  98 C3 02 5D */	stb r6, 0x25d(r3)
/* 8045542C 0041E9EC  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 80455430 0041E9F0  98 C3 02 5E */	stb r6, 0x25e(r3)
/* 80455434 0041E9F4  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 80455438 0041E9F8  98 03 02 5F */	stb r0, 0x25f(r3)
/* 8045543C 0041E9FC  4E 80 00 20 */	blr
.L_80455440:
/* 80455440 0041EA00  2C 00 00 03 */	cmpwi r0, 3
/* 80455444 0041EA04  4C 82 00 20 */	bnelr 
/* 80455448 0041EA08  38 C0 00 08 */	li r6, 8
/* 8045544C 0041EA0C  98 C3 02 58 */	stb r6, 0x258(r3)
/* 80455450 0041EA10  38 A0 00 0A */	li r5, 0xa
/* 80455454 0041EA14  38 80 00 0C */	li r4, 0xc
/* 80455458 0041EA18  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 8045545C 0041EA1C  38 00 00 00 */	li r0, 0
/* 80455460 0041EA20  98 C3 02 59 */	stb r6, 0x259(r3)
/* 80455464 0041EA24  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 80455468 0041EA28  98 A3 02 5A */	stb r5, 0x25a(r3)
/* 8045546C 0041EA2C  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 80455470 0041EA30  98 83 02 5B */	stb r4, 0x25b(r3)
/* 80455474 0041EA34  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 80455478 0041EA38  98 A3 02 5C */	stb r5, 0x25c(r3)
/* 8045547C 0041EA3C  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 80455480 0041EA40  98 C3 02 5D */	stb r6, 0x25d(r3)
/* 80455484 0041EA44  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 80455488 0041EA48  98 C3 02 5E */	stb r6, 0x25e(r3)
/* 8045548C 0041EA4C  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 80455490 0041EA50  98 03 02 5F */	stb r0, 0x25f(r3)
/* 80455494 0041EA54  4E 80 00 20 */	blr
.endfn updateVerticalFilter__9CDeviceGXF15EVerticalFilter

.fn CDeviceVICb_vtableFunc3__9CDeviceGXFv, global
/* 80455498 0041EA58  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8045549C 0041EA5C  7C 08 02 A6 */	mflr r0
/* 804554A0 0041EA60  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 804554A4 0041EA64  93 E1 00 AC */	stw r31, 0xac(r1)
/* 804554A8 0041EA68  7C 7F 1B 78 */	mr r31, r3
/* 804554AC 0041EA6C  4B EC 49 55 */	bl GXFlush
/* 804554B0 0041EA70  38 61 00 10 */	addi r3, r1, 0x10
/* 804554B4 0041EA74  4B EC 39 BD */	bl GXGetCPUFifo
/* 804554B8 0041EA78  38 61 00 10 */	addi r3, r1, 0x10
/* 804554BC 0041EA7C  38 81 00 0C */	addi r4, r1, 0xc
/* 804554C0 0041EA80  38 A1 00 08 */	addi r5, r1, 8
/* 804554C4 0041EA84  4B EC 3A 3D */	bl GXGetFifoPtrs
/* 804554C8 0041EA88  80 7F 02 6C */	lwz r3, 0x26c(r31)
/* 804554CC 0041EA8C  80 81 00 08 */	lwz r4, 8(r1)
/* 804554D0 0041EA90  7C 04 18 40 */	cmplw r4, r3
/* 804554D4 0041EA94  41 80 00 0C */	blt .L_804554E0
/* 804554D8 0041EA98  7C 83 20 50 */	subf r4, r3, r4
/* 804554DC 0041EA9C  48 00 00 10 */	b .L_804554EC
.L_804554E0:
/* 804554E0 0041EAA0  80 0D 9E F8 */	lwz r0, gxHeapSize@sda21(r13)
/* 804554E4 0041EAA4  7C 64 18 50 */	subf r3, r4, r3
/* 804554E8 0041EAA8  7C 83 00 50 */	subf r4, r3, r0
.L_804554EC:
/* 804554EC 0041EAAC  3C 60 43 30 */	lis r3, 0x4330
/* 804554F0 0041EAB0  80 0D 9E F8 */	lwz r0, gxHeapSize@sda21(r13)
/* 804554F4 0041EAB4  90 81 00 94 */	stw r4, 0x94(r1)
/* 804554F8 0041EAB8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804554FC 0041EABC  C8 22 C8 80 */	lfd f1, double_8066CC00@sda21(r2)
/* 80455500 0041EAC0  90 61 00 90 */	stw r3, 0x90(r1)
/* 80455504 0041EAC4  C8 42 C8 88 */	lfd f2, double_8066CC08@sda21(r2)
/* 80455508 0041EAC8  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8045550C 0041EACC  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80455510 0041EAD0  EC 60 08 28 */	fsubs f3, f0, f1
/* 80455514 0041EAD4  C0 02 C8 78 */	lfs f0, float_8066CBF8@sda21(r2)
/* 80455518 0041EAD8  90 61 00 98 */	stw r3, 0x98(r1)
/* 8045551C 0041EADC  C8 21 00 98 */	lfd f1, 0x98(r1)
/* 80455520 0041EAE0  EC 21 10 28 */	fsubs f1, f1, f2
/* 80455524 0041EAE4  EC 23 08 24 */	fdivs f1, f3, f1
/* 80455528 0041EAE8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045552C 0041EAEC  D0 1F 02 64 */	stfs f0, 0x264(r31)
/* 80455530 0041EAF0  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 80455534 0041EAF4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80455538 0041EAF8  7C 08 03 A6 */	mtlr r0
/* 8045553C 0041EAFC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80455540 0041EB00  4E 80 00 20 */	blr
.endfn CDeviceVICb_vtableFunc3__9CDeviceGXFv

.fn CDeviceVICb_vtableFunc4__9CDeviceGXFv, global
/* 80455544 0041EB04  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 80455548 0041EB08  80 03 01 CC */	lwz r0, 0x1cc(r3)
/* 8045554C 0041EB0C  2C 00 00 01 */	cmpwi r0, 1
/* 80455550 0041EB10  4D 82 00 20 */	beqlr 
/* 80455554 0041EB14  80 6D BD FC */	lwz r3, cacheInstance__9CDeviceGX@sda21(r13)
/* 80455558 0041EB18  4B FF 68 E0 */	b func_8044BE38__8CGXCacheFv
/* 8045555C 0041EB1C  4E 80 00 20 */	blr 
.endfn CDeviceVICb_vtableFunc4__9CDeviceGXFv

.fn func_80455560, global
/* 80455560 0041EB20  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 80455564 0041EB24  7C 08 02 A6 */	mflr r0
/* 80455568 0041EB28  90 01 01 74 */	stw r0, 0x174(r1)
/* 8045556C 0041EB2C  93 E1 01 6C */	stw r31, 0x16c(r1)
/* 80455570 0041EB30  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 80455574 0041EB34  80 03 01 CC */	lwz r0, 0x1cc(r3)
/* 80455578 0041EB38  2C 00 00 01 */	cmpwi r0, 1
/* 8045557C 0041EB3C  40 82 00 C4 */	bne .L_80455640
/* 80455580 0041EB40  4B EC 48 81 */	bl GXFlush
/* 80455584 0041EB44  38 61 00 18 */	addi r3, r1, 0x18
/* 80455588 0041EB48  4B EC 38 E9 */	bl GXGetCPUFifo
/* 8045558C 0041EB4C  38 61 00 18 */	addi r3, r1, 0x18
/* 80455590 0041EB50  38 81 00 0C */	addi r4, r1, 0xc
/* 80455594 0041EB54  38 A1 00 08 */	addi r5, r1, 8
/* 80455598 0041EB58  4B EC 39 69 */	bl GXGetFifoPtrs
/* 8045559C 0041EB5C  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 804555A0 0041EB60  80 01 00 08 */	lwz r0, 8(r1)
/* 804555A4 0041EB64  90 03 02 6C */	stw r0, 0x26c(r3)
/* 804555A8 0041EB68  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 804555AC 0041EB6C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804555B0 0041EB70  90 03 02 70 */	stw r0, 0x270(r3)
/* 804555B4 0041EB74  80 61 00 08 */	lwz r3, 8(r1)
/* 804555B8 0041EB78  4B EC 39 B9 */	bl GXEnableBreakPt
/* 804555BC 0041EB7C  3C 60 00 01 */	lis r3, 0x0000B00B@ha
/* 804555C0 0041EB80  38 03 B0 0B */	addi r0, r3, 0x0000B00B@l
/* 804555C4 0041EB84  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 804555C8 0041EB88  4B EC 4B C9 */	bl GXSetDrawSync
/* 804555CC 0041EB8C  80 6D BD FC */	lwz r3, cacheInstance__9CDeviceGX@sda21(r13)
/* 804555D0 0041EB90  4B FF 68 69 */	bl func_8044BE38__8CGXCacheFv
/* 804555D4 0041EB94  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 804555D8 0041EB98  88 03 02 74 */	lbz r0, 0x274(r3)
/* 804555DC 0041EB9C  2C 00 00 00 */	cmpwi r0, 0
/* 804555E0 0041EBA0  40 82 00 68 */	bne .L_80455648
/* 804555E4 0041EBA4  38 61 00 98 */	addi r3, r1, 0x98
/* 804555E8 0041EBA8  48 00 0B 4D */	bl func_80456134
/* 804555EC 0041EBAC  80 6D BD FC */	lwz r3, cacheInstance__9CDeviceGX@sda21(r13)
/* 804555F0 0041EBB0  4B FF 5F C5 */	bl func_8044B5B4
/* 804555F4 0041EBB4  7C 64 1B 78 */	mr r4, r3
/* 804555F8 0041EBB8  38 61 00 98 */	addi r3, r1, 0x98
/* 804555FC 0041EBBC  48 00 0E A5 */	bl func_804564A0
/* 80455600 0041EBC0  4B FF 2D FD */	bl func_804483FC__9CDeviceVIFv
/* 80455604 0041EBC4  AB E3 00 06 */	lha r31, 6(r3)
/* 80455608 0041EBC8  4B FF 2D F5 */	bl func_804483FC__9CDeviceVIFv
/* 8045560C 0041EBCC  A8 63 00 04 */	lha r3, 4(r3)
/* 80455610 0041EBD0  38 00 00 00 */	li r0, 0
/* 80455614 0041EBD4  B0 61 00 14 */	sth r3, 0x14(r1)
/* 80455618 0041EBD8  38 61 00 98 */	addi r3, r1, 0x98
/* 8045561C 0041EBDC  38 81 00 10 */	addi r4, r1, 0x10
/* 80455620 0041EBE0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80455624 0041EBE4  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80455628 0041EBE8  B3 E1 00 16 */	sth r31, 0x16(r1)
/* 8045562C 0041EBEC  48 00 17 81 */	bl func_80456DAC
/* 80455630 0041EBF0  38 61 00 98 */	addi r3, r1, 0x98
/* 80455634 0041EBF4  38 80 FF FF */	li r4, -1
/* 80455638 0041EBF8  48 00 0B 75 */	bl __dt__804561AC
/* 8045563C 0041EBFC  48 00 00 0C */	b .L_80455648
.L_80455640:
/* 80455640 0041EC00  80 6D 9E FC */	lwz r3, lbl_8066607C@sda21(r13)
/* 80455644 0041EC04  4B FF 1F A1 */	bl func_804475E4
.L_80455648:
/* 80455648 0041EC08  80 01 01 74 */	lwz r0, 0x174(r1)
/* 8045564C 0041EC0C  83 E1 01 6C */	lwz r31, 0x16c(r1)
/* 80455650 0041EC10  7C 08 03 A6 */	mtlr r0
/* 80455654 0041EC14  38 21 01 70 */	addi r1, r1, 0x170
/* 80455658 0041EC18  4E 80 00 20 */	blr 
.endfn func_80455560

.fn func_8045565C, global
/* 8045565C 0041EC1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80455660 0041EC20  7C 08 02 A6 */	mflr r0
/* 80455664 0041EC24  90 01 00 34 */	stw r0, 0x34(r1)
/* 80455668 0041EC28  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8045566C 0041EC2C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80455670 0041EC30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80455674 0041EC34  7C 7F 1B 78 */	mr r31, r3
/* 80455678 0041EC38  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8045567C 0041EC3C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80455680 0041EC40  93 81 00 10 */	stw r28, 0x10(r1)
/* 80455684 0041EC44  83 8D BD F8 */	lwz r28, instance__9CDeviceGX@sda21(r13)
/* 80455688 0041EC48  80 1C 01 CC */	lwz r0, 0x1cc(r28)
/* 8045568C 0041EC4C  2C 00 00 01 */	cmpwi r0, 1
/* 80455690 0041EC50  40 82 00 6C */	bne .L_804556FC
/* 80455694 0041EC54  3C 60 00 01 */	lis r3, 0x0000BEEF@ha
/* 80455698 0041EC58  38 03 BE EF */	addi r0, r3, 0x0000BEEF@l
/* 8045569C 0041EC5C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 804556A0 0041EC60  4B EC 4A F1 */	bl GXSetDrawSync
/* 804556A4 0041EC64  83 8D BD F8 */	lwz r28, instance__9CDeviceGX@sda21(r13)
/* 804556A8 0041EC68  80 7C 02 78 */	lwz r3, 0x278(r28)
/* 804556AC 0041EC6C  7C 03 00 D0 */	neg r0, r3
/* 804556B0 0041EC70  7C 00 1B 78 */	or r0, r0, r3
/* 804556B4 0041EC74  54 1D 0F FE */	srwi r29, r0, 0x1f
/* 804556B8 0041EC78  4B FF 2D 45 */	bl func_804483FC__9CDeviceVIFv
/* 804556BC 0041EC7C  7C 7E 1B 78 */	mr r30, r3
/* 804556C0 0041EC80  4B FF 2D 3D */	bl func_804483FC__9CDeviceVIFv
/* 804556C4 0041EC84  88 63 00 19 */	lbz r3, 0x19(r3)
/* 804556C8 0041EC88  7F A5 EB 78 */	mr r5, r29
/* 804556CC 0041EC8C  38 9E 00 1A */	addi r4, r30, 0x1a
/* 804556D0 0041EC90  38 DC 02 58 */	addi r6, r28, 0x258
/* 804556D4 0041EC94  4B EC 5D 8D */	bl GXSetCopyFilter
/* 804556D8 0041EC98  80 8D BD F8 */	lwz r4, instance__9CDeviceGX@sda21(r13)
/* 804556DC 0041EC9C  7F E3 FB 78 */	mr r3, r31
/* 804556E0 0041ECA0  88 84 02 74 */	lbz r4, 0x274(r4)
/* 804556E4 0041ECA4  4B EC 5F 8D */	bl GXCopyDisp
.L_804556E8:
/* 804556E8 0041ECA8  4B EC 4B 69 */	bl GXReadDrawSync
/* 804556EC 0041ECAC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 804556F0 0041ECB0  28 00 BE EF */	cmplwi r0, 0xbeef
/* 804556F4 0041ECB4  40 82 FF F4 */	bne .L_804556E8
/* 804556F8 0041ECB8  48 00 00 7C */	b .L_80455774
.L_804556FC:
/* 804556FC 0041ECBC  80 7C 02 78 */	lwz r3, 0x278(r28)
/* 80455700 0041ECC0  7C 03 00 D0 */	neg r0, r3
/* 80455704 0041ECC4  7C 00 1B 78 */	or r0, r0, r3
/* 80455708 0041ECC8  54 1D 0F FE */	srwi r29, r0, 0x1f
/* 8045570C 0041ECCC  4B FF 2C F1 */	bl func_804483FC__9CDeviceVIFv
/* 80455710 0041ECD0  7C 7E 1B 78 */	mr r30, r3
/* 80455714 0041ECD4  4B FF 2C E9 */	bl func_804483FC__9CDeviceVIFv
/* 80455718 0041ECD8  88 63 00 19 */	lbz r3, 0x19(r3)
/* 8045571C 0041ECDC  7F A5 EB 78 */	mr r5, r29
/* 80455720 0041ECE0  38 9E 00 1A */	addi r4, r30, 0x1a
/* 80455724 0041ECE4  38 DC 02 58 */	addi r6, r28, 0x258
/* 80455728 0041ECE8  4B EC 5D 39 */	bl GXSetCopyFilter
/* 8045572C 0041ECEC  80 8D BD F8 */	lwz r4, instance__9CDeviceGX@sda21(r13)
/* 80455730 0041ECF0  7F E3 FB 78 */	mr r3, r31
/* 80455734 0041ECF4  88 84 02 74 */	lbz r4, 0x274(r4)
/* 80455738 0041ECF8  4B EC 5F 39 */	bl GXCopyDisp
/* 8045573C 0041ECFC  4B EC 4B D5 */	bl GXDrawDone
/* 80455740 0041ED00  80 6D 9E FC */	lwz r3, lbl_8066607C@sda21(r13)
/* 80455744 0041ED04  4B FF 1F A5 */	bl func_804476E8
/* 80455748 0041ED08  4B FF 2C E5 */	bl func_8044842C__9CDeviceVIFv
/* 8045574C 0041ED0C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80455750 0041ED10  3C 00 43 30 */	lis r0, 0x4330
/* 80455754 0041ED14  C8 22 C8 80 */	lfd f1, double_8066CC00@sda21(r2)
/* 80455758 0041ED18  90 01 00 08 */	stw r0, 8(r1)
/* 8045575C 0041ED1C  80 6D 9E FC */	lwz r3, lbl_8066607C@sda21(r13)
/* 80455760 0041ED20  C8 01 00 08 */	lfd f0, 8(r1)
/* 80455764 0041ED24  EF E0 08 28 */	fsubs f31, f0, f1
/* 80455768 0041ED28  4B FF 20 81 */	bl func_804477E8
/* 8045576C 0041ED2C  EC 01 F8 24 */	fdivs f0, f1, f31
/* 80455770 0041ED30  D0 0D BD F0 */	stfs f0, lbl_80667F70@sda21(r13)
.L_80455774:
/* 80455774 0041ED34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80455778 0041ED38  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8045577C 0041ED3C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80455780 0041ED40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80455784 0041ED44  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80455788 0041ED48  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8045578C 0041ED4C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80455790 0041ED50  7C 08 03 A6 */	mtlr r0
/* 80455794 0041ED54  38 21 00 30 */	addi r1, r1, 0x30
/* 80455798 0041ED58  4E 80 00 20 */	blr 
.endfn func_8045565C

.fn func_8045579C, global
/* 8045579C 0041ED5C  4E 80 00 20 */	blr 
.endfn func_8045579C

.fn func_804557A0, global
/* 804557A0 0041ED60  80 6D 9E F8 */	lwz r3, gxHeapSize@sda21(r13)
/* 804557A4 0041ED64  4E 80 00 20 */	blr 
.endfn func_804557A0

.fn CDeviceGX_WorkThreadEvent4, global
/* 804557A8 0041ED68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804557AC 0041ED6C  7C 08 02 A6 */	mflr r0
/* 804557B0 0041ED70  90 01 00 14 */	stw r0, 0x14(r1)
/* 804557B4 0041ED74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804557B8 0041ED78  7C 7F 1B 78 */	mr r31, r3
/* 804557BC 0041ED7C  4B FF 2B 21 */	bl func_804482DC__9CDeviceVIFv
/* 804557C0 0041ED80  2C 03 00 00 */	cmpwi r3, 0
/* 804557C4 0041ED84  41 82 00 CC */	beq .L_80455890
/* 804557C8 0041ED88  80 7F 02 50 */	lwz r3, 0x250(r31)
/* 804557CC 0041ED8C  80 8D 9E F8 */	lwz r4, gxHeapSize@sda21(r13)
/* 804557D0 0041ED90  4B EC 20 61 */	bl GXInit
/* 804557D4 0041ED94  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 804557D8 0041ED98  80 03 01 CC */	lwz r0, 0x1cc(r3)
/* 804557DC 0041ED9C  2C 00 00 01 */	cmpwi r0, 1
/* 804557E0 0041EDA0  40 82 00 38 */	bne .L_80455818
/* 804557E4 0041EDA4  4B EC 4A 7D */	bl GXSetDrawDone
/* 804557E8 0041EDA8  80 9F 02 50 */	lwz r4, 0x250(r31)
/* 804557EC 0041EDAC  38 7F 01 D0 */	addi r3, r31, 0x1d0
/* 804557F0 0041EDB0  80 AD 9E F8 */	lwz r5, gxHeapSize@sda21(r13)
/* 804557F4 0041EDB4  4B EC 2F 6D */	bl GXInitFifoBase
/* 804557F8 0041EDB8  38 7F 01 D0 */	addi r3, r31, 0x1d0
/* 804557FC 0041EDBC  4B EC 30 F5 */	bl GXSetCPUFifo
/* 80455800 0041EDC0  38 7F 01 D0 */	addi r3, r31, 0x1d0
/* 80455804 0041EDC4  4B EC 32 CD */	bl GXSetGPFifo
/* 80455808 0041EDC8  3C 60 00 01 */	lis r3, 0x0000BEEF@ha
/* 8045580C 0041EDCC  38 03 BE EF */	addi r0, r3, 0x0000BEEF@l
/* 80455810 0041EDD0  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80455814 0041EDD4  4B EC 49 7D */	bl GXSetDrawSync
.L_80455818:
/* 80455818 0041EDD8  80 8D BD FC */	lwz r4, cacheInstance__9CDeviceGX@sda21(r13)
/* 8045581C 0041EDDC  38 00 00 00 */	li r0, 0
/* 80455820 0041EDE0  38 60 00 00 */	li r3, 0
/* 80455824 0041EDE4  90 04 05 0C */	stw r0, 0x50c(r4)
/* 80455828 0041EDE8  4B FF FB 59 */	bl updateVerticalFilter__9CDeviceGXF15EVerticalFilter
/* 8045582C 0041EDEC  4B FF 2B D1 */	bl func_804483FC__9CDeviceVIFv
/* 80455830 0041EDF0  88 03 00 19 */	lbz r0, 0x19(r3)
/* 80455834 0041EDF4  2C 00 00 00 */	cmpwi r0, 0
/* 80455838 0041EDF8  41 82 00 14 */	beq .L_8045584C
/* 8045583C 0041EDFC  38 60 00 02 */	li r3, 2
/* 80455840 0041EE00  38 80 00 00 */	li r4, 0
/* 80455844 0041EE04  4B EC 8A 6D */	bl GXSetPixelFmt
/* 80455848 0041EE08  48 00 00 10 */	b .L_80455858
.L_8045584C:
/* 8045584C 0041EE0C  80 6D BD F4 */	lwz r3, lbl_80667F74@sda21(r13)
/* 80455850 0041EE10  38 80 00 00 */	li r4, 0
/* 80455854 0041EE14  4B EC 8A 5D */	bl GXSetPixelFmt
.L_80455858:
/* 80455858 0041EE18  80 6D BD FC */	lwz r3, cacheInstance__9CDeviceGX@sda21(r13)
/* 8045585C 0041EE1C  4B FF 65 DD */	bl func_8044BE38__8CGXCacheFv
/* 80455860 0041EE20  38 60 00 00 */	li r3, 0
/* 80455864 0041EE24  4B EC 8A FD */	bl GXSetDither
/* 80455868 0041EE28  80 6D BD F8 */	lwz r3, instance__9CDeviceGX@sda21(r13)
/* 8045586C 0041EE2C  80 03 01 CC */	lwz r0, 0x1cc(r3)
/* 80455870 0041EE30  2C 00 00 01 */	cmpwi r0, 1
/* 80455874 0041EE34  40 82 00 10 */	bne .L_80455884
/* 80455878 0041EE38  3C 60 80 45 */	lis r3, func_8045592C@ha
/* 8045587C 0041EE3C  38 63 59 2C */	addi r3, r3, func_8045592C@l
/* 80455880 0041EE40  4B EC 4C C1 */	bl GXSetDrawSyncCallback
.L_80455884:
/* 80455884 0041EE44  7F E3 FB 78 */	mr r3, r31
/* 80455888 0041EE48  4B FE 31 71 */	bl WorkThreadEvent4__11CWorkThreadFv
/* 8045588C 0041EE4C  48 00 00 08 */	b .L_80455894
.L_80455890:
/* 80455890 0041EE50  38 60 00 00 */	li r3, 0
.L_80455894:
/* 80455894 0041EE54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80455898 0041EE58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045589C 0041EE5C  7C 08 03 A6 */	mtlr r0
/* 804558A0 0041EE60  38 21 00 10 */	addi r1, r1, 0x10
/* 804558A4 0041EE64  4E 80 00 20 */	blr 
.endfn CDeviceGX_WorkThreadEvent4

.fn CDeviceGX_WorkThreadEvent5, global
/* 804558A8 0041EE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804558AC 0041EE6C  7C 08 02 A6 */	mflr r0
/* 804558B0 0041EE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 804558B4 0041EE74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804558B8 0041EE78  7C 7F 1B 78 */	mr r31, r3
/* 804558BC 0041EE7C  80 8D BD F8 */	lwz r4, instance__9CDeviceGX@sda21(r13)
/* 804558C0 0041EE80  80 04 01 CC */	lwz r0, 0x1cc(r4)
/* 804558C4 0041EE84  2C 00 00 01 */	cmpwi r0, 1
/* 804558C8 0041EE88  40 82 00 0C */	bne .L_804558D4
/* 804558CC 0041EE8C  38 60 00 00 */	li r3, 0
/* 804558D0 0041EE90  4B EC 4C 71 */	bl GXSetDrawSyncCallback
.L_804558D4:
/* 804558D4 0041EE94  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 804558D8 0041EE98  80 03 00 00 */	lwz r0, 0(r3)
/* 804558DC 0041EE9C  7C 00 18 40 */	cmplw r0, r3
/* 804558E0 0041EEA0  40 82 00 34 */	bne .L_80455914
/* 804558E4 0041EEA4  4B FF 7B 55 */	bl func_8044D438__Fv
/* 804558E8 0041EEA8  2C 03 00 00 */	cmpwi r3, 0
/* 804558EC 0041EEAC  41 82 00 28 */	beq .L_80455914
/* 804558F0 0041EEB0  4B FE EB E5 */	bl getInstance__11CWorkSystemFv
/* 804558F4 0041EEB4  2C 03 00 00 */	cmpwi r3, 0
/* 804558F8 0041EEB8  40 82 00 1C */	bne .L_80455914
/* 804558FC 0041EEBC  48 00 3A F5 */	bl getInstance__4CLibFv
/* 80455900 0041EEC0  2C 03 00 00 */	cmpwi r3, 0
/* 80455904 0041EEC4  40 82 00 10 */	bne .L_80455914
/* 80455908 0041EEC8  7F E3 FB 78 */	mr r3, r31
/* 8045590C 0041EECC  4B FE 31 19 */	bl WorkThreadEvent5__11CWorkThreadFv
/* 80455910 0041EED0  48 00 00 08 */	b .L_80455918
.L_80455914:
/* 80455914 0041EED4  38 60 00 00 */	li r3, 0
.L_80455918:
/* 80455918 0041EED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045591C 0041EEDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80455920 0041EEE0  7C 08 03 A6 */	mtlr r0
/* 80455924 0041EEE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80455928 0041EEE8  4E 80 00 20 */	blr
.endfn CDeviceGX_WorkThreadEvent5

.fn func_8045592C, global
/* 8045592C 0041EEEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80455930 0041EEF0  7C 08 02 A6 */	mflr r0
/* 80455934 0041EEF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80455938 0041EEF8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8045593C 0041EEFC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 80455940 0041EF00  28 03 B0 0B */	cmplwi r3, 0xb00b
/* 80455944 0041EF04  40 82 00 10 */	bne .L_80455954
/* 80455948 0041EF08  80 6D 9E FC */	lwz r3, lbl_8066607C@sda21(r13)
/* 8045594C 0041EF0C  4B FF 1C 99 */	bl func_804475E4
/* 80455950 0041EF10  48 00 00 40 */	b .L_80455990
.L_80455954:
/* 80455954 0041EF14  28 03 BE EF */	cmplwi r3, 0xbeef
/* 80455958 0041EF18  40 82 00 38 */	bne .L_80455990
/* 8045595C 0041EF1C  80 6D 9E FC */	lwz r3, lbl_8066607C@sda21(r13)
/* 80455960 0041EF20  4B FF 1D 89 */	bl func_804476E8
/* 80455964 0041EF24  4B FF 2A C9 */	bl func_8044842C__9CDeviceVIFv
/* 80455968 0041EF28  90 61 00 0C */	stw r3, 0xc(r1)
/* 8045596C 0041EF2C  3C 00 43 30 */	lis r0, 0x4330
/* 80455970 0041EF30  C8 22 C8 80 */	lfd f1, double_8066CC00@sda21(r2)
/* 80455974 0041EF34  90 01 00 08 */	stw r0, 8(r1)
/* 80455978 0041EF38  80 6D 9E FC */	lwz r3, lbl_8066607C@sda21(r13)
/* 8045597C 0041EF3C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80455980 0041EF40  EF E0 08 28 */	fsubs f31, f0, f1
/* 80455984 0041EF44  4B FF 1E 65 */	bl func_804477E8
/* 80455988 0041EF48  EC 01 F8 24 */	fdivs f0, f1, f31
/* 8045598C 0041EF4C  D0 0D BD F0 */	stfs f0, lbl_80667F70@sda21(r13)
.L_80455990:
/* 80455990 0041EF50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80455994 0041EF54  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 80455998 0041EF58  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8045599C 0041EF5C  7C 08 03 A6 */	mtlr r0
/* 804559A0 0041EF60  38 21 00 20 */	addi r1, r1, 0x20
/* 804559A4 0041EF64  4E 80 00 20 */	blr 
.endfn func_8045592C

.fn init__9CDeviceGXF11_GXPixelFmtUl, global
/* 804559A8 0041EF68  90 6D BD F4 */	stw r3, lbl_80667F74@sda21(r13)
/* 804559AC 0041EF6C  90 8D 9E F8 */	stw r4, gxHeapSize@sda21(r13)
/* 804559B0 0041EF70  4E 80 00 20 */	blr 
.endfn init__9CDeviceGXF11_GXPixelFmtUl

.fn "@456@CDeviceVICb_vtableFunc4__9CDeviceGXFv", weak
/* 804559B4 0041EF74  38 63 FE 38 */	addi r3, r3, -456
/* 804559B8 0041EF78  4B FF FB 8C */	b CDeviceVICb_vtableFunc4__9CDeviceGXFv
.endfn "@456@CDeviceVICb_vtableFunc4__9CDeviceGXFv"

.fn "@456@CDeviceVICb_vtableFunc3__9CDeviceGXFv", weak
/* 804559BC 0041EF7C  38 63 FE 38 */	addi r3, r3, -456
/* 804559C0 0041EF80  4B FF FA D8 */	b CDeviceVICb_vtableFunc3__9CDeviceGXFv
.endfn "@456@CDeviceVICb_vtableFunc3__9CDeviceGXFv"

.fn "@456@__dt__9CDeviceGXFv", weak
/* 804559C4 0041EF84  38 63 FE 38 */	addi r3, r3, -456
/* 804559C8 0041EF88  4B FF F8 30 */	b __dt__9CDeviceGXFv
.endfn "@456@__dt__9CDeviceGXFv"

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CDeviceGX_typestr, global
	.asciz "CDeviceGX"
	.balign 4
	.4byte 0
.endobj CDeviceGX_typestr


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__9CDeviceGX, global
	.4byte __RTTI__9CDeviceGX
	.4byte 0
	.4byte __dt__9CDeviceGXFv
	.4byte WorkEvent1__10IWorkEventFv
	.4byte OnFileEvent__10IWorkEventFP10CEventFile
	.4byte WorkEvent3__10IWorkEventFv
	.4byte WorkEvent4__10IWorkEventFv
	.4byte WorkEvent5__10IWorkEventFPv
	.4byte WorkEvent6__10IWorkEventFv
	.4byte WorkEvent7__10IWorkEventFv
	.4byte WorkEvent8__10IWorkEventFv
	.4byte WorkEvent9__10IWorkEventFv
	.4byte WorkEvent10__10IWorkEventFv
	.4byte WorkEvent11__10IWorkEventFv
	.4byte WorkEvent12__10IWorkEventFv
	.4byte WorkEvent13__10IWorkEventFv
	.4byte WorkEvent14__10IWorkEventFv
	.4byte WorkEvent15__10IWorkEventFv
	.4byte WorkEvent16__10IWorkEventFv
	.4byte WorkEvent17__10IWorkEventFv
	.4byte WorkEvent18__10IWorkEventFv
	.4byte WorkEvent19__10IWorkEventFv
	.4byte WorkEvent20__10IWorkEventFv
	.4byte WorkEvent21__10IWorkEventFv
	.4byte WorkEvent22__10IWorkEventFv
	.4byte WorkEvent23__10IWorkEventFv
	.4byte WorkEvent24__10IWorkEventFv
	.4byte WorkEvent25__10IWorkEventFv
	.4byte WorkEvent26__10IWorkEventFv
	.4byte WorkEvent27__10IWorkEventFv
	.4byte WorkEvent28__10IWorkEventFv
	.4byte WorkEvent29__10IWorkEventFv
	.4byte WorkEvent30__10IWorkEventFv
	.4byte WorkEvent31__10IWorkEventFv
	.4byte wkUpdate__11CWorkThreadFv
	.4byte WorkThreadEvent2__11CWorkThreadFv
	.4byte WorkThreadEvent3__11CWorkThreadFv
	.4byte CDeviceGX_WorkThreadEvent4
	.4byte CDeviceGX_WorkThreadEvent5
	.4byte WorkThreadEvent6__11CWorkThreadFv
	.4byte __RTTI__9CDeviceGX
	.4byte 0xFFFFFE38
	.4byte "@456@__dt__9CDeviceGXFv"
	.4byte CDeviceVICb_vtableFunc2__11CDeviceVICbFv
	.4byte "@456@CDeviceVICb_vtableFunc3__9CDeviceGXFv"
	.4byte "@456@CDeviceVICb_vtableFunc4__9CDeviceGXFv"
	.4byte CDeviceVICb_vtableFunc3__9CDeviceGXFv
	.4byte CDeviceVICb_vtableFunc4__9CDeviceGXFv
.endobj __vt__9CDeviceGX

.obj CDeviceGX_hierarchy, global
	.4byte __RTTI__11CDeviceVICb
	.4byte 0x000001C8
	.4byte __RTTI__10IWorkEvent
	.4byte 0
	.4byte __RTTI__11CWorkThread
	.4byte 0
	.4byte __RTTI__11CDeviceBase
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CDeviceGX_hierarchy


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj gxHeapSize, global
	.4byte 0x00200000
.endobj gxHeapSize


.obj lbl_8066607C, global
	.4byte lbl_8066CBE8
.endobj lbl_8066607C

.obj __RTTI__9CDeviceGX, global
	.4byte CDeviceGX_typestr
	.4byte CDeviceGX_hierarchy
.endobj __RTTI__9CDeviceGX


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj lbl_8066CBE8, global
	.asciz "GPCost"
	.balign 4
.endobj lbl_8066CBE8


.obj float_8066CBF0, global
	.float 0
.endobj float_8066CBF0


.obj float_8066CBF4, global
	.float 1.0
.endobj float_8066CBF4


.obj float_8066CBF8, global
	.float 2
	.4byte 0
.endobj float_8066CBF8


.obj double_8066CC00, global
	.8byte 0x4330000000000000 #unsigned int to float constant
.endobj double_8066CC00

.obj double_8066CC08, global
	.8byte 0x4330000080000000 #signed int to float constant
.endobj double_8066CC08

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80667F70, global
	.skip 0x4
.endobj lbl_80667F70

.obj lbl_80667F74, global
	.skip 0x4
.endobj lbl_80667F74

.obj instance__9CDeviceGX, global
	.skip 0x4
.endobj instance__9CDeviceGX

.obj cacheInstance__9CDeviceGX, global
	.skip 0x4
.endobj cacheInstance__9CDeviceGX

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001D224", local
.hidden "@etb_8001D224"
	.4byte 0x100A0000
	.4byte 0x0000003C
	.4byte 0x00000038
	.4byte 0x00000080
	.4byte 0x0000002C
	.4byte 0x00000090
	.4byte 0x000F0020
	.4byte 0x00000000
	.4byte 0x0780001E
	.4byte 0x0000027C
	.4byte __dt__8CGXCacheFv
	.4byte 0x0680001E
	.4byte 0x000001C8
	.4byte __dt__11CDeviceVICbFv
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__11CDeviceBaseFv
.endobj "@etb_8001D224"

.obj "@etb_8001D268", local
.hidden "@etb_8001D268"
	.4byte 0x10080000
	.4byte 0x00000074
	.4byte 0x00000018
	.4byte 0x00000088
	.4byte 0x00000024
	.4byte 0x00000000
	.4byte 0x8780001E
	.4byte 0x0000027C
	.4byte __dt__8CGXCacheFv
	.4byte 0x0780001E
	.4byte 0x0000027C
	.4byte __dt__8CGXCacheFv
	.4byte 0x8680001E
	.4byte 0x000001C8
	.4byte __dt__11CDeviceVICbFv
.endobj "@etb_8001D268"

.obj "@etb_8001D2A4", local
.hidden "@etb_8001D2A4"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8001D2A4"

.obj "@etb_8001D2AC", local
.hidden "@etb_8001D2AC"
	.4byte 0x08080000
	.4byte 0x00000094
	.4byte 0x000F0010
	.4byte 0x00000000
	.4byte 0x82000098
	.4byte __dt__804561AC
.endobj "@etb_8001D2AC"

.obj "@etb_8001D2C4", local
.hidden "@etb_8001D2C4"
	.4byte 0x204A0000
	.4byte 0x00000000
.endobj "@etb_8001D2C4"

.obj "@etb_8001D2CC", local
.hidden "@etb_8001D2CC"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001D2CC"

.obj "@etb_8001D2D4", local
.hidden "@etb_8001D2D4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001D2D4"

.obj "@etb_8001D2DC", local
.hidden "@etb_8001D2DC"
	.4byte 0x004A0000
	.4byte 0x00000000
.endobj "@etb_8001D2DC"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80034EBC", local
.hidden "@eti_80034EBC"
	.4byte __ct__9CDeviceGXFPCcP11CWorkThread
	.4byte 0x00000114
	.4byte "@etb_8001D224"
.endobj "@eti_80034EBC"

.obj "@eti_80034EC8", local
.hidden "@eti_80034EC8"
	.4byte __dt__9CDeviceGXFv
	.4byte 0x000000B4
	.4byte "@etb_8001D268"
.endobj "@eti_80034EC8"

.obj "@eti_80034ED4", local
.hidden "@eti_80034ED4"
	.4byte CDeviceVICb_vtableFunc3__9CDeviceGXFv
	.4byte 0x000000AC
	.4byte "@etb_8001D2A4"
.endobj "@eti_80034ED4"

.obj "@eti_80034EE0", local
.hidden "@eti_80034EE0"
	.4byte func_80455560
	.4byte 0x000000FC
	.4byte "@etb_8001D2AC"
.endobj "@eti_80034EE0"

.obj "@eti_80034EEC", local
.hidden "@eti_80034EEC"
	.4byte func_8045565C
	.4byte 0x00000140
	.4byte "@etb_8001D2C4"
.endobj "@eti_80034EEC"

.obj "@eti_80034EF8", local
.hidden "@eti_80034EF8"
	.4byte CDeviceGX_WorkThreadEvent4
	.4byte 0x00000100
	.4byte "@etb_8001D2CC"
.endobj "@eti_80034EF8"

.obj "@eti_80034F04", local
.hidden "@eti_80034F04"
	.4byte CDeviceGX_WorkThreadEvent5
	.4byte 0x00000084
	.4byte "@etb_8001D2D4"
.endobj "@eti_80034F04"

.obj "@eti_80034F10", local
.hidden "@eti_80034F10"
	.4byte func_8045592C
	.4byte 0x0000007C
	.4byte "@etb_8001D2DC"
.endobj "@eti_80034F10"
