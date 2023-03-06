.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

glabel strchr
/* 3DFD0 80062BD0 00052E00 */  sll       $a1, $a1, 24
/* 3DFD4 80062BD4 08018AFB */  j         .LIQUE_80062BEC
/* 3DFD8 80062BD8 00052E03 */   sra      $a1, $a1, 24
.LIQUE_80062BDC:
/* 3DFDC 80062BDC 14600003 */  bnez      $v1, .LIQUE_80062BEC
/* 3DFE0 80062BE0 24840001 */   addiu    $a0, $a0, 0x1
/* 3DFE4 80062BE4 03E00008 */  jr        $ra
/* 3DFE8 80062BE8 00001021 */   addu     $v0, $zero, $zero
.LIQUE_80062BEC:
/* 3DFEC 80062BEC 80820000 */  lb        $v0, 0x0($a0)
/* 3DFF0 80062BF0 1445FFFA */  bne       $v0, $a1, .LIQUE_80062BDC
/* 3DFF4 80062BF4 90830000 */   lbu      $v1, 0x0($a0)
/* 3DFF8 80062BF8 03E00008 */  jr        $ra
/* 3DFFC 80062BFC 00801021 */   addu     $v0, $a0, $zero

glabel strlen
/* 3E000 80062C00 80820000 */  lb        $v0, 0x0($a0)
/* 3E004 80062C04 10400005 */  beqz      $v0, .LIQUE_80062C1C
/* 3E008 80062C08 00801821 */   addu     $v1, $a0, $zero
/* 3E00C 80062C0C 24630001 */  addiu     $v1, $v1, 0x1
.LIQUE_80062C10:
/* 3E010 80062C10 80620000 */  lb        $v0, 0x0($v1)
/* 3E014 80062C14 5440FFFE */  bnel      $v0, $zero, .LIQUE_80062C10
/* 3E018 80062C18 24630001 */   addiu    $v1, $v1, 0x1
.LIQUE_80062C1C:
/* 3E01C 80062C1C 03E00008 */  jr        $ra
/* 3E020 80062C20 00641023 */   subu     $v0, $v1, $a0

glabel memcpy
/* 3E024 80062C24 10C00007 */  beqz      $a2, .LIQUE_80062C44
/* 3E028 80062C28 00801821 */   addu     $v1, $a0, $zero
.LIQUE_80062C2C:
/* 3E02C 80062C2C 90A20000 */  lbu       $v0, 0x0($a1)
/* 3E030 80062C30 24A50001 */  addiu     $a1, $a1, 0x1
/* 3E034 80062C34 24C6FFFF */  addiu     $a2, $a2, -0x1
/* 3E038 80062C38 A0620000 */  sb        $v0, 0x0($v1)
/* 3E03C 80062C3C 14C0FFFB */  bnez      $a2, .LIQUE_80062C2C
/* 3E040 80062C40 24630001 */   addiu    $v1, $v1, 0x1
.LIQUE_80062C44:
/* 3E044 80062C44 03E00008 */  jr        $ra
/* 3E048 80062C48 00801021 */   addu     $v0, $a0, $zero
/* 3E04C 80062C4C 00000000 */  nop