; Function: obj_is_in_view
; RAM: 0x8027D518  Size: 0x1E4

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x8027D518 */  addiu $sp, $sp, -16
  /* 0x8027D51C */  lh $t6, 2($a0)
  /* 0x8027D520 */  andi $t7, $t6, 0x10
  /* 0x8027D524 */  beq $t7, $zero, .obj_is_in_view_L8027D534
  /* 0x8027D528 */  nop
  /* 0x8027D52C */  b .obj_is_in_view_L8027D6F4
  /* 0x8027D530 */  move $v0, $zero
.obj_is_in_view_L8027D534:
  /* 0x8027D534 */  lw $t8, 20($a0)
  /* 0x8027D538 */  sw $t8, 8($sp)
  /* 0x8027D53C */  lui $t9, 0x8033
  /* 0x8027D540 */  lw $t9, -8456($t9)
  /* 0x8027D544 */  lui $at, 0x4000
  /* 0x8027D548 */  mtc1 $at, $f6
  /* 0x8027D54C */  lwc1 $f4, 28($t9)
  /* 0x8027D550 */  lui $at, 0x3F80
  /* 0x8027D554 */  mtc1 $at, $f10
  /* 0x8027D558 */  div.s $f8, $f4, $f6
  /* 0x8027D55C */  lui $at, 0x4700  ; <-- CHANGED
  /* 0x8027D560 */  mtc1 $at, $f18
  /* 0x8027D564 */  lui $at, 0x4334
  /* 0x8027D568 */  mtc1 $at, $f6
  /* 0x8027D56C */  lui $at, 0x3F00
  /* 0x8027D570 */  add.s $f16, $f8, $f10
  /* 0x8027D574 */  mtc1 $at, $f10
  /* 0x8027D578 */  mul.s $f4, $f16, $f18
  /* 0x8027D57C */  div.s $f8, $f4, $f6
  /* 0x8027D580 */  add.s $f16, $f8, $f10
  /* 0x8027D584 */  trunc.w.s $f18, $f16
  /* 0x8027D588 */  mfc1 $t1, $f18
  /* 0x8027D58C */  nop
  /* 0x8027D590 */  sh $t1, 12($sp)
  /* 0x8027D594 */  lhu $t2, 12($sp)
  /* 0x8027D598 */  lwc1 $f4, 56($a1)
  /* 0x8027D59C */  lui $at, 0x8038
  /* 0x8027D5A0 */  sra $t3, $t2, 4
  /* 0x8027D5A4 */  sll $t4, $t3, 2
  /* 0x8027D5A8 */  addu $at, $at, $t4
  /* 0x8027D5AC */  lwc1 $f8, 24576($at)
  /* 0x8027D5B0 */  neg.s $f6, $f4
  /* 0x8027D5B4 */  lui $at, 0x8038
  /* 0x8027D5B8 */  mul.s $f10, $f6, $f8
  /* 0x8027D5BC */  addu $at, $at, $t4
  /* 0x8027D5C0 */  lwc1 $f16, 28672($at)
  /* 0x8027D5C4 */  div.s $f18, $f10, $f16
  /* 0x8027D5C8 */  swc1 $f18, 4($sp)
  /* 0x8027D5CC */  lw $t5, 8($sp)
  /* 0x8027D5D0 */  beq $t5, $zero, .obj_is_in_view_L8027D60C
  /* 0x8027D5D4 */  nop
  /* 0x8027D5D8 */  lh $t6, 0($t5)
  /* 0x8027D5DC */  li $at, 47
  /* 0x8027D5E0 */  bne $t6, $at, .obj_is_in_view_L8027D60C
  /* 0x8027D5E4 */  nop
  /* 0x8027D5E8 */  lw $t7, 8($sp)
  /* 0x8027D5EC */  lh $t8, 20($t7)
  /* 0x8027D5F0 */  mtc1 $t8, $f4
  /* 0x8027D5F4 */  nop
  /* 0x8027D5F8 */  cvt.s.w $f6, $f4
  /* 0x8027D5FC */  trunc.w.s $f8, $f6
  /* 0x8027D600 */  mfc1 $t0, $f8
  /* 0x8027D604 */  b .obj_is_in_view_L8027D614
  /* 0x8027D608 */  sh $t0, 14($sp)
