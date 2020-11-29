.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802408A0_D635B0
/* D635B0 802408A0 27BDFE80 */  addiu     $sp, $sp, -0x180
/* D635B4 802408A4 F7B60158 */  sdc1      $f22, 0x158($sp)
/* D635B8 802408A8 4480B000 */  mtc1      $zero, $f22
/* D635BC 802408AC AFB10134 */  sw        $s1, 0x134($sp)
/* D635C0 802408B0 0080882D */  daddu     $s1, $a0, $zero
/* D635C4 802408B4 AFB3013C */  sw        $s3, 0x13c($sp)
/* D635C8 802408B8 0000982D */  daddu     $s3, $zero, $zero
/* D635CC 802408BC AFB60148 */  sw        $s6, 0x148($sp)
/* D635D0 802408C0 3C16800B */  lui       $s6, %hi(gCameras)
/* D635D4 802408C4 26D61D80 */  addiu     $s6, $s6, %lo(gCameras)
/* D635D8 802408C8 AFB50144 */  sw        $s5, 0x144($sp)
/* D635DC 802408CC 241500FF */  addiu     $s5, $zero, 0xff
/* D635E0 802408D0 AFB00130 */  sw        $s0, 0x130($sp)
/* D635E4 802408D4 27B000A0 */  addiu     $s0, $sp, 0xa0
/* D635E8 802408D8 AFB20138 */  sw        $s2, 0x138($sp)
/* D635EC 802408DC 27B20060 */  addiu     $s2, $sp, 0x60
/* D635F0 802408E0 AFB40140 */  sw        $s4, 0x140($sp)
/* D635F4 802408E4 27B400E0 */  addiu     $s4, $sp, 0xe0
/* D635F8 802408E8 AFBF014C */  sw        $ra, 0x14c($sp)
/* D635FC 802408EC F7BE0178 */  sdc1      $f30, 0x178($sp)
/* D63600 802408F0 F7BC0170 */  sdc1      $f28, 0x170($sp)
/* D63604 802408F4 F7BA0168 */  sdc1      $f26, 0x168($sp)
/* D63608 802408F8 F7B80160 */  sdc1      $f24, 0x160($sp)
/* D6360C 802408FC F7B40150 */  sdc1      $f20, 0x150($sp)
.L80240900:
/* D63610 80240900 3C03800A */  lui       $v1, %hi(D_8009A634)
/* D63614 80240904 8463A634 */  lh        $v1, %lo(D_8009A634)($v1)
/* D63618 80240908 00031080 */  sll       $v0, $v1, 2
/* D6361C 8024090C 00431021 */  addu      $v0, $v0, $v1
/* D63620 80240910 00021080 */  sll       $v0, $v0, 2
/* D63624 80240914 00431023 */  subu      $v0, $v0, $v1
/* D63628 80240918 000218C0 */  sll       $v1, $v0, 3
/* D6362C 8024091C 00431021 */  addu      $v0, $v0, $v1
/* D63630 80240920 000210C0 */  sll       $v0, $v0, 3
/* D63634 80240924 00561021 */  addu      $v0, $v0, $s6
/* D63638 80240928 C440006C */  lwc1      $f0, 0x6c($v0)
/* D6363C 8024092C 16600065 */  bnez      $s3, .L80240AC4
/* D63640 80240930 46000507 */   neg.s    $f20, $f0
/* D63644 80240934 C62200A8 */  lwc1      $f2, 0xa8($s1)
/* D63648 80240938 3C0142B4 */  lui       $at, 0x42b4
/* D6364C 8024093C 44810000 */  mtc1      $at, $f0
/* D63650 80240940 00000000 */  nop       
/* D63654 80240944 4602003C */  c.lt.s    $f0, $f2
/* D63658 80240948 00000000 */  nop       
/* D6365C 8024094C 4500000A */  bc1f      .L80240978
/* D63660 80240950 00000000 */   nop      
/* D63664 80240954 3C014334 */  lui       $at, 0x4334
/* D63668 80240958 44812000 */  mtc1      $at, $f4
/* D6366C 8024095C 00000000 */  nop       
/* D63670 80240960 4604103E */  c.le.s    $f2, $f4
/* D63674 80240964 00000000 */  nop       
/* D63678 80240968 45000003 */  bc1f      .L80240978
/* D6367C 8024096C 00000000 */   nop      
/* D63680 80240970 08090282 */  j         .L80240A08
/* D63684 80240974 46022501 */   sub.s    $f20, $f4, $f2
.L80240978:
/* D63688 80240978 C62000A8 */  lwc1      $f0, 0xa8($s1)
/* D6368C 8024097C 3C014334 */  lui       $at, 0x4334
/* D63690 80240980 44812000 */  mtc1      $at, $f4
/* D63694 80240984 00000000 */  nop       
/* D63698 80240988 4600203C */  c.lt.s    $f4, $f0
/* D6369C 8024098C 00000000 */  nop       
/* D636A0 80240990 4500000C */  bc1f      .L802409C4
/* D636A4 80240994 00000000 */   nop      
/* D636A8 80240998 3C014387 */  lui       $at, 0x4387
/* D636AC 8024099C 44812000 */  mtc1      $at, $f4
/* D636B0 802409A0 00000000 */  nop       
/* D636B4 802409A4 4604003E */  c.le.s    $f0, $f4
/* D636B8 802409A8 00000000 */  nop       
/* D636BC 802409AC 45000008 */  bc1f      .L802409D0
/* D636C0 802409B0 00000000 */   nop      
/* D636C4 802409B4 3C014334 */  lui       $at, 0x4334
/* D636C8 802409B8 44812000 */  mtc1      $at, $f4
/* D636CC 802409BC 08090282 */  j         .L80240A08
/* D636D0 802409C0 46040501 */   sub.s    $f20, $f0, $f4
.L802409C4:
/* D636D4 802409C4 3C014387 */  lui       $at, 0x4387
/* D636D8 802409C8 44812000 */  mtc1      $at, $f4
/* D636DC 802409CC 00000000 */  nop       
.L802409D0:
/* D636E0 802409D0 4600203C */  c.lt.s    $f4, $f0
/* D636E4 802409D4 00000000 */  nop       
/* D636E8 802409D8 4500000A */  bc1f      .L80240A04
/* D636EC 802409DC 00000000 */   nop      
/* D636F0 802409E0 3C0143B4 */  lui       $at, 0x43b4
/* D636F4 802409E4 44811000 */  mtc1      $at, $f2
/* D636F8 802409E8 00000000 */  nop       
/* D636FC 802409EC 4602003E */  c.le.s    $f0, $f2
/* D63700 802409F0 00000000 */  nop       
/* D63704 802409F4 45000003 */  bc1f      .L80240A04
/* D63708 802409F8 00000000 */   nop      
/* D6370C 802409FC 08090282 */  j         .L80240A08
/* D63710 80240A00 46001501 */   sub.s    $f20, $f2, $f0
.L80240A04:
/* D63714 80240A04 C63400A8 */  lwc1      $f20, 0xa8($s1)
.L80240A08:
/* D63718 80240A08 3C0141C8 */  lui       $at, 0x41c8
/* D6371C 80240A0C 44810000 */  mtc1      $at, $f0
/* D63720 80240A10 00000000 */  nop       
/* D63724 80240A14 4600A003 */  div.s     $f0, $f20, $f0
/* D63728 80240A18 4600010D */  trunc.w.s $f4, $f0
/* D6372C 80240A1C 44072000 */  mfc1      $a3, $f4
/* D63730 80240A20 00000000 */  nop       
/* D63734 80240A24 00071100 */  sll       $v0, $a3, 4
/* D63738 80240A28 00471023 */  subu      $v0, $v0, $a3
/* D6373C 80240A2C 00021080 */  sll       $v0, $v0, 2
/* D63740 80240A30 02A23823 */  subu      $a3, $s5, $v0
/* D63744 80240A34 28E20064 */  slti      $v0, $a3, 0x64
/* D63748 80240A38 54400001 */  bnel      $v0, $zero, .L80240A40
/* D6374C 80240A3C 24070064 */   addiu    $a3, $zero, 0x64
.L80240A40:
/* D63750 80240A40 24040001 */  addiu     $a0, $zero, 1
/* D63754 80240A44 2405FFFF */  addiu     $a1, $zero, -1
/* D63758 80240A48 24060006 */  addiu     $a2, $zero, 6
/* D6375C 80240A4C AFA70010 */  sw        $a3, 0x10($sp)
/* D63760 80240A50 AFA70014 */  sw        $a3, 0x14($sp)
/* D63764 80240A54 AFB50018 */  sw        $s5, 0x18($sp)
/* D63768 80240A58 0C0B77B9 */  jal       func_802DDEE4
/* D6376C 80240A5C AFA0001C */   sw       $zero, 0x1c($sp)
/* D63770 80240A60 4405A000 */  mfc1      $a1, $f20
/* D63774 80240A64 4406B000 */  mfc1      $a2, $f22
/* D63778 80240A68 3C07BF80 */  lui       $a3, 0xbf80
/* D6377C 80240A6C 0200202D */  daddu     $a0, $s0, $zero
/* D63780 80240A70 0C019EC8 */  jal       guRotateF
/* D63784 80240A74 E7B60010 */   swc1     $f22, 0x10($sp)
/* D63788 80240A78 C62C008C */  lwc1      $f12, 0x8c($s1)
/* D6378C 80240A7C 0C00A6C9 */  jal       clamp_angle
/* D63790 80240A80 00000000 */   nop      
/* D63794 80240A84 44050000 */  mfc1      $a1, $f0
/* D63798 80240A88 4406B000 */  mfc1      $a2, $f22
/* D6379C 80240A8C 4407B000 */  mfc1      $a3, $f22
/* D637A0 80240A90 3C013F80 */  lui       $at, 0x3f80
/* D637A4 80240A94 44812000 */  mtc1      $at, $f4
/* D637A8 80240A98 27A40020 */  addiu     $a0, $sp, 0x20
/* D637AC 80240A9C 0C019EC8 */  jal       guRotateF
/* D637B0 80240AA0 E7A40010 */   swc1     $f4, 0x10($sp)
/* D637B4 80240AA4 0200202D */  daddu     $a0, $s0, $zero
/* D637B8 80240AA8 27A50020 */  addiu     $a1, $sp, 0x20
/* D637BC 80240AAC 0C019D80 */  jal       guMtxCatF
/* D637C0 80240AB0 00A0302D */   daddu    $a2, $a1, $zero
/* D637C4 80240AB4 C63E0028 */  lwc1      $f30, 0x28($s1)
/* D637C8 80240AB8 C63A002C */  lwc1      $f26, 0x2c($s1)
/* D637CC 80240ABC 080902E2 */  j         .L80240B88
/* D637D0 80240AC0 C63C0030 */   lwc1     $f28, 0x30($s1)
.L80240AC4:
/* D637D4 80240AC4 0260202D */  daddu     $a0, $s3, $zero
/* D637D8 80240AC8 27A50120 */  addiu     $a1, $sp, 0x120
/* D637DC 80240ACC 27A60124 */  addiu     $a2, $sp, 0x124
/* D637E0 80240AD0 0C03964E */  jal       func_800E5938
/* D637E4 80240AD4 27A70128 */   addiu    $a3, $sp, 0x128
/* D637E8 80240AD8 8FA60124 */  lw        $a2, 0x124($sp)
/* D637EC 80240ADC 3C028000 */  lui       $v0, 0x8000
/* D637F0 80240AE0 14C20004 */  bne       $a2, $v0, .L80240AF4
/* D637F4 80240AE4 46000606 */   mov.s    $f24, $f0
/* D637F8 80240AE8 C63A002C */  lwc1      $f26, 0x2c($s1)
/* D637FC 80240AEC 080902C1 */  j         .L80240B04
/* D63800 80240AF0 24040001 */   addiu    $a0, $zero, 1
.L80240AF4:
/* D63804 80240AF4 4486D000 */  mtc1      $a2, $f26
/* D63808 80240AF8 00000000 */  nop       
/* D6380C 80240AFC 4680D6A0 */  cvt.s.w   $f26, $f26
/* D63810 80240B00 24040001 */  addiu     $a0, $zero, 1
.L80240B04:
/* D63814 80240B04 2405FFFF */  addiu     $a1, $zero, -1
/* D63818 80240B08 24060007 */  addiu     $a2, $zero, 7
/* D6381C 80240B0C 0000382D */  daddu     $a3, $zero, $zero
/* D63820 80240B10 C63E0028 */  lwc1      $f30, 0x28($s1)
/* D63824 80240B14 C63C0030 */  lwc1      $f28, 0x30($s1)
/* D63828 80240B18 24020040 */  addiu     $v0, $zero, 0x40
/* D6382C 80240B1C AFA00010 */  sw        $zero, 0x10($sp)
/* D63830 80240B20 AFA00014 */  sw        $zero, 0x14($sp)
/* D63834 80240B24 AFA20018 */  sw        $v0, 0x18($sp)
/* D63838 80240B28 0C0B77B9 */  jal       func_802DDEE4
/* D6383C 80240B2C AFA0001C */   sw       $zero, 0x1c($sp)
/* D63840 80240B30 4405A000 */  mfc1      $a1, $f20
/* D63844 80240B34 4406B000 */  mfc1      $a2, $f22
/* D63848 80240B38 3C07BF80 */  lui       $a3, 0xbf80
/* D6384C 80240B3C 27A40020 */  addiu     $a0, $sp, 0x20
/* D63850 80240B40 0C019EC8 */  jal       guRotateF
/* D63854 80240B44 E7B60010 */   swc1     $f22, 0x10($sp)
/* D63858 80240B48 4405A000 */  mfc1      $a1, $f20
/* D6385C 80240B4C 4406B000 */  mfc1      $a2, $f22
/* D63860 80240B50 3C07BF80 */  lui       $a3, 0xbf80
/* D63864 80240B54 0200202D */  daddu     $a0, $s0, $zero
/* D63868 80240B58 0C019EC8 */  jal       guRotateF
/* D6386C 80240B5C E7B60010 */   swc1     $f22, 0x10($sp)
/* D63870 80240B60 4405C000 */  mfc1      $a1, $f24
/* D63874 80240B64 4406B000 */  mfc1      $a2, $f22
/* D63878 80240B68 3C073F80 */  lui       $a3, 0x3f80
/* D6387C 80240B6C 27A40020 */  addiu     $a0, $sp, 0x20
/* D63880 80240B70 0C019EC8 */  jal       guRotateF
/* D63884 80240B74 E7B60010 */   swc1     $f22, 0x10($sp)
/* D63888 80240B78 0200202D */  daddu     $a0, $s0, $zero
/* D6388C 80240B7C 27A50020 */  addiu     $a1, $sp, 0x20
/* D63890 80240B80 0C019D80 */  jal       guMtxCatF
/* D63894 80240B84 00A0302D */   daddu    $a2, $a1, $zero
.L80240B88:
/* D63898 80240B88 862200B0 */  lh        $v0, 0xb0($s1)
/* D6389C 80240B8C 3C013F00 */  lui       $at, 0x3f00
/* D638A0 80240B90 44812000 */  mtc1      $at, $f4
/* D638A4 80240B94 00021023 */  negu      $v0, $v0
/* D638A8 80240B98 44820000 */  mtc1      $v0, $f0
/* D638AC 80240B9C 00000000 */  nop       
/* D638B0 80240BA0 46800020 */  cvt.s.w   $f0, $f0
/* D638B4 80240BA4 46040102 */  mul.s     $f4, $f0, $f4
/* D638B8 80240BA8 00000000 */  nop       
/* D638BC 80240BAC 4405B000 */  mfc1      $a1, $f22
/* D638C0 80240BB0 4407B000 */  mfc1      $a3, $f22
/* D638C4 80240BB4 44062000 */  mfc1      $a2, $f4
/* D638C8 80240BB8 0C019E40 */  jal       guTranslateF
/* D638CC 80240BBC 0240202D */   daddu    $a0, $s2, $zero
/* D638D0 80240BC0 0240202D */  daddu     $a0, $s2, $zero
/* D638D4 80240BC4 27A50020 */  addiu     $a1, $sp, 0x20
/* D638D8 80240BC8 0C019D80 */  jal       guMtxCatF
/* D638DC 80240BCC 00A0302D */   daddu    $a2, $a1, $zero
/* D638E0 80240BD0 4405A000 */  mfc1      $a1, $f20
/* D638E4 80240BD4 4406B000 */  mfc1      $a2, $f22
/* D638E8 80240BD8 3C073F80 */  lui       $a3, 0x3f80
/* D638EC 80240BDC 0200202D */  daddu     $a0, $s0, $zero
/* D638F0 80240BE0 0C019EC8 */  jal       guRotateF
/* D638F4 80240BE4 E7B60010 */   swc1     $f22, 0x10($sp)
/* D638F8 80240BE8 27A40020 */  addiu     $a0, $sp, 0x20
/* D638FC 80240BEC 0200282D */  daddu     $a1, $s0, $zero
/* D63900 80240BF0 0C019D80 */  jal       guMtxCatF
/* D63904 80240BF4 0080302D */   daddu    $a2, $a0, $zero
/* D63908 80240BF8 E7B60010 */  swc1      $f22, 0x10($sp)
/* D6390C 80240BFC 8E2500A8 */  lw        $a1, 0xa8($s1)
/* D63910 80240C00 4406B000 */  mfc1      $a2, $f22
/* D63914 80240C04 3C073F80 */  lui       $a3, 0x3f80
/* D63918 80240C08 0C019EC8 */  jal       guRotateF
/* D6391C 80240C0C 0200202D */   daddu    $a0, $s0, $zero
/* D63920 80240C10 27A40020 */  addiu     $a0, $sp, 0x20
/* D63924 80240C14 0200282D */  daddu     $a1, $s0, $zero
/* D63928 80240C18 0C019D80 */  jal       guMtxCatF
/* D6392C 80240C1C 0080302D */   daddu    $a2, $a0, $zero
/* D63930 80240C20 862200B0 */  lh        $v0, 0xb0($s1)
/* D63934 80240C24 3C013F00 */  lui       $at, 0x3f00
/* D63938 80240C28 44812000 */  mtc1      $at, $f4
/* D6393C 80240C2C 44820000 */  mtc1      $v0, $f0
/* D63940 80240C30 00000000 */  nop       
/* D63944 80240C34 46800020 */  cvt.s.w   $f0, $f0
/* D63948 80240C38 46040102 */  mul.s     $f4, $f0, $f4
/* D6394C 80240C3C 00000000 */  nop       
/* D63950 80240C40 4405B000 */  mfc1      $a1, $f22
/* D63954 80240C44 4407B000 */  mfc1      $a3, $f22
/* D63958 80240C48 44062000 */  mfc1      $a2, $f4
/* D6395C 80240C4C 0C019E40 */  jal       guTranslateF
/* D63960 80240C50 0240202D */   daddu    $a0, $s2, $zero
/* D63964 80240C54 27A40020 */  addiu     $a0, $sp, 0x20
/* D63968 80240C58 0240282D */  daddu     $a1, $s2, $zero
/* D6396C 80240C5C 0C019D80 */  jal       guMtxCatF
/* D63970 80240C60 0080302D */   daddu    $a2, $a0, $zero
/* D63974 80240C64 3C013F36 */  lui       $at, 0x3f36
/* D63978 80240C68 3421DB6E */  ori       $at, $at, 0xdb6e
/* D6397C 80240C6C 44810000 */  mtc1      $at, $f0
/* D63980 80240C70 0280202D */  daddu     $a0, $s4, $zero
/* D63984 80240C74 44050000 */  mfc1      $a1, $f0
/* D63988 80240C78 3C06BF36 */  lui       $a2, 0xbf36
/* D6398C 80240C7C 34C6DB6E */  ori       $a2, $a2, 0xdb6e
/* D63990 80240C80 0C019DF0 */  jal       guScaleF
/* D63994 80240C84 00A0382D */   daddu    $a3, $a1, $zero
/* D63998 80240C88 27A40020 */  addiu     $a0, $sp, 0x20
/* D6399C 80240C8C 0280282D */  daddu     $a1, $s4, $zero
/* D639A0 80240C90 0C019D80 */  jal       guMtxCatF
/* D639A4 80240C94 0080302D */   daddu    $a2, $a0, $zero
/* D639A8 80240C98 4600D687 */  neg.s     $f26, $f26
/* D639AC 80240C9C 4405F000 */  mfc1      $a1, $f30
/* D639B0 80240CA0 4407E000 */  mfc1      $a3, $f28
/* D639B4 80240CA4 4406D000 */  mfc1      $a2, $f26
/* D639B8 80240CA8 0C019E40 */  jal       guTranslateF
/* D639BC 80240CAC 0240202D */   daddu    $a0, $s2, $zero
/* D639C0 80240CB0 27A40020 */  addiu     $a0, $sp, 0x20
/* D639C4 80240CB4 0240282D */  daddu     $a1, $s2, $zero
/* D639C8 80240CB8 0C019D80 */  jal       guMtxCatF
/* D639CC 80240CBC 0080302D */   daddu    $a2, $a0, $zero
/* D639D0 80240CC0 C62200A8 */  lwc1      $f2, 0xa8($s1)
/* D639D4 80240CC4 3C0142B4 */  lui       $at, 0x42b4
/* D639D8 80240CC8 44810000 */  mtc1      $at, $f0
/* D639DC 80240CCC 00000000 */  nop       
/* D639E0 80240CD0 4602003E */  c.le.s    $f0, $f2
/* D639E4 80240CD4 00000000 */  nop       
/* D639E8 80240CD8 4500000A */  bc1f      .L80240D04
/* D639EC 80240CDC 24040001 */   addiu    $a0, $zero, 1
/* D639F0 80240CE0 3C014387 */  lui       $at, 0x4387
/* D639F4 80240CE4 44812000 */  mtc1      $at, $f4
/* D639F8 80240CE8 00000000 */  nop       
/* D639FC 80240CEC 4604103C */  c.lt.s    $f2, $f4
/* D63A00 80240CF0 00000000 */  nop       
/* D63A04 80240CF4 45000004 */  bc1f      .L80240D08
/* D63A08 80240CF8 27A20020 */   addiu    $v0, $sp, 0x20
/* D63A0C 80240CFC 3C041000 */  lui       $a0, 0x1000
/* D63A10 80240D00 34840001 */  ori       $a0, $a0, 1
.L80240D04:
/* D63A14 80240D04 27A20020 */  addiu     $v0, $sp, 0x20
.L80240D08:
/* D63A18 80240D08 AFA20010 */  sw        $v0, 0x10($sp)
/* D63A1C 80240D0C 0000282D */  daddu     $a1, $zero, $zero
/* D63A20 80240D10 00A0302D */  daddu     $a2, $a1, $zero
/* D63A24 80240D14 0C0B7710 */  jal       render_sprite
/* D63A28 80240D18 00A0382D */   daddu    $a3, $a1, $zero
/* D63A2C 80240D1C 26730001 */  addiu     $s3, $s3, 1
/* D63A30 80240D20 2A620002 */  slti      $v0, $s3, 2
/* D63A34 80240D24 1440FEF6 */  bnez      $v0, .L80240900
/* D63A38 80240D28 00000000 */   nop      
/* D63A3C 80240D2C 8FBF014C */  lw        $ra, 0x14c($sp)
/* D63A40 80240D30 8FB60148 */  lw        $s6, 0x148($sp)
/* D63A44 80240D34 8FB50144 */  lw        $s5, 0x144($sp)
/* D63A48 80240D38 8FB40140 */  lw        $s4, 0x140($sp)
/* D63A4C 80240D3C 8FB3013C */  lw        $s3, 0x13c($sp)
/* D63A50 80240D40 8FB20138 */  lw        $s2, 0x138($sp)
/* D63A54 80240D44 8FB10134 */  lw        $s1, 0x134($sp)
/* D63A58 80240D48 8FB00130 */  lw        $s0, 0x130($sp)
/* D63A5C 80240D4C D7BE0178 */  ldc1      $f30, 0x178($sp)
/* D63A60 80240D50 D7BC0170 */  ldc1      $f28, 0x170($sp)
/* D63A64 80240D54 D7BA0168 */  ldc1      $f26, 0x168($sp)
/* D63A68 80240D58 D7B80160 */  ldc1      $f24, 0x160($sp)
/* D63A6C 80240D5C D7B60158 */  ldc1      $f22, 0x158($sp)
/* D63A70 80240D60 D7B40150 */  ldc1      $f20, 0x150($sp)
/* D63A74 80240D64 03E00008 */  jr        $ra
/* D63A78 80240D68 27BD0180 */   addiu    $sp, $sp, 0x180
