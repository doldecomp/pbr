.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global MPiStartupWD
MPiStartupWD:
/* 802F0C30 002EC890  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F0C34 002EC894  7C 08 02 A6 */	mflr r0
/* 802F0C38 002EC898  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F0C3C 002EC89C  39 61 00 20 */	addi r11, r1, 0x20
/* 802F0C40 002EC8A0  4B ED 64 E5 */	bl _savegpr_26
/* 802F0C44 002EC8A4  80 62 AA 30 */	lwz r3, lbl_80643030-_SDA2_BASE_(r2)
/* 802F0C48 002EC8A8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802F0C4C 002EC8AC  2C 00 00 01 */	cmpwi r0, 1
/* 802F0C50 002EC8B0  41 82 00 14 */	beq lbl_802F0C64
/* 802F0C54 002EC8B4  48 00 00 08 */	b lbl_802F0C5C
/* 802F0C58 002EC8B8  48 00 00 0C */	b lbl_802F0C64
lbl_802F0C5C:
/* 802F0C5C 002EC8BC  38 60 FF 01 */	li r3, -255
/* 802F0C60 002EC8C0  48 00 00 FC */	b lbl_802F0D5C
lbl_802F0C64:
/* 802F0C64 002EC8C4  4B F8 1B 55 */	bl OSGetTime
/* 802F0C68 002EC8C8  3F E0 80 00 */	lis r31, 0x800000F8@ha
/* 802F0C6C 002EC8CC  3C A0 10 62 */	lis r5, 0x10624DD3@ha
/* 802F0C70 002EC8D0  80 DF 00 F8 */	lwz r6, 0x800000F8@l(r31)
/* 802F0C74 002EC8D4  3B C5 4D D3 */	addi r30, r5, 0x10624DD3@l
/* 802F0C78 002EC8D8  38 00 00 00 */	li r0, 0
/* 802F0C7C 002EC8DC  3B 60 00 0A */	li r27, 0xa
/* 802F0C80 002EC8E0  54 C5 F0 BE */	srwi r5, r6, 2
/* 802F0C84 002EC8E4  7C BE 28 16 */	mulhwu r5, r30, r5
/* 802F0C88 002EC8E8  7F 80 D9 D6 */	mullw r28, r0, r27
/* 802F0C8C 002EC8EC  54 A5 D1 BE */	srwi r5, r5, 6
/* 802F0C90 002EC8F0  1C A5 75 30 */	mulli r5, r5, 0x7530
/* 802F0C94 002EC8F4  7F 45 20 14 */	addc r26, r5, r4
/* 802F0C98 002EC8F8  7C 00 19 14 */	adde r0, r0, r3
/* 802F0C9C 002EC8FC  6C 1D 80 00 */	xoris r29, r0, 0x8000
lbl_802F0CA0:
/* 802F0CA0 002EC900  38 60 00 01 */	li r3, 1
/* 802F0CA4 002EC904  4B FF D8 45 */	bl WD_Startup
/* 802F0CA8 002EC908  2C 03 FF FA */	cmpwi r3, -6
/* 802F0CAC 002EC90C  40 82 00 48 */	bne lbl_802F0CF4
/* 802F0CB0 002EC910  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 802F0CB4 002EC914  54 00 F0 BE */	srwi r0, r0, 2
/* 802F0CB8 002EC918  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 802F0CBC 002EC91C  54 03 D1 BE */	srwi r3, r0, 6
/* 802F0CC0 002EC920  7C 03 D8 16 */	mulhwu r0, r3, r27
/* 802F0CC4 002EC924  1C 83 00 0A */	mulli r4, r3, 0xa
/* 802F0CC8 002EC928  7C 60 E2 14 */	add r3, r0, r28
/* 802F0CCC 002EC92C  4B F8 1A 39 */	bl OSSleepTicks
/* 802F0CD0 002EC930  4B F8 1A E9 */	bl OSGetTime
/* 802F0CD4 002EC934  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802F0CD8 002EC938  7C 04 D0 10 */	subfc r0, r4, r26
/* 802F0CDC 002EC93C  7C 63 E9 10 */	subfe r3, r3, r29
/* 802F0CE0 002EC940  7C 7D E9 10 */	subfe r3, r29, r29
/* 802F0CE4 002EC944  7C 63 00 D1 */	neg. r3, r3
/* 802F0CE8 002EC948  41 82 FF B8 */	beq lbl_802F0CA0
/* 802F0CEC 002EC94C  38 60 FF 15 */	li r3, -235
/* 802F0CF0 002EC950  48 00 00 6C */	b lbl_802F0D5C
lbl_802F0CF4:
/* 802F0CF4 002EC954  2C 03 00 00 */	cmpwi r3, 0
/* 802F0CF8 002EC958  40 80 00 08 */	bge lbl_802F0D00
/* 802F0CFC 002EC95C  48 00 00 60 */	b lbl_802F0D5C
lbl_802F0D00:
/* 802F0D00 002EC960  3F C0 80 58 */	lis r30, lbl_805790C0@ha
/* 802F0D04 002EC964  38 7E 90 C0 */	addi r3, r30, lbl_805790C0@l
/* 802F0D08 002EC968  4B FF D5 B1 */	bl WD_GetInfo
/* 802F0D0C 002EC96C  2C 03 00 00 */	cmpwi r3, 0
/* 802F0D10 002EC970  40 80 00 08 */	bge lbl_802F0D18
/* 802F0D14 002EC974  48 00 00 28 */	b lbl_802F0D3C
lbl_802F0D18:
/* 802F0D18 002EC978  80 62 AA 30 */	lwz r3, lbl_80643030-_SDA2_BASE_(r2)
/* 802F0D1C 002EC97C  38 9E 90 C0 */	addi r4, r30, -28480
/* 802F0D20 002EC980  38 A0 00 06 */	li r5, 6
/* 802F0D24 002EC984  38 63 57 6C */	addi r3, r3, 0x576c
/* 802F0D28 002EC988  4B D1 32 D9 */	bl memcpy
/* 802F0D2C 002EC98C  38 9E 90 C0 */	addi r4, r30, -28480
/* 802F0D30 002EC990  80 62 AA 30 */	lwz r3, lbl_80643030-_SDA2_BASE_(r2)
/* 802F0D34 002EC994  A0 04 00 08 */	lhz r0, 8(r4)
/* 802F0D38 002EC998  90 03 57 68 */	stw r0, 0x5768(r3)
lbl_802F0D3C:
/* 802F0D3C 002EC99C  48 00 03 41 */	bl StartParent
/* 802F0D40 002EC9A0  2C 03 00 00 */	cmpwi r3, 0
/* 802F0D44 002EC9A4  7C 7A 1B 78 */	mr r26, r3
/* 802F0D48 002EC9A8  40 80 00 10 */	bge lbl_802F0D58
/* 802F0D4C 002EC9AC  4B FF D8 81 */	bl WD_Cleanup
/* 802F0D50 002EC9B0  7F 43 D3 78 */	mr r3, r26
/* 802F0D54 002EC9B4  48 00 00 08 */	b lbl_802F0D5C
lbl_802F0D58:
/* 802F0D58 002EC9B8  38 60 00 00 */	li r3, 0
lbl_802F0D5C:
/* 802F0D5C 002EC9BC  39 61 00 20 */	addi r11, r1, 0x20
/* 802F0D60 002EC9C0  4B ED 64 11 */	bl _restgpr_26
/* 802F0D64 002EC9C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F0D68 002EC9C8  7C 08 03 A6 */	mtlr r0
/* 802F0D6C 002EC9CC  38 21 00 20 */	addi r1, r1, 0x20
/* 802F0D70 002EC9D0  4E 80 00 20 */	blr

