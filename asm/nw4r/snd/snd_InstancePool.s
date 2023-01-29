.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

# nw4r::snd::detail::PoolImpl::CreateImpl(void*, unsigned long, unsigned long)
.fn CreateImpl__Q44nw4r3snd6detail8PoolImplFPvUlUl, global
/* 80416CA8 003E0268  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80416CAC 003E026C  7C 08 02 A6 */	mflr r0
/* 80416CB0 003E0270  90 01 00 24 */	stw r0, 0x24(r1)
/* 80416CB4 003E0274  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80416CB8 003E0278  7C 7F 1B 78 */	mr r31, r3
/* 80416CBC 003E027C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80416CC0 003E0280  7C DE 33 78 */	mr r30, r6
/* 80416CC4 003E0284  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80416CC8 003E0288  7C BD 2B 78 */	mr r29, r5
/* 80416CCC 003E028C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80416CD0 003E0290  7C 9C 23 78 */	mr r28, r4
/* 80416CD4 003E0294  4B F4 1C DD */	bl OSDisableInterrupts
/* 80416CD8 003E0298  38 1C 00 03 */	addi r0, r28, 0x3
/* 80416CDC 003E029C  38 9E 00 03 */	addi r4, r30, 0x3
/* 80416CE0 003E02A0  54 06 00 3A */	clrrwi r6, r0, 2
/* 80416CE4 003E02A4  38 E0 00 00 */	li r7, 0x0
/* 80416CE8 003E02A8  7C 1C 30 50 */	subf r0, r28, r6
/* 80416CEC 003E02AC  54 84 00 3A */	clrrwi r4, r4, 2
/* 80416CF0 003E02B0  7C 00 E8 50 */	subf r0, r0, r29
/* 80416CF4 003E02B4  7F C0 23 97 */	divwu. r30, r0, r4
/* 80416CF8 003E02B8  41 82 00 CC */	beq .L_80416DC4
/* 80416CFC 003E02BC  28 1E 00 08 */	cmplwi r30, 0x8
/* 80416D00 003E02C0  38 BE FF F8 */	addi r5, r30, -0x8
/* 80416D04 003E02C4  40 81 00 9C */	ble .L_80416DA0
/* 80416D08 003E02C8  38 05 00 07 */	addi r0, r5, 0x7
/* 80416D0C 003E02CC  54 00 E8 FE */	srwi r0, r0, 3
/* 80416D10 003E02D0  7C 09 03 A6 */	mtctr r0
/* 80416D14 003E02D4  28 05 00 00 */	cmplwi r5, 0x0
/* 80416D18 003E02D8  40 81 00 88 */	ble .L_80416DA0
.L_80416D1C:
/* 80416D1C 003E02DC  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 80416D20 003E02E0  7C C8 33 78 */	mr r8, r6
/* 80416D24 003E02E4  38 E7 00 08 */	addi r7, r7, 0x8
/* 80416D28 003E02E8  90 06 00 00 */	stw r0, 0x0(r6)
/* 80416D2C 003E02EC  90 DF 00 00 */	stw r6, 0x0(r31)
/* 80416D30 003E02F0  7C C6 22 14 */	add r6, r6, r4
/* 80416D34 003E02F4  7C C5 33 78 */	mr r5, r6
/* 80416D38 003E02F8  91 06 00 00 */	stw r8, 0x0(r6)
/* 80416D3C 003E02FC  90 DF 00 00 */	stw r6, 0x0(r31)
/* 80416D40 003E0300  7C C6 22 14 */	add r6, r6, r4
/* 80416D44 003E0304  7C C0 33 78 */	mr r0, r6
/* 80416D48 003E0308  90 A6 00 00 */	stw r5, 0x0(r6)
/* 80416D4C 003E030C  90 DF 00 00 */	stw r6, 0x0(r31)
/* 80416D50 003E0310  7C C6 22 14 */	add r6, r6, r4
/* 80416D54 003E0314  7C C5 33 78 */	mr r5, r6
/* 80416D58 003E0318  90 06 00 00 */	stw r0, 0x0(r6)
/* 80416D5C 003E031C  90 DF 00 00 */	stw r6, 0x0(r31)
/* 80416D60 003E0320  7C C6 22 14 */	add r6, r6, r4
/* 80416D64 003E0324  7C C0 33 78 */	mr r0, r6
/* 80416D68 003E0328  90 A6 00 00 */	stw r5, 0x0(r6)
/* 80416D6C 003E032C  90 DF 00 00 */	stw r6, 0x0(r31)
/* 80416D70 003E0330  7C C6 22 14 */	add r6, r6, r4
/* 80416D74 003E0334  7C C5 33 78 */	mr r5, r6
/* 80416D78 003E0338  90 06 00 00 */	stw r0, 0x0(r6)
/* 80416D7C 003E033C  90 DF 00 00 */	stw r6, 0x0(r31)
/* 80416D80 003E0340  7C C6 22 14 */	add r6, r6, r4
/* 80416D84 003E0344  7C C0 33 78 */	mr r0, r6
/* 80416D88 003E0348  90 A6 00 00 */	stw r5, 0x0(r6)
/* 80416D8C 003E034C  90 DF 00 00 */	stw r6, 0x0(r31)
/* 80416D90 003E0350  7C 06 21 6E */	stwux r0, r6, r4
/* 80416D94 003E0354  90 DF 00 00 */	stw r6, 0x0(r31)
/* 80416D98 003E0358  7C C6 22 14 */	add r6, r6, r4
/* 80416D9C 003E035C  42 00 FF 80 */	bdnz .L_80416D1C
.L_80416DA0:
/* 80416DA0 003E0360  7C 07 F0 50 */	subf r0, r7, r30
/* 80416DA4 003E0364  7C 09 03 A6 */	mtctr r0
/* 80416DA8 003E0368  7C 07 F0 40 */	cmplw r7, r30
/* 80416DAC 003E036C  40 80 00 18 */	bge .L_80416DC4
.L_80416DB0:
/* 80416DB0 003E0370  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 80416DB4 003E0374  90 06 00 00 */	stw r0, 0x0(r6)
/* 80416DB8 003E0378  90 DF 00 00 */	stw r6, 0x0(r31)
/* 80416DBC 003E037C  7C C6 22 14 */	add r6, r6, r4
/* 80416DC0 003E0380  42 00 FF F0 */	bdnz .L_80416DB0
.L_80416DC4:
/* 80416DC4 003E0384  4B F4 1C 2D */	bl OSRestoreInterrupts
/* 80416DC8 003E0388  7F C3 F3 78 */	mr r3, r30
/* 80416DCC 003E038C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80416DD0 003E0390  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80416DD4 003E0394  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80416DD8 003E0398  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80416DDC 003E039C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80416DE0 003E03A0  7C 08 03 A6 */	mtlr r0
/* 80416DE4 003E03A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80416DE8 003E03A8  4E 80 00 20 */	blr
.endfn CreateImpl__Q44nw4r3snd6detail8PoolImplFPvUlUl

