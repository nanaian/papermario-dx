.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802421E8_E07548
/* E07548 802421E8 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* E0754C 802421EC 3C05DC08 */  lui       $a1, 0xdc08
/* E07550 802421F0 34A50008 */  ori       $a1, $a1, 8
/* E07554 802421F4 AFB40030 */  sw        $s4, 0x30($sp)
/* E07558 802421F8 0000A02D */  daddu     $s4, $zero, $zero
/* E0755C 802421FC AFB10024 */  sw        $s1, 0x24($sp)
/* E07560 80242200 3C11800A */  lui       $s1, %hi(D_8009A66C)
/* E07564 80242204 2631A66C */  addiu     $s1, $s1, %lo(D_8009A66C)
/* E07568 80242208 AFB3002C */  sw        $s3, 0x2c($sp)
/* E0756C 8024220C 24130004 */  addiu     $s3, $zero, 4
/* E07570 80242210 3C028025 */  lui       $v0, %hi(D_8024B9D0)
/* E07574 80242214 2442B9D0 */  addiu     $v0, $v0, %lo(D_8024B9D0)
/* E07578 80242218 AFBF0038 */  sw        $ra, 0x38($sp)
/* E0757C 8024221C AFB50034 */  sw        $s5, 0x34($sp)
/* E07580 80242220 AFB20028 */  sw        $s2, 0x28($sp)
/* E07584 80242224 AFB00020 */  sw        $s0, 0x20($sp)
/* E07588 80242228 8E230000 */  lw        $v1, ($s1)
/* E0758C 8024222C 3C108007 */  lui       $s0, %hi(D_800741F4)
/* E07590 80242230 8E1041F4 */  lw        $s0, %lo(D_800741F4)($s0)
/* E07594 80242234 3C158025 */  lui       $s5, %hi(D_8024A2C4)
/* E07598 80242238 8EB5A2C4 */  lw        $s5, %lo(D_8024A2C4)($s5)
/* E0759C 8024223C 44800000 */  mtc1      $zero, $f0
/* E075A0 80242240 3C01C2C8 */  lui       $at, 0xc2c8
/* E075A4 80242244 44811000 */  mtc1      $at, $f2
/* E075A8 80242248 3C0142C8 */  lui       $at, 0x42c8
/* E075AC 8024224C 44812000 */  mtc1      $at, $f4
/* E075B0 80242250 3C013F80 */  lui       $at, 0x3f80
/* E075B4 80242254 44813000 */  mtc1      $at, $f6
/* E075B8 80242258 3C0643A0 */  lui       $a2, 0x43a0
/* E075BC 8024225C 3C07C370 */  lui       $a3, 0xc370
/* E075C0 80242260 0060402D */  daddu     $t0, $v1, $zero
/* E075C4 80242264 24630008 */  addiu     $v1, $v1, 8
/* E075C8 80242268 00108180 */  sll       $s0, $s0, 6
/* E075CC 8024226C 02028021 */  addu      $s0, $s0, $v0
/* E075D0 80242270 0200202D */  daddu     $a0, $s0, $zero
/* E075D4 80242274 02A0902D */  daddu     $s2, $s5, $zero
/* E075D8 80242278 AE230000 */  sw        $v1, ($s1)
/* E075DC 8024227C AD050000 */  sw        $a1, ($t0)
/* E075E0 80242280 44050000 */  mfc1      $a1, $f0
/* E075E4 80242284 3C028024 */  lui       $v0, %hi(D_80243200)
/* E075E8 80242288 24423200 */  addiu     $v0, $v0, %lo(D_80243200)
/* E075EC 8024228C AD020004 */  sw        $v0, 4($t0)
/* E075F0 80242290 E7A20014 */  swc1      $f2, 0x14($sp)
/* E075F4 80242294 E7A40018 */  swc1      $f4, 0x18($sp)
/* E075F8 80242298 E7A6001C */  swc1      $f6, 0x1c($sp)
/* E075FC 8024229C 0C018E90 */  jal       guOrtho
/* E07600 802422A0 AFA50010 */   sw       $a1, 0x10($sp)
/* E07604 802422A4 3C03DA38 */  lui       $v1, 0xda38
/* E07608 802422A8 34630007 */  ori       $v1, $v1, 7
/* E0760C 802422AC 3C05D9C0 */  lui       $a1, 0xd9c0
/* E07610 802422B0 34A5F9FB */  ori       $a1, $a1, 0xf9fb
/* E07614 802422B4 3C07D9FF */  lui       $a3, 0xd9ff
/* E07618 802422B8 34E7FFFF */  ori       $a3, $a3, 0xffff
/* E0761C 802422BC 3C060020 */  lui       $a2, 0x20
/* E07620 802422C0 8E220000 */  lw        $v0, ($s1)
/* E07624 802422C4 00D33025 */  or        $a2, $a2, $s3
/* E07628 802422C8 0040202D */  daddu     $a0, $v0, $zero
/* E0762C 802422CC 24420008 */  addiu     $v0, $v0, 8
/* E07630 802422D0 AE220000 */  sw        $v0, ($s1)
/* E07634 802422D4 AC830000 */  sw        $v1, ($a0)
/* E07638 802422D8 3C038000 */  lui       $v1, 0x8000
/* E0763C 802422DC 02038021 */  addu      $s0, $s0, $v1
/* E07640 802422E0 24430008 */  addiu     $v1, $v0, 8
/* E07644 802422E4 AC900004 */  sw        $s0, 4($a0)
/* E07648 802422E8 AE230000 */  sw        $v1, ($s1)
/* E0764C 802422EC 3C03E700 */  lui       $v1, 0xe700
/* E07650 802422F0 AC430000 */  sw        $v1, ($v0)
/* E07654 802422F4 24430010 */  addiu     $v1, $v0, 0x10
/* E07658 802422F8 AC400004 */  sw        $zero, 4($v0)
/* E0765C 802422FC AE230000 */  sw        $v1, ($s1)
/* E07660 80242300 24430018 */  addiu     $v1, $v0, 0x18
/* E07664 80242304 AC450008 */  sw        $a1, 8($v0)
/* E07668 80242308 AC40000C */  sw        $zero, 0xc($v0)
/* E0766C 8024230C AE230000 */  sw        $v1, ($s1)
/* E07670 80242310 AC470010 */  sw        $a3, 0x10($v0)
/* E07674 80242314 AC460014 */  sw        $a2, 0x14($v0)
.L80242318:
/* E07678 80242318 96420074 */  lhu       $v0, 0x74($s2)
/* E0767C 8024231C 30420001 */  andi      $v0, $v0, 1
/* E07680 80242320 50400004 */  beql      $v0, $zero, .L80242334
/* E07684 80242324 26730074 */   addiu    $s3, $s3, 0x74
/* E07688 80242328 0C0906D1 */  jal       func_80241B44_E06EA4
/* E0768C 8024232C 02B32021 */   addu     $a0, $s5, $s3
/* E07690 80242330 26730074 */  addiu     $s3, $s3, 0x74
.L80242334:
/* E07694 80242334 26940001 */  addiu     $s4, $s4, 1
/* E07698 80242338 2A820020 */  slti      $v0, $s4, 0x20
/* E0769C 8024233C 1440FFF6 */  bnez      $v0, .L80242318
/* E076A0 80242340 26520074 */   addiu    $s2, $s2, 0x74
/* E076A4 80242344 8FBF0038 */  lw        $ra, 0x38($sp)
/* E076A8 80242348 8FB50034 */  lw        $s5, 0x34($sp)
/* E076AC 8024234C 8FB40030 */  lw        $s4, 0x30($sp)
/* E076B0 80242350 8FB3002C */  lw        $s3, 0x2c($sp)
/* E076B4 80242354 8FB20028 */  lw        $s2, 0x28($sp)
/* E076B8 80242358 8FB10024 */  lw        $s1, 0x24($sp)
/* E076BC 8024235C 8FB00020 */  lw        $s0, 0x20($sp)
/* E076C0 80242360 03E00008 */  jr        $ra
/* E076C4 80242364 27BD0040 */   addiu    $sp, $sp, 0x40
