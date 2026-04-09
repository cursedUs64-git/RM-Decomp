; Function: render_dialog_entries
; RAM: 0x802DA1AC  Size: 0x664

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x802DA1AC */  addiu $sp, $sp, -56
  /* 0x802DA1B0 */  sw $ra, 28($sp)
  /* 0x802DA1B4 */  sw $s0, 24($sp)
  /* 0x802DA1B8 */  lui $a0, 0x201
  /* 0x802DA1BC */  jal 0x80277F50
  /* 0x802DA1C0 */  addiu $a0, $a0, 2664
  /* 0x802DA1C4 */  sw $v0, 52($sp)
  /* 0x802DA1C8 */  lui $t7, 0x8033
  /* 0x802DA1CC */  lh $t7, 5252($t7)
  /* 0x802DA1D0 */  lw $t6, 52($sp)
  /* 0x802DA1D4 */  sll $t8, $t7, 2
  /* 0x802DA1D8 */  addu $t9, $t6, $t8
  /* 0x802DA1DC */  jal 0x80277F50
  /* 0x802DA1E0 */  lw $a0, 0($t9)
  /* 0x802DA1E4 */  sw $v0, 48($sp)
  /* 0x802DA1E8 */  jal 0x80277F50
  /* 0x802DA1EC */  move $a0, $zero
  /* 0x802DA1F0 */  lw $t0, 48($sp)
  /* 0x802DA1F4 */  bne $v0, $t0, .render_dialog_entries_L802DA210
  /* 0x802DA1F8 */  nop
  /* 0x802DA1FC */  li $t1, -1
  /* 0x802DA200 */  lui $at, 0x8033
  /* 0x802DA204 */  sh $t1, 5252($at)
  /* 0x802DA208 */  b .render_dialog_entries_L802DA7FC
  /* 0x802DA20C */  nop
.render_dialog_entries_L802DA210:
  /* 0x802DA210 */  lui $s0, 0x8033
  /* 0x802DA214 */  lb $s0, 5232($s0)
  /* 0x802DA218 */  beq $s0, $zero, .render_dialog_entries_L802DA24C
  /* 0x802DA21C */  nop
  /* 0x802DA220 */  li $at, 1
  /* 0x802DA224 */  beq $s0, $at, .render_dialog_entries_L802DA38C
  /* 0x802DA228 */  nop
  /* 0x802DA22C */  li $at, 2
  /* 0x802DA230 */  beq $s0, $at, .render_dialog_entries_L802DA41C
  /* 0x802DA234 */  nop
  /* 0x802DA238 */  li $at, 3
  /* 0x802DA23C */  beq $s0, $at, .render_dialog_entries_L802DA4A8
  /* 0x802DA240 */  nop
  /* 0x802DA244 */  b .render_dialog_entries_L802DA5B8
  /* 0x802DA248 */  nop
.render_dialog_entries_L802DA24C:
  /* 0x802DA24C */  lui $at, 0x8033
  /* 0x802DA250 */  lwc1 $f4, 5236($at)
  /* 0x802DA254 */  lui $at, 0x42B4
  /* 0x802DA258 */  mtc1 $at, $f6
  /* 0x802DA25C */  nop
  /* 0x802DA260 */  c.eq.s $f4, $f6
  /* 0x802DA264 */  nop
  /* 0x802DA268 */  bc1f .render_dialog_entries_L802DA290
  /* 0x802DA26C */  nop
  /* 0x802DA270 */  lui $a0, 0x8033
  /* 0x802DA274 */  jal 0x803218F4
  /* 0x802DA278 */  lh $a0, 5252($a0)
  /* 0x802DA27C */  lui $a0, 0x7004
  /* 0x802DA280 */  lui $a1, 0x8033
  /* 0x802DA284 */  addiu $a1, $a1, 12784
  /* 0x802DA288 */  jal 0x8031EB00
  /* 0x802DA28C */  ori $a0, $a0, 0x81
.render_dialog_entries_L802DA290:
  /* 0x802DA290 */  lui $t2, 0x8033
  /* 0x802DA294 */  lb $t2, 5248($t2)
  /* 0x802DA298 */  bne $t2, $zero, .render_dialog_entries_L802DA2F4
  /* 0x802DA29C */  nop
  /* 0x802DA2A0 */  lui $at, 0x8033
  /* 0x802DA2A4 */  lwc1 $f8, 5236($at)
  /* 0x802DA2A8 */  lui $at, 0x401E
  /* 0x802DA2AC */  mtc1 $at, $f17
  /* 0x802DA2B0 */  mtc1 $zero, $f16
  /* 0x802DA2B4 */  cvt.d.s $f10, $f8
  /* 0x802DA2B8 */  lui $at, 0x8033
  /* 0x802DA2BC */  sub.d $f18, $f10, $f16
  /* 0x802DA2C0 */  cvt.s.d $f4, $f18
  /* 0x802DA2C4 */  swc1 $f4, 5236($at)
  /* 0x802DA2C8 */  lui $at, 0x8033
  /* 0x802DA2CC */  lwc1 $f6, 5240($at)
  /* 0x802DA2D0 */  lui $at, 0x3FF8
  /* 0x802DA2D4 */  mtc1 $at, $f11
  /* 0x802DA2D8 */  mtc1 $zero, $f10
  /* 0x802DA2DC */  cvt.d.s $f8, $f6
  /* 0x802DA2E0 */  lui $at, 0x8033
  /* 0x802DA2E4 */  sub.d $f16, $f8, $f10
  /* 0x802DA2E8 */  cvt.s.d $f18, $f16
  /* 0x802DA2EC */  b .render_dialog_entries_L802DA344
  /* 0x802DA2F0 */  swc1 $f18, 5240($at)
.render_dialog_entries_L802DA2F4:
  /* 0x802DA2F4 */  lui $at, 0x8033
  /* 0x802DA2F8 */  lwc1 $f4, 5236($at)
  /* 0x802DA2FC */  lui $at, 0x4024
  /* 0x802DA300 */  mtc1 $at, $f9
  /* 0x802DA304 */  mtc1 $zero, $f8
  /* 0x802DA308 */  cvt.d.s $f6, $f4
  /* 0x802DA30C */  lui $at, 0x8033
  /* 0x802DA310 */  sub.d $f10, $f6, $f8
  /* 0x802DA314 */  cvt.s.d $f16, $f10
  /* 0x802DA318 */  swc1 $f16, 5236($at)
  /* 0x802DA31C */  lui $at, 0x8033
  /* 0x802DA320 */  lwc1 $f18, 5240($at)
  /* 0x802DA324 */  lui $at, 0x4000
  /* 0x802DA328 */  mtc1 $at, $f7
  /* 0x802DA32C */  mtc1 $zero, $f6
  /* 0x802DA330 */  cvt.d.s $f4, $f18
  /* 0x802DA334 */  lui $at, 0x8033
  /* 0x802DA338 */  sub.d $f8, $f4, $f6
  /* 0x802DA33C */  cvt.s.d $f10, $f8
  /* 0x802DA340 */  swc1 $f10, 5240($at)