.global MPiCleanupWD
MPiCleanupWD:
/* 802F0D74 002EC9D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F0D78 002EC9D8  7C 08 02 A6 */	mflr r0
/* 802F0D7C 002EC9DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F0D80 002EC9E0  39 61 00 20 */	addi r11, r1, 0x20
/* 802F0D84 002EC9E4  4B ED 63 A1 */	bl _savegpr_26
/* 802F0D88 002EC9E8  80 62 AA 30 */	lwz r3, lbl_80643030-_SDA2_BASE_(r2)
/* 802F0D8C 002EC9EC  3B 40 00 00 */	li r26, 0
/* 802F0D90 002EC9F0  7C 03 D0 40 */	cmplw r3, r26
/* 802F0D94 002EC9F4  41 82 01 24 */	beq lbl_802F0EB8
/* 802F0D98 002EC9F8  3B 63 55 E0 */	addi r27, r3, 0x55e0
/* 802F0D9C 002EC9FC  93 43 00 24 */	stw r26, 0x24(r3)
/* 802F0DA0 002ECA00  38 80 00 00 */	li r4, 0
/* 802F0DA4 002ECA04  38 A0 01 80 */	li r5, 0x180
/* 802F0DA8 002ECA08  7F 63 DB 78 */	mr r3, r27
/* 802F0DAC 002ECA0C  4B D1 33 59 */	bl memset
/* 802F0DB0 002ECA10  38 00 00 04 */	li r0, 4
/* 802F0DB4 002ECA14  3C 80 00 03 */	lis r4, 0x0003007F@ha
/* 802F0DB8 002ECA18  B0 1B 00 AC */	sth r0, 0xac(r27)
/* 802F0DBC 002ECA1C  7F 63 DB 78 */	mr r3, r27
/* 802F0DC0 002ECA20  80 E2 AA 30 */	lwz r7, lbl_80643030-_SDA2_BASE_(r2)
/* 802F0DC4 002ECA24  38 A4 00 7F */	addi r5, r4, 0x0003007F@l
/* 802F0DC8 002ECA28  38 C0 00 00 */	li r6, 0
/* 802F0DCC 002ECA2C  80 07 00 20 */	lwz r0, 0x20(r7)
/* 802F0DD0 002ECA30  B0 1B 00 AE */	sth r0, 0xae(r27)
/* 802F0DD4 002ECA34  80 07 00 24 */	lwz r0, 0x24(r7)
/* 802F0DD8 002ECA38  98 1B 00 B0 */	stb r0, 0xb0(r27)
/* 802F0DDC 002ECA3C  B3 5B 00 B2 */	sth r26, 0xb2(r27)
/* 802F0DE0 002ECA40  B3 5B 01 38 */	sth r26, 0x138(r27)
/* 802F0DE4 002ECA44  9B 5B 00 B1 */	stb r26, 0xb1(r27)
/* 802F0DE8 002ECA48  80 07 00 18 */	lwz r0, 0x18(r7)
/* 802F0DEC 002ECA4C  98 1B 00 B4 */	stb r0, 0xb4(r27)
/* 802F0DF0 002ECA50  4B FF D0 FD */	bl WD_SetConfig
/* 802F0DF4 002ECA54  2C 03 00 00 */	cmpwi r3, 0
/* 802F0DF8 002ECA58  38 60 00 00 */	li r3, 0
/* 802F0DFC 002ECA5C  48 00 05 0D */	bl MPSetEntryFlag
/* 802F0E00 002ECA60  2C 03 00 00 */	cmpwi r3, 0
/* 802F0E04 002ECA64  40 82 00 08 */	bne lbl_802F0E0C
/* 802F0E08 002ECA68  48 00 2F 39 */	bl func_802F3D40
lbl_802F0E0C:
/* 802F0E0C 002ECA6C  83 42 AA 30 */	lwz r26, lbl_80643030-_SDA2_BASE_(r2)
/* 802F0E10 002ECA70  3B 60 00 00 */	li r27, 0
/* 802F0E14 002ECA74  3B 80 00 00 */	li r28, 0
/* 802F0E18 002ECA78  3B C0 00 00 */	li r30, 0
/* 802F0E1C 002ECA7C  83 BA 57 60 */	lwz r29, 0x5760(r26)
lbl_802F0E20:
/* 802F0E20 002ECA80  7C 1C E8 40 */	cmplw r28, r29
/* 802F0E24 002ECA84  41 82 00 20 */	beq lbl_802F0E44
/* 802F0E28 002ECA88  7C 7A F2 14 */	add r3, r26, r30
/* 802F0E2C 002ECA8C  38 82 AA 38 */	addi r4, r2, lbl_80643038-_SDA2_BASE_
/* 802F0E30 002ECA90  38 63 57 72 */	addi r3, r3, 0x5772
/* 802F0E34 002ECA94  4B FF FC E1 */	bl MPiIsEqualMacAddress
/* 802F0E38 002ECA98  2C 03 00 00 */	cmpwi r3, 0
/* 802F0E3C 002ECA9C  40 82 00 08 */	bne lbl_802F0E44
/* 802F0E40 002ECAA0  3B 7B 00 01 */	addi r27, r27, 1
lbl_802F0E44:
/* 802F0E44 002ECAA4  3B 9C 00 01 */	addi r28, r28, 1
/* 802F0E48 002ECAA8  3B DE 00 06 */	addi r30, r30, 6
/* 802F0E4C 002ECAAC  28 1C 00 10 */	cmplwi r28, 0x10
/* 802F0E50 002ECAB0  41 80 FF D0 */	blt lbl_802F0E20
/* 802F0E54 002ECAB4  80 62 AA 30 */	lwz r3, lbl_80643030-_SDA2_BASE_(r2)
/* 802F0E58 002ECAB8  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802F0E5C 002ECABC  7F 40 D9 D6 */	mullw r26, r0, r27
/* 802F0E60 002ECAC0  2C 1A 02 58 */	cmpwi r26, 0x258
/* 802F0E64 002ECAC4  40 80 00 08 */	bge lbl_802F0E6C
/* 802F0E68 002ECAC8  3B 40 02 58 */	li r26, 0x258
lbl_802F0E6C:
/* 802F0E6C 002ECACC  2C 1A 0F A0 */	cmpwi r26, 0xfa0
/* 802F0E70 002ECAD0  40 81 00 08 */	ble lbl_802F0E78
/* 802F0E74 002ECAD4  3B 40 0F A0 */	li r26, 0xfa0
lbl_802F0E78:
/* 802F0E78 002ECAD8  48 00 0D A5 */	bl func_802F1C1C
/* 802F0E7C 002ECADC  3C 80 80 00 */	lis r4, 0x800000F8@ha
/* 802F0E80 002ECAE0  3C 60 10 62 */	lis r3, 0x10624DD3@ha
/* 802F0E84 002ECAE4  80 04 00 F8 */	lwz r0, 0x800000F8@l(r4)
/* 802F0E88 002ECAE8  38 63 4D D3 */	addi r3, r3, 0x10624DD3@l
/* 802F0E8C 002ECAEC  38 80 00 00 */	li r4, 0
/* 802F0E90 002ECAF0  54 00 F0 BE */	srwi r0, r0, 2
/* 802F0E94 002ECAF4  7C 63 00 16 */	mulhwu r3, r3, r0
/* 802F0E98 002ECAF8  7C 1A 21 D6 */	mullw r0, r26, r4
/* 802F0E9C 002ECAFC  54 65 D1 BE */	srwi r5, r3, 6
/* 802F0EA0 002ECB00  7C 7A 28 16 */	mulhwu r3, r26, r5
/* 802F0EA4 002ECB04  7C 84 29 D6 */	mullw r4, r4, r5
/* 802F0EA8 002ECB08  7C 63 22 14 */	add r3, r3, r4
/* 802F0EAC 002ECB0C  7C 9A 29 D6 */	mullw r4, r26, r5
/* 802F0EB0 002ECB10  7C 63 02 14 */	add r3, r3, r0
/* 802F0EB4 002ECB14  4B F8 18 51 */	bl OSSleepTicks
lbl_802F0EB8:
/* 802F0EB8 002ECB18  4B FF D0 21 */	bl WD_GetLinkState
/* 802F0EBC 002ECB1C  2C 03 00 01 */	cmpwi r3, 1
/* 802F0EC0 002ECB20  40 82 00 A4 */	bne lbl_802F0F64
/* 802F0EC4 002ECB24  38 60 00 00 */	li r3, 0
/* 802F0EC8 002ECB28  4B FF CF 89 */	bl WD_SetLinkState
/* 802F0ECC 002ECB2C  2C 03 00 00 */	cmpwi r3, 0
/* 802F0ED0 002ECB30  40 80 00 08 */	bge lbl_802F0ED8
/* 802F0ED4 002ECB34  48 00 00 90 */	b lbl_802F0F64
lbl_802F0ED8:
/* 802F0ED8 002ECB38  4B F8 18 E1 */	bl OSGetTime
/* 802F0EDC 002ECB3C  3F E0 80 00 */	lis r31, 0x800000F8@ha
/* 802F0EE0 002ECB40  3C A0 10 62 */	lis r5, 0x10624DD3@ha
/* 802F0EE4 002ECB44  80 DF 00 F8 */	lwz r6, 0x800000F8@l(r31)
/* 802F0EE8 002ECB48  3B C5 4D D3 */	addi r30, r5, 0x10624DD3@l
/* 802F0EEC 002ECB4C  38 00 00 00 */	li r0, 0
/* 802F0EF0 002ECB50  3B 60 00 0A */	li r27, 0xa
/* 802F0EF4 002ECB54  54 C5 F0 BE */	srwi r5, r6, 2
/* 802F0EF8 002ECB58  7C BE 28 16 */	mulhwu r5, r30, r5
/* 802F0EFC 002ECB5C  7F 80 D9 D6 */	mullw r28, r0, r27
/* 802F0F00 002ECB60  54 A5 D1 BE */	srwi r5, r5, 6
/* 802F0F04 002ECB64  1C A5 75 30 */	mulli r5, r5, 0x7530
/* 802F0F08 002ECB68  7F 45 20 14 */	addc r26, r5, r4
/* 802F0F0C 002ECB6C  7C 00 19 14 */	adde r0, r0, r3
/* 802F0F10 002ECB70  6C 1D 80 00 */	xoris r29, r0, 0x8000
/* 802F0F14 002ECB74  48 00 00 44 */	b lbl_802F0F58
lbl_802F0F18:
/* 802F0F18 002ECB78  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 802F0F1C 002ECB7C  54 00 F0 BE */	srwi r0, r0, 2
/* 802F0F20 002ECB80  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 802F0F24 002ECB84  54 03 D1 BE */	srwi r3, r0, 6
/* 802F0F28 002ECB88  7C 03 D8 16 */	mulhwu r0, r3, r27
/* 802F0F2C 002ECB8C  1C 83 00 0A */	mulli r4, r3, 0xa
/* 802F0F30 002ECB90  7C 60 E2 14 */	add r3, r0, r28
/* 802F0F34 002ECB94  4B F8 17 D1 */	bl OSSleepTicks
/* 802F0F38 002ECB98  4B F8 18 81 */	bl OSGetTime
/* 802F0F3C 002ECB9C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802F0F40 002ECBA0  7C 04 D0 10 */	subfc r0, r4, r26
/* 802F0F44 002ECBA4  7C 63 E9 10 */	subfe r3, r3, r29
/* 802F0F48 002ECBA8  7C 7D E9 10 */	subfe r3, r29, r29
/* 802F0F4C 002ECBAC  7C 63 00 D1 */	neg. r3, r3
/* 802F0F50 002ECBB0  41 82 00 08 */	beq lbl_802F0F58
/* 802F0F54 002ECBB4  48 00 00 10 */	b lbl_802F0F64
lbl_802F0F58:
/* 802F0F58 002ECBB8  4B FF CF 81 */	bl WD_GetLinkState
/* 802F0F5C 002ECBBC  2C 03 00 01 */	cmpwi r3, 1
/* 802F0F60 002ECBC0  41 82 FF B8 */	beq lbl_802F0F18
lbl_802F0F64:
/* 802F0F64 002ECBC4  4B FF D6 69 */	bl WD_Cleanup
/* 802F0F68 002ECBC8  39 61 00 20 */	addi r11, r1, 0x20
/* 802F0F6C 002ECBCC  4B ED 62 05 */	bl _restgpr_26
/* 802F0F70 002ECBD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F0F74 002ECBD4  7C 08 03 A6 */	mtlr r0
/* 802F0F78 002ECBD8  38 21 00 20 */	addi r1, r1, 0x20
/* 802F0F7C 002ECBDC  4E 80 00 20 */	blr

