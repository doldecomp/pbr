.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_8022063C
func_8022063C:
/* 8022063C 0021C29C  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80220640 0021C2A0  7C 08 02 A6 */	mflr r0
/* 80220644 0021C2A4  90 01 01 04 */	stw r0, 0x104(r1)
/* 80220648 0021C2A8  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8022064C 0021C2AC  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 80220650 0021C2B0  2C 00 00 00 */	cmpwi r0, 0
/* 80220654 0021C2B4  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 80220658 0021C2B8  7C 7E 1B 78 */	mr r30, r3
/* 8022065C 0021C2BC  41 82 01 E0 */	beq lbl_8022083C
/* 80220660 0021C2C0  7C 03 03 78 */	mr r3, r0
/* 80220664 0021C2C4  7F C4 F3 78 */	mr r4, r30
/* 80220668 0021C2C8  38 A1 00 EC */	addi r5, r1, 0xec
/* 8022066C 0021C2CC  48 05 C3 91 */	bl PSMTXMultVec
/* 80220670 0021C2D0  C0 BE 00 14 */	lfs f5, 0x14(r30)
/* 80220674 0021C2D4  3C 60 80 49 */	lis r3, lbl_80493250@ha
/* 80220678 0021C2D8  C0 41 00 EC */	lfs f2, 0xec(r1)
/* 8022067C 0021C2DC  3B E3 32 50 */	addi r31, r3, lbl_80493250@l
/* 80220680 0021C2E0  C0 21 00 F0 */	lfs f1, 0xf0(r1)
/* 80220684 0021C2E4  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80220688 0021C2E8  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 8022068C 0021C2EC  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 80220690 0021C2F0  C0 9E 00 04 */	lfs f4, 4(r30)
/* 80220694 0021C2F4  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80220698 0021C2F8  D0 43 32 50 */	stfs f2, 0x3250(r3)
/* 8022069C 0021C2FC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 802206A0 0021C300  D0 3F 00 04 */	stfs f1, 4(r31)
/* 802206A4 0021C304  D0 1F 00 08 */	stfs f0, 8(r31)
/* 802206A8 0021C308  D0 61 00 D4 */	stfs f3, 0xd4(r1)
/* 802206AC 0021C30C  D0 81 00 D8 */	stfs f4, 0xd8(r1)
/* 802206B0 0021C310  D0 A1 00 DC */	stfs f5, 0xdc(r1)
/* 802206B4 0021C314  48 05 C3 49 */	bl PSMTXMultVec
/* 802206B8 0021C318  C0 41 00 E0 */	lfs f2, 0xe0(r1)
/* 802206BC 0021C31C  38 81 00 BC */	addi r4, r1, 0xbc
/* 802206C0 0021C320  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 802206C4 0021C324  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 802206C8 0021C328  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 802206CC 0021C32C  C0 BE 00 08 */	lfs f5, 8(r30)
/* 802206D0 0021C330  C0 9E 00 10 */	lfs f4, 0x10(r30)
/* 802206D4 0021C334  C0 7E 00 00 */	lfs f3, 0(r30)
/* 802206D8 0021C338  D0 5F 00 0C */	stfs f2, 0xc(r31)
/* 802206DC 0021C33C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 802206E0 0021C340  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 802206E4 0021C344  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 802206E8 0021C348  D0 61 00 BC */	stfs f3, 0xbc(r1)
/* 802206EC 0021C34C  D0 81 00 C0 */	stfs f4, 0xc0(r1)
/* 802206F0 0021C350  D0 A1 00 C4 */	stfs f5, 0xc4(r1)
/* 802206F4 0021C354  48 05 C3 09 */	bl PSMTXMultVec
/* 802206F8 0021C358  C0 41 00 C8 */	lfs f2, 0xc8(r1)
/* 802206FC 0021C35C  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80220700 0021C360  C0 21 00 CC */	lfs f1, 0xcc(r1)
/* 80220704 0021C364  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 80220708 0021C368  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 8022070C 0021C36C  C0 BE 00 14 */	lfs f5, 0x14(r30)
/* 80220710 0021C370  C0 9E 00 10 */	lfs f4, 0x10(r30)
/* 80220714 0021C374  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80220718 0021C378  D0 5F 00 18 */	stfs f2, 0x18(r31)
/* 8022071C 0021C37C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80220720 0021C380  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 80220724 0021C384  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 80220728 0021C388  D0 61 00 A4 */	stfs f3, 0xa4(r1)
/* 8022072C 0021C38C  D0 81 00 A8 */	stfs f4, 0xa8(r1)
/* 80220730 0021C390  D0 A1 00 AC */	stfs f5, 0xac(r1)
/* 80220734 0021C394  48 05 C2 C9 */	bl PSMTXMultVec
/* 80220738 0021C398  C0 41 00 B0 */	lfs f2, 0xb0(r1)
/* 8022073C 0021C39C  38 81 00 8C */	addi r4, r1, 0x8c
/* 80220740 0021C3A0  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 80220744 0021C3A4  38 A1 00 98 */	addi r5, r1, 0x98
/* 80220748 0021C3A8  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8022074C 0021C3AC  C0 BE 00 08 */	lfs f5, 8(r30)
/* 80220750 0021C3B0  C0 9E 00 04 */	lfs f4, 4(r30)
/* 80220754 0021C3B4  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80220758 0021C3B8  D0 5F 00 24 */	stfs f2, 0x24(r31)
/* 8022075C 0021C3BC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80220760 0021C3C0  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 80220764 0021C3C4  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80220768 0021C3C8  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 8022076C 0021C3CC  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 80220770 0021C3D0  D0 A1 00 94 */	stfs f5, 0x94(r1)
/* 80220774 0021C3D4  48 05 C2 89 */	bl PSMTXMultVec
/* 80220778 0021C3D8  C0 41 00 98 */	lfs f2, 0x98(r1)
/* 8022077C 0021C3DC  38 81 00 74 */	addi r4, r1, 0x74
/* 80220780 0021C3E0  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 80220784 0021C3E4  38 A1 00 80 */	addi r5, r1, 0x80
/* 80220788 0021C3E8  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8022078C 0021C3EC  C0 BE 00 14 */	lfs f5, 0x14(r30)
/* 80220790 0021C3F0  C0 9E 00 04 */	lfs f4, 4(r30)
/* 80220794 0021C3F4  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80220798 0021C3F8  D0 5F 00 30 */	stfs f2, 0x30(r31)
/* 8022079C 0021C3FC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 802207A0 0021C400  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 802207A4 0021C404  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 802207A8 0021C408  D0 61 00 74 */	stfs f3, 0x74(r1)
/* 802207AC 0021C40C  D0 81 00 78 */	stfs f4, 0x78(r1)
/* 802207B0 0021C410  D0 A1 00 7C */	stfs f5, 0x7c(r1)
/* 802207B4 0021C414  48 05 C2 49 */	bl PSMTXMultVec
/* 802207B8 0021C418  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 802207BC 0021C41C  38 81 00 5C */	addi r4, r1, 0x5c
/* 802207C0 0021C420  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 802207C4 0021C424  38 A1 00 68 */	addi r5, r1, 0x68
/* 802207C8 0021C428  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 802207CC 0021C42C  C0 BE 00 08 */	lfs f5, 8(r30)
/* 802207D0 0021C430  C0 9E 00 10 */	lfs f4, 0x10(r30)
/* 802207D4 0021C434  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 802207D8 0021C438  D0 5F 00 3C */	stfs f2, 0x3c(r31)
/* 802207DC 0021C43C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 802207E0 0021C440  D0 3F 00 40 */	stfs f1, 0x40(r31)
/* 802207E4 0021C444  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 802207E8 0021C448  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 802207EC 0021C44C  D0 81 00 60 */	stfs f4, 0x60(r1)
/* 802207F0 0021C450  D0 A1 00 64 */	stfs f5, 0x64(r1)
/* 802207F4 0021C454  48 05 C2 09 */	bl PSMTXMultVec
/* 802207F8 0021C458  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 802207FC 0021C45C  38 9E 00 0C */	addi r4, r30, 0xc
/* 80220800 0021C460  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80220804 0021C464  38 A1 00 50 */	addi r5, r1, 0x50
/* 80220808 0021C468  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8022080C 0021C46C  D0 5F 00 48 */	stfs f2, 0x48(r31)
/* 80220810 0021C470  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80220814 0021C474  D0 3F 00 4C */	stfs f1, 0x4c(r31)
/* 80220818 0021C478  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 8022081C 0021C47C  48 05 C1 E1 */	bl PSMTXMultVec
/* 80220820 0021C480  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80220824 0021C484  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80220828 0021C488  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8022082C 0021C48C  D0 5F 00 54 */	stfs f2, 0x54(r31)
/* 80220830 0021C490  D0 3F 00 58 */	stfs f1, 0x58(r31)
/* 80220834 0021C494  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 80220838 0021C498  48 00 00 CC */	b lbl_80220904
lbl_8022083C:
/* 8022083C 0021C49C  C0 43 00 00 */	lfs f2, 0(r3)
/* 80220840 0021C4A0  3C A0 80 49 */	lis r5, lbl_80493250@ha
/* 80220844 0021C4A4  C0 23 00 04 */	lfs f1, 4(r3)
/* 80220848 0021C4A8  38 85 32 50 */	addi r4, r5, lbl_80493250@l
/* 8022084C 0021C4AC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80220850 0021C4B0  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 80220854 0021C4B4  C0 83 00 10 */	lfs f4, 0x10(r3)
/* 80220858 0021C4B8  C0 A3 00 0C */	lfs f5, 0xc(r3)
/* 8022085C 0021C4BC  D0 45 32 50 */	stfs f2, 0x3250(r5)
/* 80220860 0021C4C0  D0 24 00 04 */	stfs f1, 4(r4)
/* 80220864 0021C4C4  D0 04 00 08 */	stfs f0, 8(r4)
/* 80220868 0021C4C8  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8022086C 0021C4CC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80220870 0021C4D0  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 80220874 0021C4D4  D0 44 00 0C */	stfs f2, 0xc(r4)
/* 80220878 0021C4D8  D0 24 00 10 */	stfs f1, 0x10(r4)
/* 8022087C 0021C4DC  D0 64 00 14 */	stfs f3, 0x14(r4)
/* 80220880 0021C4E0  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80220884 0021C4E4  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 80220888 0021C4E8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8022088C 0021C4EC  D0 44 00 18 */	stfs f2, 0x18(r4)
/* 80220890 0021C4F0  D0 84 00 1C */	stfs f4, 0x1c(r4)
/* 80220894 0021C4F4  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80220898 0021C4F8  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8022089C 0021C4FC  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 802208A0 0021C500  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 802208A4 0021C504  D0 44 00 24 */	stfs f2, 0x24(r4)
/* 802208A8 0021C508  D0 84 00 28 */	stfs f4, 0x28(r4)
/* 802208AC 0021C50C  D0 64 00 2C */	stfs f3, 0x2c(r4)
/* 802208B0 0021C510  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 802208B4 0021C514  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 802208B8 0021C518  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802208BC 0021C51C  D0 A4 00 30 */	stfs f5, 0x30(r4)
/* 802208C0 0021C520  D0 24 00 34 */	stfs f1, 0x34(r4)
/* 802208C4 0021C524  D0 04 00 38 */	stfs f0, 0x38(r4)
/* 802208C8 0021C528  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 802208CC 0021C52C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802208D0 0021C530  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 802208D4 0021C534  D0 A4 00 3C */	stfs f5, 0x3c(r4)
/* 802208D8 0021C538  D0 24 00 40 */	stfs f1, 0x40(r4)
/* 802208DC 0021C53C  D0 64 00 44 */	stfs f3, 0x44(r4)
/* 802208E0 0021C540  D0 A1 00 08 */	stfs f5, 8(r1)
/* 802208E4 0021C544  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 802208E8 0021C548  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802208EC 0021C54C  D0 A4 00 48 */	stfs f5, 0x48(r4)
/* 802208F0 0021C550  D0 84 00 4C */	stfs f4, 0x4c(r4)
/* 802208F4 0021C554  D0 04 00 50 */	stfs f0, 0x50(r4)
/* 802208F8 0021C558  D0 A4 00 54 */	stfs f5, 0x54(r4)
/* 802208FC 0021C55C  D0 84 00 58 */	stfs f4, 0x58(r4)
/* 80220900 0021C560  D0 64 00 5C */	stfs f3, 0x5c(r4)
lbl_80220904:
/* 80220904 0021C564  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80220908 0021C568  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 8022090C 0021C56C  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 80220910 0021C570  7C 08 03 A6 */	mtlr r0
/* 80220914 0021C574  38 21 01 00 */	addi r1, r1, 0x100
/* 80220918 0021C578  4E 80 00 20 */	blr