# nw4r::snd::detail::PoolImpl::DestroyImpl(void*, unsigned long)
.fn DestroyImpl__Q44nw4r3snd6detail8PoolImplFPvUl, global
/* 80416DEC 003E03AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80416DF0 003E03B0  7C 08 02 A6 */	mflr r0
/* 80416DF4 003E03B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80416DF8 003E03B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80416DFC 003E03BC  7C BF 2B 78 */	mr r31, r5
/* 80416E00 003E03C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80416E04 003E03C4  7C 9E 23 78 */	mr r30, r4
/* 80416E08 003E03C8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80416E0C 003E03CC  7C 7D 1B 78 */	mr r29, r3
/* 80416E10 003E03D0  4B F4 1B A1 */	bl OSDisableInterrupts
/* 80416E14 003E03D4  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 80416E18 003E03D8  7C 9E FA 14 */	add r4, r30, r31
/* 80416E1C 003E03DC  48 00 00 28 */	b .L_80416E44
.L_80416E20:
/* 80416E20 003E03E0  7C 1E 28 40 */	cmplw r30, r5
/* 80416E24 003E03E4  41 81 00 18 */	bgt .L_80416E3C
/* 80416E28 003E03E8  7C 05 20 40 */	cmplw r5, r4
/* 80416E2C 003E03EC  40 80 00 10 */	bge .L_80416E3C
/* 80416E30 003E03F0  80 05 00 00 */	lwz r0, 0x0(r5)
/* 80416E34 003E03F4  90 1D 00 00 */	stw r0, 0x0(r29)
/* 80416E38 003E03F8  48 00 00 08 */	b .L_80416E40
.L_80416E3C:
/* 80416E3C 003E03FC  7C BD 2B 78 */	mr r29, r5
.L_80416E40:
/* 80416E40 003E0400  80 A5 00 00 */	lwz r5, 0x0(r5)
.L_80416E44:
/* 80416E44 003E0404  2C 05 00 00 */	cmpwi r5, 0x0
/* 80416E48 003E0408  40 82 FF D8 */	bne .L_80416E20
/* 80416E4C 003E040C  4B F4 1B A5 */	bl OSRestoreInterrupts
/* 80416E50 003E0410  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80416E54 003E0414  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80416E58 003E0418  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80416E5C 003E041C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80416E60 003E0420  7C 08 03 A6 */	mtlr r0
/* 80416E64 003E0424  38 21 00 20 */	addi r1, r1, 0x20
/* 80416E68 003E0428  4E 80 00 20 */	blr
.endfn DestroyImpl__Q44nw4r3snd6detail8PoolImplFPvUl

