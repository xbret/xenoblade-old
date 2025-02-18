.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__12CDeviceClockFPCcP11CWorkThread, global
/* 8044DB24 004170E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044DB28 004170E8  7C 08 02 A6 */	mflr r0
/* 8044DB2C 004170EC  38 C0 00 00 */	li r6, 0
/* 8044DB30 004170F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044DB34 004170F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044DB38 004170F8  93 C1 00 08 */	stw r30, 8(r1)
/* 8044DB3C 004170FC  7C 7E 1B 78 */	mr r30, r3
/* 8044DB40 00417100  4B FE 9A 7D */	bl __ct__11CWorkThreadFPCcP11CWorkThreadi
/* 8044DB44 00417104  3C 60 80 57 */	lis r3, __vt__12CDeviceClock@ha
/* 8044DB48 00417108  3D 00 80 57 */	lis r8, "__vt__35_reslist_base<P17IDeviceClockFrame>"@ha
/* 8044DB4C 0041710C  3B E0 00 00 */	li r31, 0
/* 8044DB50 00417110  93 FE 01 C4 */	stw r31, 0x1c4(r30)
/* 8044DB54 00417114  38 FE 01 D4 */	addi r7, r30, 0x1d4
/* 8044DB58 00417118  38 63 F9 B0 */	addi r3, r3, __vt__12CDeviceClock@l
/* 8044DB5C 0041711C  39 08 FA 84 */	addi r8, r8, "__vt__35_reslist_base<P17IDeviceClockFrame>"@l
/* 8044DB60 00417120  90 7E 00 00 */	stw r3, 0(r30)
/* 8044DB64 00417124  3C C0 80 57 */	lis r6, "__vt__29reslist<P17IDeviceClockFrame>"@ha
/* 8044DB68 00417128  38 7E 02 10 */	addi r3, r30, 0x210
/* 8044DB6C 0041712C  93 FE 01 C8 */	stw r31, 0x1c8(r30)
/* 8044DB70 00417130  38 C6 FA 6C */	addi r6, r6, "__vt__29reslist<P17IDeviceClockFrame>"@l
/* 8044DB74 00417134  38 80 00 00 */	li r4, 0
/* 8044DB78 00417138  38 A0 00 28 */	li r5, 0x28
/* 8044DB7C 0041713C  91 1E 01 CC */	stw r8, 0x1cc(r30)
/* 8044DB80 00417140  93 FE 01 E0 */	stw r31, 0x1e0(r30)
/* 8044DB84 00417144  93 FE 01 E4 */	stw r31, 0x1e4(r30)
/* 8044DB88 00417148  9B FE 01 E8 */	stb r31, 0x1e8(r30)
/* 8044DB8C 0041714C  90 FE 01 D0 */	stw r7, 0x1d0(r30)
/* 8044DB90 00417150  90 E7 00 00 */	stw r7, 0(r7)
/* 8044DB94 00417154  90 E7 00 04 */	stw r7, 4(r7)
/* 8044DB98 00417158  90 DE 01 CC */	stw r6, 0x1cc(r30)
/* 8044DB9C 0041715C  93 FE 01 F4 */	stw r31, 0x1f4(r30)
/* 8044DBA0 00417160  93 FE 01 F0 */	stw r31, 0x1f0(r30)
/* 8044DBA4 00417164  93 FE 01 FC */	stw r31, 0x1fc(r30)
/* 8044DBA8 00417168  93 FE 01 F8 */	stw r31, 0x1f8(r30)
/* 8044DBAC 0041716C  93 FE 02 04 */	stw r31, 0x204(r30)
/* 8044DBB0 00417170  93 FE 02 00 */	stw r31, 0x200(r30)
/* 8044DBB4 00417174  93 FE 02 0C */	stw r31, 0x20c(r30)
/* 8044DBB8 00417178  93 FE 02 08 */	stw r31, 0x208(r30)
/* 8044DBBC 0041717C  93 CD BD B8 */	stw r30, instance__12CDeviceClock@sda21(r13)
/* 8044DBC0 00417180  4B BB 67 91 */	bl memset
/* 8044DBC4 00417184  4B F0 ED 9D */	bl OSGetTime
/* 8044DBC8 00417188  80 1E 01 C8 */	lwz r0, 0x1c8(r30)
/* 8044DBCC 0041718C  90 9E 01 F4 */	stw r4, 0x1f4(r30)
/* 8044DBD0 00417190  60 00 00 01 */	ori r0, r0, 1
/* 8044DBD4 00417194  80 9E 00 54 */	lwz r4, 0x54(r30)
/* 8044DBD8 00417198  90 7E 01 F0 */	stw r3, 0x1f0(r30)
/* 8044DBDC 0041719C  38 60 00 C0 */	li r3, 0xc0
/* 8044DBE0 004171A0  90 1E 01 C8 */	stw r0, 0x1c8(r30)
/* 8044DBE4 004171A4  4B FE 6E 9D */	bl heap_malloc_array__3mtlFUli
/* 8044DBE8 004171A8  90 7E 01 E0 */	stw r3, 0x1e0(r30)
/* 8044DBEC 004171AC  38 00 00 10 */	li r0, 0x10
/* 8044DBF0 004171B0  93 E3 00 00 */	stw r31, 0(r3)
/* 8044DBF4 004171B4  7F C3 F3 78 */	mr r3, r30
/* 8044DBF8 004171B8  80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 8044DBFC 004171BC  93 E4 00 0C */	stw r31, 0xc(r4)
/* 8044DC00 004171C0  80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 8044DC04 004171C4  93 E4 00 18 */	stw r31, 0x18(r4)
/* 8044DC08 004171C8  80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 8044DC0C 004171CC  93 E4 00 24 */	stw r31, 0x24(r4)
/* 8044DC10 004171D0  80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 8044DC14 004171D4  93 E4 00 30 */	stw r31, 0x30(r4)
/* 8044DC18 004171D8  80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 8044DC1C 004171DC  93 E4 00 3C */	stw r31, 0x3c(r4)
/* 8044DC20 004171E0  80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 8044DC24 004171E4  93 E4 00 48 */	stw r31, 0x48(r4)
/* 8044DC28 004171E8  80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 8044DC2C 004171EC  93 E4 00 54 */	stw r31, 0x54(r4)
/* 8044DC30 004171F0  80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 8044DC34 004171F4  93 E4 00 60 */	stw r31, 0x60(r4)
/* 8044DC38 004171F8  80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 8044DC3C 004171FC  93 E4 00 6C */	stw r31, 0x6c(r4)
/* 8044DC40 00417200  80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 8044DC44 00417204  93 E4 00 78 */	stw r31, 0x78(r4)
/* 8044DC48 00417208  80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 8044DC4C 0041720C  93 E4 00 84 */	stw r31, 0x84(r4)
/* 8044DC50 00417210  80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 8044DC54 00417214  93 E4 00 90 */	stw r31, 0x90(r4)
/* 8044DC58 00417218  80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 8044DC5C 0041721C  93 E4 00 9C */	stw r31, 0x9c(r4)
/* 8044DC60 00417220  80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 8044DC64 00417224  93 E4 00 A8 */	stw r31, 0xa8(r4)
/* 8044DC68 00417228  80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 8044DC6C 0041722C  93 E4 00 B4 */	stw r31, 0xb4(r4)
/* 8044DC70 00417230  90 1E 01 E4 */	stw r0, 0x1e4(r30)
/* 8044DC74 00417234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8044DC78 00417238  83 C1 00 08 */	lwz r30, 8(r1)
/* 8044DC7C 0041723C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044DC80 00417240  7C 08 03 A6 */	mtlr r0
/* 8044DC84 00417244  38 21 00 10 */	addi r1, r1, 0x10
/* 8044DC88 00417248  4E 80 00 20 */	blr 
.endfn __ct__12CDeviceClockFPCcP11CWorkThread

