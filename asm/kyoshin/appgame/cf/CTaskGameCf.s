.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_80044168
func_80044168:
/* 80044168 0000D728  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004416C 0000D72C  7C 08 02 A6 */	mflr r0
/* 80044170 0000D730  90 01 00 24 */	stw r0, 0x24(r1)
/* 80044174 0000D734  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 80044178 0000D738  7C 7D 1B 78 */	mr r29, r3
/* 8004417C 0000D73C  7C 9E 23 78 */	mr r30, r4
/* 80044180 0000D740  7C BF 2B 78 */	mr r31, r5
/* 80044184 0000D744  48 40 08 95 */	bl __ct__8CProcessFv
/* 80044188 0000D748  3C 60 80 53 */	lis r3, __vt__CTTask_cf_CTaskGameCf@ha
/* 8004418C 0000D74C  3C A0 80 53 */	lis r5, __vt__cf_CTaskGameCf@ha
/* 80044190 0000D750  38 63 93 F4 */	addi r3, r3, __vt__CTTask_cf_CTaskGameCf@l
/* 80044194 0000D754  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80044198 0000D758  3D 00 80 51 */	lis r8, lbl_8050CE10@ha
/* 8004419C 0000D75C  2C 1F 00 00 */	cmpwi r31, 0
/* 800441A0 0000D760  84 C8 CE 10 */	lwzu r6, lbl_8050CE10@l(r8)
/* 800441A4 0000D764  38 A5 93 AC */	addi r5, r5, __vt__cf_CTaskGameCf@l
/* 800441A8 0000D768  38 80 00 00 */	li r4, 0
/* 800441AC 0000D76C  38 60 00 01 */	li r3, 1
/* 800441B0 0000D770  80 08 00 04 */	lwz r0, 4(r8)
/* 800441B4 0000D774  90 1D 00 40 */	stw r0, 0x40(r29)
/* 800441B8 0000D778  38 00 00 10 */	li r0, 0x10
/* 800441BC 0000D77C  90 DD 00 3C */	stw r6, 0x3c(r29)
/* 800441C0 0000D780  80 C8 00 08 */	lwz r6, 8(r8)
/* 800441C4 0000D784  90 DD 00 44 */	stw r6, 0x44(r29)
/* 800441C8 0000D788  80 E8 00 00 */	lwz r7, 0(r8)
/* 800441CC 0000D78C  80 C8 00 04 */	lwz r6, 4(r8)
/* 800441D0 0000D790  90 DD 00 4C */	stw r6, 0x4c(r29)
/* 800441D4 0000D794  90 FD 00 48 */	stw r7, 0x48(r29)
/* 800441D8 0000D798  80 C8 00 08 */	lwz r6, 8(r8)
/* 800441DC 0000D79C  90 DD 00 50 */	stw r6, 0x50(r29)
/* 800441E0 0000D7A0  90 BD 00 10 */	stw r5, 0x10(r29)
/* 800441E4 0000D7A4  90 9D 00 54 */	stw r4, 0x54(r29)
/* 800441E8 0000D7A8  93 DD 00 58 */	stw r30, 0x58(r29)
/* 800441EC 0000D7AC  B0 7D 00 5C */	sth r3, 0x5c(r29)
/* 800441F0 0000D7B0  B0 7D 00 5E */	sth r3, 0x5e(r29)
/* 800441F4 0000D7B4  B0 1D 00 60 */	sth r0, 0x60(r29)
/* 800441F8 0000D7B8  B0 9D 00 62 */	sth r4, 0x62(r29)
/* 800441FC 0000D7BC  98 9D 00 64 */	stb r4, 0x64(r29)
/* 80044200 0000D7C0  90 9D 00 84 */	stw r4, 0x84(r29)
/* 80044204 0000D7C4  41 82 00 10 */	beq .L_80044214
/* 80044208 0000D7C8  60 80 00 08 */	ori r0, r4, 8
/* 8004420C 0000D7CC  90 1D 00 54 */	stw r0, 0x54(r29)
/* 80044210 0000D7D0  48 00 00 08 */	b .L_80044218
.L_80044214:
/* 80044214 0000D7D4  90 9D 00 54 */	stw r4, 0x54(r29)
.L_80044218:
/* 80044218 0000D7D8  7F A3 EB 78 */	mr r3, r29
/* 8004421C 0000D7DC  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 80044220 0000D7E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80044224 0000D7E4  7C 08 03 A6 */	mtlr r0
/* 80044228 0000D7E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8004422C 0000D7EC  4E 80 00 20 */	blr 

.global func_80044230
func_80044230:
/* 80044230 0000D7F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80044234 0000D7F4  7C 08 02 A6 */	mflr r0
/* 80044238 0000D7F8  2C 03 00 00 */	cmpwi r3, 0
/* 8004423C 0000D7FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80044240 0000D800  BF C1 00 08 */	stmw r30, 8(r1)
/* 80044244 0000D804  7C 7E 1B 78 */	mr r30, r3
/* 80044248 0000D808  7C 9F 23 78 */	mr r31, r4
/* 8004424C 0000D80C  41 82 00 1C */	beq .L_80044268
/* 80044250 0000D810  38 80 00 00 */	li r4, 0
/* 80044254 0000D814  48 40 08 E5 */	bl func_80444B38
/* 80044258 0000D818  2C 1F 00 00 */	cmpwi r31, 0
/* 8004425C 0000D81C  40 81 00 0C */	ble .L_80044268
/* 80044260 0000D820  7F C3 F3 78 */	mr r3, r30
/* 80044264 0000D824  48 3F 09 C9 */	bl __dl__FPv
.L_80044268:
/* 80044268 0000D828  7F C3 F3 78 */	mr r3, r30
/* 8004426C 0000D82C  BB C1 00 08 */	lmw r30, 8(r1)
/* 80044270 0000D830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80044274 0000D834  7C 08 03 A6 */	mtlr r0
/* 80044278 0000D838  38 21 00 10 */	addi r1, r1, 0x10
/* 8004427C 0000D83C  4E 80 00 20 */	blr 

.global func_80044280
func_80044280:
/* 80044280 0000D840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80044284 0000D844  7C 08 02 A6 */	mflr r0
/* 80044288 0000D848  2C 03 00 00 */	cmpwi r3, 0
/* 8004428C 0000D84C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80044290 0000D850  BF C1 00 08 */	stmw r30, 8(r1)
/* 80044294 0000D854  7C 7E 1B 78 */	mr r30, r3
/* 80044298 0000D858  7C 9F 23 78 */	mr r31, r4
/* 8004429C 0000D85C  41 82 00 20 */	beq .L_800442BC
/* 800442A0 0000D860  41 82 00 0C */	beq .L_800442AC
/* 800442A4 0000D864  38 80 00 00 */	li r4, 0
/* 800442A8 0000D868  48 40 08 91 */	bl func_80444B38
.L_800442AC:
/* 800442AC 0000D86C  2C 1F 00 00 */	cmpwi r31, 0
/* 800442B0 0000D870  40 81 00 0C */	ble .L_800442BC
/* 800442B4 0000D874  7F C3 F3 78 */	mr r3, r30
/* 800442B8 0000D878  48 3F 09 75 */	bl __dl__FPv
.L_800442BC:
/* 800442BC 0000D87C  7F C3 F3 78 */	mr r3, r30
/* 800442C0 0000D880  BB C1 00 08 */	lmw r30, 8(r1)
/* 800442C4 0000D884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800442C8 0000D888  7C 08 03 A6 */	mtlr r0
/* 800442CC 0000D88C  38 21 00 10 */	addi r1, r1, 0x10
/* 800442D0 0000D890  4E 80 00 20 */	blr 

