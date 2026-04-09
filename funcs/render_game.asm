; Function: render_game
; RAM: 0x8027B3B4  Size: 0x30C

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x8027B3B4 */  addiu $sp, $sp, -56
  /* 0x8027B3B8 */  sw $ra, 28($sp)
  /* 0x8027B3BC */  sw $s0, 24($sp)
  /* 0x8027B3C0 */  lui $t6, 0x8033
  /* 0x8027B3C4 */  lw $t6, -8756($t6)
  /* 0x8027B3C8 */  beq $t6, $zero, .render_game_L8027B654
  /* 0x8027B3CC */  nop
  /* 0x8027B3D0 */  lui $t7, 0x8034
  /* 0x8027B3D4 */  lbu $t7, -17741($t7)
  /* 0x8027B3D8 */  bne $t7, $zero, .render_game_L8027B654
  /* 0x8027B3DC */  nop
  /* 0x8027B3E0 */  lui $t8, 0x8033
  /* 0x8027B3E4 */  lw $t8, -8756($t8)
  /* 0x8027B3E8 */  lui $a1, 0x8033
  /* 0x8027B3EC */  lui $a2, 0x8033
  /* 0x8027B3F0 */  lui $a3, 0x8033
  /* 0x8027B3F4 */  lw $a3, -8736($a3)
  /* 0x8027B3F8 */  lw $a2, -8744($a2)
  /* 0x8027B3FC */  lw $a1, -8748($a1)
  /* 0x8027B400 */  jal 0x8027E130
  /* 0x8027B404 */  lw $a0, 4($t8)
  /* 0x8027B408 */  lui $t9, 0x8034
  /* 0x8027B40C */  lw $t9, -20372($t9)
  /* 0x8027B410 */  lui $at, 0x8034
  /* 0x8027B414 */  addiu $t0, $t9, 8
  /* 0x8027B418 */  sw $t0, -20372($at)
  /* 0x8027B41C */  sw $t9, 52($sp)
  /* 0x8027B420 */  lw $t2, 52($sp)
  /* 0x8027B424 */  lui $t1, 0x380
  /* 0x8027B428 */  ori $t1, $t1, 0x10
  /* 0x8027B42C */  sw $t1, 0($t2)
  /* 0x8027B430 */  lw $t5, 52($sp)
  /* 0x8027B434 */  lui $t3, 0x8033
  /* 0x8027B438 */  lui $at, 0x1FFF
  /* 0x8027B43C */  ori $at, $at, 0xFFFF
  /* 0x8027B440 */  addiu $t3, $t3, -8608
  /* 0x8027B444 */  and $t4, $t3, $at
  /* 0x8027B448 */  sw $t4, 4($t5)
  /* 0x8027B44C */  lui $t6, 0x8034
  /* 0x8027B450 */  lw $t6, -20372($t6)
  /* 0x8027B454 */  lui $at, 0x8034
  /* 0x8027B458 */  addiu $t7, $t6, 8
  /* 0x8027B45C */  sw $t7, -20372($at)
  /* 0x8027B460 */  sw $t6, 48($sp)
  /* 0x8027B464 */  lw $t9, 48($sp)
  /* 0x8027B468 */  lui $t8, 0xED00
  /* 0x8027B46C */  ori $t8, $t8, 0x20  ; <-- CHANGED
  /* 0x8027B470 */  sw $t8, 0($t9)
  /* 0x8027B474 */  lw $t1, 48($sp)
  /* 0x8027B478 */  lui $t0, 0x50
  /* 0x8027B47C */  ori $t0, $t0, 0x3A0  ; <-- CHANGED
  /* 0x8027B480 */  sw $t0, 4($t1)
  /* 0x8027B484 */  jal 0x802E3D2C
  /* 0x8027B488 */  nop
  /* 0x8027B48C */  lui $t2, 0x8034
  /* 0x8027B490 */  lw $t2, -20372($t2)
  /* 0x8027B494 */  lui $at, 0x8034
  /* 0x8027B498 */  addiu $t3, $t2, 8
  /* 0x8027B49C */  sw $t3, -20372($at)
  /* 0x8027B4A0 */  sw $t2, 44($sp)
  /* 0x8027B4A4 */  lw $t5, 44($sp)
  /* 0x8027B4A8 */  lui $t4, 0xED00
  /* 0x8027B4AC */  sw $t4, 0($t5)
  /* 0x8027B4B0 */  lw $t7, 44($sp)
  /* 0x8027B4B4 */  lui $t6, 0x50
  /* 0x8027B4B8 */  ori $t6, $t6, 0x3C0
  /* 0x8027B4BC */  sw $t6, 4($t7)
  /* 0x8027B4C0 */  jal 0x802D6C88
  /* 0x8027B4C4 */  nop
  /* 0x8027B4C8 */  jal 0x802DAB58
  /* 0x8027B4CC */  nop
  /* 0x8027B4D0 */  jal 0x80256E88
  /* 0x8027B4D4 */  nop
  /* 0x8027B4D8 */  lui $t8, 0x8034
  /* 0x8027B4DC */  lw $t8, -20372($t8)
  /* 0x8027B4E0 */  lui $at, 0x8034
  /* 0x8027B4E4 */  addiu $t9, $t8, 8
  /* 0x8027B4E8 */  sw $t9, -20372($at)
  /* 0x8027B4EC */  sw $t8, 40($sp)
  /* 0x8027B4F0 */  lw $t1, 40($sp)
  /* 0x8027B4F4 */  lui $t0, 0xED00
  /* 0x8027B4F8 */  ori $t0, $t0, 0x20  ; <-- CHANGED
  /* 0x8027B4FC */  sw $t0, 0($t1)
  /* 0x8027B500 */  lw $t3, 40($sp)
  /* 0x8027B504 */  lui $t2, 0x50
  /* 0x8027B508 */  ori $t2, $t2, 0x3A0  ; <-- CHANGED
  /* 0x8027B50C */  sw $t2, 4($t3)
  /* 0x8027B510 */  jal 0x802DDCA4
  /* 0x8027B514 */  nop
  /* 0x8027B518 */  lui $at, 0x8034
  /* 0x8027B51C */  sh $v0, -17714($at)
  /* 0x8027B520 */  lui $t4, 0x8034
  /* 0x8027B524 */  lh $t4, -17714($t4)
  /* 0x8027B528 */  beq $t4, $zero, .render_game_L8027B540
  /* 0x8027B52C */  nop
  /* 0x8027B530 */  lui $t5, 0x8034
  /* 0x8027B534 */  lh $t5, -17714($t5)
  /* 0x8027B538 */  lui $at, 0x8034
  /* 0x8027B53C */  sh $t5, -17712($at)