.obj_is_in_view_L8027D60C:
  /* 0x8027D60C */  li $t1, 300
  /* 0x8027D610 */  sh $t1, 14($sp)
.obj_is_in_view_L8027D614:
  /* 0x8027D614 */  lh $t2, 14($sp)
  /* 0x8027D618 */  lui $at, 0xC2C8
  /* 0x8027D61C */  mtc1 $at, $f16
  /* 0x8027D620 */  mtc1 $t2, $f18
  /* 0x8027D624 */  lwc1 $f10, 56($a1)
  /* 0x8027D628 */  cvt.s.w $f4, $f18
  /* 0x8027D62C */  add.s $f6, $f16, $f4
  /* 0x8027D630 */  c.lt.s $f6, $f10
  /* 0x8027D634 */  nop
  /* 0x8027D638 */  bc1f .obj_is_in_view_L8027D648
  /* 0x8027D63C */  nop
  /* 0x8027D640 */  b .obj_is_in_view_L8027D6F4
  /* 0x8027D644 */  move $v0, $zero
.obj_is_in_view_L8027D648:
  /* 0x8027D648 */  lh $t3, 14($sp)
  /* 0x8027D64C */  lui $at, 0x8033
  /* 0x8027D650 */  lwc1 $f18, 28568($at)
  /* 0x8027D654 */  mtc1 $t3, $f16
  /* 0x8027D658 */  lwc1 $f8, 56($a1)
  /* 0x8027D65C */  cvt.s.w $f4, $f16
  /* 0x8027D660 */  sub.s $f10, $f18, $f4
  /* 0x8027D664 */  c.lt.s $f8, $f10
  /* 0x8027D668 */  nop
  /* 0x8027D66C */  bc1f .obj_is_in_view_L8027D67C
  /* 0x8027D670 */  nop
  /* 0x8027D674 */  b .obj_is_in_view_L8027D6F4
  /* 0x8027D678 */  move $v0, $zero
.obj_is_in_view_L8027D67C:
  /* 0x8027D67C */  lh $t4, 14($sp)
  /* 0x8027D680 */  lwc1 $f16, 4($sp)
  /* 0x8027D684 */  lwc1 $f6, 48($a1)
  /* 0x8027D688 */  mtc1 $t4, $f18
  /* 0x8027D68C */  nop
  /* 0x8027D690 */  cvt.s.w $f4, $f18
  /* 0x8027D694 */  add.s $f8, $f16, $f4
  /* 0x8027D698 */  c.lt.s $f8, $f6
  /* 0x8027D69C */  nop
  /* 0x8027D6A0 */  bc1f .obj_is_in_view_L8027D6B0
  /* 0x8027D6A4 */  nop
  /* 0x8027D6A8 */  b .obj_is_in_view_L8027D6F4
  /* 0x8027D6AC */  move $v0, $zero
.obj_is_in_view_L8027D6B0:
  /* 0x8027D6B0 */  lh $t5, 14($sp)
  /* 0x8027D6B4 */  lwc1 $f18, 4($sp)
  /* 0x8027D6B8 */  lwc1 $f10, 48($a1)
  /* 0x8027D6BC */  mtc1 $t5, $f4
  /* 0x8027D6C0 */  neg.s $f16, $f18
  /* 0x8027D6C4 */  cvt.s.w $f6, $f4
  /* 0x8027D6C8 */  sub.s $f8, $f16, $f6
  /* 0x8027D6CC */  c.lt.s $f10, $f8
  /* 0x8027D6D0 */  nop
  /* 0x8027D6D4 */  bc1f .obj_is_in_view_L8027D6E4
  /* 0x8027D6D8 */  nop
  /* 0x8027D6DC */  b .obj_is_in_view_L8027D6F4
  /* 0x8027D6E0 */  move $v0, $zero
.obj_is_in_view_L8027D6E4:
  /* 0x8027D6E4 */  b .obj_is_in_view_L8027D6F4
  /* 0x8027D6E8 */  li $v0, 1
  /* 0x8027D6EC */  b .obj_is_in_view_L8027D6F4
  /* 0x8027D6F0 */  nop
