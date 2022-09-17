.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global __DSPHandler
__DSPHandler:
/* 80309500 002D2AC0  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 80309504 002D2AC4  7C 08 02 A6 */	mflr r0
/* 80309508 002D2AC8  3C C0 CC 00 */	lis r6, 0xCC00500A@ha
/* 8030950C 002D2ACC  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 80309510 002D2AD0  38 00 FF D7 */	li r0, -41
/* 80309514 002D2AD4  38 61 00 08 */	addi r3, r1, 8
/* 80309518 002D2AD8  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8030951C 002D2ADC  7C 9F 23 78 */	mr r31, r4
/* 80309520 002D2AE0  A0 A6 50 0A */	lhz r5, 0xCC00500A@l(r6)
/* 80309524 002D2AE4  7C A0 00 38 */	and r0, r5, r0
/* 80309528 002D2AE8  60 00 00 80 */	ori r0, r0, 0x80
/* 8030952C 002D2AEC  B0 06 50 0A */	sth r0, 0x500a(r6)
/* 80309530 002D2AF0  48 04 B5 91 */	bl OSClearContext
/* 80309534 002D2AF4  38 61 00 08 */	addi r3, r1, 8
/* 80309538 002D2AF8  48 04 B3 49 */	bl OSSetCurrentContext
lbl_8030953C:
/* 8030953C 002D2AFC  4B FF FC E5 */	bl DSPCheckMailFromDSP
/* 80309540 002D2B00  2C 03 00 00 */	cmpwi r3, 0
/* 80309544 002D2B04  41 82 FF F8 */	beq lbl_8030953C
/* 80309548 002D2B08  4B FF FC E9 */	bl DSPReadMailFromDSP
/* 8030954C 002D2B0C  80 8D B6 24 */	lwz r4, lbl_806677A4@sda21(r13)
/* 80309550 002D2B10  80 04 00 08 */	lwz r0, 8(r4)
/* 80309554 002D2B14  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80309558 002D2B18  41 82 00 18 */	beq lbl_80309570
/* 8030955C 002D2B1C  3C 03 23 2F */	addis r0, r3, 0x232f
/* 80309560 002D2B20  28 00 00 02 */	cmplwi r0, 2
/* 80309564 002D2B24  40 82 00 0C */	bne lbl_80309570
/* 80309568 002D2B28  3C 60 DC D1 */	lis r3, 0xDCD10003@ha
/* 8030956C 002D2B2C  38 63 00 03 */	addi r3, r3, 0xDCD10003@l
lbl_80309570:
/* 80309570 002D2B30  3C 03 23 2F */	addis r0, r3, 0x232f
/* 80309574 002D2B34  28 00 00 00 */	cmplwi r0, 0
/* 80309578 002D2B38  41 82 00 28 */	beq lbl_803095A0
/* 8030957C 002D2B3C  28 00 00 01 */	cmplwi r0, 1
/* 80309580 002D2B40  41 82 00 44 */	beq lbl_803095C4
/* 80309584 002D2B44  28 00 00 02 */	cmplwi r0, 2
/* 80309588 002D2B48  41 82 00 60 */	beq lbl_803095E8
/* 8030958C 002D2B4C  28 00 00 03 */	cmplwi r0, 3
/* 80309590 002D2B50  41 82 01 C0 */	beq lbl_80309750
/* 80309594 002D2B54  28 00 00 04 */	cmplwi r0, 4
/* 80309598 002D2B58  41 82 03 58 */	beq lbl_803098F0
/* 8030959C 002D2B5C  48 00 03 6C */	b lbl_80309908
lbl_803095A0:
/* 803095A0 002D2B60  38 00 00 01 */	li r0, 1
/* 803095A4 002D2B64  90 04 00 00 */	stw r0, 0(r4)
/* 803095A8 002D2B68  80 6D B6 24 */	lwz r3, lbl_806677A4@sda21(r13)
/* 803095AC 002D2B6C  81 83 00 28 */	lwz r12, 0x28(r3)
/* 803095B0 002D2B70  2C 0C 00 00 */	cmpwi r12, 0
/* 803095B4 002D2B74  41 82 03 54 */	beq lbl_80309908
/* 803095B8 002D2B78  7D 89 03 A6 */	mtctr r12
/* 803095BC 002D2B7C  4E 80 04 21 */	bctrl 
/* 803095C0 002D2B80  48 00 03 48 */	b lbl_80309908
lbl_803095C4:
/* 803095C4 002D2B84  38 00 00 01 */	li r0, 1
/* 803095C8 002D2B88  90 04 00 00 */	stw r0, 0(r4)
/* 803095CC 002D2B8C  80 6D B6 24 */	lwz r3, lbl_806677A4@sda21(r13)
/* 803095D0 002D2B90  81 83 00 2C */	lwz r12, 0x2c(r3)
/* 803095D4 002D2B94  2C 0C 00 00 */	cmpwi r12, 0
/* 803095D8 002D2B98  41 82 03 30 */	beq lbl_80309908
/* 803095DC 002D2B9C  7D 89 03 A6 */	mtctr r12
/* 803095E0 002D2BA0  4E 80 04 21 */	bctrl 
/* 803095E4 002D2BA4  48 00 03 24 */	b lbl_80309908
lbl_803095E8:
/* 803095E8 002D2BA8  80 0D B6 10 */	lwz r0, lbl_80667790@sda21(r13)
/* 803095EC 002D2BAC  2C 00 00 00 */	cmpwi r0, 0
/* 803095F0 002D2BB0  41 82 00 98 */	beq lbl_80309688
/* 803095F4 002D2BB4  80 0D B6 14 */	lwz r0, lbl_80667794@sda21(r13)
/* 803095F8 002D2BB8  7C 04 00 40 */	cmplw r4, r0
/* 803095FC 002D2BBC  40 82 00 44 */	bne lbl_80309640
/* 80309600 002D2BC0  3C 60 CD D1 */	lis r3, 0xCDD10003@ha
/* 80309604 002D2BC4  38 63 00 03 */	addi r3, r3, 0xCDD10003@l
/* 80309608 002D2BC8  4B FF FC 49 */	bl DSPSendMailToDSP
lbl_8030960C:
/* 8030960C 002D2BCC  4B FF FC 05 */	bl DSPCheckMailToDSP
/* 80309610 002D2BD0  2C 03 00 00 */	cmpwi r3, 0
/* 80309614 002D2BD4  40 82 FF F8 */	bne lbl_8030960C
/* 80309618 002D2BD8  38 00 00 00 */	li r0, 0
/* 8030961C 002D2BDC  90 0D B6 14 */	stw r0, lbl_80667794@sda21(r13)
/* 80309620 002D2BE0  80 6D B6 24 */	lwz r3, lbl_806677A4@sda21(r13)
/* 80309624 002D2BE4  90 0D B6 10 */	stw r0, lbl_80667790@sda21(r13)
/* 80309628 002D2BE8  81 83 00 2C */	lwz r12, 0x2c(r3)
/* 8030962C 002D2BEC  2C 0C 00 00 */	cmpwi r12, 0
/* 80309630 002D2BF0  41 82 02 D8 */	beq lbl_80309908
/* 80309634 002D2BF4  7D 89 03 A6 */	mtctr r12
/* 80309638 002D2BF8  4E 80 04 21 */	bctrl 
/* 8030963C 002D2BFC  48 00 02 CC */	b lbl_80309908
lbl_80309640:
/* 80309640 002D2C00  3C 60 CD D1 */	lis r3, 0xCDD10001@ha
/* 80309644 002D2C04  38 63 00 01 */	addi r3, r3, 0xCDD10001@l
/* 80309648 002D2C08  4B FF FC 09 */	bl DSPSendMailToDSP
lbl_8030964C:
/* 8030964C 002D2C0C  4B FF FB C5 */	bl DSPCheckMailToDSP
/* 80309650 002D2C10  2C 03 00 00 */	cmpwi r3, 0
/* 80309654 002D2C14  40 82 FF F8 */	bne lbl_8030964C
/* 80309658 002D2C18  80 6D B6 24 */	lwz r3, lbl_806677A4@sda21(r13)
/* 8030965C 002D2C1C  80 8D B6 14 */	lwz r4, lbl_80667794@sda21(r13)
/* 80309660 002D2C20  48 00 02 D1 */	bl __DSP_exec_task
/* 80309664 002D2C24  80 6D B6 24 */	lwz r3, lbl_806677A4@sda21(r13)
/* 80309668 002D2C28  38 80 00 02 */	li r4, 2
/* 8030966C 002D2C2C  38 00 00 00 */	li r0, 0
/* 80309670 002D2C30  90 83 00 00 */	stw r4, 0(r3)
/* 80309674 002D2C34  80 6D B6 14 */	lwz r3, lbl_80667794@sda21(r13)
/* 80309678 002D2C38  90 6D B6 24 */	stw r3, lbl_806677A4@sda21(r13)
/* 8030967C 002D2C3C  90 0D B6 14 */	stw r0, lbl_80667794@sda21(r13)
/* 80309680 002D2C40  90 0D B6 10 */	stw r0, lbl_80667790@sda21(r13)
/* 80309684 002D2C44  48 00 02 84 */	b lbl_80309908
lbl_80309688:
/* 80309688 002D2C48  80 04 00 38 */	lwz r0, 0x38(r4)
/* 8030968C 002D2C4C  2C 00 00 00 */	cmpwi r0, 0
/* 80309690 002D2C50  40 82 00 80 */	bne lbl_80309710
/* 80309694 002D2C54  80 0D B6 20 */	lwz r0, lbl_806677A0@sda21(r13)
/* 80309698 002D2C58  7C 04 00 40 */	cmplw r4, r0
/* 8030969C 002D2C5C  40 82 00 38 */	bne lbl_803096D4
/* 803096A0 002D2C60  3C 60 CD D1 */	lis r3, 0xCDD10003@ha
/* 803096A4 002D2C64  38 63 00 03 */	addi r3, r3, 0xCDD10003@l
/* 803096A8 002D2C68  4B FF FB A9 */	bl DSPSendMailToDSP
lbl_803096AC:
/* 803096AC 002D2C6C  4B FF FB 65 */	bl DSPCheckMailToDSP
/* 803096B0 002D2C70  2C 03 00 00 */	cmpwi r3, 0
/* 803096B4 002D2C74  40 82 FF F8 */	bne lbl_803096AC
/* 803096B8 002D2C78  80 6D B6 24 */	lwz r3, lbl_806677A4@sda21(r13)
/* 803096BC 002D2C7C  81 83 00 2C */	lwz r12, 0x2c(r3)
/* 803096C0 002D2C80  2C 0C 00 00 */	cmpwi r12, 0
/* 803096C4 002D2C84  41 82 02 44 */	beq lbl_80309908
/* 803096C8 002D2C88  7D 89 03 A6 */	mtctr r12
/* 803096CC 002D2C8C  4E 80 04 21 */	bctrl 
/* 803096D0 002D2C90  48 00 02 38 */	b lbl_80309908
lbl_803096D4:
/* 803096D4 002D2C94  3C 60 CD D1 */	lis r3, 0xCDD10001@ha
/* 803096D8 002D2C98  38 63 00 01 */	addi r3, r3, 0xCDD10001@l
/* 803096DC 002D2C9C  4B FF FB 75 */	bl DSPSendMailToDSP
lbl_803096E0:
/* 803096E0 002D2CA0  4B FF FB 31 */	bl DSPCheckMailToDSP
/* 803096E4 002D2CA4  2C 03 00 00 */	cmpwi r3, 0
/* 803096E8 002D2CA8  40 82 FF F8 */	bne lbl_803096E0
/* 803096EC 002D2CAC  80 6D B6 24 */	lwz r3, lbl_806677A4@sda21(r13)
/* 803096F0 002D2CB0  80 8D B6 20 */	lwz r4, lbl_806677A0@sda21(r13)
/* 803096F4 002D2CB4  48 00 02 3D */	bl __DSP_exec_task
/* 803096F8 002D2CB8  80 6D B6 24 */	lwz r3, lbl_806677A4@sda21(r13)
/* 803096FC 002D2CBC  38 00 00 02 */	li r0, 2
/* 80309700 002D2CC0  90 03 00 00 */	stw r0, 0(r3)
/* 80309704 002D2CC4  80 0D B6 20 */	lwz r0, lbl_806677A0@sda21(r13)
/* 80309708 002D2CC8  90 0D B6 24 */	stw r0, lbl_806677A4@sda21(r13)
/* 8030970C 002D2CCC  48 00 01 FC */	b lbl_80309908
lbl_80309710:
/* 80309710 002D2CD0  3C 60 CD D1 */	lis r3, 0xCDD10001@ha
/* 80309714 002D2CD4  38 63 00 01 */	addi r3, r3, 0xCDD10001@l
/* 80309718 002D2CD8  4B FF FB 39 */	bl DSPSendMailToDSP
lbl_8030971C:
/* 8030971C 002D2CDC  4B FF FA F5 */	bl DSPCheckMailToDSP
/* 80309720 002D2CE0  2C 03 00 00 */	cmpwi r3, 0
/* 80309724 002D2CE4  40 82 FF F8 */	bne lbl_8030971C
/* 80309728 002D2CE8  80 6D B6 24 */	lwz r3, lbl_806677A4@sda21(r13)
/* 8030972C 002D2CEC  80 83 00 38 */	lwz r4, 0x38(r3)
/* 80309730 002D2CF0  48 00 02 01 */	bl __DSP_exec_task
/* 80309734 002D2CF4  80 6D B6 24 */	lwz r3, lbl_806677A4@sda21(r13)
/* 80309738 002D2CF8  38 00 00 02 */	li r0, 2
/* 8030973C 002D2CFC  90 03 00 00 */	stw r0, 0(r3)
/* 80309740 002D2D00  80 6D B6 24 */	lwz r3, lbl_806677A4@sda21(r13)
/* 80309744 002D2D04  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80309748 002D2D08  90 0D B6 24 */	stw r0, lbl_806677A4@sda21(r13)
/* 8030974C 002D2D0C  48 00 01 BC */	b lbl_80309908
lbl_80309750:
/* 80309750 002D2D10  80 0D B6 10 */	lwz r0, lbl_80667790@sda21(r13)
/* 80309754 002D2D14  2C 00 00 00 */	cmpwi r0, 0
/* 80309758 002D2D18  41 82 00 78 */	beq lbl_803097D0
/* 8030975C 002D2D1C  80 0D B6 14 */	lwz r0, lbl_80667794@sda21(r13)
/* 80309760 002D2D20  7C 04 00 40 */	cmplw r4, r0
/* 80309764 002D2D24  41 82 00 60 */	beq lbl_803097C4
/* 80309768 002D2D28  81 84 00 30 */	lwz r12, 0x30(r4)
/* 8030976C 002D2D2C  2C 0C 00 00 */	cmpwi r12, 0
/* 80309770 002D2D30  41 82 00 10 */	beq lbl_80309780
/* 80309774 002D2D34  7C 83 23 78 */	mr r3, r4
/* 80309778 002D2D38  7D 89 03 A6 */	mtctr r12
/* 8030977C 002D2D3C  4E 80 04 21 */	bctrl 
lbl_80309780:
/* 80309780 002D2D40  3C 60 CD D1 */	lis r3, 0xCDD10001@ha
/* 80309784 002D2D44  38 63 00 01 */	addi r3, r3, 0xCDD10001@l
/* 80309788 002D2D48  4B FF FA C9 */	bl DSPSendMailToDSP
lbl_8030978C:
/* 8030978C 002D2D4C  4B FF FA 85 */	bl DSPCheckMailToDSP
/* 80309790 002D2D50  2C 03 00 00 */	cmpwi r3, 0
/* 80309794 002D2D54  40 82 FF F8 */	bne lbl_8030978C
/* 80309798 002D2D58  80 8D B6 14 */	lwz r4, lbl_80667794@sda21(r13)
/* 8030979C 002D2D5C  38 60 00 00 */	li r3, 0
/* 803097A0 002D2D60  48 00 01 91 */	bl __DSP_exec_task
/* 803097A4 002D2D64  80 6D B6 24 */	lwz r3, lbl_806677A4@sda21(r13)
/* 803097A8 002D2D68  48 00 05 69 */	bl __DSP_remove_task
/* 803097AC 002D2D6C  80 6D B6 14 */	lwz r3, lbl_80667794@sda21(r13)
/* 803097B0 002D2D70  38 00 00 00 */	li r0, 0
/* 803097B4 002D2D74  90 6D B6 24 */	stw r3, lbl_806677A4@sda21(r13)
/* 803097B8 002D2D78  90 0D B6 14 */	stw r0, lbl_80667794@sda21(r13)
/* 803097BC 002D2D7C  90 0D B6 10 */	stw r0, lbl_80667790@sda21(r13)
/* 803097C0 002D2D80  48 00 01 48 */	b lbl_80309908
lbl_803097C4:
/* 803097C4 002D2D84  38 00 00 00 */	li r0, 0
/* 803097C8 002D2D88  90 0D B6 14 */	stw r0, lbl_80667794@sda21(r13)
/* 803097CC 002D2D8C  90 0D B6 10 */	stw r0, lbl_80667790@sda21(r13)
lbl_803097D0:
/* 803097D0 002D2D90  80 04 00 38 */	lwz r0, 0x38(r4)
/* 803097D4 002D2D94  2C 00 00 00 */	cmpwi r0, 0
/* 803097D8 002D2D98  40 82 00 B4 */	bne lbl_8030988C
/* 803097DC 002D2D9C  80 0D B6 20 */	lwz r0, lbl_806677A0@sda21(r13)
/* 803097E0 002D2DA0  7C 04 00 40 */	cmplw r4, r0
/* 803097E4 002D2DA4  40 82 00 4C */	bne lbl_80309830
/* 803097E8 002D2DA8  81 84 00 30 */	lwz r12, 0x30(r4)
/* 803097EC 002D2DAC  2C 0C 00 00 */	cmpwi r12, 0
/* 803097F0 002D2DB0  41 82 00 10 */	beq lbl_80309800
/* 803097F4 002D2DB4  7C 83 23 78 */	mr r3, r4
/* 803097F8 002D2DB8  7D 89 03 A6 */	mtctr r12
/* 803097FC 002D2DBC  4E 80 04 21 */	bctrl 
lbl_80309800:
/* 80309800 002D2DC0  3C 60 CD D1 */	lis r3, 0xCDD10002@ha
/* 80309804 002D2DC4  38 63 00 02 */	addi r3, r3, 0xCDD10002@l
/* 80309808 002D2DC8  4B FF FA 49 */	bl DSPSendMailToDSP
lbl_8030980C:
/* 8030980C 002D2DCC  4B FF FA 05 */	bl DSPCheckMailToDSP
/* 80309810 002D2DD0  2C 03 00 00 */	cmpwi r3, 0
/* 80309814 002D2DD4  40 82 FF F8 */	bne lbl_8030980C
/* 80309818 002D2DD8  80 6D B6 24 */	lwz r3, lbl_806677A4@sda21(r13)
/* 8030981C 002D2DDC  38 00 00 03 */	li r0, 3
/* 80309820 002D2DE0  90 03 00 00 */	stw r0, 0(r3)
/* 80309824 002D2DE4  80 6D B6 24 */	lwz r3, lbl_806677A4@sda21(r13)
/* 80309828 002D2DE8  48 00 04 E9 */	bl __DSP_remove_task
/* 8030982C 002D2DEC  48 00 00 DC */	b lbl_80309908
lbl_80309830:
/* 80309830 002D2DF0  81 84 00 30 */	lwz r12, 0x30(r4)
/* 80309834 002D2DF4  2C 0C 00 00 */	cmpwi r12, 0
/* 80309838 002D2DF8  41 82 00 10 */	beq lbl_80309848
/* 8030983C 002D2DFC  7C 83 23 78 */	mr r3, r4
/* 80309840 002D2E00  7D 89 03 A6 */	mtctr r12
/* 80309844 002D2E04  4E 80 04 21 */	bctrl 
lbl_80309848:
/* 80309848 002D2E08  3C 60 CD D1 */	lis r3, 0xCDD10001@ha
/* 8030984C 002D2E0C  38 63 00 01 */	addi r3, r3, 0xCDD10001@l
/* 80309850 002D2E10  4B FF FA 01 */	bl DSPSendMailToDSP
lbl_80309854:
/* 80309854 002D2E14  4B FF F9 BD */	bl DSPCheckMailToDSP
/* 80309858 002D2E18  2C 03 00 00 */	cmpwi r3, 0
/* 8030985C 002D2E1C  40 82 FF F8 */	bne lbl_80309854
/* 80309860 002D2E20  80 8D B6 24 */	lwz r4, lbl_806677A4@sda21(r13)
/* 80309864 002D2E24  38 00 00 03 */	li r0, 3
/* 80309868 002D2E28  38 60 00 00 */	li r3, 0
/* 8030986C 002D2E2C  90 04 00 00 */	stw r0, 0(r4)
/* 80309870 002D2E30  80 8D B6 20 */	lwz r4, lbl_806677A0@sda21(r13)
/* 80309874 002D2E34  48 00 00 BD */	bl __DSP_exec_task
/* 80309878 002D2E38  80 0D B6 20 */	lwz r0, lbl_806677A0@sda21(r13)
/* 8030987C 002D2E3C  90 0D B6 24 */	stw r0, lbl_806677A4@sda21(r13)
/* 80309880 002D2E40  80 6D B6 1C */	lwz r3, lbl_8066779C@sda21(r13)
/* 80309884 002D2E44  48 00 04 8D */	bl __DSP_remove_task
/* 80309888 002D2E48  48 00 00 80 */	b lbl_80309908
lbl_8030988C:
/* 8030988C 002D2E4C  81 84 00 30 */	lwz r12, 0x30(r4)
/* 80309890 002D2E50  2C 0C 00 00 */	cmpwi r12, 0
/* 80309894 002D2E54  41 82 00 10 */	beq lbl_803098A4
/* 80309898 002D2E58  7C 83 23 78 */	mr r3, r4
/* 8030989C 002D2E5C  7D 89 03 A6 */	mtctr r12
/* 803098A0 002D2E60  4E 80 04 21 */	bctrl 
lbl_803098A4:
/* 803098A4 002D2E64  3C 60 CD D1 */	lis r3, 0xCDD10001@ha
/* 803098A8 002D2E68  38 63 00 01 */	addi r3, r3, 0xCDD10001@l
/* 803098AC 002D2E6C  4B FF F9 A5 */	bl DSPSendMailToDSP
lbl_803098B0:
/* 803098B0 002D2E70  4B FF F9 61 */	bl DSPCheckMailToDSP
/* 803098B4 002D2E74  2C 03 00 00 */	cmpwi r3, 0
/* 803098B8 002D2E78  40 82 FF F8 */	bne lbl_803098B0
/* 803098BC 002D2E7C  80 8D B6 24 */	lwz r4, lbl_806677A4@sda21(r13)
/* 803098C0 002D2E80  38 00 00 03 */	li r0, 3
/* 803098C4 002D2E84  38 60 00 00 */	li r3, 0
/* 803098C8 002D2E88  90 04 00 00 */	stw r0, 0(r4)
/* 803098CC 002D2E8C  80 8D B6 24 */	lwz r4, lbl_806677A4@sda21(r13)
/* 803098D0 002D2E90  80 84 00 38 */	lwz r4, 0x38(r4)
/* 803098D4 002D2E94  48 00 00 5D */	bl __DSP_exec_task
/* 803098D8 002D2E98  80 6D B6 24 */	lwz r3, lbl_806677A4@sda21(r13)
/* 803098DC 002D2E9C  80 63 00 38 */	lwz r3, 0x38(r3)
/* 803098E0 002D2EA0  90 6D B6 24 */	stw r3, lbl_806677A4@sda21(r13)
/* 803098E4 002D2EA4  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 803098E8 002D2EA8  48 00 04 29 */	bl __DSP_remove_task
/* 803098EC 002D2EAC  48 00 00 1C */	b lbl_80309908
lbl_803098F0:
/* 803098F0 002D2EB0  81 84 00 34 */	lwz r12, 0x34(r4)
/* 803098F4 002D2EB4  2C 0C 00 00 */	cmpwi r12, 0
/* 803098F8 002D2EB8  41 82 00 10 */	beq lbl_80309908
/* 803098FC 002D2EBC  7C 83 23 78 */	mr r3, r4
/* 80309900 002D2EC0  7D 89 03 A6 */	mtctr r12
/* 80309904 002D2EC4  4E 80 04 21 */	bctrl 
lbl_80309908:
/* 80309908 002D2EC8  38 61 00 08 */	addi r3, r1, 8
/* 8030990C 002D2ECC  48 04 B1 B5 */	bl OSClearContext
/* 80309910 002D2ED0  7F E3 FB 78 */	mr r3, r31
/* 80309914 002D2ED4  48 04 AF 6D */	bl OSSetCurrentContext
/* 80309918 002D2ED8  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8030991C 002D2EDC  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 80309920 002D2EE0  7C 08 03 A6 */	mtlr r0
/* 80309924 002D2EE4  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 80309928 002D2EE8  4E 80 00 20 */	blr 

