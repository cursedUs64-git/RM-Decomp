; Function: rm_load_area_hook  (custom)
; RAM: 0x80403700  Size: 0x58  ROM: 0x1203700
; Identical in both ROMs: False

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x80403700 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80403704 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80403708 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040370C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80403710 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80403714 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80403718 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040371C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80403720 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80403724 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80403728 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040372C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80403730 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80403734 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80403738 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040373C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80403740 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80403744 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80403748 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040374C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80403750 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80403754 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x80403700 */  addiu $sp, $sp, -24  ; <-- CHANGED
  /* 0x80403704 */  sw $ra, 20($sp)  ; <-- CHANGED
  /* 0x80403708 */  sll $a0, $a0, 4  ; <-- CHANGED
  /* 0x8040370C */  sw $a0, 16($sp)  ; <-- CHANGED
  /* 0x80403710 */  jal 0x80277F50  ; <-- CHANGED
  /* 0x80403714 */  lui $a0, 0x1900  ; <-- CHANGED
  /* 0x80403718 */  lw $a0, 16($sp)  ; <-- CHANGED
  /* 0x8040371C */  lw $t1, 24572($v0)  ; <-- CHANGED
  /* 0x80403720 */  add $v0, $v0, $a0  ; <-- CHANGED
  /* 0x80403724 */  lui $a0, 0x8042  ; <-- CHANGED
  /* 0x80403728 */  lui $t2, 0x4BC9  ; <-- CHANGED
  /* 0x8040372C */  ori $t2, $t2, 0x189A  ; <-- CHANGED
  /* 0x80403730 */  bne $t1, $t2, .rm_load_area_hook_L80403744  ; <-- CHANGED
  /* 0x80403734 */  nop  ; <-- CHANGED
  /* 0x80403738 */  lw $a1, 24320($v0)  ; <-- CHANGED
  /* 0x8040373C */  jal 0x80278504  ; <-- CHANGED
  /* 0x80403740 */  lw $a2, 24324($v0)  ; <-- CHANGED
.rm_load_area_hook_L80403744:
  /* 0x80403744 */  lui $t6, 0x8033  ; <-- CHANGED
  /* 0x80403748 */  lw $t6, -8756($t6)  ; <-- CHANGED
  /* 0x8040374C */  lw $ra, 20($sp)  ; <-- CHANGED
  /* 0x80403750 */  jr $ra  ; <-- CHANGED
  /* 0x80403754 */  addiu $sp, $sp, 24  ; <-- CHANGED
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x80403700:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 27 BD FF E8  addiu $sp, $sp, -24
  ; 0x80403704:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: AF BF 00 14  sw $ra, 20($sp)
  ; 0x80403708:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 04 21 00  sll $a0, $a0, 4
  ; 0x8040370C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: AF A4 00 10  sw $a0, 16($sp)
  ; 0x80403710:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 0C 09 DF D4  jal 0x80277F50
  ; 0x80403714:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 04 19 00  lui $a0, 0x1900
  ; 0x80403718:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F A4 00 10  lw $a0, 16($sp)
  ; 0x8040371C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 49 5F FC  lw $t1, 24572($v0)
  ; 0x80403720:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 44 10 20  add $v0, $v0, $a0
  ; 0x80403724:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 04 80 42  lui $a0, 0x8042
  ; 0x80403728:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 0A 4B C9  lui $t2, 0x4BC9
  ; 0x8040372C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 35 4A 18 9A  ori $t2, $t2, 0x189A
  ; 0x80403730:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 15 2A 00 04  bne $t1, $t2, .rm_load_area_hook_L80403744
  ; 0x80403734:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 00 00 00  nop
  ; 0x80403738:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 45 5F 00  lw $a1, 24320($v0)
  ; 0x8040373C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 0C 09 E1 41  jal 0x80278504
  ; 0x80403740:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 46 5F 04  lw $a2, 24324($v0)
  ; 0x80403744:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 0E 80 33  lui $t6, 0x8033
  ; 0x80403748:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8D CE DD CC  lw $t6, -8756($t6)
  ; 0x8040374C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F BF 00 14  lw $ra, 20($sp)
  ; 0x80403750:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 03 E0 00 08  jr $ra
  ; 0x80403754:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 27 BD 00 18  addiu $sp, $sp, 24
