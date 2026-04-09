; Function: whomp_init
; RAM: 0x802C6D6C  Size: 0x15C

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x802C6D6C */  addiu $sp, $sp, -24
  /* 0x802C6D70 */  sw $ra, 20($sp)
  /* 0x802C6D74 */  move $a0, $zero
  /* 0x802C6D78 */  jal 0x8029F514
  /* 0x802C6D7C */  lui $a1, 0x3F80
  /* 0x802C6D80 */  jal 0x802A184C
  /* 0x802C6D84 */  nop
  /* 0x802C6D88 */  lui $t6, 0x8036
  /* 0x802C6D8C */  lw $t6, 4448($t6)
  /* 0x802C6D90 */  lw $t7, 324($t6)
  /* 0x802C6D94 */  beq $t7, $zero, .whomp_init_L802C6E74
  /* 0x802C6D98 */  nop
  /* 0x802C6D9C */  lui $t8, 0x8036
  /* 0x802C6DA0 */  lw $t8, 4448($t8)
  /* 0x802C6DA4 */  lui $at, 0x8033
  /* 0x802C6DA8 */  sw $t8, -8400($at)
  /* 0x802C6DAC */  lui $at, 0x4000  ; <-- CHANGED
  /* 0x802C6DB0 */  mtc1 $at, $f12
  /* 0x802C6DB4 */  jal 0x8029F430
  /* 0x802C6DB8 */  nop
  /* 0x802C6DBC */  lui $t9, 0x8036
  /* 0x802C6DC0 */  lw $t9, 4448($t9)
  /* 0x802C6DC4 */  lw $t0, 336($t9)
  /* 0x802C6DC8 */  bne $t0, $zero, .whomp_init_L802C6E40
  /* 0x802C6DCC */  nop
  /* 0x802C6DD0 */  lui $t1, 0x8036
  /* 0x802C6DD4 */  lw $t1, 4448($t1)
  /* 0x802C6DD8 */  lui $at, 0x4416
  /* 0x802C6DDC */  mtc1 $at, $f6
  /* 0x802C6DE0 */  lwc1 $f4, 348($t1)
  /* 0x802C6DE4 */  c.lt.s $f4, $f6
  /* 0x802C6DE8 */  nop
  /* 0x802C6DEC */  bc1f .whomp_init_L802C6E20
  /* 0x802C6DF0 */  nop
  /* 0x802C6DF4 */  lui $t2, 0x8036
  /* 0x802C6DF8 */  lw $t2, 4448($t2)
  /* 0x802C6DFC */  lw $t3, 336($t2)
  /* 0x802C6E00 */  addiu $t4, $t3, 1
  /* 0x802C6E04 */  sw $t4, 336($t2)
  /* 0x802C6E08 */  move $a0, $zero
  /* 0x802C6E0C */  li $a1, 60
  /* 0x802C6E10 */  jal 0x80320E3C
  /* 0x802C6E14 */  li $a2, 40
  /* 0x802C6E18 */  b .whomp_init_L802C6E38
  /* 0x802C6E1C */  nop
.whomp_init_L802C6E20:
  /* 0x802C6E20 */  jal 0x802A184C
  /* 0x802C6E24 */  nop
  /* 0x802C6E28 */  lui $t6, 0x8036
  /* 0x802C6E2C */  lw $t6, 4448($t6)
  /* 0x802C6E30 */  li $t5, 3
  /* 0x802C6E34 */  sw $t5, 388($t6)
.whomp_init_L802C6E38:
  /* 0x802C6E38 */  b .whomp_init_L802C6E6C
  /* 0x802C6E3C */  nop