.global func_800442D4
func_800442D4:
/* 800442D4 0000D894  80 6D A4 B8 */	lwz r3, lbl_80666638@sda21(r13)
/* 800442D8 0000D898  4E 80 00 20 */	blr 

.global func_800442DC
func_800442DC:
/* 800442DC 0000D89C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800442E0 0000D8A0  7C 08 02 A6 */	mflr r0
/* 800442E4 0000D8A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800442E8 0000D8A8  80 03 00 54 */	lwz r0, 0x54(r3)
/* 800442EC 0000D8AC  60 00 00 01 */	ori r0, r0, 1
/* 800442F0 0000D8B0  90 03 00 54 */	stw r0, 0x54(r3)
/* 800442F4 0000D8B4  48 03 9E C1 */	bl func_8007E1B4
/* 800442F8 0000D8B8  2C 03 00 00 */	cmpwi r3, 0
/* 800442FC 0000D8BC  41 82 00 10 */	beq .L_8004430C
/* 80044300 0000D8C0  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 80044304 0000D8C4  64 00 00 20 */	oris r0, r0, 0x20
/* 80044308 0000D8C8  90 0D A5 A8 */	stw r0, lbl_80666728@sda21(r13)
.L_8004430C:
/* 8004430C 0000D8CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80044310 0000D8D0  7C 08 03 A6 */	mtlr r0
/* 80044314 0000D8D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80044318 0000D8D8  4E 80 00 20 */	blr 

.global func_8004431C
func_8004431C:
/* 8004431C 0000D8DC  3C A0 80 53 */	lis r5, lbl_80529310@ha
/* 80044320 0000D8E0  84 85 93 10 */	lwzu r4, lbl_80529310@l(r5)
/* 80044324 0000D8E4  80 05 00 04 */	lwz r0, 4(r5)
/* 80044328 0000D8E8  90 03 00 40 */	stw r0, 0x40(r3)
/* 8004432C 0000D8EC  90 83 00 3C */	stw r4, 0x3c(r3)
/* 80044330 0000D8F0  80 05 00 08 */	lwz r0, 8(r5)
/* 80044334 0000D8F4  90 03 00 44 */	stw r0, 0x44(r3)
/* 80044338 0000D8F8  4E 80 00 20 */	blr 

.global func_8004433C
func_8004433C:
/* 8004433C 0000D8FC  3C A0 80 53 */	lis r5, lbl_8052931C@ha
/* 80044340 0000D900  84 85 93 1C */	lwzu r4, lbl_8052931C@l(r5)
/* 80044344 0000D904  80 05 00 04 */	lwz r0, 4(r5)
/* 80044348 0000D908  90 03 00 40 */	stw r0, 0x40(r3)
/* 8004434C 0000D90C  90 83 00 3C */	stw r4, 0x3c(r3)
/* 80044350 0000D910  80 05 00 08 */	lwz r0, 8(r5)
/* 80044354 0000D914  90 03 00 44 */	stw r0, 0x44(r3)
/* 80044358 0000D918  4E 80 00 20 */	blr 

.global func_8004435C
func_8004435C:
/* 8004435C 0000D91C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80044360 0000D920  7C 08 02 A6 */	mflr r0
/* 80044364 0000D924  39 00 00 0C */	li r8, 0xc
/* 80044368 0000D928  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004436C 0000D92C  38 00 00 00 */	li r0, 0
/* 80044370 0000D930  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 80044374 0000D934  7C DE 33 78 */	mr r30, r6
/* 80044378 0000D938  7C 7D 1B 78 */	mr r29, r3
/* 8004437C 0000D93C  7C FF 3B 78 */	mr r31, r7
/* 80044380 0000D940  B0 83 00 5C */	sth r4, 0x5c(r3)
/* 80044384 0000D944  B0 A3 00 5E */	sth r5, 0x5e(r3)
/* 80044388 0000D948  B1 03 00 60 */	sth r8, 0x60(r3)
/* 8004438C 0000D94C  B0 03 00 62 */	sth r0, 0x62(r3)
/* 80044390 0000D950  7F C3 F3 78 */	mr r3, r30
/* 80044394 0000D954  48 27 52 25 */	bl strlen
/* 80044398 0000D958  90 7D 00 84 */	stw r3, 0x84(r29)
/* 8004439C 0000D95C  7F C4 F3 78 */	mr r4, r30
/* 800443A0 0000D960  38 7D 00 64 */	addi r3, r29, 0x64
/* 800443A4 0000D964  48 27 E3 15 */	bl strcpy
/* 800443A8 0000D968  B3 FD 00 88 */	sth r31, 0x88(r29)
/* 800443AC 0000D96C  3C 80 80 53 */	lis r4, lbl_80529328@ha
/* 800443B0 0000D970  84 64 93 28 */	lwzu r3, lbl_80529328@l(r4)
/* 800443B4 0000D974  80 04 00 04 */	lwz r0, 4(r4)
/* 800443B8 0000D978  90 1D 00 40 */	stw r0, 0x40(r29)
/* 800443BC 0000D97C  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 800443C0 0000D980  80 04 00 08 */	lwz r0, 8(r4)
/* 800443C4 0000D984  90 1D 00 44 */	stw r0, 0x44(r29)
/* 800443C8 0000D988  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 800443CC 0000D98C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800443D0 0000D990  7C 08 03 A6 */	mtlr r0
/* 800443D4 0000D994  38 21 00 20 */	addi r1, r1, 0x20
/* 800443D8 0000D998  4E 80 00 20 */	blr 

.global func_800443DC
func_800443DC:
/* 800443DC 0000D99C  90 6D A4 B8 */	stw r3, lbl_80666638@sda21(r13)
/* 800443E0 0000D9A0  4E 80 00 20 */	blr 

