.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80243DB0_855F20
/* 855F20 80243DB0 44862000 */  mtc1      $a2, $f4
/* 855F24 80243DB4 3C013F00 */  lui       $at, 0x3f00
/* 855F28 80243DB8 44810000 */  mtc1      $at, $f0
/* 855F2C 80243DBC 8FA40010 */  lw        $a0, 0x10($sp)
/* 855F30 80243DC0 8FA50014 */  lw        $a1, 0x14($sp)
/* 855F34 80243DC4 4600203E */  c.le.s    $f4, $f0
/* 855F38 80243DC8 00000000 */  nop       
/* 855F3C 80243DCC 45020008 */  bc1fl     .L80243DF0
/* 855F40 80243DD0 460E2000 */   add.s    $f0, $f4, $f14
/* 855F44 80243DD4 460020A1 */  cvt.d.s   $f2, $f4
/* 855F48 80243DD8 46007021 */  cvt.d.s   $f0, $f14
/* 855F4C 80243DDC 46220002 */  mul.d     $f0, $f0, $f2
/* 855F50 80243DE0 00000000 */  nop       
/* 855F54 80243DE4 46220000 */  add.d     $f0, $f0, $f2
/* 855F58 80243DE8 08090F7F */  j         .L80243DFC
/* 855F5C 80243DEC 462001A0 */   cvt.s.d  $f6, $f0
.L80243DF0:
/* 855F60 80243DF0 460E2082 */  mul.s     $f2, $f4, $f14
/* 855F64 80243DF4 00000000 */  nop       
/* 855F68 80243DF8 46020181 */  sub.s     $f6, $f0, $f2
.L80243DFC:
/* 855F6C 80243DFC 44800000 */  mtc1      $zero, $f0
/* 855F70 80243E00 00000000 */  nop       
/* 855F74 80243E04 46003032 */  c.eq.s    $f6, $f0
/* 855F78 80243E08 00000000 */  nop       
/* 855F7C 80243E0C 45000005 */  bc1f      .L80243E24
/* 855F80 80243E10 00000000 */   nop      
/* 855F84 80243E14 E4A00000 */  swc1      $f0, ($a1)
/* 855F88 80243E18 E4800000 */  swc1      $f0, ($a0)
/* 855F8C 80243E1C 03E00008 */  jr        $ra
/* 855F90 80243E20 E4E00000 */   swc1     $f0, ($a3)
.L80243E24:
/* 855F94 80243E24 3C0140C0 */  lui       $at, 0x40c0
/* 855F98 80243E28 44810000 */  mtc1      $at, $f0
/* 855F9C 80243E2C 00000000 */  nop       
/* 855FA0 80243E30 46006302 */  mul.s     $f12, $f12, $f0
/* 855FA4 80243E34 00000000 */  nop       
/* 855FA8 80243E38 46042000 */  add.s     $f0, $f4, $f4
/* 855FAC 80243E3C 46060201 */  sub.s     $f8, $f0, $f6
/* 855FB0 80243E40 46083001 */  sub.s     $f0, $f6, $f8
/* 855FB4 80243E44 46060003 */  div.s     $f0, $f0, $f6
/* 855FB8 80243E48 46003002 */  mul.s     $f0, $f6, $f0
/* 855FBC 80243E4C 00000000 */  nop       
/* 855FC0 80243E50 4600628D */  trunc.w.s $f10, $f12
/* 855FC4 80243E54 44025000 */  mfc1      $v0, $f10
/* 855FC8 80243E58 00000000 */  nop       
/* 855FCC 80243E5C 44822000 */  mtc1      $v0, $f4
/* 855FD0 80243E60 00000000 */  nop       
/* 855FD4 80243E64 46802120 */  cvt.s.w   $f4, $f4
/* 855FD8 80243E68 46046081 */  sub.s     $f2, $f12, $f4
/* 855FDC 80243E6C 46020002 */  mul.s     $f0, $f0, $f2
/* 855FE0 80243E70 00000000 */  nop       
/* 855FE4 80243E74 46004080 */  add.s     $f2, $f8, $f0
/* 855FE8 80243E78 4600228D */  trunc.w.s $f10, $f4
/* 855FEC 80243E7C 44035000 */  mfc1      $v1, $f10
/* 855FF0 80243E80 00000000 */  nop       
/* 855FF4 80243E84 2C620006 */  sltiu     $v0, $v1, 6
/* 855FF8 80243E88 1040001E */  beqz      $v0, .L80243F04
/* 855FFC 80243E8C 46003001 */   sub.s    $f0, $f6, $f0
/* 856000 80243E90 00031080 */  sll       $v0, $v1, 2
/* 856004 80243E94 3C018025 */  lui       $at, %hi(D_802529B0)
/* 856008 80243E98 00220821 */  addu      $at, $at, $v0
/* 85600C 80243E9C 8C2229B0 */  lw        $v0, %lo(D_802529B0)($at)
/* 856010 80243EA0 00400008 */  jr        $v0
/* 856014 80243EA4 00000000 */   nop      
/* 856018 80243EA8 E4E60000 */  swc1      $f6, ($a3)
/* 85601C 80243EAC E4820000 */  swc1      $f2, ($a0)
/* 856020 80243EB0 03E00008 */  jr        $ra
/* 856024 80243EB4 E4A80000 */   swc1     $f8, ($a1)
/* 856028 80243EB8 E4E00000 */  swc1      $f0, ($a3)
/* 85602C 80243EBC E4860000 */  swc1      $f6, ($a0)
/* 856030 80243EC0 03E00008 */  jr        $ra
/* 856034 80243EC4 E4A80000 */   swc1     $f8, ($a1)
/* 856038 80243EC8 E4E80000 */  swc1      $f8, ($a3)
/* 85603C 80243ECC E4860000 */  swc1      $f6, ($a0)
/* 856040 80243ED0 03E00008 */  jr        $ra
/* 856044 80243ED4 E4A20000 */   swc1     $f2, ($a1)
/* 856048 80243ED8 E4E80000 */  swc1      $f8, ($a3)
/* 85604C 80243EDC E4800000 */  swc1      $f0, ($a0)
/* 856050 80243EE0 03E00008 */  jr        $ra
/* 856054 80243EE4 E4A60000 */   swc1     $f6, ($a1)
/* 856058 80243EE8 E4E20000 */  swc1      $f2, ($a3)
/* 85605C 80243EEC E4880000 */  swc1      $f8, ($a0)
/* 856060 80243EF0 03E00008 */  jr        $ra
/* 856064 80243EF4 E4A60000 */   swc1     $f6, ($a1)
/* 856068 80243EF8 E4E60000 */  swc1      $f6, ($a3)
/* 85606C 80243EFC E4880000 */  swc1      $f8, ($a0)
/* 856070 80243F00 E4A00000 */  swc1      $f0, ($a1)
.L80243F04:
/* 856074 80243F04 03E00008 */  jr        $ra
/* 856078 80243F08 00000000 */   nop      
