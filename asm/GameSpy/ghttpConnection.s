.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global ghiFindFreeSlot
ghiFindFreeSlot:
/* 80351754 0034D3B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80351758 0034D3B8  7C 08 02 A6 */	mflr r0
/* 8035175C 0034D3BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80351760 0034D3C0  39 61 00 20 */	addi r11, r1, 0x20
/* 80351764 0034D3C4  4B E7 59 C5 */	bl _savegpr_27
/* 80351768 0034D3C8  80 CD B0 D4 */	lwz r6, lbl_80640394-_SDA_BASE_(r13)
/* 8035176C 0034D3CC  38 60 00 00 */	li r3, 0
/* 80351770 0034D3D0  80 0D B0 D0 */	lwz r0, lbl_80640390-_SDA_BASE_(r13)
/* 80351774 0034D3D4  7C C5 33 78 */	mr r5, r6
/* 80351778 0034D3D8  7C 09 03 A6 */	mtctr r0
/* 8035177C 0034D3DC  2C 00 00 00 */	cmpwi r0, 0
/* 80351780 0034D3E0  40 81 00 24 */	ble lbl_803517A4
lbl_80351784:
/* 80351784 0034D3E4  80 85 00 00 */	lwz r4, 0(r5)
/* 80351788 0034D3E8  80 04 00 00 */	lwz r0, 0(r4)
/* 8035178C 0034D3EC  2C 00 00 00 */	cmpwi r0, 0
/* 80351790 0034D3F0  40 82 00 08 */	bne lbl_80351798
/* 80351794 0034D3F4  48 00 00 B4 */	b lbl_80351848
lbl_80351798:
/* 80351798 0034D3F8  38 A5 00 04 */	addi r5, r5, 4
/* 8035179C 0034D3FC  38 63 00 01 */	addi r3, r3, 1
/* 803517A0 0034D400  42 00 FF E4 */	bdnz lbl_80351784
lbl_803517A4:
/* 803517A4 0034D404  83 AD B0 D0 */	lwz r29, lbl_80640390-_SDA_BASE_(r13)
/* 803517A8 0034D408  7C C3 33 78 */	mr r3, r6
/* 803517AC 0034D40C  3B 7D 00 04 */	addi r27, r29, 4
/* 803517B0 0034D410  57 64 10 3A */	slwi r4, r27, 2
/* 803517B4 0034D414  4B FE 7B 71 */	bl gsirealloc
/* 803517B8 0034D418  2C 03 00 00 */	cmpwi r3, 0
/* 803517BC 0034D41C  40 82 00 0C */	bne lbl_803517C8
/* 803517C0 0034D420  38 60 FF FF */	li r3, -1
/* 803517C4 0034D424  48 00 00 84 */	b lbl_80351848
lbl_803517C8:
/* 803517C8 0034D428  90 6D B0 D4 */	stw r3, lbl_80640394-_SDA_BASE_(r13)
/* 803517CC 0034D42C  7F BC EB 78 */	mr r28, r29
/* 803517D0 0034D430  57 BE 10 3A */	slwi r30, r29, 2
/* 803517D4 0034D434  3B E0 00 00 */	li r31, 0
/* 803517D8 0034D438  48 00 00 60 */	b lbl_80351838
lbl_803517DC:
/* 803517DC 0034D43C  38 60 01 B4 */	li r3, 0x1b4
/* 803517E0 0034D440  4B FE 7B 35 */	bl gsimalloc
/* 803517E4 0034D444  80 8D B0 D4 */	lwz r4, lbl_80640394-_SDA_BASE_(r13)
/* 803517E8 0034D448  7C 64 F1 2E */	stwx r3, r4, r30
/* 803517EC 0034D44C  80 6D B0 D4 */	lwz r3, lbl_80640394-_SDA_BASE_(r13)
/* 803517F0 0034D450  7C 63 F0 2E */	lwzx r3, r3, r30
/* 803517F4 0034D454  2C 03 00 00 */	cmpwi r3, 0
/* 803517F8 0034D458  40 82 00 34 */	bne lbl_8035182C
/* 803517FC 0034D45C  3B 9C FF FF */	addi r28, r28, -1
/* 80351800 0034D460  57 9E 10 3A */	slwi r30, r28, 2
/* 80351804 0034D464  48 00 00 18 */	b lbl_8035181C
lbl_80351808:
/* 80351808 0034D468  80 6D B0 D4 */	lwz r3, lbl_80640394-_SDA_BASE_(r13)
/* 8035180C 0034D46C  7C 63 F0 2E */	lwzx r3, r3, r30
/* 80351810 0034D470  4B FE 7B 29 */	bl gsifree
/* 80351814 0034D474  3B DE FF FC */	addi r30, r30, -4
/* 80351818 0034D478  3B 9C FF FF */	addi r28, r28, -1
lbl_8035181C:
/* 8035181C 0034D47C  7C 1C E8 00 */	cmpw r28, r29
/* 80351820 0034D480  40 80 FF E8 */	bge lbl_80351808
/* 80351824 0034D484  38 60 FF FF */	li r3, -1
/* 80351828 0034D488  48 00 00 20 */	b lbl_80351848
lbl_8035182C:
/* 8035182C 0034D48C  93 E3 00 00 */	stw r31, 0(r3)
/* 80351830 0034D490  3B DE 00 04 */	addi r30, r30, 4
/* 80351834 0034D494  3B 9C 00 01 */	addi r28, r28, 1
lbl_80351838:
/* 80351838 0034D498  7C 1C D8 00 */	cmpw r28, r27
/* 8035183C 0034D49C  41 80 FF A0 */	blt lbl_803517DC
/* 80351840 0034D4A0  93 6D B0 D0 */	stw r27, lbl_80640390-_SDA_BASE_(r13)
/* 80351844 0034D4A4  7F A3 EB 78 */	mr r3, r29
lbl_80351848:
/* 80351848 0034D4A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8035184C 0034D4AC  4B E7 59 29 */	bl _restgpr_27
/* 80351850 0034D4B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80351854 0034D4B4  7C 08 03 A6 */	mtlr r0
/* 80351858 0034D4B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8035185C 0034D4BC  4E 80 00 20 */	blr