.global MPiSendFrame
MPiSendFrame:
/* 802F0F80 002ECBE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F0F84 002ECBE4  7C 08 02 A6 */	mflr r0
/* 802F0F88 002ECBE8  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 802F0F8C 002ECBEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F0F90 002ECBF0  4B FF D1 F1 */	bl WD_MpSendFrame
/* 802F0F94 002ECBF4  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 802F0F98 002ECBF8  7C 63 00 38 */	and r3, r3, r0
/* 802F0F9C 002ECBFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F0FA0 002ECC00  7C 08 03 A6 */	mtlr r0
/* 802F0FA4 002ECC04  38 21 00 10 */	addi r1, r1, 0x10
/* 802F0FA8 002ECC08  4E 80 00 20 */	blr

.global MPiReceiveFrame
MPiReceiveFrame:
/* 802F0FAC 002ECC0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F0FB0 002ECC10  7C 08 02 A6 */	mflr r0
/* 802F0FB4 002ECC14  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 802F0FB8 002ECC18  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F0FBC 002ECC1C  4B FF D4 A9 */	bl WD_ReceiveFrame
/* 802F0FC0 002ECC20  2C 03 00 00 */	cmpwi r3, 0
/* 802F0FC4 002ECC24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F0FC8 002ECC28  7C 08 03 A6 */	mtlr r0
/* 802F0FCC 002ECC2C  38 21 00 10 */	addi r1, r1, 0x10
/* 802F0FD0 002ECC30  4E 80 00 20 */	blr