.fn "__dt__35_reslist_base<P17IDeviceClockFrame>Fv", global
/* 8044DC8C 0041724C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044DC90 00417250  7C 08 02 A6 */	mflr r0
/* 8044DC94 00417254  2C 03 00 00 */	cmpwi r3, 0
/* 8044DC98 00417258  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044DC9C 0041725C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044DCA0 00417260  7C 9F 23 78 */	mr r31, r4
/* 8044DCA4 00417264  93 C1 00 08 */	stw r30, 8(r1)
/* 8044DCA8 00417268  7C 7E 1B 78 */	mr r30, r3
/* 8044DCAC 0041726C  41 82 00 78 */	beq .L_8044DD24
/* 8044DCB0 00417270  3C A0 80 57 */	lis r5, "__vt__35_reslist_base<P17IDeviceClockFrame>"@ha
/* 8044DCB4 00417274  80 83 00 04 */	lwz r4, 4(r3)
/* 8044DCB8 00417278  38 A5 FA 84 */	addi r5, r5, "__vt__35_reslist_base<P17IDeviceClockFrame>"@l
/* 8044DCBC 0041727C  90 A3 00 00 */	stw r5, 0(r3)
/* 8044DCC0 00417280  38 00 00 00 */	li r0, 0
/* 8044DCC4 00417284  80 A4 00 00 */	lwz r5, 0(r4)
/* 8044DCC8 00417288  48 00 00 10 */	b .L_8044DCD8
.L_8044DCCC:
/* 8044DCCC 0041728C  7C A4 2B 78 */	mr r4, r5
/* 8044DCD0 00417290  80 A5 00 00 */	lwz r5, 0(r5)
/* 8044DCD4 00417294  90 04 00 00 */	stw r0, 0(r4)
.L_8044DCD8:
/* 8044DCD8 00417298  80 83 00 04 */	lwz r4, 4(r3)
/* 8044DCDC 0041729C  7C 05 20 40 */	cmplw r5, r4
/* 8044DCE0 004172A0  40 82 FF EC */	bne .L_8044DCCC
/* 8044DCE4 004172A4  90 84 00 00 */	stw r4, 0(r4)
/* 8044DCE8 004172A8  80 83 00 04 */	lwz r4, 4(r3)
/* 8044DCEC 004172AC  90 84 00 04 */	stw r4, 4(r4)
/* 8044DCF0 004172B0  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 8044DCF4 004172B4  2C 00 00 00 */	cmpwi r0, 0
/* 8044DCF8 004172B8  40 82 00 1C */	bne .L_8044DD14
/* 8044DCFC 004172BC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8044DD00 004172C0  2C 03 00 00 */	cmpwi r3, 0
/* 8044DD04 004172C4  41 82 00 10 */	beq .L_8044DD14
/* 8044DD08 004172C8  4B FE 70 D9 */	bl __dla__FPv
/* 8044DD0C 004172CC  38 00 00 00 */	li r0, 0
/* 8044DD10 004172D0  90 1E 00 14 */	stw r0, 0x14(r30)
.L_8044DD14:
/* 8044DD14 004172D4  2C 1F 00 00 */	cmpwi r31, 0
/* 8044DD18 004172D8  40 81 00 0C */	ble .L_8044DD24
/* 8044DD1C 004172DC  7F C3 F3 78 */	mr r3, r30
/* 8044DD20 004172E0  4B FE 6F 0D */	bl __dl__FPv
.L_8044DD24:
/* 8044DD24 004172E4  7F C3 F3 78 */	mr r3, r30
/* 8044DD28 004172E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8044DD2C 004172EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8044DD30 004172F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044DD34 004172F4  7C 08 03 A6 */	mtlr r0
/* 8044DD38 004172F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8044DD3C 004172FC  4E 80 00 20 */	blr 
.endfn "__dt__35_reslist_base<P17IDeviceClockFrame>Fv"