.global ghiNewConnection
ghiNewConnection:
/* 80351860 0034D4C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80351864 0034D4C4  7C 08 02 A6 */	mflr r0
/* 80351868 0034D4C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035186C 0034D4CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80351870 0034D4D0  93 C1 00 08 */	stw r30, 8(r1)
/* 80351874 0034D4D4  4B FF FA 79 */	bl ghiLock
/* 80351878 0034D4D8  4B FF FE DD */	bl ghiFindFreeSlot
/* 8035187C 0034D4DC  2C 03 FF FF */	cmpwi r3, -1
/* 80351880 0034D4E0  7C 7F 1B 78 */	mr r31, r3
/* 80351884 0034D4E4  40 82 00 10 */	bne lbl_80351894
/* 80351888 0034D4E8  4B FF FA 69 */	bl ghiUnlock
/* 8035188C 0034D4EC  38 60 00 00 */	li r3, 0
/* 80351890 0034D4F0  48 00 01 7C */	b lbl_80351A0C
lbl_80351894:
/* 80351894 0034D4F4  80 CD B0 D4 */	lwz r6, lbl_80640394-_SDA_BASE_(r13)
/* 80351898 0034D4F8  54 60 10 3A */	slwi r0, r3, 2
/* 8035189C 0034D4FC  38 80 00 00 */	li r4, 0
/* 803518A0 0034D500  38 A0 01 B4 */	li r5, 0x1b4
/* 803518A4 0034D504  7F C6 00 2E */	lwzx r30, r6, r0
/* 803518A8 0034D508  7F C3 F3 78 */	mr r3, r30
/* 803518AC 0034D50C  4B CB 28 59 */	bl memset
/* 803518B0 0034D510  38 00 00 01 */	li r0, 1
/* 803518B4 0034D514  39 20 00 00 */	li r9, 0
/* 803518B8 0034D518  90 1E 00 00 */	stw r0, 0(r30)
/* 803518BC 0034D51C  39 00 FF FF */	li r8, -1
/* 803518C0 0034D520  38 E0 01 F4 */	li r7, 0x1f4
/* 803518C4 0034D524  38 00 00 50 */	li r0, 0x50
/* 803518C8 0034D528  93 FE 00 04 */	stw r31, 4(r30)
/* 803518CC 0034D52C  7F C3 F3 78 */	mr r3, r30
/* 803518D0 0034D530  38 9E 00 54 */	addi r4, r30, 0x54
/* 803518D4 0034D534  38 A0 08 00 */	li r5, 0x800
/* 803518D8 0034D538  81 4D B0 C8 */	lwz r10, lbl_80640388-_SDA_BASE_(r13)
/* 803518DC 0034D53C  38 C0 10 00 */	li r6, 0x1000
/* 803518E0 0034D540  91 5E 00 08 */	stw r10, 8(r30)
/* 803518E4 0034D544  39 4A 00 01 */	addi r10, r10, 1
/* 803518E8 0034D548  91 4D B0 C8 */	stw r10, lbl_80640388-_SDA_BASE_(r13)
/* 803518EC 0034D54C  91 3E 00 0C */	stw r9, 0xc(r30)
/* 803518F0 0034D550  91 3E 00 10 */	stw r9, 0x10(r30)
/* 803518F4 0034D554  91 3E 00 14 */	stw r9, 0x14(r30)
/* 803518F8 0034D558  91 3E 00 18 */	stw r9, 0x18(r30)
/* 803518FC 0034D55C  91 3E 00 1C */	stw r9, 0x1c(r30)
/* 80351900 0034D560  B1 3E 00 20 */	sth r9, 0x20(r30)
/* 80351904 0034D564  91 3E 00 24 */	stw r9, 0x24(r30)
/* 80351908 0034D568  91 3E 00 2C */	stw r9, 0x2c(r30)
/* 8035190C 0034D56C  91 3E 00 30 */	stw r9, 0x30(r30)
/* 80351910 0034D570  91 3E 00 34 */	stw r9, 0x34(r30)
/* 80351914 0034D574  91 3E 00 38 */	stw r9, 0x38(r30)
/* 80351918 0034D578  91 3E 00 3C */	stw r9, 0x3c(r30)
/* 8035191C 0034D57C  91 3E 00 40 */	stw r9, 0x40(r30)
/* 80351920 0034D580  91 3E 00 44 */	stw r9, 0x44(r30)
/* 80351924 0034D584  91 3E 00 48 */	stw r9, 0x48(r30)
/* 80351928 0034D588  91 1E 00 4C */	stw r8, 0x4c(r30)
/* 8035192C 0034D58C  91 3E 00 50 */	stw r9, 0x50(r30)
/* 80351930 0034D590  91 3E 01 08 */	stw r9, 0x108(r30)
/* 80351934 0034D594  91 3E 01 0C */	stw r9, 0x10c(r30)
/* 80351938 0034D598  91 3E 01 10 */	stw r9, 0x110(r30)
/* 8035193C 0034D59C  91 3E 01 14 */	stw r9, 0x114(r30)
/* 80351940 0034D5A0  91 3E 01 18 */	stw r9, 0x118(r30)
/* 80351944 0034D5A4  91 3E 01 1C */	stw r9, 0x11c(r30)
/* 80351948 0034D5A8  91 3E 01 20 */	stw r9, 0x120(r30)
/* 8035194C 0034D5AC  91 3E 01 24 */	stw r9, 0x124(r30)
/* 80351950 0034D5B0  91 1E 01 28 */	stw r8, 0x128(r30)
/* 80351954 0034D5B4  91 3E 01 2C */	stw r9, 0x12c(r30)
/* 80351958 0034D5B8  91 3E 01 30 */	stw r9, 0x130(r30)
/* 8035195C 0034D5BC  91 3E 01 34 */	stw r9, 0x134(r30)
/* 80351960 0034D5C0  91 3E 01 50 */	stw r9, 0x150(r30)
/* 80351964 0034D5C4  91 3E 01 58 */	stw r9, 0x158(r30)
/* 80351968 0034D5C8  91 3E 01 5C */	stw r9, 0x15c(r30)
/* 8035196C 0034D5CC  91 3E 01 60 */	stw r9, 0x160(r30)
/* 80351970 0034D5D0  90 FE 01 84 */	stw r7, 0x184(r30)
/* 80351974 0034D5D4  B0 1E 01 8C */	sth r0, 0x18c(r30)
/* 80351978 0034D5D8  91 3E 01 88 */	stw r9, 0x188(r30)
/* 8035197C 0034D5DC  91 3E 01 90 */	stw r9, 0x190(r30)
/* 80351980 0034D5E0  91 3E 01 B0 */	stw r9, 0x1b0(r30)
/* 80351984 0034D5E4  4B FF EE F1 */	bl ghiInitBuffer
/* 80351988 0034D5E8  2C 03 00 00 */	cmpwi r3, 0
/* 8035198C 0034D5EC  41 82 00 18 */	beq lbl_803519A4
/* 80351990 0034D5F0  7F C3 F3 78 */	mr r3, r30
/* 80351994 0034D5F4  38 9E 00 78 */	addi r4, r30, 0x78
/* 80351998 0034D5F8  38 A0 08 00 */	li r5, 0x800
/* 8035199C 0034D5FC  38 C0 04 00 */	li r6, 0x400
/* 803519A0 0034D600  4B FF EE D5 */	bl ghiInitBuffer
lbl_803519A4:
/* 803519A4 0034D604  2C 03 00 00 */	cmpwi r3, 0
/* 803519A8 0034D608  41 82 00 18 */	beq lbl_803519C0
/* 803519AC 0034D60C  7F C3 F3 78 */	mr r3, r30
/* 803519B0 0034D610  38 9E 00 9C */	addi r4, r30, 0x9c
/* 803519B4 0034D614  38 A0 08 00 */	li r5, 0x800
/* 803519B8 0034D618  38 C0 08 00 */	li r6, 0x800
/* 803519BC 0034D61C  4B FF EE B9 */	bl ghiInitBuffer
lbl_803519C0:
/* 803519C0 0034D620  2C 03 00 00 */	cmpwi r3, 0
/* 803519C4 0034D624  41 82 00 18 */	beq lbl_803519DC
/* 803519C8 0034D628  7F C3 F3 78 */	mr r3, r30
/* 803519CC 0034D62C  38 9E 00 C0 */	addi r4, r30, 0xc0
/* 803519D0 0034D630  38 A0 08 00 */	li r5, 0x800
/* 803519D4 0034D634  38 C0 04 00 */	li r6, 0x400
/* 803519D8 0034D638  4B FF EE 9D */	bl ghiInitBuffer
lbl_803519DC:
/* 803519DC 0034D63C  2C 03 00 00 */	cmpwi r3, 0
/* 803519E0 0034D640  40 82 00 18 */	bne lbl_803519F8
/* 803519E4 0034D644  7F C3 F3 78 */	mr r3, r30
/* 803519E8 0034D648  48 00 00 3D */	bl ghiFreeConnection
/* 803519EC 0034D64C  4B FF F9 05 */	bl ghiUnlock
/* 803519F0 0034D650  38 60 00 00 */	li r3, 0
/* 803519F4 0034D654  48 00 00 18 */	b lbl_80351A0C
lbl_803519F8:
/* 803519F8 0034D658  80 6D B0 CC */	lwz r3, lbl_8064038C-_SDA_BASE_(r13)
/* 803519FC 0034D65C  38 03 00 01 */	addi r0, r3, 1
/* 80351A00 0034D660  90 0D B0 CC */	stw r0, lbl_8064038C-_SDA_BASE_(r13)
/* 80351A04 0034D664  4B FF F8 ED */	bl ghiUnlock
/* 80351A08 0034D668  7F C3 F3 78 */	mr r3, r30
lbl_80351A0C:
/* 80351A0C 0034D66C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80351A10 0034D670  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80351A14 0034D674  83 C1 00 08 */	lwz r30, 8(r1)
/* 80351A18 0034D678  7C 08 03 A6 */	mtlr r0
/* 80351A1C 0034D67C  38 21 00 10 */	addi r1, r1, 0x10
/* 80351A20 0034D680  4E 80 00 20 */	blr

