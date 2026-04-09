; Function: find_floor_from_list
; RAM: 0x8038156C  Size: 0x228

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x8038156C */  addiu $sp, $sp, -56
  /* 0x80381570 */  sw $zero, 4($sp)
  /* 0x80381574 */  beq $a0, $zero, .find_floor_from_list_L8038177C
  /* 0x80381578 */  nop
.find_floor_from_list_L8038157C:
  /* 0x8038157C */  lw $t0, 4($a0)
  /* 0x80381580 */  lw $a0, 0($a0)
  /* 0x80381584 */  lh $t1, 10($t0)
  /* 0x80381588 */  lh $t2, 14($t0)
  /* 0x8038158C */  lh $t3, 16($t0)
  /* 0x80381590 */  lh $t4, 20($t0)
  /* 0x80381594 */  subu $t6, $t2, $a3
  /* 0x80381598 */  subu $t7, $t3, $t1
  /* 0x8038159C */  multu $t6, $t7
  /* 0x803815A0 */  subu $t6, $t4, $t2
  /* 0x803815A4 */  subu $t9, $t1, $a1
  /* 0x803815A8 */  mflo $t8
  /* 0x803815AC */  nop
  /* 0x803815B0 */  nop
  /* 0x803815B4 */  multu $t9, $t6
  /* 0x803815B8 */  mflo $t7
  /* 0x803815BC */  subu $t9, $t8, $t7
  /* 0x803815C0 */  bgez $t9, .find_floor_from_list_L803815D0
  /* 0x803815C4 */  nop
  /* 0x803815C8 */  b .find_floor_from_list_L80381774
  /* 0x803815CC */  nop
.find_floor_from_list_L803815D0:
  /* 0x803815D0 */  lh $t5, 22($t0)
  /* 0x803815D4 */  lh $t6, 26($t0)
  /* 0x803815D8 */  sw $t6, 28($sp)
  /* 0x803815DC */  subu $t8, $t4, $a3
  /* 0x803815E0 */  subu $t7, $t5, $t3
  /* 0x803815E4 */  multu $t8, $t7
  /* 0x803815E8 */  lw $t8, 28($sp)
  /* 0x803815EC */  subu $t6, $t3, $a1
  /* 0x803815F0 */  subu $t7, $t8, $t4
  /* 0x803815F4 */  mflo $t9
  /* 0x803815F8 */  nop
  /* 0x803815FC */  nop
  /* 0x80381600 */  multu $t6, $t7
  /* 0x80381604 */  mflo $t8
  /* 0x80381608 */  subu $t6, $t9, $t8
  /* 0x8038160C */  bgez $t6, .find_floor_from_list_L8038161C
  /* 0x80381610 */  nop
  /* 0x80381614 */  b .find_floor_from_list_L80381774
  /* 0x80381618 */  nop
.find_floor_from_list_L8038161C:
  /* 0x8038161C */  lw $t7, 28($sp)
  /* 0x80381620 */  subu $t8, $t1, $t5
  /* 0x80381624 */  subu $t9, $t7, $a3
  /* 0x80381628 */  multu $t9, $t8
  /* 0x8038162C */  subu $t9, $t5, $a1
  /* 0x80381630 */  subu $t8, $t2, $t7
  /* 0x80381634 */  mflo $t6
  /* 0x80381638 */  nop
  /* 0x8038163C */  nop
  /* 0x80381640 */  multu $t9, $t8
  /* 0x80381644 */  mflo $t7
  /* 0x80381648 */  subu $t9, $t6, $t7
  /* 0x8038164C */  bgez $t9, .find_floor_from_list_L8038165C
  /* 0x80381650 */  nop
  /* 0x80381654 */  b .find_floor_from_list_L80381774
  /* 0x80381658 */  nop
.find_floor_from_list_L8038165C:
  /* 0x8038165C */  lui $t8, 0x8036
  /* 0x80381660 */  lh $t8, 4480($t8)
  /* 0x80381664 */  beq $t8, $zero, .find_floor_from_list_L8038168C
  /* 0x80381668 */  nop
  /* 0x8038166C */  lb $t6, 4($t0)
  /* 0x80381670 */  andi $t7, $t6, 0x2
  /* 0x80381674 */  beq $t7, $zero, .find_floor_from_list_L80381684
  /* 0x80381678 */  nop
  /* 0x8038167C */  b .find_floor_from_list_L80381774
  /* 0x80381680 */  nop