.render_dialog_entries_L802DA344:
  /* 0x802DA344 */  lui $at, 0x8033
  /* 0x802DA348 */  lwc1 $f16, 5236($at)
  /* 0x802DA34C */  mtc1 $zero, $f18
  /* 0x802DA350 */  nop
  /* 0x802DA354 */  c.eq.s $f16, $f18
  /* 0x802DA358 */  nop
  /* 0x802DA35C */  bc1f .render_dialog_entries_L802DA37C
  /* 0x802DA360 */  nop
  /* 0x802DA364 */  li $t3, 1
  /* 0x802DA368 */  lui $at, 0x8033
  /* 0x802DA36C */  sb $t3, 5232($at)
  /* 0x802DA370 */  li $t4, 1
  /* 0x802DA374 */  lui $at, 0x8033
  /* 0x802DA378 */  sb $t4, 5264($at)
.render_dialog_entries_L802DA37C:
  /* 0x802DA37C */  li $t5, 1
  /* 0x802DA380 */  sb $t5, 47($sp)
  /* 0x802DA384 */  b .render_dialog_entries_L802DA5B8
  /* 0x802DA388 */  nop
.render_dialog_entries_L802DA38C:
  /* 0x802DA38C */  mtc1 $zero, $f4
  /* 0x802DA390 */  lui $at, 0x8033
  /* 0x802DA394 */  swc1 $f4, 5236($at)
  /* 0x802DA398 */  lui $t7, 0x8033
  /* 0x802DA39C */  lw $t7, -10772($t7)
  /* 0x802DA3A0 */  lhu $t6, 18($t7)
  /* 0x802DA3A4 */  andi $t8, $t6, 0x8000
  /* 0x802DA3A8 */  bne $t8, $zero, .render_dialog_entries_L802DA3BC
  /* 0x802DA3AC */  nop
  /* 0x802DA3B0 */  andi $t9, $t6, 0x4000
  /* 0x802DA3B4 */  beq $t9, $zero, .render_dialog_entries_L802DA40C
  /* 0x802DA3B8 */  nop
.render_dialog_entries_L802DA3BC:
  /* 0x802DA3BC */  lui $t0, 0x8033
  /* 0x802DA3C0 */  lh $t0, 5256($t0)
  /* 0x802DA3C4 */  li $at, -1
  /* 0x802DA3C8 */  bne $t0, $at, .render_dialog_entries_L802DA3EC
  /* 0x802DA3CC */  nop
  /* 0x802DA3D0 */  lui $a0, 0x8033
  /* 0x802DA3D4 */  jal 0x802D9F84
  /* 0x802DA3D8 */  lh $a0, 5252($a0)
  /* 0x802DA3DC */  li $t1, 3
  /* 0x802DA3E0 */  lui $at, 0x8033
  /* 0x802DA3E4 */  b .render_dialog_entries_L802DA40C
  /* 0x802DA3E8 */  sb $t1, 5232($at)
.render_dialog_entries_L802DA3EC:
  /* 0x802DA3EC */  li $t2, 2
  /* 0x802DA3F0 */  lui $at, 0x8033
  /* 0x802DA3F4 */  sb $t2, 5232($at)
  /* 0x802DA3F8 */  lui $a0, 0x7013
  /* 0x802DA3FC */  lui $a1, 0x8033
  /* 0x802DA400 */  addiu $a1, $a1, 12784
  /* 0x802DA404 */  jal 0x8031EB00
  /* 0x802DA408 */  ori $a0, $a0, 0x81
.render_dialog_entries_L802DA40C:
  /* 0x802DA40C */  li $t3, 1
  /* 0x802DA410 */  sb $t3, 47($sp)
  /* 0x802DA414 */  b .render_dialog_entries_L802DA5B8
  /* 0x802DA418 */  nop
.render_dialog_entries_L802DA41C:
  /* 0x802DA41C */  lw $t5, 48($sp)
  /* 0x802DA420 */  lui $t4, 0x8033
  /* 0x802DA424 */  lh $t4, 5244($t4)
  /* 0x802DA428 */  lb $t7, 4($t5)
  /* 0x802DA42C */  lui $at, 0x8033
  /* 0x802DA430 */  sll $t8, $t7, 1
  /* 0x802DA434 */  addu $t6, $t4, $t8
  /* 0x802DA438 */  sh $t6, 5244($at)
  /* 0x802DA43C */  lw $t0, 48($sp)
  /* 0x802DA440 */  lui $t9, 0x8033
  /* 0x802DA444 */  lh $t9, 5244($t9)
  /* 0x802DA448 */  lb $t1, 4($t0)
  /* 0x802DA44C */  sll $t2, $t1, 4
  /* 0x802DA450 */  slt $at, $t9, $t2
  /* 0x802DA454 */  bne $at, $zero, .render_dialog_entries_L802DA480
  /* 0x802DA458 */  nop
  /* 0x802DA45C */  lui $t3, 0x8033
  /* 0x802DA460 */  lh $t3, 5256($t3)
  /* 0x802DA464 */  lui $at, 0x8033
  /* 0x802DA468 */  sh $t3, 5260($at)
  /* 0x802DA46C */  li $t5, 1
  /* 0x802DA470 */  lui $at, 0x8033
  /* 0x802DA474 */  sb $t5, 5232($at)
  /* 0x802DA478 */  lui $at, 0x8033
  /* 0x802DA47C */  sh $zero, 5244($at)
.render_dialog_entries_L802DA480:
  /* 0x802DA480 */  lui $t7, 0x8033
  /* 0x802DA484 */  lh $t7, 5244($t7)
  /* 0x802DA488 */  bgez $t7, .render_dialog_entries_L802DA498
  /* 0x802DA48C */  sra $t4, $t7, 4
  /* 0x802DA490 */  addiu $at, $t7, 15
  /* 0x802DA494 */  sra $t4, $at, 4
.render_dialog_entries_L802DA498:
  /* 0x802DA498 */  addiu $t8, $t4, 1
  /* 0x802DA49C */  sb $t8, 47($sp)
  /* 0x802DA4A0 */  b .render_dialog_entries_L802DA5B8
  /* 0x802DA4A4 */  nop
.render_dialog_entries_L802DA4A8:
  /* 0x802DA4A8 */  lui $at, 0x8033
  /* 0x802DA4AC */  lwc1 $f6, 5236($at)
  /* 0x802DA4B0 */  lui $at, 0x41A0
  /* 0x802DA4B4 */  mtc1 $at, $f8
  /* 0x802DA4B8 */  nop
  /* 0x802DA4BC */  c.eq.s $f6, $f8
  /* 0x802DA4C0 */  nop
  /* 0x802DA4C4 */  bc1f .render_dialog_entries_L802DA518
  /* 0x802DA4C8 */  nop
  /* 0x802DA4CC */  move $a0, $zero
  /* 0x802DA4D0 */  jal 0x8024B798
  /* 0x802DA4D4 */  move $a1, $zero
  /* 0x802DA4D8 */  lui $a0, 0x7005
  /* 0x802DA4DC */  lui $a1, 0x8033
  /* 0x802DA4E0 */  addiu $a1, $a1, 12784
  /* 0x802DA4E4 */  jal 0x8031EB00
  /* 0x802DA4E8 */  ori $a0, $a0, 0x81
  /* 0x802DA4EC */  lui $t6, 0x8033
  /* 0x802DA4F0 */  lb $t6, 5248($t6)
  /* 0x802DA4F4 */  li $at, 1
  /* 0x802DA4F8 */  bne $t6, $at, .render_dialog_entries_L802DA508
  /* 0x802DA4FC */  nop
  /* 0x802DA500 */  jal 0x8028BD34
  /* 0x802DA504 */  li $a0, 2