.obj_is_in_view_L8027D6F4:
  /* 0x8027D6F4 */  jr $ra
  /* 0x8027D6F8 */  addiu $sp, $sp, 16
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x8027D518 */  addiu $sp, $sp, -16
  /* 0x8027D51C */  lh $t6, 2($a0)
  /* 0x8027D520 */  andi $t7, $t6, 0x10
  /* 0x8027D524 */  beq $t7, $zero, .obj_is_in_view_L8027D534
  /* 0x8027D528 */  nop
  /* 0x8027D52C */  b .obj_is_in_view_L8027D6F4
  /* 0x8027D530 */  move $v0, $zero
.obj_is_in_view_L8027D534:
  /* 0x8027D534 */  lw $t8, 20($a0)
  /* 0x8027D538 */  sw $t8, 8($sp)
  /* 0x8027D53C */  lui $t9, 0x8033
  /* 0x8027D540 */  lw $t9, -8456($t9)
  /* 0x8027D544 */  lui $at, 0x4000
  /* 0x8027D548 */  mtc1 $at, $f6
  /* 0x8027D54C */  lwc1 $f4, 28($t9)
  /* 0x8027D550 */  lui $at, 0x3F80
  /* 0x8027D554 */  mtc1 $at, $f10
  /* 0x8027D558 */  div.s $f8, $f4, $f6
  /* 0x8027D55C */  lui $at, 0x4740  ; <-- CHANGED
  /* 0x8027D560 */  mtc1 $at, $f18
  /* 0x8027D564 */  lui $at, 0x4334
  /* 0x8027D568 */  mtc1 $at, $f6
  /* 0x8027D56C */  lui $at, 0x3F00
  /* 0x8027D570 */  add.s $f16, $f8, $f10
  /* 0x8027D574 */  mtc1 $at, $f10
  /* 0x8027D578 */  mul.s $f4, $f16, $f18
  /* 0x8027D57C */  div.s $f8, $f4, $f6
  /* 0x8027D580 */  add.s $f16, $f8, $f10
  /* 0x8027D584 */  trunc.w.s $f18, $f16
  /* 0x8027D588 */  mfc1 $t1, $f18
  /* 0x8027D58C */  nop
  /* 0x8027D590 */  sh $t1, 12($sp)
  /* 0x8027D594 */  lhu $t2, 12($sp)
  /* 0x8027D598 */  lwc1 $f4, 56($a1)
  /* 0x8027D59C */  lui $at, 0x8038
  /* 0x8027D5A0 */  sra $t3, $t2, 4
  /* 0x8027D5A4 */  sll $t4, $t3, 2
  /* 0x8027D5A8 */  addu $at, $at, $t4
  /* 0x8027D5AC */  lwc1 $f8, 24576($at)
  /* 0x8027D5B0 */  neg.s $f6, $f4
  /* 0x8027D5B4 */  lui $at, 0x8038
  /* 0x8027D5B8 */  mul.s $f10, $f6, $f8
  /* 0x8027D5BC */  addu $at, $at, $t4
  /* 0x8027D5C0 */  lwc1 $f16, 28672($at)
  /* 0x8027D5C4 */  div.s $f18, $f10, $f16
  /* 0x8027D5C8 */  swc1 $f18, 4($sp)
  /* 0x8027D5CC */  lw $t5, 8($sp)
  /* 0x8027D5D0 */  beq $t5, $zero, .obj_is_in_view_L8027D60C
  /* 0x8027D5D4 */  nop
  /* 0x8027D5D8 */  lh $t6, 0($t5)
  /* 0x8027D5DC */  li $at, 47
  /* 0x8027D5E0 */  bne $t6, $at, .obj_is_in_view_L8027D60C
  /* 0x8027D5E4 */  nop
  /* 0x8027D5E8 */  lw $t7, 8($sp)
  /* 0x8027D5EC */  lh $t8, 20($t7)
  /* 0x8027D5F0 */  mtc1 $t8, $f4
  /* 0x8027D5F4 */  nop
  /* 0x8027D5F8 */  cvt.s.w $f6, $f4
  /* 0x8027D5FC */  trunc.w.s $f8, $f6
  /* 0x8027D600 */  mfc1 $t0, $f8
  /* 0x8027D604 */  b .obj_is_in_view_L8027D614
  /* 0x8027D608 */  sh $t0, 14($sp)
.obj_is_in_view_L8027D60C:
  /* 0x8027D60C */  li $t1, 300
  /* 0x8027D610 */  sh $t1, 14($sp)
