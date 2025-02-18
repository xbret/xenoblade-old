.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn ADXM_WaitVsync, global
/* 8039AA18 00363FD8  4B FC A7 D8 */	b VIWaitForRetrace
.endfn ADXM_WaitVsync

.fn ADXM_ExecMain, global
/* 8039AA1C 00363FDC  4B FF CC 3C */	b SVM_ExecSvrMain
.endfn ADXM_ExecMain

.fn ADXM_Lock, global
/* 8039AA20 00363FE0  4B FF BF 7C */	b SVM_Lock
.endfn ADXM_Lock

.fn ADXM_Unlock, global
/* 8039AA24 00363FE4  4B FF BF E0 */	b SVM_Unlock
.endfn ADXM_Unlock


.fn adxm_lock, local
/* 8039AA28 00363FE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039AA2C 00363FEC  7C 08 02 A6 */	mflr r0
/* 8039AA30 00363FF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039AA34 00363FF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039AA38 00363FF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8039AA3C 00363FFC  3F C0 80 5F */	lis r30, adxwii_exec_svr@ha
/* 8039AA40 00364000  3B DE 70 10 */	addi r30, r30, adxwii_exec_svr@l
/* 8039AA44 00364004  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8039AA48 00364008  93 81 00 10 */	stw r28, 0x10(r1)
/* 8039AA4C 0036400C  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 8039AA50 00364010  2C 00 00 00 */	cmpwi r0, 0
/* 8039AA54 00364014  40 82 00 54 */	bne .L_8039AAA8
/* 8039AA58 00364018  4B FB DF 59 */	bl OSDisableInterrupts
/* 8039AA5C 0036401C  7C 7D 1B 78 */	mr r29, r3
/* 8039AA60 00364020  4B FC 0B 91 */	bl OSDisableScheduler
/* 8039AA64 00364024  38 00 00 01 */	li r0, 1
/* 8039AA68 00364028  90 1E 00 70 */	stw r0, 0x70(r30)
/* 8039AA6C 0036402C  4B FC 0B 75 */	bl OSGetCurrentThread
/* 8039AA70 00364030  7C 7C 1B 78 */	mr r28, r3
/* 8039AA74 00364034  4B FC 1E DD */	bl OSGetThreadPriority
/* 8039AA78 00364038  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8039AA7C 0036403C  7C 7F 1B 78 */	mr r31, r3
/* 8039AA80 00364040  7F 83 E3 78 */	mr r3, r28
/* 8039AA84 00364044  4B FC 1D DD */	bl OSSetThreadPriority
/* 8039AA88 00364048  38 00 00 00 */	li r0, 0
/* 8039AA8C 0036404C  93 FE 00 74 */	stw r31, 0x74(r30)
/* 8039AA90 00364050  90 1E 00 70 */	stw r0, 0x70(r30)
/* 8039AA94 00364054  4B FC 0B 9D */	bl OSEnableScheduler
/* 8039AA98 00364058  7F A3 EB 78 */	mr r3, r29
/* 8039AA9C 0036405C  4B FB DF 55 */	bl OSRestoreInterrupts
/* 8039AAA0 00364060  38 7E 00 78 */	addi r3, r30, 0x78
/* 8039AAA4 00364064  4B FC 17 9D */	bl OSResumeThread
.L_8039AAA8:
/* 8039AAA8 00364068  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 8039AAAC 0036406C  38 03 00 01 */	addi r0, r3, 1
/* 8039AAB0 00364070  90 1E 00 40 */	stw r0, 0x40(r30)
/* 8039AAB4 00364074  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039AAB8 00364078  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039AABC 0036407C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8039AAC0 00364080  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8039AAC4 00364084  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8039AAC8 00364088  7C 08 03 A6 */	mtlr r0
/* 8039AACC 0036408C  38 21 00 20 */	addi r1, r1, 0x20
/* 8039AAD0 00364090  4E 80 00 20 */	blr
.endfn adxm_lock

.fn adxm_unlock, global
/* 8039AAD4 00364094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039AAD8 00364098  7C 08 02 A6 */	mflr r0
/* 8039AADC 0036409C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039AAE0 003640A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039AAE4 003640A4  3F E0 80 5F */	lis r31, adxwii_exec_svr@ha
/* 8039AAE8 003640A8  3B FF 70 10 */	addi r31, r31, adxwii_exec_svr@l
/* 8039AAEC 003640AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8039AAF0 003640B0  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8039AAF4 003640B4  38 03 FF FF */	addi r0, r3, -1
/* 8039AAF8 003640B8  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8039AAFC 003640BC  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 8039AB00 003640C0  2C 00 00 00 */	cmpwi r0, 0
/* 8039AB04 003640C4  40 82 00 20 */	bne .L_8039AB24
/* 8039AB08 003640C8  4B FC 0A D9 */	bl OSGetCurrentThread
/* 8039AB0C 003640CC  7C 7E 1B 78 */	mr r30, r3
/* 8039AB10 003640D0  38 7F 00 78 */	addi r3, r31, 0x78
/* 8039AB14 003640D4  4B FC 19 CD */	bl OSSuspendThread
/* 8039AB18 003640D8  80 9F 00 74 */	lwz r4, 0x74(r31)
/* 8039AB1C 003640DC  7F C3 F3 78 */	mr r3, r30
/* 8039AB20 003640E0  4B FC 1D 41 */	bl OSSetThreadPriority
.L_8039AB24:
/* 8039AB24 003640E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039AB28 003640E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039AB2C 003640EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8039AB30 003640F0  7C 08 03 A6 */	mtlr r0
/* 8039AB34 003640F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8039AB38 003640F8  4E 80 00 20 */	blr
.endfn adxm_unlock