.render_dialog_entries_L802DA508:
  /* 0x802DA508 */  lui $t0, 0x8033
  /* 0x802DA50C */  lb $t0, 5264($t0)
  /* 0x802DA510 */  lui $at, 0x8033
  /* 0x802DA514 */  sw $t0, 5280($at)
.render_dialog_entries_L802DA518:
  /* 0x802DA518 */  lui $at, 0x8033
  /* 0x802DA51C */  lwc1 $f10, 5236($at)
  /* 0x802DA520 */  lui $at, 0x4120
  /* 0x802DA524 */  mtc1 $at, $f16
  /* 0x802DA528 */  lui $at, 0x8033
  /* 0x802DA52C */  add.s $f18, $f10, $f16
  /* 0x802DA530 */  swc1 $f18, 5236($at)
  /* 0x802DA534 */  lui $at, 0x8033
  /* 0x802DA538 */  lwc1 $f4, 5240($at)
  /* 0x802DA53C */  lui $at, 0x4000
  /* 0x802DA540 */  mtc1 $at, $f6
  /* 0x802DA544 */  lui $at, 0x8033
  /* 0x802DA548 */  add.s $f8, $f4, $f6
  /* 0x802DA54C */  swc1 $f8, 5240($at)
  /* 0x802DA550 */  lui $at, 0x8033
  /* 0x802DA554 */  lwc1 $f10, 5236($at)
  /* 0x802DA558 */  lui $at, 0x42B4
  /* 0x802DA55C */  mtc1 $at, $f16
  /* 0x802DA560 */  nop
  /* 0x802DA564 */  c.eq.s $f10, $f16
  /* 0x802DA568 */  nop
  /* 0x802DA56C */  bc1f .render_dialog_entries_L802DA5A8
  /* 0x802DA570 */  nop
  /* 0x802DA574 */  lui $at, 0x8033
  /* 0x802DA578 */  sb $zero, 5232($at)
  /* 0x802DA57C */  li $t1, -1
  /* 0x802DA580 */  lui $at, 0x8033
  /* 0x802DA584 */  sh $t1, 5252($at)
  /* 0x802DA588 */  lui $at, 0x8033
  /* 0x802DA58C */  sh $zero, 5260($at)
  /* 0x802DA590 */  lui $at, 0x8033
  /* 0x802DA594 */  sb $zero, 5268($at)
  /* 0x802DA598 */  lui $at, 0x8033
  /* 0x802DA59C */  sh $zero, 5256($at)
  /* 0x802DA5A0 */  lui $at, 0x8033
  /* 0x802DA5A4 */  sw $zero, 5280($at)
.render_dialog_entries_L802DA5A8:
  /* 0x802DA5A8 */  li $t9, 1
  /* 0x802DA5AC */  sb $t9, 47($sp)
  /* 0x802DA5B0 */  b .render_dialog_entries_L802DA5B8
  /* 0x802DA5B4 */  nop
.render_dialog_entries_L802DA5B8:
  /* 0x802DA5B8 */  lw $t2, 48($sp)
  /* 0x802DA5BC */  move $a0, $t2
  /* 0x802DA5C0 */  jal 0x802D8E2C
  /* 0x802DA5C4 */  lb $a1, 4($t2)
  /* 0x802DA5C8 */  lui $t3, 0x8034
  /* 0x802DA5CC */  lw $t3, -20372($t3)
  /* 0x802DA5D0 */  lui $at, 0x8034
  /* 0x802DA5D4 */  addiu $t5, $t3, 8
  /* 0x802DA5D8 */  sw $t5, -20372($at)
  /* 0x802DA5DC */  sw $t3, 40($sp)
  /* 0x802DA5E0 */  lw $t7, 48($sp)
  /* 0x802DA5E4 */  jal 0x802D9800
  /* 0x802DA5E8 */  lh $a0, 6($t7)
  /* 0x802DA5EC */  lw $t4, 48($sp)
  /* 0x802DA5F0 */  li $t6, 240
  /* 0x802DA5F4 */  move $s0, $v0
  /* 0x802DA5F8 */  lh $t8, 8($t4)
  /* 0x802DA5FC */  jal 0x802D9800
  /* 0x802DA600 */  subu $a0, $t6, $t8
  /* 0x802DA604 */  mtc1 $v0, $f18
  /* 0x802DA608 */  bgez $v0, .render_dialog_entries_L802DA620
  /* 0x802DA60C */  cvt.s.w $f4, $f18
  /* 0x802DA610 */  lui $at, 0x4F80
  /* 0x802DA614 */  mtc1 $at, $f6
  /* 0x802DA618 */  nop
  /* 0x802DA61C */  add.s $f4, $f4, $f6
.render_dialog_entries_L802DA620:
  /* 0x802DA620 */  lui $at, 0x4080
  /* 0x802DA624 */  mtc1 $at, $f8
  /* 0x802DA628 */  mtc1 $s0, $f18
  /* 0x802DA62C */  mul.s $f10, $f4, $f8
  /* 0x802DA630 */  cvt.s.w $f6, $f18
  /* 0x802DA634 */  trunc.w.s $f16, $f10
  /* 0x802DA638 */  mfc1 $t1, $f16
  /* 0x802DA63C */  bgez $s0, .render_dialog_entries_L802DA654
  /* 0x802DA640 */  andi $t9, $t1, 0xFFF
  /* 0x802DA644 */  lui $at, 0x4F80
  /* 0x802DA648 */  mtc1 $at, $f4
  /* 0x802DA64C */  nop
  /* 0x802DA650 */  add.s $f6, $f6, $f4
