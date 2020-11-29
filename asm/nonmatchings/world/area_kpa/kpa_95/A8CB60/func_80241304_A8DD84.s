.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241304_A8DD84
/* A8DD84 80241304 27BDFF90 */  addiu     $sp, $sp, -0x70
/* A8DD88 80241308 AFB3005C */  sw        $s3, 0x5c($sp)
/* A8DD8C 8024130C 0080982D */  daddu     $s3, $a0, $zero
/* A8DD90 80241310 AFBF0068 */  sw        $ra, 0x68($sp)
/* A8DD94 80241314 AFB50064 */  sw        $s5, 0x64($sp)
/* A8DD98 80241318 AFB40060 */  sw        $s4, 0x60($sp)
/* A8DD9C 8024131C AFB20058 */  sw        $s2, 0x58($sp)
/* A8DDA0 80241320 AFB10054 */  sw        $s1, 0x54($sp)
/* A8DDA4 80241324 AFB00050 */  sw        $s0, 0x50($sp)
/* A8DDA8 80241328 8E710148 */  lw        $s1, 0x148($s3)
/* A8DDAC 8024132C 86240008 */  lh        $a0, 8($s1)
/* A8DDB0 80241330 0C00EABB */  jal       get_npc_unsafe
/* A8DDB4 80241334 00A0802D */   daddu    $s0, $a1, $zero
/* A8DDB8 80241338 8E63000C */  lw        $v1, 0xc($s3)
/* A8DDBC 8024133C 0260202D */  daddu     $a0, $s3, $zero
/* A8DDC0 80241340 8C650000 */  lw        $a1, ($v1)
/* A8DDC4 80241344 0C0B1EAF */  jal       get_variable
/* A8DDC8 80241348 0040902D */   daddu    $s2, $v0, $zero
/* A8DDCC 8024134C AFA00028 */  sw        $zero, 0x28($sp)
/* A8DDD0 80241350 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A8DDD4 80241354 8C630094 */  lw        $v1, 0x94($v1)
/* A8DDD8 80241358 AFA3002C */  sw        $v1, 0x2c($sp)
/* A8DDDC 8024135C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A8DDE0 80241360 8C630080 */  lw        $v1, 0x80($v1)
/* A8DDE4 80241364 AFA30030 */  sw        $v1, 0x30($sp)
/* A8DDE8 80241368 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A8DDEC 8024136C 8C630088 */  lw        $v1, 0x88($v1)
/* A8DDF0 80241370 AFA30034 */  sw        $v1, 0x34($sp)
/* A8DDF4 80241374 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A8DDF8 80241378 8C63008C */  lw        $v1, 0x8c($v1)
/* A8DDFC 8024137C 27B50028 */  addiu     $s5, $sp, 0x28
/* A8DE00 80241380 AFA30038 */  sw        $v1, 0x38($sp)
/* A8DE04 80241384 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A8DE08 80241388 3C0142C8 */  lui       $at, 0x42c8
/* A8DE0C 8024138C 44810000 */  mtc1      $at, $f0
/* A8DE10 80241390 8C630090 */  lw        $v1, 0x90($v1)
/* A8DE14 80241394 0040A02D */  daddu     $s4, $v0, $zero
/* A8DE18 80241398 E7A00040 */  swc1      $f0, 0x40($sp)
/* A8DE1C 8024139C A7A00044 */  sh        $zero, 0x44($sp)
/* A8DE20 802413A0 12000007 */  beqz      $s0, .L802413C0
/* A8DE24 802413A4 AFA3003C */   sw       $v1, 0x3c($sp)
/* A8DE28 802413A8 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A8DE2C 802413AC 864300A8 */  lh        $v1, 0xa8($s2)
/* A8DE30 802413B0 34420008 */  ori       $v0, $v0, 8
/* A8DE34 802413B4 AE230084 */  sw        $v1, 0x84($s1)
/* A8DE38 802413B8 080904F4 */  j         .L802413D0
/* A8DE3C 802413BC AE2200B0 */   sw       $v0, 0xb0($s1)
.L802413C0:
/* A8DE40 802413C0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A8DE44 802413C4 30420004 */  andi      $v0, $v0, 4
/* A8DE48 802413C8 10400048 */  beqz      $v0, .L802414EC
/* A8DE4C 802413CC 00000000 */   nop      
.L802413D0:
/* A8DE50 802413D0 A640008E */  sh        $zero, 0x8e($s2)
/* A8DE54 802413D4 AE600070 */  sw        $zero, 0x70($s3)
/* A8DE58 802413D8 8E2300CC */  lw        $v1, 0xcc($s1)
/* A8DE5C 802413DC 2404F7FF */  addiu     $a0, $zero, -0x801
/* A8DE60 802413E0 A2200007 */  sb        $zero, 7($s1)
/* A8DE64 802413E4 8E420000 */  lw        $v0, ($s2)
/* A8DE68 802413E8 8C630000 */  lw        $v1, ($v1)
/* A8DE6C 802413EC 00441024 */  and       $v0, $v0, $a0
/* A8DE70 802413F0 AE420000 */  sw        $v0, ($s2)
/* A8DE74 802413F4 AE430028 */  sw        $v1, 0x28($s2)
/* A8DE78 802413F8 96220086 */  lhu       $v0, 0x86($s1)
/* A8DE7C 802413FC A64200A8 */  sh        $v0, 0xa8($s2)
/* A8DE80 80241400 8E2200D0 */  lw        $v0, 0xd0($s1)
/* A8DE84 80241404 A22000B5 */  sb        $zero, 0xb5($s1)
/* A8DE88 80241408 AE20008C */  sw        $zero, 0x8c($s1)
/* A8DE8C 8024140C 8C420098 */  lw        $v0, 0x98($v0)
/* A8DE90 80241410 14400006 */  bnez      $v0, .L8024142C
/* A8DE94 80241414 2403FDFF */   addiu    $v1, $zero, -0x201
/* A8DE98 80241418 8E420000 */  lw        $v0, ($s2)
/* A8DE9C 8024141C 2403FFF7 */  addiu     $v1, $zero, -9
/* A8DEA0 80241420 34420200 */  ori       $v0, $v0, 0x200
/* A8DEA4 80241424 0809050E */  j         .L80241438
/* A8DEA8 80241428 00431024 */   and      $v0, $v0, $v1
.L8024142C:
/* A8DEAC 8024142C 8E420000 */  lw        $v0, ($s2)
/* A8DEB0 80241430 00431024 */  and       $v0, $v0, $v1
/* A8DEB4 80241434 34420008 */  ori       $v0, $v0, 8
.L80241438:
/* A8DEB8 80241438 AE420000 */  sw        $v0, ($s2)
/* A8DEBC 8024143C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A8DEC0 80241440 30420004 */  andi      $v0, $v0, 4
/* A8DEC4 80241444 1040001E */  beqz      $v0, .L802414C0
/* A8DEC8 80241448 24040002 */   addiu    $a0, $zero, 2
/* A8DECC 8024144C 0240282D */  daddu     $a1, $s2, $zero
/* A8DED0 80241450 0000302D */  daddu     $a2, $zero, $zero
/* A8DED4 80241454 24020063 */  addiu     $v0, $zero, 0x63
/* A8DED8 80241458 AE620070 */  sw        $v0, 0x70($s3)
/* A8DEDC 8024145C AE600074 */  sw        $zero, 0x74($s3)
/* A8DEE0 80241460 864300A8 */  lh        $v1, 0xa8($s2)
/* A8DEE4 80241464 3C013F80 */  lui       $at, 0x3f80
/* A8DEE8 80241468 44810000 */  mtc1      $at, $f0
/* A8DEEC 8024146C 3C014000 */  lui       $at, 0x4000
/* A8DEF0 80241470 44811000 */  mtc1      $at, $f2
/* A8DEF4 80241474 3C01C1A0 */  lui       $at, 0xc1a0
/* A8DEF8 80241478 44812000 */  mtc1      $at, $f4
/* A8DEFC 8024147C 24020028 */  addiu     $v0, $zero, 0x28
/* A8DF00 80241480 AFA2001C */  sw        $v0, 0x1c($sp)
/* A8DF04 80241484 44833000 */  mtc1      $v1, $f6
/* A8DF08 80241488 00000000 */  nop       
/* A8DF0C 8024148C 468031A0 */  cvt.s.w   $f6, $f6
/* A8DF10 80241490 44073000 */  mfc1      $a3, $f6
/* A8DF14 80241494 27A20048 */  addiu     $v0, $sp, 0x48
/* A8DF18 80241498 AFA20020 */  sw        $v0, 0x20($sp)
/* A8DF1C 8024149C E7A00010 */  swc1      $f0, 0x10($sp)
/* A8DF20 802414A0 E7A20014 */  swc1      $f2, 0x14($sp)
/* A8DF24 802414A4 0C01BFA4 */  jal       fx_emote
/* A8DF28 802414A8 E7A40018 */   swc1     $f4, 0x18($sp)
/* A8DF2C 802414AC 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A8DF30 802414B0 2403FFFB */  addiu     $v1, $zero, -5
/* A8DF34 802414B4 00431024 */  and       $v0, $v0, $v1
/* A8DF38 802414B8 0809053B */  j         .L802414EC
/* A8DF3C 802414BC AE2200B0 */   sw       $v0, 0xb0($s1)
.L802414C0:
/* A8DF40 802414C0 8E220000 */  lw        $v0, ($s1)
/* A8DF44 802414C4 3C034000 */  lui       $v1, 0x4000
/* A8DF48 802414C8 00431024 */  and       $v0, $v0, $v1
/* A8DF4C 802414CC 10400007 */  beqz      $v0, .L802414EC
/* A8DF50 802414D0 3C03BFFF */   lui      $v1, 0xbfff
/* A8DF54 802414D4 2402000C */  addiu     $v0, $zero, 0xc
/* A8DF58 802414D8 AE620070 */  sw        $v0, 0x70($s3)
/* A8DF5C 802414DC 8E220000 */  lw        $v0, ($s1)
/* A8DF60 802414E0 3463FFFF */  ori       $v1, $v1, 0xffff
/* A8DF64 802414E4 00431024 */  and       $v0, $v0, $v1
/* A8DF68 802414E8 AE220000 */  sw        $v0, ($s1)
.L802414EC:
/* A8DF6C 802414EC 8E630070 */  lw        $v1, 0x70($s3)
/* A8DF70 802414F0 2C620064 */  sltiu     $v0, $v1, 0x64
/* A8DF74 802414F4 1040003A */  beqz      $v0, .L802415E0
/* A8DF78 802414F8 00031080 */   sll      $v0, $v1, 2
/* A8DF7C 802414FC 3C018024 */  lui       $at, %hi(D_80245BA8)
/* A8DF80 80241500 00220821 */  addu      $at, $at, $v0
/* A8DF84 80241504 8C225BA8 */  lw        $v0, %lo(D_80245BA8)($at)
/* A8DF88 80241508 00400008 */  jr        $v0
/* A8DF8C 8024150C 00000000 */   nop      
/* A8DF90 80241510 0260202D */  daddu     $a0, $s3, $zero
/* A8DF94 80241514 0280282D */  daddu     $a1, $s4, $zero
/* A8DF98 80241518 0C090038 */  jal       func_802400E0_A8CB60
/* A8DF9C 8024151C 02A0302D */   daddu    $a2, $s5, $zero
/* A8DFA0 80241520 96220086 */  lhu       $v0, 0x86($s1)
/* A8DFA4 80241524 A64200A8 */  sh        $v0, 0xa8($s2)
/* A8DFA8 80241528 0260202D */  daddu     $a0, $s3, $zero
/* A8DFAC 8024152C 0280282D */  daddu     $a1, $s4, $zero
/* A8DFB0 80241530 0C09008E */  jal       func_80240238_A8CCB8
/* A8DFB4 80241534 02A0302D */   daddu    $a2, $s5, $zero
/* A8DFB8 80241538 08090578 */  j         .L802415E0
/* A8DFBC 8024153C 00000000 */   nop      
/* A8DFC0 80241540 0260202D */  daddu     $a0, $s3, $zero
/* A8DFC4 80241544 0280282D */  daddu     $a1, $s4, $zero
/* A8DFC8 80241548 0C090138 */  jal       UnkNpcAIFunc1
/* A8DFCC 8024154C 02A0302D */   daddu    $a2, $s5, $zero
/* A8DFD0 80241550 0260202D */  daddu     $a0, $s3, $zero
/* A8DFD4 80241554 0280282D */  daddu     $a1, $s4, $zero
/* A8DFD8 80241558 0C090168 */  jal       func_802405A0_A8D020
/* A8DFDC 8024155C 02A0302D */   daddu    $a2, $s5, $zero
/* A8DFE0 80241560 08090578 */  j         .L802415E0
/* A8DFE4 80241564 00000000 */   nop      
/* A8DFE8 80241568 0260202D */  daddu     $a0, $s3, $zero
/* A8DFEC 8024156C 0280282D */  daddu     $a1, $s4, $zero
/* A8DFF0 80241570 0C0901D7 */  jal       func_8024075C_A8D1DC
/* A8DFF4 80241574 02A0302D */   daddu    $a2, $s5, $zero
/* A8DFF8 80241578 08090578 */  j         .L802415E0
/* A8DFFC 8024157C 00000000 */   nop      
/* A8E000 80241580 0260202D */  daddu     $a0, $s3, $zero
/* A8E004 80241584 0280282D */  daddu     $a1, $s4, $zero
/* A8E008 80241588 0C0903DC */  jal       func_80240F70_A8D9F0
/* A8E00C 8024158C 02A0302D */   daddu    $a2, $s5, $zero
/* A8E010 80241590 0260202D */  daddu     $a0, $s3, $zero
/* A8E014 80241594 0280282D */  daddu     $a1, $s4, $zero
/* A8E018 80241598 0C0903FB */  jal       func_80240FEC_A8DA6C
/* A8E01C 8024159C 02A0302D */   daddu    $a2, $s5, $zero
/* A8E020 802415A0 08090578 */  j         .L802415E0
/* A8E024 802415A4 00000000 */   nop      
/* A8E028 802415A8 0260202D */  daddu     $a0, $s3, $zero
/* A8E02C 802415AC 0280282D */  daddu     $a1, $s4, $zero
/* A8E030 802415B0 0C090448 */  jal       func_80241120_A8DBA0
/* A8E034 802415B4 02A0302D */   daddu    $a2, $s5, $zero
/* A8E038 802415B8 08090578 */  j         .L802415E0
/* A8E03C 802415BC 00000000 */   nop      
/* A8E040 802415C0 0260202D */  daddu     $a0, $s3, $zero
/* A8E044 802415C4 0280282D */  daddu     $a1, $s4, $zero
/* A8E048 802415C8 0C0904A1 */  jal       func_80241284_A8DD04
/* A8E04C 802415CC 02A0302D */   daddu    $a2, $s5, $zero
/* A8E050 802415D0 08090578 */  j         .L802415E0
/* A8E054 802415D4 00000000 */   nop      
/* A8E058 802415D8 0C0129CF */  jal       func_8004A73C
/* A8E05C 802415DC 0260202D */   daddu    $a0, $s3, $zero
.L802415E0:
/* A8E060 802415E0 8FBF0068 */  lw        $ra, 0x68($sp)
/* A8E064 802415E4 8FB50064 */  lw        $s5, 0x64($sp)
/* A8E068 802415E8 8FB40060 */  lw        $s4, 0x60($sp)
/* A8E06C 802415EC 8FB3005C */  lw        $s3, 0x5c($sp)
/* A8E070 802415F0 8FB20058 */  lw        $s2, 0x58($sp)
/* A8E074 802415F4 8FB10054 */  lw        $s1, 0x54($sp)
/* A8E078 802415F8 8FB00050 */  lw        $s0, 0x50($sp)
/* A8E07C 802415FC 0000102D */  daddu     $v0, $zero, $zero
/* A8E080 80241600 03E00008 */  jr        $ra
/* A8E084 80241604 27BD0070 */   addiu    $sp, $sp, 0x70