.global func_8022091C
func_8022091C:
/* 8022091C 0021C57C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80220920 0021C580  7C 08 02 A6 */	mflr r0
/* 80220924 0021C584  90 01 00 24 */	stw r0, 0x24(r1)
/* 80220928 0021C588  38 A1 00 08 */	addi r5, r1, 8
/* 8022092C 0021C58C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80220930 0021C590  7C 9F 23 78 */	mr r31, r4
/* 80220934 0021C594  38 84 00 0C */	addi r4, r4, 0xc
/* 80220938 0021C598  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8022093C 0021C59C  7C 7E 1B 78 */	mr r30, r3
/* 80220940 0021C5A0  7F E3 FB 78 */	mr r3, r31
/* 80220944 0021C5A4  48 05 C3 81 */	bl PSVECAdd
/* 80220948 0021C5A8  C0 22 9B F0 */	lfs f1, lbl_806421F0-_SDA2_BASE_(r2)
/* 8022094C 0021C5AC  7F C4 F3 78 */	mr r4, r30
/* 80220950 0021C5B0  38 61 00 08 */	addi r3, r1, 8
/* 80220954 0021C5B4  48 05 C3 B9 */	bl PSVECScale
/* 80220958 0021C5B8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8022095C 0021C5BC  2C 03 00 00 */	cmpwi r3, 0
/* 80220960 0021C5C0  41 82 00 10 */	beq lbl_80220970
/* 80220964 0021C5C4  7F C4 F3 78 */	mr r4, r30
/* 80220968 0021C5C8  7F C5 F3 78 */	mr r5, r30
/* 8022096C 0021C5CC  48 05 C0 91 */	bl PSMTXMultVec
lbl_80220970:
/* 80220970 0021C5D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80220974 0021C5D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80220978 0021C5D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8022097C 0021C5DC  7C 08 03 A6 */	mtlr r0
/* 80220980 0021C5E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80220984 0021C5E4  4E 80 00 20 */	blr

