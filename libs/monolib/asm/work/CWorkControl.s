.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CWorkControl, global
/* 80443718 0040CCD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044371C 0040CCDC  7C 08 02 A6 */	mflr r0
/* 80443720 0040CCE0  38 C0 00 20 */	li r6, 0x20
/* 80443724 0040CCE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80443728 0040CCE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044372C 0040CCEC  7C 7F 1B 78 */	mr r31, r3
/* 80443730 0040CCF0  4B FF 3E 8D */	bl __ct__11CWorkThreadFPCcP11CWorkThreadi
/* 80443734 0040CCF4  3C 60 80 57 */	lis r3, __vt__12CWorkControl@ha
/* 80443738 0040CCF8  38 00 00 01 */	li r0, 1
/* 8044373C 0040CCFC  38 63 F0 40 */	addi r3, r3, __vt__12CWorkControl@l
/* 80443740 0040CD00  90 7F 00 00 */	stw r3, 0(r31)
/* 80443744 0040CD04  7F E3 FB 78 */	mr r3, r31
/* 80443748 0040CD08  93 ED BD 38 */	stw r31, lbl_80667EB8@sda21(r13)
/* 8044374C 0040CD0C  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80443750 0040CD10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80443754 0040CD14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80443758 0040CD18  7C 08 03 A6 */	mtlr r0
/* 8044375C 0040CD1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80443760 0040CD20  4E 80 00 20 */	blr 
.endfn __ct__CWorkControl

.fn __dt__12CWorkControlFv, global
/* 80443764 0040CD24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80443768 0040CD28  7C 08 02 A6 */	mflr r0
/* 8044376C 0040CD2C  2C 03 00 00 */	cmpwi r3, 0
/* 80443770 0040CD30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80443774 0040CD34  BF C1 00 08 */	stmw r30, 8(r1)
/* 80443778 0040CD38  7C 7E 1B 78 */	mr r30, r3
/* 8044377C 0040CD3C  7C 9F 23 78 */	mr r31, r4
/* 80443780 0040CD40  41 82 00 24 */	beq .L_804437A4
/* 80443784 0040CD44  38 00 00 00 */	li r0, 0
/* 80443788 0040CD48  90 0D BD 38 */	stw r0, lbl_80667EB8@sda21(r13)
/* 8044378C 0040CD4C  38 80 00 00 */	li r4, 0
/* 80443790 0040CD50  4B FF 43 39 */	bl __dt__11CWorkThreadFv
/* 80443794 0040CD54  2C 1F 00 00 */	cmpwi r31, 0
/* 80443798 0040CD58  40 81 00 0C */	ble .L_804437A4
/* 8044379C 0040CD5C  7F C3 F3 78 */	mr r3, r30
/* 804437A0 0040CD60  4B FF 14 8D */	bl __dl__FPv
.L_804437A4:
/* 804437A4 0040CD64  7F C3 F3 78 */	mr r3, r30
/* 804437A8 0040CD68  BB C1 00 08 */	lmw r30, 8(r1)
/* 804437AC 0040CD6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804437B0 0040CD70  7C 08 03 A6 */	mtlr r0
/* 804437B4 0040CD74  38 21 00 10 */	addi r1, r1, 0x10
/* 804437B8 0040CD78  4E 80 00 20 */	blr 
.endfn __dt__12CWorkControlFv

.fn func_804437BC__Fv, global
/* 804437BC 0040CD7C  80 6D BD 38 */	lwz r3, lbl_80667EB8@sda21(r13)
/* 804437C0 0040CD80  4E 80 00 20 */	blr 
.endfn func_804437BC__Fv