#may also be adxm_goto_usridle_border
.fn adxm_goto_mwidle_border, global
/* 8039AB3C 003640FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039AB40 00364100  7C 08 02 A6 */	mflr r0
/* 8039AB44 00364104  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039AB48 00364108  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039AB4C 0036410C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8039AB50 00364110  3F C0 80 5F */	lis r30, adxwii_exec_svr@ha
/* 8039AB54 00364114  3B DE 70 10 */	addi r30, r30, adxwii_exec_svr@l
/* 8039AB58 00364118  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8039AB5C 0036411C  93 81 00 10 */	stw r28, 0x10(r1)
/* 8039AB60 00364120  80 1E 03 90 */	lwz r0, 0x390(r30)
/* 8039AB64 00364124  2C 00 00 01 */	cmpwi r0, 1
/* 8039AB68 00364128  41 82 00 70 */	beq .L_8039ABD8
/* 8039AB6C 0036412C  38 9E 00 10 */	addi r4, r30, 0x10
/* 8039AB70 00364130  38 00 00 01 */	li r0, 1
/* 8039AB74 00364134  83 A4 00 18 */	lwz r29, 0x18(r4)
/* 8039AB78 00364138  38 7E 03 98 */	addi r3, r30, 0x398
/* 8039AB7C 0036413C  90 1E 00 44 */	stw r0, 0x44(r30)
/* 8039AB80 00364140  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8039AB84 00364144  4B FC 1C DD */	bl OSSetThreadPriority
/* 8039AB88 00364148  3C 60 0B EC */	lis r3, 0x0BEBC200@ha
/* 8039AB8C 0036414C  3B 80 00 00 */	li r28, 0
/* 8039AB90 00364150  3B E3 C2 00 */	addi r31, r3, 0x0BEBC200@l
.L_8039AB94:
/* 8039AB94 00364154  38 7E 03 98 */	addi r3, r30, 0x398
/* 8039AB98 00364158  4B FC 16 A9 */	bl OSResumeThread
/* 8039AB9C 0036415C  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 8039ABA0 00364160  2C 00 00 00 */	cmpwi r0, 0
/* 8039ABA4 00364164  41 82 00 10 */	beq .L_8039ABB4
/* 8039ABA8 00364168  3B 9C 00 01 */	addi r28, r28, 1
/* 8039ABAC 0036416C  7C 1C F8 00 */	cmpw r28, r31
/* 8039ABB0 00364170  41 80 FF E4 */	blt .L_8039AB94
.L_8039ABB4:
/* 8039ABB4 00364174  3C 1C F4 15 */	addis r0, r28, 0xf415
/* 8039ABB8 00364178  28 00 C2 00 */	cmplwi r0, 0xc200
/* 8039ABBC 0036417C  40 82 00 10 */	bne .L_8039ABCC
/* 8039ABC0 00364180  3C 60 80 52 */	lis r3, lbl_8051CD14@ha
/* 8039ABC4 00364184  38 63 CD 14 */	addi r3, r3, lbl_8051CD14@l
/* 8039ABC8 00364188  4B FF BF A5 */	bl SVM_CallErr1
.L_8039ABCC:
/* 8039ABCC 0036418C  7F A4 EB 78 */	mr r4, r29
/* 8039ABD0 00364190  38 7E 03 98 */	addi r3, r30, 0x398
/* 8039ABD4 00364194  4B FC 1C 8D */	bl OSSetThreadPriority
.L_8039ABD8:
/* 8039ABD8 00364198  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039ABDC 0036419C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039ABE0 003641A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8039ABE4 003641A4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8039ABE8 003641A8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8039ABEC 003641AC  7C 08 03 A6 */	mtlr r0
/* 8039ABF0 003641B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8039ABF4 003641B4  4E 80 00 20 */	blr
.endfn adxm_goto_mwidle_border

.fn adxm_safe_proc, global
/* 8039ABF8 003641B8  3C 80 80 5F */	lis r4, adxwii_exec_svr@ha
/* 8039ABFC 003641BC  38 84 70 10 */	addi r4, r4, adxwii_exec_svr@l
/* 8039AC00 003641C0  48 00 00 10 */	b .L_8039AC10
.L_8039AC04:
/* 8039AC04 003641C4  80 64 00 48 */	lwz r3, 0x48(r4)
/* 8039AC08 003641C8  38 03 00 01 */	addi r0, r3, 1
/* 8039AC0C 003641CC  90 04 00 48 */	stw r0, 0x48(r4)
.L_8039AC10:
/* 8039AC10 003641D0  80 04 09 D0 */	lwz r0, 0x9d0(r4)
/* 8039AC14 003641D4  2C 00 00 01 */	cmpwi r0, 1
/* 8039AC18 003641D8  41 82 FF EC */	beq .L_8039AC04
/* 8039AC1C 003641DC  38 00 00 01 */	li r0, 1
/* 8039AC20 003641E0  90 04 09 D4 */	stw r0, 0x9d4(r4)
/* 8039AC24 003641E4  4E 80 00 20 */	blr
.endfn adxm_safe_proc

.fn adxm_vsync_proc, global
/* 8039AC28 003641E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039AC2C 003641EC  7C 08 02 A6 */	mflr r0
/* 8039AC30 003641F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039AC34 003641F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039AC38 003641F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8039AC3C 003641FC  3F C0 80 5E */	lis r30, adxt_vsync_cnt@ha
/* 8039AC40 00364200  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8039AC44 00364204  3F A0 80 5F */	lis r29, adxwii_exec_svr@ha
/* 8039AC48 00364208  3B BD 70 10 */	addi r29, r29, adxwii_exec_svr@l
/* 8039AC4C 0036420C  3B FD 00 68 */	addi r31, r29, 0x68
/* 8039AC50 00364210  48 00 00 50 */	b .L_8039ACA0
.L_8039AC54:
/* 8039AC54 00364214  4B FC A5 9D */	bl VIWaitForRetrace
/* 8039AC58 00364218  80 9D 00 4C */	lwz r4, 0x4c(r29)
/* 8039AC5C 0036421C  80 7E 5D 5C */	lwz r3, adxt_vsync_cnt@l(r30)
/* 8039AC60 00364220  38 84 00 01 */	addi r4, r4, 1
/* 8039AC64 00364224  38 03 00 01 */	addi r0, r3, 1
/* 8039AC68 00364228  90 9D 00 4C */	stw r4, 0x4c(r29)
/* 8039AC6C 0036422C  90 1E 5D 5C */	stw r0, adxt_vsync_cnt@l(r30)
/* 8039AC70 00364230  4B FF C8 C9 */	bl SVM_ExecSvrVsync
/* 8039AC74 00364234  80 1D 03 90 */	lwz r0, 0x390(r29)
/* 8039AC78 00364238  2C 00 00 00 */	cmpwi r0, 0
/* 8039AC7C 0036423C  40 82 00 24 */	bne .L_8039ACA0
/* 8039AC80 00364240  38 7D 03 98 */	addi r3, r29, 0x398
/* 8039AC84 00364244  4B FC 15 BD */	bl OSResumeThread
/* 8039AC88 00364248  81 9D 00 68 */	lwz r12, 0x68(r29)
/* 8039AC8C 0036424C  2C 0C 00 00 */	cmpwi r12, 0
/* 8039AC90 00364250  41 82 00 10 */	beq .L_8039ACA0
/* 8039AC94 00364254  80 7F 00 04 */	lwz r3, 4(r31)
/* 8039AC98 00364258  7D 89 03 A6 */	mtctr r12
/* 8039AC9C 0036425C  4E 80 04 21 */	bctrl 
.L_8039ACA0:
/* 8039ACA0 00364260  80 1D 09 D8 */	lwz r0, 0x9d8(r29)
/* 8039ACA4 00364264  2C 00 00 01 */	cmpwi r0, 1
/* 8039ACA8 00364268  41 82 FF AC */	beq .L_8039AC54
/* 8039ACAC 0036426C  38 00 00 01 */	li r0, 1
/* 8039ACB0 00364270  90 1D 09 DC */	stw r0, 0x9dc(r29)
/* 8039ACB4 00364274  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039ACB8 00364278  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039ACBC 0036427C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8039ACC0 00364280  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8039ACC4 00364284  7C 08 03 A6 */	mtlr r0
/* 8039ACC8 00364288  38 21 00 20 */	addi r1, r1, 0x20
/* 8039ACCC 0036428C  4E 80 00 20 */	blr
.endfn adxm_vsync_proc