.whomp_init_L802C6E40:
  /* 0x802C6E40 */  li $a0, 2
  /* 0x802C6E44 */  li $a1, 1
  /* 0x802C6E48 */  li $a2, 162
  /* 0x802C6E4C */  jal 0x802A4BE4
  /* 0x802C6E50 */  li $a3, 114
  /* 0x802C6E54 */  beq $v0, $zero, .whomp_init_L802C6E6C
  /* 0x802C6E58 */  nop
  /* 0x802C6E5C */  lui $t8, 0x8036
  /* 0x802C6E60 */  lw $t8, 4448($t8)
  /* 0x802C6E64 */  li $t7, 2
  /* 0x802C6E68 */  sw $t7, 332($t8)
.whomp_init_L802C6E6C:
  /* 0x802C6E6C */  b .whomp_init_L802C6EA8
  /* 0x802C6E70 */  nop
.whomp_init_L802C6E74:
  /* 0x802C6E74 */  lui $t9, 0x8036
  /* 0x802C6E78 */  lw $t9, 4448($t9)
  /* 0x802C6E7C */  lui $at, 0x43FA
  /* 0x802C6E80 */  mtc1 $at, $f10
  /* 0x802C6E84 */  lwc1 $f8, 348($t9)
  /* 0x802C6E88 */  c.lt.s $f8, $f10
  /* 0x802C6E8C */  nop
  /* 0x802C6E90 */  bc1f .whomp_init_L802C6EA8
  /* 0x802C6E94 */  nop
  /* 0x802C6E98 */  lui $t1, 0x8036
  /* 0x802C6E9C */  lw $t1, 4448($t1)
  /* 0x802C6EA0 */  li $t0, 1
  /* 0x802C6EA4 */  sw $t0, 332($t1)
.whomp_init_L802C6EA8:
  /* 0x802C6EA8 */  jal 0x802C6CA0
  /* 0x802C6EAC */  nop
  /* 0x802C6EB0 */  b .whomp_init_L802C6EB8
  /* 0x802C6EB4 */  nop
.whomp_init_L802C6EB8:
  /* 0x802C6EB8 */  lw $ra, 20($sp)
  /* 0x802C6EBC */  addiu $sp, $sp, 24
  /* 0x802C6EC0 */  jr $ra
  /* 0x802C6EC4 */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x802C6D6C */  addiu $sp, $sp, -24
  /* 0x802C6D70 */  sw $ra, 20($sp)
  /* 0x802C6D74 */  move $a0, $zero
  /* 0x802C6D78 */  jal 0x8029F514
  /* 0x802C6D7C */  lui $a1, 0x3F80
  /* 0x802C6D80 */  jal 0x802A184C
  /* 0x802C6D84 */  nop
  /* 0x802C6D88 */  lui $t6, 0x8036
  /* 0x802C6D8C */  lw $t6, 4448($t6)
  /* 0x802C6D90 */  lw $t7, 324($t6)
  /* 0x802C6D94 */  beq $t7, $zero, .whomp_init_L802C6E74
  /* 0x802C6D98 */  nop
  /* 0x802C6D9C */  lui $t8, 0x8036
  /* 0x802C6DA0 */  lw $t8, 4448($t8)
  /* 0x802C6DA4 */  lui $at, 0x8033
  /* 0x802C6DA8 */  sw $t8, -8400($at)
  /* 0x802C6DAC */  lui $at, 0x3FBF  ; <-- CHANGED
  /* 0x802C6DB0 */  mtc1 $at, $f12
  /* 0x802C6DB4 */  jal 0x8029F430
  /* 0x802C6DB8 */  nop
  /* 0x802C6DBC */  lui $t9, 0x8036
  /* 0x802C6DC0 */  lw $t9, 4448($t9)
  /* 0x802C6DC4 */  lw $t0, 336($t9)
  /* 0x802C6DC8 */  bne $t0, $zero, .whomp_init_L802C6E40
  /* 0x802C6DCC */  nop
  /* 0x802C6DD0 */  lui $t1, 0x8036
  /* 0x802C6DD4 */  lw $t1, 4448($t1)
  /* 0x802C6DD8 */  lui $at, 0x4416
  /* 0x802C6DDC */  mtc1 $at, $f6
  /* 0x802C6DE0 */  lwc1 $f4, 348($t1)
  /* 0x802C6DE4 */  c.lt.s $f4, $f6
  /* 0x802C6DE8 */  nop
  /* 0x802C6DEC */  bc1f .whomp_init_L802C6E20
  /* 0x802C6DF0 */  nop
  /* 0x802C6DF4 */  lui $t2, 0x8036
  /* 0x802C6DF8 */  lw $t2, 4448($t2)
  /* 0x802C6DFC */  lw $t3, 336($t2)
  /* 0x802C6E00 */  addiu $t4, $t3, 1
  /* 0x802C6E04 */  sw $t4, 336($t2)
  /* 0x802C6E08 */  move $a0, $zero
  /* 0x802C6E0C */  li $a1, 60
  /* 0x802C6E10 */  jal 0x80320E3C
  /* 0x802C6E14 */  li $a2, 40
  /* 0x802C6E18 */  b .whomp_init_L802C6E38
  /* 0x802C6E1C */  nop
