; Function: draw_skybox_tile_grid
; RAM: 0x802CFA2C  Size: 0x23C

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x802CFA2C */  addiu $sp, $sp, -88
  /* 0x802CFA30 */  sw $ra, 28($sp)
  /* 0x802CFA34 */  sw $a0, 88($sp)
  /* 0x802CFA38 */  sw $a1, 92($sp)
  /* 0x802CFA3C */  sw $a2, 96($sp)
  /* 0x802CFA40 */  sw $a3, 100($sp)
  /* 0x802CFA44 */  sw $s0, 24($sp)
  /* 0x802CFA48 */  sw $zero, 84($sp)
.draw_skybox_tile_grid_L802CFA4C:
  /* 0x802CFA4C */  sw $zero, 80($sp)
.draw_skybox_tile_grid_L802CFA50:
  /* 0x802CFA50 */  lb $t6, 99($sp)
  /* 0x802CFA54 */  lw $t9, 84($sp)
  /* 0x802CFA58 */  lui $t8, 0x8036
  /* 0x802CFA5C */  sll $t7, $t6, 4
  /* 0x802CFA60 */  addu $t8, $t8, $t7
  /* 0x802CFA64 */  lw $t8, 4812($t8)
  /* 0x802CFA68 */  sll $t0, $t9, 2
  /* 0x802CFA6C */  lw $t2, 80($sp)
  /* 0x802CFA70 */  addu $t0, $t0, $t9
  /* 0x802CFA74 */  sll $t0, $t0, 1
  /* 0x802CFA78 */  addu $t1, $t8, $t0
  /* 0x802CFA7C */  addu $t3, $t1, $t2
  /* 0x802CFA80 */  sw $t3, 76($sp)
  /* 0x802CFA84 */  lb $t4, 95($sp)
  /* 0x802CFA88 */  lui $a0, 0x8033  ; <-- CHANGED
  /* 0x802CFA8C */  sll $t5, $t4, 2
  /* 0x802CFA90 */  addu $a0, $a0, $t5
  /* 0x802CFA94 */  jal 0x80277F50
  /* 0x802CFA98 */  lw $a0, 3840($a0)  ; <-- CHANGED
  /* 0x802CFA9C */  lw $t6, 76($sp)
  /* 0x802CFAA0 */  move $s0, $v0
  /* 0x802CFAA4 */  sll $t7, $t6, 2
  /* 0x802CFAA8 */  addu $t9, $s0, $t7
  /* 0x802CFAAC */  lw $t8, 0($t9)
  /* 0x802CFAB0 */  sw $t8, 72($sp)
  /* 0x802CFAB4 */  lw $a0, 76($sp)
  /* 0x802CFAB8 */  jal 0x802CF804
  /* 0x802CFABC */  lb $a1, 103($sp)
  /* 0x802CFAC0 */  sw $v0, 68($sp)
  /* 0x802CFAC4 */  lw $t0, 88($sp)
  /* 0x802CFAC8 */  lw $t1, 0($t0)
  /* 0x802CFACC */  sw $t1, 64($sp)
  /* 0x802CFAD0 */  lw $t2, 0($t0)
  /* 0x802CFAD4 */  addiu $t3, $t2, 8
  /* 0x802CFAD8 */  sw $t3, 0($t0)
  /* 0x802CFADC */  lw $t5, 64($sp)
  /* 0x802CFAE0 */  lui $t4, 0xFD10
  /* 0x802CFAE4 */  sw $t4, 0($t5)
  /* 0x802CFAE8 */  lw $t6, 72($sp)
  /* 0x802CFAEC */  lw $t7, 64($sp)
  /* 0x802CFAF0 */  sw $t6, 4($t7)
  /* 0x802CFAF4 */  lw $t9, 88($sp)
  /* 0x802CFAF8 */  lw $t8, 0($t9)
  /* 0x802CFAFC */  sw $t8, 60($sp)
  /* 0x802CFB00 */  lw $t1, 0($t9)
  /* 0x802CFB04 */  addiu $t2, $t1, 8
  /* 0x802CFB08 */  sw $t2, 0($t9)
  /* 0x802CFB0C */  lw $t0, 60($sp)
  /* 0x802CFB10 */  lui $t3, 0xE800
  /* 0x802CFB14 */  sw $t3, 0($t0)
  /* 0x802CFB18 */  lw $t4, 60($sp)
  /* 0x802CFB1C */  sw $zero, 4($t4)
  /* 0x802CFB20 */  lw $t5, 88($sp)
  /* 0x802CFB24 */  lw $t6, 0($t5)
  /* 0x802CFB28 */  sw $t6, 56($sp)
  /* 0x802CFB2C */  lw $t7, 0($t5)
  /* 0x802CFB30 */  addiu $t8, $t7, 8
  /* 0x802CFB34 */  sw $t8, 0($t5)
  /* 0x802CFB38 */  lw $t2, 56($sp)
  /* 0x802CFB3C */  lui $t1, 0xF510
  /* 0x802CFB40 */  sw $t1, 0($t2)
  /* 0x802CFB44 */  lw $t3, 56($sp)
  /* 0x802CFB48 */  lui $t9, 0x700
  /* 0x802CFB4C */  sw $t9, 4($t3)
  /* 0x802CFB50 */  lw $t0, 88($sp)
  /* 0x802CFB54 */  lw $t4, 0($t0)
  /* 0x802CFB58 */  sw $t4, 52($sp)
  /* 0x802CFB5C */  lw $t6, 0($t0)
  /* 0x802CFB60 */  addiu $t7, $t6, 8
  /* 0x802CFB64 */  sw $t7, 0($t0)
  /* 0x802CFB68 */  lw $t5, 52($sp)
  /* 0x802CFB6C */  lui $t8, 0xE600
  /* 0x802CFB70 */  sw $t8, 0($t5)
  /* 0x802CFB74 */  lw $t1, 52($sp)
  /* 0x802CFB78 */  sw $zero, 4($t1)
  /* 0x802CFB7C */  lw $t2, 88($sp)
  /* 0x802CFB80 */  lw $t9, 0($t2)
  /* 0x802CFB84 */  sw $t9, 48($sp)
  /* 0x802CFB88 */  lw $t3, 0($t2)
  /* 0x802CFB8C */  addiu $t4, $t3, 8
  /* 0x802CFB90 */  sw $t4, 0($t2)
  /* 0x802CFB94 */  lw $t7, 48($sp)
  /* 0x802CFB98 */  lui $t6, 0xF300
  /* 0x802CFB9C */  sw $t6, 0($t7)
  /* 0x802CFBA0 */  lw $t8, 48($sp)
  /* 0x802CFBA4 */  lui $t0, 0x73F
  /* 0x802CFBA8 */  ori $t0, $t0, 0xF100
  /* 0x802CFBAC */  sw $t0, 4($t8)
  /* 0x802CFBB0 */  lw $t5, 88($sp)
  /* 0x802CFBB4 */  lw $t1, 0($t5)
  /* 0x802CFBB8 */  sw $t1, 44($sp)
  /* 0x802CFBBC */  lw $t9, 0($t5)
  /* 0x802CFBC0 */  addiu $t3, $t9, 8
  /* 0x802CFBC4 */  sw $t3, 0($t5)
  /* 0x802CFBC8 */  lw $t2, 44($sp)
  /* 0x802CFBCC */  lui $t4, 0x430
  /* 0x802CFBD0 */  ori $t4, $t4, 0x40
  /* 0x802CFBD4 */  sw $t4, 0($t2)
  /* 0x802CFBD8 */  lw $t6, 68($sp)
  /* 0x802CFBDC */  lw $t0, 44($sp)
  /* 0x802CFBE0 */  lui $at, 0x1FFF
  /* 0x802CFBE4 */  ori $at, $at, 0xFFFF
  /* 0x802CFBE8 */  and $t7, $t6, $at
  /* 0x802CFBEC */  sw $t7, 4($t0)
  /* 0x802CFBF0 */  lw $t8, 88($sp)
  /* 0x802CFBF4 */  lw $t1, 0($t8)
  /* 0x802CFBF8 */  sw $t1, 40($sp)
  /* 0x802CFBFC */  lw $t9, 0($t8)
  /* 0x802CFC00 */  addiu $t3, $t9, 8
  /* 0x802CFC04 */  sw $t3, 0($t8)
  /* 0x802CFC08 */  lw $t4, 40($sp)
  /* 0x802CFC0C */  lui $t5, 0x600
  /* 0x802CFC10 */  sw $t5, 0($t4)
  /* 0x802CFC14 */  lw $t6, 40($sp)
  /* 0x802CFC18 */  lui $t2, 0x201
  /* 0x802CFC1C */  addiu $t2, $t2, 29520
  /* 0x802CFC20 */  sw $t2, 4($t6)
  /* 0x802CFC24 */  lw $t7, 80($sp)
  /* 0x802CFC28 */  addiu $t0, $t7, 1
  /* 0x802CFC2C */  slti $at, $t0, 3
  /* 0x802CFC30 */  bne $at, $zero, .draw_skybox_tile_grid_L802CFA50
  /* 0x802CFC34 */  sw $t0, 80($sp)
  /* 0x802CFC38 */  lw $t1, 84($sp)
  /* 0x802CFC3C */  addiu $t9, $t1, 1
  /* 0x802CFC40 */  slti $at, $t9, 3
  /* 0x802CFC44 */  bne $at, $zero, .draw_skybox_tile_grid_L802CFA4C
  /* 0x802CFC48 */  sw $t9, 84($sp)
  /* 0x802CFC4C */  b .draw_skybox_tile_grid_L802CFC54
  /* 0x802CFC50 */  nop
