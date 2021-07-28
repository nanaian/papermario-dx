.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel render_hud_elements_backUI
/* D8910 80142210 27BDFAB0 */  addiu     $sp, $sp, -0x550
/* D8914 80142214 3C038016 */  lui       $v1, %hi(D_80159180)
/* D8918 80142218 24639180 */  addiu     $v1, $v1, %lo(D_80159180)
/* D891C 8014221C AFBF054C */  sw        $ra, 0x54c($sp)
/* D8920 80142220 AFBE0548 */  sw        $fp, 0x548($sp)
/* D8924 80142224 AFB70544 */  sw        $s7, 0x544($sp)
/* D8928 80142228 AFB60540 */  sw        $s6, 0x540($sp)
/* D892C 8014222C AFB5053C */  sw        $s5, 0x53c($sp)
/* D8930 80142230 AFB40538 */  sw        $s4, 0x538($sp)
/* D8934 80142234 AFB30534 */  sw        $s3, 0x534($sp)
/* D8938 80142238 AFB20530 */  sw        $s2, 0x530($sp)
/* D893C 8014223C AFB1052C */  sw        $s1, 0x52c($sp)
/* D8940 80142240 AFB00528 */  sw        $s0, 0x528($sp)
/* D8944 80142244 8C620000 */  lw        $v0, ($v1)
/* D8948 80142248 24420001 */  addiu     $v0, $v0, 1
/* D894C 8014224C AC620000 */  sw        $v0, ($v1)
/* D8950 80142250 28420003 */  slti      $v0, $v0, 3
/* D8954 80142254 50400001 */  beql      $v0, $zero, .L8014225C
/* D8958 80142258 AC600000 */   sw       $zero, ($v1)
.L8014225C:
/* D895C 8014225C 0000F02D */  daddu     $fp, $zero, $zero
/* D8960 80142260 03C0B82D */  daddu     $s7, $fp, $zero
/* D8964 80142264 3C075021 */  lui       $a3, 0x5021
/* D8968 80142268 34E70080 */  ori       $a3, $a3, 0x80
/* D896C 8014226C 27A60028 */  addiu     $a2, $sp, 0x28
/* D8970 80142270 3C03800A */  lui       $v1, %hi(gMasterGfxPos)
/* D8974 80142274 2463A66C */  addiu     $v1, $v1, %lo(gMasterGfxPos)
/* D8978 80142278 8C620000 */  lw        $v0, ($v1)
/* D897C 8014227C 3C058015 */  lui       $a1, %hi(gHudElementList)
/* D8980 80142280 8CA57960 */  lw        $a1, %lo(gHudElementList)($a1)
/* D8984 80142284 0040202D */  daddu     $a0, $v0, $zero
/* D8988 80142288 24420008 */  addiu     $v0, $v0, 8
/* D898C 8014228C AC620000 */  sw        $v0, ($v1)
/* D8990 80142290 3C02DE00 */  lui       $v0, 0xde00
/* D8994 80142294 AC820000 */  sw        $v0, ($a0)
/* D8998 80142298 3C020015 */  lui       $v0, 0x15
/* D899C 8014229C 2442F078 */  addiu     $v0, $v0, -0xf88
/* D89A0 801422A0 AC820004 */  sw        $v0, 4($a0)
.L801422A4:
/* D89A4 801422A4 8CB00000 */  lw        $s0, ($a1)
/* D89A8 801422A8 52000014 */  beql      $s0, $zero, .L801422FC
/* D89AC 801422AC 26F70001 */   addiu    $s7, $s7, 1
/* D89B0 801422B0 8E030000 */  lw        $v1, ($s0)
/* D89B4 801422B4 50600011 */  beql      $v1, $zero, .L801422FC
/* D89B8 801422B8 26F70001 */   addiu    $s7, $s7, 1
/* D89BC 801422BC 30620002 */  andi      $v0, $v1, 2
/* D89C0 801422C0 5440000E */  bnel      $v0, $zero, .L801422FC
/* D89C4 801422C4 26F70001 */   addiu    $s7, $s7, 1
/* D89C8 801422C8 00671024 */  and       $v0, $v1, $a3
/* D89CC 801422CC 5440000B */  bnel      $v0, $zero, .L801422FC
/* D89D0 801422D0 26F70001 */   addiu    $s7, $s7, 1
/* D89D4 801422D4 30620040 */  andi      $v0, $v1, 0x40
/* D89D8 801422D8 54400008 */  bnel      $v0, $zero, .L801422FC
/* D89DC 801422DC 26F70001 */   addiu    $s7, $s7, 1
/* D89E0 801422E0 82020045 */  lb        $v0, 0x45($s0)
/* D89E4 801422E4 04420005 */  bltzl     $v0, .L801422FC
/* D89E8 801422E8 26F70001 */   addiu    $s7, $s7, 1
/* D89EC 801422EC ACD70000 */  sw        $s7, ($a2)
/* D89F0 801422F0 24C60004 */  addiu     $a2, $a2, 4
/* D89F4 801422F4 27DE0001 */  addiu     $fp, $fp, 1
/* D89F8 801422F8 26F70001 */  addiu     $s7, $s7, 1
.L801422FC:
/* D89FC 801422FC 2AE20140 */  slti      $v0, $s7, 0x140
/* D8A00 80142300 1440FFE8 */  bnez      $v0, .L801422A4
/* D8A04 80142304 24A50004 */   addiu    $a1, $a1, 4
/* D8A08 80142308 27C2FFFF */  addiu     $v0, $fp, -1
/* D8A0C 8014230C 18400024 */  blez      $v0, .L801423A0
/* D8A10 80142310 0000B82D */   daddu    $s7, $zero, $zero
/* D8A14 80142314 3C0D8015 */  lui       $t5, %hi(gHudElementList)
/* D8A18 80142318 25AD7960 */  addiu     $t5, $t5, %lo(gHudElementList)
/* D8A1C 8014231C 27AC0028 */  addiu     $t4, $sp, 0x28
/* D8A20 80142320 0180582D */  daddu     $t3, $t4, $zero
.L80142324:
/* D8A24 80142324 26E80001 */  addiu     $t0, $s7, 1
/* D8A28 80142328 011E102A */  slt       $v0, $t0, $fp
/* D8A2C 8014232C 50400018 */  beql      $v0, $zero, .L80142390
/* D8A30 80142330 26F70001 */   addiu    $s7, $s7, 1
/* D8A34 80142334 0160502D */  daddu     $t2, $t3, $zero
/* D8A38 80142338 8DA90000 */  lw        $t1, ($t5)
/* D8A3C 8014233C 00081080 */  sll       $v0, $t0, 2
/* D8A40 80142340 004C3021 */  addu      $a2, $v0, $t4
.L80142344:
/* D8A44 80142344 8D470000 */  lw        $a3, ($t2)
/* D8A48 80142348 8CC50000 */  lw        $a1, ($a2)
/* D8A4C 8014234C 00071880 */  sll       $v1, $a3, 2
/* D8A50 80142350 00691821 */  addu      $v1, $v1, $t1
/* D8A54 80142354 00051080 */  sll       $v0, $a1, 2
/* D8A58 80142358 00491021 */  addu      $v0, $v0, $t1
/* D8A5C 8014235C 8C630000 */  lw        $v1, ($v1)
/* D8A60 80142360 8C440000 */  lw        $a0, ($v0)
/* D8A64 80142364 80620044 */  lb        $v0, 0x44($v1)
/* D8A68 80142368 80830044 */  lb        $v1, 0x44($a0)
/* D8A6C 8014236C 0043102A */  slt       $v0, $v0, $v1
/* D8A70 80142370 10400003 */  beqz      $v0, .L80142380
/* D8A74 80142374 25080001 */   addiu    $t0, $t0, 1
/* D8A78 80142378 AD450000 */  sw        $a1, ($t2)
/* D8A7C 8014237C ACC70000 */  sw        $a3, ($a2)
.L80142380:
/* D8A80 80142380 011E102A */  slt       $v0, $t0, $fp
/* D8A84 80142384 1440FFEF */  bnez      $v0, .L80142344
/* D8A88 80142388 24C60004 */   addiu    $a2, $a2, 4
/* D8A8C 8014238C 26F70001 */  addiu     $s7, $s7, 1
.L80142390:
/* D8A90 80142390 27C2FFFF */  addiu     $v0, $fp, -1
/* D8A94 80142394 02E2102A */  slt       $v0, $s7, $v0
/* D8A98 80142398 1440FFE2 */  bnez      $v0, .L80142324
/* D8A9C 8014239C 256B0004 */   addiu    $t3, $t3, 4
.L801423A0:
/* D8AA0 801423A0 1BC000D2 */  blez      $fp, .L801426EC
/* D8AA4 801423A4 0000B82D */   daddu    $s7, $zero, $zero
/* D8AA8 801423A8 00171080 */  sll       $v0, $s7, 2
.L801423AC:
/* D8AAC 801423AC 03A21021 */  addu      $v0, $sp, $v0
/* D8AB0 801423B0 8C420028 */  lw        $v0, 0x28($v0)
/* D8AB4 801423B4 3C038015 */  lui       $v1, %hi(gHudElementList)
/* D8AB8 801423B8 8C637960 */  lw        $v1, %lo(gHudElementList)($v1)
/* D8ABC 801423BC 00021080 */  sll       $v0, $v0, 2
/* D8AC0 801423C0 00431021 */  addu      $v0, $v0, $v1
/* D8AC4 801423C4 8C500000 */  lw        $s0, ($v0)
/* D8AC8 801423C8 8E020004 */  lw        $v0, 4($s0)
/* D8ACC 801423CC 104000C7 */  beqz      $v0, .L801426EC
/* D8AD0 801423D0 00000000 */   nop
/* D8AD4 801423D4 8E030000 */  lw        $v1, ($s0)
/* D8AD8 801423D8 30620100 */  andi      $v0, $v1, 0x100
/* D8ADC 801423DC 1440005B */  bnez      $v0, .L8014254C
/* D8AE0 801423E0 3C0E0010 */   lui      $t6, 0x10
/* D8AE4 801423E4 006E1024 */  and       $v0, $v1, $t6
/* D8AE8 801423E8 1440000B */  bnez      $v0, .L80142418
/* D8AEC 801423EC 00000000 */   nop
/* D8AF0 801423F0 82030046 */  lb        $v1, 0x46($s0)
/* D8AF4 801423F4 3C0E8015 */  lui       $t6, %hi(D_8014EFCC)
/* D8AF8 801423F8 25CEEFCC */  addiu     $t6, $t6, %lo(D_8014EFCC)
/* D8AFC 801423FC 00031040 */  sll       $v0, $v1, 1
/* D8B00 80142400 00431021 */  addu      $v0, $v0, $v1
/* D8B04 80142404 00021040 */  sll       $v0, $v0, 1
/* D8B08 80142408 004E1021 */  addu      $v0, $v0, $t6
/* D8B0C 8014240C 84560000 */  lh        $s6, ($v0)
/* D8B10 80142410 08050908 */  j         .L80142420
/* D8B14 80142414 84550002 */   lh       $s5, 2($v0)
.L80142418:
/* D8B18 80142418 9216004E */  lbu       $s6, 0x4e($s0)
/* D8B1C 8014241C 9215004F */  lbu       $s5, 0x4f($s0)
.L80142420:
/* D8B20 80142420 8E030000 */  lw        $v1, ($s0)
/* D8B24 80142424 30620010 */  andi      $v0, $v1, 0x10
/* D8B28 80142428 14400013 */  bnez      $v0, .L80142478
/* D8B2C 8014242C 3C0E0010 */   lui      $t6, 0x10
/* D8B30 80142430 006E1024 */  and       $v0, $v1, $t6
/* D8B34 80142434 1440000C */  bnez      $v0, .L80142468
/* D8B38 80142438 00000000 */   nop
/* D8B3C 8014243C 82030045 */  lb        $v1, 0x45($s0)
/* D8B40 80142440 3C0E8015 */  lui       $t6, %hi(D_8014EFCC)
/* D8B44 80142444 25CEEFCC */  addiu     $t6, $t6, %lo(D_8014EFCC)
/* D8B48 80142448 00031040 */  sll       $v0, $v1, 1
/* D8B4C 8014244C 00431021 */  addu      $v0, $v0, $v1
/* D8B50 80142450 00021040 */  sll       $v0, $v0, 1
/* D8B54 80142454 004E1021 */  addu      $v0, $v0, $t6
/* D8B58 80142458 84510000 */  lh        $s1, ($v0)
/* D8B5C 8014245C 84520002 */  lh        $s2, 2($v0)
/* D8B60 80142460 08050921 */  j         .L80142484
/* D8B64 80142464 00111023 */   negu     $v0, $s1
.L80142468:
/* D8B68 80142468 92110050 */  lbu       $s1, 0x50($s0)
/* D8B6C 8014246C 92120051 */  lbu       $s2, 0x51($s0)
/* D8B70 80142470 08050921 */  j         .L80142484
/* D8B74 80142474 00111023 */   negu     $v0, $s1
.L80142478:
/* D8B78 80142478 92110048 */  lbu       $s1, 0x48($s0)
/* D8B7C 8014247C 92120049 */  lbu       $s2, 0x49($s0)
/* D8B80 80142480 00111023 */  negu      $v0, $s1
.L80142484:
/* D8B84 80142484 00021FC2 */  srl       $v1, $v0, 0x1f
/* D8B88 80142488 00431021 */  addu      $v0, $v0, $v1
/* D8B8C 8014248C 00029843 */  sra       $s3, $v0, 1
/* D8B90 80142490 00121023 */  negu      $v0, $s2
/* D8B94 80142494 00021FC2 */  srl       $v1, $v0, 0x1f
/* D8B98 80142498 00431021 */  addu      $v0, $v0, $v1
/* D8B9C 8014249C 0002A043 */  sra       $s4, $v0, 1
/* D8BA0 801424A0 8E030000 */  lw        $v1, ($s0)
/* D8BA4 801424A4 30620800 */  andi      $v0, $v1, 0x800
/* D8BA8 801424A8 14400026 */  bnez      $v0, .L80142544
/* D8BAC 801424AC 3C0E2000 */   lui      $t6, 0x2000
/* D8BB0 801424B0 006E1024 */  and       $v0, $v1, $t6
/* D8BB4 801424B4 10400012 */  beqz      $v0, .L80142500
/* D8BB8 801424B8 0200202D */   daddu    $a0, $s0, $zero
/* D8BBC 801424BC 02C0282D */  daddu     $a1, $s6, $zero
/* D8BC0 801424C0 02A0302D */  daddu     $a2, $s5, $zero
/* D8BC4 801424C4 00113C00 */  sll       $a3, $s1, 0x10
/* D8BC8 801424C8 00073C03 */  sra       $a3, $a3, 0x10
/* D8BCC 801424CC 00121400 */  sll       $v0, $s2, 0x10
/* D8BD0 801424D0 00021403 */  sra       $v0, $v0, 0x10
/* D8BD4 801424D4 AFA20010 */  sw        $v0, 0x10($sp)
/* D8BD8 801424D8 00131400 */  sll       $v0, $s3, 0x10
/* D8BDC 801424DC 00021403 */  sra       $v0, $v0, 0x10
/* D8BE0 801424E0 AFA20014 */  sw        $v0, 0x14($sp)
/* D8BE4 801424E4 00141400 */  sll       $v0, $s4, 0x10
/* D8BE8 801424E8 00021403 */  sra       $v0, $v0, 0x10
/* D8BEC 801424EC 240E0001 */  addiu     $t6, $zero, 1
/* D8BF0 801424F0 AFA20018 */  sw        $v0, 0x18($sp)
/* D8BF4 801424F4 AFAE001C */  sw        $t6, 0x1c($sp)
/* D8BF8 801424F8 0C04FDC1 */  jal       draw_rect_hud_element
/* D8BFC 801424FC AFAE0020 */   sw       $t6, 0x20($sp)
.L80142500:
/* D8C00 80142500 0200202D */  daddu     $a0, $s0, $zero
/* D8C04 80142504 02C0282D */  daddu     $a1, $s6, $zero
/* D8C08 80142508 02A0302D */  daddu     $a2, $s5, $zero
/* D8C0C 8014250C 00113C00 */  sll       $a3, $s1, 0x10
/* D8C10 80142510 00073C03 */  sra       $a3, $a3, 0x10
/* D8C14 80142514 00121400 */  sll       $v0, $s2, 0x10
/* D8C18 80142518 00021403 */  sra       $v0, $v0, 0x10
/* D8C1C 8014251C AFA20010 */  sw        $v0, 0x10($sp)
/* D8C20 80142520 00131400 */  sll       $v0, $s3, 0x10
/* D8C24 80142524 00021403 */  sra       $v0, $v0, 0x10
/* D8C28 80142528 AFA20014 */  sw        $v0, 0x14($sp)
/* D8C2C 8014252C 00141400 */  sll       $v0, $s4, 0x10
/* D8C30 80142530 00021403 */  sra       $v0, $v0, 0x10
/* D8C34 80142534 240E0001 */  addiu     $t6, $zero, 1
/* D8C38 80142538 AFA20018 */  sw        $v0, 0x18($sp)
/* D8C3C 8014253C 080509B5 */  j         .L801426D4
/* D8C40 80142540 AFAE001C */   sw       $t6, 0x1c($sp)
.L80142544:
/* D8C44 80142544 08050993 */  j         .L8014264C
/* D8C48 80142548 006E1024 */   and      $v0, $v1, $t6
.L8014254C:
/* D8C4C 8014254C 006E1024 */  and       $v0, $v1, $t6
/* D8C50 80142550 1440000B */  bnez      $v0, .L80142580
/* D8C54 80142554 00000000 */   nop
/* D8C58 80142558 82030046 */  lb        $v1, 0x46($s0)
/* D8C5C 8014255C 3C0E8015 */  lui       $t6, %hi(D_8014EFCC)
/* D8C60 80142560 25CEEFCC */  addiu     $t6, $t6, %lo(D_8014EFCC)
/* D8C64 80142564 00031040 */  sll       $v0, $v1, 1
/* D8C68 80142568 00431021 */  addu      $v0, $v0, $v1
/* D8C6C 8014256C 00021040 */  sll       $v0, $v0, 1
/* D8C70 80142570 004E1021 */  addu      $v0, $v0, $t6
/* D8C74 80142574 84560000 */  lh        $s6, ($v0)
/* D8C78 80142578 08050962 */  j         .L80142588
/* D8C7C 8014257C 84550002 */   lh       $s5, 2($v0)
.L80142580:
/* D8C80 80142580 9216004E */  lbu       $s6, 0x4e($s0)
/* D8C84 80142584 9215004F */  lbu       $s5, 0x4f($s0)
.L80142588:
/* D8C88 80142588 C6000028 */  lwc1      $f0, 0x28($s0)
/* D8C8C 8014258C C606002C */  lwc1      $f6, 0x2c($s0)
/* D8C90 80142590 3C013F00 */  lui       $at, 0x3f00
/* D8C94 80142594 44811000 */  mtc1      $at, $f2
/* D8C98 80142598 46000307 */  neg.s     $f12, $f0
/* D8C9C 8014259C 46026302 */  mul.s     $f12, $f12, $f2
/* D8CA0 801425A0 00000000 */  nop
/* D8CA4 801425A4 3C013F80 */  lui       $at, 0x3f80
/* D8CA8 801425A8 44814000 */  mtc1      $at, $f8
/* D8CAC 801425AC 3C014480 */  lui       $at, 0x4480
/* D8CB0 801425B0 44815000 */  mtc1      $at, $f10
/* D8CB4 801425B4 4600038D */  trunc.w.s $f14, $f0
/* D8CB8 801425B8 44117000 */  mfc1      $s1, $f14
/* D8CBC 801425BC 4600338D */  trunc.w.s $f14, $f6
/* D8CC0 801425C0 44127000 */  mfc1      $s2, $f14
/* D8CC4 801425C4 46003187 */  neg.s     $f6, $f6
/* D8CC8 801425C8 46023182 */  mul.s     $f6, $f6, $f2
/* D8CCC 801425CC 00000000 */  nop
/* D8CD0 801425D0 44912000 */  mtc1      $s1, $f4
/* D8CD4 801425D4 00000000 */  nop
/* D8CD8 801425D8 46802120 */  cvt.s.w   $f4, $f4
/* D8CDC 801425DC 44960000 */  mtc1      $s6, $f0
/* D8CE0 801425E0 00000000 */  nop
/* D8CE4 801425E4 46800020 */  cvt.s.w   $f0, $f0
/* D8CE8 801425E8 46002103 */  div.s     $f4, $f4, $f0
/* D8CEC 801425EC 46044103 */  div.s     $f4, $f8, $f4
/* D8CF0 801425F0 460A2102 */  mul.s     $f4, $f4, $f10
/* D8CF4 801425F4 00000000 */  nop
/* D8CF8 801425F8 44921000 */  mtc1      $s2, $f2
/* D8CFC 801425FC 00000000 */  nop
/* D8D00 80142600 468010A0 */  cvt.s.w   $f2, $f2
/* D8D04 80142604 44950000 */  mtc1      $s5, $f0
/* D8D08 80142608 00000000 */  nop
/* D8D0C 8014260C 46800020 */  cvt.s.w   $f0, $f0
/* D8D10 80142610 46001083 */  div.s     $f2, $f2, $f0
/* D8D14 80142614 46024083 */  div.s     $f2, $f8, $f2
/* D8D18 80142618 460A1082 */  mul.s     $f2, $f2, $f10
/* D8D1C 8014261C 00000000 */  nop
/* D8D20 80142620 8E020000 */  lw        $v0, ($s0)
/* D8D24 80142624 4600638D */  trunc.w.s $f14, $f12
/* D8D28 80142628 44137000 */  mfc1      $s3, $f14
/* D8D2C 8014262C 4600338D */  trunc.w.s $f14, $f6
/* D8D30 80142630 44147000 */  mfc1      $s4, $f14
/* D8D34 80142634 4600238D */  trunc.w.s $f14, $f4
/* D8D38 80142638 E60E0034 */  swc1      $f14, 0x34($s0)
/* D8D3C 8014263C 4600138D */  trunc.w.s $f14, $f2
/* D8D40 80142640 E60E0038 */  swc1      $f14, 0x38($s0)
/* D8D44 80142644 3C0E2000 */  lui       $t6, 0x2000
/* D8D48 80142648 004E1024 */  and       $v0, $v0, $t6
.L8014264C:
/* D8D4C 8014264C 10400012 */  beqz      $v0, .L80142698
/* D8D50 80142650 0200202D */   daddu    $a0, $s0, $zero
/* D8D54 80142654 02C0282D */  daddu     $a1, $s6, $zero
/* D8D58 80142658 02A0302D */  daddu     $a2, $s5, $zero
/* D8D5C 8014265C 00113C00 */  sll       $a3, $s1, 0x10
/* D8D60 80142660 00073C03 */  sra       $a3, $a3, 0x10
/* D8D64 80142664 00121400 */  sll       $v0, $s2, 0x10
/* D8D68 80142668 00021403 */  sra       $v0, $v0, 0x10
/* D8D6C 8014266C AFA20010 */  sw        $v0, 0x10($sp)
/* D8D70 80142670 00131400 */  sll       $v0, $s3, 0x10
/* D8D74 80142674 00021403 */  sra       $v0, $v0, 0x10
/* D8D78 80142678 AFA20014 */  sw        $v0, 0x14($sp)
/* D8D7C 8014267C 00141400 */  sll       $v0, $s4, 0x10
/* D8D80 80142680 00021403 */  sra       $v0, $v0, 0x10
/* D8D84 80142684 240E0001 */  addiu     $t6, $zero, 1
/* D8D88 80142688 AFA20018 */  sw        $v0, 0x18($sp)
/* D8D8C 8014268C AFA0001C */  sw        $zero, 0x1c($sp)
/* D8D90 80142690 0C04FDC1 */  jal       draw_rect_hud_element
/* D8D94 80142694 AFAE0020 */   sw       $t6, 0x20($sp)
.L80142698:
/* D8D98 80142698 0200202D */  daddu     $a0, $s0, $zero
/* D8D9C 8014269C 02C0282D */  daddu     $a1, $s6, $zero
/* D8DA0 801426A0 02A0302D */  daddu     $a2, $s5, $zero
/* D8DA4 801426A4 00113C00 */  sll       $a3, $s1, 0x10
/* D8DA8 801426A8 00073C03 */  sra       $a3, $a3, 0x10
/* D8DAC 801426AC 00121400 */  sll       $v0, $s2, 0x10
/* D8DB0 801426B0 00021403 */  sra       $v0, $v0, 0x10
/* D8DB4 801426B4 AFA20010 */  sw        $v0, 0x10($sp)
/* D8DB8 801426B8 00131400 */  sll       $v0, $s3, 0x10
/* D8DBC 801426BC 00021403 */  sra       $v0, $v0, 0x10
/* D8DC0 801426C0 AFA20014 */  sw        $v0, 0x14($sp)
/* D8DC4 801426C4 00141400 */  sll       $v0, $s4, 0x10
/* D8DC8 801426C8 00021403 */  sra       $v0, $v0, 0x10
/* D8DCC 801426CC AFA20018 */  sw        $v0, 0x18($sp)
/* D8DD0 801426D0 AFA0001C */  sw        $zero, 0x1c($sp)
.L801426D4:
/* D8DD4 801426D4 0C04FDC1 */  jal       draw_rect_hud_element
/* D8DD8 801426D8 AFA00020 */   sw       $zero, 0x20($sp)
/* D8DDC 801426DC 26F70001 */  addiu     $s7, $s7, 1
/* D8DE0 801426E0 02FE102A */  slt       $v0, $s7, $fp
/* D8DE4 801426E4 1440FF31 */  bnez      $v0, .L801423AC
/* D8DE8 801426E8 00171080 */   sll      $v0, $s7, 2
.L801426EC:
/* D8DEC 801426EC 8FBF054C */  lw        $ra, 0x54c($sp)
/* D8DF0 801426F0 8FBE0548 */  lw        $fp, 0x548($sp)
/* D8DF4 801426F4 8FB70544 */  lw        $s7, 0x544($sp)
/* D8DF8 801426F8 8FB60540 */  lw        $s6, 0x540($sp)
/* D8DFC 801426FC 8FB5053C */  lw        $s5, 0x53c($sp)
/* D8E00 80142700 8FB40538 */  lw        $s4, 0x538($sp)
/* D8E04 80142704 8FB30534 */  lw        $s3, 0x534($sp)
/* D8E08 80142708 8FB20530 */  lw        $s2, 0x530($sp)
/* D8E0C 8014270C 8FB1052C */  lw        $s1, 0x52c($sp)
/* D8E10 80142710 8FB00528 */  lw        $s0, 0x528($sp)
/* D8E14 80142714 03E00008 */  jr        $ra
/* D8E18 80142718 27BD0550 */   addiu    $sp, $sp, 0x550