.global func_80220988
func_80220988:
/* 80220988 0021C5E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8022098C 0021C5EC  7C 08 02 A6 */	mflr r0
/* 80220990 0021C5F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80220994 0021C5F4  80 04 00 18 */	lwz r0, 0x18(r4)
/* 80220998 0021C5F8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8022099C 0021C5FC  2C 00 00 00 */	cmpwi r0, 0
/* 802209A0 0021C600  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802209A4 0021C604  93 A1 00 34 */	stw r29, 0x34(r1)
/* 802209A8 0021C608  7C 9D 23 78 */	mr r29, r4
/* 802209AC 0021C60C  93 81 00 30 */	stw r28, 0x30(r1)
/* 802209B0 0021C610  7C 7C 1B 78 */	mr r28, r3
/* 802209B4 0021C614  40 82 00 14 */	bne lbl_802209C8
/* 802209B8 0021C618  7F 85 E3 78 */	mr r5, r28
/* 802209BC 0021C61C  38 64 00 0C */	addi r3, r4, 0xc
/* 802209C0 0021C620  48 05 C3 29 */	bl PSVECSubtract
/* 802209C4 0021C624  48 00 01 0C */	b lbl_80220AD0
lbl_802209C8:
/* 802209C8 0021C628  7F A3 EB 78 */	mr r3, r29
/* 802209CC 0021C62C  4B FF FC 71 */	bl func_8022063C
/* 802209D0 0021C630  3F E0 80 49 */	lis r31, lbl_80493250@ha
/* 802209D4 0021C634  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 802209D8 0021C638  38 9F 32 50 */	addi r4, r31, lbl_80493250@l
/* 802209DC 0021C63C  7C 85 23 78 */	mr r5, r4
/* 802209E0 0021C640  48 05 C0 71 */	bl PSMTXMultVecSR
/* 802209E4 0021C644  38 7F 32 50 */	addi r3, r31, 0x3250
/* 802209E8 0021C648  C0 5F 32 50 */	lfs f2, 0x3250(r31)
/* 802209EC 0021C64C  C0 23 00 04 */	lfs f1, 4(r3)
/* 802209F0 0021C650  3B E3 00 0C */	addi r31, r3, 0xc
/* 802209F4 0021C654  C0 03 00 08 */	lfs f0, 8(r3)
/* 802209F8 0021C658  3B C0 00 01 */	li r30, 1
/* 802209FC 0021C65C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80220A00 0021C660  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80220A04 0021C664  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80220A08 0021C668  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80220A0C 0021C66C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80220A10 0021C670  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80220A14:
/* 80220A14 0021C674  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 80220A18 0021C678  7F E4 FB 78 */	mr r4, r31
/* 80220A1C 0021C67C  7F E5 FB 78 */	mr r5, r31
/* 80220A20 0021C680  48 05 C0 31 */	bl PSMTXMultVecSR
/* 80220A24 0021C684  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80220A28 0021C688  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80220A2C 0021C68C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80220A30 0021C690  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80220A34 0021C694  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80220A38 0021C698  D0 61 00 08 */	stfs f3, 8(r1)
/* 80220A3C 0021C69C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80220A40 0021C6A0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80220A44 0021C6A4  40 80 00 08 */	bge lbl_80220A4C
/* 80220A48 0021C6A8  D0 61 00 20 */	stfs f3, 0x20(r1)
lbl_80220A4C:
/* 80220A4C 0021C6AC  C0 21 00 08 */	lfs f1, 8(r1)
/* 80220A50 0021C6B0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80220A54 0021C6B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80220A58 0021C6B8  40 81 00 08 */	ble lbl_80220A60
/* 80220A5C 0021C6BC  D0 21 00 14 */	stfs f1, 0x14(r1)
lbl_80220A60:
/* 80220A60 0021C6C0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80220A64 0021C6C4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80220A68 0021C6C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80220A6C 0021C6CC  40 80 00 08 */	bge lbl_80220A74
/* 80220A70 0021C6D0  D0 21 00 24 */	stfs f1, 0x24(r1)
lbl_80220A74:
/* 80220A74 0021C6D4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80220A78 0021C6D8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80220A7C 0021C6DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80220A80 0021C6E0  40 81 00 08 */	ble lbl_80220A88
/* 80220A84 0021C6E4  D0 21 00 18 */	stfs f1, 0x18(r1)
lbl_80220A88:
/* 80220A88 0021C6E8  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80220A8C 0021C6EC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80220A90 0021C6F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80220A94 0021C6F4  40 80 00 08 */	bge lbl_80220A9C
/* 80220A98 0021C6F8  D0 21 00 28 */	stfs f1, 0x28(r1)
lbl_80220A9C:
/* 80220A9C 0021C6FC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80220AA0 0021C700  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80220AA4 0021C704  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80220AA8 0021C708  40 81 00 08 */	ble lbl_80220AB0
/* 80220AAC 0021C70C  D0 21 00 1C */	stfs f1, 0x1c(r1)
lbl_80220AB0:
/* 80220AB0 0021C710  3B DE 00 01 */	addi r30, r30, 1
/* 80220AB4 0021C714  3B FF 00 0C */	addi r31, r31, 0xc
/* 80220AB8 0021C718  2C 1E 00 08 */	cmpwi r30, 8
/* 80220ABC 0021C71C  41 80 FF 58 */	blt lbl_80220A14
/* 80220AC0 0021C720  7F 85 E3 78 */	mr r5, r28
/* 80220AC4 0021C724  38 61 00 14 */	addi r3, r1, 0x14
/* 80220AC8 0021C728  38 81 00 20 */	addi r4, r1, 0x20
/* 80220ACC 0021C72C  48 05 C2 1D */	bl PSVECSubtract
lbl_80220AD0:
/* 80220AD0 0021C730  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80220AD4 0021C734  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80220AD8 0021C738  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80220ADC 0021C73C  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80220AE0 0021C740  83 81 00 30 */	lwz r28, 0x30(r1)
/* 80220AE4 0021C744  7C 08 03 A6 */	mtlr r0
/* 80220AE8 0021C748  38 21 00 40 */	addi r1, r1, 0x40
/* 80220AEC 0021C74C  4E 80 00 20 */	blr

