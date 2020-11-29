.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240310_C96240
/* C96240 80240310 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* C96244 80240314 AFB00010 */  sw        $s0, 0x10($sp)
/* C96248 80240318 3C108024 */  lui       $s0, %hi(D_80241780)
/* C9624C 8024031C 26101780 */  addiu     $s0, $s0, %lo(D_80241780)
/* C96250 80240320 AFBF0018 */  sw        $ra, 0x18($sp)
/* C96254 80240324 AFB10014 */  sw        $s1, 0x14($sp)
/* C96258 80240328 8E020000 */  lw        $v0, ($s0)
/* C9625C 8024032C 14400010 */  bnez      $v0, .L80240370
/* C96260 80240330 0080882D */   daddu    $s1, $a0, $zero
/* C96264 80240334 0C00AB39 */  jal       heap_malloc
/* C96268 80240338 24040040 */   addiu    $a0, $zero, 0x40
/* C9626C 8024033C AE020000 */  sw        $v0, ($s0)
/* C96270 80240340 0000182D */  daddu     $v1, $zero, $zero
/* C96274 80240344 0040282D */  daddu     $a1, $v0, $zero
/* C96278 80240348 0220202D */  daddu     $a0, $s1, $zero
.L8024034C:
/* C9627C 8024034C 8C820084 */  lw        $v0, 0x84($a0)
/* C96280 80240350 24840004 */  addiu     $a0, $a0, 4
/* C96284 80240354 24630001 */  addiu     $v1, $v1, 1
/* C96288 80240358 ACA20000 */  sw        $v0, ($a1)
/* C9628C 8024035C 28620010 */  slti      $v0, $v1, 0x10
/* C96290 80240360 1440FFFA */  bnez      $v0, .L8024034C
/* C96294 80240364 24A50004 */   addiu    $a1, $a1, 4
/* C96298 80240368 080900EB */  j         .L802403AC
/* C9629C 8024036C 00000000 */   nop      
.L80240370:
/* C962A0 80240370 0000182D */  daddu     $v1, $zero, $zero
/* C962A4 80240374 0040282D */  daddu     $a1, $v0, $zero
/* C962A8 80240378 0220202D */  daddu     $a0, $s1, $zero
.L8024037C:
/* C962AC 8024037C 8CA20000 */  lw        $v0, ($a1)
/* C962B0 80240380 24A50004 */  addiu     $a1, $a1, 4
/* C962B4 80240384 24630001 */  addiu     $v1, $v1, 1
/* C962B8 80240388 AC820084 */  sw        $v0, 0x84($a0)
/* C962BC 8024038C 28620010 */  slti      $v0, $v1, 0x10
/* C962C0 80240390 1440FFFA */  bnez      $v0, .L8024037C
/* C962C4 80240394 24840004 */   addiu    $a0, $a0, 4
/* C962C8 80240398 3C108024 */  lui       $s0, %hi(D_80241780)
/* C962CC 8024039C 26101780 */  addiu     $s0, $s0, %lo(D_80241780)
/* C962D0 802403A0 0C00AB4B */  jal       heap_free
/* C962D4 802403A4 8E040000 */   lw       $a0, ($s0)
/* C962D8 802403A8 AE000000 */  sw        $zero, ($s0)
.L802403AC:
/* C962DC 802403AC 8FBF0018 */  lw        $ra, 0x18($sp)
/* C962E0 802403B0 8FB10014 */  lw        $s1, 0x14($sp)
/* C962E4 802403B4 8FB00010 */  lw        $s0, 0x10($sp)
/* C962E8 802403B8 24020002 */  addiu     $v0, $zero, 2
/* C962EC 802403BC 03E00008 */  jr        $ra
/* C962F0 802403C0 27BD0020 */   addiu    $sp, $sp, 0x20
