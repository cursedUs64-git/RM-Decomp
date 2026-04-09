; Function: lvl_set_current_level
; RAM: 0x8024BE14  Size: 0x18C

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x8024BE14 */  addiu $sp, $sp, -32
  /* 0x8024BE18 */  sw $ra, 20($sp)
  /* 0x8024BE1C */  sw $a0, 32($sp)
  /* 0x8024BE20 */  sw $a1, 36($sp)
  /* 0x8024BE24 */  lui $t6, 0x8033
  /* 0x8024BE28 */  lb $t6, -9916($t6)
  /* 0x8024BE2C */  sw $t6, 28($sp)
  /* 0x8024BE30 */  lui $at, 0x8033
  /* 0x8024BE34 */  sb $zero, -9916($at)
  /* 0x8024BE38 */  lw $t7, 36($sp)
  /* 0x8024BE3C */  lui $at, 0x8033
  /* 0x8024BE40 */  sh $t7, -8712($at)
  /* 0x8024BE44 */  lw $t8, 36($sp)
  /* 0x8024BE48 */  lui $t9, 0x8033
  /* 0x8024BE4C */  lui $at, 0x8034
  /* 0x8024BE50 */  addu $t9, $t9, $t8
  /* 0x8024BE54 */  lb $t9, -8809($t9)
  /* 0x8024BE58 */  sh $t9, -17722($at)
  /* 0x8024BE5C */  lui $t0, 0x8033
  /* 0x8024BE60 */  lw $t0, -10768($t0)
  /* 0x8024BE64 */  bne $t0, $zero, .lvl_set_current_level_L8024BE8C
  /* 0x8024BE68 */  nop
  /* 0x8024BE6C */  lui $t1, 0x8033
  /* 0x8024BE70 */  lw $t1, -8752($t1)
  /* 0x8024BE74 */  bne $t1, $zero, .lvl_set_current_level_L8024BE8C
  /* 0x8024BE78 */  nop
  /* 0x8024BE7C */  lui $t2, 0x8034
  /* 0x8024BE80 */  lh $t2, -17722($t2)
  /* 0x8024BE84 */  bne $t2, $zero, .lvl_set_current_level_L8024BE94
  /* 0x8024BE88 */  nop
.lvl_set_current_level_L8024BE8C:
  /* 0x8024BE8C */  b .lvl_set_current_level_L8024BF90
  /* 0x8024BE90 */  move $v0, $zero
.lvl_set_current_level_L8024BE94:
  /* 0x8024BE94 */  lui $t3, 0x8033
  /* 0x8024BE98 */  lh $t3, -8712($t3)
  /* 0x8024BE9C */  li $at, 30
  /* 0x8024BEA0 */  beq $t3, $at, .lvl_set_current_level_L8024BEF8
  /* 0x8024BEA4 */  nop
  /* 0x8024BEA8 */  li $at, 33
  /* 0x8024BEAC */  beq $t3, $at, .lvl_set_current_level_L8024BEF8
  /* 0x8024BEB0 */  nop
  /* 0x8024BEB4 */  li $at, 34
  /* 0x8024BEB8 */  beq $t3, $at, .lvl_set_current_level_L8024BEF8
  /* 0x8024BEBC */  nop
  /* 0x8024BEC0 */  lui $t4, 0x8033
  /* 0x8024BEC4 */  lw $t4, -9924($t4)
  /* 0x8024BEC8 */  sh $zero, 168($t4)
  /* 0x8024BECC */  lui $at, 0x8034
  /* 0x8024BED0 */  sh $zero, -19870($at)
  /* 0x8024BED4 */  lui $a0, 0x8033
  /* 0x8024BED8 */  lui $a1, 0x8034
  /* 0x8024BEDC */  lh $a1, -17722($a1)
  /* 0x8024BEE0 */  lh $a0, -8716($a0)
  /* 0x8024BEE4 */  addiu $a1, $a1, -1
  /* 0x8024BEE8 */  jal 0x8027A1C8
  /* 0x8024BEEC */  addiu $a0, $a0, -1
  /* 0x8024BEF0 */  lui $at, 0x8033
  /* 0x8024BEF4 */  sb $v0, -8816($at)
.lvl_set_current_level_L8024BEF8:
  /* 0x8024BEF8 */  lui $t5, 0x8034
  /* 0x8024BEFC */  lui $t6, 0x8034
  /* 0x8024BF00 */  lh $t6, -17722($t6)
  /* 0x8024BF04 */  lh $t5, -17716($t5)
  /* 0x8024BF08 */  beq $t5, $t6, .lvl_set_current_level_L8024BF30
  /* 0x8024BF0C */  nop
  /* 0x8024BF10 */  lui $t7, 0x8034
  /* 0x8024BF14 */  lh $t7, -17722($t7)
  /* 0x8024BF18 */  lui $at, 0x8034
  /* 0x8024BF1C */  sh $t7, -17716($at)
  /* 0x8024BF20 */  jal 0x8029C770
  /* 0x8024BF24 */  nop
  /* 0x8024BF28 */  jal 0x8027A698
  /* 0x8024BF2C */  nop