.render_game_L8027B540:
  /* 0x8027B540 */  lui $t6, 0x8033
  /* 0x8027B544 */  lw $t6, -8744($t6)
  /* 0x8027B548 */  beq $t6, $zero, .render_game_L8027B564
  /* 0x8027B54C */  nop
  /* 0x8027B550 */  lui $a0, 0x8033
  /* 0x8027B554 */  jal 0x802479BC
  /* 0x8027B558 */  lw $a0, -8744($a0)
  /* 0x8027B55C */  b .render_game_L8027B59C
  /* 0x8027B560 */  nop
.render_game_L8027B564:
  /* 0x8027B564 */  lui $t7, 0x8034
  /* 0x8027B568 */  lw $t7, -20372($t7)
  /* 0x8027B56C */  lui $at, 0x8034
  /* 0x8027B570 */  addiu $t8, $t7, 8
  /* 0x8027B574 */  sw $t8, -20372($at)
  /* 0x8027B578 */  sw $t7, 36($sp)
  /* 0x8027B57C */  lw $t0, 36($sp)
  /* 0x8027B580 */  lui $t9, 0xED00
  /* 0x8027B584 */  ori $t9, $t9, 0x20  ; <-- CHANGED
  /* 0x8027B588 */  sw $t9, 0($t0)
  /* 0x8027B58C */  lw $t2, 36($sp)
  /* 0x8027B590 */  lui $t1, 0x50
  /* 0x8027B594 */  ori $t1, $t1, 0x3A0  ; <-- CHANGED
  /* 0x8027B598 */  sw $t1, 4($t2)
