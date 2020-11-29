.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802401B0_7E7550
/* 7E7550 802401B0 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 7E7554 802401B4 AFBF002C */  sw        $ra, 0x2c($sp)
/* 7E7558 802401B8 AFB20028 */  sw        $s2, 0x28($sp)
/* 7E755C 802401BC AFB10024 */  sw        $s1, 0x24($sp)
/* 7E7560 802401C0 AFB00020 */  sw        $s0, 0x20($sp)
/* 7E7564 802401C4 F7B60038 */  sdc1      $f22, 0x38($sp)
/* 7E7568 802401C8 F7B40030 */  sdc1      $f20, 0x30($sp)
/* 7E756C 802401CC 8C820148 */  lw        $v0, 0x148($a0)
/* 7E7570 802401D0 0C00EABB */  jal       get_npc_unsafe
/* 7E7574 802401D4 84440008 */   lh       $a0, 8($v0)
/* 7E7578 802401D8 240403E8 */  addiu     $a0, $zero, 0x3e8
/* 7E757C 802401DC 0C00A67F */  jal       rand_int
/* 7E7580 802401E0 0040902D */   daddu    $s2, $v0, $zero
/* 7E7584 802401E4 284201F4 */  slti      $v0, $v0, 0x1f4
/* 7E7588 802401E8 10400019 */  beqz      $v0, .L80240250
/* 7E758C 802401EC 00000000 */   nop      
/* 7E7590 802401F0 0C00A67F */  jal       rand_int
/* 7E7594 802401F4 24040004 */   addiu    $a0, $zero, 4
/* 7E7598 802401F8 24420001 */  addiu     $v0, $v0, 1
/* 7E759C 802401FC 4482B000 */  mtc1      $v0, $f22
/* 7E75A0 80240200 00000000 */  nop       
/* 7E75A4 80240204 4680B5A0 */  cvt.s.w   $f22, $f22
/* 7E75A8 80240208 0C00A67F */  jal       rand_int
/* 7E75AC 8024020C 24040003 */   addiu    $a0, $zero, 3
/* 7E75B0 80240210 24420005 */  addiu     $v0, $v0, 5
/* 7E75B4 80240214 4482A000 */  mtc1      $v0, $f20
/* 7E75B8 80240218 00000000 */  nop       
/* 7E75BC 8024021C 4680A520 */  cvt.s.w   $f20, $f20
/* 7E75C0 80240220 0C00A67F */  jal       rand_int
/* 7E75C4 80240224 24040032 */   addiu    $a0, $zero, 0x32
/* 7E75C8 80240228 24040064 */  addiu     $a0, $zero, 0x64
/* 7E75CC 8024022C 0C00A67F */  jal       rand_int
/* 7E75D0 80240230 24500032 */   addiu    $s0, $v0, 0x32
/* 7E75D4 80240234 0240202D */  daddu     $a0, $s2, $zero
/* 7E75D8 80240238 2405FFFF */  addiu     $a1, $zero, -1
/* 7E75DC 8024023C 3C068024 */  lui       $a2, %hi(D_80241180)
/* 7E75E0 80240240 24C61180 */  addiu     $a2, $a2, %lo(D_80241180)
/* 7E75E4 80240244 4407B000 */  mfc1      $a3, $f22
/* 7E75E8 80240248 080900AE */  j         .L802402B8
/* 7E75EC 8024024C 24420064 */   addiu    $v0, $v0, 0x64
.L80240250:
/* 7E75F0 80240250 0C00A67F */  jal       rand_int
/* 7E75F4 80240254 24040003 */   addiu    $a0, $zero, 3
/* 7E75F8 80240258 24040004 */  addiu     $a0, $zero, 4
/* 7E75FC 8024025C 0C00A67F */  jal       rand_int
/* 7E7600 80240260 2451000A */   addiu    $s1, $v0, 0xa
/* 7E7604 80240264 24420001 */  addiu     $v0, $v0, 1
/* 7E7608 80240268 4482B000 */  mtc1      $v0, $f22
/* 7E760C 8024026C 00000000 */  nop       
/* 7E7610 80240270 4680B5A0 */  cvt.s.w   $f22, $f22
/* 7E7614 80240274 0C00A67F */  jal       rand_int
/* 7E7618 80240278 24040003 */   addiu    $a0, $zero, 3
/* 7E761C 8024027C 24420005 */  addiu     $v0, $v0, 5
/* 7E7620 80240280 4482A000 */  mtc1      $v0, $f20
/* 7E7624 80240284 00000000 */  nop       
/* 7E7628 80240288 4680A520 */  cvt.s.w   $f20, $f20
/* 7E762C 8024028C 0C00A67F */  jal       rand_int
/* 7E7630 80240290 24040032 */   addiu    $a0, $zero, 0x32
/* 7E7634 80240294 24040064 */  addiu     $a0, $zero, 0x64
/* 7E7638 80240298 0C00A67F */  jal       rand_int
/* 7E763C 8024029C 24500032 */   addiu    $s0, $v0, 0x32
/* 7E7640 802402A0 0240202D */  daddu     $a0, $s2, $zero
/* 7E7644 802402A4 0220282D */  daddu     $a1, $s1, $zero
/* 7E7648 802402A8 3C068024 */  lui       $a2, %hi(D_80241180)
/* 7E764C 802402AC 24C61180 */  addiu     $a2, $a2, %lo(D_80241180)
/* 7E7650 802402B0 4407B000 */  mfc1      $a3, $f22
/* 7E7654 802402B4 2442000A */  addiu     $v0, $v0, 0xa
.L802402B8:
/* 7E7658 802402B8 E7B40010 */  swc1      $f20, 0x10($sp)
/* 7E765C 802402BC AFB00014 */  sw        $s0, 0x14($sp)
/* 7E7660 802402C0 0C0177B3 */  jal       func_8005DECC
/* 7E7664 802402C4 AFA20018 */   sw       $v0, 0x18($sp)
/* 7E7668 802402C8 8FBF002C */  lw        $ra, 0x2c($sp)
/* 7E766C 802402CC 8FB20028 */  lw        $s2, 0x28($sp)
/* 7E7670 802402D0 8FB10024 */  lw        $s1, 0x24($sp)
/* 7E7674 802402D4 8FB00020 */  lw        $s0, 0x20($sp)
/* 7E7678 802402D8 D7B60038 */  ldc1      $f22, 0x38($sp)
/* 7E767C 802402DC D7B40030 */  ldc1      $f20, 0x30($sp)
/* 7E7680 802402E0 24020002 */  addiu     $v0, $zero, 2
/* 7E7684 802402E4 03E00008 */  jr        $ra
/* 7E7688 802402E8 27BD0040 */   addiu    $sp, $sp, 0x40