.global func_800443E4
func_800443E4:
/* 800443E4 0000D9A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800443E8 0000D9A8  7C 08 02 A6 */	mflr r0
/* 800443EC 0000D9AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800443F0 0000D9B0  48 15 EA 49 */	bl func_801A2E38
/* 800443F4 0000D9B4  2C 03 00 00 */	cmpwi r3, 0
/* 800443F8 0000D9B8  41 82 00 10 */	beq .L_80044408
/* 800443FC 0000D9BC  48 15 EA 3D */	bl func_801A2E38
/* 80044400 0000D9C0  38 00 00 01 */	li r0, 1
/* 80044404 0000D9C4  98 03 00 39 */	stb r0, 0x39(r3)
.L_80044408:
/* 80044408 0000D9C8  38 00 00 00 */	li r0, 0
/* 8004440C 0000D9CC  90 0D A4 B8 */	stw r0, lbl_80666638@sda21(r13)
/* 80044410 0000D9D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80044414 0000D9D4  7C 08 03 A6 */	mtlr r0
/* 80044418 0000D9D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8004441C 0000D9DC  4E 80 00 20 */	blr 

.global func_80044420
func_80044420:
/* 80044420 0000D9E0  4E 80 00 20 */	blr 

.global func_80044424
func_80044424:
/* 80044424 0000D9E4  3C A0 80 53 */	lis r5, lbl_80529334@ha
/* 80044428 0000D9E8  84 85 93 34 */	lwzu r4, lbl_80529334@l(r5)
/* 8004442C 0000D9EC  80 05 00 04 */	lwz r0, 4(r5)
/* 80044430 0000D9F0  90 03 00 40 */	stw r0, 0x40(r3)
/* 80044434 0000D9F4  90 83 00 3C */	stw r4, 0x3c(r3)
/* 80044438 0000D9F8  80 05 00 08 */	lwz r0, 8(r5)
/* 8004443C 0000D9FC  90 03 00 44 */	stw r0, 0x44(r3)
/* 80044440 0000DA00  4E 80 00 20 */	blr 

.global func_80044444
func_80044444:
/* 80044444 0000DA04  38 C0 00 01 */	li r6, 1
/* 80044448 0000DA08  38 80 00 0C */	li r4, 0xc
/* 8004444C 0000DA0C  38 00 00 00 */	li r0, 0
/* 80044450 0000DA10  B0 C3 00 5C */	sth r6, 0x5c(r3)
/* 80044454 0000DA14  3C A0 80 53 */	lis r5, lbl_80529340@ha
/* 80044458 0000DA18  B0 C3 00 5E */	sth r6, 0x5e(r3)
/* 8004445C 0000DA1C  B0 83 00 60 */	sth r4, 0x60(r3)
/* 80044460 0000DA20  B0 03 00 62 */	sth r0, 0x62(r3)
/* 80044464 0000DA24  84 85 93 40 */	lwzu r4, lbl_80529340@l(r5)
/* 80044468 0000DA28  80 05 00 04 */	lwz r0, 4(r5)
/* 8004446C 0000DA2C  90 03 00 40 */	stw r0, 0x40(r3)
/* 80044470 0000DA30  90 83 00 3C */	stw r4, 0x3c(r3)
/* 80044474 0000DA34  80 05 00 08 */	lwz r0, 8(r5)
/* 80044478 0000DA38  90 03 00 44 */	stw r0, 0x44(r3)
/* 8004447C 0000DA3C  4E 80 00 20 */	blr 

.global func_80044480
func_80044480:
/* 80044480 0000DA40  3C A0 80 53 */	lis r5, lbl_8052934C@ha
/* 80044484 0000DA44  84 85 93 4C */	lwzu r4, lbl_8052934C@l(r5)
/* 80044488 0000DA48  80 05 00 04 */	lwz r0, 4(r5)
/* 8004448C 0000DA4C  90 03 00 40 */	stw r0, 0x40(r3)
/* 80044490 0000DA50  90 83 00 3C */	stw r4, 0x3c(r3)
/* 80044494 0000DA54  80 05 00 08 */	lwz r0, 8(r5)
/* 80044498 0000DA58  90 03 00 44 */	stw r0, 0x44(r3)
/* 8004449C 0000DA5C  4E 80 00 20 */	blr 

.global func_800444A0
func_800444A0:
/* 800444A0 0000DA60  38 C0 00 01 */	li r6, 1
/* 800444A4 0000DA64  38 80 00 0C */	li r4, 0xc
/* 800444A8 0000DA68  38 00 00 00 */	li r0, 0
/* 800444AC 0000DA6C  B0 C3 00 5C */	sth r6, 0x5c(r3)
/* 800444B0 0000DA70  3C A0 80 53 */	lis r5, lbl_80529358@ha
/* 800444B4 0000DA74  B0 C3 00 5E */	sth r6, 0x5e(r3)
/* 800444B8 0000DA78  B0 83 00 60 */	sth r4, 0x60(r3)
/* 800444BC 0000DA7C  B0 03 00 62 */	sth r0, 0x62(r3)
/* 800444C0 0000DA80  84 85 93 58 */	lwzu r4, lbl_80529358@l(r5)
/* 800444C4 0000DA84  80 05 00 04 */	lwz r0, 4(r5)
/* 800444C8 0000DA88  90 03 00 40 */	stw r0, 0x40(r3)
/* 800444CC 0000DA8C  90 83 00 3C */	stw r4, 0x3c(r3)
/* 800444D0 0000DA90  80 05 00 08 */	lwz r0, 8(r5)
/* 800444D4 0000DA94  90 03 00 44 */	stw r0, 0x44(r3)
/* 800444D8 0000DA98  4E 80 00 20 */	blr 

.global func_800444DC
func_800444DC:
/* 800444DC 0000DA9C  3C A0 80 53 */	lis r5, lbl_80529364@ha
/* 800444E0 0000DAA0  84 85 93 64 */	lwzu r4, lbl_80529364@l(r5)
/* 800444E4 0000DAA4  80 05 00 04 */	lwz r0, 4(r5)
/* 800444E8 0000DAA8  90 03 00 40 */	stw r0, 0x40(r3)
/* 800444EC 0000DAAC  90 83 00 3C */	stw r4, 0x3c(r3)
/* 800444F0 0000DAB0  80 05 00 08 */	lwz r0, 8(r5)
/* 800444F4 0000DAB4  90 03 00 44 */	stw r0, 0x44(r3)
/* 800444F8 0000DAB8  4E 80 00 20 */	blr 

.global func_800444FC
func_800444FC:
/* 800444FC 0000DABC  3C A0 80 53 */	lis r5, lbl_80529370@ha
/* 80044500 0000DAC0  84 85 93 70 */	lwzu r4, lbl_80529370@l(r5)
/* 80044504 0000DAC4  80 05 00 04 */	lwz r0, 4(r5)
/* 80044508 0000DAC8  90 03 00 40 */	stw r0, 0x40(r3)
/* 8004450C 0000DACC  90 83 00 3C */	stw r4, 0x3c(r3)
/* 80044510 0000DAD0  80 05 00 08 */	lwz r0, 8(r5)
/* 80044514 0000DAD4  90 03 00 44 */	stw r0, 0x44(r3)
/* 80044518 0000DAD8  4E 80 00 20 */	blr 