.render_game_L8027B59C:
  /* 0x8027B59C */  lui $t3, 0x8034
  /* 0x8027B5A0 */  lbu $t3, -17744($t3)
  /* 0x8027B5A4 */  beq $t3, $zero, .render_game_L8027B64C
  /* 0x8027B5A8 */  nop
  /* 0x8027B5AC */  lui $t4, 0x8033
  /* 0x8027B5B0 */  lh $t4, -8740($t4)
  /* 0x8027B5B4 */  bne $t4, $zero, .render_game_L8027B638
  /* 0x8027B5B8 */  nop
  /* 0x8027B5BC */  lui $a3, 0x8034
  /* 0x8027B5C0 */  addiu $a3, $a3, -17744
  /* 0x8027B5C4 */  lui $a1, 0x8034
  /* 0x8027B5C8 */  lui $a2, 0x8034
  /* 0x8027B5CC */  lbu $a2, -17742($a2)
  /* 0x8027B5D0 */  lbu $a1, -17743($a1)
  /* 0x8027B5D4 */  addiu $a3, $a3, 4
  /* 0x8027B5D8 */  jal 0x802CCBE8
  /* 0x8027B5DC */  move $a0, $zero
  /* 0x8027B5E0 */  sltiu $s0, $v0, 1
  /* 0x8027B5E4 */  lui $at, 0x8034
  /* 0x8027B5E8 */  sb $s0, -17744($at)
  /* 0x8027B5EC */  lui $t5, 0x8034
  /* 0x8027B5F0 */  lbu $t5, -17744($t5)
  /* 0x8027B5F4 */  bne $t5, $zero, .render_game_L8027B630
  /* 0x8027B5F8 */  nop
  /* 0x8027B5FC */  lui $t6, 0x8034
  /* 0x8027B600 */  lbu $t6, -17743($t6)
  /* 0x8027B604 */  andi $t7, $t6, 0x1
  /* 0x8027B608 */  beq $t7, $zero, .render_game_L8027B620
  /* 0x8027B60C */  nop
  /* 0x8027B610 */  li $t8, 1
  /* 0x8027B614 */  lui $at, 0x8034
  /* 0x8027B618 */  b .render_game_L8027B630
  /* 0x8027B61C */  sb $t8, -17741($at)
.render_game_L8027B620:
  /* 0x8027B620 */  move $a0, $zero
  /* 0x8027B624 */  move $a1, $zero
  /* 0x8027B628 */  jal 0x8027A83C
  /* 0x8027B62C */  move $a2, $zero
.render_game_L8027B630:
  /* 0x8027B630 */  b .render_game_L8027B64C
  /* 0x8027B634 */  nop
.render_game_L8027B638:
  /* 0x8027B638 */  lui $t9, 0x8033
  /* 0x8027B63C */  lh $t9, -8740($t9)
  /* 0x8027B640 */  lui $at, 0x8033
  /* 0x8027B644 */  addiu $t0, $t9, -1
  /* 0x8027B648 */  sh $t0, -8740($at)
.render_game_L8027B64C:
  /* 0x8027B64C */  b .render_game_L8027B694
  /* 0x8027B650 */  nop
