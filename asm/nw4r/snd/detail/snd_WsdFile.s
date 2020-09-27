.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __ct__Q44nw4r3snd6detail13WsdFileReaderFPCv
__ct__Q44nw4r3snd6detail13WsdFileReaderFPCv:
/* 803839DC 0037F63C  80 A4 00 00 */	lwz r5, 0(r4)
/* 803839E0 0037F640  38 C0 00 00 */	li r6, 0
/* 803839E4 0037F644  90 C3 00 00 */	stw r6, 0(r3)
/* 803839E8 0037F648  3C 05 AD A9 */	addis r0, r5, 0xada9
/* 803839EC 0037F64C  28 00 53 44 */	cmplwi r0, 0x5344
/* 803839F0 0037F650  90 C3 00 04 */	stw r6, 4(r3)
/* 803839F4 0037F654  90 C3 00 08 */	stw r6, 8(r3)
/* 803839F8 0037F658  41 82 00 0C */	beq lbl_80383A04
/* 803839FC 0037F65C  38 00 00 00 */	li r0, 0
/* 80383A00 0037F660  48 00 00 30 */	b lbl_80383A30
lbl_80383A04:
/* 80383A04 0037F664  A0 C4 00 06 */	lhz r6, 6(r4)
/* 80383A08 0037F668  28 06 01 00 */	cmplwi r6, 0x100
/* 80383A0C 0037F66C  40 80 00 0C */	bge lbl_80383A18
/* 80383A10 0037F670  38 00 00 00 */	li r0, 0
/* 80383A14 0037F674  48 00 00 1C */	b lbl_80383A30
lbl_80383A18:
/* 80383A18 0037F678  20 06 01 02 */	subfic r0, r6, 0x102
/* 80383A1C 0037F67C  38 A0 01 02 */	li r5, 0x102
/* 80383A20 0037F680  7C A5 33 38 */	orc r5, r5, r6
/* 80383A24 0037F684  54 00 F8 7E */	srwi r0, r0, 1
/* 80383A28 0037F688  7C 00 28 50 */	subf r0, r0, r5
/* 80383A2C 0037F68C  54 00 0F FE */	srwi r0, r0, 0x1f
lbl_80383A30:
/* 80383A30 0037F690  2C 00 00 00 */	cmpwi r0, 0
/* 80383A34 0037F694  4D 82 00 20 */	beqlr 
/* 80383A38 0037F698  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 80383A3C 0037F69C  80 04 00 18 */	lwz r0, 0x18(r4)
/* 80383A40 0037F6A0  7C A5 22 14 */	add r5, r5, r4
/* 80383A44 0037F6A4  90 83 00 00 */	stw r4, 0(r3)
/* 80383A48 0037F6A8  7C 00 22 14 */	add r0, r0, r4
/* 80383A4C 0037F6AC  90 A3 00 04 */	stw r5, 4(r3)
/* 80383A50 0037F6B0  90 03 00 08 */	stw r0, 8(r3)
/* 80383A54 0037F6B4  4E 80 00 20 */	blr 