.global ghiFreeConnection
ghiFreeConnection:
/* 80351A24 0034D684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80351A28 0034D688  7C 08 02 A6 */	mflr r0
/* 80351A2C 0034D68C  2C 03 00 00 */	cmpwi r3, 0
/* 80351A30 0034D690  90 01 00 14 */	stw r0, 0x14(r1)
/* 80351A34 0034D694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80351A38 0034D698  7C 7F 1B 78 */	mr r31, r3
/* 80351A3C 0034D69C  40 82 00 0C */	bne lbl_80351A48
/* 80351A40 0034D6A0  38 60 00 00 */	li r3, 0
/* 80351A44 0034D6A4  48 00 01 40 */	b lbl_80351B84
lbl_80351A48:
/* 80351A48 0034D6A8  80 03 00 00 */	lwz r0, 0(r3)
/* 80351A4C 0034D6AC  2C 00 00 00 */	cmpwi r0, 0
/* 80351A50 0034D6B0  40 82 00 0C */	bne lbl_80351A5C
/* 80351A54 0034D6B4  38 60 00 00 */	li r3, 0
/* 80351A58 0034D6B8  48 00 01 2C */	b lbl_80351B84
lbl_80351A5C:
/* 80351A5C 0034D6BC  80 63 00 04 */	lwz r3, 4(r3)
/* 80351A60 0034D6C0  2C 03 00 00 */	cmpwi r3, 0
/* 80351A64 0034D6C4  40 80 00 0C */	bge lbl_80351A70
/* 80351A68 0034D6C8  38 60 00 00 */	li r3, 0
/* 80351A6C 0034D6CC  48 00 01 18 */	b lbl_80351B84
lbl_80351A70:
/* 80351A70 0034D6D0  80 0D B0 D0 */	lwz r0, lbl_80640390-_SDA_BASE_(r13)
/* 80351A74 0034D6D4  7C 03 00 00 */	cmpw r3, r0
/* 80351A78 0034D6D8  41 80 00 0C */	blt lbl_80351A84
/* 80351A7C 0034D6DC  38 60 00 00 */	li r3, 0
/* 80351A80 0034D6E0  48 00 01 04 */	b lbl_80351B84
lbl_80351A84:
/* 80351A84 0034D6E4  4B FF F8 69 */	bl ghiLock
/* 80351A88 0034D6E8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80351A8C 0034D6EC  4B FE 78 AD */	bl gsifree
/* 80351A90 0034D6F0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80351A94 0034D6F4  4B FE 78 A5 */	bl gsifree
/* 80351A98 0034D6F8  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80351A9C 0034D6FC  4B FE 78 9D */	bl gsifree
/* 80351AA0 0034D700  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80351AA4 0034D704  4B FE 78 95 */	bl gsifree
/* 80351AA8 0034D708  80 7F 01 2C */	lwz r3, 0x12c(r31)
/* 80351AAC 0034D70C  4B FE 78 8D */	bl gsifree
/* 80351AB0 0034D710  80 7F 01 88 */	lwz r3, 0x188(r31)
/* 80351AB4 0034D714  4B FE 78 85 */	bl gsifree
/* 80351AB8 0034D718  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 80351ABC 0034D71C  2C 03 FF FF */	cmpwi r3, -1
/* 80351AC0 0034D720  41 82 00 14 */	beq lbl_80351AD4
/* 80351AC4 0034D724  38 80 00 02 */	li r4, 2
/* 80351AC8 0034D728  4B FE 61 69 */	bl shutdown
/* 80351ACC 0034D72C  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 80351AD0 0034D730  4B FE 61 2D */	bl closesocket
lbl_80351AD4:
/* 80351AD4 0034D734  38 7F 00 54 */	addi r3, r31, 0x54
/* 80351AD8 0034D738  4B FF EF 85 */	bl ghiFreeBuffer
/* 80351ADC 0034D73C  38 7F 00 78 */	addi r3, r31, 0x78
/* 80351AE0 0034D740  4B FF EF 7D */	bl ghiFreeBuffer
/* 80351AE4 0034D744  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80351AE8 0034D748  4B FF EF 75 */	bl ghiFreeBuffer
/* 80351AEC 0034D74C  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80351AF0 0034D750  4B FF EF 6D */	bl ghiFreeBuffer
/* 80351AF4 0034D754  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80351AF8 0034D758  4B FF EF 65 */	bl ghiFreeBuffer
/* 80351AFC 0034D75C  80 1F 01 64 */	lwz r0, 0x164(r31)
/* 80351B00 0034D760  2C 00 00 00 */	cmpwi r0, 0
/* 80351B04 0034D764  41 82 00 0C */	beq lbl_80351B10
/* 80351B08 0034D768  7F E3 FB 78 */	mr r3, r31
/* 80351B0C 0034D76C  48 00 2E 81 */	bl ghiPostCleanupState
lbl_80351B10:
/* 80351B10 0034D770  80 7F 01 60 */	lwz r3, 0x160(r31)
/* 80351B14 0034D774  2C 03 00 00 */	cmpwi r3, 0
/* 80351B18 0034D778  41 82 00 20 */	beq lbl_80351B38
/* 80351B1C 0034D77C  48 00 27 25 */	bl ghiIsPostAutoFree
/* 80351B20 0034D780  2C 03 00 00 */	cmpwi r3, 0
/* 80351B24 0034D784  41 82 00 14 */	beq lbl_80351B38
/* 80351B28 0034D788  80 7F 01 60 */	lwz r3, 0x160(r31)
/* 80351B2C 0034D78C  48 00 27 1D */	bl ghiFreePost
/* 80351B30 0034D790  38 00 00 00 */	li r0, 0
/* 80351B34 0034D794  90 1F 01 60 */	stw r0, 0x160(r31)
lbl_80351B38:
/* 80351B38 0034D798  80 1F 01 98 */	lwz r0, 0x198(r31)
/* 80351B3C 0034D79C  2C 00 00 00 */	cmpwi r0, 0
/* 80351B40 0034D7A0  41 82 00 28 */	beq lbl_80351B68
/* 80351B44 0034D7A4  81 9F 01 A4 */	lwz r12, 0x1a4(r31)
/* 80351B48 0034D7A8  2C 0C 00 00 */	cmpwi r12, 0
/* 80351B4C 0034D7AC  41 82 00 14 */	beq lbl_80351B60
/* 80351B50 0034D7B0  7F E3 FB 78 */	mr r3, r31
/* 80351B54 0034D7B4  38 9F 01 90 */	addi r4, r31, 0x190
/* 80351B58 0034D7B8  7D 89 03 A6 */	mtctr r12
/* 80351B5C 0034D7BC  4E 80 04 21 */	bctrl
lbl_80351B60:
/* 80351B60 0034D7C0  38 00 00 00 */	li r0, 0
/* 80351B64 0034D7C4  90 1F 01 98 */	stw r0, 0x198(r31)
lbl_80351B68:
/* 80351B68 0034D7C8  38 00 00 00 */	li r0, 0
/* 80351B6C 0034D7CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80351B70 0034D7D0  80 6D B0 CC */	lwz r3, lbl_8064038C-_SDA_BASE_(r13)
/* 80351B74 0034D7D4  38 03 FF FF */	addi r0, r3, -1
/* 80351B78 0034D7D8  90 0D B0 CC */	stw r0, lbl_8064038C-_SDA_BASE_(r13)
/* 80351B7C 0034D7DC  4B FF F7 75 */	bl ghiUnlock
/* 80351B80 0034D7E0  38 60 00 01 */	li r3, 1
lbl_80351B84:
/* 80351B84 0034D7E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80351B88 0034D7E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80351B8C 0034D7EC  7C 08 03 A6 */	mtlr r0
/* 80351B90 0034D7F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80351B94 0034D7F4  4E 80 00 20 */	blr