.find_floor_from_list_L80381684:
  /* 0x80381684 */  b .find_floor_from_list_L803816A4
  /* 0x80381688 */  nop
.find_floor_from_list_L8038168C:
  /* 0x8038168C */  lh $t9, 0($t0)
  /* 0x80381690 */  li $at, 114
  /* 0x80381694 */  bne $t9, $at, .find_floor_from_list_L803816A4
  /* 0x80381698 */  nop
  /* 0x8038169C */  b .find_floor_from_list_L80381774
  /* 0x803816A0 */  nop
.find_floor_from_list_L803816A4:
  /* 0x803816A4 */  lwc1 $f4, 28($t0)
  /* 0x803816A8 */  swc1 $f4, 24($sp)
  /* 0x803816AC */  lwc1 $f6, 32($t0)
  /* 0x803816B0 */  swc1 $f6, 20($sp)
  /* 0x803816B4 */  lwc1 $f8, 36($t0)
  /* 0x803816B8 */  swc1 $f8, 16($sp)
  /* 0x803816BC */  lwc1 $f10, 40($t0)
  /* 0x803816C0 */  swc1 $f10, 12($sp)
  /* 0x803816C4 */  lwc1 $f16, 20($sp)
  /* 0x803816C8 */  mtc1 $zero, $f18
  /* 0x803816CC */  nop
  /* 0x803816D0 */  c.eq.s $f16, $f18
  /* 0x803816D4 */  nop
  /* 0x803816D8 */  bc1f .find_floor_from_list_L803816E8
  /* 0x803816DC */  nop
  /* 0x803816E0 */  b .find_floor_from_list_L80381774
  /* 0x803816E4 */  nop
.find_floor_from_list_L803816E8:
  /* 0x803816E8 */  mtc1 $a1, $f4
  /* 0x803816EC */  mtc1 $a3, $f18
  /* 0x803816F0 */  lwc1 $f8, 24($sp)
  /* 0x803816F4 */  cvt.s.w $f6, $f4
  /* 0x803816F8 */  lwc1 $f16, 16($sp)
  /* 0x803816FC */  cvt.s.w $f4, $f18
  /* 0x80381700 */  mul.s $f10, $f6, $f8
  /* 0x80381704 */  lwc1 $f18, 12($sp)
  /* 0x80381708 */  mul.s $f6, $f16, $f4
  /* 0x8038170C */  add.s $f8, $f10, $f6
  /* 0x80381710 */  lwc1 $f10, 20($sp)
  /* 0x80381714 */  add.s $f16, $f8, $f18
  /* 0x80381718 */  neg.s $f4, $f16
  /* 0x8038171C */  div.s $f6, $f4, $f10
  /* 0x80381720 */  swc1 $f6, 8($sp)  ; <-- CHANGED
  /* 0x80381724 */  mtc1 $a2, $f4  ; <-- CHANGED
  /* 0x80381728 */  lui $at, 0xC29C  ; <-- CHANGED
  /* 0x8038172C */  mtc1 $at, $f18  ; <-- CHANGED
  /* 0x80381730 */  lwc1 $f8, 8($sp)  ; <-- CHANGED
  /* 0x80381734 */  cvt.s.w $f10, $f4  ; <-- CHANGED
  /* 0x80381738 */  add.s $f16, $f8, $f18  ; <-- CHANGED
  /* 0x8038173C */  mtc1 $zero, $f8  ; <-- CHANGED
  /* 0x80381740 */  sub.s $f6, $f10, $f16  ; <-- CHANGED
  /* 0x80381744 */  c.lt.s $f6, $f8  ; <-- CHANGED
  /* 0x80381748 */  nop  ; <-- CHANGED
  /* 0x8038174C */  bc1f .find_floor_from_list_L8038175C  ; <-- CHANGED
  /* 0x80381750 */  nop  ; <-- CHANGED
  /* 0x80381754 */  b .find_floor_from_list_L80381774  ; <-- CHANGED
  /* 0x80381758 */  nop  ; <-- CHANGED