.global ReadWaveSoundInfo__Q44nw4r3snd6detail13WsdFileReaderCFPQ44nw4r3snd6detail13WaveSoundInfoi
ReadWaveSoundInfo__Q44nw4r3snd6detail13WsdFileReaderCFPQ44nw4r3snd6detail13WaveSoundInfoi:
/* 80383A58 0037F6B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383A5C 0037F6BC  7C 08 02 A6 */	mflr r0
/* 80383A60 0037F6C0  80 C3 00 04 */	lwz r6, 4(r3)
/* 80383A64 0037F6C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383A68 0037F6C8  54 A0 18 38 */	slwi r0, r5, 3
/* 80383A6C 0037F6CC  38 A6 00 08 */	addi r5, r6, 8
/* 80383A70 0037F6D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80383A74 0037F6D4  7C 9F 23 78 */	mr r31, r4
/* 80383A78 0037F6D8  7C 86 02 14 */	add r4, r6, r0
/* 80383A7C 0037F6DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80383A80 0037F6E0  7C 7E 1B 78 */	mr r30, r3
/* 80383A84 0037F6E4  88 64 00 0C */	lbz r3, 0xc(r4)
/* 80383A88 0037F6E8  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80383A8C 0037F6EC  4B FF F9 5D */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 80383A90 0037F6F0  7C 64 1B 78 */	mr r4, r3
/* 80383A94 0037F6F4  80 BE 00 04 */	lwz r5, 4(r30)
/* 80383A98 0037F6F8  88 63 00 00 */	lbz r3, 0(r3)
/* 80383A9C 0037F6FC  80 84 00 04 */	lwz r4, 4(r4)
/* 80383AA0 0037F700  38 A5 00 08 */	addi r5, r5, 8
/* 80383AA4 0037F704  4B FF F9 45 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 80383AA8 0037F708  80 9E 00 00 */	lwz r4, 0(r30)
/* 80383AAC 0037F70C  A0 04 00 06 */	lhz r0, 6(r4)
/* 80383AB0 0037F710  28 00 01 02 */	cmplwi r0, 0x102
/* 80383AB4 0037F714  40 82 00 40 */	bne lbl_80383AF4
/* 80383AB8 0037F718  C0 03 00 00 */	lfs f0, 0(r3)
/* 80383ABC 0037F71C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80383AC0 0037F720  88 03 00 04 */	lbz r0, 4(r3)
/* 80383AC4 0037F724  98 1F 00 04 */	stb r0, 4(r31)
/* 80383AC8 0037F728  88 03 00 05 */	lbz r0, 5(r3)
/* 80383ACC 0037F72C  98 1F 00 05 */	stb r0, 5(r31)
/* 80383AD0 0037F730  88 03 00 06 */	lbz r0, 6(r3)
/* 80383AD4 0037F734  98 1F 00 06 */	stb r0, 6(r31)
/* 80383AD8 0037F738  88 03 00 07 */	lbz r0, 7(r3)
/* 80383ADC 0037F73C  98 1F 00 07 */	stb r0, 7(r31)
/* 80383AE0 0037F740  88 03 00 08 */	lbz r0, 8(r3)
/* 80383AE4 0037F744  98 1F 00 08 */	stb r0, 8(r31)
/* 80383AE8 0037F748  88 03 00 09 */	lbz r0, 9(r3)
/* 80383AEC 0037F74C  98 1F 00 09 */	stb r0, 9(r31)
/* 80383AF0 0037F750  48 00 00 6C */	b lbl_80383B5C
lbl_80383AF4:
/* 80383AF4 0037F754  28 00 01 01 */	cmplwi r0, 0x101
/* 80383AF8 0037F758  40 82 00 38 */	bne lbl_80383B30
/* 80383AFC 0037F75C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80383B00 0037F760  38 80 00 00 */	li r4, 0
/* 80383B04 0037F764  38 00 00 7F */	li r0, 0x7f
/* 80383B08 0037F768  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80383B0C 0037F76C  88 A3 00 04 */	lbz r5, 4(r3)
/* 80383B10 0037F770  98 BF 00 04 */	stb r5, 4(r31)
/* 80383B14 0037F774  88 63 00 05 */	lbz r3, 5(r3)
/* 80383B18 0037F778  98 7F 00 05 */	stb r3, 5(r31)
/* 80383B1C 0037F77C  98 9F 00 06 */	stb r4, 6(r31)
/* 80383B20 0037F780  98 9F 00 07 */	stb r4, 7(r31)
/* 80383B24 0037F784  98 9F 00 08 */	stb r4, 8(r31)
/* 80383B28 0037F788  98 1F 00 09 */	stb r0, 9(r31)
/* 80383B2C 0037F78C  48 00 00 30 */	b lbl_80383B5C
lbl_80383B30:
/* 80383B30 0037F790  C0 02 A7 F0 */	lfs f0, lbl_80642DF0-_SDA2_BASE_(r2)
/* 80383B34 0037F794  38 60 00 00 */	li r3, 0
/* 80383B38 0037F798  38 80 00 40 */	li r4, 0x40
/* 80383B3C 0037F79C  38 00 00 7F */	li r0, 0x7f
/* 80383B40 0037F7A0  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80383B44 0037F7A4  98 9F 00 04 */	stb r4, 4(r31)
/* 80383B48 0037F7A8  98 7F 00 05 */	stb r3, 5(r31)
/* 80383B4C 0037F7AC  98 7F 00 06 */	stb r3, 6(r31)
/* 80383B50 0037F7B0  98 7F 00 07 */	stb r3, 7(r31)
/* 80383B54 0037F7B4  98 7F 00 08 */	stb r3, 8(r31)
/* 80383B58 0037F7B8  98 1F 00 09 */	stb r0, 9(r31)
lbl_80383B5C:
/* 80383B5C 0037F7BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80383B60 0037F7C0  38 60 00 01 */	li r3, 1
/* 80383B64 0037F7C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80383B68 0037F7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383B6C 0037F7CC  7C 08 03 A6 */	mtlr r0
/* 80383B70 0037F7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80383B74 0037F7D4  4E 80 00 20 */	blr 