.fn func_804437C4, global
/* 804437C4 0040CD84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804437C8 0040CD88  7C 08 02 A6 */	mflr r0
/* 804437CC 0040CD8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804437D0 0040CD90  BF C1 00 08 */	stmw r30, 8(r1)
/* 804437D4 0040CD94  48 00 02 9D */	bl func_80443A70
/* 804437D8 0040CD98  2C 03 00 00 */	cmpwi r3, 0
/* 804437DC 0040CD9C  41 82 00 0C */	beq .L_804437E8
/* 804437E0 0040CDA0  38 60 00 01 */	li r3, 1
/* 804437E4 0040CDA4  48 00 00 48 */	b .L_8044382C
.L_804437E8:
/* 804437E8 0040CDA8  3C 60 80 52 */	lis r3, CWorkControl_strpool@ha
/* 804437EC 0040CDAC  83 CD BD 38 */	lwz r30, lbl_80667EB8@sda21(r13)
/* 804437F0 0040CDB0  38 63 5F A0 */	addi r3, r3, CWorkControl_strpool@l
/* 804437F4 0040CDB4  3B E3 00 10 */	addi r31, r3, 0x10
/* 804437F8 0040CDB8  4B FF 3D BD */	bl getHeapIndex__16WorkThreadSystemFv
/* 804437FC 0040CDBC  7C 64 1B 78 */	mr r4, r3
/* 80443800 0040CDC0  38 60 01 C8 */	li r3, 0x1c8
/* 80443804 0040CDC4  4B FF 12 59 */	bl heap_malloc__3mtlFUli
/* 80443808 0040CDC8  2C 03 00 00 */	cmpwi r3, 0
/* 8044380C 0040CDCC  41 82 00 10 */	beq .L_8044381C
/* 80443810 0040CDD0  7F E4 FB 78 */	mr r4, r31
/* 80443814 0040CDD4  7F C5 F3 78 */	mr r5, r30
/* 80443818 0040CDD8  48 00 01 B5 */	bl __ct__CWorkFlowSetup
.L_8044381C:
/* 8044381C 0040CDDC  7F C4 F3 78 */	mr r4, r30
/* 80443820 0040CDE0  38 A0 00 00 */	li r5, 0
/* 80443824 0040CDE4  4B FF 53 B5 */	bl func_80438BD8__11CWorkThreadFP11CWorkThreadUl
/* 80443828 0040CDE8  38 60 00 01 */	li r3, 1
.L_8044382C:
/* 8044382C 0040CDEC  BB C1 00 08 */	lmw r30, 8(r1)
/* 80443830 0040CDF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80443834 0040CDF4  7C 08 03 A6 */	mtlr r0
/* 80443838 0040CDF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8044383C 0040CDFC  4E 80 00 20 */	blr 
.endfn func_804437C4

.fn func_80443840, global
/* 80443840 0040CE00  7C 60 1B 79 */	or. r0, r3, r3
/* 80443844 0040CE04  80 6D BD 38 */	lwz r3, lbl_80667EB8@sda21(r13)
/* 80443848 0040CE08  38 80 00 06 */	li r4, 6
/* 8044384C 0040CE0C  41 82 00 08 */	beq .L_80443854
/* 80443850 0040CE10  38 80 00 05 */	li r4, 5
.L_80443854:
/* 80443854 0040CE14  4B FF 49 18 */	b func_8043816C
.endfn func_80443840

.fn func_80443858, global
/* 80443858 0040CE18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044385C 0040CE1C  7C 08 02 A6 */	mflr r0
/* 80443860 0040CE20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80443864 0040CE24  48 00 02 8D */	bl func_80443AF0
/* 80443868 0040CE28  2C 03 00 00 */	cmpwi r3, 0
/* 8044386C 0040CE2C  41 82 00 0C */	beq .L_80443878
/* 80443870 0040CE30  38 60 00 01 */	li r3, 1
/* 80443874 0040CE34  48 00 00 4C */	b .L_804438C0
.L_80443878:
/* 80443878 0040CE38  48 00 02 71 */	bl func_80443AE8
/* 8044387C 0040CE3C  2C 03 00 00 */	cmpwi r3, 0
/* 80443880 0040CE40  41 82 00 0C */	beq .L_8044388C
/* 80443884 0040CE44  38 60 00 01 */	li r3, 1
/* 80443888 0040CE48  48 00 00 38 */	b .L_804438C0
.L_8044388C:
/* 8044388C 0040CE4C  48 00 02 6D */	bl func_80443AF8
/* 80443890 0040CE50  2C 03 00 00 */	cmpwi r3, 0
/* 80443894 0040CE54  41 82 00 0C */	beq .L_804438A0
/* 80443898 0040CE58  38 60 00 01 */	li r3, 1
/* 8044389C 0040CE5C  48 00 00 24 */	b .L_804438C0
.L_804438A0:
/* 804438A0 0040CE60  48 00 02 61 */	bl func_80443B00
/* 804438A4 0040CE64  2C 03 00 00 */	cmpwi r3, 0
/* 804438A8 0040CE68  41 82 00 0C */	beq .L_804438B4
/* 804438AC 0040CE6C  38 60 00 01 */	li r3, 1
/* 804438B0 0040CE70  48 00 00 10 */	b .L_804438C0
.L_804438B4:
/* 804438B4 0040CE74  48 00 01 BD */	bl func_80443A70
/* 804438B8 0040CE78  30 03 FF FF */	addic r0, r3, -1
/* 804438BC 0040CE7C  7C 60 19 10 */	subfe r3, r0, r3
.L_804438C0:
/* 804438C0 0040CE80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804438C4 0040CE84  7C 08 03 A6 */	mtlr r0
/* 804438C8 0040CE88  38 21 00 10 */	addi r1, r1, 0x10
/* 804438CC 0040CE8C  4E 80 00 20 */	blr 
.endfn func_80443858