.fn "__dt__29reslist<P17IDeviceClockFrame>Fv", global
/* 8044DD40 00417300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044DD44 00417304  7C 08 02 A6 */	mflr r0
/* 8044DD48 00417308  2C 03 00 00 */	cmpwi r3, 0
/* 8044DD4C 0041730C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044DD50 00417310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044DD54 00417314  7C 9F 23 78 */	mr r31, r4
/* 8044DD58 00417318  93 C1 00 08 */	stw r30, 8(r1)
/* 8044DD5C 0041731C  7C 7E 1B 78 */	mr r30, r3
/* 8044DD60 00417320  41 82 00 7C */	beq .L_8044DDDC
/* 8044DD64 00417324  41 82 00 68 */	beq .L_8044DDCC
/* 8044DD68 00417328  3C A0 80 57 */	lis r5, "__vt__35_reslist_base<P17IDeviceClockFrame>"@ha
/* 8044DD6C 0041732C  80 83 00 04 */	lwz r4, 4(r3)
/* 8044DD70 00417330  38 A5 FA 84 */	addi r5, r5, "__vt__35_reslist_base<P17IDeviceClockFrame>"@l
/* 8044DD74 00417334  90 A3 00 00 */	stw r5, 0(r3)
/* 8044DD78 00417338  38 00 00 00 */	li r0, 0
/* 8044DD7C 0041733C  80 84 00 00 */	lwz r4, 0(r4)
/* 8044DD80 00417340  48 00 00 10 */	b .L_8044DD90
.L_8044DD84:
/* 8044DD84 00417344  7C 85 23 78 */	mr r5, r4
/* 8044DD88 00417348  80 84 00 00 */	lwz r4, 0(r4)
/* 8044DD8C 0041734C  90 05 00 00 */	stw r0, 0(r5)
.L_8044DD90:
/* 8044DD90 00417350  80 A3 00 04 */	lwz r5, 4(r3)
/* 8044DD94 00417354  7C 04 28 40 */	cmplw r4, r5
/* 8044DD98 00417358  40 82 FF EC */	bne .L_8044DD84
/* 8044DD9C 0041735C  90 A5 00 00 */	stw r5, 0(r5)
/* 8044DDA0 00417360  80 83 00 04 */	lwz r4, 4(r3)
/* 8044DDA4 00417364  90 84 00 04 */	stw r4, 4(r4)
/* 8044DDA8 00417368  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 8044DDAC 0041736C  2C 00 00 00 */	cmpwi r0, 0
/* 8044DDB0 00417370  40 82 00 1C */	bne .L_8044DDCC
/* 8044DDB4 00417374  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8044DDB8 00417378  2C 03 00 00 */	cmpwi r3, 0
/* 8044DDBC 0041737C  41 82 00 10 */	beq .L_8044DDCC
/* 8044DDC0 00417380  4B FE 70 21 */	bl __dla__FPv
/* 8044DDC4 00417384  38 00 00 00 */	li r0, 0
/* 8044DDC8 00417388  90 1E 00 14 */	stw r0, 0x14(r30)
.L_8044DDCC:
/* 8044DDCC 0041738C  2C 1F 00 00 */	cmpwi r31, 0
/* 8044DDD0 00417390  40 81 00 0C */	ble .L_8044DDDC
/* 8044DDD4 00417394  7F C3 F3 78 */	mr r3, r30
/* 8044DDD8 00417398  4B FE 6E 55 */	bl __dl__FPv
.L_8044DDDC:
/* 8044DDDC 0041739C  7F C3 F3 78 */	mr r3, r30
/* 8044DDE0 004173A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8044DDE4 004173A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8044DDE8 004173A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044DDEC 004173AC  7C 08 03 A6 */	mtlr r0
/* 8044DDF0 004173B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8044DDF4 004173B4  4E 80 00 20 */	blr 
.endfn "__dt__29reslist<P17IDeviceClockFrame>Fv"

