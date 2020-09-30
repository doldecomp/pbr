.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global gpiCallErrorCallback
gpiCallErrorCallback:
/* 8033FC68 0033B8C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8033FC6C 0033B8CC  7C 08 02 A6 */	mflr r0
/* 8033FC70 0033B8D0  2C 05 00 01 */	cmpwi r5, 1
/* 8033FC74 0033B8D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8033FC78 0033B8D8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8033FC7C 0033B8DC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8033FC80 0033B8E0  7C BE 2B 78 */	mr r30, r5
/* 8033FC84 0033B8E4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8033FC88 0033B8E8  7C 9D 23 78 */	mr r29, r4
/* 8033FC8C 0033B8EC  93 81 00 20 */	stw r28, 0x20(r1)
/* 8033FC90 0033B8F0  7C 7C 1B 78 */	mr r28, r3
/* 8033FC94 0033B8F4  83 E3 00 00 */	lwz r31, 0(r3)
/* 8033FC98 0033B8F8  40 82 00 0C */	bne lbl_8033FCA4
/* 8033FC9C 0033B8FC  38 00 00 01 */	li r0, 1
/* 8033FCA0 0033B900  90 1F 04 38 */	stw r0, 0x438(r31)
lbl_8033FCA4:
/* 8033FCA4 0033B904  80 7F 01 A8 */	lwz r3, 0x1a8(r31)
/* 8033FCA8 0033B908  80 1F 01 AC */	lwz r0, 0x1ac(r31)
/* 8033FCAC 0033B90C  2C 03 00 00 */	cmpwi r3, 0
/* 8033FCB0 0033B910  90 61 00 10 */	stw r3, 0x10(r1)
/* 8033FCB4 0033B914  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033FCB8 0033B918  41 82 00 50 */	beq lbl_8033FD08
/* 8033FCBC 0033B91C  38 60 00 10 */	li r3, 0x10
/* 8033FCC0 0033B920  4B FF 96 55 */	bl gsimalloc
/* 8033FCC4 0033B924  2C 03 00 00 */	cmpwi r3, 0
/* 8033FCC8 0033B928  7C 65 1B 78 */	mr r5, r3
/* 8033FCCC 0033B92C  41 82 00 18 */	beq lbl_8033FCE4
/* 8033FCD0 0033B930  93 A3 00 00 */	stw r29, 0(r3)
/* 8033FCD4 0033B934  93 C3 00 0C */	stw r30, 0xc(r3)
/* 8033FCD8 0033B938  80 1F 04 34 */	lwz r0, 0x434(r31)
/* 8033FCDC 0033B93C  90 03 00 04 */	stw r0, 4(r3)
/* 8033FCE0 0033B940  93 E3 00 08 */	stw r31, 8(r3)
lbl_8033FCE4:
/* 8033FCE4 0033B944  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8033FCE8 0033B948  7F 83 E3 78 */	mr r3, r28
/* 8033FCEC 0033B94C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033FCF0 0033B950  38 C0 00 00 */	li r6, 0
/* 8033FCF4 0033B954  90 81 00 08 */	stw r4, 8(r1)
/* 8033FCF8 0033B958  38 81 00 08 */	addi r4, r1, 8
/* 8033FCFC 0033B95C  38 E0 00 01 */	li r7, 1
/* 8033FD00 0033B960  90 01 00 0C */	stw r0, 0xc(r1)
/* 8033FD04 0033B964  48 00 00 25 */	bl gpiAddCallback
lbl_8033FD08:
/* 8033FD08 0033B968  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8033FD0C 0033B96C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8033FD10 0033B970  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8033FD14 0033B974  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8033FD18 0033B978  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8033FD1C 0033B97C  7C 08 03 A6 */	mtlr r0
/* 8033FD20 0033B980  38 21 00 30 */	addi r1, r1, 0x30
/* 8033FD24 0033B984  4E 80 00 20 */	blr