.global ghiRequestToConnection
ghiRequestToConnection:
/* 80351B98 0034D7F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80351B9C 0034D7FC  7C 08 02 A6 */	mflr r0
/* 80351BA0 0034D800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80351BA4 0034D804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80351BA8 0034D808  7C 7F 1B 78 */	mr r31, r3
/* 80351BAC 0034D80C  4B FF F7 41 */	bl ghiLock
/* 80351BB0 0034D810  2C 1F 00 00 */	cmpwi r31, 0
/* 80351BB4 0034D814  41 80 00 10 */	blt lbl_80351BC4
/* 80351BB8 0034D818  80 0D B0 D0 */	lwz r0, lbl_80640390-_SDA_BASE_(r13)
/* 80351BBC 0034D81C  7C 1F 00 00 */	cmpw r31, r0
/* 80351BC0 0034D820  41 80 00 10 */	blt lbl_80351BD0
lbl_80351BC4:
/* 80351BC4 0034D824  4B FF F7 2D */	bl ghiUnlock
/* 80351BC8 0034D828  38 60 00 00 */	li r3, 0
/* 80351BCC 0034D82C  48 00 00 28 */	b lbl_80351BF4
lbl_80351BD0:
/* 80351BD0 0034D830  80 6D B0 D4 */	lwz r3, lbl_80640394-_SDA_BASE_(r13)
/* 80351BD4 0034D834  57 E0 10 3A */	slwi r0, r31, 2
/* 80351BD8 0034D838  7F E3 00 2E */	lwzx r31, r3, r0
/* 80351BDC 0034D83C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80351BE0 0034D840  2C 00 00 00 */	cmpwi r0, 0
/* 80351BE4 0034D844  40 82 00 08 */	bne lbl_80351BEC
/* 80351BE8 0034D848  3B E0 00 00 */	li r31, 0
lbl_80351BEC:
/* 80351BEC 0034D84C  4B FF F7 05 */	bl ghiUnlock
/* 80351BF0 0034D850  7F E3 FB 78 */	mr r3, r31
lbl_80351BF4:
/* 80351BF4 0034D854  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80351BF8 0034D858  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80351BFC 0034D85C  7C 08 03 A6 */	mtlr r0
/* 80351C00 0034D860  38 21 00 10 */	addi r1, r1, 0x10
/* 80351C04 0034D864  4E 80 00 20 */	blr