.render_game_L8027B654:
  /* 0x8027B654 */  jal 0x802D6C88
  /* 0x8027B658 */  nop
  /* 0x8027B65C */  lui $t1, 0x8033
  /* 0x8027B660 */  lw $t1, -8744($t1)
  /* 0x8027B664 */  beq $t1, $zero, .render_game_L8027B688
  /* 0x8027B668 */  nop
  /* 0x8027B66C */  lui $a0, 0x8033
  /* 0x8027B670 */  lui $a1, 0x8033
  /* 0x8027B674 */  lw $a1, -8732($a1)
  /* 0x8027B678 */  jal 0x80247620
  /* 0x8027B67C */  lw $a0, -8744($a0)
  /* 0x8027B680 */  b .render_game_L8027B694
  /* 0x8027B684 */  nop
.render_game_L8027B688:
  /* 0x8027B688 */  lui $a0, 0x8033
  /* 0x8027B68C */  jal 0x802474B8
  /* 0x8027B690 */  lw $a0, -8732($a0)
.render_game_L8027B694:
  /* 0x8027B694 */  lui $at, 0x8033
  /* 0x8027B698 */  sw $zero, -8748($at)
  /* 0x8027B69C */  lui $at, 0x8033
  /* 0x8027B6A0 */  sw $zero, -8744($at)
  /* 0x8027B6A4 */  b .render_game_L8027B6AC
  /* 0x8027B6A8 */  nop