.render_dialog_entries_L802DA654:
  /* 0x802DA654 */  lui $at, 0x4080
  /* 0x802DA658 */  mtc1 $at, $f8
  /* 0x802DA65C */  lw $t8, 40($sp)
  /* 0x802DA660 */  lui $at, 0xED00
  /* 0x802DA664 */  mul.s $f10, $f6, $f8
  /* 0x802DA668 */  trunc.w.s $f16, $f10
  /* 0x802DA66C */  mfc1 $t3, $f16
  /* 0x802DA670 */  nop
  /* 0x802DA674 */  andi $t5, $t3, 0xFFF
  /* 0x802DA678 */  sll $t7, $t5, 12
  /* 0x802DA67C */  or $t4, $t7, $at
  /* 0x802DA680 */  or $t6, $t9, $t4
  /* 0x802DA684 */  sw $t6, 0($t8)
  /* 0x802DA688 */  lw $t0, 48($sp)
  /* 0x802DA68C */  lh $a0, 6($t0)
  /* 0x802DA690 */  jal 0x802D9800
  /* 0x802DA694 */  addiu $a0, $a0, 132
  /* 0x802DA698 */  lw $t1, 48($sp)
  /* 0x802DA69C */  li $at, 5
  /* 0x802DA6A0 */  move $s0, $v0
  /* 0x802DA6A4 */  lb $t2, 4($t1)
  /* 0x802DA6A8 */  lh $t7, 8($t1)
  /* 0x802DA6AC */  sll $t3, $t2, 2
  /* 0x802DA6B0 */  addu $t3, $t3, $t2
  /* 0x802DA6B4 */  sll $t3, $t3, 4
  /* 0x802DA6B8 */  div $t3, $at
  /* 0x802DA6BC */  mflo $t5
  /* 0x802DA6C0 */  subu $a0, $t5, $t7
  /* 0x802DA6C4 */  jal 0x802D9800
  /* 0x802DA6C8 */  addiu $a0, $a0, 240
  /* 0x802DA6CC */  mtc1 $v0, $f18
  /* 0x802DA6D0 */  bgez $v0, .render_dialog_entries_L802DA6E8
  /* 0x802DA6D4 */  cvt.s.w $f4, $f18
  /* 0x802DA6D8 */  lui $at, 0x4F80
  /* 0x802DA6DC */  mtc1 $at, $f6
  /* 0x802DA6E0 */  nop
  /* 0x802DA6E4 */  add.s $f4, $f4, $f6
.render_dialog_entries_L802DA6E8:
  /* 0x802DA6E8 */  lui $at, 0x4080
  /* 0x802DA6EC */  mtc1 $at, $f8
  /* 0x802DA6F0 */  mtc1 $s0, $f18
  /* 0x802DA6F4 */  mul.s $f10, $f4, $f8
  /* 0x802DA6F8 */  cvt.s.w $f6, $f18
  /* 0x802DA6FC */  trunc.w.s $f16, $f10
  /* 0x802DA700 */  mfc1 $t4, $f16
  /* 0x802DA704 */  bgez $s0, .render_dialog_entries_L802DA71C
  /* 0x802DA708 */  andi $t6, $t4, 0xFFF
  /* 0x802DA70C */  lui $at, 0x4F80
  /* 0x802DA710 */  mtc1 $at, $f4
  /* 0x802DA714 */  nop
  /* 0x802DA718 */  add.s $f6, $f6, $f4
.render_dialog_entries_L802DA71C:
  /* 0x802DA71C */  lui $at, 0x4080
  /* 0x802DA720 */  mtc1 $at, $f8
  /* 0x802DA724 */  lw $t5, 40($sp)
  /* 0x802DA728 */  mul.s $f10, $f6, $f8
  /* 0x802DA72C */  trunc.w.s $f16, $f10
  /* 0x802DA730 */  mfc1 $t0, $f16
  /* 0x802DA734 */  nop
  /* 0x802DA738 */  andi $t2, $t0, 0xFFF
  /* 0x802DA73C */  sll $t3, $t2, 12
  /* 0x802DA740 */  or $t1, $t6, $t3
  /* 0x802DA744 */  sw $t1, 4($t5)
  /* 0x802DA748 */  move $a0, $zero
  /* 0x802DA74C */  lw $a1, 48($sp)
  /* 0x802DA750 */  jal 0x802D982C
  /* 0x802DA754 */  lb $a2, 47($sp)
  /* 0x802DA758 */  lui $t7, 0x8033
  /* 0x802DA75C */  lh $t7, 5256($t7)
  /* 0x802DA760 */  li $at, -1
  /* 0x802DA764 */  bne $t7, $at, .render_dialog_entries_L802DA788
  /* 0x802DA768 */  nop
  /* 0x802DA76C */  lui $t9, 0x8033
  /* 0x802DA770 */  lb $t9, 5268($t9)
  /* 0x802DA774 */  li $at, 1
  /* 0x802DA778 */  bne $t9, $at, .render_dialog_entries_L802DA788
  /* 0x802DA77C */  nop
  /* 0x802DA780 */  jal 0x802D9CB0
  /* 0x802DA784 */  nop
.render_dialog_entries_L802DA788:
  /* 0x802DA788 */  lui $t4, 0x8034
  /* 0x802DA78C */  lw $t4, -20372($t4)
  /* 0x802DA790 */  lui $at, 0x8034
  /* 0x802DA794 */  addiu $t8, $t4, 8
  /* 0x802DA798 */  sw $t8, -20372($at)
  /* 0x802DA79C */  sw $t4, 36($sp)
  /* 0x802DA7A0 */  lw $t2, 36($sp)
  /* 0x802DA7A4 */  lui $t0, 0xED00
  /* 0x802DA7A8 */  ori $t0, $t0, 0x8008  ; <-- CHANGED
  /* 0x802DA7AC */  sw $t0, 0($t2)
  /* 0x802DA7B0 */  lw $t3, 36($sp)
  /* 0x802DA7B4 */  lui $t6, 0x4F  ; <-- CHANGED
  /* 0x802DA7B8 */  ori $t6, $t6, 0x3B0  ; <-- CHANGED
  /* 0x802DA7BC */  sw $t6, 4($t3)
  /* 0x802DA7C0 */  lui $t1, 0x8033
  /* 0x802DA7C4 */  lh $t1, 5256($t1)
  /* 0x802DA7C8 */  li $at, -1
  /* 0x802DA7CC */  beq $t1, $at, .render_dialog_entries_L802DA7F4
  /* 0x802DA7D0 */  nop
  /* 0x802DA7D4 */  lui $t5, 0x8033
  /* 0x802DA7D8 */  lb $t5, 5232($t5)
  /* 0x802DA7DC */  li $at, 1
  /* 0x802DA7E0 */  bne $t5, $at, .render_dialog_entries_L802DA7F4
  /* 0x802DA7E4 */  nop
  /* 0x802DA7E8 */  lw $t7, 48($sp)
  /* 0x802DA7EC */  jal 0x802D9DFC
  /* 0x802DA7F0 */  lb $a0, 4($t7)
.render_dialog_entries_L802DA7F4:
  /* 0x802DA7F4 */  b .render_dialog_entries_L802DA7FC
  /* 0x802DA7F8 */  nop