.draw_skybox_tile_grid_L802CFC54:
  /* 0x802CFC54 */  lw $ra, 28($sp)
  /* 0x802CFC58 */  lw $s0, 24($sp)
  /* 0x802CFC5C */  addiu $sp, $sp, 88
  /* 0x802CFC60 */  jr $ra
  /* 0x802CFC64 */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x802CFA2C */  addiu $sp, $sp, -88
  /* 0x802CFA30 */  sw $ra, 28($sp)
  /* 0x802CFA34 */  sw $a0, 88($sp)
  /* 0x802CFA38 */  sw $a1, 92($sp)
  /* 0x802CFA3C */  sw $a2, 96($sp)
  /* 0x802CFA40 */  sw $a3, 100($sp)
  /* 0x802CFA44 */  sw $s0, 24($sp)
  /* 0x802CFA48 */  sw $zero, 84($sp)
.draw_skybox_tile_grid_L802CFA4C:
  /* 0x802CFA4C */  sw $zero, 80($sp)
.draw_skybox_tile_grid_L802CFA50:
  /* 0x802CFA50 */  lb $t6, 99($sp)
  /* 0x802CFA54 */  lw $t9, 84($sp)
  /* 0x802CFA58 */  lui $t8, 0x8036
  /* 0x802CFA5C */  sll $t7, $t6, 4
  /* 0x802CFA60 */  addu $t8, $t8, $t7
  /* 0x802CFA64 */  lw $t8, 4812($t8)
  /* 0x802CFA68 */  sll $t0, $t9, 2
  /* 0x802CFA6C */  lw $t2, 80($sp)
  /* 0x802CFA70 */  addu $t0, $t0, $t9
  /* 0x802CFA74 */  sll $t0, $t0, 1
  /* 0x802CFA78 */  addu $t1, $t8, $t0
  /* 0x802CFA7C */  addu $t3, $t1, $t2
  /* 0x802CFA80 */  sw $t3, 76($sp)
  /* 0x802CFA84 */  lb $t4, 95($sp)
  /* 0x802CFA88 */  lui $a0, 0x8040  ; <-- CHANGED
  /* 0x802CFA8C */  sll $t5, $t4, 2
  /* 0x802CFA90 */  addu $a0, $a0, $t5
  /* 0x802CFA94 */  jal 0x80277F50
  /* 0x802CFA98 */  lw $a0, 9472($a0)  ; <-- CHANGED
  /* 0x802CFA9C */  lw $t6, 76($sp)
  /* 0x802CFAA0 */  move $s0, $v0
  /* 0x802CFAA4 */  sll $t7, $t6, 2
  /* 0x802CFAA8 */  addu $t9, $s0, $t7
  /* 0x802CFAAC */  lw $t8, 0($t9)
  /* 0x802CFAB0 */  sw $t8, 72($sp)
  /* 0x802CFAB4 */  lw $a0, 76($sp)
  /* 0x802CFAB8 */  jal 0x802CF804
  /* 0x802CFABC */  lb $a1, 103($sp)
  /* 0x802CFAC0 */  sw $v0, 68($sp)
  /* 0x802CFAC4 */  lw $t0, 88($sp)
  /* 0x802CFAC8 */  lw $t1, 0($t0)
  /* 0x802CFACC */  sw $t1, 64($sp)
  /* 0x802CFAD0 */  lw $t2, 0($t0)
  /* 0x802CFAD4 */  addiu $t3, $t2, 8
  /* 0x802CFAD8 */  sw $t3, 0($t0)
  /* 0x802CFADC */  lw $t5, 64($sp)
  /* 0x802CFAE0 */  lui $t4, 0xFD10
  /* 0x802CFAE4 */  sw $t4, 0($t5)
  /* 0x802CFAE8 */  lw $t6, 72($sp)
  /* 0x802CFAEC */  lw $t7, 64($sp)
  /* 0x802CFAF0 */  sw $t6, 4($t7)
  /* 0x802CFAF4 */  lw $t9, 88($sp)
  /* 0x802CFAF8 */  lw $t8, 0($t9)
  /* 0x802CFAFC */  sw $t8, 60($sp)
  /* 0x802CFB00 */  lw $t1, 0($t9)
  /* 0x802CFB04 */  addiu $t2, $t1, 8
  /* 0x802CFB08 */  sw $t2, 0($t9)
  /* 0x802CFB0C */  lw $t0, 60($sp)
  /* 0x802CFB10 */  lui $t3, 0xE800
  /* 0x802CFB14 */  sw $t3, 0($t0)
  /* 0x802CFB18 */  lw $t4, 60($sp)
  /* 0x802CFB1C */  sw $zero, 4($t4)
  /* 0x802CFB20 */  lw $t5, 88($sp)
  /* 0x802CFB24 */  lw $t6, 0($t5)
  /* 0x802CFB28 */  sw $t6, 56($sp)
  /* 0x802CFB2C */  lw $t7, 0($t5)
  /* 0x802CFB30 */  addiu $t8, $t7, 8
  /* 0x802CFB34 */  sw $t8, 0($t5)
  /* 0x802CFB38 */  lw $t2, 56($sp)
  /* 0x802CFB3C */  lui $t1, 0xF510
  /* 0x802CFB40 */  sw $t1, 0($t2)
  /* 0x802CFB44 */  lw $t3, 56($sp)
  /* 0x802CFB48 */  lui $t9, 0x700
  /* 0x802CFB4C */  sw $t9, 4($t3)
  /* 0x802CFB50 */  lw $t0, 88($sp)
  /* 0x802CFB54 */  lw $t4, 0($t0)
  /* 0x802CFB58 */  sw $t4, 52($sp)
  /* 0x802CFB5C */  lw $t6, 0($t0)
  /* 0x802CFB60 */  addiu $t7, $t6, 8
  /* 0x802CFB64 */  sw $t7, 0($t0)
  /* 0x802CFB68 */  lw $t5, 52($sp)
  /* 0x802CFB6C */  lui $t8, 0xE600
  /* 0x802CFB70 */  sw $t8, 0($t5)
  /* 0x802CFB74 */  lw $t1, 52($sp)
  /* 0x802CFB78 */  sw $zero, 4($t1)
  /* 0x802CFB7C */  lw $t2, 88($sp)
  /* 0x802CFB80 */  lw $t9, 0($t2)
  /* 0x802CFB84 */  sw $t9, 48($sp)
  /* 0x802CFB88 */  lw $t3, 0($t2)
  /* 0x802CFB8C */  addiu $t4, $t3, 8
  /* 0x802CFB90 */  sw $t4, 0($t2)
  /* 0x802CFB94 */  lw $t7, 48($sp)
  /* 0x802CFB98 */  lui $t6, 0xF300
  /* 0x802CFB9C */  sw $t6, 0($t7)
  /* 0x802CFBA0 */  lw $t8, 48($sp)
  /* 0x802CFBA4 */  lui $t0, 0x73F
  /* 0x802CFBA8 */  ori $t0, $t0, 0xF100
  /* 0x802CFBAC */  sw $t0, 4($t8)
  /* 0x802CFBB0 */  lw $t5, 88($sp)
  /* 0x802CFBB4 */  lw $t1, 0($t5)
  /* 0x802CFBB8 */  sw $t1, 44($sp)
  /* 0x802CFBBC */  lw $t9, 0($t5)
  /* 0x802CFBC0 */  addiu $t3, $t9, 8
  /* 0x802CFBC4 */  sw $t3, 0($t5)
  /* 0x802CFBC8 */  lw $t2, 44($sp)
  /* 0x802CFBCC */  lui $t4, 0x430
  /* 0x802CFBD0 */  ori $t4, $t4, 0x40
  /* 0x802CFBD4 */  sw $t4, 0($t2)
  /* 0x802CFBD8 */  lw $t6, 68($sp)
  /* 0x802CFBDC */  lw $t0, 44($sp)
  /* 0x802CFBE0 */  lui $at, 0x1FFF
  /* 0x802CFBE4 */  ori $at, $at, 0xFFFF
  /* 0x802CFBE8 */  and $t7, $t6, $at
  /* 0x802CFBEC */  sw $t7, 4($t0)
  /* 0x802CFBF0 */  lw $t8, 88($sp)
  /* 0x802CFBF4 */  lw $t1, 0($t8)
  /* 0x802CFBF8 */  sw $t1, 40($sp)
  /* 0x802CFBFC */  lw $t9, 0($t8)
  /* 0x802CFC00 */  addiu $t3, $t9, 8
  /* 0x802CFC04 */  sw $t3, 0($t8)
  /* 0x802CFC08 */  lw $t4, 40($sp)
  /* 0x802CFC0C */  lui $t5, 0x600
  /* 0x802CFC10 */  sw $t5, 0($t4)
  /* 0x802CFC14 */  lw $t6, 40($sp)
  /* 0x802CFC18 */  lui $t2, 0x201
  /* 0x802CFC1C */  addiu $t2, $t2, 29520
  /* 0x802CFC20 */  sw $t2, 4($t6)
  /* 0x802CFC24 */  lw $t7, 80($sp)
  /* 0x802CFC28 */  addiu $t0, $t7, 1
  /* 0x802CFC2C */  slti $at, $t0, 3
  /* 0x802CFC30 */  bne $at, $zero, .draw_skybox_tile_grid_L802CFA50
  /* 0x802CFC34 */  sw $t0, 80($sp)
  /* 0x802CFC38 */  lw $t1, 84($sp)
  /* 0x802CFC3C */  addiu $t9, $t1, 1
  /* 0x802CFC40 */  slti $at, $t9, 3
  /* 0x802CFC44 */  bne $at, $zero, .draw_skybox_tile_grid_L802CFA4C
  /* 0x802CFC48 */  sw $t9, 84($sp)
  /* 0x802CFC4C */  b .draw_skybox_tile_grid_L802CFC54
  /* 0x802CFC50 */  nop
.draw_skybox_tile_grid_L802CFC54:
  /* 0x802CFC54 */  lw $ra, 28($sp)
  /* 0x802CFC58 */  lw $s0, 24($sp)
  /* 0x802CFC5C */  addiu $sp, $sp, 88
  /* 0x802CFC60 */  jr $ra
  /* 0x802CFC64 */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x802CFA88:
  ;   was: 3C 04 80 33  lui $a0, 0x8033
  ;   new: 3C 04 80 40  lui $a0, 0x8040
  ; 0x802CFA98:
  ;   was: 8C 84 0F 00  lw $a0, 3840($a0)
  ;   new: 8C 84 25 00  lw $a0, 9472($a0)