# nw4r::snd::detail::PoolImpl::CountImpl() const
.fn CountImpl__Q44nw4r3snd6detail8PoolImplCFv, global
/* 80416E6C 003E042C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80416E70 003E0430  7C 08 02 A6 */	mflr r0
/* 80416E74 003E0434  90 01 00 14 */	stw r0, 0x14(r1)
/* 80416E78 003E0438  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80416E7C 003E043C  7C 7F 1B 78 */	mr r31, r3
/* 80416E80 003E0440  4B F4 1B 31 */	bl OSDisableInterrupts
/* 80416E84 003E0444  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 80416E88 003E0448  3B E0 00 00 */	li r31, 0x0
/* 80416E8C 003E044C  48 00 00 0C */	b .L_80416E98
.L_80416E90:
/* 80416E90 003E0450  80 84 00 00 */	lwz r4, 0x0(r4)
/* 80416E94 003E0454  3B FF 00 01 */	addi r31, r31, 0x1
.L_80416E98:
/* 80416E98 003E0458  2C 04 00 00 */	cmpwi r4, 0x0
/* 80416E9C 003E045C  40 82 FF F4 */	bne .L_80416E90
/* 80416EA0 003E0460  4B F4 1B 51 */	bl OSRestoreInterrupts
/* 80416EA4 003E0464  7F E3 FB 78 */	mr r3, r31
/* 80416EA8 003E0468  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80416EAC 003E046C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80416EB0 003E0470  7C 08 03 A6 */	mtlr r0
/* 80416EB4 003E0474  38 21 00 10 */	addi r1, r1, 0x10
/* 80416EB8 003E0478  4E 80 00 20 */	blr
.endfn CountImpl__Q44nw4r3snd6detail8PoolImplCFv

# nw4r::snd::detail::PoolImpl::AllocImpl()
.fn AllocImpl__Q44nw4r3snd6detail8PoolImplFv, global
/* 80416EBC 003E047C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80416EC0 003E0480  7C 08 02 A6 */	mflr r0
/* 80416EC4 003E0484  90 01 00 14 */	stw r0, 0x14(r1)
/* 80416EC8 003E0488  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80416ECC 003E048C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80416ED0 003E0490  7C 7E 1B 78 */	mr r30, r3
/* 80416ED4 003E0494  4B F4 1A DD */	bl OSDisableInterrupts
/* 80416ED8 003E0498  83 FE 00 00 */	lwz r31, 0x0(r30)
/* 80416EDC 003E049C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80416EE0 003E04A0  40 82 00 10 */	bne .L_80416EF0
/* 80416EE4 003E04A4  4B F4 1B 0D */	bl OSRestoreInterrupts
/* 80416EE8 003E04A8  38 60 00 00 */	li r3, 0x0
/* 80416EEC 003E04AC  48 00 00 14 */	b .L_80416F00
.L_80416EF0:
/* 80416EF0 003E04B0  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 80416EF4 003E04B4  90 1E 00 00 */	stw r0, 0x0(r30)
/* 80416EF8 003E04B8  4B F4 1A F9 */	bl OSRestoreInterrupts
/* 80416EFC 003E04BC  7F E3 FB 78 */	mr r3, r31
.L_80416F00:
/* 80416F00 003E04C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80416F04 003E04C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80416F08 003E04C8  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80416F0C 003E04CC  7C 08 03 A6 */	mtlr r0
/* 80416F10 003E04D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80416F14 003E04D4  4E 80 00 20 */	blr
.endfn AllocImpl__Q44nw4r3snd6detail8PoolImplFv

# nw4r::snd::detail::PoolImpl::FreeImpl(void*)
.fn FreeImpl__Q44nw4r3snd6detail8PoolImplFPv, global
/* 80416F18 003E04D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80416F1C 003E04DC  7C 08 02 A6 */	mflr r0
/* 80416F20 003E04E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80416F24 003E04E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80416F28 003E04E8  7C 9F 23 78 */	mr r31, r4
/* 80416F2C 003E04EC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80416F30 003E04F0  7C 7E 1B 78 */	mr r30, r3
/* 80416F34 003E04F4  4B F4 1A 7D */	bl OSDisableInterrupts
/* 80416F38 003E04F8  80 1E 00 00 */	lwz r0, 0x0(r30)
/* 80416F3C 003E04FC  90 1F 00 00 */	stw r0, 0x0(r31)
/* 80416F40 003E0500  93 FE 00 00 */	stw r31, 0x0(r30)
/* 80416F44 003E0504  4B F4 1A AD */	bl OSRestoreInterrupts
/* 80416F48 003E0508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80416F4C 003E050C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80416F50 003E0510  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80416F54 003E0514  7C 08 03 A6 */	mtlr r0
/* 80416F58 003E0518  38 21 00 10 */	addi r1, r1, 0x10
/* 80416F5C 003E051C  4E 80 00 20 */	blr
.endfn FreeImpl__Q44nw4r3snd6detail8PoolImplFPv