.global func_80220AF0
func_80220AF0:
/* 80220AF0 0021C750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80220AF4 0021C754  7C 08 02 A6 */	mflr r0
/* 80220AF8 0021C758  90 01 00 14 */	stw r0, 0x14(r1)
/* 80220AFC 0021C75C  4B FF FB 41 */	bl func_8022063C
/* 80220B00 0021C760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80220B04 0021C764  3C 60 80 49 */	lis r3, lbl_80493250@ha
/* 80220B08 0021C768  38 63 32 50 */	addi r3, r3, lbl_80493250@l
/* 80220B0C 0021C76C  7C 08 03 A6 */	mtlr r0
/* 80220B10 0021C770  38 21 00 10 */	addi r1, r1, 0x10
/* 80220B14 0021C774  4E 80 00 20 */	blr

.global func_80220B18
func_80220B18:
/* 80220B18 0021C778  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80220B1C 0021C77C  7C 08 02 A6 */	mflr r0
/* 80220B20 0021C780  90 01 00 74 */	stw r0, 0x74(r1)
/* 80220B24 0021C784  4B FF FB 19 */	bl func_8022063C
/* 80220B28 0021C788  3C A0 80 49 */	lis r5, lbl_80493250@ha
/* 80220B2C 0021C78C  80 6D A3 D8 */	lwz r3, render_context_ptr-_SDA_BASE_(r13)
/* 80220B30 0021C790  38 81 00 08 */	addi r4, r1, 8
/* 80220B34 0021C794  38 C0 00 08 */	li r6, 8
/* 80220B38 0021C798  38 A5 32 50 */	addi r5, r5, lbl_80493250@l
/* 80220B3C 0021C79C  48 01 21 E9 */	bl func_80232D24
/* 80220B40 0021C7A0  2C 03 00 00 */	cmpwi r3, 0
/* 80220B44 0021C7A4  41 82 00 28 */	beq lbl_80220B6C
/* 80220B48 0021C7A8  41 80 00 2C */	blt lbl_80220B74
/* 80220B4C 0021C7AC  2C 03 00 03 */	cmpwi r3, 3
/* 80220B50 0021C7B0  40 80 00 24 */	bge lbl_80220B74
/* 80220B54 0021C7B4  80 6D A3 D8 */	lwz r3, render_context_ptr-_SDA_BASE_(r13)
/* 80220B58 0021C7B8  38 A1 00 08 */	addi r5, r1, 8
/* 80220B5C 0021C7BC  38 C0 00 08 */	li r6, 8
/* 80220B60 0021C7C0  38 83 00 A8 */	addi r4, r3, 0xa8
/* 80220B64 0021C7C4  48 01 26 BD */	bl func_80233220
/* 80220B68 0021C7C8  48 00 00 10 */	b lbl_80220B78
lbl_80220B6C:
/* 80220B6C 0021C7CC  38 60 00 00 */	li r3, 0
/* 80220B70 0021C7D0  48 00 00 08 */	b lbl_80220B78
lbl_80220B74:
/* 80220B74 0021C7D4  38 60 00 01 */	li r3, 1
lbl_80220B78:
/* 80220B78 0021C7D8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80220B7C 0021C7DC  7C 08 03 A6 */	mtlr r0
/* 80220B80 0021C7E0  38 21 00 70 */	addi r1, r1, 0x70
/* 80220B84 0021C7E4  4E 80 00 20 */	blr

