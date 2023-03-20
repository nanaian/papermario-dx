.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Generated by spimdisasm 1.11.1 */

glabel chapter_change_appendGfx
/* 419418 E010E558 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 41941C E010E55C 3C07DB06 */  lui        $a3, (0xDB060024 >> 16)
/* 419420 E010E560 3C068009 */  lui        $a2, %hi(gMainGfxPos)
/* 419424 E010E564 24C66A44 */  addiu      $a2, $a2, %lo(gMainGfxPos)
/* 419428 E010E568 34E70024 */  ori        $a3, $a3, (0xDB060024 & 0xFFFF)
/* 41942C E010E56C AFBF0024 */  sw         $ra, 0x24($sp)
/* 419430 E010E570 AFB20020 */  sw         $s2, 0x20($sp)
/* 419434 E010E574 AFB1001C */  sw         $s1, 0x1C($sp)
/* 419438 E010E578 AFB00018 */  sw         $s0, 0x18($sp)
/* 41943C E010E57C 8CC50000 */  lw         $a1, 0x0($a2)
/* 419440 E010E580 8C90000C */  lw         $s0, 0xC($a0)
/* 419444 E010E584 00A0182D */  daddu      $v1, $a1, $zero
/* 419448 E010E588 24A50008 */  addiu      $a1, $a1, 0x8
/* 41944C E010E58C ACC50000 */  sw         $a1, 0x0($a2)
/* 419450 E010E590 8E0B002C */  lw         $t3, 0x2C($s0)
/* 419454 E010E594 8E080000 */  lw         $t0, 0x0($s0)
/* 419458 E010E598 3C02E700 */  lui        $v0, (0xE7000000 >> 16)
/* 41945C E010E59C AC620000 */  sw         $v0, 0x0($v1)
/* 419460 E010E5A0 AC600004 */  sw         $zero, 0x4($v1)
/* 419464 E010E5A4 ACA70000 */  sw         $a3, 0x0($a1)
/* 419468 E010E5A8 8C830010 */  lw         $v1, 0x10($a0)
/* 41946C E010E5AC 24A20008 */  addiu      $v0, $a1, 0x8
/* 419470 E010E5B0 ACC20000 */  sw         $v0, 0x0($a2)
/* 419474 E010E5B4 8C62001C */  lw         $v0, 0x1C($v1)
/* 419478 E010E5B8 3C038000 */  lui        $v1, (0x80000000 >> 16)
/* 41947C E010E5BC 00431021 */  addu       $v0, $v0, $v1
/* 419480 E010E5C0 ACA20004 */  sw         $v0, 0x4($a1)
/* 419484 E010E5C4 2D020013 */  sltiu      $v0, $t0, 0x13
/* 419488 E010E5C8 10400025 */  beqz       $v0, .LPAL_E010E660
/* 41948C E010E5CC 00081080 */   sll       $v0, $t0, 2
/* 419490 E010E5D0 3C01E011 */  lui        $at, (0xE0110000 >> 16)
/* 419494 E010E5D4 00220821 */  addu       $at, $at, $v0
/* 419498 E010E5D8 8C22E9C0 */  lw         $v0, -0x1640($at)
/* 41949C E010E5DC 00400008 */  jr         $v0
/* 4194A0 E010E5E0 00000000 */   nop
/* 4194A4 E010E5E4 3C06E011 */  lui        $a2, %hi(D_E010E7FC)
/* 4194A8 E010E5E8 24C6E81C */  addiu      $a2, $a2, %lo(D_E010E7FC)
/* 4194AC E010E5EC 3C04E011 */  lui        $a0, %hi(D_E010E868)
/* 4194B0 E010E5F0 2484E8F4 */  addiu      $a0, $a0, %lo(D_E010E868)
/* 4194B4 E010E5F4 2503FFFF */  addiu      $v1, $t0, -0x1
/* 4194B8 E010E5F8 00031040 */  sll        $v0, $v1, 1
/* 4194BC E010E5FC 00431021 */  addu       $v0, $v0, $v1
/* 4194C0 E010E600 000210C0 */  sll        $v0, $v0, 3
/* 4194C4 E010E604 0804399A */  j          .LPAL_E010E668
/* 4194C8 E010E608 00448821 */   addu      $s1, $v0, $a0
/* 4194CC E010E60C 3C06E011 */  lui        $a2, %hi(D_E010E7D8)
/* 4194D0 E010E610 24C6E7F8 */  addiu      $a2, $a2, %lo(D_E010E7D8)
/* 4194D4 E010E614 0804399A */  j          .LPAL_E010E668
/* 4194D8 E010E618 0000882D */   daddu     $s1, $zero, $zero
/* 4194DC E010E61C 3C038015 */  lui        $v1, %hi(gCurrentLanguage)
/* 4194E0 E010E620 8C63AE4C */  lw         $v1, %lo(gCurrentLanguage)($v1)
/* 4194E4 E010E624 24020001 */  addiu      $v0, $zero, 0x1
/* 4194E8 E010E628 14620007 */  bne        $v1, $v0, .LPAL_E010E648
/* 4194EC E010E62C 0200202D */   daddu     $a0, $s0, $zero
/* 4194F0 E010E630 3C06E011 */  lui        $a2, %hi(D_E010E838_b)
/* 4194F4 E010E634 24C6E888 */  addiu      $a2, $a2, %lo(D_E010E838_b)
/* 4194F8 E010E638 3C11E011 */  lui        $s1, %hi(D_E010E838_c)
/* 4194FC E010E63C 2631E8C4 */  addiu      $s1, $s1, %lo(D_E010E838_c)
/* 419500 E010E640 0804399C */  j          .LPAL_E010E670
/* 419504 E010E644 0000282D */   daddu     $a1, $zero, $zero
.LPAL_E010E648:
/* 419508 E010E648 3C06E011 */  lui        $a2, %hi(D_E010E79C)
/* 41950C E010E64C 24C6E7BC */  addiu      $a2, $a2, %lo(D_E010E79C)
/* 419510 E010E650 3C11E011 */  lui        $s1, %hi(D_E010E838)
/* 419514 E010E654 2631E858 */  addiu      $s1, $s1, %lo(D_E010E838)
/* 419518 E010E658 0804399C */  j          .LPAL_E010E670
/* 41951C E010E65C 0000282D */   daddu     $a1, $zero, $zero
.LPAL_E010E660:
/* 419520 E010E660 0000882D */  daddu      $s1, $zero, $zero
/* 419524 E010E664 0220302D */  daddu      $a2, $s1, $zero
.LPAL_E010E668:
/* 419528 E010E668 0200202D */  daddu      $a0, $s0, $zero
/* 41952C E010E66C 0000282D */  daddu      $a1, $zero, $zero
.LPAL_E010E670:
/* 419530 E010E670 3C128009 */  lui        $s2, %hi(gMainGfxPos)
/* 419534 E010E674 26526A44 */  addiu      $s2, $s2, %lo(gMainGfxPos)
/* 419538 E010E678 8E490000 */  lw         $t1, 0x0($s2)
/* 41953C E010E67C 3C02FA00 */  lui        $v0, (0xFA000000 >> 16)
/* 419540 E010E680 0120502D */  daddu      $t2, $t1, $zero
/* 419544 E010E684 25290008 */  addiu      $t1, $t1, 0x8
/* 419548 E010E688 AE490000 */  sw         $t1, 0x0($s2)
/* 41954C E010E68C AD420000 */  sw         $v0, 0x0($t2)
/* 419550 E010E690 92020023 */  lbu        $v0, 0x23($s0)
/* 419554 E010E694 92070027 */  lbu        $a3, 0x27($s0)
/* 419558 E010E698 9208002B */  lbu        $t0, 0x2B($s0)
/* 41955C E010E69C 25230008 */  addiu      $v1, $t1, 0x8
/* 419560 E010E6A0 AE430000 */  sw         $v1, 0x0($s2)
/* 419564 E010E6A4 316300FF */  andi       $v1, $t3, 0xFF
/* 419568 E010E6A8 00021600 */  sll        $v0, $v0, 24
/* 41956C E010E6AC 00073C00 */  sll        $a3, $a3, 16
/* 419570 E010E6B0 00471025 */  or         $v0, $v0, $a3
/* 419574 E010E6B4 00084200 */  sll        $t0, $t0, 8
/* 419578 E010E6B8 00481025 */  or         $v0, $v0, $t0
/* 41957C E010E6BC 00431025 */  or         $v0, $v0, $v1
/* 419580 E010E6C0 AD420004 */  sw         $v0, 0x4($t2)
/* 419584 E010E6C4 3C02FB00 */  lui        $v0, (0xFB000000 >> 16)
/* 419588 E010E6C8 AD220000 */  sw         $v0, 0x0($t1)
/* 41958C E010E6CC 92020033 */  lbu        $v0, 0x33($s0)
/* 419590 E010E6D0 92030037 */  lbu        $v1, 0x37($s0)
/* 419594 E010E6D4 9207003B */  lbu        $a3, 0x3B($s0)
/* 419598 E010E6D8 00021600 */  sll        $v0, $v0, 24
/* 41959C E010E6DC 00031C00 */  sll        $v1, $v1, 16
/* 4195A0 E010E6E0 00431025 */  or         $v0, $v0, $v1
/* 4195A4 E010E6E4 00073A00 */  sll        $a3, $a3, 8
/* 4195A8 E010E6E8 9203003F */  lbu        $v1, 0x3F($s0)
/* 4195AC E010E6EC 00471025 */  or         $v0, $v0, $a3
/* 4195B0 E010E6F0 00431025 */  or         $v0, $v0, $v1
/* 4195B4 E010E6F4 0C043800 */  jal        func_E010E000
/* 4195B8 E010E6F8 AD220004 */   sw        $v0, 0x4($t1)
/* 4195BC E010E6FC 0200202D */  daddu      $a0, $s0, $zero
/* 4195C0 E010E700 24050001 */  addiu      $a1, $zero, 0x1
/* 4195C4 E010E704 0C043800 */  jal        func_E010E000
/* 4195C8 E010E708 0220302D */   daddu     $a2, $s1, $zero
/* 4195CC E010E70C 8E020054 */  lw         $v0, 0x54($s0)
/* 4195D0 E010E710 0440000A */  bltz       $v0, .LPAL_E010E73C
/* 4195D4 E010E714 24020015 */   addiu     $v0, $zero, 0x15
/* 4195D8 E010E718 8E030040 */  lw         $v1, 0x40($s0)
/* 4195DC E010E71C 8E050048 */  lw         $a1, 0x48($s0)
/* 4195E0 E010E720 240700FF */  addiu      $a3, $zero, 0xFF
/* 4195E4 E010E724 AFA20010 */  sw         $v0, 0x10($sp)
/* 4195E8 E010E728 AFA00014 */  sw         $zero, 0x14($sp)
/* 4195EC E010E72C 8E040054 */  lw         $a0, 0x54($s0)
/* 4195F0 E010E730 8E060044 */  lw         $a2, 0x44($s0)
/* 4195F4 E010E734 0C080194 */  jal        shim_draw_msg
/* 4195F8 E010E738 00652823 */   subu      $a1, $v1, $a1
.LPAL_E010E73C:
/* 4195FC E010E73C 8E420000 */  lw         $v0, 0x0($s2)
/* 419600 E010E740 0040182D */  daddu      $v1, $v0, $zero
/* 419604 E010E744 24420008 */  addiu      $v0, $v0, 0x8
/* 419608 E010E748 AE420000 */  sw         $v0, 0x0($s2)
/* 41960C E010E74C 3C02E700 */  lui        $v0, (0xE7000000 >> 16)
/* 419610 E010E750 AC620000 */  sw         $v0, 0x0($v1)
/* 419614 E010E754 AC600004 */  sw         $zero, 0x4($v1)
/* 419618 E010E758 8FBF0024 */  lw         $ra, 0x24($sp)
/* 41961C E010E75C 8FB20020 */  lw         $s2, 0x20($sp)
/* 419620 E010E760 8FB1001C */  lw         $s1, 0x1C($sp)
/* 419624 E010E764 8FB00018 */  lw         $s0, 0x18($sp)
/* 419628 E010E768 03E00008 */  jr         $ra
/* 41962C E010E76C 27BD0028 */   addiu     $sp, $sp, 0x28