.render_dialog_entries_L802DA7FC:
  /* 0x802DA7FC */  lw $ra, 28($sp)
  /* 0x802DA800 */  lw $s0, 24($sp)
  /* 0x802DA804 */  addiu $sp, $sp, 56
  /* 0x802DA808 */  jr $ra
  /* 0x802DA80C */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x802DA1AC */  addiu $sp, $sp, -56
  /* 0x802DA1B0 */  sw $ra, 28($sp)
  /* 0x802DA1B4 */  sw $s0, 24($sp)
  /* 0x802DA1B8 */  lui $a0, 0x201
  /* 0x802DA1BC */  jal 0x80277F50
  /* 0x802DA1C0 */  addiu $a0, $a0, 2664
  /* 0x802DA1C4 */  sw $v0, 52($sp)
  /* 0x802DA1C8 */  lui $t7, 0x8033
  /* 0x802DA1CC */  lh $t7, 5252($t7)
  /* 0x802DA1D0 */  lw $t6, 52($sp)
  /* 0x802DA1D4 */  sll $t8, $t7, 2
  /* 0x802DA1D8 */  addu $t9, $t6, $t8
  /* 0x802DA1DC */  jal 0x80277F50
  /* 0x802DA1E0 */  lw $a0, 0($t9)
  /* 0x802DA1E4 */  sw $v0, 48($sp)
  /* 0x802DA1E8 */  jal 0x80277F50
  /* 0x802DA1EC */  move $a0, $zero
  /* 0x802DA1F0 */  lw $t0, 48($sp)
  /* 0x802DA1F4 */  bne $v0, $t0, .render_dialog_entries_L802DA210
  /* 0x802DA1F8 */  nop
  /* 0x802DA1FC */  li $t1, -1
  /* 0x802DA200 */  lui $at, 0x8033
  /* 0x802DA204 */  sh $t1, 5252($at)
  /* 0x802DA208 */  b .render_dialog_entries_L802DA7FC
  /* 0x802DA20C */  nop
.render_dialog_entries_L802DA210:
  /* 0x802DA210 */  lui $s0, 0x8033
  /* 0x802DA214 */  lb $s0, 5232($s0)
  /* 0x802DA218 */  beq $s0, $zero, .render_dialog_entries_L802DA24C
  /* 0x802DA21C */  nop
  /* 0x802DA220 */  li $at, 1
  /* 0x802DA224 */  beq $s0, $at, .render_dialog_entries_L802DA38C
  /* 0x802DA228 */  nop
  /* 0x802DA22C */  li $at, 2
  /* 0x802DA230 */  beq $s0, $at, .render_dialog_entries_L802DA41C
  /* 0x802DA234 */  nop
  /* 0x802DA238 */  li $at, 3
  /* 0x802DA23C */  beq $s0, $at, .render_dialog_entries_L802DA4A8
  /* 0x802DA240 */  nop
  /* 0x802DA244 */  b .render_dialog_entries_L802DA5B8
  /* 0x802DA248 */  nop
.render_dialog_entries_L802DA24C:
  /* 0x802DA24C */  lui $at, 0x8033
  /* 0x802DA250 */  lwc1 $f4, 5236($at)
  /* 0x802DA254 */  lui $at, 0x42B4
  /* 0x802DA258 */  mtc1 $at, $f6
  /* 0x802DA25C */  nop
  /* 0x802DA260 */  c.eq.s $f4, $f6
  /* 0x802DA264 */  nop
  /* 0x802DA268 */  bc1f .render_dialog_entries_L802DA290
  /* 0x802DA26C */  nop
  /* 0x802DA270 */  lui $a0, 0x8033
  /* 0x802DA274 */  jal 0x803218F4
  /* 0x802DA278 */  lh $a0, 5252($a0)
  /* 0x802DA27C */  lui $a0, 0x7004
  /* 0x802DA280 */  lui $a1, 0x8033
  /* 0x802DA284 */  addiu $a1, $a1, 12784
  /* 0x802DA288 */  jal 0x8031EB00
  /* 0x802DA28C */  ori $a0, $a0, 0x81
.render_dialog_entries_L802DA290:
  /* 0x802DA290 */  lui $t2, 0x8033
  /* 0x802DA294 */  lb $t2, 5248($t2)
  /* 0x802DA298 */  bne $t2, $zero, .render_dialog_entries_L802DA2F4
  /* 0x802DA29C */  nop
  /* 0x802DA2A0 */  lui $at, 0x8033
  /* 0x802DA2A4 */  lwc1 $f8, 5236($at)
  /* 0x802DA2A8 */  lui $at, 0x401E
  /* 0x802DA2AC */  mtc1 $at, $f17
  /* 0x802DA2B0 */  mtc1 $zero, $f16
  /* 0x802DA2B4 */  cvt.d.s $f10, $f8
  /* 0x802DA2B8 */  lui $at, 0x8033
  /* 0x802DA2BC */  sub.d $f18, $f10, $f16
  /* 0x802DA2C0 */  cvt.s.d $f4, $f18
  /* 0x802DA2C4 */  swc1 $f4, 5236($at)
  /* 0x802DA2C8 */  lui $at, 0x8033
  /* 0x802DA2CC */  lwc1 $f6, 5240($at)
  /* 0x802DA2D0 */  lui $at, 0x3FF8
  /* 0x802DA2D4 */  mtc1 $at, $f11
  /* 0x802DA2D8 */  mtc1 $zero, $f10
  /* 0x802DA2DC */  cvt.d.s $f8, $f6
  /* 0x802DA2E0 */  lui $at, 0x8033
  /* 0x802DA2E4 */  sub.d $f16, $f8, $f10
  /* 0x802DA2E8 */  cvt.s.d $f18, $f16
  /* 0x802DA2EC */  b .render_dialog_entries_L802DA344
  /* 0x802DA2F0 */  swc1 $f18, 5240($at)
.render_dialog_entries_L802DA2F4:
  /* 0x802DA2F4 */  lui $at, 0x8033
  /* 0x802DA2F8 */  lwc1 $f4, 5236($at)
  /* 0x802DA2FC */  lui $at, 0x4024
  /* 0x802DA300 */  mtc1 $at, $f9
  /* 0x802DA304 */  mtc1 $zero, $f8
  /* 0x802DA308 */  cvt.d.s $f6, $f4
  /* 0x802DA30C */  lui $at, 0x8033
  /* 0x802DA310 */  sub.d $f10, $f6, $f8
  /* 0x802DA314 */  cvt.s.d $f16, $f10
  /* 0x802DA318 */  swc1 $f16, 5236($at)
  /* 0x802DA31C */  lui $at, 0x8033
  /* 0x802DA320 */  lwc1 $f18, 5240($at)
  /* 0x802DA324 */  lui $at, 0x4000
  /* 0x802DA328 */  mtc1 $at, $f7
  /* 0x802DA32C */  mtc1 $zero, $f6
  /* 0x802DA330 */  cvt.d.s $f4, $f18
  /* 0x802DA334 */  lui $at, 0x8033
  /* 0x802DA338 */  sub.d $f8, $f4, $f6
  /* 0x802DA33C */  cvt.s.d $f10, $f8
  /* 0x802DA340 */  swc1 $f10, 5240($at)