.global gpiAddCallback
gpiAddCallback:
/* 8033FD28 0033B988  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033FD2C 0033B98C  7C 08 02 A6 */	mflr r0
/* 8033FD30 0033B990  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033FD34 0033B994  39 61 00 20 */	addi r11, r1, 0x20
/* 8033FD38 0033B998  4B E8 73 ED */	bl _savegpr_26
/* 8033FD3C 0033B99C  83 E3 00 00 */	lwz r31, 0(r3)
/* 8033FD40 0033B9A0  7C 7A 1B 78 */	mr r26, r3
/* 8033FD44 0033B9A4  7C 9B 23 78 */	mr r27, r4
/* 8033FD48 0033B9A8  7C BC 2B 78 */	mr r28, r5
/* 8033FD4C 0033B9AC  7C DD 33 78 */	mr r29, r6
/* 8033FD50 0033B9B0  7C FE 3B 78 */	mr r30, r7
/* 8033FD54 0033B9B4  38 60 00 18 */	li r3, 0x18
/* 8033FD58 0033B9B8  4B FF 95 BD */	bl gsimalloc
/* 8033FD5C 0033B9BC  2C 03 00 00 */	cmpwi r3, 0
/* 8033FD60 0033B9C0  40 82 00 1C */	bne lbl_8033FD7C
/* 8033FD64 0033B9C4  3C 80 80 45 */	lis r4, lbl_8044A810@ha
/* 8033FD68 0033B9C8  7F 43 D3 78 */	mr r3, r26
/* 8033FD6C 0033B9CC  38 84 A8 10 */	addi r4, r4, lbl_8044A810@l
/* 8033FD70 0033B9D0  48 00 86 E9 */	bl gpiSetErrorString
/* 8033FD74 0033B9D4  38 60 00 01 */	li r3, 1
/* 8033FD78 0033B9D8  48 00 00 68 */	b lbl_8033FDE0
lbl_8033FD7C:
/* 8033FD7C 0033B9DC  80 9B 00 00 */	lwz r4, 0(r27)
/* 8033FD80 0033B9E0  2C 1D 00 00 */	cmpwi r29, 0
/* 8033FD84 0033B9E4  80 1B 00 04 */	lwz r0, 4(r27)
/* 8033FD88 0033B9E8  90 83 00 00 */	stw r4, 0(r3)
/* 8033FD8C 0033B9EC  90 03 00 04 */	stw r0, 4(r3)
/* 8033FD90 0033B9F0  93 83 00 08 */	stw r28, 8(r3)
/* 8033FD94 0033B9F4  41 82 00 10 */	beq lbl_8033FDA4
/* 8033FD98 0033B9F8  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8033FD9C 0033B9FC  90 03 00 10 */	stw r0, 0x10(r3)
/* 8033FDA0 0033BA00  48 00 00 0C */	b lbl_8033FDAC
lbl_8033FDA4:
/* 8033FDA4 0033BA04  38 00 00 00 */	li r0, 0
/* 8033FDA8 0033BA08  90 03 00 10 */	stw r0, 0x10(r3)
lbl_8033FDAC:
/* 8033FDAC 0033BA0C  93 C3 00 0C */	stw r30, 0xc(r3)
/* 8033FDB0 0033BA10  38 00 00 00 */	li r0, 0
/* 8033FDB4 0033BA14  90 03 00 14 */	stw r0, 0x14(r3)
/* 8033FDB8 0033BA18  80 1F 04 54 */	lwz r0, 0x454(r31)
/* 8033FDBC 0033BA1C  2C 00 00 00 */	cmpwi r0, 0
/* 8033FDC0 0033BA20  40 82 00 08 */	bne lbl_8033FDC8
/* 8033FDC4 0033BA24  90 7F 04 54 */	stw r3, 0x454(r31)
lbl_8033FDC8:
/* 8033FDC8 0033BA28  80 9F 04 58 */	lwz r4, 0x458(r31)
/* 8033FDCC 0033BA2C  2C 04 00 00 */	cmpwi r4, 0
/* 8033FDD0 0033BA30  41 82 00 08 */	beq lbl_8033FDD8
/* 8033FDD4 0033BA34  90 64 00 14 */	stw r3, 0x14(r4)
lbl_8033FDD8:
/* 8033FDD8 0033BA38  90 7F 04 58 */	stw r3, 0x458(r31)
/* 8033FDDC 0033BA3C  38 60 00 00 */	li r3, 0
lbl_8033FDE0:
/* 8033FDE0 0033BA40  39 61 00 20 */	addi r11, r1, 0x20
/* 8033FDE4 0033BA44  4B E8 73 8D */	bl _restgpr_26
/* 8033FDE8 0033BA48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033FDEC 0033BA4C  7C 08 03 A6 */	mtlr r0
/* 8033FDF0 0033BA50  38 21 00 20 */	addi r1, r1, 0x20
/* 8033FDF4 0033BA54  4E 80 00 20 */	blr