.render_game_L8027B6AC:
  /* 0x8027B6AC */  lw $ra, 28($sp)
  /* 0x8027B6B0 */  lw $s0, 24($sp)
  /* 0x8027B6B4 */  addiu $sp, $sp, 56
  /* 0x8027B6B8 */  jr $ra
  /* 0x8027B6BC */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x8027B3B4 */  addiu $sp, $sp, -56
  /* 0x8027B3B8 */  sw $ra, 28($sp)
  /* 0x8027B3BC */  sw $s0, 24($sp)
  /* 0x8027B3C0 */  lui $t6, 0x8033
  /* 0x8027B3C4 */  lw $t6, -8756($t6)
  /* 0x8027B3C8 */  beq $t6, $zero, .render_game_L8027B654
  /* 0x8027B3CC */  nop
  /* 0x8027B3D0 */  lui $t7, 0x8034
  /* 0x8027B3D4 */  lbu $t7, -17741($t7)
  /* 0x8027B3D8 */  bne $t7, $zero, .render_game_L8027B654
  /* 0x8027B3DC */  nop
  /* 0x8027B3E0 */  lui $t8, 0x8033
  /* 0x8027B3E4 */  lw $t8, -8756($t8)
  /* 0x8027B3E8 */  lui $a1, 0x8033
  /* 0x8027B3EC */  lui $a2, 0x8033
  /* 0x8027B3F0 */  lui $a3, 0x8033
  /* 0x8027B3F4 */  lw $a3, -8736($a3)
  /* 0x8027B3F8 */  lw $a2, -8744($a2)
  /* 0x8027B3FC */  lw $a1, -8748($a1)
  /* 0x8027B400 */  jal 0x8027E130
  /* 0x8027B404 */  lw $a0, 4($t8)
  /* 0x8027B408 */  lui $t9, 0x8034
  /* 0x8027B40C */  lw $t9, -20372($t9)
  /* 0x8027B410 */  lui $at, 0x8034
  /* 0x8027B414 */  addiu $t0, $t9, 8
  /* 0x8027B418 */  sw $t0, -20372($at)
  /* 0x8027B41C */  sw $t9, 52($sp)
  /* 0x8027B420 */  lw $t2, 52($sp)
  /* 0x8027B424 */  lui $t1, 0x380
  /* 0x8027B428 */  ori $t1, $t1, 0x10
  /* 0x8027B42C */  sw $t1, 0($t2)
  /* 0x8027B430 */  lw $t5, 52($sp)
  /* 0x8027B434 */  lui $t3, 0x8033
  /* 0x8027B438 */  lui $at, 0x1FFF
  /* 0x8027B43C */  ori $at, $at, 0xFFFF
  /* 0x8027B440 */  addiu $t3, $t3, -8608
  /* 0x8027B444 */  and $t4, $t3, $at
  /* 0x8027B448 */  sw $t4, 4($t5)
  /* 0x8027B44C */  lui $t6, 0x8034
  /* 0x8027B450 */  lw $t6, -20372($t6)
  /* 0x8027B454 */  lui $at, 0x8034
  /* 0x8027B458 */  addiu $t7, $t6, 8
  /* 0x8027B45C */  sw $t7, -20372($at)
  /* 0x8027B460 */  sw $t6, 48($sp)
  /* 0x8027B464 */  lw $t9, 48($sp)
  /* 0x8027B468 */  lui $t8, 0xED00
  /* 0x8027B46C */  ori $t8, $t8, 0x0  ; <-- CHANGED
  /* 0x8027B470 */  sw $t8, 0($t9)
  /* 0x8027B474 */  lw $t1, 48($sp)
  /* 0x8027B478 */  lui $t0, 0x50
  /* 0x8027B47C */  ori $t0, $t0, 0x3C0  ; <-- CHANGED
  /* 0x8027B480 */  sw $t0, 4($t1)
  /* 0x8027B484 */  jal 0x802E3D2C
  /* 0x8027B488 */  nop
  /* 0x8027B48C */  lui $t2, 0x8034
  /* 0x8027B490 */  lw $t2, -20372($t2)
  /* 0x8027B494 */  lui $at, 0x8034
  /* 0x8027B498 */  addiu $t3, $t2, 8
  /* 0x8027B49C */  sw $t3, -20372($at)
  /* 0x8027B4A0 */  sw $t2, 44($sp)
  /* 0x8027B4A4 */  lw $t5, 44($sp)
  /* 0x8027B4A8 */  lui $t4, 0xED00
  /* 0x8027B4AC */  sw $t4, 0($t5)
  /* 0x8027B4B0 */  lw $t7, 44($sp)
  /* 0x8027B4B4 */  lui $t6, 0x50
  /* 0x8027B4B8 */  ori $t6, $t6, 0x3C0
  /* 0x8027B4BC */  sw $t6, 4($t7)
  /* 0x8027B4C0 */  jal 0x802D6C88
  /* 0x8027B4C4 */  nop
  /* 0x8027B4C8 */  jal 0x802DAB58
  /* 0x8027B4CC */  nop
  /* 0x8027B4D0 */  jal 0x80256E88
  /* 0x8027B4D4 */  nop
  /* 0x8027B4D8 */  lui $t8, 0x8034
  /* 0x8027B4DC */  lw $t8, -20372($t8)
  /* 0x8027B4E0 */  lui $at, 0x8034
  /* 0x8027B4E4 */  addiu $t9, $t8, 8
  /* 0x8027B4E8 */  sw $t9, -20372($at)
  /* 0x8027B4EC */  sw $t8, 40($sp)
  /* 0x8027B4F0 */  lw $t1, 40($sp)
  /* 0x8027B4F4 */  lui $t0, 0xED00
  /* 0x8027B4F8 */  ori $t0, $t0, 0x0  ; <-- CHANGED
  /* 0x8027B4FC */  sw $t0, 0($t1)
  /* 0x8027B500 */  lw $t3, 40($sp)
  /* 0x8027B504 */  lui $t2, 0x50
  /* 0x8027B508 */  ori $t2, $t2, 0x3C0  ; <-- CHANGED
  /* 0x8027B50C */  sw $t2, 4($t3)
  /* 0x8027B510 */  jal 0x802DDCA4
  /* 0x8027B514 */  nop
  /* 0x8027B518 */  lui $at, 0x8034
  /* 0x8027B51C */  sh $v0, -17714($at)
  /* 0x8027B520 */  lui $t4, 0x8034
  /* 0x8027B524 */  lh $t4, -17714($t4)
  /* 0x8027B528 */  beq $t4, $zero, .render_game_L8027B540
  /* 0x8027B52C */  nop
  /* 0x8027B530 */  lui $t5, 0x8034
  /* 0x8027B534 */  lh $t5, -17714($t5)
  /* 0x8027B538 */  lui $at, 0x8034
  /* 0x8027B53C */  sh $t5, -17712($at)