.global MPiChangeBeacon
MPiChangeBeacon:
/* 802F0FD4 002ECC34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F0FD8 002ECC38  7C 08 02 A6 */	mflr r0
/* 802F0FDC 002ECC3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F0FE0 002ECC40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F0FE4 002ECC44  7C 7F 1B 78 */	mr r31, r3
/* 802F0FE8 002ECC48  48 00 2F 31 */	bl func_802F3F18
/* 802F0FEC 002ECC4C  7F E4 FB 78 */	mr r4, r31
/* 802F0FF0 002ECC50  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 802F0FF4 002ECC54  4B FF CF D1 */	bl WD_ChangeBeacon
/* 802F0FF8 002ECC58  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 802F0FFC 002ECC5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F1000 002ECC60  7C 63 00 38 */	and r3, r3, r0
/* 802F1004 002ECC64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1008 002ECC68  7C 08 03 A6 */	mtlr r0
/* 802F100C 002ECC6C  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1010 002ECC70  4E 80 00 20 */	blr

.global MPiChangeVTSF
MPiChangeVTSF:
/* 802F1014 002ECC74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1018 002ECC78  7C 08 02 A6 */	mflr r0
/* 802F101C 002ECC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1020 002ECC80  48 00 2E F9 */	bl func_802F3F18
/* 802F1024 002ECC84  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 802F1028 002ECC88  4B FF D0 3D */	bl WD_ChangeVTSF
/* 802F102C 002ECC8C  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 802F1030 002ECC90  7C 63 00 38 */	and r3, r3, r0
/* 802F1034 002ECC94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1038 002ECC98  7C 08 03 A6 */	mtlr r0
/* 802F103C 002ECC9C  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1040 002ECCA0  4E 80 00 20 */	blr