.global ReadWaveSoundNoteInfo__Q44nw4r3snd6detail13WsdFileReaderCFPQ44nw4r3snd6detail17WaveSoundNoteInfoii
ReadWaveSoundNoteInfo__Q44nw4r3snd6detail13WsdFileReaderCFPQ44nw4r3snd6detail17WaveSoundNoteInfoii:
/* 80383B78 0037F7D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80383B7C 0037F7DC  7C 08 02 A6 */	mflr r0
/* 80383B80 0037F7E0  80 E3 00 04 */	lwz r7, 4(r3)
/* 80383B84 0037F7E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80383B88 0037F7E8  54 A0 18 38 */	slwi r0, r5, 3
/* 80383B8C 0037F7EC  38 A7 00 08 */	addi r5, r7, 8
/* 80383B90 0037F7F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80383B94 0037F7F4  7C 9F 23 78 */	mr r31, r4
/* 80383B98 0037F7F8  7C 87 02 14 */	add r4, r7, r0
/* 80383B9C 0037F7FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80383BA0 0037F800  7C DE 33 78 */	mr r30, r6
/* 80383BA4 0037F804  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80383BA8 0037F808  7C 7D 1B 78 */	mr r29, r3
/* 80383BAC 0037F80C  88 64 00 0C */	lbz r3, 0xc(r4)
/* 80383BB0 0037F810  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80383BB4 0037F814  4B FF F8 35 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 80383BB8 0037F818  7C 64 1B 78 */	mr r4, r3
/* 80383BBC 0037F81C  80 BD 00 04 */	lwz r5, 4(r29)
/* 80383BC0 0037F820  88 63 00 10 */	lbz r3, 0x10(r3)
/* 80383BC4 0037F824  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80383BC8 0037F828  38 A5 00 08 */	addi r5, r5, 8
/* 80383BCC 0037F82C  4B FF F8 1D */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 80383BD0 0037F830  57 C0 18 38 */	slwi r0, r30, 3
/* 80383BD4 0037F834  80 9D 00 04 */	lwz r4, 4(r29)
/* 80383BD8 0037F838  7C C3 02 14 */	add r6, r3, r0
/* 80383BDC 0037F83C  38 A4 00 08 */	addi r5, r4, 8
/* 80383BE0 0037F840  88 66 00 04 */	lbz r3, 4(r6)
/* 80383BE4 0037F844  80 86 00 08 */	lwz r4, 8(r6)
/* 80383BE8 0037F848  4B FF F8 01 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 80383BEC 0037F84C  80 03 00 00 */	lwz r0, 0(r3)
/* 80383BF0 0037F850  80 9D 00 00 */	lwz r4, 0(r29)
/* 80383BF4 0037F854  90 1F 00 00 */	stw r0, 0(r31)
/* 80383BF8 0037F858  88 03 00 04 */	lbz r0, 4(r3)
/* 80383BFC 0037F85C  98 1F 00 04 */	stb r0, 4(r31)
/* 80383C00 0037F860  88 03 00 05 */	lbz r0, 5(r3)
/* 80383C04 0037F864  98 1F 00 05 */	stb r0, 5(r31)
/* 80383C08 0037F868  88 03 00 06 */	lbz r0, 6(r3)
/* 80383C0C 0037F86C  98 1F 00 06 */	stb r0, 6(r31)
/* 80383C10 0037F870  88 03 00 07 */	lbz r0, 7(r3)
/* 80383C14 0037F874  98 1F 00 07 */	stb r0, 7(r31)
/* 80383C18 0037F878  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80383C1C 0037F87C  98 1F 00 08 */	stb r0, 8(r31)
/* 80383C20 0037F880  88 03 00 0D */	lbz r0, 0xd(r3)
/* 80383C24 0037F884  98 1F 00 0B */	stb r0, 0xb(r31)
/* 80383C28 0037F888  A0 04 00 06 */	lhz r0, 6(r4)
/* 80383C2C 0037F88C  28 00 01 01 */	cmplwi r0, 0x101
/* 80383C30 0037F890  41 80 00 20 */	blt lbl_80383C50
/* 80383C34 0037F894  88 03 00 0E */	lbz r0, 0xe(r3)
/* 80383C38 0037F898  98 1F 00 09 */	stb r0, 9(r31)
/* 80383C3C 0037F89C  88 03 00 0F */	lbz r0, 0xf(r3)
/* 80383C40 0037F8A0  98 1F 00 0A */	stb r0, 0xa(r31)
/* 80383C44 0037F8A4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80383C48 0037F8A8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80383C4C 0037F8AC  48 00 00 1C */	b lbl_80383C68
lbl_80383C50:
/* 80383C50 0037F8B0  C0 02 A7 F0 */	lfs f0, lbl_80642DF0-_SDA2_BASE_(r2)
/* 80383C54 0037F8B4  38 60 00 40 */	li r3, 0x40
/* 80383C58 0037F8B8  38 00 00 00 */	li r0, 0
/* 80383C5C 0037F8BC  98 7F 00 09 */	stb r3, 9(r31)
/* 80383C60 0037F8C0  98 1F 00 0A */	stb r0, 0xa(r31)
/* 80383C64 0037F8C4  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_80383C68:
/* 80383C68 0037F8C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80383C6C 0037F8CC  38 60 00 01 */	li r3, 1
/* 80383C70 0037F8D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80383C74 0037F8D4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80383C78 0037F8D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80383C7C 0037F8DC  7C 08 03 A6 */	mtlr r0
/* 80383C80 0037F8E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80383C84 0037F8E4  4E 80 00 20 */	blr 