.fn adxm_fs_proc, global
/* 8039ACD0 00364290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039ACD4 00364294  7C 08 02 A6 */	mflr r0
/* 8039ACD8 00364298  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039ACDC 0036429C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039ACE0 003642A0  3F E0 80 5F */	lis r31, adxwii_exec_svr@ha
/* 8039ACE4 003642A4  3B FF 70 10 */	addi r31, r31, adxwii_exec_svr@l
/* 8039ACE8 003642A8  48 00 00 18 */	b .L_8039AD00
.L_8039ACEC:
/* 8039ACEC 003642AC  4B FC A5 05 */	bl VIWaitForRetrace
/* 8039ACF0 003642B0  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 8039ACF4 003642B4  38 03 00 01 */	addi r0, r3, 1
/* 8039ACF8 003642B8  90 1F 00 50 */	stw r0, 0x50(r31)
/* 8039ACFC 003642BC  4B FF C8 CD */	bl SVM_ExecSvrFs
.L_8039AD00:
/* 8039AD00 003642C0  80 1F 09 E0 */	lwz r0, 0x9e0(r31)
/* 8039AD04 003642C4  2C 00 00 01 */	cmpwi r0, 1
/* 8039AD08 003642C8  41 82 FF E4 */	beq .L_8039ACEC
/* 8039AD0C 003642CC  38 00 00 01 */	li r0, 1
/* 8039AD10 003642D0  90 1F 09 E4 */	stw r0, 0x9e4(r31)
/* 8039AD14 003642D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039AD18 003642D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039AD1C 003642DC  7C 08 03 A6 */	mtlr r0
/* 8039AD20 003642E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8039AD24 003642E4  4E 80 00 20 */	blr
.endfn adxm_fs_proc

.fn adxm_mwidle_proc, global
/* 8039AD28 003642E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039AD2C 003642EC  7C 08 02 A6 */	mflr r0
/* 8039AD30 003642F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039AD34 003642F4  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8039AD38 003642F8  3F 60 80 5F */	lis r27, adxwii_exec_svr@ha
/* 8039AD3C 003642FC  3B 7B 70 10 */	addi r27, r27, adxwii_exec_svr@l
/* 8039AD40 00364300  3B A0 00 00 */	li r29, 0
/* 8039AD44 00364304  3B DB 00 10 */	addi r30, r27, 0x10
/* 8039AD48 00364308  3B FB 00 68 */	addi r31, r27, 0x68
/* 8039AD4C 0036430C  48 00 00 84 */	b .L_8039ADD0
.L_8039AD50:
/* 8039AD50 00364310  80 7B 00 54 */	lwz r3, 0x54(r27)
/* 8039AD54 00364314  38 03 00 01 */	addi r0, r3, 1
/* 8039AD58 00364318  90 1B 00 54 */	stw r0, 0x54(r27)
/* 8039AD5C 0036431C  4B FF C9 8D */	bl SVM_ExecSvrMwIdle
/* 8039AD60 00364320  2C 03 00 00 */	cmpwi r3, 0
/* 8039AD64 00364324  7C 7C 1B 78 */	mr r28, r3
/* 8039AD68 00364328  41 82 00 10 */	beq .L_8039AD78
/* 8039AD6C 0036432C  80 1B 00 44 */	lwz r0, 0x44(r27)
/* 8039AD70 00364330  2C 00 00 01 */	cmpwi r0, 1
/* 8039AD74 00364334  40 82 00 5C */	bne .L_8039ADD0
.L_8039AD78:
/* 8039AD78 00364338  80 1B 00 44 */	lwz r0, 0x44(r27)
/* 8039AD7C 0036433C  2C 00 00 01 */	cmpwi r0, 1
/* 8039AD80 00364340  40 82 00 14 */	bne .L_8039AD94
/* 8039AD84 00364344  93 BB 00 44 */	stw r29, 0x44(r27)
/* 8039AD88 00364348  38 7B 03 98 */	addi r3, r27, 0x398
/* 8039AD8C 0036434C  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 8039AD90 00364350  4B FC 1A D1 */	bl OSSetThreadPriority
.L_8039AD94:
/* 8039AD94 00364354  81 9B 00 68 */	lwz r12, 0x68(r27)
/* 8039AD98 00364358  2C 0C 00 00 */	cmpwi r12, 0
/* 8039AD9C 0036435C  41 82 00 10 */	beq .L_8039ADAC
/* 8039ADA0 00364360  80 7F 00 04 */	lwz r3, 4(r31)
/* 8039ADA4 00364364  7D 89 03 A6 */	mtctr r12
/* 8039ADA8 00364368  4E 80 04 21 */	bctrl 
.L_8039ADAC:
/* 8039ADAC 0036436C  2C 1C 00 00 */	cmpwi r28, 0
/* 8039ADB0 00364370  40 82 00 18 */	bne .L_8039ADC8
/* 8039ADB4 00364374  80 1B 00 08 */	lwz r0, 8(r27)
/* 8039ADB8 00364378  2C 00 00 01 */	cmpwi r0, 1
/* 8039ADBC 0036437C  40 82 00 0C */	bne .L_8039ADC8
/* 8039ADC0 00364380  38 7B 06 B8 */	addi r3, r27, 0x6b8
/* 8039ADC4 00364384  4B FC 14 7D */	bl OSResumeThread
.L_8039ADC8:
/* 8039ADC8 00364388  38 7B 03 98 */	addi r3, r27, 0x398
/* 8039ADCC 0036438C  4B FC 17 15 */	bl OSSuspendThread
.L_8039ADD0:
/* 8039ADD0 00364390  80 1B 09 E8 */	lwz r0, 0x9e8(r27)
/* 8039ADD4 00364394  2C 00 00 01 */	cmpwi r0, 1
/* 8039ADD8 00364398  41 82 FF 78 */	beq .L_8039AD50
/* 8039ADDC 0036439C  38 00 00 01 */	li r0, 1
/* 8039ADE0 003643A0  90 1B 03 90 */	stw r0, 0x390(r27)
/* 8039ADE4 003643A4  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8039ADE8 003643A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039ADEC 003643AC  7C 08 03 A6 */	mtlr r0
/* 8039ADF0 003643B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8039ADF4 003643B4  4E 80 00 20 */	blr 
.endfn adxm_mwidle_proc