.fn CWorkControl_wkStartup, global
/* 804438D0 0040CE90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804438D4 0040CE94  7C 08 02 A6 */	mflr r0
/* 804438D8 0040CE98  90 01 00 14 */	stw r0, 0x14(r1)
/* 804438DC 0040CE9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804438E0 0040CEA0  7C 7F 1B 78 */	mr r31, r3
/* 804438E4 0040CEA4  4B FF FE E1 */	bl func_804437C4
/* 804438E8 0040CEA8  7F E3 FB 78 */	mr r3, r31
/* 804438EC 0040CEAC  4B FF 51 0D */	bl wkStartup__11CWorkThreadFv
/* 804438F0 0040CEB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804438F4 0040CEB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804438F8 0040CEB8  7C 08 03 A6 */	mtlr r0
/* 804438FC 0040CEBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80443900 0040CEC0  4E 80 00 20 */	blr 
.endfn CWorkControl_wkStartup

.fn CWorkControl_wkShutdown, global
/* 80443904 0040CEC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80443908 0040CEC8  7C 08 02 A6 */	mflr r0
/* 8044390C 0040CECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80443910 0040CED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80443914 0040CED4  7C 7F 1B 78 */	mr r31, r3
/* 80443918 0040CED8  80 83 00 60 */	lwz r4, 0x60(r3)
/* 8044391C 0040CEDC  80 04 00 00 */	lwz r0, 0(r4)
/* 80443920 0040CEE0  7C 00 20 40 */	cmplw r0, r4
/* 80443924 0040CEE4  40 82 00 1C */	bne .L_80443940
/* 80443928 0040CEE8  48 00 97 29 */	bl getInstance__7CDeviceFv
/* 8044392C 0040CEEC  2C 03 00 00 */	cmpwi r3, 0
/* 80443930 0040CEF0  40 82 00 10 */	bne .L_80443940
/* 80443934 0040CEF4  7F E3 FB 78 */	mr r3, r31
/* 80443938 0040CEF8  4B FF 50 ED */	bl wkShutdown__11CWorkThreadFv
/* 8044393C 0040CEFC  48 00 00 08 */	b .L_80443944
.L_80443940:
/* 80443940 0040CF00  38 60 00 00 */	li r3, 0
.L_80443944:
/* 80443944 0040CF04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80443948 0040CF08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8044394C 0040CF0C  7C 08 03 A6 */	mtlr r0
/* 80443950 0040CF10  38 21 00 10 */	addi r1, r1, 0x10
/* 80443954 0040CF14  4E 80 00 20 */	blr 
.endfn CWorkControl_wkShutdown

.fn CWorkControl_create, global
/* 80443958 0040CF18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8044395C 0040CF1C  7C 08 02 A6 */	mflr r0
/* 80443960 0040CF20  3C 80 80 52 */	lis r4, CWorkControl_strpool@ha
/* 80443964 0040CF24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80443968 0040CF28  38 84 5F A0 */	addi r4, r4, CWorkControl_strpool@l
/* 8044396C 0040CF2C  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 80443970 0040CF30  7C 7D 1B 78 */	mr r29, r3
/* 80443974 0040CF34  3B E4 00 6C */	addi r31, r4, 0x6c
/* 80443978 0040CF38  4B FF 3C 3D */	bl getHeapIndex__16WorkThreadSystemFv
/* 8044397C 0040CF3C  7C 64 1B 78 */	mr r4, r3
/* 80443980 0040CF40  38 60 01 C8 */	li r3, 0x1c8
/* 80443984 0040CF44  4B FF 10 D9 */	bl heap_malloc__3mtlFUli
/* 80443988 0040CF48  2C 03 00 00 */	cmpwi r3, 0
/* 8044398C 0040CF4C  7C 7E 1B 78 */	mr r30, r3
/* 80443990 0040CF50  41 82 00 14 */	beq .L_804439A4
/* 80443994 0040CF54  7F E4 FB 78 */	mr r4, r31
/* 80443998 0040CF58  7F A5 EB 78 */	mr r5, r29
/* 8044399C 0040CF5C  4B FF FD 7D */	bl __ct__CWorkControl
/* 804439A0 0040CF60  7C 7E 1B 78 */	mr r30, r3
.L_804439A4:
/* 804439A4 0040CF64  7F C3 F3 78 */	mr r3, r30
/* 804439A8 0040CF68  7F A4 EB 78 */	mr r4, r29
/* 804439AC 0040CF6C  38 A0 00 00 */	li r5, 0
/* 804439B0 0040CF70  4B FF 52 29 */	bl func_80438BD8__11CWorkThreadFP11CWorkThreadUl
/* 804439B4 0040CF74  7F C3 F3 78 */	mr r3, r30
/* 804439B8 0040CF78  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 804439BC 0040CF7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804439C0 0040CF80  7C 08 03 A6 */	mtlr r0
/* 804439C4 0040CF84  38 21 00 20 */	addi r1, r1, 0x20
/* 804439C8 0040CF88  4E 80 00 20 */	blr 
.endfn CWorkControl_create

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CWorkControl_typestr, global
	.asciz "CWorkControl"
	.balign 4