.balign 16, 0
.global __DSP_exec_task
__DSP_exec_task:
/* 80309930 002D2EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309934 002D2EF4  7C 08 02 A6 */	mflr r0
/* 80309938 002D2EF8  2C 03 00 00 */	cmpwi r3, 0
/* 8030993C 002D2EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309940 002D2F00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80309944 002D2F04  7C 9F 23 78 */	mr r31, r4
/* 80309948 002D2F08  93 C1 00 08 */	stw r30, 8(r1)
/* 8030994C 002D2F0C  7C 7E 1B 78 */	mr r30, r3
/* 80309950 002D2F10  41 82 00 44 */	beq lbl_80309994
/* 80309954 002D2F14  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80309958 002D2F18  4B FF F8 F9 */	bl DSPSendMailToDSP
lbl_8030995C:
/* 8030995C 002D2F1C  4B FF F8 B5 */	bl DSPCheckMailToDSP
/* 80309960 002D2F20  2C 03 00 00 */	cmpwi r3, 0
/* 80309964 002D2F24  40 82 FF F8 */	bne lbl_8030995C
/* 80309968 002D2F28  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8030996C 002D2F2C  4B FF F8 E5 */	bl DSPSendMailToDSP
lbl_80309970:
/* 80309970 002D2F30  4B FF F8 A1 */	bl DSPCheckMailToDSP
/* 80309974 002D2F34  2C 03 00 00 */	cmpwi r3, 0
/* 80309978 002D2F38  40 82 FF F8 */	bne lbl_80309970
/* 8030997C 002D2F3C  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80309980 002D2F40  4B FF F8 D1 */	bl DSPSendMailToDSP
lbl_80309984:
/* 80309984 002D2F44  4B FF F8 8D */	bl DSPCheckMailToDSP
/* 80309988 002D2F48  2C 03 00 00 */	cmpwi r3, 0
/* 8030998C 002D2F4C  40 82 FF F8 */	bne lbl_80309984
/* 80309990 002D2F50  48 00 00 40 */	b lbl_803099D0
lbl_80309994:
/* 80309994 002D2F54  38 60 00 00 */	li r3, 0
/* 80309998 002D2F58  4B FF F8 B9 */	bl DSPSendMailToDSP
lbl_8030999C:
/* 8030999C 002D2F5C  4B FF F8 75 */	bl DSPCheckMailToDSP
/* 803099A0 002D2F60  2C 03 00 00 */	cmpwi r3, 0
/* 803099A4 002D2F64  40 82 FF F8 */	bne lbl_8030999C
/* 803099A8 002D2F68  38 60 00 00 */	li r3, 0
/* 803099AC 002D2F6C  4B FF F8 A5 */	bl DSPSendMailToDSP
lbl_803099B0:
/* 803099B0 002D2F70  4B FF F8 61 */	bl DSPCheckMailToDSP
/* 803099B4 002D2F74  2C 03 00 00 */	cmpwi r3, 0
/* 803099B8 002D2F78  40 82 FF F8 */	bne lbl_803099B0
/* 803099BC 002D2F7C  38 60 00 00 */	li r3, 0
/* 803099C0 002D2F80  4B FF F8 91 */	bl DSPSendMailToDSP
lbl_803099C4:
/* 803099C4 002D2F84  4B FF F8 4D */	bl DSPCheckMailToDSP
/* 803099C8 002D2F88  2C 03 00 00 */	cmpwi r3, 0
/* 803099CC 002D2F8C  40 82 FF F8 */	bne lbl_803099C4
lbl_803099D0:
/* 803099D0 002D2F90  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 803099D4 002D2F94  4B FF F8 7D */	bl DSPSendMailToDSP
lbl_803099D8:
/* 803099D8 002D2F98  4B FF F8 39 */	bl DSPCheckMailToDSP
/* 803099DC 002D2F9C  2C 03 00 00 */	cmpwi r3, 0
/* 803099E0 002D2FA0  40 82 FF F8 */	bne lbl_803099D8
/* 803099E4 002D2FA4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803099E8 002D2FA8  4B FF F8 69 */	bl DSPSendMailToDSP
lbl_803099EC:
/* 803099EC 002D2FAC  4B FF F8 25 */	bl DSPCheckMailToDSP
/* 803099F0 002D2FB0  2C 03 00 00 */	cmpwi r3, 0
/* 803099F4 002D2FB4  40 82 FF F8 */	bne lbl_803099EC
/* 803099F8 002D2FB8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 803099FC 002D2FBC  4B FF F8 55 */	bl DSPSendMailToDSP
lbl_80309A00:
/* 80309A00 002D2FC0  4B FF F8 11 */	bl DSPCheckMailToDSP
/* 80309A04 002D2FC4  2C 03 00 00 */	cmpwi r3, 0
/* 80309A08 002D2FC8  40 82 FF F8 */	bne lbl_80309A00
/* 80309A0C 002D2FCC  80 1F 00 00 */	lwz r0, 0(r31)
/* 80309A10 002D2FD0  2C 00 00 00 */	cmpwi r0, 0
/* 80309A14 002D2FD4  40 82 00 58 */	bne lbl_80309A6C
/* 80309A18 002D2FD8  A0 7F 00 24 */	lhz r3, 0x24(r31)
/* 80309A1C 002D2FDC  4B FF F8 35 */	bl DSPSendMailToDSP
lbl_80309A20:
/* 80309A20 002D2FE0  4B FF F7 F1 */	bl DSPCheckMailToDSP
/* 80309A24 002D2FE4  2C 03 00 00 */	cmpwi r3, 0
/* 80309A28 002D2FE8  40 82 FF F8 */	bne lbl_80309A20
/* 80309A2C 002D2FEC  38 60 00 00 */	li r3, 0
/* 80309A30 002D2FF0  4B FF F8 21 */	bl DSPSendMailToDSP
lbl_80309A34:
/* 80309A34 002D2FF4  4B FF F7 DD */	bl DSPCheckMailToDSP
/* 80309A38 002D2FF8  2C 03 00 00 */	cmpwi r3, 0
/* 80309A3C 002D2FFC  40 82 FF F8 */	bne lbl_80309A34
/* 80309A40 002D3000  38 60 00 00 */	li r3, 0
/* 80309A44 002D3004  4B FF F8 0D */	bl DSPSendMailToDSP
lbl_80309A48:
/* 80309A48 002D3008  4B FF F7 C9 */	bl DSPCheckMailToDSP
/* 80309A4C 002D300C  2C 03 00 00 */	cmpwi r3, 0
/* 80309A50 002D3010  40 82 FF F8 */	bne lbl_80309A48
/* 80309A54 002D3014  38 60 00 00 */	li r3, 0
/* 80309A58 002D3018  4B FF F7 F9 */	bl DSPSendMailToDSP
lbl_80309A5C:
/* 80309A5C 002D301C  4B FF F7 B5 */	bl DSPCheckMailToDSP
/* 80309A60 002D3020  2C 03 00 00 */	cmpwi r3, 0
/* 80309A64 002D3024  40 82 FF F8 */	bne lbl_80309A5C
/* 80309A68 002D3028  48 00 00 54 */	b lbl_80309ABC
lbl_80309A6C:
/* 80309A6C 002D302C  A0 7F 00 26 */	lhz r3, 0x26(r31)
/* 80309A70 002D3030  4B FF F7 E1 */	bl DSPSendMailToDSP
lbl_80309A74:
/* 80309A74 002D3034  4B FF F7 9D */	bl DSPCheckMailToDSP
/* 80309A78 002D3038  2C 03 00 00 */	cmpwi r3, 0
/* 80309A7C 002D303C  40 82 FF F8 */	bne lbl_80309A74
/* 80309A80 002D3040  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80309A84 002D3044  4B FF F7 CD */	bl DSPSendMailToDSP
lbl_80309A88:
/* 80309A88 002D3048  4B FF F7 89 */	bl DSPCheckMailToDSP
/* 80309A8C 002D304C  2C 03 00 00 */	cmpwi r3, 0
/* 80309A90 002D3050  40 82 FF F8 */	bne lbl_80309A88
/* 80309A94 002D3054  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80309A98 002D3058  4B FF F7 B9 */	bl DSPSendMailToDSP
lbl_80309A9C:
/* 80309A9C 002D305C  4B FF F7 75 */	bl DSPCheckMailToDSP
/* 80309AA0 002D3060  2C 03 00 00 */	cmpwi r3, 0
/* 80309AA4 002D3064  40 82 FF F8 */	bne lbl_80309A9C
/* 80309AA8 002D3068  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80309AAC 002D306C  4B FF F7 A5 */	bl DSPSendMailToDSP
lbl_80309AB0:
/* 80309AB0 002D3070  4B FF F7 61 */	bl DSPCheckMailToDSP
/* 80309AB4 002D3074  2C 03 00 00 */	cmpwi r3, 0
/* 80309AB8 002D3078  40 82 FF F8 */	bne lbl_80309AB0
lbl_80309ABC:
/* 80309ABC 002D307C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309AC0 002D3080  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80309AC4 002D3084  83 C1 00 08 */	lwz r30, 8(r1)
/* 80309AC8 002D3088  7C 08 03 A6 */	mtlr r0
/* 80309ACC 002D308C  38 21 00 10 */	addi r1, r1, 0x10
/* 80309AD0 002D3090  4E 80 00 20 */	blr 