.global func_8004451C
func_8004451C:
/* 8004451C 0000DADC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80044520 0000DAE0  7C 08 02 A6 */	mflr r0
/* 80044524 0000DAE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80044528 0000DAE8  39 61 00 30 */	addi r11, r1, 0x30
/* 8004452C 0000DAEC  48 27 5C 31 */	bl _savegpr_29
/* 80044530 0000DAF0  80 03 00 54 */	lwz r0, 0x54(r3)
/* 80044534 0000DAF4  7C 7F 1B 78 */	mr r31, r3
/* 80044538 0000DAF8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8004453C 0000DAFC  40 82 00 34 */	bne .L_80044570
/* 80044540 0000DB00  C0 22 82 A0 */	lfs f1, float_80668620@sda21(r2)
/* 80044544 0000DB04  80 83 00 58 */	lwz r4, 0x58(r3)
/* 80044548 0000DB08  38 61 00 08 */	addi r3, r1, 8
/* 8004454C 0000DB0C  FC 40 08 90 */	fmr f2, f1
/* 80044550 0000DB10  C0 82 82 A4 */	lfs f4, float_80668624@sda21(r2)
/* 80044554 0000DB14  FC 60 08 90 */	fmr f3, f1
/* 80044558 0000DB18  83 C4 00 74 */	lwz r30, 0x74(r4)
/* 8004455C 0000DB1C  4B FF C2 6D */	bl func_800407C8
/* 80044560 0000DB20  7C 65 1B 78 */	mr r5, r3
/* 80044564 0000DB24  7F C3 F3 78 */	mr r3, r30
/* 80044568 0000DB28  38 80 00 00 */	li r4, 0
/* 8004456C 0000DB2C  48 45 1A C1 */	bl func_8049602C
.L_80044570:
/* 80044570 0000DB30  48 0F 1A 6D */	bl func_80135FDC
/* 80044574 0000DB34  48 0B 95 D9 */	bl func_800FDB4C
/* 80044578 0000DB38  A0 1F 00 5C */	lhz r0, 0x5c(r31)
/* 8004457C 0000DB3C  3B C0 00 00 */	li r30, 0
/* 80044580 0000DB40  2C 00 00 00 */	cmpwi r0, 0
/* 80044584 0000DB44  40 82 00 14 */	bne .L_80044598
/* 80044588 0000DB48  A0 1F 00 5E */	lhz r0, 0x5e(r31)
/* 8004458C 0000DB4C  2C 00 00 00 */	cmpwi r0, 0
/* 80044590 0000DB50  40 82 00 08 */	bne .L_80044598
/* 80044594 0000DB54  3B C0 00 01 */	li r30, 1
.L_80044598:
/* 80044598 0000DB58  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8004459C 0000DB5C  2C 1E 00 00 */	cmpwi r30, 0
/* 800445A0 0000DB60  54 00 EF FE */	rlwinm r0, r0, 0x1d, 0x1f, 0x1f
/* 800445A4 0000DB64  68 05 00 01 */	xori r5, r0, 1
/* 800445A8 0000DB68  41 82 00 08 */	beq .L_800445B0
/* 800445AC 0000DB6C  38 A0 00 00 */	li r5, 0
.L_800445B0:
/* 800445B0 0000DB70  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 800445B4 0000DB74  80 64 00 74 */	lwz r3, 0x74(r4)
/* 800445B8 0000DB78  80 84 00 70 */	lwz r4, 0x70(r4)
/* 800445BC 0000DB7C  48 03 95 25 */	bl func_8007DAE0
/* 800445C0 0000DB80  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 800445C4 0000DB84  54 03 EF FE */	rlwinm r3, r0, 0x1d, 0x1f, 0x1f
/* 800445C8 0000DB88  48 03 B3 69 */	bl func_8007F930
/* 800445CC 0000DB8C  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 800445D0 0000DB90  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 800445D4 0000DB94  40 82 00 40 */	bne .L_80044614
/* 800445D8 0000DB98  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 800445DC 0000DB9C  83 A3 00 74 */	lwz r29, 0x74(r3)
/* 800445E0 0000DBA0  48 3E FD C1 */	bl func_804343A0
/* 800445E4 0000DBA4  7C 65 1B 78 */	mr r5, r3
/* 800445E8 0000DBA8  7F E3 FB 78 */	mr r3, r31
/* 800445EC 0000DBAC  7F A4 EB 78 */	mr r4, r29
/* 800445F0 0000DBB0  48 0F 89 ED */	bl func_8013CFDC
/* 800445F4 0000DBB4  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 800445F8 0000DBB8  7F E3 FB 78 */	mr r3, r31
/* 800445FC 0000DBBC  38 A0 FF FF */	li r5, -1
/* 80044600 0000DBC0  80 84 00 74 */	lwz r4, 0x74(r4)
/* 80044604 0000DBC4  48 0E AF 55 */	bl func_8012F558
/* 80044608 0000DBC8  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 8004460C 0000DBCC  64 00 10 00 */	oris r0, r0, 0x1000
/* 80044610 0000DBD0  90 0D A5 A8 */	stw r0, lbl_80666728@sda21(r13)
.L_80044614:
/* 80044614 0000DBD4  4B FF BE DD */	bl func_800404F0
/* 80044618 0000DBD8  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 8004461C 0000DBDC  2C 03 00 00 */	cmpwi r3, 0
/* 80044620 0000DBE0  54 03 00 80 */	rlwinm r3, r0, 0, 2, 0
/* 80044624 0000DBE4  41 82 00 08 */	beq .L_8004462C
/* 80044628 0000DBE8  64 03 40 00 */	oris r3, r0, 0x4000
.L_8004462C:
/* 8004462C 0000DBEC  90 6D A5 A8 */	stw r3, lbl_80666728@sda21(r13)
/* 80044630 0000DBF0  48 3F 7B 81 */	bl func_8043C1B0
/* 80044634 0000DBF4  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 80044638 0000DBF8  38 A0 FF FF */	li r5, -1
/* 8004463C 0000DBFC  80 84 00 74 */	lwz r4, 0x74(r4)
/* 80044640 0000DC00  48 0E F0 A5 */	bl func_801336E4
/* 80044644 0000DC04  83 BF 00 58 */	lwz r29, 0x58(r31)
/* 80044648 0000DC08  48 3F 7B 71 */	bl func_8043C1B8
/* 8004464C 0000DC0C  80 9D 00 74 */	lwz r4, 0x74(r29)
/* 80044650 0000DC10  80 BD 00 70 */	lwz r5, 0x70(r29)
/* 80044654 0000DC14  48 12 1F 51 */	bl func_801665A4
/* 80044658 0000DC18  2C 1E 00 00 */	cmpwi r30, 0
/* 8004465C 0000DC1C  41 82 00 10 */	beq .L_8004466C
/* 80044660 0000DC20  48 05 A6 51 */	bl func_8009ECB0
/* 80044664 0000DC24  48 05 A6 4D */	bl func_8009ECB0
/* 80044668 0000DC28  48 00 00 94 */	b .L_800446FC
.L_8004466C:
/* 8004466C 0000DC2C  48 05 A6 45 */	bl func_8009ECB0
/* 80044670 0000DC30  7C 7D 1B 78 */	mr r29, r3
/* 80044674 0000DC34  48 05 A6 3D */	bl func_8009ECB0
/* 80044678 0000DC38  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 8004467C 0000DC3C  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 80044680 0000DC40  40 82 00 7C */	bne .L_800446FC
/* 80044684 0000DC44  7F A3 EB 78 */	mr r3, r29
/* 80044688 0000DC48  38 80 00 02 */	li r4, 2
/* 8004468C 0000DC4C  38 A0 00 01 */	li r5, 1
/* 80044690 0000DC50  38 C0 00 01 */	li r6, 1
/* 80044694 0000DC54  48 05 9E E1 */	bl func_8009E574
/* 80044698 0000DC58  7F A3 EB 78 */	mr r3, r29
/* 8004469C 0000DC5C  38 80 00 04 */	li r4, 4
/* 800446A0 0000DC60  38 A0 00 01 */	li r5, 1
/* 800446A4 0000DC64  38 C0 00 02 */	li r6, 2
/* 800446A8 0000DC68  48 05 9E CD */	bl func_8009E574
/* 800446AC 0000DC6C  7F A3 EB 78 */	mr r3, r29
/* 800446B0 0000DC70  38 80 00 03 */	li r4, 3
/* 800446B4 0000DC74  38 A0 00 02 */	li r5, 2
/* 800446B8 0000DC78  38 C0 00 00 */	li r6, 0
/* 800446BC 0000DC7C  48 05 9E B9 */	bl func_8009E574
/* 800446C0 0000DC80  7F A3 EB 78 */	mr r3, r29
/* 800446C4 0000DC84  38 80 00 05 */	li r4, 5
/* 800446C8 0000DC88  38 A0 00 02 */	li r5, 2
/* 800446CC 0000DC8C  38 C0 00 01 */	li r6, 1
/* 800446D0 0000DC90  48 05 9E A5 */	bl func_8009E574
/* 800446D4 0000DC94  7F A3 EB 78 */	mr r3, r29
/* 800446D8 0000DC98  38 80 00 06 */	li r4, 6
/* 800446DC 0000DC9C  38 A0 00 02 */	li r5, 2
/* 800446E0 0000DCA0  38 C0 00 02 */	li r6, 2
/* 800446E4 0000DCA4  48 05 9E 91 */	bl func_8009E574
/* 800446E8 0000DCA8  7F A3 EB 78 */	mr r3, r29
/* 800446EC 0000DCAC  38 80 00 07 */	li r4, 7
/* 800446F0 0000DCB0  38 A0 00 02 */	li r5, 2
/* 800446F4 0000DCB4  38 C0 00 03 */	li r6, 3
/* 800446F8 0000DCB8  48 05 9E 7D */	bl func_8009E574
.L_800446FC:
/* 800446FC 0000DCBC  A0 7F 00 60 */	lhz r3, 0x60(r31)
/* 80044700 0000DCC0  38 A0 00 00 */	li r5, 0
/* 80044704 0000DCC4  A0 9F 00 62 */	lhz r4, 0x62(r31)
/* 80044708 0000DCC8  48 04 24 55 */	bl func_80086B5C
/* 8004470C 0000DCCC  88 1F 00 64 */	lbz r0, 0x64(r31)
/* 80044710 0000DCD0  7C 00 07 75 */	extsb. r0, r0
/* 80044714 0000DCD4  41 82 00 0C */	beq .L_80044720
/* 80044718 0000DCD8  3B BF 00 64 */	addi r29, r31, 0x64
/* 8004471C 0000DCDC  48 00 00 08 */	b .L_80044724
.L_80044720:
/* 80044720 0000DCE0  3B A0 00 00 */	li r29, 0
.L_80044724:
/* 80044724 0000DCE4  48 1F B9 39 */	bl func_8024005C
/* 80044728 0000DCE8  7C 67 1B 78 */	mr r7, r3
/* 8004472C 0000DCEC  A0 7F 00 5C */	lhz r3, 0x5c(r31)
/* 80044730 0000DCF0  A0 9F 00 5E */	lhz r4, 0x5e(r31)
/* 80044734 0000DCF4  7F A5 EB 78 */	mr r5, r29
/* 80044738 0000DCF8  A0 DF 00 88 */	lhz r6, 0x88(r31)
/* 8004473C 0000DCFC  48 03 9D D9 */	bl func_8007E514
/* 80044740 0000DD00  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 80044744 0000DD04  80 83 00 74 */	lwz r4, 0x74(r3)
/* 80044748 0000DD08  48 01 55 11 */	bl func_80059C58
/* 8004474C 0000DD0C  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 80044750 0000DD10  80 83 00 74 */	lwz r4, 0x74(r3)
/* 80044754 0000DD14  48 15 E7 DD */	bl func_801A2F30
/* 80044758 0000DD18  38 60 00 20 */	li r3, 0x20
/* 8004475C 0000DD1C  48 05 88 31 */	bl func_8009CF8C
/* 80044760 0000DD20  2C 03 00 00 */	cmpwi r3, 0
/* 80044764 0000DD24  40 82 00 10 */	bne .L_80044774
/* 80044768 0000DD28  38 60 00 20 */	li r3, 0x20
/* 8004476C 0000DD2C  38 80 00 01 */	li r4, 1
/* 80044770 0000DD30  48 05 88 A9 */	bl func_8009D018
.L_80044774:
/* 80044774 0000DD34  38 60 00 01 */	li r3, 1
/* 80044778 0000DD38  38 80 00 00 */	li r4, 0
/* 8004477C 0000DD3C  4B FF E8 B1 */	bl func_8004302C
/* 80044780 0000DD40  3C 80 80 53 */	lis r4, lbl_8052937C@ha
/* 80044784 0000DD44  84 64 93 7C */	lwzu r3, lbl_8052937C@l(r4)
/* 80044788 0000DD48  39 61 00 30 */	addi r11, r1, 0x30
/* 8004478C 0000DD4C  80 04 00 04 */	lwz r0, 4(r4)
/* 80044790 0000DD50  90 1F 00 40 */	stw r0, 0x40(r31)
/* 80044794 0000DD54  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80044798 0000DD58  80 04 00 08 */	lwz r0, 8(r4)
/* 8004479C 0000DD5C  90 1F 00 44 */	stw r0, 0x44(r31)
/* 800447A0 0000DD60  48 27 5A 09 */	bl _restgpr_29
/* 800447A4 0000DD64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800447A8 0000DD68  7C 08 03 A6 */	mtlr r0
/* 800447AC 0000DD6C  38 21 00 30 */	addi r1, r1, 0x30
/* 800447B0 0000DD70  4E 80 00 20 */	blr 