.global func_80220B88
func_80220B88:
/* 80220B88 0021C7E8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80220B8C 0021C7EC  7C 08 02 A6 */	mflr r0
/* 80220B90 0021C7F0  C0 44 00 00 */	lfs f2, 0(r4)
/* 80220B94 0021C7F4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80220B98 0021C7F8  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80220B9C 0021C7FC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80220BA0 0021C800  7C 7F 1B 78 */	mr r31, r3
/* 80220BA4 0021C804  C0 24 00 04 */	lfs f1, 4(r4)
/* 80220BA8 0021C808  2C 00 00 00 */	cmpwi r0, 0
/* 80220BAC 0021C80C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80220BB0 0021C810  D0 41 00 08 */	stfs f2, 8(r1)
/* 80220BB4 0021C814  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80220BB8 0021C818  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80220BBC 0021C81C  41 82 00 20 */	beq lbl_80220BDC
/* 80220BC0 0021C820  7C 03 03 78 */	mr r3, r0
/* 80220BC4 0021C824  38 81 00 18 */	addi r4, r1, 0x18
/* 80220BC8 0021C828  48 05 B4 E1 */	bl PSMTXInverse
/* 80220BCC 0021C82C  38 81 00 08 */	addi r4, r1, 8
/* 80220BD0 0021C830  38 61 00 18 */	addi r3, r1, 0x18
/* 80220BD4 0021C834  7C 85 23 78 */	mr r5, r4
/* 80220BD8 0021C838  48 05 BE 25 */	bl PSMTXMultVec
lbl_80220BDC:
/* 80220BDC 0021C83C  C0 61 00 08 */	lfs f3, 8(r1)
/* 80220BE0 0021C840  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80220BE4 0021C844  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80220BE8 0021C848  40 80 00 0C */	bge lbl_80220BF4
/* 80220BEC 0021C84C  38 60 00 00 */	li r3, 0
/* 80220BF0 0021C850  48 00 00 74 */	b lbl_80220C64
lbl_80220BF4:
/* 80220BF4 0021C854  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80220BF8 0021C858  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80220BFC 0021C85C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80220C00 0021C860  40 80 00 0C */	bge lbl_80220C0C
/* 80220C04 0021C864  38 60 00 00 */	li r3, 0
/* 80220C08 0021C868  48 00 00 5C */	b lbl_80220C64
lbl_80220C0C:
/* 80220C0C 0021C86C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80220C10 0021C870  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80220C14 0021C874  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80220C18 0021C878  40 80 00 0C */	bge lbl_80220C24
/* 80220C1C 0021C87C  38 60 00 00 */	li r3, 0
/* 80220C20 0021C880  48 00 00 44 */	b lbl_80220C64
lbl_80220C24:
/* 80220C24 0021C884  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80220C28 0021C888  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80220C2C 0021C88C  40 81 00 0C */	ble lbl_80220C38
/* 80220C30 0021C890  38 60 00 00 */	li r3, 0
/* 80220C34 0021C894  48 00 00 30 */	b lbl_80220C64
lbl_80220C38:
/* 80220C38 0021C898  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80220C3C 0021C89C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80220C40 0021C8A0  40 81 00 0C */	ble lbl_80220C4C
/* 80220C44 0021C8A4  38 60 00 00 */	li r3, 0
/* 80220C48 0021C8A8  48 00 00 1C */	b lbl_80220C64
lbl_80220C4C:
/* 80220C4C 0021C8AC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80220C50 0021C8B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80220C54 0021C8B4  7C 00 00 26 */	mfcr r0
/* 80220C58 0021C8B8  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
/* 80220C5C 0021C8BC  7C 00 00 34 */	cntlzw r0, r0
/* 80220C60 0021C8C0  54 03 D9 7E */	srwi r3, r0, 5
lbl_80220C64:
/* 80220C64 0021C8C4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80220C68 0021C8C8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80220C6C 0021C8CC  7C 08 03 A6 */	mtlr r0
/* 80220C70 0021C8D0  38 21 00 50 */	addi r1, r1, 0x50
/* 80220C74 0021C8D4  4E 80 00 20 */	blr

