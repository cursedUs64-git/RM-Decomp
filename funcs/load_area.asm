; Function: load_area
; RAM: 0x8027AE44  Size: 0x104

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x8027AE44 */  addiu $sp, $sp, -24
  /* 0x8027AE48 */  sw $ra, 20($sp)
  /* 0x8027AE4C */  sw $a0, 24($sp)
  /* 0x8027AE50 */  lui $t6, 0x8033  ; <-- CHANGED
  /* 0x8027AE54 */  lw $t6, -8756($t6)  ; <-- CHANGED
  /* 0x8027AE58 */  bne $t6, $zero, .load_area_L8027AF30
  /* 0x8027AE5C */  nop
  /* 0x8027AE60 */  lw $t7, 24($sp)
  /* 0x8027AE64 */  lui $t9, 0x8034
  /* 0x8027AE68 */  sll $t8, $t7, 4
  /* 0x8027AE6C */  subu $t8, $t8, $t7
  /* 0x8027AE70 */  sll $t8, $t8, 2
  /* 0x8027AE74 */  addu $t9, $t9, $t8
  /* 0x8027AE78 */  lw $t9, -18220($t9)
  /* 0x8027AE7C */  beq $t9, $zero, .load_area_L8027AF30
  /* 0x8027AE80 */  nop
  /* 0x8027AE84 */  lw $t0, 24($sp)
  /* 0x8027AE88 */  lui $t2, 0x8034
  /* 0x8027AE8C */  addiu $t2, $t2, -18224
  /* 0x8027AE90 */  sll $t1, $t0, 4
  /* 0x8027AE94 */  subu $t1, $t1, $t0
  /* 0x8027AE98 */  sll $t1, $t1, 2
  /* 0x8027AE9C */  addu $t3, $t1, $t2
  /* 0x8027AEA0 */  lui $at, 0x8033
  /* 0x8027AEA4 */  sw $t3, -8756($at)
  /* 0x8027AEA8 */  lui $t4, 0x8033
  /* 0x8027AEAC */  lw $t4, -8756($t4)
  /* 0x8027AEB0 */  lui $at, 0x8034
  /* 0x8027AEB4 */  lb $t5, 0($t4)
  /* 0x8027AEB8 */  sh $t5, -17718($at)
  /* 0x8027AEBC */  lui $t6, 0x8033
  /* 0x8027AEC0 */  lw $t6, -8756($t6)
  /* 0x8027AEC4 */  lw $t7, 8($t6)
  /* 0x8027AEC8 */  beq $t7, $zero, .load_area_L8027AEEC
  /* 0x8027AECC */  nop
  /* 0x8027AED0 */  lui $t8, 0x8033
  /* 0x8027AED4 */  lw $t8, -8756($t8)
  /* 0x8027AED8 */  lw $a0, 24($sp)
  /* 0x8027AEDC */  lw $a1, 8($t8)
  /* 0x8027AEE0 */  lw $a2, 12($t8)
  /* 0x8027AEE4 */  jal 0x803833B8
  /* 0x8027AEE8 */  lw $a3, 16($t8)
.load_area_L8027AEEC:
  /* 0x8027AEEC */  lui $t9, 0x8033
  /* 0x8027AEF0 */  lw $t9, -8756($t9)
  /* 0x8027AEF4 */  lw $t0, 32($t9)
  /* 0x8027AEF8 */  beq $t0, $zero, .load_area_L8027AF14
  /* 0x8027AEFC */  nop
  /* 0x8027AF00 */  lui $t1, 0x8033
  /* 0x8027AF04 */  lw $t1, -8756($t1)
  /* 0x8027AF08 */  move $a0, $zero
  /* 0x8027AF0C */  jal 0x8029CFB0
  /* 0x8027AF10 */  lw $a1, 32($t1)
.load_area_L8027AF14:
  /* 0x8027AF14 */  jal 0x8027AA74
  /* 0x8027AF18 */  nop
  /* 0x8027AF1C */  lui $t2, 0x8033
  /* 0x8027AF20 */  lw $t2, -8756($t2)
  /* 0x8027AF24 */  li $a1, 3
  /* 0x8027AF28 */  jal 0x8037C360
  /* 0x8027AF2C */  lw $a0, 4($t2)
.load_area_L8027AF30:
  /* 0x8027AF30 */  b .load_area_L8027AF38
  /* 0x8027AF34 */  nop