.global func_800447B4
func_800447B4:
/* 800447B4 0000DD74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800447B8 0000DD78  7C 08 02 A6 */	mflr r0
/* 800447BC 0000DD7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800447C0 0000DD80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800447C4 0000DD84  7C 7F 1B 78 */	mr r31, r3
/* 800447C8 0000DD88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800447CC 0000DD8C  48 25 23 11 */	bl func_80296ADC
/* 800447D0 0000DD90  88 03 00 0F */	lbz r0, 0xf(r3)
/* 800447D4 0000DD94  2C 00 00 00 */	cmpwi r0, 0
/* 800447D8 0000DD98  40 82 00 10 */	bne .L_800447E8
/* 800447DC 0000DD9C  3B C0 00 0A */	li r30, 0xa
/* 800447E0 0000DDA0  48 25 22 FD */	bl func_80296ADC
/* 800447E4 0000DDA4  9B C3 00 0F */	stb r30, 0xf(r3)
.L_800447E8:
/* 800447E8 0000DDA8  48 25 22 F5 */	bl func_80296ADC
/* 800447EC 0000DDAC  88 63 00 0F */	lbz r3, 0xf(r3)
/* 800447F0 0000DDB0  38 63 FF FF */	addi r3, r3, -1
/* 800447F4 0000DDB4  48 40 3B E9 */	bl func_804483DC
/* 800447F8 0000DDB8  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 800447FC 0000DDBC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80044800 0000DDC0  41 82 00 C4 */	beq .L_800448C4
/* 80044804 0000DDC4  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 80044808 0000DDC8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8004480C 0000DDCC  90 1F 00 54 */	stw r0, 0x54(r31)
/* 80044810 0000DDD0  48 01 3F D9 */	bl func_800587E8
/* 80044814 0000DDD4  2C 03 00 00 */	cmpwi r3, 0
/* 80044818 0000DDD8  41 82 00 10 */	beq .L_80044828
/* 8004481C 0000DDDC  48 01 3F CD */	bl func_800587E8
/* 80044820 0000DDE0  38 00 00 01 */	li r0, 1
/* 80044824 0000DDE4  98 03 00 39 */	stb r0, 0x39(r3)
.L_80044828:
/* 80044828 0000DDE8  48 15 E6 11 */	bl func_801A2E38
/* 8004482C 0000DDEC  2C 03 00 00 */	cmpwi r3, 0
/* 80044830 0000DDF0  41 82 00 10 */	beq .L_80044840
/* 80044834 0000DDF4  48 15 E6 05 */	bl func_801A2E38
/* 80044838 0000DDF8  38 00 00 01 */	li r0, 1
/* 8004483C 0000DDFC  98 03 00 39 */	stb r0, 0x39(r3)
.L_80044840:
/* 80044840 0000DE00  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 80044844 0000DE04  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 80044848 0000DE08  40 82 00 34 */	bne .L_8004487C
/* 8004484C 0000DE0C  C0 22 82 A0 */	lfs f1, float_80668620@sda21(r2)
/* 80044850 0000DE10  38 61 00 08 */	addi r3, r1, 8
/* 80044854 0000DE14  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 80044858 0000DE18  FC 40 08 90 */	fmr f2, f1
/* 8004485C 0000DE1C  C0 82 82 A4 */	lfs f4, float_80668624@sda21(r2)
/* 80044860 0000DE20  FC 60 08 90 */	fmr f3, f1
/* 80044864 0000DE24  83 C4 00 74 */	lwz r30, 0x74(r4)
/* 80044868 0000DE28  4B FF BF 61 */	bl func_800407C8
/* 8004486C 0000DE2C  7C 65 1B 78 */	mr r5, r3
/* 80044870 0000DE30  7F C3 F3 78 */	mr r3, r30
/* 80044874 0000DE34  38 80 00 00 */	li r4, 0
/* 80044878 0000DE38  48 45 17 B5 */	bl func_8049602C
.L_8004487C:
/* 8004487C 0000DE3C  48 0F 7C D1 */	bl func_8013C54C
/* 80044880 0000DE40  2C 03 00 00 */	cmpwi r3, 0
/* 80044884 0000DE44  41 82 00 10 */	beq .L_80044894
/* 80044888 0000DE48  48 0F 7C C5 */	bl func_8013C54C
/* 8004488C 0000DE4C  38 00 00 01 */	li r0, 1
/* 80044890 0000DE50  98 03 00 39 */	stb r0, 0x39(r3)
.L_80044894:
/* 80044894 0000DE54  38 60 00 00 */	li r3, 0
/* 80044898 0000DE58  48 0E AF E5 */	bl func_8012F87C
/* 8004489C 0000DE5C  48 11 FC 19 */	bl func_801644B4
/* 800448A0 0000DE60  38 00 00 01 */	li r0, 1
/* 800448A4 0000DE64  98 03 00 39 */	stb r0, 0x39(r3)
/* 800448A8 0000DE68  3C 80 80 53 */	lis r4, lbl_80529388@ha
/* 800448AC 0000DE6C  84 64 93 88 */	lwzu r3, lbl_80529388@l(r4)
/* 800448B0 0000DE70  80 04 00 04 */	lwz r0, 4(r4)
/* 800448B4 0000DE74  90 1F 00 40 */	stw r0, 0x40(r31)
/* 800448B8 0000DE78  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 800448BC 0000DE7C  80 04 00 08 */	lwz r0, 8(r4)
/* 800448C0 0000DE80  90 1F 00 44 */	stw r0, 0x44(r31)
.L_800448C4:
/* 800448C4 0000DE84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800448C8 0000DE88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800448CC 0000DE8C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800448D0 0000DE90  7C 08 03 A6 */	mtlr r0
/* 800448D4 0000DE94  38 21 00 20 */	addi r1, r1, 0x20
/* 800448D8 0000DE98  4E 80 00 20 */	blr 