.fn criware_8039ADF8, global
/* 8039ADF8 003643B8  4B FF C6 28 */	b SVM_SetCbErr
.endfn criware_8039ADF8

.fn adxm_create_base_thread, global
/* 8039ADFC 003643BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039AE00 003643C0  7C 08 02 A6 */	mflr r0
/* 8039AE04 003643C4  3C 80 80 3A */	lis r4, adxm_safe_proc@ha
/* 8039AE08 003643C8  38 A0 00 00 */	li r5, 0
/* 8039AE0C 003643CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039AE10 003643D0  38 84 AB F8 */	addi r4, r4, adxm_safe_proc@l
/* 8039AE14 003643D4  38 E0 10 00 */	li r7, 0x1000
/* 8039AE18 003643D8  39 20 00 01 */	li r9, 1
/* 8039AE1C 003643DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039AE20 003643E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8039AE24 003643E4  3F C0 80 5F */	lis r30, adxwii_exec_svr@ha
/* 8039AE28 003643E8  3B DE 70 10 */	addi r30, r30, adxwii_exec_svr@l
/* 8039AE2C 003643EC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8039AE30 003643F0  38 DE 09 F8 */	addi r6, r30, 0x9f8
/* 8039AE34 003643F4  3B FE 00 10 */	addi r31, r30, 0x10
/* 8039AE38 003643F8  38 7E 00 78 */	addi r3, r30, 0x78
/* 8039AE3C 003643FC  93 81 00 10 */	stw r28, 0x10(r1)
/* 8039AE40 00364400  38 C6 10 00 */	addi r6, r6, 0x1000
/* 8039AE44 00364404  81 1F 00 04 */	lwz r8, 4(r31)
/* 8039AE48 00364408  4B FC 0D 69 */	bl OSCreateThread
/* 8039AE4C 0036440C  38 BE 1D 10 */	addi r5, r30, 0x1d10
/* 8039AE50 00364410  3C 80 80 3A */	lis r4, adxm_vsync_proc@ha
/* 8039AE54 00364414  38 C5 20 00 */	addi r6, r5, 0x2000
/* 8039AE58 00364418  81 1F 00 0C */	lwz r8, 0xc(r31)
/* 8039AE5C 0036441C  38 7E 19 F8 */	addi r3, r30, 0x19f8
/* 8039AE60 00364420  38 84 AC 28 */	addi r4, r4, adxm_vsync_proc@l
/* 8039AE64 00364424  38 A0 00 00 */	li r5, 0
/* 8039AE68 00364428  38 E0 20 00 */	li r7, 0x2000
/* 8039AE6C 0036442C  39 20 00 01 */	li r9, 1
/* 8039AE70 00364430  4B FC 0D 41 */	bl OSCreateThread
/* 8039AE74 00364434  38 BE 40 28 */	addi r5, r30, 0x4028
/* 8039AE78 00364438  3C 80 80 3A */	lis r4, adxm_fs_proc@ha
/* 8039AE7C 0036443C  38 C5 20 00 */	addi r6, r5, 0x2000
/* 8039AE80 00364440  81 1F 00 10 */	lwz r8, 0x10(r31)
/* 8039AE84 00364444  38 7E 3D 10 */	addi r3, r30, 0x3d10
/* 8039AE88 00364448  38 84 AC D0 */	addi r4, r4, adxm_fs_proc@l
/* 8039AE8C 0036444C  38 A0 00 00 */	li r5, 0
/* 8039AE90 00364450  38 E0 20 00 */	li r7, 0x2000
/* 8039AE94 00364454  39 20 00 01 */	li r9, 1
/* 8039AE98 00364458  4B FC 0D 19 */	bl OSCreateThread
/* 8039AE9C 0036445C  38 BE 60 28 */	addi r5, r30, 0x6028
/* 8039AEA0 00364460  3C 80 80 3A */	lis r4, adxm_mwidle_proc@ha
/* 8039AEA4 00364464  38 C5 20 00 */	addi r6, r5, 0x2000
/* 8039AEA8 00364468  81 1F 00 18 */	lwz r8, 0x18(r31)
/* 8039AEAC 0036446C  38 7E 03 98 */	addi r3, r30, 0x398
/* 8039AEB0 00364470  38 84 AD 28 */	addi r4, r4, adxm_mwidle_proc@l
/* 8039AEB4 00364474  38 A0 00 00 */	li r5, 0
/* 8039AEB8 00364478  38 E0 20 00 */	li r7, 0x2000
/* 8039AEBC 0036447C  39 20 00 01 */	li r9, 1
/* 8039AEC0 00364480  4B FC 0C F1 */	bl OSCreateThread
/* 8039AEC4 00364484  4B FC 07 1D */	bl OSGetCurrentThread
/* 8039AEC8 00364488  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8039AECC 0036448C  3F E0 80 60 */	lis r31, adxm_main_thread@ha
/* 8039AED0 00364490  90 7F F0 38 */	stw r3, adxm_main_thread@l(r31)
/* 8039AED4 00364494  2C 00 00 10 */	cmpwi r0, 0x10
/* 8039AED8 00364498  41 82 00 4C */	beq .L_8039AF24
/* 8039AEDC 0036449C  4B FB DA D5 */	bl OSDisableInterrupts
/* 8039AEE0 003644A0  7C 7D 1B 78 */	mr r29, r3
/* 8039AEE4 003644A4  4B FC 07 0D */	bl OSDisableScheduler
/* 8039AEE8 003644A8  38 00 00 01 */	li r0, 1
/* 8039AEEC 003644AC  80 7F F0 38 */	lwz r3, adxm_main_thread@l(r31)
/* 8039AEF0 003644B0  90 1E 00 70 */	stw r0, 0x70(r30)
/* 8039AEF4 003644B4  4B FC 1A 5D */	bl OSGetThreadPriority
/* 8039AEF8 003644B8  7C 7C 1B 78 */	mr r28, r3
/* 8039AEFC 003644BC  80 7F F0 38 */	lwz r3, adxm_main_thread@l(r31)
/* 8039AF00 003644C0  7F 84 E3 78 */	mr r4, r28
/* 8039AF04 003644C4  4B FC 19 5D */	bl OSSetThreadPriority
/* 8039AF08 003644C8  3C 60 80 60 */	lis r3, adxm_main_thread_def_prio@ha
/* 8039AF0C 003644CC  38 00 00 00 */	li r0, 0
/* 8039AF10 003644D0  93 83 F0 3C */	stw r28, adxm_main_thread_def_prio@l(r3)
/* 8039AF14 003644D4  90 1E 00 70 */	stw r0, 0x70(r30)
/* 8039AF18 003644D8  4B FC 07 19 */	bl OSEnableScheduler
/* 8039AF1C 003644DC  7F A3 EB 78 */	mr r3, r29
/* 8039AF20 003644E0  4B FB DA D1 */	bl OSRestoreInterrupts
.L_8039AF24:
/* 8039AF24 003644E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039AF28 003644E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039AF2C 003644EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8039AF30 003644F0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8039AF34 003644F4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8039AF38 003644F8  7C 08 03 A6 */	mtlr r0
/* 8039AF3C 003644FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8039AF40 00364500  4E 80 00 20 */	blr 
.endfn adxm_create_base_thread