.fn __dt__12CDeviceClockFv, global
/* 8044DDF8 004173B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8044DDFC 004173BC  7C 08 02 A6 */	mflr r0
/* 8044DE00 004173C0  2C 03 00 00 */	cmpwi r3, 0
/* 8044DE04 004173C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8044DE08 004173C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8044DE0C 004173CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8044DE10 004173D0  7C 9E 23 78 */	mr r30, r4
/* 8044DE14 004173D4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8044DE18 004173D8  7C 7D 1B 78 */	mr r29, r3
/* 8044DE1C 004173DC  41 82 00 9C */	beq .L_8044DEB8
/* 8044DE20 004173E0  37 E3 01 CC */	addic. r31, r3, 0x1cc
/* 8044DE24 004173E4  38 00 00 00 */	li r0, 0
/* 8044DE28 004173E8  90 0D BD B8 */	stw r0, instance__12CDeviceClock@sda21(r13)
/* 8044DE2C 004173EC  41 82 00 68 */	beq .L_8044DE94
/* 8044DE30 004173F0  41 82 00 64 */	beq .L_8044DE94
/* 8044DE34 004173F4  3C 80 80 57 */	lis r4, "__vt__35_reslist_base<P17IDeviceClockFrame>"@ha
/* 8044DE38 004173F8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8044DE3C 004173FC  38 84 FA 84 */	addi r4, r4, "__vt__35_reslist_base<P17IDeviceClockFrame>"@l
/* 8044DE40 00417400  90 9F 00 00 */	stw r4, 0(r31)
/* 8044DE44 00417404  80 83 00 00 */	lwz r4, 0(r3)
/* 8044DE48 00417408  48 00 00 10 */	b .L_8044DE58
.L_8044DE4C:
/* 8044DE4C 0041740C  7C 83 23 78 */	mr r3, r4
/* 8044DE50 00417410  80 84 00 00 */	lwz r4, 0(r4)
/* 8044DE54 00417414  90 03 00 00 */	stw r0, 0(r3)
.L_8044DE58:
/* 8044DE58 00417418  80 7F 00 04 */	lwz r3, 4(r31)
/* 8044DE5C 0041741C  7C 04 18 40 */	cmplw r4, r3
/* 8044DE60 00417420  40 82 FF EC */	bne .L_8044DE4C
/* 8044DE64 00417424  90 63 00 00 */	stw r3, 0(r3)
/* 8044DE68 00417428  80 7F 00 04 */	lwz r3, 4(r31)
/* 8044DE6C 0041742C  90 63 00 04 */	stw r3, 4(r3)
/* 8044DE70 00417430  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 8044DE74 00417434  2C 00 00 00 */	cmpwi r0, 0
/* 8044DE78 00417438  40 82 00 1C */	bne .L_8044DE94
/* 8044DE7C 0041743C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8044DE80 00417440  2C 03 00 00 */	cmpwi r3, 0
/* 8044DE84 00417444  41 82 00 10 */	beq .L_8044DE94
/* 8044DE88 00417448  4B FE 6F 59 */	bl __dla__FPv
/* 8044DE8C 0041744C  38 00 00 00 */	li r0, 0
/* 8044DE90 00417450  90 1F 00 14 */	stw r0, 0x14(r31)
.L_8044DE94:
/* 8044DE94 00417454  2C 1D 00 00 */	cmpwi r29, 0
/* 8044DE98 00417458  41 82 00 10 */	beq .L_8044DEA8
/* 8044DE9C 0041745C  7F A3 EB 78 */	mr r3, r29
/* 8044DEA0 00417460  38 80 00 00 */	li r4, 0
/* 8044DEA4 00417464  4B FE 9C 25 */	bl __dt__11CWorkThreadFv
.L_8044DEA8:
/* 8044DEA8 00417468  2C 1E 00 00 */	cmpwi r30, 0
/* 8044DEAC 0041746C  40 81 00 0C */	ble .L_8044DEB8
/* 8044DEB0 00417470  7F A3 EB 78 */	mr r3, r29
/* 8044DEB4 00417474  4B FE 6D 79 */	bl __dl__FPv
.L_8044DEB8:
/* 8044DEB8 00417478  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8044DEBC 0041747C  7F A3 EB 78 */	mr r3, r29
/* 8044DEC0 00417480  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8044DEC4 00417484  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8044DEC8 00417488  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8044DECC 0041748C  7C 08 03 A6 */	mtlr r0
/* 8044DED0 00417490  38 21 00 20 */	addi r1, r1, 0x20
/* 8044DED4 00417494  4E 80 00 20 */	blr 
.endfn __dt__12CDeviceClockFv

