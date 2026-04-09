; Function: is_behind_surface
; RAM: 0x8028A4EC  Size: 0x1D0

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x8028A4EC */  addiu $sp, $sp, -32
  /* 0x8028A4F0 */  sw $zero, 28($sp)
  /* 0x8028A4F4 */  lh $t6, 18($a1)
  /* 0x8028A4F8 */  lh $t7, 12($a1)
  /* 0x8028A4FC */  lh $t9, 26($a1)
  /* 0x8028A500 */  lh $t0, 20($a1)
  /* 0x8028A504 */  subu $t8, $t6, $t7
  /* 0x8028A508 */  lh $t7, 18($a1)
  /* 0x8028A50C */  subu $t1, $t9, $t0
  /* 0x8028A510 */  multu $t8, $t1
  /* 0x8028A514 */  lh $t6, 24($a1)
  /* 0x8028A518 */  lh $t3, 20($a1)
  /* 0x8028A51C */  lh $t4, 14($a1)
  /* 0x8028A520 */  subu $t9, $t6, $t7
  /* 0x8028A524 */  subu $t5, $t3, $t4
  /* 0x8028A528 */  mflo $t2
  /* 0x8028A52C */  nop
  /* 0x8028A530 */  nop
  /* 0x8028A534 */  multu $t5, $t9
  /* 0x8028A538 */  mflo $t0
  /* 0x8028A53C */  subu $t8, $t2, $t0
  /* 0x8028A540 */  mtc1 $t8, $f4
  /* 0x8028A544 */  nop
  /* 0x8028A548 */  cvt.s.w $f6, $f4
  /* 0x8028A54C */  swc1 $f6, 24($sp)
  /* 0x8028A550 */  lh $t1, 20($a1)
  /* 0x8028A554 */  lh $t3, 14($a1)
  /* 0x8028A558 */  lh $t6, 22($a1)
  /* 0x8028A55C */  lh $t7, 16($a1)
  /* 0x8028A560 */  subu $t4, $t1, $t3
  /* 0x8028A564 */  lh $t3, 20($a1)
  /* 0x8028A568 */  subu $t5, $t6, $t7
  /* 0x8028A56C */  multu $t4, $t5
  /* 0x8028A570 */  lh $t1, 26($a1)
  /* 0x8028A574 */  lh $t2, 16($a1)
  /* 0x8028A578 */  lh $t0, 10($a1)
  /* 0x8028A57C */  subu $t6, $t1, $t3
  /* 0x8028A580 */  subu $t8, $t2, $t0
  /* 0x8028A584 */  mflo $t9
  /* 0x8028A588 */  nop
  /* 0x8028A58C */  nop
  /* 0x8028A590 */  multu $t8, $t6
  /* 0x8028A594 */  mflo $t7
  /* 0x8028A598 */  subu $t4, $t9, $t7
  /* 0x8028A59C */  mtc1 $t4, $f8
  /* 0x8028A5A0 */  nop
  /* 0x8028A5A4 */  cvt.s.w $f10, $f8
  /* 0x8028A5A8 */  swc1 $f10, 20($sp)
  /* 0x8028A5AC */  lh $t5, 16($a1)
  /* 0x8028A5B0 */  lh $t2, 10($a1)
  /* 0x8028A5B4 */  lh $t1, 24($a1)
  /* 0x8028A5B8 */  lh $t3, 18($a1)
  /* 0x8028A5BC */  subu $t0, $t5, $t2
  /* 0x8028A5C0 */  lh $t2, 16($a1)
  /* 0x8028A5C4 */  subu $t8, $t1, $t3
  /* 0x8028A5C8 */  multu $t0, $t8
  /* 0x8028A5CC */  lh $t5, 22($a1)
  /* 0x8028A5D0 */  lh $t9, 18($a1)
  /* 0x8028A5D4 */  lh $t7, 12($a1)
  /* 0x8028A5D8 */  subu $t1, $t5, $t2
  /* 0x8028A5DC */  subu $t4, $t9, $t7
  /* 0x8028A5E0 */  mflo $t6
  /* 0x8028A5E4 */  nop
  /* 0x8028A5E8 */  nop
  /* 0x8028A5EC */  multu $t4, $t1
  /* 0x8028A5F0 */  mflo $t3
  /* 0x8028A5F4 */  subu $t0, $t6, $t3
  /* 0x8028A5F8 */  mtc1 $t0, $f16
  /* 0x8028A5FC */  nop
  /* 0x8028A600 */  cvt.s.w $f18, $f16
  /* 0x8028A604 */  swc1 $f18, 16($sp)
  /* 0x8028A608 */  lh $t8, 10($a1)
  /* 0x8028A60C */  lwc1 $f8, 0($a0)
  /* 0x8028A610 */  mtc1 $t8, $f4
  /* 0x8028A614 */  nop  ; <-- CHANGED
  /* 0x8028A618 */  cvt.s.w $f6, $f4
  /* 0x8028A61C */  sub.s $f10, $f6, $f8
  /* 0x8028A620 */  swc1 $f10, 12($sp)
  /* 0x8028A624 */  lh $t9, 12($a1)
  /* 0x8028A628 */  lwc1 $f4, 4($a0)
  /* 0x8028A62C */  mtc1 $t9, $f16
  /* 0x8028A630 */  nop  ; <-- CHANGED
  /* 0x8028A634 */  cvt.s.w $f18, $f16
  /* 0x8028A638 */  sub.s $f6, $f18, $f4
  /* 0x8028A63C */  swc1 $f6, 8($sp)
  /* 0x8028A640 */  lh $t7, 14($a1)
  /* 0x8028A644 */  lwc1 $f16, 8($a0)
  /* 0x8028A648 */  mtc1 $t7, $f8
  /* 0x8028A64C */  nop  ; <-- CHANGED
  /* 0x8028A650 */  cvt.s.w $f10, $f8
  /* 0x8028A654 */  sub.s $f18, $f10, $f16
  /* 0x8028A658 */  swc1 $f18, 4($sp)
  /* 0x8028A65C */  lwc1 $f4, 12($sp)
  /* 0x8028A660 */  lwc1 $f6, 24($sp)
  /* 0x8028A664 */  lwc1 $f10, 8($sp)
  /* 0x8028A668 */  lwc1 $f16, 20($sp)
  /* 0x8028A66C */  mul.s $f8, $f4, $f6
  /* 0x8028A670 */  lwc1 $f6, 4($sp)
  /* 0x8028A674 */  mul.s $f18, $f10, $f16
  /* 0x8028A678 */  lwc1 $f10, 16($sp)
  /* 0x8028A67C */  mul.s $f16, $f6, $f10
  /* 0x8028A680 */  add.s $f4, $f8, $f18
  /* 0x8028A684 */  mtc1 $zero, $f18
  /* 0x8028A688 */  add.s $f8, $f4, $f16
  /* 0x8028A68C */  c.lt.s $f8, $f18
  /* 0x8028A690 */  nop
  /* 0x8028A694 */  bc1f .is_behind_surface_L8028A6A4
  /* 0x8028A698 */  nop
  /* 0x8028A69C */  li $t5, 1
  /* 0x8028A6A0 */  sw $t5, 28($sp)