.global gpiCallCallback
gpiCallCallback:
/* 8033FDF8 0033BA58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033FDFC 0033BA5C  7C 08 02 A6 */	mflr r0
/* 8033FE00 0033BA60  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033FE04 0033BA64  39 61 00 20 */	addi r11, r1, 0x20
/* 8033FE08 0033BA68  4B E8 73 21 */	bl _savegpr_27
/* 8033FE0C 0033BA6C  81 84 00 00 */	lwz r12, 0(r4)
/* 8033FE10 0033BA70  7C 9F 23 78 */	mr r31, r4
/* 8033FE14 0033BA74  7C 7B 1B 78 */	mr r27, r3
/* 8033FE18 0033BA78  80 84 00 08 */	lwz r4, 8(r4)
/* 8033FE1C 0033BA7C  80 BF 00 04 */	lwz r5, 4(r31)
/* 8033FE20 0033BA80  7D 89 03 A6 */	mtctr r12
/* 8033FE24 0033BA84  4E 80 04 21 */	bctrl
/* 8033FE28 0033BA88  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8033FE2C 0033BA8C  2C 00 00 02 */	cmpwi r0, 2
/* 8033FE30 0033BA90  40 82 00 20 */	bne lbl_8033FE50
/* 8033FE34 0033BA94  80 7F 00 08 */	lwz r3, 8(r31)
/* 8033FE38 0033BA98  80 63 00 08 */	lwz r3, 8(r3)
/* 8033FE3C 0033BA9C  4B FF 94 FD */	bl gsifree
/* 8033FE40 0033BAA0  80 7F 00 08 */	lwz r3, 8(r31)
/* 8033FE44 0033BAA4  38 00 00 00 */	li r0, 0
/* 8033FE48 0033BAA8  90 03 00 08 */	stw r0, 8(r3)
/* 8033FE4C 0033BAAC  48 00 01 84 */	b lbl_8033FFD0
lbl_8033FE50:
/* 8033FE50 0033BAB0  2C 00 00 0B */	cmpwi r0, 0xb
/* 8033FE54 0033BAB4  40 82 00 20 */	bne lbl_8033FE74
/* 8033FE58 0033BAB8  80 7F 00 08 */	lwz r3, 8(r31)
/* 8033FE5C 0033BABC  80 63 00 08 */	lwz r3, 8(r3)
/* 8033FE60 0033BAC0  4B FF 94 D9 */	bl gsifree
/* 8033FE64 0033BAC4  80 7F 00 08 */	lwz r3, 8(r31)
/* 8033FE68 0033BAC8  38 00 00 00 */	li r0, 0
/* 8033FE6C 0033BACC  90 03 00 08 */	stw r0, 8(r3)
/* 8033FE70 0033BAD0  48 00 01 60 */	b lbl_8033FFD0
lbl_8033FE74:
/* 8033FE74 0033BAD4  2C 00 00 03 */	cmpwi r0, 3
/* 8033FE78 0033BAD8  40 82 00 74 */	bne lbl_8033FEEC
/* 8033FE7C 0033BADC  83 7F 00 08 */	lwz r27, 8(r31)
/* 8033FE80 0033BAE0  3B 80 00 00 */	li r28, 0
/* 8033FE84 0033BAE4  3B A0 00 00 */	li r29, 0
/* 8033FE88 0033BAE8  3B C0 00 00 */	li r30, 0
/* 8033FE8C 0033BAEC  48 00 00 34 */	b lbl_8033FEC0
lbl_8033FE90:
/* 8033FE90 0033BAF0  80 7B 00 3C */	lwz r3, 0x3c(r27)
/* 8033FE94 0033BAF4  7C 63 E8 2E */	lwzx r3, r3, r29
/* 8033FE98 0033BAF8  4B FF 94 A1 */	bl gsifree
/* 8033FE9C 0033BAFC  80 7B 00 3C */	lwz r3, 0x3c(r27)
/* 8033FEA0 0033BB00  7F C3 E9 2E */	stwx r30, r3, r29
/* 8033FEA4 0033BB04  80 7B 00 40 */	lwz r3, 0x40(r27)
/* 8033FEA8 0033BB08  7C 63 E8 2E */	lwzx r3, r3, r29
/* 8033FEAC 0033BB0C  4B FF 94 8D */	bl gsifree
/* 8033FEB0 0033BB10  80 7B 00 40 */	lwz r3, 0x40(r27)
/* 8033FEB4 0033BB14  3B 9C 00 01 */	addi r28, r28, 1
/* 8033FEB8 0033BB18  7F C3 E9 2E */	stwx r30, r3, r29
/* 8033FEBC 0033BB1C  3B BD 00 04 */	addi r29, r29, 4
lbl_8033FEC0:
/* 8033FEC0 0033BB20  80 1B 00 38 */	lwz r0, 0x38(r27)
/* 8033FEC4 0033BB24  7C 1C 00 00 */	cmpw r28, r0
/* 8033FEC8 0033BB28  41 80 FF C8 */	blt lbl_8033FE90
/* 8033FECC 0033BB2C  80 7B 00 3C */	lwz r3, 0x3c(r27)
/* 8033FED0 0033BB30  4B FF 94 69 */	bl gsifree
/* 8033FED4 0033BB34  3B C0 00 00 */	li r30, 0
/* 8033FED8 0033BB38  93 DB 00 3C */	stw r30, 0x3c(r27)
/* 8033FEDC 0033BB3C  80 7B 00 40 */	lwz r3, 0x40(r27)
/* 8033FEE0 0033BB40  4B FF 94 59 */	bl gsifree
/* 8033FEE4 0033BB44  93 DB 00 40 */	stw r30, 0x40(r27)
/* 8033FEE8 0033BB48  48 00 00 E8 */	b lbl_8033FFD0
lbl_8033FEEC:
/* 8033FEEC 0033BB4C  2C 00 00 04 */	cmpwi r0, 4
/* 8033FEF0 0033BB50  40 82 00 1C */	bne lbl_8033FF0C
/* 8033FEF4 0033BB54  83 7F 00 08 */	lwz r27, 8(r31)
/* 8033FEF8 0033BB58  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8033FEFC 0033BB5C  4B FF 94 3D */	bl gsifree
/* 8033FF00 0033BB60  38 00 00 00 */	li r0, 0
/* 8033FF04 0033BB64  90 1B 00 0C */	stw r0, 0xc(r27)
/* 8033FF08 0033BB68  48 00 00 C8 */	b lbl_8033FFD0
lbl_8033FF0C:
/* 8033FF0C 0033BB6C  2C 00 00 07 */	cmpwi r0, 7
/* 8033FF10 0033BB70  40 82 00 24 */	bne lbl_8033FF34
/* 8033FF14 0033BB74  83 7F 00 08 */	lwz r27, 8(r31)
/* 8033FF18 0033BB78  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 8033FF1C 0033BB7C  2C 03 00 00 */	cmpwi r3, 0
/* 8033FF20 0033BB80  41 82 00 B0 */	beq lbl_8033FFD0
/* 8033FF24 0033BB84  4B FF 94 15 */	bl gsifree
/* 8033FF28 0033BB88  38 00 00 00 */	li r0, 0
/* 8033FF2C 0033BB8C  90 1B 00 10 */	stw r0, 0x10(r27)
/* 8033FF30 0033BB90  48 00 00 A0 */	b lbl_8033FFD0
lbl_8033FF34:
/* 8033FF34 0033BB94  2C 00 00 08 */	cmpwi r0, 8
/* 8033FF38 0033BB98  40 82 00 24 */	bne lbl_8033FF5C
/* 8033FF3C 0033BB9C  83 7F 00 08 */	lwz r27, 8(r31)
/* 8033FF40 0033BBA0  80 7B 00 08 */	lwz r3, 8(r27)
/* 8033FF44 0033BBA4  2C 03 00 00 */	cmpwi r3, 0
/* 8033FF48 0033BBA8  41 82 00 88 */	beq lbl_8033FFD0
/* 8033FF4C 0033BBAC  4B FF 93 ED */	bl gsifree
/* 8033FF50 0033BBB0  38 00 00 00 */	li r0, 0
/* 8033FF54 0033BBB4  90 1B 00 08 */	stw r0, 8(r27)
/* 8033FF58 0033BBB8  48 00 00 78 */	b lbl_8033FFD0
lbl_8033FF5C:
/* 8033FF5C 0033BBBC  2C 00 00 09 */	cmpwi r0, 9
/* 8033FF60 0033BBC0  40 82 00 54 */	bne lbl_8033FFB4
/* 8033FF64 0033BBC4  83 9F 00 08 */	lwz r28, 8(r31)
/* 8033FF68 0033BBC8  3B 60 00 00 */	li r27, 0
/* 8033FF6C 0033BBCC  3B A0 00 00 */	li r29, 0
/* 8033FF70 0033BBD0  3B C0 00 00 */	li r30, 0
/* 8033FF74 0033BBD4  48 00 00 20 */	b lbl_8033FF94
lbl_8033FF78:
/* 8033FF78 0033BBD8  80 7C 00 08 */	lwz r3, 8(r28)
/* 8033FF7C 0033BBDC  7C 63 E8 2E */	lwzx r3, r3, r29
/* 8033FF80 0033BBE0  4B FF 93 B9 */	bl gsifree
/* 8033FF84 0033BBE4  80 7C 00 08 */	lwz r3, 8(r28)
/* 8033FF88 0033BBE8  3B 7B 00 01 */	addi r27, r27, 1
/* 8033FF8C 0033BBEC  7F C3 E9 2E */	stwx r30, r3, r29
/* 8033FF90 0033BBF0  3B BD 00 04 */	addi r29, r29, 4
lbl_8033FF94:
/* 8033FF94 0033BBF4  80 1C 00 04 */	lwz r0, 4(r28)
/* 8033FF98 0033BBF8  7C 1B 00 00 */	cmpw r27, r0
/* 8033FF9C 0033BBFC  41 80 FF DC */	blt lbl_8033FF78
/* 8033FFA0 0033BC00  80 7C 00 08 */	lwz r3, 8(r28)
/* 8033FFA4 0033BC04  4B FF 93 95 */	bl gsifree
/* 8033FFA8 0033BC08  38 00 00 00 */	li r0, 0
/* 8033FFAC 0033BC0C  90 1C 00 08 */	stw r0, 8(r28)
/* 8033FFB0 0033BC10  48 00 00 20 */	b lbl_8033FFD0
lbl_8033FFB4:
/* 8033FFB4 0033BC14  2C 00 00 0C */	cmpwi r0, 0xc
/* 8033FFB8 0033BC18  40 82 00 18 */	bne lbl_8033FFD0
/* 8033FFBC 0033BC1C  80 9F 00 08 */	lwz r4, 8(r31)
/* 8033FFC0 0033BC20  7F 63 DB 78 */	mr r3, r27
/* 8033FFC4 0033BC24  38 A0 00 00 */	li r5, 0
/* 8033FFC8 0033BC28  80 84 00 00 */	lwz r4, 0(r4)
/* 8033FFCC 0033BC2C  4B FF F1 D5 */	bl gpiDeleteBuddy
lbl_8033FFD0:
/* 8033FFD0 0033BC30  80 7F 00 08 */	lwz r3, 8(r31)
/* 8033FFD4 0033BC34  4B FF 93 65 */	bl gsifree
/* 8033FFD8 0033BC38  38 00 00 00 */	li r0, 0
/* 8033FFDC 0033BC3C  7F E3 FB 78 */	mr r3, r31
/* 8033FFE0 0033BC40  90 1F 00 08 */	stw r0, 8(r31)
/* 8033FFE4 0033BC44  4B FF 93 55 */	bl gsifree
/* 8033FFE8 0033BC48  39 61 00 20 */	addi r11, r1, 0x20
/* 8033FFEC 0033BC4C  4B E8 71 89 */	bl _restgpr_27
/* 8033FFF0 0033BC50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033FFF4 0033BC54  7C 08 03 A6 */	mtlr r0
/* 8033FFF8 0033BC58  38 21 00 20 */	addi r1, r1, 0x20
/* 8033FFFC 0033BC5C  4E 80 00 20 */	blr