.lvl_set_current_level_L8024BF30:
  /* 0x8024BF30 */  lui $t8, 0x8034
  /* 0x8024BF34 */  lh $t8, -17722($t8)
  /* 0x8024BF38 */  slti $at, $t8, 16  ; <-- CHANGED
  /* 0x8024BF3C */  beq $at, $zero, .lvl_set_current_level_L8024BF50
  /* 0x8024BF40 */  nop
  /* 0x8024BF44 */  lw $t9, 28($sp)
  /* 0x8024BF48 */  beq $t9, $zero, .lvl_set_current_level_L8024BF58
  /* 0x8024BF4C */  nop
.lvl_set_current_level_L8024BF50:
  /* 0x8024BF50 */  b .lvl_set_current_level_L8024BF90  ; <-- CHANGED
  /* 0x8024BF54 */  move $v0, $zero  ; <-- CHANGED
.lvl_set_current_level_L8024BF58:
  /* 0x8024BF58 */  lui $t0, 0x8033
  /* 0x8024BF5C */  lb $t0, -10868($t0)
  /* 0x8024BF60 */  beq $t0, $zero, .lvl_set_current_level_L8024BF80
  /* 0x8024BF64 */  nop
  /* 0x8024BF68 */  lui $t1, 0x8033
  /* 0x8024BF6C */  lb $t1, -10860($t1)
  /* 0x8024BF70 */  bne $t1, $zero, .lvl_set_current_level_L8024BF80
  /* 0x8024BF74 */  nop
  /* 0x8024BF78 */  b .lvl_set_current_level_L8024BF90
  /* 0x8024BF7C */  move $v0, $zero
.lvl_set_current_level_L8024BF80:
  /* 0x8024BF80 */  b .lvl_set_current_level_L8024BF90
  /* 0x8024BF84 */  li $v0, 1
  /* 0x8024BF88 */  b .lvl_set_current_level_L8024BF90
  /* 0x8024BF8C */  nop
.lvl_set_current_level_L8024BF90:
  /* 0x8024BF90 */  lw $ra, 20($sp)
  /* 0x8024BF94 */  addiu $sp, $sp, 32
  /* 0x8024BF98 */  jr $ra
  /* 0x8024BF9C */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x8024BE14 */  addiu $sp, $sp, -32
  /* 0x8024BE18 */  sw $ra, 20($sp)
  /* 0x8024BE1C */  sw $a0, 32($sp)
  /* 0x8024BE20 */  sw $a1, 36($sp)
  /* 0x8024BE24 */  lui $t6, 0x8033
  /* 0x8024BE28 */  lb $t6, -9916($t6)
  /* 0x8024BE2C */  sw $t6, 28($sp)
  /* 0x8024BE30 */  lui $at, 0x8033
  /* 0x8024BE34 */  sb $zero, -9916($at)
  /* 0x8024BE38 */  lw $t7, 36($sp)
  /* 0x8024BE3C */  lui $at, 0x8033
  /* 0x8024BE40 */  sh $t7, -8712($at)
  /* 0x8024BE44 */  lw $t8, 36($sp)
  /* 0x8024BE48 */  lui $t9, 0x8033
  /* 0x8024BE4C */  lui $at, 0x8034
  /* 0x8024BE50 */  addu $t9, $t9, $t8
  /* 0x8024BE54 */  lb $t9, -8809($t9)
  /* 0x8024BE58 */  sh $t9, -17722($at)
  /* 0x8024BE5C */  lui $t0, 0x8033
  /* 0x8024BE60 */  lw $t0, -10768($t0)
  /* 0x8024BE64 */  bne $t0, $zero, .lvl_set_current_level_L8024BE8C
  /* 0x8024BE68 */  nop
  /* 0x8024BE6C */  lui $t1, 0x8033
  /* 0x8024BE70 */  lw $t1, -8752($t1)
  /* 0x8024BE74 */  bne $t1, $zero, .lvl_set_current_level_L8024BE8C
  /* 0x8024BE78 */  nop
  /* 0x8024BE7C */  lui $t2, 0x8034
  /* 0x8024BE80 */  lh $t2, -17722($t2)
  /* 0x8024BE84 */  bne $t2, $zero, .lvl_set_current_level_L8024BE94
  /* 0x8024BE88 */  nop
.lvl_set_current_level_L8024BE8C:
  /* 0x8024BE8C */  b .lvl_set_current_level_L8024BF90
  /* 0x8024BE90 */  move $v0, $zero