.fn getInstance__12CDeviceClockFv, global
/* 8044DED8 00417498  80 6D BD B8 */	lwz r3, instance__12CDeviceClock@sda21(r13)
/* 8044DEDC 0041749C  4E 80 00 20 */	blr 
.endfn getInstance__12CDeviceClockFv

.fn func_8044DEE0__12CDeviceClockFv, global
/* 8044DEE0 004174A0  80 CD BD B8 */	lwz r6, instance__12CDeviceClock@sda21(r13)
/* 8044DEE4 004174A4  80 06 00 7C */	lwz r0, 0x7c(r6)
/* 8044DEE8 004174A8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8044DEEC 004174AC  41 82 00 0C */	beq .L_8044DEF8
/* 8044DEF0 004174B0  38 00 00 01 */	li r0, 1
/* 8044DEF4 004174B4  48 00 00 5C */	b .L_8044DF50
.L_8044DEF8:
/* 8044DEF8 004174B8  80 06 01 AC */	lwz r0, 0x1ac(r6)
/* 8044DEFC 004174BC  38 E0 00 00 */	li r7, 0
/* 8044DF00 004174C0  7C 09 03 A6 */	mtctr r0
/* 8044DF04 004174C4  28 00 00 00 */	cmplwi r0, 0
/* 8044DF08 004174C8  40 81 00 3C */	ble .L_8044DF44
.L_8044DF0C:
/* 8044DF0C 004174CC  80 06 01 A8 */	lwz r0, 0x1a8(r6)
/* 8044DF10 004174D0  80 66 01 B0 */	lwz r3, 0x1b0(r6)
/* 8044DF14 004174D4  7C 80 3A 14 */	add r4, r0, r7
/* 8044DF18 004174D8  80 A6 01 A4 */	lwz r5, 0x1a4(r6)
/* 8044DF1C 004174DC  7C 04 1B 96 */	divwu r0, r4, r3
/* 8044DF20 004174E0  7C 00 19 D6 */	mullw r0, r0, r3
/* 8044DF24 004174E4  7C 00 20 50 */	subf r0, r0, r4
/* 8044DF28 004174E8  1C 00 00 24 */	mulli r0, r0, 0x24
/* 8044DF2C 004174EC  7C 05 00 2E */	lwzx r0, r5, r0
/* 8044DF30 004174F0  28 00 00 02 */	cmplwi r0, 2
/* 8044DF34 004174F4  40 82 00 08 */	bne .L_8044DF3C
/* 8044DF38 004174F8  48 00 00 10 */	b .L_8044DF48
.L_8044DF3C:
/* 8044DF3C 004174FC  38 E7 00 01 */	addi r7, r7, 1
/* 8044DF40 00417500  42 00 FF CC */	bdnz .L_8044DF0C
.L_8044DF44:
/* 8044DF44 00417504  38 E0 FF FF */	li r7, -1
.L_8044DF48:
/* 8044DF48 00417508  54 E0 0F FE */	srwi r0, r7, 0x1f
/* 8044DF4C 0041750C  68 00 00 01 */	xori r0, r0, 1
.L_8044DF50:
/* 8044DF50 00417510  2C 00 00 00 */	cmpwi r0, 0
/* 8044DF54 00417514  38 60 00 00 */	li r3, 0
/* 8044DF58 00417518  4C 82 00 20 */	bnelr 
/* 8044DF5C 0041751C  80 86 00 48 */	lwz r4, 0x48(r6)
/* 8044DF60 00417520  38 00 00 01 */	li r0, 1
/* 8044DF64 00417524  2C 04 00 02 */	cmpwi r4, 2
/* 8044DF68 00417528  41 82 00 10 */	beq .L_8044DF78
/* 8044DF6C 0041752C  2C 04 00 03 */	cmpwi r4, 3
/* 8044DF70 00417530  41 82 00 08 */	beq .L_8044DF78
/* 8044DF74 00417534  38 00 00 00 */	li r0, 0
.L_8044DF78:
/* 8044DF78 00417538  2C 00 00 00 */	cmpwi r0, 0
/* 8044DF7C 0041753C  4D 82 00 20 */	beqlr 
/* 8044DF80 00417540  38 60 00 01 */	li r3, 1
/* 8044DF84 00417544  4E 80 00 20 */	blr 
.endfn func_8044DEE0__12CDeviceClockFv

.fn getTimeNow__12CDeviceClockFv, global
/* 8044DF88 00417548  4B F0 E9 D8 */	b OSGetTime
.endfn getTimeNow__12CDeviceClockFv