.render_dialog_entries_L802DA344:
  /* 0x802DA344 */  lui $at, 0x8033
  /* 0x802DA348 */  lwc1 $f16, 5236($at)
  /* 0x802DA34C */  mtc1 $zero, $f18
  /* 0x802DA350 */  nop
  /* 0x802DA354 */  c.eq.s $f16, $f18
  /* 0x802DA358 */  nop
  /* 0x802DA35C */  bc1f .render_dialog_entries_L802DA37C
  /* 0x802DA360 */  nop
  /* 0x802DA364 */  li $t3, 1
  /* 0x802DA368 */  lui $at, 0x8033
  /* 0x802DA36C */  sb $t3, 5232($at)
  /* 0x802DA370 */  li $t4, 1
  /* 0x802DA374 */  lui $at, 0x8033
  /* 0x802DA378 */  sb $t4, 5264($at)
.render_dialog_entries_L802DA37C:
  /* 0x802DA37C */  li $t5, 1
  /* 0x802DA380 */  sb $t5, 47($sp)
  /* 0x802DA384 */  b .render_dialog_entries_L802DA5B8
  /* 0x802DA388 */  nop
.render_dialog_entries_L802DA38C:
  /* 0x802DA38C */  mtc1 $zero, $f4
  /* 0x802DA390 */  lui $at, 0x8033
  /* 0x802DA394 */  swc1 $f4, 5236($at)
  /* 0x802DA398 */  lui $t7, 0x8033
  /* 0x802DA39C */  lw $t7, -10772($t7)
  /* 0x802DA3A0 */  lhu $t6, 18($t7)
  /* 0x802DA3A4 */  andi $t8, $t6, 0x8000
  /* 0x802DA3A8 */  bne $t8, $zero, .render_dialog_entries_L802DA3BC
  /* 0x802DA3AC */  nop
  /* 0x802DA3B0 */  andi $t9, $t6, 0x4000
  /* 0x802DA3B4 */  beq $t9, $zero, .render_dialog_entries_L802DA40C
  /* 0x802DA3B8 */  nop
.render_dialog_entries_L802DA3BC:
  /* 0x802DA3BC */  lui $t0, 0x8033
  /* 0x802DA3C0 */  lh $t0, 5256($t0)
  /* 0x802DA3C4 */  li $at, -1
  /* 0x802DA3C8 */  bne $t0, $at, .render_dialog_entries_L802DA3EC
  /* 0x802DA3CC */  nop
  /* 0x802DA3D0 */  lui $a0, 0x8033
  /* 0x802DA3D4 */  jal 0x802D9F84
  /* 0x802DA3D8 */  lh $a0, 5252($a0)
  /* 0x802DA3DC */  li $t1, 3
  /* 0x802DA3E0 */  lui $at, 0x8033
  /* 0x802DA3E4 */  b .render_dialog_entries_L802DA40C
  /* 0x802DA3E8 */  sb $t1, 5232($at)
.render_dialog_entries_L802DA3EC:
  /* 0x802DA3EC */  li $t2, 2
  /* 0x802DA3F0 */  lui $at, 0x8033
  /* 0x802DA3F4 */  sb $t2, 5232($at)
  /* 0x802DA3F8 */  lui $a0, 0x7013
  /* 0x802DA3FC */  lui $a1, 0x8033
  /* 0x802DA400 */  addiu $a1, $a1, 12784
  /* 0x802DA404 */  jal 0x8031EB00
  /* 0x802DA408 */  ori $a0, $a0, 0x81
.render_dialog_entries_L802DA40C:
  /* 0x802DA40C */  li $t3, 1
  /* 0x802DA410 */  sb $t3, 47($sp)
  /* 0x802DA414 */  b .render_dialog_entries_L802DA5B8
  /* 0x802DA418 */  nop
.render_dialog_entries_L802DA41C:
  /* 0x802DA41C */  lw $t5, 48($sp)
  /* 0x802DA420 */  lui $t4, 0x8033
  /* 0x802DA424 */  lh $t4, 5244($t4)
  /* 0x802DA428 */  lb $t7, 4($t5)
  /* 0x802DA42C */  lui $at, 0x8033
  /* 0x802DA430 */  sll $t8, $t7, 1
  /* 0x802DA434 */  addu $t6, $t4, $t8
  /* 0x802DA438 */  sh $t6, 5244($at)
  /* 0x802DA43C */  lw $t0, 48($sp)
  /* 0x802DA440 */  lui $t9, 0x8033
  /* 0x802DA444 */  lh $t9, 5244($t9)
  /* 0x802DA448 */  lb $t1, 4($t0)
  /* 0x802DA44C */  sll $t2, $t1, 4
  /* 0x802DA450 */  slt $at, $t9, $t2
  /* 0x802DA454 */  bne $at, $zero, .render_dialog_entries_L802DA480
  /* 0x802DA458 */  nop
  /* 0x802DA45C */  lui $t3, 0x8033
  /* 0x802DA460 */  lh $t3, 5256($t3)
  /* 0x802DA464 */  lui $at, 0x8033
  /* 0x802DA468 */  sh $t3, 5260($at)
  /* 0x802DA46C */  li $t5, 1
  /* 0x802DA470 */  lui $at, 0x8033
  /* 0x802DA474 */  sb $t5, 5232($at)
  /* 0x802DA478 */  lui $at, 0x8033
  /* 0x802DA47C */  sh $zero, 5244($at)
.render_dialog_entries_L802DA480:
  /* 0x802DA480 */  lui $t7, 0x8033
  /* 0x802DA484 */  lh $t7, 5244($t7)
  /* 0x802DA488 */  bgez $t7, .render_dialog_entries_L802DA498
  /* 0x802DA48C */  sra $t4, $t7, 4
  /* 0x802DA490 */  addiu $at, $t7, 15
  /* 0x802DA494 */  sra $t4, $at, 4
.render_dialog_entries_L802DA498:
  /* 0x802DA498 */  addiu $t8, $t4, 1
  /* 0x802DA49C */  sb $t8, 47($sp)
  /* 0x802DA4A0 */  b .render_dialog_entries_L802DA5B8
  /* 0x802DA4A4 */  nop
.render_dialog_entries_L802DA4A8:
  /* 0x802DA4A8 */  lui $at, 0x8033
  /* 0x802DA4AC */  lwc1 $f6, 5236($at)
  /* 0x802DA4B0 */  lui $at, 0x41A0
  /* 0x802DA4B4 */  mtc1 $at, $f8
  /* 0x802DA4B8 */  nop
  /* 0x802DA4BC */  c.eq.s $f6, $f8
  /* 0x802DA4C0 */  nop
  /* 0x802DA4C4 */  bc1f .render_dialog_entries_L802DA518
  /* 0x802DA4C8 */  nop
  /* 0x802DA4CC */  move $a0, $zero
  /* 0x802DA4D0 */  jal 0x8024B798
  /* 0x802DA4D4 */  move $a1, $zero
  /* 0x802DA4D8 */  lui $a0, 0x7005
  /* 0x802DA4DC */  lui $a1, 0x8033
  /* 0x802DA4E0 */  addiu $a1, $a1, 12784
  /* 0x802DA4E4 */  jal 0x8031EB00
  /* 0x802DA4E8 */  ori $a0, $a0, 0x81
  /* 0x802DA4EC */  lui $t6, 0x8033
  /* 0x802DA4F0 */  lb $t6, 5248($t6)
  /* 0x802DA4F4 */  li $at, 1
  /* 0x802DA4F8 */  bne $t6, $at, .render_dialog_entries_L802DA508
  /* 0x802DA4FC */  nop
  /* 0x802DA500 */  jal 0x8028BD34
  /* 0x802DA504 */  li $a0, 2