.global gpiProcessCallbacks
gpiProcessCallbacks:
/* 80340000 0033BC60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80340004 0033BC64  7C 08 02 A6 */	mflr r0
/* 80340008 0033BC68  90 01 00 34 */	stw r0, 0x34(r1)
/* 8034000C 0033BC6C  39 61 00 30 */	addi r11, r1, 0x30
/* 80340010 0033BC70  4B E8 71 11 */	bl _savegpr_25
/* 80340014 0033BC74  2C 04 00 00 */	cmpwi r4, 0
/* 80340018 0033BC78  83 C3 00 00 */	lwz r30, 0(r3)
/* 8034001C 0033BC7C  7C 79 1B 78 */	mr r25, r3
/* 80340020 0033BC80  7C 9A 23 78 */	mr r26, r4
/* 80340024 0033BC84  41 82 00 A8 */	beq lbl_803400CC
/* 80340028 0033BC88  83 BE 04 54 */	lwz r29, 0x454(r30)
/* 8034002C 0033BC8C  38 00 00 00 */	li r0, 0
/* 80340030 0033BC90  83 9E 04 58 */	lwz r28, 0x458(r30)
/* 80340034 0033BC94  3B 60 00 00 */	li r27, 0
/* 80340038 0033BC98  7F A4 EB 78 */	mr r4, r29
/* 8034003C 0033BC9C  90 1E 04 54 */	stw r0, 0x454(r30)
/* 80340040 0033BCA0  90 1E 04 58 */	stw r0, 0x458(r30)
/* 80340044 0033BCA4  48 00 00 54 */	b lbl_80340098
lbl_80340048:
/* 80340048 0033BCA8  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8034004C 0033BCAC  83 E4 00 14 */	lwz r31, 0x14(r4)
/* 80340050 0033BCB0  7C 00 D0 00 */	cmpw r0, r26
/* 80340054 0033BCB4  41 82 00 10 */	beq lbl_80340064
/* 80340058 0033BCB8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8034005C 0033BCBC  2C 00 00 01 */	cmpwi r0, 1
/* 80340060 0033BCC0  40 82 00 30 */	bne lbl_80340090
lbl_80340064:
/* 80340064 0033BCC4  2C 1B 00 00 */	cmpwi r27, 0
/* 80340068 0033BCC8  41 82 00 0C */	beq lbl_80340074
/* 8034006C 0033BCCC  93 FB 00 14 */	stw r31, 0x14(r27)
/* 80340070 0033BCD0  48 00 00 08 */	b lbl_80340078
lbl_80340074:
/* 80340074 0033BCD4  7F FD FB 78 */	mr r29, r31
lbl_80340078:
/* 80340078 0033BCD8  7C 1C 20 40 */	cmplw r28, r4
/* 8034007C 0033BCDC  40 82 00 08 */	bne lbl_80340084
/* 80340080 0033BCE0  7F 7C DB 78 */	mr r28, r27
lbl_80340084:
/* 80340084 0033BCE4  7F 23 CB 78 */	mr r3, r25
/* 80340088 0033BCE8  4B FF FD 71 */	bl gpiCallCallback
/* 8034008C 0033BCEC  48 00 00 08 */	b lbl_80340094
lbl_80340090:
/* 80340090 0033BCF0  7C 9B 23 78 */	mr r27, r4
lbl_80340094:
/* 80340094 0033BCF4  7F E4 FB 78 */	mr r4, r31
lbl_80340098:
/* 80340098 0033BCF8  2C 04 00 00 */	cmpwi r4, 0
/* 8034009C 0033BCFC  40 82 FF AC */	bne lbl_80340048
/* 803400A0 0033BD00  80 1E 04 54 */	lwz r0, 0x454(r30)
/* 803400A4 0033BD04  2C 00 00 00 */	cmpwi r0, 0
/* 803400A8 0033BD08  41 82 00 14 */	beq lbl_803400BC
/* 803400AC 0033BD0C  80 7E 04 58 */	lwz r3, 0x458(r30)
/* 803400B0 0033BD10  93 A3 00 14 */	stw r29, 0x14(r3)
/* 803400B4 0033BD14  93 9E 04 58 */	stw r28, 0x458(r30)
/* 803400B8 0033BD18  48 00 00 0C */	b lbl_803400C4
lbl_803400BC:
/* 803400BC 0033BD1C  93 BE 04 54 */	stw r29, 0x454(r30)
/* 803400C0 0033BD20  93 9E 04 58 */	stw r28, 0x458(r30)
lbl_803400C4:
/* 803400C4 0033BD24  38 60 00 00 */	li r3, 0
/* 803400C8 0033BD28  48 00 00 40 */	b lbl_80340108
lbl_803400CC:
/* 803400CC 0033BD2C  3B E0 00 00 */	li r31, 0
/* 803400D0 0033BD30  48 00 00 28 */	b lbl_803400F8
lbl_803400D4:
/* 803400D4 0033BD34  93 FE 04 54 */	stw r31, 0x454(r30)
/* 803400D8 0033BD38  93 FE 04 58 */	stw r31, 0x458(r30)
/* 803400DC 0033BD3C  48 00 00 14 */	b lbl_803400F0
lbl_803400E0:
/* 803400E0 0033BD40  83 84 00 14 */	lwz r28, 0x14(r4)
/* 803400E4 0033BD44  7F 23 CB 78 */	mr r3, r25
/* 803400E8 0033BD48  4B FF FD 11 */	bl gpiCallCallback
/* 803400EC 0033BD4C  7F 84 E3 78 */	mr r4, r28
lbl_803400F0:
/* 803400F0 0033BD50  2C 04 00 00 */	cmpwi r4, 0
/* 803400F4 0033BD54  40 82 FF EC */	bne lbl_803400E0
lbl_803400F8:
/* 803400F8 0033BD58  80 9E 04 54 */	lwz r4, 0x454(r30)
/* 803400FC 0033BD5C  2C 04 00 00 */	cmpwi r4, 0
/* 80340100 0033BD60  40 82 FF D4 */	bne lbl_803400D4
/* 80340104 0033BD64  38 60 00 00 */	li r3, 0
lbl_80340108:
/* 80340108 0033BD68  39 61 00 30 */	addi r11, r1, 0x30
/* 8034010C 0033BD6C  4B E8 70 61 */	bl _restgpr_25
/* 80340110 0033BD70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80340114 0033BD74  7C 08 03 A6 */	mtlr r0
/* 80340118 0033BD78  38 21 00 30 */	addi r1, r1, 0x30
/* 8034011C 0033BD7C  4E 80 00 20 */	blr