.global func_800448DC
func_800448DC:
/* 800448DC 0000DE9C  80 8D A7 CC */	lwz r4, CUICfManager_instance@sda21(r13)
/* 800448E0 0000DEA0  2C 04 00 00 */	cmpwi r4, 0
/* 800448E4 0000DEA4  41 82 00 0C */	beq .L_800448F0
/* 800448E8 0000DEA8  38 00 00 01 */	li r0, 1
/* 800448EC 0000DEAC  98 04 00 39 */	stb r0, 0x39(r4)
.L_800448F0:
/* 800448F0 0000DEB0  80 03 00 54 */	lwz r0, 0x54(r3)
/* 800448F4 0000DEB4  38 C0 00 01 */	li r6, 1
/* 800448F8 0000DEB8  80 83 00 58 */	lwz r4, 0x58(r3)
/* 800448FC 0000DEBC  3C A0 80 53 */	lis r5, lbl_80529394@ha
/* 80044900 0000DEC0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80044904 0000DEC4  90 03 00 54 */	stw r0, 0x54(r3)
/* 80044908 0000DEC8  38 00 00 02 */	li r0, 2
/* 8004490C 0000DECC  80 84 00 74 */	lwz r4, 0x74(r4)
/* 80044910 0000DED0  98 C4 03 E4 */	stb r6, 0x3e4(r4)
/* 80044914 0000DED4  90 03 00 8C */	stw r0, 0x8c(r3)
/* 80044918 0000DED8  84 85 93 94 */	lwzu r4, lbl_80529394@l(r5)
/* 8004491C 0000DEDC  80 05 00 04 */	lwz r0, 4(r5)
/* 80044920 0000DEE0  90 03 00 40 */	stw r0, 0x40(r3)
/* 80044924 0000DEE4  90 83 00 3C */	stw r4, 0x3c(r3)
/* 80044928 0000DEE8  80 05 00 08 */	lwz r0, 8(r5)
/* 8004492C 0000DEEC  90 03 00 44 */	stw r0, 0x44(r3)
/* 80044930 0000DEF0  4E 80 00 20 */	blr 