.render_dialog_entries_L802DA508:
  /* 0x802DA508 */  lui $t0, 0x8033
  /* 0x802DA50C */  lb $t0, 5264($t0)
  /* 0x802DA510 */  lui $at, 0x8033
  /* 0x802DA514 */  sw $t0, 5280($at)
.render_dialog_entries_L802DA518:
  /* 0x802DA518 */  lui $at, 0x8033
  /* 0x802DA51C */  lwc1 $f10, 5236($at)
  /* 0x802DA520 */  lui $at, 0x4120
  /* 0x802DA524 */  mtc1 $at, $f16
  /* 0x802DA528 */  lui $at, 0x8033
  /* 0x802DA52C */  add.s $f18, $f10, $f16
  /* 0x802DA530 */  swc1 $f18, 5236($at)
  /* 0x802DA534 */  lui $at, 0x8033
  /* 0x802DA538 */  lwc1 $f4, 5240($at)
  /* 0x802DA53C */  lui $at, 0x4000
  /* 0x802DA540 */  mtc1 $at, $f6
  /* 0x802DA544 */  lui $at, 0x8033
  /* 0x802DA548 */  add.s $f8, $f4, $f6
  /* 0x802DA54C */  swc1 $f8, 5240($at)
  /* 0x802DA550 */  lui $at, 0x8033
  /* 0x802DA554 */  lwc1 $f10, 5236($at)
  /* 0x802DA558 */  lui $at, 0x42B4
  /* 0x802DA55C */  mtc1 $at, $f16
  /* 0x802DA560 */  nop
  /* 0x802DA564 */  c.eq.s $f10, $f16
  /* 0x802DA568 */  nop
  /* 0x802DA56C */  bc1f .render_dialog_entries_L802DA5A8
  /* 0x802DA570 */  nop
  /* 0x802DA574 */  lui $at, 0x8033
  /* 0x802DA578 */  sb $zero, 5232($at)
  /* 0x802DA57C */  li $t1, -1
  /* 0x802DA580 */  lui $at, 0x8033
  /* 0x802DA584 */  sh $t1, 5252($at)
  /* 0x802DA588 */  lui $at, 0x8033
  /* 0x802DA58C */  sh $zero, 5260($at)
  /* 0x802DA590 */  lui $at, 0x8033
  /* 0x802DA594 */  sb $zero, 5268($at)
  /* 0x802DA598 */  lui $at, 0x8033
  /* 0x802DA59C */  sh $zero, 5256($at)
  /* 0x802DA5A0 */  lui $at, 0x8033
  /* 0x802DA5A4 */  sw $zero, 5280($at)
.render_dialog_entries_L802DA5A8:
  /* 0x802DA5A8 */  li $t9, 1
  /* 0x802DA5AC */  sb $t9, 47($sp)
  /* 0x802DA5B0 */  b .render_dialog_entries_L802DA5B8
  /* 0x802DA5B4 */  nop
.render_dialog_entries_L802DA5B8:
  /* 0x802DA5B8 */  lw $t2, 48($sp)
  /* 0x802DA5BC */  move $a0, $t2
  /* 0x802DA5C0 */  jal 0x802D8E2C
  /* 0x802DA5C4 */  lb $a1, 4($t2)
  /* 0x802DA5C8 */  lui $t3, 0x8034
  /* 0x802DA5CC */  lw $t3, -20372($t3)
  /* 0x802DA5D0 */  lui $at, 0x8034
  /* 0x802DA5D4 */  addiu $t5, $t3, 8
  /* 0x802DA5D8 */  sw $t5, -20372($at)
  /* 0x802DA5DC */  sw $t3, 40($sp)
  /* 0x802DA5E0 */  lw $t7, 48($sp)
  /* 0x802DA5E4 */  jal 0x802D9800
  /* 0x802DA5E8 */  lh $a0, 6($t7)
  /* 0x802DA5EC */  lw $t4, 48($sp)
  /* 0x802DA5F0 */  li $t6, 240
  /* 0x802DA5F4 */  move $s0, $v0
  /* 0x802DA5F8 */  lh $t8, 8($t4)
  /* 0x802DA5FC */  jal 0x802D9800
  /* 0x802DA600 */  subu $a0, $t6, $t8
  /* 0x802DA604 */  mtc1 $v0, $f18
  /* 0x802DA608 */  bgez $v0, .render_dialog_entries_L802DA620
  /* 0x802DA60C */  cvt.s.w $f4, $f18
  /* 0x802DA610 */  lui $at, 0x4F80
  /* 0x802DA614 */  mtc1 $at, $f6
  /* 0x802DA618 */  nop
  /* 0x802DA61C */  add.s $f4, $f4, $f6
.render_dialog_entries_L802DA620:
  /* 0x802DA620 */  lui $at, 0x4080
  /* 0x802DA624 */  mtc1 $at, $f8
  /* 0x802DA628 */  mtc1 $s0, $f18
  /* 0x802DA62C */  mul.s $f10, $f4, $f8
  /* 0x802DA630 */  cvt.s.w $f6, $f18
  /* 0x802DA634 */  trunc.w.s $f16, $f10
  /* 0x802DA638 */  mfc1 $t1, $f16
  /* 0x802DA63C */  bgez $s0, .render_dialog_entries_L802DA654
  /* 0x802DA640 */  andi $t9, $t1, 0xFFF
  /* 0x802DA644 */  lui $at, 0x4F80
  /* 0x802DA648 */  mtc1 $at, $f4
  /* 0x802DA64C */  nop
  /* 0x802DA650 */  add.s $f6, $f6, $f4