.balign 16, 0
.global __DSP_boot_task
__DSP_boot_task:
/* 80309AE0 002D30A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80309AE4 002D30A4  7C 08 02 A6 */	mflr r0
/* 80309AE8 002D30A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80309AEC 002D30AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80309AF0 002D30B0  3F E0 80 55 */	lis r31, lbl_80549678@ha
/* 80309AF4 002D30B4  3B FF 96 78 */	addi r31, r31, lbl_80549678@l
/* 80309AF8 002D30B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80309AFC 002D30BC  7C 7E 1B 78 */	mr r30, r3
lbl_80309B00:
/* 80309B00 002D30C0  4B FF F7 21 */	bl DSPCheckMailFromDSP
/* 80309B04 002D30C4  2C 03 00 00 */	cmpwi r3, 0
/* 80309B08 002D30C8  41 82 FF F8 */	beq lbl_80309B00
/* 80309B0C 002D30CC  4B FF F7 25 */	bl DSPReadMailFromDSP
/* 80309B10 002D30D0  90 61 00 08 */	stw r3, 8(r1)
/* 80309B14 002D30D4  3C 60 80 F4 */	lis r3, 0x80F3A001@ha
/* 80309B18 002D30D8  38 63 A0 01 */	addi r3, r3, 0x80F3A001@l
/* 80309B1C 002D30DC  4B FF F7 35 */	bl DSPSendMailToDSP
lbl_80309B20:
/* 80309B20 002D30E0  4B FF F6 F1 */	bl DSPCheckMailToDSP
/* 80309B24 002D30E4  2C 03 00 00 */	cmpwi r3, 0
/* 80309B28 002D30E8  40 82 FF F8 */	bne lbl_80309B20
/* 80309B2C 002D30EC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80309B30 002D30F0  4B FF F7 21 */	bl DSPSendMailToDSP
lbl_80309B34:
/* 80309B34 002D30F4  4B FF F6 DD */	bl DSPCheckMailToDSP
/* 80309B38 002D30F8  2C 03 00 00 */	cmpwi r3, 0
/* 80309B3C 002D30FC  40 82 FF F8 */	bne lbl_80309B34
/* 80309B40 002D3100  3C 60 80 F4 */	lis r3, 0x80F3C002@ha
/* 80309B44 002D3104  38 63 C0 02 */	addi r3, r3, 0x80F3C002@l
/* 80309B48 002D3108  4B FF F7 09 */	bl DSPSendMailToDSP
lbl_80309B4C:
/* 80309B4C 002D310C  4B FF F6 C5 */	bl DSPCheckMailToDSP
/* 80309B50 002D3110  2C 03 00 00 */	cmpwi r3, 0
/* 80309B54 002D3114  40 82 FF F8 */	bne lbl_80309B4C
/* 80309B58 002D3118  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80309B5C 002D311C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80309B60 002D3120  4B FF F6 F1 */	bl DSPSendMailToDSP
lbl_80309B64:
/* 80309B64 002D3124  4B FF F6 AD */	bl DSPCheckMailToDSP
/* 80309B68 002D3128  2C 03 00 00 */	cmpwi r3, 0
/* 80309B6C 002D312C  40 82 FF F8 */	bne lbl_80309B64
/* 80309B70 002D3130  3C 60 80 F4 */	lis r3, 0x80F3A002@ha
/* 80309B74 002D3134  38 63 A0 02 */	addi r3, r3, 0x80F3A002@l
/* 80309B78 002D3138  4B FF F6 D9 */	bl DSPSendMailToDSP
lbl_80309B7C:
/* 80309B7C 002D313C  4B FF F6 95 */	bl DSPCheckMailToDSP
/* 80309B80 002D3140  2C 03 00 00 */	cmpwi r3, 0
/* 80309B84 002D3144  40 82 FF F8 */	bne lbl_80309B7C
/* 80309B88 002D3148  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80309B8C 002D314C  4B FF F6 C5 */	bl DSPSendMailToDSP
lbl_80309B90:
/* 80309B90 002D3150  4B FF F6 81 */	bl DSPCheckMailToDSP
/* 80309B94 002D3154  2C 03 00 00 */	cmpwi r3, 0
/* 80309B98 002D3158  40 82 FF F8 */	bne lbl_80309B90
/* 80309B9C 002D315C  3C 60 80 F4 */	lis r3, 0x80F3B002@ha
/* 80309BA0 002D3160  38 63 B0 02 */	addi r3, r3, 0x80F3B002@l
/* 80309BA4 002D3164  4B FF F6 AD */	bl DSPSendMailToDSP
lbl_80309BA8:
/* 80309BA8 002D3168  4B FF F6 69 */	bl DSPCheckMailToDSP
/* 80309BAC 002D316C  2C 03 00 00 */	cmpwi r3, 0
/* 80309BB0 002D3170  40 82 FF F8 */	bne lbl_80309BA8
/* 80309BB4 002D3174  38 60 00 00 */	li r3, 0
/* 80309BB8 002D3178  4B FF F6 99 */	bl DSPSendMailToDSP
lbl_80309BBC:
/* 80309BBC 002D317C  4B FF F6 55 */	bl DSPCheckMailToDSP
/* 80309BC0 002D3180  2C 03 00 00 */	cmpwi r3, 0
/* 80309BC4 002D3184  40 82 FF F8 */	bne lbl_80309BBC
/* 80309BC8 002D3188  3C 60 80 F4 */	lis r3, 0x80F3D001@ha
/* 80309BCC 002D318C  38 63 D0 01 */	addi r3, r3, 0x80F3D001@l
/* 80309BD0 002D3190  4B FF F6 81 */	bl DSPSendMailToDSP
lbl_80309BD4:
/* 80309BD4 002D3194  4B FF F6 3D */	bl DSPCheckMailToDSP
/* 80309BD8 002D3198  2C 03 00 00 */	cmpwi r3, 0
/* 80309BDC 002D319C  40 82 FF F8 */	bne lbl_80309BD4
/* 80309BE0 002D31A0  A0 7E 00 24 */	lhz r3, 0x24(r30)
/* 80309BE4 002D31A4  4B FF F6 6D */	bl DSPSendMailToDSP
lbl_80309BE8:
/* 80309BE8 002D31A8  4B FF F6 29 */	bl DSPCheckMailToDSP
/* 80309BEC 002D31AC  2C 03 00 00 */	cmpwi r3, 0
/* 80309BF0 002D31B0  40 82 FF F8 */	bne lbl_80309BE8
/* 80309BF4 002D31B4  7F C4 F3 78 */	mr r4, r30
/* 80309BF8 002D31B8  38 7F 00 00 */	addi r3, r31, 0
/* 80309BFC 002D31BC  4C C6 31 82 */	crclr 6
/* 80309C00 002D31C0  4B FF F8 B1 */	bl __DSP_debug_printf
/* 80309C04 002D31C4  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 80309C08 002D31C8  38 7F 00 20 */	addi r3, r31, 0x20
/* 80309C0C 002D31CC  4C C6 31 82 */	crclr 6
/* 80309C10 002D31D0  4B FF F8 A1 */	bl __DSP_debug_printf
/* 80309C14 002D31D4  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80309C18 002D31D8  38 7F 00 50 */	addi r3, r31, 0x50
/* 80309C1C 002D31DC  4C C6 31 82 */	crclr 6
/* 80309C20 002D31E0  4B FF F8 91 */	bl __DSP_debug_printf
/* 80309C24 002D31E4  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80309C28 002D31E8  38 7F 00 80 */	addi r3, r31, 0x80
/* 80309C2C 002D31EC  4C C6 31 82 */	crclr 6
/* 80309C30 002D31F0  4B FF F8 81 */	bl __DSP_debug_printf
/* 80309C34 002D31F4  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 80309C38 002D31F8  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 80309C3C 002D31FC  4C C6 31 82 */	crclr 6
/* 80309C40 002D3200  4B FF F8 71 */	bl __DSP_debug_printf
/* 80309C44 002D3204  A0 9E 00 24 */	lhz r4, 0x24(r30)
/* 80309C48 002D3208  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 80309C4C 002D320C  4C C6 31 82 */	crclr 6
/* 80309C50 002D3210  4B FF F8 61 */	bl __DSP_debug_printf
/* 80309C54 002D3214  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80309C58 002D3218  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80309C5C 002D321C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80309C60 002D3220  7C 08 03 A6 */	mtlr r0
/* 80309C64 002D3224  38 21 00 20 */	addi r1, r1, 0x20
/* 80309C68 002D3228  4E 80 00 20 */	blr 