.whomp_init_L802C6E20:
  /* 0x802C6E20 */  jal 0x802A184C
  /* 0x802C6E24 */  nop
  /* 0x802C6E28 */  lui $t6, 0x8036
  /* 0x802C6E2C */  lw $t6, 4448($t6)
  /* 0x802C6E30 */  li $t5, 3
  /* 0x802C6E34 */  sw $t5, 388($t6)
.whomp_init_L802C6E38:
  /* 0x802C6E38 */  b .whomp_init_L802C6E6C
  /* 0x802C6E3C */  nop
.whomp_init_L802C6E40:
  /* 0x802C6E40 */  li $a0, 2
  /* 0x802C6E44 */  li $a1, 1
  /* 0x802C6E48 */  li $a2, 162
  /* 0x802C6E4C */  jal 0x802A4BE4
  /* 0x802C6E50 */  li $a3, 114
  /* 0x802C6E54 */  beq $v0, $zero, .whomp_init_L802C6E6C
  /* 0x802C6E58 */  nop
  /* 0x802C6E5C */  lui $t8, 0x8036
  /* 0x802C6E60 */  lw $t8, 4448($t8)
  /* 0x802C6E64 */  li $t7, 2
  /* 0x802C6E68 */  sw $t7, 332($t8)
.whomp_init_L802C6E6C:
  /* 0x802C6E6C */  b .whomp_init_L802C6EA8
  /* 0x802C6E70 */  nop
.whomp_init_L802C6E74:
  /* 0x802C6E74 */  lui $t9, 0x8036
  /* 0x802C6E78 */  lw $t9, 4448($t9)
  /* 0x802C6E7C */  lui $at, 0x43FA
  /* 0x802C6E80 */  mtc1 $at, $f10
  /* 0x802C6E84 */  lwc1 $f8, 348($t9)
  /* 0x802C6E88 */  c.lt.s $f8, $f10
  /* 0x802C6E8C */  nop
  /* 0x802C6E90 */  bc1f .whomp_init_L802C6EA8
  /* 0x802C6E94 */  nop
  /* 0x802C6E98 */  lui $t1, 0x8036
  /* 0x802C6E9C */  lw $t1, 4448($t1)
  /* 0x802C6EA0 */  li $t0, 1
  /* 0x802C6EA4 */  sw $t0, 332($t1)
.whomp_init_L802C6EA8:
  /* 0x802C6EA8 */  jal 0x802C6CA0
  /* 0x802C6EAC */  nop
  /* 0x802C6EB0 */  b .whomp_init_L802C6EB8
  /* 0x802C6EB4 */  nop
.whomp_init_L802C6EB8:
  /* 0x802C6EB8 */  lw $ra, 20($sp)
  /* 0x802C6EBC */  addiu $sp, $sp, 24
  /* 0x802C6EC0 */  jr $ra
  /* 0x802C6EC4 */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x802C6DAC:
  ;   was: 3C 01 40 00  lui $at, 0x4000
  ;   new: 3C 01 3F BF  lui $at, 0x3FBF
