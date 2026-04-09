; Function: end_master_display_list
; RAM: 0x80247D14  Size: 0xA0

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x80247D14 */  addiu $sp, $sp, -32
  /* 0x80247D18 */  sw $ra, 20($sp)
  /* 0x80247D1C */  jal 0x8024784C  ; <-- CHANGED
  /* 0x80247D20 */  nop
  /* 0x80247D24 */  lui $t6, 0x8033
  /* 0x80247D28 */  lb $t6, -10860($t6)
  /* 0x80247D2C */  beq $t6, $zero, .end_master_display_list_L80247D3C
  /* 0x80247D30 */  nop
  /* 0x80247D34 */  jal 0x8027F460
  /* 0x80247D38 */  nop
.end_master_display_list_L80247D3C:
  /* 0x80247D3C */  lui $t7, 0x8034
  /* 0x80247D40 */  lw $t7, -20372($t7)
  /* 0x80247D44 */  lui $at, 0x8034
  /* 0x80247D48 */  addiu $t8, $t7, 8
  /* 0x80247D4C */  sw $t8, -20372($at)
  /* 0x80247D50 */  sw $t7, 28($sp)
  /* 0x80247D54 */  lw $t0, 28($sp)
  /* 0x80247D58 */  lui $t9, 0xE900
  /* 0x80247D5C */  sw $t9, 0($t0)
  /* 0x80247D60 */  lw $t1, 28($sp)
  /* 0x80247D64 */  sw $zero, 4($t1)
  /* 0x80247D68 */  lui $t2, 0x8034
  /* 0x80247D6C */  lw $t2, -20372($t2)
  /* 0x80247D70 */  lui $at, 0x8034
  /* 0x80247D74 */  addiu $t3, $t2, 8
  /* 0x80247D78 */  sw $t3, -20372($at)
  /* 0x80247D7C */  sw $t2, 24($sp)
  /* 0x80247D80 */  lw $t5, 24($sp)
  /* 0x80247D84 */  lui $t4, 0xB800
  /* 0x80247D88 */  sw $t4, 0($t5)
  /* 0x80247D8C */  lw $t6, 24($sp)
  /* 0x80247D90 */  sw $zero, 4($t6)
  /* 0x80247D94 */  jal 0x80247B3C
  /* 0x80247D98 */  nop
  /* 0x80247D9C */  b .end_master_display_list_L80247DA4
  /* 0x80247DA0 */  nop
.end_master_display_list_L80247DA4:
  /* 0x80247DA4 */  lw $ra, 20($sp)
  /* 0x80247DA8 */  addiu $sp, $sp, 32
  /* 0x80247DAC */  jr $ra
  /* 0x80247DB0 */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x80247D14 */  addiu $sp, $sp, -32
  /* 0x80247D18 */  sw $ra, 20($sp)
  /* 0x80247D1C */  nop  ; <-- CHANGED
  /* 0x80247D20 */  nop
  /* 0x80247D24 */  lui $t6, 0x8033
  /* 0x80247D28 */  lb $t6, -10860($t6)
  /* 0x80247D2C */  beq $t6, $zero, .end_master_display_list_L80247D3C
  /* 0x80247D30 */  nop
  /* 0x80247D34 */  jal 0x8027F460
  /* 0x80247D38 */  nop
.end_master_display_list_L80247D3C:
  /* 0x80247D3C */  lui $t7, 0x8034
  /* 0x80247D40 */  lw $t7, -20372($t7)
  /* 0x80247D44 */  lui $at, 0x8034
  /* 0x80247D48 */  addiu $t8, $t7, 8
  /* 0x80247D4C */  sw $t8, -20372($at)
  /* 0x80247D50 */  sw $t7, 28($sp)
  /* 0x80247D54 */  lw $t0, 28($sp)
  /* 0x80247D58 */  lui $t9, 0xE900
  /* 0x80247D5C */  sw $t9, 0($t0)
  /* 0x80247D60 */  lw $t1, 28($sp)
  /* 0x80247D64 */  sw $zero, 4($t1)
  /* 0x80247D68 */  lui $t2, 0x8034
  /* 0x80247D6C */  lw $t2, -20372($t2)
  /* 0x80247D70 */  lui $at, 0x8034
  /* 0x80247D74 */  addiu $t3, $t2, 8
  /* 0x80247D78 */  sw $t3, -20372($at)
  /* 0x80247D7C */  sw $t2, 24($sp)
  /* 0x80247D80 */  lw $t5, 24($sp)
  /* 0x80247D84 */  lui $t4, 0xB800
  /* 0x80247D88 */  sw $t4, 0($t5)
  /* 0x80247D8C */  lw $t6, 24($sp)
  /* 0x80247D90 */  sw $zero, 4($t6)
  /* 0x80247D94 */  jal 0x80247B3C
  /* 0x80247D98 */  nop
  /* 0x80247D9C */  b .end_master_display_list_L80247DA4
  /* 0x80247DA0 */  nop
.end_master_display_list_L80247DA4:
  /* 0x80247DA4 */  lw $ra, 20($sp)
  /* 0x80247DA8 */  addiu $sp, $sp, 32
  /* 0x80247DAC */  jr $ra
  /* 0x80247DB0 */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x80247D1C:
  ;   was: 0C 09 1E 13  jal 0x8024784C
  ;   new: 00 00 00 00  nop
