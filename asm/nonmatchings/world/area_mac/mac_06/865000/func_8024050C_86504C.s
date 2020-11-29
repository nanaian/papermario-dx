.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024050C_86504C
/* 86504C 8024050C 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 865050 80240510 AFB10014 */  sw        $s1, 0x14($sp)
/* 865054 80240514 0080882D */  daddu     $s1, $a0, $zero
/* 865058 80240518 AFBF0024 */  sw        $ra, 0x24($sp)
/* 86505C 8024051C AFB40020 */  sw        $s4, 0x20($sp)
/* 865060 80240520 AFB3001C */  sw        $s3, 0x1c($sp)
/* 865064 80240524 AFB20018 */  sw        $s2, 0x18($sp)
/* 865068 80240528 AFB00010 */  sw        $s0, 0x10($sp)
/* 86506C 8024052C F7B40028 */  sdc1      $f20, 0x28($sp)
/* 865070 80240530 8E30000C */  lw        $s0, 0xc($s1)
/* 865074 80240534 8E050000 */  lw        $a1, ($s0)
/* 865078 80240538 0C0B1EAF */  jal       get_variable
/* 86507C 8024053C 26100004 */   addiu    $s0, $s0, 4
/* 865080 80240540 8E120000 */  lw        $s2, ($s0)
/* 865084 80240544 26100004 */  addiu     $s0, $s0, 4
/* 865088 80240548 0220202D */  daddu     $a0, $s1, $zero
/* 86508C 8024054C 8E130000 */  lw        $s3, ($s0)
/* 865090 80240550 8E140004 */  lw        $s4, 4($s0)
/* 865094 80240554 0C090130 */  jal       func_802404C0_865000
/* 865098 80240558 0040282D */   daddu    $a1, $v0, $zero
/* 86509C 8024055C 0040802D */  daddu     $s0, $v0, $zero
/* 8650A0 80240560 12000034 */  beqz      $s0, .L80240634
/* 8650A4 80240564 24020002 */   addiu    $v0, $zero, 2
/* 8650A8 80240568 3C038024 */  lui       $v1, %hi(D_80241B60)
/* 8650AC 8024056C 24631B60 */  addiu     $v1, $v1, %lo(D_80241B60)
/* 8650B0 80240570 8C640000 */  lw        $a0, ($v1)
/* 8650B4 80240574 24820004 */  addiu     $v0, $a0, 4
/* 8650B8 80240578 AC620000 */  sw        $v0, ($v1)
/* 8650BC 8024057C 2C420168 */  sltiu     $v0, $v0, 0x168
/* 8650C0 80240580 14400004 */  bnez      $v0, .L80240594
/* 8650C4 80240584 3C0200B6 */   lui      $v0, 0xb6
/* 8650C8 80240588 2482FE9C */  addiu     $v0, $a0, -0x164
/* 8650CC 8024058C AC620000 */  sw        $v0, ($v1)
/* 8650D0 80240590 3C0200B6 */  lui       $v0, 0xb6
.L80240594:
/* 8650D4 80240594 8E030028 */  lw        $v1, 0x28($s0)
/* 8650D8 80240598 C614003C */  lwc1      $f20, 0x3c($s0)
/* 8650DC 8024059C 10620009 */  beq       $v1, $v0, .L802405C4
/* 8650E0 802405A0 34420004 */   ori      $v0, $v0, 4
/* 8650E4 802405A4 10620007 */  beq       $v1, $v0, .L802405C4
/* 8650E8 802405A8 3C0200B6 */   lui      $v0, 0xb6
/* 8650EC 802405AC 34420008 */  ori       $v0, $v0, 8
/* 8650F0 802405B0 10620004 */  beq       $v1, $v0, .L802405C4
/* 8650F4 802405B4 3C0200B6 */   lui      $v0, 0xb6
/* 8650F8 802405B8 3442000C */  ori       $v0, $v0, 0xc
/* 8650FC 802405BC 14620011 */  bne       $v1, $v0, .L80240604
/* 865100 802405C0 0220202D */   daddu    $a0, $s1, $zero
.L802405C4:
/* 865104 802405C4 3C028024 */  lui       $v0, %hi(D_80241B60)
/* 865108 802405C8 8C421B60 */  lw        $v0, %lo(D_80241B60)($v0)
/* 86510C 802405CC 44826000 */  mtc1      $v0, $f12
/* 865110 802405D0 00000000 */  nop       
/* 865114 802405D4 04410006 */  bgez      $v0, .L802405F0
/* 865118 802405D8 46806321 */   cvt.d.w  $f12, $f12
/* 86511C 802405DC 3C0141F0 */  lui       $at, 0x41f0
/* 865120 802405E0 44810800 */  mtc1      $at, $f1
/* 865124 802405E4 44800000 */  mtc1      $zero, $f0
/* 865128 802405E8 00000000 */  nop       
/* 86512C 802405EC 46206300 */  add.d     $f12, $f12, $f0
.L802405F0:
/* 865130 802405F0 0C00A8BB */  jal       sin_deg
/* 865134 802405F4 46206320 */   cvt.s.d  $f12, $f12
/* 865138 802405F8 46000000 */  add.s     $f0, $f0, $f0
/* 86513C 802405FC 4600A500 */  add.s     $f20, $f20, $f0
/* 865140 80240600 0220202D */  daddu     $a0, $s1, $zero
.L80240604:
/* 865144 80240604 8E060038 */  lw        $a2, 0x38($s0)
/* 865148 80240608 0C0B2190 */  jal       set_float_variable
/* 86514C 8024060C 0240282D */   daddu    $a1, $s2, $zero
/* 865150 80240610 0220202D */  daddu     $a0, $s1, $zero
/* 865154 80240614 4406A000 */  mfc1      $a2, $f20
/* 865158 80240618 0C0B2190 */  jal       set_float_variable
/* 86515C 8024061C 0260282D */   daddu    $a1, $s3, $zero
/* 865160 80240620 0220202D */  daddu     $a0, $s1, $zero
/* 865164 80240624 8E060040 */  lw        $a2, 0x40($s0)
/* 865168 80240628 0C0B2190 */  jal       set_float_variable
/* 86516C 8024062C 0280282D */   daddu    $a1, $s4, $zero
/* 865170 80240630 24020002 */  addiu     $v0, $zero, 2
.L80240634:
/* 865174 80240634 8FBF0024 */  lw        $ra, 0x24($sp)
/* 865178 80240638 8FB40020 */  lw        $s4, 0x20($sp)
/* 86517C 8024063C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 865180 80240640 8FB20018 */  lw        $s2, 0x18($sp)
/* 865184 80240644 8FB10014 */  lw        $s1, 0x14($sp)
/* 865188 80240648 8FB00010 */  lw        $s0, 0x10($sp)
/* 86518C 8024064C D7B40028 */  ldc1      $f20, 0x28($sp)
/* 865190 80240650 03E00008 */  jr        $ra
/* 865194 80240654 27BD0030 */   addiu    $sp, $sp, 0x30