.global MPiDisAssoc
MPiDisAssoc:
/* 802F1044 002ECCA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1048 002ECCA8  7C 08 02 A6 */	mflr r0
/* 802F104C 002ECCAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F1050 002ECCB0  4B FF D0 9D */	bl WD_DisAssoc
/* 802F1054 002ECCB4  3C 03 80 00 */	addis r0, r3, 0x8000
/* 802F1058 002ECCB8  28 00 80 01 */	cmplwi r0, 0x8001
/* 802F105C 002ECCBC  38 00 FF 01 */	li r0, -255
/* 802F1060 002ECCC0  41 82 00 08 */	beq lbl_802F1068
/* 802F1064 002ECCC4  7C 60 1B 78 */	mr r0, r3
lbl_802F1068:
/* 802F1068 002ECCC8  7C 03 03 78 */	mr r3, r0
/* 802F106C 002ECCCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F1070 002ECCD0  7C 08 03 A6 */	mtlr r0
/* 802F1074 002ECCD4  38 21 00 10 */	addi r1, r1, 0x10
/* 802F1078 002ECCD8  4E 80 00 20 */	blr

.global StartParent
StartParent:
/* 802F107C 002ECCDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F1080 002ECCE0  7C 08 02 A6 */	mflr r0
/* 802F1084 002ECCE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F1088 002ECCE8  39 61 00 20 */	addi r11, r1, 0x20
/* 802F108C 002ECCEC  4B ED 60 99 */	bl _savegpr_26
/* 802F1090 002ECCF0  80 62 AA 30 */	lwz r3, lbl_80643030-_SDA2_BASE_(r2)
/* 802F1094 002ECCF4  80 83 57 68 */	lwz r4, 0x5768(r3)
/* 802F1098 002ECCF8  2C 04 00 00 */	cmpwi r4, 0
/* 802F109C 002ECCFC  41 82 00 20 */	beq lbl_802F10BC
/* 802F10A0 002ECD00  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802F10A4 002ECD04  2C 03 00 00 */	cmpwi r3, 0
/* 802F10A8 002ECD08  41 82 00 1C */	beq lbl_802F10C4
/* 802F10AC 002ECD0C  38 00 00 01 */	li r0, 1
/* 802F10B0 002ECD10  7C 00 18 30 */	slw r0, r0, r3
/* 802F10B4 002ECD14  7C 80 00 39 */	and. r0, r4, r0
/* 802F10B8 002ECD18  40 82 00 0C */	bne lbl_802F10C4
lbl_802F10BC:
/* 802F10BC 002ECD1C  38 60 FF 12 */	li r3, -238
/* 802F10C0 002ECD20  48 00 01 5C */	b lbl_802F121C
lbl_802F10C4:
/* 802F10C4 002ECD24  80 62 AA 30 */	lwz r3, lbl_80643030-_SDA2_BASE_(r2)
/* 802F10C8 002ECD28  38 80 00 00 */	li r4, 0
/* 802F10CC 002ECD2C  38 A0 01 80 */	li r5, 0x180
/* 802F10D0 002ECD30  3B 43 55 E0 */	addi r26, r3, 0x55e0
/* 802F10D4 002ECD34  7F 43 D3 78 */	mr r3, r26
/* 802F10D8 002ECD38  4B D1 30 2D */	bl memset
/* 802F10DC 002ECD3C  38 00 00 04 */	li r0, 4
/* 802F10E0 002ECD40  3C 80 00 03 */	lis r4, 0x0003007F@ha
/* 802F10E4 002ECD44  B0 1A 00 AC */	sth r0, 0xac(r26)
/* 802F10E8 002ECD48  38 A4 00 7F */	addi r5, r4, 0x0003007F@l
/* 802F10EC 002ECD4C  80 E2 AA 30 */	lwz r7, lbl_80643030-_SDA2_BASE_(r2)
/* 802F10F0 002ECD50  38 00 00 00 */	li r0, 0
/* 802F10F4 002ECD54  7F 43 D3 78 */	mr r3, r26
/* 802F10F8 002ECD58  38 C0 00 00 */	li r6, 0
/* 802F10FC 002ECD5C  80 87 00 20 */	lwz r4, 0x20(r7)
/* 802F1100 002ECD60  B0 9A 00 AE */	sth r4, 0xae(r26)
/* 802F1104 002ECD64  80 87 00 24 */	lwz r4, 0x24(r7)
/* 802F1108 002ECD68  98 9A 00 B0 */	stb r4, 0xb0(r26)
/* 802F110C 002ECD6C  B0 1A 00 B2 */	sth r0, 0xb2(r26)
/* 802F1110 002ECD70  B0 1A 01 38 */	sth r0, 0x138(r26)
/* 802F1114 002ECD74  98 1A 00 B1 */	stb r0, 0xb1(r26)
/* 802F1118 002ECD78  80 07 00 18 */	lwz r0, 0x18(r7)
/* 802F111C 002ECD7C  98 1A 00 B4 */	stb r0, 0xb4(r26)
/* 802F1120 002ECD80  4B FF CD CD */	bl WD_SetConfig
/* 802F1124 002ECD84  2C 03 00 00 */	cmpwi r3, 0
/* 802F1128 002ECD88  40 80 00 08 */	bge lbl_802F1130
/* 802F112C 002ECD8C  48 00 00 08 */	b lbl_802F1134
lbl_802F1130:
/* 802F1130 002ECD90  38 60 00 00 */	li r3, 0
lbl_802F1134:
/* 802F1134 002ECD94  2C 03 00 00 */	cmpwi r3, 0
/* 802F1138 002ECD98  40 80 00 08 */	bge lbl_802F1140
/* 802F113C 002ECD9C  48 00 00 E0 */	b lbl_802F121C
lbl_802F1140:
/* 802F1140 002ECDA0  48 00 2C 01 */	bl func_802F3D40
/* 802F1144 002ECDA4  2C 03 00 00 */	cmpwi r3, 0
/* 802F1148 002ECDA8  40 80 00 08 */	bge lbl_802F1150
/* 802F114C 002ECDAC  48 00 00 D0 */	b lbl_802F121C
lbl_802F1150:
/* 802F1150 002ECDB0  38 60 00 01 */	li r3, 1
/* 802F1154 002ECDB4  4B FF CC FD */	bl WD_SetLinkState
/* 802F1158 002ECDB8  2C 03 00 00 */	cmpwi r3, 0
/* 802F115C 002ECDBC  40 80 00 08 */	bge lbl_802F1164
/* 802F1160 002ECDC0  48 00 00 BC */	b lbl_802F121C
lbl_802F1164:
/* 802F1164 002ECDC4  4B F8 16 55 */	bl OSGetTime
/* 802F1168 002ECDC8  3F E0 80 00 */	lis r31, 0x800000F8@ha
/* 802F116C 002ECDCC  3C A0 10 62 */	lis r5, 0x10624DD3@ha
/* 802F1170 002ECDD0  80 DF 00 F8 */	lwz r6, 0x800000F8@l(r31)
/* 802F1174 002ECDD4  3B C5 4D D3 */	addi r30, r5, 0x10624DD3@l
/* 802F1178 002ECDD8  38 00 00 00 */	li r0, 0
/* 802F117C 002ECDDC  3B 60 00 0A */	li r27, 0xa
/* 802F1180 002ECDE0  54 C5 F0 BE */	srwi r5, r6, 2
/* 802F1184 002ECDE4  7C BE 28 16 */	mulhwu r5, r30, r5
/* 802F1188 002ECDE8  7F 80 D9 D6 */	mullw r28, r0, r27
/* 802F118C 002ECDEC  54 A5 D1 BE */	srwi r5, r5, 6
/* 802F1190 002ECDF0  1C A5 75 30 */	mulli r5, r5, 0x7530
/* 802F1194 002ECDF4  7F 45 20 14 */	addc r26, r5, r4
/* 802F1198 002ECDF8  7C 00 19 14 */	adde r0, r0, r3
/* 802F119C 002ECDFC  6C 1D 80 00 */	xoris r29, r0, 0x8000
/* 802F11A0 002ECE00  48 00 00 48 */	b lbl_802F11E8
lbl_802F11A4:
/* 802F11A4 002ECE04  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 802F11A8 002ECE08  54 00 F0 BE */	srwi r0, r0, 2
/* 802F11AC 002ECE0C  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 802F11B0 002ECE10  54 03 D1 BE */	srwi r3, r0, 6
/* 802F11B4 002ECE14  7C 03 D8 16 */	mulhwu r0, r3, r27
/* 802F11B8 002ECE18  1C 83 00 0A */	mulli r4, r3, 0xa
/* 802F11BC 002ECE1C  7C 60 E2 14 */	add r3, r0, r28
/* 802F11C0 002ECE20  4B F8 15 45 */	bl OSSleepTicks
/* 802F11C4 002ECE24  4B F8 15 F5 */	bl OSGetTime
/* 802F11C8 002ECE28  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802F11CC 002ECE2C  7C 04 D0 10 */	subfc r0, r4, r26
/* 802F11D0 002ECE30  7C 63 E9 10 */	subfe r3, r3, r29
/* 802F11D4 002ECE34  7C 7D E9 10 */	subfe r3, r29, r29
/* 802F11D8 002ECE38  7C 63 00 D1 */	neg. r3, r3
/* 802F11DC 002ECE3C  41 82 00 0C */	beq lbl_802F11E8
/* 802F11E0 002ECE40  38 60 FF 15 */	li r3, -235
/* 802F11E4 002ECE44  48 00 00 38 */	b lbl_802F121C
lbl_802F11E8:
/* 802F11E8 002ECE48  4B FF CC F1 */	bl WD_GetLinkState
/* 802F11EC 002ECE4C  2C 03 00 00 */	cmpwi r3, 0
/* 802F11F0 002ECE50  41 82 FF B4 */	beq lbl_802F11A4
/* 802F11F4 002ECE54  3C 60 80 00 */	lis r3, 0x800031A0@ha
/* 802F11F8 002ECE58  38 80 00 20 */	li r4, 0x20
/* 802F11FC 002ECE5C  3B 43 31 A0 */	addi r26, r3, 0x800031A0@l
/* 802F1200 002ECE60  7F 43 D3 78 */	mr r3, r26
/* 802F1204 002ECE64  4B F7 94 25 */	bl DCInvalidateRange
/* 802F1208 002ECE68  88 7A 00 02 */	lbz r3, 2(r26)
/* 802F120C 002ECE6C  2C 03 00 00 */	cmpwi r3, 0
/* 802F1210 002ECE70  41 82 00 08 */	beq lbl_802F1218
/* 802F1214 002ECE74  4B FB 68 CD */	bl WPADSetDisableChannel
lbl_802F1218:
/* 802F1218 002ECE78  38 60 00 00 */	li r3, 0
lbl_802F121C:
/* 802F121C 002ECE7C  39 61 00 20 */	addi r11, r1, 0x20
/* 802F1220 002ECE80  4B ED 5F 51 */	bl _restgpr_26
/* 802F1224 002ECE84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F1228 002ECE88  7C 08 03 A6 */	mtlr r0
/* 802F122C 002ECE8C  38 21 00 20 */	addi r1, r1, 0x20
/* 802F1230 002ECE90  4E 80 00 20 */	blr