.global func_80044934
func_80044934:
/* 80044934 0000DEF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80044938 0000DEF8  7C 08 02 A6 */	mflr r0
/* 8004493C 0000DEFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80044940 0000DF00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80044944 0000DF04  7C 7F 1B 78 */	mr r31, r3
/* 80044948 0000DF08  80 83 00 8C */	lwz r4, 0x8c(r3)
/* 8004494C 0000DF0C  34 04 FF FF */	addic. r0, r4, -1
/* 80044950 0000DF10  90 03 00 8C */	stw r0, 0x8c(r3)
/* 80044954 0000DF14  41 81 00 34 */	bgt .L_80044988
/* 80044958 0000DF18  80 03 00 54 */	lwz r0, 0x54(r3)
/* 8004495C 0000DF1C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80044960 0000DF20  40 82 00 08 */	bne .L_80044968
/* 80044964 0000DF24  48 03 98 B5 */	bl func_8007E218
.L_80044968:
/* 80044968 0000DF28  48 0B 92 B5 */	bl func_800FDC1C
/* 8004496C 0000DF2C  3C 80 80 53 */	lis r4, lbl_805293A0@ha
/* 80044970 0000DF30  84 64 93 A0 */	lwzu r3, lbl_805293A0@l(r4)
/* 80044974 0000DF34  80 04 00 04 */	lwz r0, 4(r4)
/* 80044978 0000DF38  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8004497C 0000DF3C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80044980 0000DF40  80 04 00 08 */	lwz r0, 8(r4)
/* 80044984 0000DF44  90 1F 00 44 */	stw r0, 0x44(r31)
.L_80044988:
/* 80044988 0000DF48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004498C 0000DF4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80044990 0000DF50  7C 08 03 A6 */	mtlr r0
/* 80044994 0000DF54  38 21 00 10 */	addi r1, r1, 0x10
/* 80044998 0000DF58  4E 80 00 20 */	blr 

.global func_8004499C
func_8004499C:
/* 8004499C 0000DF5C  80 83 00 58 */	lwz r4, 0x58(r3)
/* 800449A0 0000DF60  38 00 00 00 */	li r0, 0
/* 800449A4 0000DF64  80 84 00 74 */	lwz r4, 0x74(r4)
/* 800449A8 0000DF68  98 04 03 E4 */	stb r0, 0x3e4(r4)
/* 800449AC 0000DF6C  80 03 00 54 */	lwz r0, 0x54(r3)
/* 800449B0 0000DF70  60 00 00 02 */	ori r0, r0, 2
/* 800449B4 0000DF74  90 03 00 54 */	stw r0, 0x54(r3)
/* 800449B8 0000DF78  4E 80 00 20 */	blr 

.global func_800449BC
func_800449BC:
/* 800449BC 0000DF7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800449C0 0000DF80  7C 08 02 A6 */	mflr r0
/* 800449C4 0000DF84  90 01 00 24 */	stw r0, 0x24(r1)
/* 800449C8 0000DF88  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 800449CC 0000DF8C  7C 7D 1B 78 */	mr r29, r3
/* 800449D0 0000DF90  7C 9E 23 78 */	mr r30, r4
/* 800449D4 0000DF94  48 3F 2B E1 */	bl func_804375B4
/* 800449D8 0000DF98  7C 64 1B 78 */	mr r4, r3
/* 800449DC 0000DF9C  38 60 00 90 */	li r3, 0x90
/* 800449E0 0000DFA0  48 3F 00 7D */	bl mm_malloc
/* 800449E4 0000DFA4  2C 03 00 00 */	cmpwi r3, 0
/* 800449E8 0000DFA8  7C 7F 1B 78 */	mr r31, r3
/* 800449EC 0000DFAC  41 82 00 14 */	beq .L_80044A00
/* 800449F0 0000DFB0  7F A4 EB 78 */	mr r4, r29
/* 800449F4 0000DFB4  7F C5 F3 78 */	mr r5, r30
/* 800449F8 0000DFB8  4B FF F7 71 */	bl func_80044168
/* 800449FC 0000DFBC  7C 7F 1B 78 */	mr r31, r3
.L_80044A00:
/* 80044A00 0000DFC0  7F E3 FB 78 */	mr r3, r31
/* 80044A04 0000DFC4  7F A4 EB 78 */	mr r4, r29
/* 80044A08 0000DFC8  38 A0 00 00 */	li r5, 0
/* 80044A0C 0000DFCC  48 40 02 69 */	bl func_80444C74
/* 80044A10 0000DFD0  7F E3 FB 78 */	mr r3, r31
/* 80044A14 0000DFD4  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 80044A18 0000DFD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80044A1C 0000DFDC  7C 08 03 A6 */	mtlr r0
/* 80044A20 0000DFE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80044A24 0000DFE4  4E 80 00 20 */	blr 

.global func_80044A28
func_80044A28:
/* 80044A28 0000DFE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80044A2C 0000DFEC  7C 08 02 A6 */	mflr r0
/* 80044A30 0000DFF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80044A34 0000DFF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80044A38 0000DFF8  7C 7F 1B 78 */	mr r31, r3
/* 80044A3C 0000DFFC  38 63 00 3C */	addi r3, r3, 0x3c
/* 80044A40 0000E000  48 27 52 B1 */	bl __ptmf_test
/* 80044A44 0000E004  2C 03 00 00 */	cmpwi r3, 0
/* 80044A48 0000E008  41 82 00 14 */	beq .L_80044A5C
/* 80044A4C 0000E00C  7F E3 FB 78 */	mr r3, r31
/* 80044A50 0000E010  39 9F 00 3C */	addi r12, r31, 0x3c
/* 80044A54 0000E014  48 27 53 09 */	bl __ptmf_scall
/* 80044A58 0000E018  60 00 00 00 */	nop 
.L_80044A5C:
/* 80044A5C 0000E01C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80044A60 0000E020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80044A64 0000E024  7C 08 03 A6 */	mtlr r0
/* 80044A68 0000E028  38 21 00 10 */	addi r1, r1, 0x10
/* 80044A6C 0000E02C  4E 80 00 20 */	blr 