.endobj CWorkControl_typestr

.obj CWorkControl_strpool, global
	.asciz "CWorkFlowTvMode"
	.asciz "CWorkFlowSetup"
	.asciz "CWorkFlowShutdownAll"
	.asciz "CWorkFlowWiiMenu"
	.asciz "CWorkFlowWiiReset"
	.asciz "CWorkFlowWiiPowerOff"
	.asciz "CWorkControl"
	.balign 4
	.4byte 0
.endobj CWorkControl_strpool


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__12CWorkControl, global
	.4byte __RTTI__12CWorkControl
	.4byte 0
	.4byte __dt__12CWorkControlFv
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
	.4byte CWorkControl_wkStartup
	.4byte CWorkControl_wkShutdown
	.4byte WorkThreadEvent6__11CWorkThreadFv
.endobj __vt__12CWorkControl

.obj CWorkControl_hierarchy, global
	.4byte __RTTI__10IWorkEvent
	.4byte 0
	.4byte __RTTI__11CWorkThread
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CWorkControl_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__12CWorkControl, global
	.4byte CWorkControl_typestr
	.4byte CWorkControl_hierarchy
.endobj __RTTI__12CWorkControl


.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80667EB8, global
	.skip 0x8
.endobj lbl_80667EB8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001C724", local
.hidden "@etb_8001C724"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C724"

.obj "@etb_8001C72C", local
.hidden "@etb_8001C72C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001C72C"

.obj "@etb_8001C734", local
.hidden "@etb_8001C734"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001C734"

.obj "@etb_8001C73C", local
.hidden "@etb_8001C73C"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001C73C"

.obj "@etb_8001C744", local
.hidden "@etb_8001C744"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C744"

.obj "@etb_8001C74C", local
.hidden "@etb_8001C74C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C74C"

.obj "@etb_8001C754", local
.hidden "@etb_8001C754"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001C754"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80034304", local
.hidden "@eti_80034304"
	.4byte __ct__CWorkControl
	.4byte 0x0000004C
	.4byte "@etb_8001C724"
.endobj "@eti_80034304"

.obj "@eti_80034310", local
.hidden "@eti_80034310"
	.4byte __dt__12CWorkControlFv
	.4byte 0x00000058
	.4byte "@etb_8001C72C"
.endobj "@eti_80034310"

.obj "@eti_8003431C", local
.hidden "@eti_8003431C"
	.4byte func_804437C4
	.4byte 0x0000007C
	.4byte "@etb_8001C734"
.endobj "@eti_8003431C"

.obj "@eti_80034328", local
.hidden "@eti_80034328"
	.4byte func_80443858
	.4byte 0x00000078
	.4byte "@etb_8001C73C"
.endobj "@eti_80034328"

.obj "@eti_80034334", local
.hidden "@eti_80034334"
	.4byte CWorkControl_wkStartup
	.4byte 0x00000034
	.4byte "@etb_8001C744"
.endobj "@eti_80034334"

.obj "@eti_80034340", local
.hidden "@eti_80034340"
	.4byte CWorkControl_wkShutdown
	.4byte 0x00000054
	.4byte "@etb_8001C74C"
.endobj "@eti_80034340"

.obj "@eti_8003434C", local
.hidden "@eti_8003434C"
	.4byte CWorkControl_create
	.4byte 0x00000074
	.4byte "@etb_8001C754"
.endobj "@eti_8003434C"