.find_floor_from_list_L8038175C:
  /* 0x8038175C */  lwc1 $f18, 8($sp)
  /* 0x80381760 */  lw $t8, 72($sp)
  /* 0x80381764 */  swc1 $f18, 0($t8)
  /* 0x80381768 */  sw $t0, 4($sp)
  /* 0x8038176C */  b .find_floor_from_list_L8038177C
  /* 0x80381770 */  nop
.find_floor_from_list_L80381774:
  /* 0x80381774 */  bne $a0, $zero, .find_floor_from_list_L8038157C
  /* 0x80381778 */  nop
.find_floor_from_list_L8038177C:
  /* 0x8038177C */  b .find_floor_from_list_L8038178C
  /* 0x80381780 */  lw $v0, 4($sp)
  /* 0x80381784 */  b .find_floor_from_list_L8038178C
  /* 0x80381788 */  nop
.find_floor_from_list_L8038178C:
  /* 0x8038178C */  jr $ra
  /* 0x80381790 */  addiu $sp, $sp, 56
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x8038156C */  addiu $sp, $sp, -56
  /* 0x80381570 */  sw $zero, 4($sp)
  /* 0x80381574 */  beq $a0, $zero, .find_floor_from_list_L8038177C
  /* 0x80381578 */  nop
.find_floor_from_list_L8038157C:
  /* 0x8038157C */  lw $t0, 4($a0)
  /* 0x80381580 */  lw $a0, 0($a0)
  /* 0x80381584 */  lh $t1, 10($t0)
  /* 0x80381588 */  lh $t2, 14($t0)
  /* 0x8038158C */  lh $t3, 16($t0)
  /* 0x80381590 */  lh $t4, 20($t0)
  /* 0x80381594 */  subu $t6, $t2, $a3
  /* 0x80381598 */  subu $t7, $t3, $t1
  /* 0x8038159C */  multu $t6, $t7
  /* 0x803815A0 */  subu $t6, $t4, $t2
  /* 0x803815A4 */  subu $t9, $t1, $a1
  /* 0x803815A8 */  mflo $t8
  /* 0x803815AC */  nop
  /* 0x803815B0 */  nop
  /* 0x803815B4 */  multu $t9, $t6
  /* 0x803815B8 */  mflo $t7
  /* 0x803815BC */  subu $t9, $t8, $t7
  /* 0x803815C0 */  bgez $t9, .find_floor_from_list_L803815D0
  /* 0x803815C4 */  nop
  /* 0x803815C8 */  b .find_floor_from_list_L80381774
  /* 0x803815CC */  nop
.find_floor_from_list_L803815D0:
  /* 0x803815D0 */  lh $t5, 22($t0)
  /* 0x803815D4 */  lh $t6, 26($t0)
  /* 0x803815D8 */  sw $t6, 28($sp)
  /* 0x803815DC */  subu $t8, $t4, $a3
  /* 0x803815E0 */  subu $t7, $t5, $t3
  /* 0x803815E4 */  multu $t8, $t7
  /* 0x803815E8 */  lw $t8, 28($sp)
  /* 0x803815EC */  subu $t6, $t3, $a1
  /* 0x803815F0 */  subu $t7, $t8, $t4
  /* 0x803815F4 */  mflo $t9
  /* 0x803815F8 */  nop
  /* 0x803815FC */  nop
  /* 0x80381600 */  multu $t6, $t7
  /* 0x80381604 */  mflo $t8
  /* 0x80381608 */  subu $t6, $t9, $t8
  /* 0x8038160C */  bgez $t6, .find_floor_from_list_L8038161C
  /* 0x80381610 */  nop
  /* 0x80381614 */  b .find_floor_from_list_L80381774
  /* 0x80381618 */  nop
.find_floor_from_list_L8038161C:
  /* 0x8038161C */  lw $t7, 28($sp)
  /* 0x80381620 */  subu $t8, $t1, $t5
  /* 0x80381624 */  subu $t9, $t7, $a3
  /* 0x80381628 */  multu $t9, $t8
  /* 0x8038162C */  subu $t9, $t5, $a1
  /* 0x80381630 */  subu $t8, $t2, $t7
  /* 0x80381634 */  mflo $t6
  /* 0x80381638 */  nop
  /* 0x8038163C */  nop
  /* 0x80381640 */  multu $t9, $t8
  /* 0x80381644 */  mflo $t7
  /* 0x80381648 */  subu $t9, $t6, $t7
  /* 0x8038164C */  bgez $t9, .find_floor_from_list_L8038165C
  /* 0x80381650 */  nop
  /* 0x80381654 */  b .find_floor_from_list_L80381774
  /* 0x80381658 */  nop