.fn ADXM_SetupThrd, global
/* 8039AF44 00364504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039AF48 00364508  7C 08 02 A6 */	mflr r0
/* 8039AF4C 0036450C  3C 80 80 52 */	lis r4, adxwii_build@ha
/* 8039AF50 00364510  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039AF54 00364514  80 04 CD 10 */	lwz r0, adxwii_build@l(r4)
/* 8039AF58 00364518  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039AF5C 0036451C  3F E0 80 5F */	lis r31, adxwii_exec_svr@ha
/* 8039AF60 00364520  3B FF 70 10 */	addi r31, r31, adxwii_exec_svr@l
/* 8039AF64 00364524  93 C1 00 08 */	stw r30, 8(r1)
/* 8039AF68 00364528  7C 7E 1B 78 */	mr r30, r3
/* 8039AF6C 0036452C  80 1F 00 04 */	lwz r0, 4(r31)
/* 8039AF70 00364530  2C 00 00 00 */	cmpwi r0, 0
/* 8039AF74 00364534  40 82 00 F8 */	bne .L_8039B06C
/* 8039AF78 00364538  4B FF C8 01 */	bl SVM_Init
/* 8039AF7C 0036453C  3C 60 80 3A */	lis r3, adxm_lock@ha
/* 8039AF80 00364540  38 80 00 00 */	li r4, 0
/* 8039AF84 00364544  38 63 AA 28 */	addi r3, r3, adxm_lock@l
/* 8039AF88 00364548  4B FF C5 89 */	bl SVM_SetCbLock
/* 8039AF8C 0036454C  3C 60 80 3A */	lis r3, adxm_unlock@ha
/* 8039AF90 00364550  38 80 00 00 */	li r4, 0
/* 8039AF94 00364554  38 63 AA D4 */	addi r3, r3, adxm_unlock@l
/* 8039AF98 00364558  4B FF C5 8D */	bl SVM_SetCbUnlock
/* 8039AF9C 0036455C  2C 1E 00 00 */	cmpwi r30, 0
/* 8039AFA0 00364560  40 82 00 3C */	bne .L_8039AFDC
/* 8039AFA4 00364564  38 C0 00 01 */	li r6, 1
/* 8039AFA8 00364568  38 FF 00 10 */	addi r7, r31, 0x10
/* 8039AFAC 0036456C  39 00 00 10 */	li r8, 0x10
/* 8039AFB0 00364570  38 A0 00 08 */	li r5, 8
/* 8039AFB4 00364574  38 80 00 0C */	li r4, 0xc
/* 8039AFB8 00364578  38 60 00 0E */	li r3, 0xe
/* 8039AFBC 0036457C  38 00 00 18 */	li r0, 0x18
/* 8039AFC0 00364580  91 07 00 14 */	stw r8, 0x14(r7)
/* 8039AFC4 00364584  90 DF 00 10 */	stw r6, 0x10(r31)
/* 8039AFC8 00364588  90 A7 00 04 */	stw r5, 4(r7)
/* 8039AFCC 0036458C  90 87 00 0C */	stw r4, 0xc(r7)
/* 8039AFD0 00364590  90 67 00 10 */	stw r3, 0x10(r7)
/* 8039AFD4 00364594  90 07 00 18 */	stw r0, 0x18(r7)
/* 8039AFD8 00364598  48 00 00 38 */	b .L_8039B010
.L_8039AFDC:
/* 8039AFDC 0036459C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8039AFE0 003645A0  38 7F 00 10 */	addi r3, r31, 0x10
/* 8039AFE4 003645A4  90 03 00 14 */	stw r0, 0x14(r3)
/* 8039AFE8 003645A8  80 1E 00 00 */	lwz r0, 0(r30)
/* 8039AFEC 003645AC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8039AFF0 003645B0  80 1E 00 04 */	lwz r0, 4(r30)
/* 8039AFF4 003645B4  90 03 00 04 */	stw r0, 4(r3)
/* 8039AFF8 003645B8  80 1E 00 08 */	lwz r0, 8(r30)
/* 8039AFFC 003645BC  90 03 00 0C */	stw r0, 0xc(r3)
/* 8039B000 003645C0  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8039B004 003645C4  90 03 00 10 */	stw r0, 0x10(r3)
/* 8039B008 003645C8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8039B00C 003645CC  90 03 00 18 */	stw r0, 0x18(r3)
.L_8039B010:
/* 8039B010 003645D0  4B FF FD ED */	bl adxm_create_base_thread
/* 8039B014 003645D4  38 80 00 01 */	li r4, 1
/* 8039B018 003645D8  38 00 00 00 */	li r0, 0
/* 8039B01C 003645DC  90 9F 09 E0 */	stw r4, 0x9e0(r31)
/* 8039B020 003645E0  38 7F 19 F8 */	addi r3, r31, 0x19f8
/* 8039B024 003645E4  90 9F 09 E8 */	stw r4, 0x9e8(r31)
/* 8039B028 003645E8  90 9F 09 D8 */	stw r4, 0x9d8(r31)
/* 8039B02C 003645EC  90 9F 09 D0 */	stw r4, 0x9d0(r31)
/* 8039B030 003645F0  90 1F 09 E4 */	stw r0, 0x9e4(r31)
/* 8039B034 003645F4  90 1F 03 90 */	stw r0, 0x390(r31)
/* 8039B038 003645F8  90 1F 09 DC */	stw r0, 0x9dc(r31)
/* 8039B03C 003645FC  90 1F 09 D4 */	stw r0, 0x9d4(r31)
/* 8039B040 00364600  90 1F 00 70 */	stw r0, 0x70(r31)
/* 8039B044 00364604  4B FC 11 FD */	bl OSResumeThread
/* 8039B048 00364608  38 7F 3D 10 */	addi r3, r31, 0x3d10
/* 8039B04C 0036460C  4B FC 11 F5 */	bl OSResumeThread
/* 8039B050 00364610  38 7F 03 98 */	addi r3, r31, 0x398
/* 8039B054 00364614  4B FC 11 ED */	bl OSResumeThread
/* 8039B058 00364618  3C 80 80 3A */	lis r4, adxm_goto_mwidle_border@ha
/* 8039B05C 0036461C  38 60 00 06 */	li r3, 6
/* 8039B060 00364620  38 84 AB 3C */	addi r4, r4, adxm_goto_mwidle_border@l
/* 8039B064 00364624  38 A0 00 00 */	li r5, 0
/* 8039B068 00364628  4B FF C2 89 */	bl SVM_SetCbBdr
.L_8039B06C:
/* 8039B06C 0036462C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8039B070 00364630  38 03 00 01 */	addi r0, r3, 1
/* 8039B074 00364634  90 1F 00 04 */	stw r0, 4(r31)
/* 8039B078 00364638  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039B07C 0036463C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8039B080 00364640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039B084 00364644  7C 08 03 A6 */	mtlr r0
/* 8039B088 00364648  38 21 00 10 */	addi r1, r1, 0x10
/* 8039B08C 0036464C  4E 80 00 20 */	blr 
.endfn ADXM_SetupThrd