.load_area_L8027AF38:
  /* 0x8027AF38 */  lw $ra, 20($sp)
  /* 0x8027AF3C */  addiu $sp, $sp, 24
  /* 0x8027AF40 */  jr $ra
  /* 0x8027AF44 */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x8027AE44 */  addiu $sp, $sp, -24
  /* 0x8027AE48 */  sw $ra, 20($sp)
  /* 0x8027AE4C */  sw $a0, 24($sp)
  /* 0x8027AE50 */  jal 0x80403700  ; <-- CHANGED
  /* 0x8027AE54 */  nop  ; <-- CHANGED
  /* 0x8027AE58 */  bne $t6, $zero, .load_area_L8027AF30
  /* 0x8027AE5C */  nop
  /* 0x8027AE60 */  lw $t7, 24($sp)
  /* 0x8027AE64 */  lui $t9, 0x8034
  /* 0x8027AE68 */  sll $t8, $t7, 4
  /* 0x8027AE6C */  subu $t8, $t8, $t7
  /* 0x8027AE70 */  sll $t8, $t8, 2
  /* 0x8027AE74 */  addu $t9, $t9, $t8
  /* 0x8027AE78 */  lw $t9, -18220($t9)
  /* 0x8027AE7C */  beq $t9, $zero, .load_area_L8027AF30
  /* 0x8027AE80 */  nop
  /* 0x8027AE84 */  lw $t0, 24($sp)
  /* 0x8027AE88 */  lui $t2, 0x8034
  /* 0x8027AE8C */  addiu $t2, $t2, -18224
  /* 0x8027AE90 */  sll $t1, $t0, 4
  /* 0x8027AE94 */  subu $t1, $t1, $t0
  /* 0x8027AE98 */  sll $t1, $t1, 2
  /* 0x8027AE9C */  addu $t3, $t1, $t2
  /* 0x8027AEA0 */  lui $at, 0x8033
  /* 0x8027AEA4 */  sw $t3, -8756($at)
  /* 0x8027AEA8 */  lui $t4, 0x8033
  /* 0x8027AEAC */  lw $t4, -8756($t4)
  /* 0x8027AEB0 */  lui $at, 0x8034
  /* 0x8027AEB4 */  lb $t5, 0($t4)
  /* 0x8027AEB8 */  sh $t5, -17718($at)
  /* 0x8027AEBC */  lui $t6, 0x8033
  /* 0x8027AEC0 */  lw $t6, -8756($t6)
  /* 0x8027AEC4 */  lw $t7, 8($t6)
  /* 0x8027AEC8 */  beq $t7, $zero, .load_area_L8027AEEC
  /* 0x8027AECC */  nop
  /* 0x8027AED0 */  lui $t8, 0x8033
  /* 0x8027AED4 */  lw $t8, -8756($t8)
  /* 0x8027AED8 */  lw $a0, 24($sp)
  /* 0x8027AEDC */  lw $a1, 8($t8)
  /* 0x8027AEE0 */  lw $a2, 12($t8)
  /* 0x8027AEE4 */  jal 0x803833B8
  /* 0x8027AEE8 */  lw $a3, 16($t8)
.load_area_L8027AEEC:
  /* 0x8027AEEC */  lui $t9, 0x8033
  /* 0x8027AEF0 */  lw $t9, -8756($t9)
  /* 0x8027AEF4 */  lw $t0, 32($t9)
  /* 0x8027AEF8 */  beq $t0, $zero, .load_area_L8027AF14
  /* 0x8027AEFC */  nop
  /* 0x8027AF00 */  lui $t1, 0x8033
  /* 0x8027AF04 */  lw $t1, -8756($t1)
  /* 0x8027AF08 */  move $a0, $zero
  /* 0x8027AF0C */  jal 0x8029CFB0
  /* 0x8027AF10 */  lw $a1, 32($t1)
.load_area_L8027AF14:
  /* 0x8027AF14 */  jal 0x8027AA74
  /* 0x8027AF18 */  nop
  /* 0x8027AF1C */  lui $t2, 0x8033
  /* 0x8027AF20 */  lw $t2, -8756($t2)
  /* 0x8027AF24 */  li $a1, 3
  /* 0x8027AF28 */  jal 0x8037C360
  /* 0x8027AF2C */  lw $a0, 4($t2)
.load_area_L8027AF30:
  /* 0x8027AF30 */  b .load_area_L8027AF38
  /* 0x8027AF34 */  nop
.load_area_L8027AF38:
  /* 0x8027AF38 */  lw $ra, 20($sp)
  /* 0x8027AF3C */  addiu $sp, $sp, 24
  /* 0x8027AF40 */  jr $ra
  /* 0x8027AF44 */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x8027AE50:
  ;   was: 3C 0E 80 33  lui $t6, 0x8033
  ;   new: 0C 10 0D C0  jal 0x80403700
  ; 0x8027AE54:
  ;   was: 8D CE DD CC  lw $t6, -8756($t6)
  ;   new: 00 00 00 00  nop