.global func_80220C78
func_80220C78:
/* 80220C78 0021C8D8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80220C7C 0021C8DC  7C 08 02 A6 */	mflr r0
/* 80220C80 0021C8E0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80220C84 0021C8E4  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80220C88 0021C8E8  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80220C8C 0021C8EC  93 A1 00 54 */	stw r29, 0x54(r1)
/* 80220C90 0021C8F0  7C 7D 1B 78 */	mr r29, r3
/* 80220C94 0021C8F4  7C 83 23 78 */	mr r3, r4
/* 80220C98 0021C8F8  4B FF F9 A5 */	bl func_8022063C
/* 80220C9C 0021C8FC  3F E0 80 49 */	lis r31, lbl_80493250@ha
/* 80220CA0 0021C900  3B C0 00 00 */	li r30, 0
/* 80220CA4 0021C904  3B FF 32 50 */	addi r31, r31, lbl_80493250@l
lbl_80220CA8:
/* 80220CA8 0021C908  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80220CAC 0021C90C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80220CB0 0021C910  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80220CB4 0021C914  D0 41 00 08 */	stfs f2, 8(r1)
/* 80220CB8 0021C918  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80220CBC 0021C91C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80220CC0 0021C920  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 80220CC4 0021C924  2C 03 00 00 */	cmpwi r3, 0
/* 80220CC8 0021C928  41 82 00 1C */	beq lbl_80220CE4
/* 80220CCC 0021C92C  38 81 00 18 */	addi r4, r1, 0x18
/* 80220CD0 0021C930  48 05 B3 D9 */	bl PSMTXInverse
/* 80220CD4 0021C934  38 81 00 08 */	addi r4, r1, 8
/* 80220CD8 0021C938  38 61 00 18 */	addi r3, r1, 0x18
/* 80220CDC 0021C93C  7C 85 23 78 */	mr r5, r4
/* 80220CE0 0021C940  48 05 BD 1D */	bl PSMTXMultVec
lbl_80220CE4:
/* 80220CE4 0021C944  C0 21 00 08 */	lfs f1, 8(r1)
/* 80220CE8 0021C948  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80220CEC 0021C94C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80220CF0 0021C950  40 80 00 08 */	bge lbl_80220CF8
/* 80220CF4 0021C954  D0 3D 00 00 */	stfs f1, 0(r29)
lbl_80220CF8:
/* 80220CF8 0021C958  C0 21 00 08 */	lfs f1, 8(r1)
/* 80220CFC 0021C95C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80220D00 0021C960  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80220D04 0021C964  40 81 00 08 */	ble lbl_80220D0C
/* 80220D08 0021C968  D0 3D 00 0C */	stfs f1, 0xc(r29)
lbl_80220D0C:
/* 80220D0C 0021C96C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80220D10 0021C970  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80220D14 0021C974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80220D18 0021C978  40 80 00 08 */	bge lbl_80220D20
/* 80220D1C 0021C97C  D0 3D 00 04 */	stfs f1, 4(r29)
lbl_80220D20:
/* 80220D20 0021C980  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80220D24 0021C984  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80220D28 0021C988  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80220D2C 0021C98C  40 81 00 08 */	ble lbl_80220D34
/* 80220D30 0021C990  D0 3D 00 10 */	stfs f1, 0x10(r29)
lbl_80220D34:
/* 80220D34 0021C994  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80220D38 0021C998  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80220D3C 0021C99C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80220D40 0021C9A0  40 80 00 08 */	bge lbl_80220D48
/* 80220D44 0021C9A4  D0 3D 00 08 */	stfs f1, 8(r29)
lbl_80220D48:
/* 80220D48 0021C9A8  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80220D4C 0021C9AC  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80220D50 0021C9B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80220D54 0021C9B4  40 81 00 08 */	ble lbl_80220D5C
/* 80220D58 0021C9B8  D0 3D 00 14 */	stfs f1, 0x14(r29)
lbl_80220D5C:
/* 80220D5C 0021C9BC  3B DE 00 01 */	addi r30, r30, 1
/* 80220D60 0021C9C0  3B FF 00 0C */	addi r31, r31, 0xc
/* 80220D64 0021C9C4  2C 1E 00 08 */	cmpwi r30, 8
/* 80220D68 0021C9C8  41 80 FF 40 */	blt lbl_80220CA8
/* 80220D6C 0021C9CC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80220D70 0021C9D0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80220D74 0021C9D4  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80220D78 0021C9D8  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 80220D7C 0021C9DC  7C 08 03 A6 */	mtlr r0
/* 80220D80 0021C9E0  38 21 00 60 */	addi r1, r1, 0x60
/* 80220D84 0021C9E4  4E 80 00 20 */	blr

