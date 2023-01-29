.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn SetUseSerialIO, global
/* 802D05C4 00299B84  98 6D B4 28 */	stb r3, bUseSerialIO@sda21(r13)
/* 802D05C8 00299B88  4E 80 00 20 */	blr
.endfn SetUseSerialIO

.fn GetUseSerialIO, global
/* 802D05CC 00299B8C  88 6D B4 28 */	lbz r3, bUseSerialIO@sda21(r13)
/* 802D05D0 00299B90  4E 80 00 20 */	blr
.endfn GetUseSerialIO

# 0x806675A8 - 0x806675B0
.section .sbss, "wa", @nobits
.balign 8

bUseSerialIO:
	.skip 0x1
	.skip 0x7