.render_game_L8027B540:
  /* 0x8027B540 */  lui $t6, 0x8033
  /* 0x8027B544 */  lw $t6, -8744($t6)
  /* 0x8027B548 */  beq $t6, $zero, .render_game_L8027B564
  /* 0x8027B54C */  nop
  /* 0x8027B550 */  lui $a0, 0x8033
  /* 0x8027B554 */  jal 0x802479BC
  /* 0x8027B558 */  lw $a0, -8744($a0)
  /* 0x8027B55C */  b .render_game_L8027B59C
  /* 0x8027B560 */  nop
.render_game_L8027B564:
  /* 0x8027B564 */  lui $t7, 0x8034
  /* 0x8027B568 */  lw $t7, -20372($t7)
  /* 0x8027B56C */  lui $at, 0x8034
  /* 0x8027B570 */  addiu $t8, $t7, 8
  /* 0x8027B574 */  sw $t8, -20372($at)
  /* 0x8027B578 */  sw $t7, 36($sp)
  /* 0x8027B57C */  lw $t0, 36($sp)
  /* 0x8027B580 */  lui $t9, 0xED00
  /* 0x8027B584 */  ori $t9, $t9, 0x0  ; <-- CHANGED
  /* 0x8027B588 */  sw $t9, 0($t0)
  /* 0x8027B58C */  lw $t2, 36($sp)
  /* 0x8027B590 */  lui $t1, 0x50
  /* 0x8027B594 */  ori $t1, $t1, 0x3C0  ; <-- CHANGED
  /* 0x8027B598 */  sw $t1, 4($t2)
.render_game_L8027B59C:
  /* 0x8027B59C */  lui $t3, 0x8034
  /* 0x8027B5A0 */  lbu $t3, -17744($t3)
  /* 0x8027B5A4 */  beq $t3, $zero, .render_game_L8027B64C
  /* 0x8027B5A8 */  nop
  /* 0x8027B5AC */  lui $t4, 0x8033
  /* 0x8027B5B0 */  lh $t4, -8740($t4)
  /* 0x8027B5B4 */  bne $t4, $zero, .render_game_L8027B638
  /* 0x8027B5B8 */  nop
  /* 0x8027B5BC */  lui $a3, 0x8034
  /* 0x8027B5C0 */  addiu $a3, $a3, -17744
  /* 0x8027B5C4 */  lui $a1, 0x8034
  /* 0x8027B5C8 */  lui $a2, 0x8034
  /* 0x8027B5CC */  lbu $a2, -17742($a2)
  /* 0x8027B5D0 */  lbu $a1, -17743($a1)
  /* 0x8027B5D4 */  addiu $a3, $a3, 4
  /* 0x8027B5D8 */  jal 0x802CCBE8
  /* 0x8027B5DC */  move $a0, $zero
  /* 0x8027B5E0 */  sltiu $s0, $v0, 1
  /* 0x8027B5E4 */  lui $at, 0x8034
  /* 0x8027B5E8 */  sb $s0, -17744($at)
  /* 0x8027B5EC */  lui $t5, 0x8034
  /* 0x8027B5F0 */  lbu $t5, -17744($t5)
  /* 0x8027B5F4 */  bne $t5, $zero, .render_game_L8027B630
  /* 0x8027B5F8 */  nop
  /* 0x8027B5FC */  lui $t6, 0x8034
  /* 0x8027B600 */  lbu $t6, -17743($t6)
  /* 0x8027B604 */  andi $t7, $t6, 0x1
  /* 0x8027B608 */  beq $t7, $zero, .render_game_L8027B620
  /* 0x8027B60C */  nop
  /* 0x8027B610 */  li $t8, 1
  /* 0x8027B614 */  lui $at, 0x8034
  /* 0x8027B618 */  b .render_game_L8027B630
  /* 0x8027B61C */  sb $t8, -17741($at)