.global ReadWaveParam__Q44nw4r3snd6detail13WsdFileReaderCFiPQ44nw4r3snd6detail8WaveDataPCv
ReadWaveParam__Q44nw4r3snd6detail13WsdFileReaderCFiPQ44nw4r3snd6detail8WaveDataPCv:
/* 80383C88 0037F8E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80383C8C 0037F8EC  7C 08 02 A6 */	mflr r0
/* 80383C90 0037F8F0  80 E3 00 00 */	lwz r7, 0(r3)
/* 80383C94 0037F8F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80383C98 0037F8F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80383C9C 0037F8FC  7C DF 33 78 */	mr r31, r6
/* 80383CA0 0037F900  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80383CA4 0037F904  7C BE 2B 78 */	mr r30, r5
/* 80383CA8 0037F908  A0 07 00 06 */	lhz r0, 6(r7)
/* 80383CAC 0037F90C  28 00 01 00 */	cmplwi r0, 0x100
/* 80383CB0 0037F910  40 82 00 1C */	bne lbl_80383CCC
/* 80383CB4 0037F914  80 A3 00 08 */	lwz r5, 8(r3)
/* 80383CB8 0037F918  54 80 10 3A */	slwi r0, r4, 2
/* 80383CBC 0037F91C  7C 65 02 14 */	add r3, r5, r0
/* 80383CC0 0037F920  80 03 00 08 */	lwz r0, 8(r3)
/* 80383CC4 0037F924  7C 80 2A 14 */	add r4, r0, r5
/* 80383CC8 0037F928  48 00 00 2C */	b lbl_80383CF4
lbl_80383CCC:
/* 80383CCC 0037F92C  80 A3 00 08 */	lwz r5, 8(r3)
/* 80383CD0 0037F930  80 05 00 08 */	lwz r0, 8(r5)
/* 80383CD4 0037F934  7C 04 00 40 */	cmplw r4, r0
/* 80383CD8 0037F938  41 80 00 0C */	blt lbl_80383CE4
/* 80383CDC 0037F93C  38 60 00 00 */	li r3, 0
/* 80383CE0 0037F940  48 00 00 2C */	b lbl_80383D0C
lbl_80383CE4:
/* 80383CE4 0037F944  54 80 10 3A */	slwi r0, r4, 2
/* 80383CE8 0037F948  7C 65 02 14 */	add r3, r5, r0
/* 80383CEC 0037F94C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80383CF0 0037F950  7C 80 2A 14 */	add r4, r0, r5
lbl_80383CF4:
/* 80383CF4 0037F954  38 61 00 08 */	addi r3, r1, 8
/* 80383CF8 0037F958  4B FF F7 15 */	bl __ct__Q44nw4r3snd6detail14WaveFileReaderFPCQ54nw4r3snd6detail8WaveFile8WaveInfo
/* 80383CFC 0037F95C  7F C4 F3 78 */	mr r4, r30
/* 80383D00 0037F960  7F E5 FB 78 */	mr r5, r31
/* 80383D04 0037F964  38 61 00 08 */	addi r3, r1, 8
/* 80383D08 0037F968  4B FF F7 0D */	bl ReadWaveParam__Q44nw4r3snd6detail14WaveFileReaderCFPQ44nw4r3snd6detail8WaveDataPCv
lbl_80383D0C:
/* 80383D0C 0037F96C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80383D10 0037F970  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80383D14 0037F974  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80383D18 0037F978  7C 08 03 A6 */	mtlr r0
/* 80383D1C 0037F97C  38 21 00 20 */	addi r1, r1, 0x20
/* 80383D20 0037F980  4E 80 00 20 */	blr 