.find_floor_from_list_L8038165C:
  /* 0x8038165C */  lui $t8, 0x8036
  /* 0x80381660 */  lh $t8, 4480($t8)
  /* 0x80381664 */  beq $t8, $zero, .find_floor_from_list_L8038168C
  /* 0x80381668 */  nop
  /* 0x8038166C */  lb $t6, 4($t0)
  /* 0x80381670 */  andi $t7, $t6, 0x2
  /* 0x80381674 */  beq $t7, $zero, .find_floor_from_list_L80381684
  /* 0x80381678 */  nop
  /* 0x8038167C */  b .find_floor_from_list_L80381774
  /* 0x80381680 */  nop
.find_floor_from_list_L80381684:
  /* 0x80381684 */  b .find_floor_from_list_L803816A4
  /* 0x80381688 */  nop
.find_floor_from_list_L8038168C:
  /* 0x8038168C */  lh $t9, 0($t0)
  /* 0x80381690 */  li $at, 114
  /* 0x80381694 */  bne $t9, $at, .find_floor_from_list_L803816A4
  /* 0x80381698 */  nop
  /* 0x8038169C */  b .find_floor_from_list_L80381774
  /* 0x803816A0 */  nop
.find_floor_from_list_L803816A4:
  /* 0x803816A4 */  lwc1 $f4, 28($t0)
  /* 0x803816A8 */  swc1 $f4, 24($sp)
  /* 0x803816AC */  lwc1 $f6, 32($t0)
  /* 0x803816B0 */  swc1 $f6, 20($sp)
  /* 0x803816B4 */  lwc1 $f8, 36($t0)
  /* 0x803816B8 */  swc1 $f8, 16($sp)
  /* 0x803816BC */  lwc1 $f10, 40($t0)
  /* 0x803816C0 */  swc1 $f10, 12($sp)
  /* 0x803816C4 */  lwc1 $f16, 20($sp)
  /* 0x803816C8 */  mtc1 $zero, $f18
  /* 0x803816CC */  nop
  /* 0x803816D0 */  c.eq.s $f16, $f18
  /* 0x803816D4 */  nop
  /* 0x803816D8 */  bc1f .find_floor_from_list_L803816E8
  /* 0x803816DC */  nop
  /* 0x803816E0 */  b .find_floor_from_list_L80381774
  /* 0x803816E4 */  nop
.find_floor_from_list_L803816E8:
  /* 0x803816E8 */  mtc1 $a1, $f4
  /* 0x803816EC */  mtc1 $a3, $f18
  /* 0x803816F0 */  lwc1 $f8, 24($sp)
  /* 0x803816F4 */  cvt.s.w $f6, $f4
  /* 0x803816F8 */  lwc1 $f16, 16($sp)
  /* 0x803816FC */  cvt.s.w $f4, $f18
  /* 0x80381700 */  mul.s $f10, $f6, $f8
  /* 0x80381704 */  lwc1 $f18, 12($sp)
  /* 0x80381708 */  mul.s $f6, $f16, $f4
  /* 0x8038170C */  add.s $f8, $f10, $f6
  /* 0x80381710 */  lwc1 $f10, 20($sp)
  /* 0x80381714 */  add.s $f16, $f8, $f18
  /* 0x80381718 */  neg.s $f4, $f16
  /* 0x8038171C */  div.s $f6, $f4, $f10
  /* 0x80381720 */  add.s $f6, $f6, $f6  ; <-- CHANGED
  /* 0x80381724 */  add.s $f6, $f6, $f6  ; <-- CHANGED
  /* 0x80381728 */  swc1 $f6, 8($sp)  ; <-- CHANGED
  /* 0x8038172C */  mtc1 $a2, $f4  ; <-- CHANGED
  /* 0x80381730 */  lui $at, 0xC29C  ; <-- CHANGED
  /* 0x80381734 */  mtc1 $at, $f18  ; <-- CHANGED
  /* 0x80381738 */  lwc1 $f8, 8($sp)  ; <-- CHANGED
  /* 0x8038173C */  cvt.s.w $f10, $f4  ; <-- CHANGED
  /* 0x80381740 */  add.s $f16, $f8, $f18  ; <-- CHANGED
  /* 0x80381744 */  mtc1 $zero, $f8  ; <-- CHANGED
  /* 0x80381748 */  sub.s $f6, $f10, $f16  ; <-- CHANGED
  /* 0x8038174C */  c.lt.s $f6, $f8  ; <-- CHANGED
  /* 0x80381750 */  bc1f .find_floor_from_list_L8038175C  ; <-- CHANGED
  /* 0x80381754 */  nop  ; <-- CHANGED
  /* 0x80381758 */  b .find_floor_from_list_L80381774  ; <-- CHANGED