.fn ADXM_ShutdownThrd, global
/* 8039B090 00364650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039B094 00364654  7C 08 02 A6 */	mflr r0
/* 8039B098 00364658  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039B09C 0036465C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039B0A0 00364660  3F E0 80 5F */	lis r31, adxwii_exec_svr@ha
/* 8039B0A4 00364664  3B FF 70 10 */	addi r31, r31, adxwii_exec_svr@l
/* 8039B0A8 00364668  93 C1 00 08 */	stw r30, 8(r1)
/* 8039B0AC 0036466C  80 1F 00 04 */	lwz r0, 4(r31)
/* 8039B0B0 00364670  34 00 FF FF */	addic. r0, r0, -1
/* 8039B0B4 00364674  90 1F 00 04 */	stw r0, 4(r31)
/* 8039B0B8 00364678  40 82 00 B8 */	bne .L_8039B170
/* 8039B0BC 0036467C  38 00 00 00 */	li r0, 0
/* 8039B0C0 00364680  38 7F 03 98 */	addi r3, r31, 0x398
/* 8039B0C4 00364684  90 1F 09 E8 */	stw r0, 0x9e8(r31)
/* 8039B0C8 00364688  38 80 00 01 */	li r4, 1
/* 8039B0CC 0036468C  4B FC 17 95 */	bl OSSetThreadPriority
/* 8039B0D0 00364690  48 00 00 0C */	b .L_8039B0DC
.L_8039B0D4:
/* 8039B0D4 00364694  38 7F 03 98 */	addi r3, r31, 0x398
/* 8039B0D8 00364698  4B FC 11 69 */	bl OSResumeThread
.L_8039B0DC:
/* 8039B0DC 0036469C  80 1F 03 90 */	lwz r0, 0x390(r31)
/* 8039B0E0 003646A0  2C 00 00 00 */	cmpwi r0, 0
/* 8039B0E4 003646A4  41 82 FF F0 */	beq .L_8039B0D4
/* 8039B0E8 003646A8  38 7F 19 F8 */	addi r3, r31, 0x19f8
/* 8039B0EC 003646AC  4B FC 0E 25 */	bl OSCancelThread
/* 8039B0F0 003646B0  38 7F 3D 10 */	addi r3, r31, 0x3d10
/* 8039B0F4 003646B4  4B FC 0E 1D */	bl OSCancelThread
/* 8039B0F8 003646B8  38 00 00 00 */	li r0, 0
/* 8039B0FC 003646BC  38 7F 00 78 */	addi r3, r31, 0x78
/* 8039B100 003646C0  90 1F 09 D0 */	stw r0, 0x9d0(r31)
/* 8039B104 003646C4  4B FC 11 3D */	bl OSResumeThread
/* 8039B108 003646C8  48 00 00 0C */	b .L_8039B114
.L_8039B10C:
/* 8039B10C 003646CC  38 7F 00 78 */	addi r3, r31, 0x78
/* 8039B110 003646D0  4B FC 11 31 */	bl OSResumeThread
.L_8039B114:
/* 8039B114 003646D4  80 1F 09 D4 */	lwz r0, 0x9d4(r31)
/* 8039B118 003646D8  2C 00 00 00 */	cmpwi r0, 0
/* 8039B11C 003646DC  41 82 FF F0 */	beq .L_8039B10C
/* 8039B120 003646E0  38 7F 00 10 */	addi r3, r31, 0x10
/* 8039B124 003646E4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8039B128 003646E8  2C 00 00 10 */	cmpwi r0, 0x10
/* 8039B12C 003646EC  41 82 00 40 */	beq .L_8039B16C
/* 8039B130 003646F0  4B FB D8 81 */	bl OSDisableInterrupts
/* 8039B134 003646F4  7C 7E 1B 78 */	mr r30, r3
/* 8039B138 003646F8  4B FC 04 B9 */	bl OSDisableScheduler
/* 8039B13C 003646FC  38 00 00 01 */	li r0, 1
/* 8039B140 00364700  3C 60 80 60 */	lis r3, adxm_main_thread@ha
/* 8039B144 00364704  3C 80 80 60 */	lis r4, adxm_main_thread_def_prio@ha
/* 8039B148 00364708  90 1F 00 70 */	stw r0, 0x70(r31)
/* 8039B14C 0036470C  80 63 F0 38 */	lwz r3, adxm_main_thread@l(r3)
/* 8039B150 00364710  80 84 F0 3C */	lwz r4, adxm_main_thread_def_prio@l(r4)
/* 8039B154 00364714  4B FC 17 0D */	bl OSSetThreadPriority
/* 8039B158 00364718  38 00 00 00 */	li r0, 0
/* 8039B15C 0036471C  90 1F 00 70 */	stw r0, 0x70(r31)
/* 8039B160 00364720  4B FC 04 D1 */	bl OSEnableScheduler
/* 8039B164 00364724  7F C3 F3 78 */	mr r3, r30
/* 8039B168 00364728  4B FB D8 89 */	bl OSRestoreInterrupts
.L_8039B16C:
/* 8039B16C 0036472C  4B FF C6 C5 */	bl SVM_Finish
.L_8039B170:
/* 8039B170 00364730  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039B174 00364734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039B178 00364738  83 C1 00 08 */	lwz r30, 8(r1)
/* 8039B17C 0036473C  7C 08 03 A6 */	mtlr r0
/* 8039B180 00364740  38 21 00 10 */	addi r1, r1, 0x10
/* 8039B184 00364744  4E 80 00 20 */	blr 
.endfn ADXM_ShutdownThrd