.render_dialog_entries_L802DA654:
  /* 0x802DA654 */  lui $at, 0x4080
  /* 0x802DA658 */  mtc1 $at, $f8
  /* 0x802DA65C */  lw $t8, 40($sp)
  /* 0x802DA660 */  lui $at, 0xED00
  /* 0x802DA664 */  mul.s $f10, $f6, $f8
  /* 0x802DA668 */  trunc.w.s $f16, $f10
  /* 0x802DA66C */  mfc1 $t3, $f16
  /* 0x802DA670 */  nop
  /* 0x802DA674 */  andi $t5, $t3, 0xFFF
  /* 0x802DA678 */  sll $t7, $t5, 12
  /* 0x802DA67C */  or $t4, $t7, $at
  /* 0x802DA680 */  or $t6, $t9, $t4
  /* 0x802DA684 */  sw $t6, 0($t8)
  /* 0x802DA688 */  lw $t0, 48($sp)
  /* 0x802DA68C */  lh $a0, 6($t0)
  /* 0x802DA690 */  jal 0x802D9800
  /* 0x802DA694 */  addiu $a0, $a0, 132
  /* 0x802DA698 */  lw $t1, 48($sp)
  /* 0x802DA69C */  li $at, 5
  /* 0x802DA6A0 */  move $s0, $v0
  /* 0x802DA6A4 */  lb $t2, 4($t1)
  /* 0x802DA6A8 */  lh $t7, 8($t1)
  /* 0x802DA6AC */  sll $t3, $t2, 2
  /* 0x802DA6B0 */  addu $t3, $t3, $t2
  /* 0x802DA6B4 */  sll $t3, $t3, 4
  /* 0x802DA6B8 */  div $t3, $at
  /* 0x802DA6BC */  mflo $t5
  /* 0x802DA6C0 */  subu $a0, $t5, $t7
  /* 0x802DA6C4 */  jal 0x802D9800
  /* 0x802DA6C8 */  addiu $a0, $a0, 240
  /* 0x802DA6CC */  mtc1 $v0, $f18
  /* 0x802DA6D0 */  bgez $v0, .render_dialog_entries_L802DA6E8
  /* 0x802DA6D4 */  cvt.s.w $f4, $f18
  /* 0x802DA6D8 */  lui $at, 0x4F80
  /* 0x802DA6DC */  mtc1 $at, $f6
  /* 0x802DA6E0 */  nop
  /* 0x802DA6E4 */  add.s $f4, $f4, $f6
.render_dialog_entries_L802DA6E8:
  /* 0x802DA6E8 */  lui $at, 0x4080
  /* 0x802DA6EC */  mtc1 $at, $f8
  /* 0x802DA6F0 */  mtc1 $s0, $f18
  /* 0x802DA6F4 */  mul.s $f10, $f4, $f8
  /* 0x802DA6F8 */  cvt.s.w $f6, $f18
  /* 0x802DA6FC */  trunc.w.s $f16, $f10
  /* 0x802DA700 */  mfc1 $t4, $f16
  /* 0x802DA704 */  bgez $s0, .render_dialog_entries_L802DA71C
  /* 0x802DA708 */  andi $t6, $t4, 0xFFF
  /* 0x802DA70C */  lui $at, 0x4F80
  /* 0x802DA710 */  mtc1 $at, $f4
  /* 0x802DA714 */  nop
  /* 0x802DA718 */  add.s $f6, $f6, $f4
.render_dialog_entries_L802DA71C:
  /* 0x802DA71C */  lui $at, 0x4080
  /* 0x802DA720 */  mtc1 $at, $f8
  /* 0x802DA724 */  lw $t5, 40($sp)
  /* 0x802DA728 */  mul.s $f10, $f6, $f8
  /* 0x802DA72C */  trunc.w.s $f16, $f10
  /* 0x802DA730 */  mfc1 $t0, $f16
  /* 0x802DA734 */  nop
  /* 0x802DA738 */  andi $t2, $t0, 0xFFF
  /* 0x802DA73C */  sll $t3, $t2, 12
  /* 0x802DA740 */  or $t1, $t6, $t3
  /* 0x802DA744 */  sw $t1, 4($t5)
  /* 0x802DA748 */  move $a0, $zero
  /* 0x802DA74C */  lw $a1, 48($sp)
  /* 0x802DA750 */  jal 0x802D982C
  /* 0x802DA754 */  lb $a2, 47($sp)
  /* 0x802DA758 */  lui $t7, 0x8033
  /* 0x802DA75C */  lh $t7, 5256($t7)
  /* 0x802DA760 */  li $at, -1
  /* 0x802DA764 */  bne $t7, $at, .render_dialog_entries_L802DA788
  /* 0x802DA768 */  nop
  /* 0x802DA76C */  lui $t9, 0x8033
  /* 0x802DA770 */  lb $t9, 5268($t9)
  /* 0x802DA774 */  li $at, 1
  /* 0x802DA778 */  bne $t9, $at, .render_dialog_entries_L802DA788
  /* 0x802DA77C */  nop
  /* 0x802DA780 */  jal 0x802D9CB0
  /* 0x802DA784 */  nop
.render_dialog_entries_L802DA788:
  /* 0x802DA788 */  lui $t4, 0x8034
  /* 0x802DA78C */  lw $t4, -20372($t4)
  /* 0x802DA790 */  lui $at, 0x8034
  /* 0x802DA794 */  addiu $t8, $t4, 8
  /* 0x802DA798 */  sw $t8, -20372($at)
  /* 0x802DA79C */  sw $t4, 36($sp)
  /* 0x802DA7A0 */  lw $t2, 36($sp)
  /* 0x802DA7A4 */  lui $t0, 0xED00
  /* 0x802DA7A8 */  nop  ; <-- CHANGED
  /* 0x802DA7AC */  sw $t0, 0($t2)
  /* 0x802DA7B0 */  lw $t3, 36($sp)
  /* 0x802DA7B4 */  lui $t6, 0x50  ; <-- CHANGED
  /* 0x802DA7B8 */  ori $t6, $t6, 0x3C0  ; <-- CHANGED
  /* 0x802DA7BC */  sw $t6, 4($t3)
  /* 0x802DA7C0 */  lui $t1, 0x8033
  /* 0x802DA7C4 */  lh $t1, 5256($t1)
  /* 0x802DA7C8 */  li $at, -1
  /* 0x802DA7CC */  beq $t1, $at, .render_dialog_entries_L802DA7F4
  /* 0x802DA7D0 */  nop
  /* 0x802DA7D4 */  lui $t5, 0x8033
  /* 0x802DA7D8 */  lb $t5, 5232($t5)
  /* 0x802DA7DC */  li $at, 1
  /* 0x802DA7E0 */  bne $t5, $at, .render_dialog_entries_L802DA7F4
  /* 0x802DA7E4 */  nop
  /* 0x802DA7E8 */  lw $t7, 48($sp)
  /* 0x802DA7EC */  jal 0x802D9DFC
  /* 0x802DA7F0 */  lb $a0, 4($t7)
.render_dialog_entries_L802DA7F4:
  /* 0x802DA7F4 */  b .render_dialog_entries_L802DA7FC
  /* 0x802DA7F8 */  nop
.render_dialog_entries_L802DA7FC:
  /* 0x802DA7FC */  lw $ra, 28($sp)
  /* 0x802DA800 */  lw $s0, 24($sp)
  /* 0x802DA804 */  addiu $sp, $sp, 56
  /* 0x802DA808 */  jr $ra
  /* 0x802DA80C */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x802DA7A8:
  ;   was: 35 08 80 08  ori $t0, $t0, 0x8008
  ;   new: 00 00 00 00  nop
  ; 0x802DA7B4:
  ;   was: 3C 0E 00 4F  lui $t6, 0x4F
  ;   new: 3C 0E 00 50  lui $t6, 0x50
  ; 0x802DA7B8:
  ;   was: 35 CE 03 B0  ori $t6, $t6, 0x3B0
  ;   new: 35 CE 03 C0  ori $t6, $t6, 0x3C0