.global func_80220D88
func_80220D88:
/* 80220D88 0021C9E8  38 C0 00 01 */	li r6, 1
/* 80220D8C 0021C9EC  39 0D A2 B0 */	addi r8, r13, lbl_8063F570-_SDA_BASE_
/* 80220D90 0021C9F0  38 A0 00 04 */	li r5, 4
/* 80220D94 0021C9F4  38 00 00 00 */	li r0, 0
/* 80220D98 0021C9F8  3C 60 80 49 */	lis r3, lbl_80493250@ha
/* 80220D9C 0021C9FC  3C 80 80 03 */	lis r4, func_8002A294@ha
/* 80220DA0 0021CA00  98 CD A2 B0 */	stb r6, lbl_8063F570-_SDA_BASE_(r13)
/* 80220DA4 0021CA04  38 63 32 50 */	addi r3, r3, lbl_80493250@l
/* 80220DA8 0021CA08  38 84 A2 94 */	addi r4, r4, func_8002A294@l
/* 80220DAC 0021CA0C  38 C0 00 0C */	li r6, 0xc
/* 80220DB0 0021CA10  B0 A8 00 02 */	sth r5, 2(r8)
/* 80220DB4 0021CA14  38 A0 00 00 */	li r5, 0
/* 80220DB8 0021CA18  38 E0 00 08 */	li r7, 8
/* 80220DBC 0021CA1C  98 08 00 04 */	stb r0, 4(r8)
/* 80220DC0 0021CA20  4B FA 60 A8 */	b __construct_array