.balign 16, 0
.global __DSP_insert_task
__DSP_insert_task:
/* 80309C70 002D3230  80 AD B6 20 */	lwz r5, lbl_806677A0@sda21(r13)
/* 80309C74 002D3234  2C 05 00 00 */	cmpwi r5, 0
/* 80309C78 002D3238  40 82 00 68 */	bne lbl_80309CE0
/* 80309C7C 002D323C  90 6D B6 24 */	stw r3, lbl_806677A4@sda21(r13)
/* 80309C80 002D3240  38 00 00 00 */	li r0, 0
/* 80309C84 002D3244  90 6D B6 1C */	stw r3, lbl_8066779C@sda21(r13)
/* 80309C88 002D3248  90 6D B6 20 */	stw r3, lbl_806677A0@sda21(r13)
/* 80309C8C 002D324C  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80309C90 002D3250  90 03 00 38 */	stw r0, 0x38(r3)
/* 80309C94 002D3254  4E 80 00 20 */	blr 
/* 80309C98 002D3258  48 00 00 48 */	b lbl_80309CE0
/* 80309C9C 002D325C  60 00 00 00 */	nop 
lbl_80309CA0:
/* 80309CA0 002D3260  80 83 00 04 */	lwz r4, 4(r3)
/* 80309CA4 002D3264  80 05 00 04 */	lwz r0, 4(r5)
/* 80309CA8 002D3268  7C 04 00 40 */	cmplw r4, r0
/* 80309CAC 002D326C  40 80 00 30 */	bge lbl_80309CDC
/* 80309CB0 002D3270  80 05 00 3C */	lwz r0, 0x3c(r5)
/* 80309CB4 002D3274  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80309CB8 002D3278  90 65 00 3C */	stw r3, 0x3c(r5)
/* 80309CBC 002D327C  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 80309CC0 002D3280  90 A3 00 38 */	stw r5, 0x38(r3)
/* 80309CC4 002D3284  2C 04 00 00 */	cmpwi r4, 0
/* 80309CC8 002D3288  40 82 00 0C */	bne lbl_80309CD4
/* 80309CCC 002D328C  90 6D B6 20 */	stw r3, lbl_806677A0@sda21(r13)
/* 80309CD0 002D3290  48 00 00 18 */	b lbl_80309CE8
lbl_80309CD4:
/* 80309CD4 002D3294  90 64 00 38 */	stw r3, 0x38(r4)
/* 80309CD8 002D3298  48 00 00 10 */	b lbl_80309CE8
lbl_80309CDC:
/* 80309CDC 002D329C  80 A5 00 38 */	lwz r5, 0x38(r5)
lbl_80309CE0:
/* 80309CE0 002D32A0  2C 05 00 00 */	cmpwi r5, 0
/* 80309CE4 002D32A4  40 82 FF BC */	bne lbl_80309CA0
lbl_80309CE8:
/* 80309CE8 002D32A8  2C 05 00 00 */	cmpwi r5, 0
/* 80309CEC 002D32AC  4C 82 00 20 */	bnelr 
/* 80309CF0 002D32B0  80 8D B6 1C */	lwz r4, lbl_8066779C@sda21(r13)
/* 80309CF4 002D32B4  38 00 00 00 */	li r0, 0
/* 80309CF8 002D32B8  90 64 00 38 */	stw r3, 0x38(r4)
/* 80309CFC 002D32BC  90 03 00 38 */	stw r0, 0x38(r3)
/* 80309D00 002D32C0  80 0D B6 1C */	lwz r0, lbl_8066779C@sda21(r13)
/* 80309D04 002D32C4  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80309D08 002D32C8  90 6D B6 1C */	stw r3, lbl_8066779C@sda21(r13)
/* 80309D0C 002D32CC  4E 80 00 20 */	blr 

