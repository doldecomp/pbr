.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global VFipf2_fopen
VFipf2_fopen:
/* 8031A2C4 00315F24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8031A2C8 00315F28  7C 08 02 A6 */	mflr r0
/* 8031A2CC 00315F2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8031A2D0 00315F30  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8031A2D4 00315F34  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8031A2D8 00315F38  7C 7E 1B 78 */	mr r30, r3
/* 8031A2DC 00315F3C  7C 83 23 78 */	mr r3, r4
/* 8031A2E0 00315F40  4B FF FE 31 */	bl VFiPFAPI_ParseOpenModeString
/* 8031A2E4 00315F44  2C 03 00 00 */	cmpwi r3, 0
/* 8031A2E8 00315F48  7C 7F 1B 78 */	mr r31, r3
/* 8031A2EC 00315F4C  40 82 00 1C */	bne lbl_8031A308
/* 8031A2F0 00315F50  3C 80 80 58 */	lis r4, lbl_8057F5C8@ha
/* 8031A2F4 00315F54  38 00 00 0A */	li r0, 0xa
/* 8031A2F8 00315F58  38 84 F5 C8 */	addi r4, r4, lbl_8057F5C8@l
/* 8031A2FC 00315F5C  38 60 00 00 */	li r3, 0
/* 8031A300 00315F60  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8031A304 00315F64  48 00 00 44 */	b lbl_8031A348
lbl_8031A308:
/* 8031A308 00315F68  7F C4 F3 78 */	mr r4, r30
/* 8031A30C 00315F6C  38 61 00 10 */	addi r3, r1, 0x10
/* 8031A310 00315F70  38 A0 00 01 */	li r5, 1
/* 8031A314 00315F74  4B FE B1 09 */	bl VFiPFSTR_InitStr
/* 8031A318 00315F78  2C 03 00 00 */	cmpwi r3, 0
/* 8031A31C 00315F7C  40 82 00 18 */	bne lbl_8031A334
/* 8031A320 00315F80  7F E4 FB 78 */	mr r4, r31
/* 8031A324 00315F84  38 61 00 10 */	addi r3, r1, 0x10
/* 8031A328 00315F88  38 A1 00 08 */	addi r5, r1, 8
/* 8031A32C 00315F8C  4B FF AA 59 */	bl VFiPFFILE_fopen
/* 8031A330 00315F90  48 00 00 10 */	b lbl_8031A340
lbl_8031A334:
/* 8031A334 00315F94  3C 80 80 58 */	lis r4, lbl_8057F5C8@ha
/* 8031A338 00315F98  38 84 F5 C8 */	addi r4, r4, lbl_8057F5C8@l
/* 8031A33C 00315F9C  90 64 00 1C */	stw r3, 0x1c(r4)
lbl_8031A340:
/* 8031A340 00315FA0  80 81 00 08 */	lwz r4, 8(r1)
/* 8031A344 00315FA4  4B FF FE FD */	bl VFiPFAPI_convertReturnValue2NULL
lbl_8031A348:
/* 8031A348 00315FA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8031A34C 00315FAC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8031A350 00315FB0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8031A354 00315FB4  7C 08 03 A6 */	mtlr r0
/* 8031A358 00315FB8  38 21 00 30 */	addi r1, r1, 0x30
/* 8031A35C 00315FBC  4E 80 00 20 */	blr