.is_behind_surface_L8028A6A4:
  /* 0x8028A6A4 */  b .is_behind_surface_L8028A6B4
  /* 0x8028A6A8 */  lw $v0, 28($sp)
  /* 0x8028A6AC */  b .is_behind_surface_L8028A6B4
  /* 0x8028A6B0 */  nop
.is_behind_surface_L8028A6B4:
  /* 0x8028A6B4 */  jr $ra
  /* 0x8028A6B8 */  addiu $sp, $sp, 32
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x8028A4EC */  addiu $sp, $sp, -32
  /* 0x8028A4F0 */  sw $zero, 28($sp)
  /* 0x8028A4F4 */  lh $t6, 18($a1)
  /* 0x8028A4F8 */  lh $t7, 12($a1)
  /* 0x8028A4FC */  lh $t9, 26($a1)
  /* 0x8028A500 */  lh $t0, 20($a1)
  /* 0x8028A504 */  subu $t8, $t6, $t7
  /* 0x8028A508 */  lh $t7, 18($a1)
  /* 0x8028A50C */  subu $t1, $t9, $t0
  /* 0x8028A510 */  multu $t8, $t1
  /* 0x8028A514 */  lh $t6, 24($a1)
  /* 0x8028A518 */  lh $t3, 20($a1)
  /* 0x8028A51C */  lh $t4, 14($a1)
  /* 0x8028A520 */  subu $t9, $t6, $t7
  /* 0x8028A524 */  subu $t5, $t3, $t4
  /* 0x8028A528 */  mflo $t2
  /* 0x8028A52C */  nop
  /* 0x8028A530 */  nop
  /* 0x8028A534 */  multu $t5, $t9
  /* 0x8028A538 */  mflo $t0
  /* 0x8028A53C */  subu $t8, $t2, $t0
  /* 0x8028A540 */  mtc1 $t8, $f4
  /* 0x8028A544 */  nop
  /* 0x8028A548 */  cvt.s.w $f6, $f4
  /* 0x8028A54C */  swc1 $f6, 24($sp)
  /* 0x8028A550 */  lh $t1, 20($a1)
  /* 0x8028A554 */  lh $t3, 14($a1)
  /* 0x8028A558 */  lh $t6, 22($a1)
  /* 0x8028A55C */  lh $t7, 16($a1)
  /* 0x8028A560 */  subu $t4, $t1, $t3
  /* 0x8028A564 */  lh $t3, 20($a1)
  /* 0x8028A568 */  subu $t5, $t6, $t7
  /* 0x8028A56C */  multu $t4, $t5
  /* 0x8028A570 */  lh $t1, 26($a1)
  /* 0x8028A574 */  lh $t2, 16($a1)
  /* 0x8028A578 */  lh $t0, 10($a1)
  /* 0x8028A57C */  subu $t6, $t1, $t3
  /* 0x8028A580 */  subu $t8, $t2, $t0
  /* 0x8028A584 */  mflo $t9
  /* 0x8028A588 */  nop
  /* 0x8028A58C */  nop
  /* 0x8028A590 */  multu $t8, $t6
  /* 0x8028A594 */  mflo $t7
  /* 0x8028A598 */  subu $t4, $t9, $t7
  /* 0x8028A59C */  mtc1 $t4, $f8
  /* 0x8028A5A0 */  nop
  /* 0x8028A5A4 */  cvt.s.w $f10, $f8
  /* 0x8028A5A8 */  swc1 $f10, 20($sp)
  /* 0x8028A5AC */  lh $t5, 16($a1)
  /* 0x8028A5B0 */  lh $t2, 10($a1)
  /* 0x8028A5B4 */  lh $t1, 24($a1)
  /* 0x8028A5B8 */  lh $t3, 18($a1)
  /* 0x8028A5BC */  subu $t0, $t5, $t2
  /* 0x8028A5C0 */  lh $t2, 16($a1)
  /* 0x8028A5C4 */  subu $t8, $t1, $t3
  /* 0x8028A5C8 */  multu $t0, $t8
  /* 0x8028A5CC */  lh $t5, 22($a1)
  /* 0x8028A5D0 */  lh $t9, 18($a1)
  /* 0x8028A5D4 */  lh $t7, 12($a1)
  /* 0x8028A5D8 */  subu $t1, $t5, $t2
  /* 0x8028A5DC */  subu $t4, $t9, $t7
  /* 0x8028A5E0 */  mflo $t6
  /* 0x8028A5E4 */  nop
  /* 0x8028A5E8 */  nop
  /* 0x8028A5EC */  multu $t4, $t1
  /* 0x8028A5F0 */  mflo $t3
  /* 0x8028A5F4 */  subu $t0, $t6, $t3
  /* 0x8028A5F8 */  mtc1 $t0, $f16
  /* 0x8028A5FC */  nop
  /* 0x8028A600 */  cvt.s.w $f18, $f16
  /* 0x8028A604 */  swc1 $f18, 16($sp)
  /* 0x8028A608 */  lh $t8, 10($a1)
  /* 0x8028A60C */  lwc1 $f8, 0($a0)
  /* 0x8028A610 */  mtc1 $t8, $f4
  /* 0x8028A614 */  div.s $f8, $f8, $f20  ; <-- CHANGED
  /* 0x8028A618 */  cvt.s.w $f6, $f4
  /* 0x8028A61C */  sub.s $f10, $f6, $f8
  /* 0x8028A620 */  swc1 $f10, 12($sp)
  /* 0x8028A624 */  lh $t9, 12($a1)
  /* 0x8028A628 */  lwc1 $f4, 4($a0)
  /* 0x8028A62C */  mtc1 $t9, $f16
  /* 0x8028A630 */  div.s $f4, $f4, $f20  ; <-- CHANGED
  /* 0x8028A634 */  cvt.s.w $f18, $f16
  /* 0x8028A638 */  sub.s $f6, $f18, $f4
  /* 0x8028A63C */  swc1 $f6, 8($sp)
  /* 0x8028A640 */  lh $t7, 14($a1)
  /* 0x8028A644 */  lwc1 $f16, 8($a0)
  /* 0x8028A648 */  mtc1 $t7, $f8
  /* 0x8028A64C */  div.s $f16, $f16, $f20  ; <-- CHANGED
  /* 0x8028A650 */  cvt.s.w $f10, $f8
  /* 0x8028A654 */  sub.s $f18, $f10, $f16
  /* 0x8028A658 */  swc1 $f18, 4($sp)
  /* 0x8028A65C */  lwc1 $f4, 12($sp)
  /* 0x8028A660 */  lwc1 $f6, 24($sp)
  /* 0x8028A664 */  lwc1 $f10, 8($sp)
  /* 0x8028A668 */  lwc1 $f16, 20($sp)
  /* 0x8028A66C */  mul.s $f8, $f4, $f6
  /* 0x8028A670 */  lwc1 $f6, 4($sp)
  /* 0x8028A674 */  mul.s $f18, $f10, $f16
  /* 0x8028A678 */  lwc1 $f10, 16($sp)
  /* 0x8028A67C */  mul.s $f16, $f6, $f10
  /* 0x8028A680 */  add.s $f4, $f8, $f18
  /* 0x8028A684 */  mtc1 $zero, $f18
  /* 0x8028A688 */  add.s $f8, $f4, $f16
  /* 0x8028A68C */  c.lt.s $f8, $f18
  /* 0x8028A690 */  nop
  /* 0x8028A694 */  bc1f .is_behind_surface_L8028A6A4
  /* 0x8028A698 */  nop
  /* 0x8028A69C */  li $t5, 1
  /* 0x8028A6A0 */  sw $t5, 28($sp)
.is_behind_surface_L8028A6A4:
  /* 0x8028A6A4 */  b .is_behind_surface_L8028A6B4
  /* 0x8028A6A8 */  lw $v0, 28($sp)
  /* 0x8028A6AC */  b .is_behind_surface_L8028A6B4
  /* 0x8028A6B0 */  nop
.is_behind_surface_L8028A6B4:
  /* 0x8028A6B4 */  jr $ra
  /* 0x8028A6B8 */  addiu $sp, $sp, 32
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x8028A614:
  ;   was: 00 00 00 00  nop
  ;   new: 46 14 42 03  div.s $f8, $f8, $f20
  ; 0x8028A630:
  ;   was: 00 00 00 00  nop
  ;   new: 46 14 21 03  div.s $f4, $f4, $f20
  ; 0x8028A64C:
  ;   was: 00 00 00 00  nop
  ;   new: 46 14 84 03  div.s $f16, $f16, $f20