.fn func_8044DF8C__12CDeviceClockFv, global
/* 8044DF8C 0041754C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044DF90 00417550  7C 08 02 A6 */	mflr r0
/* 8044DF94 00417554  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044DF98 00417558  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044DF9C 0041755C  4B F0 E9 C5 */	bl OSGetTime
/* 8044DFA0 00417560  80 AD BD B8 */	lwz r5, instance__12CDeviceClock@sda21(r13)
/* 8044DFA4 00417564  90 85 02 04 */	stw r4, 0x204(r5)
/* 8044DFA8 00417568  90 65 02 00 */	stw r3, 0x200(r5)
/* 8044DFAC 0041756C  80 65 01 D0 */	lwz r3, 0x1d0(r5)
/* 8044DFB0 00417570  83 E3 00 00 */	lwz r31, 0(r3)
/* 8044DFB4 00417574  48 00 00 1C */	b .L_8044DFD0
.L_8044DFB8:
/* 8044DFB8 00417578  80 7F 00 08 */	lwz r3, 8(r31)
/* 8044DFBC 0041757C  81 83 00 00 */	lwz r12, 0(r3)
/* 8044DFC0 00417580  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8044DFC4 00417584  7D 89 03 A6 */	mtctr r12
/* 8044DFC8 00417588  4E 80 04 21 */	bctrl 
/* 8044DFCC 0041758C  83 FF 00 00 */	lwz r31, 0(r31)
.L_8044DFD0:
/* 8044DFD0 00417590  80 6D BD B8 */	lwz r3, instance__12CDeviceClock@sda21(r13)
/* 8044DFD4 00417594  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 8044DFD8 00417598  7C 1F 00 40 */	cmplw r31, r0
/* 8044DFDC 0041759C  40 82 FF DC */	bne .L_8044DFB8
/* 8044DFE0 004175A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044DFE4 004175A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8044DFE8 004175A8  7C 08 03 A6 */	mtlr r0
/* 8044DFEC 004175AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8044DFF0 004175B0  4E 80 00 20 */	blr 
.endfn func_8044DF8C__12CDeviceClockFv

.fn func_8044DFF4__12CDeviceClockFv, global
/* 8044DFF4 004175B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044DFF8 004175B8  7C 08 02 A6 */	mflr r0
/* 8044DFFC 004175BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044E000 004175C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044E004 004175C4  4B F0 E9 5D */	bl OSGetTime
/* 8044E008 004175C8  80 CD BD B8 */	lwz r6, instance__12CDeviceClock@sda21(r13)
/* 8044E00C 004175CC  80 06 02 04 */	lwz r0, 0x204(r6)
/* 8044E010 004175D0  80 A6 02 00 */	lwz r5, 0x200(r6)
/* 8044E014 004175D4  7C 00 20 10 */	subfc r0, r0, r4
/* 8044E018 004175D8  90 06 02 0C */	stw r0, 0x20c(r6)
/* 8044E01C 004175DC  7C 05 19 10 */	subfe r0, r5, r3
/* 8044E020 004175E0  90 06 02 08 */	stw r0, 0x208(r6)
/* 8044E024 004175E4  80 66 01 D0 */	lwz r3, 0x1d0(r6)
/* 8044E028 004175E8  83 E3 00 00 */	lwz r31, 0(r3)
/* 8044E02C 004175EC  48 00 00 1C */	b .L_8044E048
.L_8044E030:
/* 8044E030 004175F0  80 7F 00 08 */	lwz r3, 8(r31)
/* 8044E034 004175F4  81 83 00 00 */	lwz r12, 0(r3)
/* 8044E038 004175F8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8044E03C 004175FC  7D 89 03 A6 */	mtctr r12
/* 8044E040 00417600  4E 80 04 21 */	bctrl 
/* 8044E044 00417604  83 FF 00 00 */	lwz r31, 0(r31)
.L_8044E048:
/* 8044E048 00417608  80 6D BD B8 */	lwz r3, instance__12CDeviceClock@sda21(r13)
/* 8044E04C 0041760C  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 8044E050 00417610  7C 1F 00 40 */	cmplw r31, r0
/* 8044E054 00417614  40 82 FF DC */	bne .L_8044E030
/* 8044E058 00417618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044E05C 0041761C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8044E060 00417620  7C 08 03 A6 */	mtlr r0
/* 8044E064 00417624  38 21 00 10 */	addi r1, r1, 0x10
/* 8044E068 00417628  4E 80 00 20 */	blr 
.endfn func_8044DFF4__12CDeviceClockFv

.fn wkUpdate__12CDeviceClockFv, global
/* 8044E06C 0041762C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044E070 00417630  7C 08 02 A6 */	mflr r0
/* 8044E074 00417634  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044E078 00417638  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044E07C 0041763C  7C 7F 1B 78 */	mr r31, r3
/* 8044E080 00417640  4B F0 E8 E1 */	bl OSGetTime
/* 8044E084 00417644  90 9F 01 FC */	stw r4, 0x1fc(r31)
/* 8044E088 00417648  38 BF 02 10 */	addi r5, r31, 0x210
/* 8044E08C 0041764C  90 7F 01 F8 */	stw r3, 0x1f8(r31)
/* 8044E090 00417650  4B F0 E9 D1 */	bl OSTicksToCalendarTime
/* 8044E094 00417654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044E098 00417658  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8044E09C 0041765C  7C 08 03 A6 */	mtlr r0
/* 8044E0A0 00417660  38 21 00 10 */	addi r1, r1, 0x10
/* 8044E0A4 00417664  4E 80 00 20 */	blr 
.endfn wkUpdate__12CDeviceClockFv