.balign 16, 0
.global __DSP_remove_task
__DSP_remove_task:
/* 80309D10 002D32D0  38 80 00 00 */	li r4, 0
/* 80309D14 002D32D4  90 83 00 08 */	stw r4, 8(r3)
/* 80309D18 002D32D8  38 00 00 03 */	li r0, 3
/* 80309D1C 002D32DC  90 03 00 00 */	stw r0, 0(r3)
/* 80309D20 002D32E0  80 0D B6 20 */	lwz r0, lbl_806677A0@sda21(r13)
/* 80309D24 002D32E4  7C 00 18 40 */	cmplw r0, r3
/* 80309D28 002D32E8  40 82 00 2C */	bne lbl_80309D54
/* 80309D2C 002D32EC  80 63 00 38 */	lwz r3, 0x38(r3)
/* 80309D30 002D32F0  2C 03 00 00 */	cmpwi r3, 0
/* 80309D34 002D32F4  41 82 00 10 */	beq lbl_80309D44
/* 80309D38 002D32F8  90 6D B6 20 */	stw r3, lbl_806677A0@sda21(r13)
/* 80309D3C 002D32FC  90 83 00 3C */	stw r4, 0x3c(r3)
/* 80309D40 002D3300  4E 80 00 20 */	blr
lbl_80309D44:
/* 80309D44 002D3304  90 8D B6 24 */	stw r4, lbl_806677A4@sda21(r13)
/* 80309D48 002D3308  90 8D B6 1C */	stw r4, lbl_8066779C@sda21(r13)
/* 80309D4C 002D330C  90 8D B6 20 */	stw r4, lbl_806677A0@sda21(r13)
/* 80309D50 002D3310  4E 80 00 20 */	blr
lbl_80309D54:
/* 80309D54 002D3314  80 0D B6 1C */	lwz r0, lbl_8066779C@sda21(r13)
/* 80309D58 002D3318  7C 00 18 40 */	cmplw r0, r3
/* 80309D5C 002D331C  40 82 00 1C */	bne lbl_80309D78
/* 80309D60 002D3320  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 80309D64 002D3324  90 6D B6 1C */	stw r3, lbl_8066779C@sda21(r13)
/* 80309D68 002D3328  90 83 00 38 */	stw r4, 0x38(r3)
/* 80309D6C 002D332C  80 0D B6 20 */	lwz r0, lbl_806677A0@sda21(r13)
/* 80309D70 002D3330  90 0D B6 24 */	stw r0, lbl_806677A4@sda21(r13)
/* 80309D74 002D3334  4E 80 00 20 */	blr
lbl_80309D78:
/* 80309D78 002D3338  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80309D7C 002D333C  90 0D B6 24 */	stw r0, lbl_806677A4@sda21(r13)
/* 80309D80 002D3340  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 80309D84 002D3344  90 04 00 38 */	stw r0, 0x38(r4)
/* 80309D88 002D3348  80 83 00 38 */	lwz r4, 0x38(r3)
/* 80309D8C 002D334C  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 80309D90 002D3350  90 04 00 3C */	stw r0, 0x3c(r4)
/* 80309D94 002D3354  4E 80 00 20 */	blr