.fn ADXM_SetupFramework, global
/* 8039B188 00364748  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039B18C 0036474C  7C 08 02 A6 */	mflr r0
/* 8039B190 00364750  2C 03 00 01 */	cmpwi r3, 1
/* 8039B194 00364754  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039B198 00364758  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039B19C 0036475C  3B E0 00 01 */	li r31, 1
/* 8039B1A0 00364760  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8039B1A4 00364764  7C 9E 23 78 */	mr r30, r4
/* 8039B1A8 00364768  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8039B1AC 0036476C  7C 7D 1B 78 */	mr r29, r3
/* 8039B1B0 00364770  41 82 00 10 */	beq .L_8039B1C0
/* 8039B1B4 00364774  40 80 00 14 */	bge .L_8039B1C8
/* 8039B1B8 00364778  48 00 00 10 */	b .L_8039B1C8
/* 8039B1BC 0036477C  48 00 00 0C */	b .L_8039B1C8
.L_8039B1C0:
/* 8039B1C0 00364780  38 60 00 01 */	li r3, 1
/* 8039B1C4 00364784  48 00 00 08 */	b .L_8039B1CC
.L_8039B1C8:
/* 8039B1C8 00364788  38 60 00 02 */	li r3, 2
.L_8039B1CC:
/* 8039B1CC 0036478C  4B FE 47 BD */	bl ADXMNG_SetFramework
/* 8039B1D0 00364790  3C 60 80 60 */	lis r3, adxm_wii_framework@ha
/* 8039B1D4 00364794  2C 1D 00 01 */	cmpwi r29, 1
/* 8039B1D8 00364798  93 A3 13 5C */	stw r29, adxm_wii_framework@l(r3)
/* 8039B1DC 0036479C  41 82 00 2C */	beq .L_8039B208
/* 8039B1E0 003647A0  40 80 00 10 */	bge .L_8039B1F0
/* 8039B1E4 003647A4  2C 1D 00 00 */	cmpwi r29, 0
/* 8039B1E8 003647A8  40 80 00 10 */	bge .L_8039B1F8
/* 8039B1EC 003647AC  48 00 00 18 */	b .L_8039B204
.L_8039B1F0:
/* 8039B1F0 003647B0  2C 1D 00 03 */	cmpwi r29, 3
/* 8039B1F4 003647B4  40 80 00 10 */	bge .L_8039B204
.L_8039B1F8:
/* 8039B1F8 003647B8  7F C3 F3 78 */	mr r3, r30
/* 8039B1FC 003647BC  4B FF FD 49 */	bl ADXM_SetupThrd
/* 8039B200 003647C0  48 00 00 08 */	b .L_8039B208
.L_8039B204:
/* 8039B204 003647C4  3B E0 00 00 */	li r31, 0
.L_8039B208:
/* 8039B208 003647C8  7F E3 FB 78 */	mr r3, r31
/* 8039B20C 003647CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039B210 003647D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8039B214 003647D4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8039B218 003647D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039B21C 003647DC  7C 08 03 A6 */	mtlr r0
/* 8039B220 003647E0  38 21 00 20 */	addi r1, r1, 0x20
/* 8039B224 003647E4  4E 80 00 20 */	blr 
.endfn ADXM_SetupFramework