.fn wkStartup__12CDeviceClockFv, global
/* 8044E0A8 00417668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044E0AC 0041766C  7C 08 02 A6 */	mflr r0
/* 8044E0B0 00417670  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044E0B4 00417674  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044E0B8 00417678  7C 7F 1B 78 */	mr r31, r3
/* 8044E0BC 0041767C  4B FF 94 DD */	bl func_80447598__Fv
/* 8044E0C0 00417680  7F E3 FB 78 */	mr r3, r31
/* 8044E0C4 00417684  4B FE A9 35 */	bl wkStartup__11CWorkThreadFv
/* 8044E0C8 00417688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044E0CC 0041768C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8044E0D0 00417690  7C 08 03 A6 */	mtlr r0
/* 8044E0D4 00417694  38 21 00 10 */	addi r1, r1, 0x10
/* 8044E0D8 00417698  4E 80 00 20 */	blr 
.endfn wkStartup__12CDeviceClockFv

.fn wkShutdown__12CDeviceClockFv, global
/* 8044E0DC 0041769C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044E0E0 004176A0  7C 08 02 A6 */	mflr r0
/* 8044E0E4 004176A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044E0E8 004176A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044E0EC 004176AC  7C 7F 1B 78 */	mr r31, r3
/* 8044E0F0 004176B0  80 83 00 60 */	lwz r4, 0x60(r3)
/* 8044E0F4 004176B4  80 04 00 00 */	lwz r0, 0(r4)
/* 8044E0F8 004176B8  7C 00 20 40 */	cmplw r0, r4
/* 8044E0FC 004176BC  40 82 00 34 */	bne .L_8044E130
/* 8044E100 004176C0  4B FF 9B 21 */	bl getInstance__9CDeviceSCFv
/* 8044E104 004176C4  2C 03 00 00 */	cmpwi r3, 0
/* 8044E108 004176C8  40 82 00 28 */	bne .L_8044E130
/* 8044E10C 004176CC  4B FF 63 C9 */	bl getInstance__11CWorkSystemFv
/* 8044E110 004176D0  2C 03 00 00 */	cmpwi r3, 0
/* 8044E114 004176D4  40 82 00 1C */	bne .L_8044E130
/* 8044E118 004176D8  48 00 B2 D9 */	bl getInstance__4CLibFv
/* 8044E11C 004176DC  2C 03 00 00 */	cmpwi r3, 0
/* 8044E120 004176E0  40 82 00 10 */	bne .L_8044E130
/* 8044E124 004176E4  7F E3 FB 78 */	mr r3, r31
/* 8044E128 004176E8  4B FE A8 FD */	bl wkShutdown__11CWorkThreadFv
/* 8044E12C 004176EC  48 00 00 08 */	b .L_8044E134
.L_8044E130:
/* 8044E130 004176F0  38 60 00 00 */	li r3, 0
.L_8044E134:
/* 8044E134 004176F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044E138 004176F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8044E13C 004176FC  7C 08 03 A6 */	mtlr r0
/* 8044E140 00417700  38 21 00 10 */	addi r1, r1, 0x10
/* 8044E144 00417704  4E 80 00 20 */	blr 
.endfn wkShutdown__12CDeviceClockFv

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CDeviceClock_typestr, global
	.asciz "CDeviceClock"
	.balign 4
.endobj CDeviceClock_typestr

.obj reslist_IDeviceClockFrame_typestr, global
	.asciz "reslist<IDeviceClockFrame *>"
	.balign 4
.endobj reslist_IDeviceClockFrame_typestr

.obj _reslist_base_IDeviceClockFrame_typestr, global
	.asciz "_reslist_base<IDeviceClockFrame *>"
	.balign 4
	.4byte 0
.endobj _reslist_base_IDeviceClockFrame_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__12CDeviceClock, global
	.4byte __RTTI__12CDeviceClock
	.4byte 0
	.4byte __dt__12CDeviceClockFv
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
	.4byte wkUpdate__12CDeviceClockFv
	.4byte WorkThreadEvent2__11CWorkThreadFv
	.4byte WorkThreadEvent3__11CWorkThreadFv
	.4byte wkStartup__12CDeviceClockFv
	.4byte wkShutdown__12CDeviceClockFv
	.4byte WorkThreadEvent6__11CWorkThreadFv
.endobj __vt__12CDeviceClock

.obj CDeviceClock_hierarchy, global
	.4byte __RTTI__10IWorkEvent
	.4byte 0
	.4byte __RTTI__11CWorkThread
	.4byte 0
	.4byte __RTTI__11CDeviceBase
	.4byte 0
	.4byte 0
.endobj CDeviceClock_hierarchy


.obj "__vt__29reslist<P17IDeviceClockFrame>", global
	.4byte "__RTTI__29reslist<P17IDeviceClockFrame>"
	.4byte 0
	.4byte "__dt__29reslist<P17IDeviceClockFrame>Fv"
.endobj "__vt__29reslist<P17IDeviceClockFrame>"