.find_floor_from_list_L8038175C:
  /* 0x8038175C */  lwc1 $f18, 8($sp)
  /* 0x80381760 */  lw $t8, 72($sp)
  /* 0x80381764 */  swc1 $f18, 0($t8)
  /* 0x80381768 */  sw $t0, 4($sp)
  /* 0x8038176C */  b .find_floor_from_list_L8038177C
  /* 0x80381770 */  nop
.find_floor_from_list_L80381774:
  /* 0x80381774 */  bne $a0, $zero, .find_floor_from_list_L8038157C
  /* 0x80381778 */  nop
.find_floor_from_list_L8038177C:
  /* 0x8038177C */  b .find_floor_from_list_L8038178C
  /* 0x80381780 */  lw $v0, 4($sp)
  /* 0x80381784 */  b .find_floor_from_list_L8038178C
  /* 0x80381788 */  nop
.find_floor_from_list_L8038178C:
  /* 0x8038178C */  jr $ra
  /* 0x80381790 */  addiu $sp, $sp, 56
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x80381720:
  ;   was: E7 A6 00 08  swc1 $f6, 8($sp)
  ;   new: 46 06 31 80  add.s $f6, $f6, $f6
  ; 0x80381724:
  ;   was: 44 86 20 00  mtc1 $a2, $f4
  ;   new: 46 06 31 80  add.s $f6, $f6, $f6
  ; 0x80381728:
  ;   was: 3C 01 C2 9C  lui $at, 0xC29C
  ;   new: E7 A6 00 08  swc1 $f6, 8($sp)
  ; 0x8038172C:
  ;   was: 44 81 90 00  mtc1 $at, $f18
  ;   new: 44 86 20 00  mtc1 $a2, $f4
  ; 0x80381730:
  ;   was: C7 A8 00 08  lwc1 $f8, 8($sp)
  ;   new: 3C 01 C2 9C  lui $at, 0xC29C
  ; 0x80381734:
  ;   was: 46 80 22 A0  cvt.s.w $f10, $f4
  ;   new: 44 81 90 00  mtc1 $at, $f18
  ; 0x80381738:
  ;   was: 46 12 44 00  add.s $f16, $f8, $f18
  ;   new: C7 A8 00 08  lwc1 $f8, 8($sp)
  ; 0x8038173C:
  ;   was: 44 80 40 00  mtc1 $zero, $f8
  ;   new: 46 80 22 A0  cvt.s.w $f10, $f4
  ; 0x80381740:
  ;   was: 46 10 51 81  sub.s $f6, $f10, $f16
  ;   new: 46 12 44 00  add.s $f16, $f8, $f18
  ; 0x80381744:
  ;   was: 46 08 30 3C  c.lt.s $f6, $f8
  ;   new: 44 80 40 00  mtc1 $zero, $f8
  ; 0x80381748:
  ;   was: 00 00 00 00  nop
  ;   new: 46 10 51 81  sub.s $f6, $f10, $f16
  ; 0x8038174C:
  ;   was: 45 00 00 03  bc1f .find_floor_from_list_L8038175C
  ;   new: 46 08 30 3C  c.lt.s $f6, $f8
  ; 0x80381750:
  ;   was: 00 00 00 00  nop
  ;   new: 45 00 00 02  bc1f .find_floor_from_list_L8038175C
  ; 0x80381754:
  ;   was: 10 00 00 07  b .find_floor_from_list_L80381774
  ;   new: 00 00 00 00  nop
  ; 0x80381758:
  ;   was: 00 00 00 00  nop
  ;   new: 10 00 00 06  b .find_floor_from_list_L80381774