.fn ADXM_ShutdownFramework, global
/* 8039B228 003647E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039B22C 003647EC  7C 08 02 A6 */	mflr r0
/* 8039B230 003647F0  3C 60 80 60 */	lis r3, adxm_wii_framework@ha
/* 8039B234 003647F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039B238 003647F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039B23C 003647FC  3B E0 00 01 */	li r31, 1
/* 8039B240 00364800  80 03 13 5C */	lwz r0, adxm_wii_framework@l(r3)
/* 8039B244 00364804  2C 00 00 01 */	cmpwi r0, 1
/* 8039B248 00364808  41 82 00 28 */	beq .L_8039B270
/* 8039B24C 0036480C  40 80 00 10 */	bge .L_8039B25C
/* 8039B250 00364810  2C 00 00 00 */	cmpwi r0, 0
/* 8039B254 00364814  40 80 00 10 */	bge .L_8039B264
/* 8039B258 00364818  48 00 00 14 */	b .L_8039B26C
.L_8039B25C:
/* 8039B25C 0036481C  2C 00 00 03 */	cmpwi r0, 3
/* 8039B260 00364820  40 80 00 0C */	bge .L_8039B26C
.L_8039B264:
/* 8039B264 00364824  4B FF FE 2D */	bl ADXM_ShutdownThrd
/* 8039B268 00364828  48 00 00 08 */	b .L_8039B270
.L_8039B26C:
/* 8039B26C 0036482C  3B E0 00 00 */	li r31, 0
.L_8039B270:
/* 8039B270 00364830  38 60 FF FF */	li r3, -1
/* 8039B274 00364834  4B FE 47 15 */	bl ADXMNG_SetFramework
/* 8039B278 00364838  7F E3 FB 78 */	mr r3, r31
/* 8039B27C 0036483C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039B280 00364840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039B284 00364844  7C 08 03 A6 */	mtlr r0
/* 8039B288 00364848  38 21 00 10 */	addi r1, r1, 0x10
/* 8039B28C 0036484C  4E 80 00 20 */	blr
.endfn ADXM_ShutdownFramework

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_8051CCE0, global
	.asciz "\nADXWII Ver.1.04 Build:Nov 13 2008 10:53:01\n"
	.balign 4
.endobj lbl_8051CCE0


.obj adxwii_build, global
	.4byte lbl_8051CCE0
.endobj adxwii_build


.obj lbl_8051CD14, global
	.asciz "1060102: Internal Error: adxm_goto_mwidle_border"
	.balign 4
.endobj lbl_8051CD14

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj adxwii_exec_svr, global
	.skip 0x4
.endobj adxwii_exec_svr

.obj adxm_init_level, global
	.skip 0x4
.endobj adxm_init_level

.obj adxm_init_ex, global
	.skip 0x4
.endobj adxm_init_ex

.balign 8
.obj adxm_save_tprm, local
	.skip 0x30
.endobj adxm_save_tprm

.obj adxm_lock_level, global
	.skip 0x4
.endobj adxm_lock_level

.obj adxm_goto_border_flag, global
	.skip 0x4
.endobj adxm_goto_border_flag

.obj adxm_safe_cnt, global
	.skip 0x4
.endobj adxm_safe_cnt

.obj adxm_vsync_cnt, global
	.skip 0x4
.endobj adxm_vsync_cnt

.obj adxm_fs_cnt, global
	.skip 0x4
.endobj adxm_fs_cnt

.obj adxm_mwidle_cnt, global
	.skip 0x4
.endobj adxm_mwidle_cnt

.obj adxm_usrvsync_cnt, global
	.skip 0x4
.endobj adxm_usrvsync_cnt

.obj adxm_usridle_cnt, global
	.skip 0x4
.endobj adxm_usridle_cnt

.obj adxm_mwidle_exec_flag, global
	.skip 0x4
.endobj adxm_mwidle_exec_flag

.balign 8
.obj adxm_mwidle_sleep_cb, global
	.skip 0x8
.endobj adxm_mwidle_sleep_cb

.obj adxm_set_prio, global
	.skip 0x4
.endobj adxm_set_prio

.obj adxm_cur_prio, global
	.skip 0x4
.endobj adxm_cur_prio

.obj adxm_safe_thread, global
	.skip 0x318
.endobj adxm_safe_thread

.obj adxm_mwidle_end, global
	.skip 0x4
.endobj adxm_mwidle_end

.balign 8
.obj adxm_mwidle_thread, global
	.skip 0x318
.endobj adxm_mwidle_thread

.obj adxm_usridle_end, global
	.skip 0x4
.endobj adxm_usridle_end

.balign 8
.obj adxm_usridle_thread, global
	.skip 0x318
.endobj adxm_usridle_thread

.obj adxm_safe_act, global
	.skip 0x4
.endobj adxm_safe_act

.obj adxm_safe_end, global
	.skip 0x4
.endobj adxm_safe_end

.obj adxm_vsync_act, global
	.skip 0x4
.endobj adxm_vsync_act

.obj adxm_vsync_end, global
	.skip 0x4
.endobj adxm_vsync_end

.obj adxm_fs_act, global
	.skip 0x4
.endobj adxm_fs_act

.obj adxm_fs_end, global
	.skip 0x4
.endobj adxm_fs_end

.obj adxm_mwidle_act, global
	.skip 0x4
.endobj adxm_mwidle_act

.obj adxm_usrvsync_act, global
	.skip 0x4
.endobj adxm_usrvsync_act

.obj adxm_usridle_act, global
	.skip 0x4
.endobj adxm_usridle_act

.balign 8
.obj adxm_stack_safe, local
	.skip 0x1000
.endobj adxm_stack_safe

.obj adxm_vsync_thread, global
	.skip 0x318
.endobj adxm_vsync_thread

.obj adxm_stack_vsync, local
	.skip 0x2000
.endobj adxm_stack_vsync

.obj adxm_fs_thread, global
	.skip 0x318
.endobj adxm_fs_thread

.obj adxm_stack_fs, local
	.skip 0x2000
.endobj adxm_stack_fs

.obj adxm_stack_mwidle, local
	.skip 0x2000
.endobj adxm_stack_mwidle

.obj adxm_main_thread, global
	.skip 0x4
.endobj adxm_main_thread

.obj adxm_main_thread_def_prio, global
	.skip 0x4
.endobj adxm_main_thread_def_prio

.obj adxm_stack_usrvsync, local
	.skip 0x1000
.endobj adxm_stack_usrvsync

.obj adxm_stack_usridle, local
	.skip 0x1000
.endobj adxm_stack_usridle

.obj adxm_usrvsync_thread, global
	.skip 0x318
.endobj adxm_usrvsync_thread

.obj adxm_usrvsync_end, global
	.skip 0x4
.endobj adxm_usrvsync_end

.obj adxm_wii_framework, global
	.skip 0x4
.endobj adxm_wii_framework