.lvl_set_current_level_L8024BE94:
  /* 0x8024BE94 */  lui $t3, 0x8033
  /* 0x8024BE98 */  lh $t3, -8712($t3)
  /* 0x8024BE9C */  li $at, 30
  /* 0x8024BEA0 */  beq $t3, $at, .lvl_set_current_level_L8024BEF8
  /* 0x8024BEA4 */  nop
  /* 0x8024BEA8 */  li $at, 33
  /* 0x8024BEAC */  beq $t3, $at, .lvl_set_current_level_L8024BEF8
  /* 0x8024BEB0 */  nop
  /* 0x8024BEB4 */  li $at, 34
  /* 0x8024BEB8 */  beq $t3, $at, .lvl_set_current_level_L8024BEF8
  /* 0x8024BEBC */  nop
  /* 0x8024BEC0 */  lui $t4, 0x8033
  /* 0x8024BEC4 */  lw $t4, -9924($t4)
  /* 0x8024BEC8 */  sh $zero, 168($t4)
  /* 0x8024BECC */  lui $at, 0x8034
  /* 0x8024BED0 */  sh $zero, -19870($at)
  /* 0x8024BED4 */  lui $a0, 0x8033
  /* 0x8024BED8 */  lui $a1, 0x8034
  /* 0x8024BEDC */  lh $a1, -17722($a1)
  /* 0x8024BEE0 */  lh $a0, -8716($a0)
  /* 0x8024BEE4 */  addiu $a1, $a1, -1
  /* 0x8024BEE8 */  jal 0x8027A1C8
  /* 0x8024BEEC */  addiu $a0, $a0, -1
  /* 0x8024BEF0 */  lui $at, 0x8033
  /* 0x8024BEF4 */  sb $v0, -8816($at)
.lvl_set_current_level_L8024BEF8:
  /* 0x8024BEF8 */  lui $t5, 0x8034
  /* 0x8024BEFC */  lui $t6, 0x8034
  /* 0x8024BF00 */  lh $t6, -17722($t6)
  /* 0x8024BF04 */  lh $t5, -17716($t5)
  /* 0x8024BF08 */  beq $t5, $t6, .lvl_set_current_level_L8024BF30
  /* 0x8024BF0C */  nop
  /* 0x8024BF10 */  lui $t7, 0x8034
  /* 0x8024BF14 */  lh $t7, -17722($t7)
  /* 0x8024BF18 */  lui $at, 0x8034
  /* 0x8024BF1C */  sh $t7, -17716($at)
  /* 0x8024BF20 */  jal 0x8029C770
  /* 0x8024BF24 */  nop
  /* 0x8024BF28 */  jal 0x8027A698
  /* 0x8024BF2C */  nop
.lvl_set_current_level_L8024BF30:
  /* 0x8024BF30 */  lui $t8, 0x8034
  /* 0x8024BF34 */  lh $t8, -17722($t8)
  /* 0x8024BF38 */  slti $at, $t8, 1  ; <-- CHANGED
  /* 0x8024BF3C */  beq $at, $zero, .lvl_set_current_level_L8024BF50
  /* 0x8024BF40 */  nop
  /* 0x8024BF44 */  lw $t9, 28($sp)
  /* 0x8024BF48 */  beq $t9, $zero, .lvl_set_current_level_L8024BF58
  /* 0x8024BF4C */  nop
.lvl_set_current_level_L8024BF50:
  /* 0x8024BF50 */  j 0x80402F00  ; <-- CHANGED
  /* 0x8024BF54 */  nop  ; <-- CHANGED
.lvl_set_current_level_L8024BF58:
  /* 0x8024BF58 */  lui $t0, 0x8033
  /* 0x8024BF5C */  lb $t0, -10868($t0)
  /* 0x8024BF60 */  beq $t0, $zero, .lvl_set_current_level_L8024BF80
  /* 0x8024BF64 */  nop
  /* 0x8024BF68 */  lui $t1, 0x8033
  /* 0x8024BF6C */  lb $t1, -10860($t1)
  /* 0x8024BF70 */  bne $t1, $zero, .lvl_set_current_level_L8024BF80
  /* 0x8024BF74 */  nop
  /* 0x8024BF78 */  b .lvl_set_current_level_L8024BF90
  /* 0x8024BF7C */  move $v0, $zero
.lvl_set_current_level_L8024BF80:
  /* 0x8024BF80 */  b .lvl_set_current_level_L8024BF90
  /* 0x8024BF84 */  li $v0, 1
  /* 0x8024BF88 */  b .lvl_set_current_level_L8024BF90
  /* 0x8024BF8C */  nop
.lvl_set_current_level_L8024BF90:
  /* 0x8024BF90 */  lw $ra, 20($sp)
  /* 0x8024BF94 */  addiu $sp, $sp, 32
  /* 0x8024BF98 */  jr $ra
  /* 0x8024BF9C */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x8024BF38:
  ;   was: 2B 01 00 10  slti $at, $t8, 16
  ;   new: 2B 01 00 01  slti $at, $t8, 1
  ; 0x8024BF50:
  ;   was: 10 00 00 0F  b .lvl_set_current_level_L8024BF90
  ;   new: 08 10 0B C0  j 0x80402F00
  ; 0x8024BF54:
  ;   was: 00 00 10 25  move $v0, $zero
  ;   new: 00 00 00 00  nop