.render_game_L8027B620:
  /* 0x8027B620 */  move $a0, $zero
  /* 0x8027B624 */  move $a1, $zero
  /* 0x8027B628 */  jal 0x8027A83C
  /* 0x8027B62C */  move $a2, $zero
.render_game_L8027B630:
  /* 0x8027B630 */  b .render_game_L8027B64C
  /* 0x8027B634 */  nop
.render_game_L8027B638:
  /* 0x8027B638 */  lui $t9, 0x8033
  /* 0x8027B63C */  lh $t9, -8740($t9)
  /* 0x8027B640 */  lui $at, 0x8033
  /* 0x8027B644 */  addiu $t0, $t9, -1
  /* 0x8027B648 */  sh $t0, -8740($at)
.render_game_L8027B64C:
  /* 0x8027B64C */  b .render_game_L8027B694
  /* 0x8027B650 */  nop
.render_game_L8027B654:
  /* 0x8027B654 */  jal 0x802D6C88
  /* 0x8027B658 */  nop
  /* 0x8027B65C */  lui $t1, 0x8033
  /* 0x8027B660 */  lw $t1, -8744($t1)
  /* 0x8027B664 */  beq $t1, $zero, .render_game_L8027B688
  /* 0x8027B668 */  nop
  /* 0x8027B66C */  lui $a0, 0x8033
  /* 0x8027B670 */  lui $a1, 0x8033
  /* 0x8027B674 */  lw $a1, -8732($a1)
  /* 0x8027B678 */  jal 0x80247620
  /* 0x8027B67C */  lw $a0, -8744($a0)
  /* 0x8027B680 */  b .render_game_L8027B694
  /* 0x8027B684 */  nop
.render_game_L8027B688:
  /* 0x8027B688 */  lui $a0, 0x8033
  /* 0x8027B68C */  jal 0x802474B8
  /* 0x8027B690 */  lw $a0, -8732($a0)
.render_game_L8027B694:
  /* 0x8027B694 */  lui $at, 0x8033
  /* 0x8027B698 */  sw $zero, -8748($at)
  /* 0x8027B69C */  lui $at, 0x8033
  /* 0x8027B6A0 */  sw $zero, -8744($at)
  /* 0x8027B6A4 */  b .render_game_L8027B6AC
  /* 0x8027B6A8 */  nop
.render_game_L8027B6AC:
  /* 0x8027B6AC */  lw $ra, 28($sp)
  /* 0x8027B6B0 */  lw $s0, 24($sp)
  /* 0x8027B6B4 */  addiu $sp, $sp, 56
  /* 0x8027B6B8 */  jr $ra
  /* 0x8027B6BC */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x8027B46C:
  ;   was: 37 18 00 20  ori $t8, $t8, 0x20
  ;   new: 37 18 00 00  ori $t8, $t8, 0x0
  ; 0x8027B47C:
  ;   was: 35 08 03 A0  ori $t0, $t0, 0x3A0
  ;   new: 35 08 03 C0  ori $t0, $t0, 0x3C0
  ; 0x8027B4F8:
  ;   was: 35 08 00 20  ori $t0, $t0, 0x20
  ;   new: 35 08 00 00  ori $t0, $t0, 0x0
  ; 0x8027B508:
  ;   was: 35 4A 03 A0  ori $t2, $t2, 0x3A0
  ;   new: 35 4A 03 C0  ori $t2, $t2, 0x3C0
  ; 0x8027B584:
  ;   was: 37 39 00 20  ori $t9, $t9, 0x20
  ;   new: 37 39 00 00  ori $t9, $t9, 0x0
  ; 0x8027B594:
  ;   was: 35 29 03 A0  ori $t1, $t1, 0x3A0
  ;   new: 35 29 03 C0  ori $t1, $t1, 0x3C0