.obj_is_in_view_L8027D614:
  /* 0x8027D614 */  lh $t2, 14($sp)
  /* 0x8027D618 */  lui $at, 0xC2C8
  /* 0x8027D61C */  mtc1 $at, $f16
  /* 0x8027D620 */  mtc1 $t2, $f18
  /* 0x8027D624 */  lwc1 $f10, 56($a1)
  /* 0x8027D628 */  cvt.s.w $f4, $f18
  /* 0x8027D62C */  add.s $f6, $f16, $f4
  /* 0x8027D630 */  c.lt.s $f6, $f10
  /* 0x8027D634 */  nop
  /* 0x8027D638 */  bc1f .obj_is_in_view_L8027D648
  /* 0x8027D63C */  nop
  /* 0x8027D640 */  b .obj_is_in_view_L8027D6F4
  /* 0x8027D644 */  move $v0, $zero
.obj_is_in_view_L8027D648:
  /* 0x8027D648 */  lh $t3, 14($sp)
  /* 0x8027D64C */  lui $at, 0x8033
  /* 0x8027D650 */  lwc1 $f18, 28568($at)
  /* 0x8027D654 */  mtc1 $t3, $f16
  /* 0x8027D658 */  lwc1 $f8, 56($a1)
  /* 0x8027D65C */  cvt.s.w $f4, $f16
  /* 0x8027D660 */  sub.s $f10, $f18, $f4
  /* 0x8027D664 */  c.lt.s $f8, $f10
  /* 0x8027D668 */  nop
  /* 0x8027D66C */  bc1f .obj_is_in_view_L8027D67C
  /* 0x8027D670 */  nop
  /* 0x8027D674 */  b .obj_is_in_view_L8027D6F4
  /* 0x8027D678 */  move $v0, $zero
.obj_is_in_view_L8027D67C:
  /* 0x8027D67C */  lh $t4, 14($sp)
  /* 0x8027D680 */  lwc1 $f16, 4($sp)
  /* 0x8027D684 */  lwc1 $f6, 48($a1)
  /* 0x8027D688 */  mtc1 $t4, $f18
  /* 0x8027D68C */  nop
  /* 0x8027D690 */  cvt.s.w $f4, $f18
  /* 0x8027D694 */  add.s $f8, $f16, $f4
  /* 0x8027D698 */  c.lt.s $f8, $f6
  /* 0x8027D69C */  nop
  /* 0x8027D6A0 */  bc1f .obj_is_in_view_L8027D6B0
  /* 0x8027D6A4 */  nop
  /* 0x8027D6A8 */  b .obj_is_in_view_L8027D6F4
  /* 0x8027D6AC */  move $v0, $zero
.obj_is_in_view_L8027D6B0:
  /* 0x8027D6B0 */  lh $t5, 14($sp)
  /* 0x8027D6B4 */  lwc1 $f18, 4($sp)
  /* 0x8027D6B8 */  lwc1 $f10, 48($a1)
  /* 0x8027D6BC */  mtc1 $t5, $f4
  /* 0x8027D6C0 */  neg.s $f16, $f18
  /* 0x8027D6C4 */  cvt.s.w $f6, $f4
  /* 0x8027D6C8 */  sub.s $f8, $f16, $f6
  /* 0x8027D6CC */  c.lt.s $f10, $f8
  /* 0x8027D6D0 */  nop
  /* 0x8027D6D4 */  bc1f .obj_is_in_view_L8027D6E4
  /* 0x8027D6D8 */  nop
  /* 0x8027D6DC */  b .obj_is_in_view_L8027D6F4
  /* 0x8027D6E0 */  move $v0, $zero
.obj_is_in_view_L8027D6E4:
  /* 0x8027D6E4 */  b .obj_is_in_view_L8027D6F4
  /* 0x8027D6E8 */  li $v0, 1
  /* 0x8027D6EC */  b .obj_is_in_view_L8027D6F4
  /* 0x8027D6F0 */  nop
.obj_is_in_view_L8027D6F4:
  /* 0x8027D6F4 */  jr $ra
  /* 0x8027D6F8 */  addiu $sp, $sp, 16
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x8027D55C:
  ;   was: 3C 01 47 00  lui $at, 0x4700
  ;   new: 3C 01 47 40  lui $at, 0x4740