.obj reslist_IDeviceClockFrame_hierarchy, global
	.4byte "__RTTI__35_reslist_base<P17IDeviceClockFrame>"
	.4byte 0
	.4byte 0
.endobj reslist_IDeviceClockFrame_hierarchy


.obj "__vt__35_reslist_base<P17IDeviceClockFrame>", global
	.4byte "__RTTI__35_reslist_base<P17IDeviceClockFrame>"
	.4byte 0
	.4byte "__dt__35_reslist_base<P17IDeviceClockFrame>Fv"
.endobj "__vt__35_reslist_base<P17IDeviceClockFrame>"


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__12CDeviceClock, global
	.4byte CDeviceClock_typestr
	.4byte CDeviceClock_hierarchy
.endobj __RTTI__12CDeviceClock

.obj "__RTTI__29reslist<P17IDeviceClockFrame>", global
	.4byte reslist_IDeviceClockFrame_typestr
	.4byte reslist_IDeviceClockFrame_hierarchy
.endobj "__RTTI__29reslist<P17IDeviceClockFrame>"

.obj "__RTTI__35_reslist_base<P17IDeviceClockFrame>", global
	.4byte _reslist_base_IDeviceClockFrame_typestr
	.4byte 0
.endobj "__RTTI__35_reslist_base<P17IDeviceClockFrame>"

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj instance__12CDeviceClock, global
	.skip 0x8
.endobj instance__12CDeviceClock

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001CD08", local
.hidden "@etb_8001CD08"
	.4byte 0x10080000
	.4byte 0x000000A4
	.4byte 0x00080010
	.4byte 0x00000000
	.4byte 0x0780001E
	.4byte 0x000001CC
	.4byte "__dt__29reslist<P17IDeviceClockFrame>Fv"
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__11CDeviceBaseFv
.endobj "@etb_8001CD08"

.obj "@etb_8001CD30", local
.hidden "@etb_8001CD30"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001CD30"

.obj "@etb_8001CD38", local
.hidden "@etb_8001CD38"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001CD38"

.obj "@etb_8001CD40", local
.hidden "@etb_8001CD40"
	.4byte 0x18080000
	.4byte 0x000000B0
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8780001D
	.4byte 0x000001CC
	.4byte "__dt__29reslist<P17IDeviceClockFrame>Fv"
.endobj "@etb_8001CD40"

.obj "@etb_8001CD5C", local
.hidden "@etb_8001CD5C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001CD5C"

.obj "@etb_8001CD64", local
.hidden "@etb_8001CD64"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001CD64"

.obj "@etb_8001CD6C", local
.hidden "@etb_8001CD6C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001CD6C"

.obj "@etb_8001CD74", local
.hidden "@etb_8001CD74"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001CD74"

.obj "@etb_8001CD7C", local
.hidden "@etb_8001CD7C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001CD7C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800349A0", local
.hidden "@eti_800349A0"
	.4byte __ct__12CDeviceClockFPCcP11CWorkThread
	.4byte 0x00000168
	.4byte "@etb_8001CD08"
.endobj "@eti_800349A0"

.obj "@eti_800349AC", local
.hidden "@eti_800349AC"
	.4byte "__dt__35_reslist_base<P17IDeviceClockFrame>Fv"
	.4byte 0x000000B4
	.4byte "@etb_8001CD30"
.endobj "@eti_800349AC"

.obj "@eti_800349B8", local
.hidden "@eti_800349B8"
	.4byte "__dt__29reslist<P17IDeviceClockFrame>Fv"
	.4byte 0x000000B8
	.4byte "@etb_8001CD38"
.endobj "@eti_800349B8"

.obj "@eti_800349C4", local
.hidden "@eti_800349C4"
	.4byte __dt__12CDeviceClockFv
	.4byte 0x000000E0
	.4byte "@etb_8001CD40"
.endobj "@eti_800349C4"

.obj "@eti_800349D0", local
.hidden "@eti_800349D0"
	.4byte func_8044DF8C__12CDeviceClockFv
	.4byte 0x00000068
	.4byte "@etb_8001CD5C"
.endobj "@eti_800349D0"

.obj "@eti_800349DC", local
.hidden "@eti_800349DC"
	.4byte func_8044DFF4__12CDeviceClockFv
	.4byte 0x00000078
	.4byte "@etb_8001CD64"
.endobj "@eti_800349DC"

.obj "@eti_800349E8", local
.hidden "@eti_800349E8"
	.4byte wkUpdate__12CDeviceClockFv
	.4byte 0x0000003C
	.4byte "@etb_8001CD6C"
.endobj "@eti_800349E8"

.obj "@eti_800349F4", local
.hidden "@eti_800349F4"
	.4byte wkStartup__12CDeviceClockFv
	.4byte 0x00000034
	.4byte "@etb_8001CD74"
.endobj "@eti_800349F4"

.obj "@eti_80034A00", local
.hidden "@eti_80034A00"
	.4byte wkShutdown__12CDeviceClockFv
	.4byte 0x0000006C
	.4byte "@etb_8001CD7C"
.endobj "@eti_80034A00"