.global ghiEnumConnections
ghiEnumConnections:
/* 80351C08 0034D868  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80351C0C 0034D86C  7C 08 02 A6 */	mflr r0
/* 80351C10 0034D870  90 01 00 24 */	stw r0, 0x24(r1)
/* 80351C14 0034D874  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80351C18 0034D878  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80351C1C 0034D87C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80351C20 0034D880  7C 7D 1B 78 */	mr r29, r3
/* 80351C24 0034D884  80 0D B0 CC */	lwz r0, lbl_8064038C-_SDA_BASE_(r13)
/* 80351C28 0034D888  2C 00 00 00 */	cmpwi r0, 0
/* 80351C2C 0034D88C  40 81 00 4C */	ble lbl_80351C78
/* 80351C30 0034D890  4B FF F6 BD */	bl ghiLock
/* 80351C34 0034D894  3B C0 00 00 */	li r30, 0
/* 80351C38 0034D898  3B E0 00 00 */	li r31, 0
/* 80351C3C 0034D89C  48 00 00 2C */	b lbl_80351C68
lbl_80351C40:
/* 80351C40 0034D8A0  80 6D B0 D4 */	lwz r3, lbl_80640394-_SDA_BASE_(r13)
/* 80351C44 0034D8A4  7C 63 F8 2E */	lwzx r3, r3, r31
/* 80351C48 0034D8A8  80 03 00 00 */	lwz r0, 0(r3)
/* 80351C4C 0034D8AC  2C 00 00 00 */	cmpwi r0, 0
/* 80351C50 0034D8B0  41 82 00 10 */	beq lbl_80351C60
/* 80351C54 0034D8B4  7F AC EB 78 */	mr r12, r29
/* 80351C58 0034D8B8  7D 89 03 A6 */	mtctr r12
/* 80351C5C 0034D8BC  4E 80 04 21 */	bctrl
lbl_80351C60:
/* 80351C60 0034D8C0  3B FF 00 04 */	addi r31, r31, 4
/* 80351C64 0034D8C4  3B DE 00 01 */	addi r30, r30, 1
lbl_80351C68:
/* 80351C68 0034D8C8  80 0D B0 D0 */	lwz r0, lbl_80640390-_SDA_BASE_(r13)
/* 80351C6C 0034D8CC  7C 1E 00 00 */	cmpw r30, r0
/* 80351C70 0034D8D0  41 80 FF D0 */	blt lbl_80351C40
/* 80351C74 0034D8D4  4B FF F6 7D */	bl ghiUnlock
lbl_80351C78:
/* 80351C78 0034D8D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80351C7C 0034D8DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80351C80 0034D8E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80351C84 0034D8E4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80351C88 0034D8E8  7C 08 03 A6 */	mtlr r0
/* 80351C8C 0034D8EC  38 21 00 20 */	addi r1, r1, 0x20
/* 80351C90 0034D8F0  4E 80 00 20 */	blr