.global func_80044A70
func_80044A70:
/* 80044A70 0000E030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80044A74 0000E034  7C 08 02 A6 */	mflr r0
/* 80044A78 0000E038  90 01 00 14 */	stw r0, 0x14(r1)
/* 80044A7C 0000E03C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80044A80 0000E040  7C 7F 1B 78 */	mr r31, r3
/* 80044A84 0000E044  38 63 00 48 */	addi r3, r3, 0x48
/* 80044A88 0000E048  48 27 52 69 */	bl __ptmf_test
/* 80044A8C 0000E04C  2C 03 00 00 */	cmpwi r3, 0
/* 80044A90 0000E050  41 82 00 14 */	beq .L_80044AA4
/* 80044A94 0000E054  7F E3 FB 78 */	mr r3, r31
/* 80044A98 0000E058  39 9F 00 48 */	addi r12, r31, 0x48
/* 80044A9C 0000E05C  48 27 52 C1 */	bl __ptmf_scall
/* 80044AA0 0000E060  60 00 00 00 */	nop 
.L_80044AA4:
/* 80044AA4 0000E064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80044AA8 0000E068  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80044AAC 0000E06C  7C 08 03 A6 */	mtlr r0
/* 80044AB0 0000E070  38 21 00 10 */	addi r1, r1, 0x10
/* 80044AB4 0000E074  4E 80 00 20 */	blr 


.section .data, "wa"  # 0x805281E0 - 0x80573C60


.global lbl_80529310
lbl_80529310:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_80044424

.global lbl_8052931C
lbl_8052931C:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_80044480

.global lbl_80529328
lbl_80529328:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_800444DC

.global lbl_80529334
lbl_80529334:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_80044444

.global lbl_80529340
lbl_80529340:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_8004451C

.global lbl_8052934C
lbl_8052934C:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_800444A0

.global lbl_80529358
lbl_80529358:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_8004451C

.global lbl_80529364
lbl_80529364:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_800444FC

.global lbl_80529370
lbl_80529370:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_8004451C

.global lbl_8052937C
lbl_8052937C:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_800447B4

.global lbl_80529388
lbl_80529388:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_800448DC

.global lbl_80529394
lbl_80529394:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_80044934

.global lbl_805293A0
lbl_805293A0:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_8004499C


.global __vt__cf_CTaskGameCf
__vt__cf_CTaskGameCf:
	.4byte __RTTI__cf_CTaskGameCf
	.4byte 0
	.4byte func_80044280
	.4byte CChildListNode_Reset
	.4byte func_800443DC
	.4byte func_800443E4
	.4byte func_80044A28
	.4byte func_80044420
	.4byte func_80043F20

.global cf_CTaskGameCf_hierarchy
cf_CTaskGameCf_hierarchy:
	.4byte __RTTI__CDoubleListNode
	.4byte 0
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __RTTI__CProcess
	.4byte 0
	.4byte __RTTI__CTTask_cf_CTaskGameCf
	.4byte 0
	.4byte 0


.global __vt__CTTask_cf_CTaskGameCf
__vt__CTTask_cf_CTaskGameCf:
	.4byte __RTTI__CTTask_cf_CTaskGameCf
	.4byte 0
	.4byte func_80044230
	.4byte CChildListNode_Reset
	.4byte 0
	.4byte 0
	.4byte func_80044A28
	.4byte func_80044A70
	.4byte func_80043F20

.global CTTask_cf_CTaskGameCf_hierarchy
CTTask_cf_CTaskGameCf_hierarchy:
	.4byte __RTTI__CDoubleListNode
	.4byte 0
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __RTTI__CProcess
	.4byte 0
	.4byte 0
	.4byte 0


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global cf_CTaskGameCf_typestr
cf_CTaskGameCf_typestr:
	.asciz "cf::CTaskGameCf"

.global CTTask_cf_CTaskGameCf_typestr
CTTask_cf_CTaskGameCf_typestr:
	.asciz "CTTask<cf::CTaskGameCf>"


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global __RTTI__cf_CTaskGameCf
__RTTI__cf_CTaskGameCf:
	.4byte cf_CTaskGameCf_typestr
	.4byte cf_CTaskGameCf_hierarchy

.global __RTTI__CTTask_cf_CTaskGameCf
__RTTI__CTTask_cf_CTaskGameCf:
	.4byte CTTask_cf_CTaskGameCf_typestr
	.4byte CTTask_cf_CTaskGameCf_hierarchy

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.global lbl_80666638
lbl_80666638:
	.skip 0x8


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global float_80668620
float_80668620:
	.float 0


.global float_80668624
float_80668624:
	.float 1.0

.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_80006E68
lbl_80006E68:
	.4byte 0x18080000
	.4byte 0

.global lbl_80006E70
lbl_80006E70:
	.4byte 0x10080000
	.4byte 0

.global lbl_80006E78
lbl_80006E78:
	.4byte 0x10080000
	.4byte 0

.global lbl_80006E80
lbl_80006E80:
	.4byte 0x00080000
	.4byte 0

.global lbl_80006E88
lbl_80006E88:
	.4byte 0x18080000
	.4byte 0

.global lbl_80006E90
lbl_80006E90:
	.4byte 0x00080000
	.4byte 0

.global lbl_80006E98
lbl_80006E98:
	.4byte 0x180A0000
	.4byte 0

.global lbl_80006EA0
lbl_80006EA0:
	.4byte 0x100A0000
	.4byte 0

.global lbl_80006EA8
lbl_80006EA8:
	.4byte 0x08080000
	.4byte 0

.global lbl_80006EB0
lbl_80006EB0:
	.4byte 0x18080000
	.4byte 0

.global lbl_80006EB8
lbl_80006EB8:
	.4byte 0x08080000
	.4byte 0

.global lbl_80006EC0
lbl_80006EC0:
	.4byte 0x08080000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

	.4byte func_80044168
	.4byte 0x000000C8
	.4byte lbl_80006E68
	.4byte func_80044230
	.4byte 0x00000050
	.4byte lbl_80006E70
	.4byte func_80044280
	.4byte 0x00000054
	.4byte lbl_80006E78
	.4byte func_800442DC
	.4byte 0x00000040
	.4byte lbl_80006E80
	.4byte func_8004435C
	.4byte 0x00000080
	.4byte lbl_80006E88
	.4byte func_800443E4
	.4byte 0x0000003C
	.4byte lbl_80006E90
	.4byte func_8004451C
	.4byte 0x00000298
	.4byte lbl_80006E98
	.4byte func_800447B4
	.4byte 0x00000128
	.4byte lbl_80006EA0
	.4byte func_80044934
	.4byte 0x00000068
	.4byte lbl_80006EA8
	.4byte func_800449BC
	.4byte 0x0000006C
	.4byte lbl_80006EB0
	.4byte func_80044A28
	.4byte 0x00000048
	.4byte lbl_80006EB8
	.4byte func_80044A70
	.4byte 0x00000048
	.4byte lbl_80006EC0