.global ghiRedirectConnection
ghiRedirectConnection:
/* 80351C94 0034D8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80351C98 0034D8F8  7C 08 02 A6 */	mflr r0
/* 80351C9C 0034D8FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80351CA0 0034D900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80351CA4 0034D904  3B E0 00 00 */	li r31, 0
/* 80351CA8 0034D908  93 C1 00 08 */	stw r30, 8(r1)
/* 80351CAC 0034D90C  7C 7E 1B 78 */	mr r30, r3
/* 80351CB0 0034D910  80 03 01 B0 */	lwz r0, 0x1b0(r3)
/* 80351CB4 0034D914  93 E3 00 10 */	stw r31, 0x10(r3)
/* 80351CB8 0034D918  2C 00 00 00 */	cmpwi r0, 0
/* 80351CBC 0034D91C  41 82 00 18 */	beq lbl_80351CD4
/* 80351CC0 0034D920  7C 03 03 78 */	mr r3, r0
/* 80351CC4 0034D924  4B FE 70 85 */	bl gsiCancelResolvingHostname
/* 80351CC8 0034D928  80 7E 01 B0 */	lwz r3, 0x1b0(r30)
/* 80351CCC 0034D92C  4B FE 76 6D */	bl gsifree
/* 80351CD0 0034D930  93 FE 01 B0 */	stw r31, 0x1b0(r30)
lbl_80351CD4:
/* 80351CD4 0034D934  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80351CD8 0034D938  4B FE 76 61 */	bl gsifree
/* 80351CDC 0034D93C  80 1E 01 2C */	lwz r0, 0x12c(r30)
/* 80351CE0 0034D940  3B E0 00 00 */	li r31, 0
/* 80351CE4 0034D944  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80351CE8 0034D948  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80351CEC 0034D94C  93 FE 01 2C */	stw r31, 0x12c(r30)
/* 80351CF0 0034D950  4B FE 76 49 */	bl gsifree
/* 80351CF4 0034D954  93 FE 00 18 */	stw r31, 0x18(r30)
/* 80351CF8 0034D958  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80351CFC 0034D95C  93 FE 00 1C */	stw r31, 0x1c(r30)
/* 80351D00 0034D960  B3 FE 00 20 */	sth r31, 0x20(r30)
/* 80351D04 0034D964  4B FE 76 35 */	bl gsifree
/* 80351D08 0034D968  93 FE 00 24 */	stw r31, 0x24(r30)
/* 80351D0C 0034D96C  38 80 00 02 */	li r4, 2
/* 80351D10 0034D970  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 80351D14 0034D974  4B FE 5F 1D */	bl shutdown
/* 80351D18 0034D978  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 80351D1C 0034D97C  4B FE 5E E1 */	bl closesocket
/* 80351D20 0034D980  38 00 FF FF */	li r0, -1
/* 80351D24 0034D984  38 7E 00 54 */	addi r3, r30, 0x54
/* 80351D28 0034D988  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80351D2C 0034D98C  4B FF F3 05 */	bl ghiResetBuffer
/* 80351D30 0034D990  38 7E 00 78 */	addi r3, r30, 0x78
/* 80351D34 0034D994  4B FF F2 FD */	bl ghiResetBuffer
/* 80351D38 0034D998  38 7E 00 9C */	addi r3, r30, 0x9c
/* 80351D3C 0034D99C  4B FF F2 F5 */	bl ghiResetBuffer
/* 80351D40 0034D9A0  38 7E 00 C0 */	addi r3, r30, 0xc0
/* 80351D44 0034D9A4  4B FF F2 ED */	bl ghiResetBuffer
/* 80351D48 0034D9A8  80 1E 01 98 */	lwz r0, 0x198(r30)
/* 80351D4C 0034D9AC  93 FE 01 0C */	stw r31, 0x10c(r30)
/* 80351D50 0034D9B0  2C 00 00 00 */	cmpwi r0, 0
/* 80351D54 0034D9B4  93 FE 01 10 */	stw r31, 0x110(r30)
/* 80351D58 0034D9B8  93 FE 01 14 */	stw r31, 0x114(r30)
/* 80351D5C 0034D9BC  93 FE 01 18 */	stw r31, 0x118(r30)
/* 80351D60 0034D9C0  93 FE 01 1C */	stw r31, 0x11c(r30)
/* 80351D64 0034D9C4  93 FE 01 54 */	stw r31, 0x154(r30)
/* 80351D68 0034D9C8  41 82 00 4C */	beq lbl_80351DB4
/* 80351D6C 0034D9CC  81 9E 01 A4 */	lwz r12, 0x1a4(r30)
/* 80351D70 0034D9D0  2C 0C 00 00 */	cmpwi r12, 0
/* 80351D74 0034D9D4  41 82 00 14 */	beq lbl_80351D88
/* 80351D78 0034D9D8  7F C3 F3 78 */	mr r3, r30
/* 80351D7C 0034D9DC  38 9E 01 90 */	addi r4, r30, 0x190
/* 80351D80 0034D9E0  7D 89 03 A6 */	mtctr r12
/* 80351D84 0034D9E4  4E 80 04 21 */	bctrl
lbl_80351D88:
/* 80351D88 0034D9E8  3B E0 00 00 */	li r31, 0
/* 80351D8C 0034D9EC  3C 60 80 45 */	lis r3, lbl_8044BF70@ha
/* 80351D90 0034D9F0  93 FE 01 98 */	stw r31, 0x198(r30)
/* 80351D94 0034D9F4  38 63 BF 70 */	addi r3, r3, lbl_8044BF70@l
/* 80351D98 0034D9F8  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80351D9C 0034D9FC  38 A0 00 08 */	li r5, 8
/* 80351DA0 0034DA00  4B E7 C7 C9 */	bl strncmp
/* 80351DA4 0034DA04  2C 03 00 00 */	cmpwi r3, 0
/* 80351DA8 0034DA08  41 82 00 0C */	beq lbl_80351DB4
/* 80351DAC 0034DA0C  93 FE 01 94 */	stw r31, 0x194(r30)
/* 80351DB0 0034DA10  93 FE 01 90 */	stw r31, 0x190(r30)
lbl_80351DB4:
/* 80351DB4 0034DA14  80 7E 01 30 */	lwz r3, 0x130(r30)
/* 80351DB8 0034DA18  38 03 00 01 */	addi r0, r3, 1
/* 80351DBC 0034DA1C  90 1E 01 30 */	stw r0, 0x130(r30)
/* 80351DC0 0034DA20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80351DC4 0034DA24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80351DC8 0034DA28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80351DCC 0034DA2C  7C 08 03 A6 */	mtlr r0
/* 80351DD0 0034DA30  38 21 00 10 */	addi r1, r1, 0x10
/* 80351DD4 0034DA34  4E 80 00 20 */	blr

.global ghiCleanupConnections
ghiCleanupConnections:
/* 80351DD8 0034DA38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80351DDC 0034DA3C  7C 08 02 A6 */	mflr r0
/* 80351DE0 0034DA40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80351DE4 0034DA44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80351DE8 0034DA48  93 C1 00 08 */	stw r30, 8(r1)
/* 80351DEC 0034DA4C  80 0D B0 D4 */	lwz r0, lbl_80640394-_SDA_BASE_(r13)
/* 80351DF0 0034DA50  2C 00 00 00 */	cmpwi r0, 0
/* 80351DF4 0034DA54  41 82 00 94 */	beq lbl_80351E88
/* 80351DF8 0034DA58  80 0D B0 CC */	lwz r0, lbl_8064038C-_SDA_BASE_(r13)
/* 80351DFC 0034DA5C  2C 00 00 00 */	cmpwi r0, 0
/* 80351E00 0034DA60  40 81 00 44 */	ble lbl_80351E44
/* 80351E04 0034DA64  4B FF F4 E9 */	bl ghiLock
/* 80351E08 0034DA68  3B E0 00 00 */	li r31, 0
/* 80351E0C 0034DA6C  3B C0 00 00 */	li r30, 0
/* 80351E10 0034DA70  48 00 00 24 */	b lbl_80351E34
lbl_80351E14:
/* 80351E14 0034DA74  80 6D B0 D4 */	lwz r3, lbl_80640394-_SDA_BASE_(r13)
/* 80351E18 0034DA78  7C 63 F0 2E */	lwzx r3, r3, r30
/* 80351E1C 0034DA7C  80 03 00 00 */	lwz r0, 0(r3)
/* 80351E20 0034DA80  2C 00 00 00 */	cmpwi r0, 0
/* 80351E24 0034DA84  41 82 00 08 */	beq lbl_80351E2C
/* 80351E28 0034DA88  4B FF FB FD */	bl ghiFreeConnection
lbl_80351E2C:
/* 80351E2C 0034DA8C  3B DE 00 04 */	addi r30, r30, 4
/* 80351E30 0034DA90  3B FF 00 01 */	addi r31, r31, 1
lbl_80351E34:
/* 80351E34 0034DA94  80 0D B0 D0 */	lwz r0, lbl_80640390-_SDA_BASE_(r13)
/* 80351E38 0034DA98  7C 1F 00 00 */	cmpw r31, r0
/* 80351E3C 0034DA9C  41 80 FF D8 */	blt lbl_80351E14
/* 80351E40 0034DAA0  4B FF F4 B1 */	bl ghiUnlock
lbl_80351E44:
/* 80351E44 0034DAA4  3B C0 00 00 */	li r30, 0
/* 80351E48 0034DAA8  3B E0 00 00 */	li r31, 0
/* 80351E4C 0034DAAC  48 00 00 18 */	b lbl_80351E64
lbl_80351E50:
/* 80351E50 0034DAB0  80 6D B0 D4 */	lwz r3, lbl_80640394-_SDA_BASE_(r13)
/* 80351E54 0034DAB4  7C 63 F8 2E */	lwzx r3, r3, r31
/* 80351E58 0034DAB8  4B FE 74 E1 */	bl gsifree
/* 80351E5C 0034DABC  3B FF 00 04 */	addi r31, r31, 4
/* 80351E60 0034DAC0  3B DE 00 01 */	addi r30, r30, 1
lbl_80351E64:
/* 80351E64 0034DAC4  80 0D B0 D0 */	lwz r0, lbl_80640390-_SDA_BASE_(r13)
/* 80351E68 0034DAC8  7C 1E 00 00 */	cmpw r30, r0
/* 80351E6C 0034DACC  41 80 FF E4 */	blt lbl_80351E50
/* 80351E70 0034DAD0  80 6D B0 D4 */	lwz r3, lbl_80640394-_SDA_BASE_(r13)
/* 80351E74 0034DAD4  4B FE 74 C5 */	bl gsifree
/* 80351E78 0034DAD8  38 00 00 00 */	li r0, 0
/* 80351E7C 0034DADC  90 0D B0 D4 */	stw r0, lbl_80640394-_SDA_BASE_(r13)
/* 80351E80 0034DAE0  90 0D B0 D0 */	stw r0, lbl_80640390-_SDA_BASE_(r13)
/* 80351E84 0034DAE4  90 0D B0 CC */	stw r0, lbl_8064038C-_SDA_BASE_(r13)
lbl_80351E88:
/* 80351E88 0034DAE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80351E8C 0034DAEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80351E90 0034DAF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80351E94 0034DAF4  7C 08 03 A6 */	mtlr r0
/* 80351E98 0034DAF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80351E9C 0034DAFC  4E 80 00 20 */	blr
