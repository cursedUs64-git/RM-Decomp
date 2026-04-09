; Function: perform_ground_quarter_step
; RAM: 0x80255B04  Size: 0x284

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x80255B04 */  addiu $sp, $sp, -64
  /* 0x80255B08 */  sw $ra, 28($sp)
  /* 0x80255B0C */  sw $a0, 64($sp)
  /* 0x80255B10 */  sw $a1, 68($sp)
  /* 0x80255B14 */  sw $s0, 24($sp)
  /* 0x80255B18 */  lw $a0, 68($sp)
  /* 0x80255B1C */  lui $a1, 0x41F0
  /* 0x80255B20 */  jal 0x80251A48
  /* 0x80255B24 */  lui $a2, 0x41C0
  /* 0x80255B28 */  sw $v0, 60($sp)
  /* 0x80255B2C */  lw $a0, 68($sp)
  /* 0x80255B30 */  lui $a1, 0x4270
  /* 0x80255B34 */  jal 0x80251A48
  /* 0x80255B38 */  lui $a2, 0x4248
  /* 0x80255B3C */  sw $v0, 56($sp)
  /* 0x80255B40 */  lw $t6, 68($sp)
  /* 0x80255B44 */  addiu $a3, $sp, 48
  /* 0x80255B48 */  lwc1 $f12, 0($t6)
  /* 0x80255B4C */  lwc1 $f14, 4($t6)
  /* 0x80255B50 */  jal 0x80381900
  /* 0x80255B54 */  lw $a2, 8($t6)
  /* 0x80255B58 */  swc1 $f0, 40($sp)
  /* 0x80255B5C */  lw $a0, 68($sp)
  /* 0x80255B60 */  lw $a1, 40($sp)
  /* 0x80255B64 */  jal 0x80251AFC
  /* 0x80255B68 */  addiu $a2, $sp, 52
  /* 0x80255B6C */  swc1 $f0, 44($sp)
  /* 0x80255B70 */  lw $t7, 68($sp)
  /* 0x80255B74 */  lwc1 $f12, 0($t7)
  /* 0x80255B78 */  jal 0x80381BA0
  /* 0x80255B7C */  lwc1 $f14, 8($t7)
  /* 0x80255B80 */  swc1 $f0, 36($sp)
  /* 0x80255B84 */  lw $t8, 56($sp)
  /* 0x80255B88 */  lw $t9, 64($sp)
  /* 0x80255B8C */  sw $t8, 96($t9)
  /* 0x80255B90 */  lw $t0, 48($sp)
  /* 0x80255B94 */  bne $t0, $zero, .perform_ground_quarter_step_L80255BA4
  /* 0x80255B98 */  nop
  /* 0x80255B9C */  b .perform_ground_quarter_step_L80255D74
  /* 0x80255BA0 */  li $v0, 2
.perform_ground_quarter_step_L80255BA4:
  /* 0x80255BA4 */  lw $t1, 64($sp)
  /* 0x80255BA8 */  lui $at, 0x1
  /* 0x80255BAC */  lw $t2, 12($t1)
  /* 0x80255BB0 */  and $t3, $t2, $at
  /* 0x80255BB4 */  beq $t3, $zero, .perform_ground_quarter_step_L80255BF4
  /* 0x80255BB8 */  nop
  /* 0x80255BBC */  lwc1 $f4, 40($sp)
  /* 0x80255BC0 */  lwc1 $f6, 36($sp)
  /* 0x80255BC4 */  c.lt.s $f4, $f6
  /* 0x80255BC8 */  nop
  /* 0x80255BCC */  bc1f .perform_ground_quarter_step_L80255BF4
  /* 0x80255BD0 */  nop
  /* 0x80255BD4 */  lwc1 $f8, 36($sp)
  /* 0x80255BD8 */  swc1 $f8, 40($sp)
  /* 0x80255BDC */  lui $t4, 0x8033
  /* 0x80255BE0 */  addiu $t4, $t4, -9480
  /* 0x80255BE4 */  sw $t4, 48($sp)
  /* 0x80255BE8 */  lwc1 $f10, 40($sp)
  /* 0x80255BEC */  lw $t5, 48($sp)
  /* 0x80255BF0 */  swc1 $f10, 40($t5)
.perform_ground_quarter_step_L80255BF4:
  /* 0x80255BF4 */  lui $at, 0x42C8
  /* 0x80255BF8 */  mtc1 $at, $f4
  /* 0x80255BFC */  lwc1 $f18, 40($sp)
  /* 0x80255C00 */  lw $t6, 68($sp)
  /* 0x80255C04 */  add.s $f6, $f18, $f4
  /* 0x80255C08 */  lwc1 $f16, 4($t6)
  /* 0x80255C0C */  c.lt.s $f6, $f16
  /* 0x80255C10 */  nop
  /* 0x80255C14 */  bc1f .perform_ground_quarter_step_L80255C7C
  /* 0x80255C18 */  nop
  /* 0x80255C1C */  lw $t7, 68($sp)
  /* 0x80255C20 */  lui $at, 0x4320
  /* 0x80255C24 */  mtc1 $at, $f10
  /* 0x80255C28 */  lwc1 $f8, 4($t7)
  /* 0x80255C2C */  lwc1 $f4, 44($sp)
  /* 0x80255C30 */  add.s $f18, $f8, $f10
  /* 0x80255C34 */  c.le.s $f4, $f18
  /* 0x80255C38 */  nop
  /* 0x80255C3C */  bc1f .perform_ground_quarter_step_L80255C4C
  /* 0x80255C40 */  nop
  /* 0x80255C44 */  b .perform_ground_quarter_step_L80255D74
  /* 0x80255C48 */  li $v0, 2  ; <-- CHANGED
.perform_ground_quarter_step_L80255C4C:
  /* 0x80255C4C */  lw $a0, 64($sp)
  /* 0x80255C50 */  lw $a1, 68($sp)
  /* 0x80255C54 */  jal 0x80378800
  /* 0x80255C58 */  addiu $a0, $a0, 60
  /* 0x80255C5C */  lw $t8, 48($sp)
  /* 0x80255C60 */  lw $t9, 64($sp)
  /* 0x80255C64 */  sw $t8, 104($t9)
  /* 0x80255C68 */  lwc1 $f16, 40($sp)
  /* 0x80255C6C */  lw $t0, 64($sp)
  /* 0x80255C70 */  swc1 $f16, 112($t0)
  /* 0x80255C74 */  b .perform_ground_quarter_step_L80255D74
  /* 0x80255C78 */  move $v0, $zero
.perform_ground_quarter_step_L80255C7C:
  /* 0x80255C7C */  lui $at, 0x4320
  /* 0x80255C80 */  mtc1 $at, $f8
  /* 0x80255C84 */  lwc1 $f6, 40($sp)
  /* 0x80255C88 */  lwc1 $f18, 44($sp)
  /* 0x80255C8C */  add.s $f10, $f6, $f8
  /* 0x80255C90 */  c.le.s $f18, $f10
  /* 0x80255C94 */  nop
  /* 0x80255C98 */  bc1f .perform_ground_quarter_step_L80255CA8
  /* 0x80255C9C */  nop
  /* 0x80255CA0 */  b .perform_ground_quarter_step_L80255D74
  /* 0x80255CA4 */  li $v0, 2
.perform_ground_quarter_step_L80255CA8:
  /* 0x80255CA8 */  lw $t1, 68($sp)
  /* 0x80255CAC */  lw $a0, 64($sp)
  /* 0x80255CB0 */  lw $a2, 40($sp)
  /* 0x80255CB4 */  lw $a1, 0($t1)
  /* 0x80255CB8 */  lw $a3, 8($t1)
  /* 0x80255CBC */  jal 0x80378840
  /* 0x80255CC0 */  addiu $a0, $a0, 60
  /* 0x80255CC4 */  lw $t2, 48($sp)
  /* 0x80255CC8 */  lw $t3, 64($sp)
  /* 0x80255CCC */  sw $t2, 104($t3)
  /* 0x80255CD0 */  lwc1 $f4, 40($sp)
  /* 0x80255CD4 */  lw $t4, 64($sp)
  /* 0x80255CD8 */  swc1 $f4, 112($t4)
  /* 0x80255CDC */  lw $t5, 56($sp)
  /* 0x80255CE0 */  beq $t5, $zero, .perform_ground_quarter_step_L80255D64
  /* 0x80255CE4 */  nop
  /* 0x80255CE8 */  lw $t6, 56($sp)
  /* 0x80255CEC */  lwc1 $f12, 36($t6)
  /* 0x80255CF0 */  jal 0x8037A9A8
  /* 0x80255CF4 */  lwc1 $f14, 28($t6)
  /* 0x80255CF8 */  lw $t8, 64($sp)
  /* 0x80255CFC */  sll $s0, $v0, 16
  /* 0x80255D00 */  sra $t7, $s0, 16
  /* 0x80255D04 */  lh $t9, 46($t8)
  /* 0x80255D08 */  move $s0, $t7
  /* 0x80255D0C */  subu $t0, $s0, $t9
  /* 0x80255D10 */  sh $t0, 34($sp)
  /* 0x80255D14 */  lh $t1, 34($sp)
  /* 0x80255D18 */  slti $at, $t1, 10922
  /* 0x80255D1C */  bne $at, $zero, .perform_ground_quarter_step_L80255D38
  /* 0x80255D20 */  nop
  /* 0x80255D24 */  slti $at, $t1, 21846
  /* 0x80255D28 */  beq $at, $zero, .perform_ground_quarter_step_L80255D38
  /* 0x80255D2C */  nop
  /* 0x80255D30 */  b .perform_ground_quarter_step_L80255D74
  /* 0x80255D34 */  li $v0, 1
.perform_ground_quarter_step_L80255D38:
  /* 0x80255D38 */  lh $t2, 34($sp)
  /* 0x80255D3C */  slti $at, $t2, -10921
  /* 0x80255D40 */  beq $at, $zero, .perform_ground_quarter_step_L80255D5C
  /* 0x80255D44 */  nop
  /* 0x80255D48 */  slti $at, $t2, -21845
  /* 0x80255D4C */  bne $at, $zero, .perform_ground_quarter_step_L80255D5C
  /* 0x80255D50 */  nop
  /* 0x80255D54 */  b .perform_ground_quarter_step_L80255D74
  /* 0x80255D58 */  li $v0, 1
.perform_ground_quarter_step_L80255D5C:
  /* 0x80255D5C */  b .perform_ground_quarter_step_L80255D74
  /* 0x80255D60 */  li $v0, 3
.perform_ground_quarter_step_L80255D64:
  /* 0x80255D64 */  b .perform_ground_quarter_step_L80255D74
  /* 0x80255D68 */  li $v0, 1
  /* 0x80255D6C */  b .perform_ground_quarter_step_L80255D74
  /* 0x80255D70 */  nop
.perform_ground_quarter_step_L80255D74:
  /* 0x80255D74 */  lw $ra, 28($sp)
  /* 0x80255D78 */  lw $s0, 24($sp)
  /* 0x80255D7C */  addiu $sp, $sp, 64
  /* 0x80255D80 */  jr $ra
  /* 0x80255D84 */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x80255B04 */  addiu $sp, $sp, -64
  /* 0x80255B08 */  sw $ra, 28($sp)
  /* 0x80255B0C */  sw $a0, 64($sp)
  /* 0x80255B10 */  sw $a1, 68($sp)
  /* 0x80255B14 */  sw $s0, 24($sp)
  /* 0x80255B18 */  lw $a0, 68($sp)
  /* 0x80255B1C */  lui $a1, 0x41F0
  /* 0x80255B20 */  jal 0x80251A48
  /* 0x80255B24 */  lui $a2, 0x41C0
  /* 0x80255B28 */  sw $v0, 60($sp)
  /* 0x80255B2C */  lw $a0, 68($sp)
  /* 0x80255B30 */  lui $a1, 0x4270
  /* 0x80255B34 */  jal 0x80251A48
  /* 0x80255B38 */  lui $a2, 0x4248
  /* 0x80255B3C */  sw $v0, 56($sp)
  /* 0x80255B40 */  lw $t6, 68($sp)
  /* 0x80255B44 */  addiu $a3, $sp, 48
  /* 0x80255B48 */  lwc1 $f12, 0($t6)
  /* 0x80255B4C */  lwc1 $f14, 4($t6)
  /* 0x80255B50 */  jal 0x80381900
  /* 0x80255B54 */  lw $a2, 8($t6)
  /* 0x80255B58 */  swc1 $f0, 40($sp)
  /* 0x80255B5C */  lw $a0, 68($sp)
  /* 0x80255B60 */  lw $a1, 40($sp)
  /* 0x80255B64 */  jal 0x80251AFC
  /* 0x80255B68 */  addiu $a2, $sp, 52
  /* 0x80255B6C */  swc1 $f0, 44($sp)
  /* 0x80255B70 */  lw $t7, 68($sp)
  /* 0x80255B74 */  lwc1 $f12, 0($t7)
  /* 0x80255B78 */  jal 0x80381BA0
  /* 0x80255B7C */  lwc1 $f14, 8($t7)
  /* 0x80255B80 */  swc1 $f0, 36($sp)
  /* 0x80255B84 */  lw $t8, 56($sp)
  /* 0x80255B88 */  lw $t9, 64($sp)
  /* 0x80255B8C */  sw $t8, 96($t9)
  /* 0x80255B90 */  lw $t0, 48($sp)
  /* 0x80255B94 */  bne $t0, $zero, .perform_ground_quarter_step_L80255BA4
  /* 0x80255B98 */  nop
  /* 0x80255B9C */  b .perform_ground_quarter_step_L80255D74
  /* 0x80255BA0 */  li $v0, 2
.perform_ground_quarter_step_L80255BA4:
  /* 0x80255BA4 */  lw $t1, 64($sp)
  /* 0x80255BA8 */  lui $at, 0x1
  /* 0x80255BAC */  lw $t2, 12($t1)
  /* 0x80255BB0 */  and $t3, $t2, $at
  /* 0x80255BB4 */  beq $t3, $zero, .perform_ground_quarter_step_L80255BF4
  /* 0x80255BB8 */  nop
  /* 0x80255BBC */  lwc1 $f4, 40($sp)
  /* 0x80255BC0 */  lwc1 $f6, 36($sp)
  /* 0x80255BC4 */  c.lt.s $f4, $f6
  /* 0x80255BC8 */  nop
  /* 0x80255BCC */  bc1f .perform_ground_quarter_step_L80255BF4
  /* 0x80255BD0 */  nop
  /* 0x80255BD4 */  lwc1 $f8, 36($sp)
  /* 0x80255BD8 */  swc1 $f8, 40($sp)
  /* 0x80255BDC */  lui $t4, 0x8033
  /* 0x80255BE0 */  addiu $t4, $t4, -9480
  /* 0x80255BE4 */  sw $t4, 48($sp)
  /* 0x80255BE8 */  lwc1 $f10, 40($sp)
  /* 0x80255BEC */  lw $t5, 48($sp)
  /* 0x80255BF0 */  swc1 $f10, 40($t5)
.perform_ground_quarter_step_L80255BF4:
  /* 0x80255BF4 */  lui $at, 0x42C8
  /* 0x80255BF8 */  mtc1 $at, $f4
  /* 0x80255BFC */  lwc1 $f18, 40($sp)
  /* 0x80255C00 */  lw $t6, 68($sp)
  /* 0x80255C04 */  add.s $f6, $f18, $f4
  /* 0x80255C08 */  lwc1 $f16, 4($t6)
  /* 0x80255C0C */  c.lt.s $f6, $f16
  /* 0x80255C10 */  nop
  /* 0x80255C14 */  bc1f .perform_ground_quarter_step_L80255C7C
  /* 0x80255C18 */  nop
  /* 0x80255C1C */  lw $t7, 68($sp)
  /* 0x80255C20 */  lui $at, 0x4320
  /* 0x80255C24 */  mtc1 $at, $f10
  /* 0x80255C28 */  lwc1 $f8, 4($t7)
  /* 0x80255C2C */  lwc1 $f4, 44($sp)
  /* 0x80255C30 */  add.s $f18, $f8, $f10
  /* 0x80255C34 */  c.le.s $f4, $f18
  /* 0x80255C38 */  nop
  /* 0x80255C3C */  bc1f .perform_ground_quarter_step_L80255C4C
  /* 0x80255C40 */  nop
  /* 0x80255C44 */  b .perform_ground_quarter_step_L80255D74
  /* 0x80255C48 */  ori $v0, $zero, 0x2  ; <-- CHANGED
.perform_ground_quarter_step_L80255C4C:
  /* 0x80255C4C */  lw $a0, 64($sp)
  /* 0x80255C50 */  lw $a1, 68($sp)
  /* 0x80255C54 */  jal 0x80378800
  /* 0x80255C58 */  addiu $a0, $a0, 60
  /* 0x80255C5C */  lw $t8, 48($sp)
  /* 0x80255C60 */  lw $t9, 64($sp)
  /* 0x80255C64 */  sw $t8, 104($t9)
  /* 0x80255C68 */  lwc1 $f16, 40($sp)
  /* 0x80255C6C */  lw $t0, 64($sp)
  /* 0x80255C70 */  swc1 $f16, 112($t0)
  /* 0x80255C74 */  b .perform_ground_quarter_step_L80255D74
  /* 0x80255C78 */  move $v0, $zero
.perform_ground_quarter_step_L80255C7C:
  /* 0x80255C7C */  lui $at, 0x4320
  /* 0x80255C80 */  mtc1 $at, $f8
  /* 0x80255C84 */  lwc1 $f6, 40($sp)
  /* 0x80255C88 */  lwc1 $f18, 44($sp)
  /* 0x80255C8C */  add.s $f10, $f6, $f8
  /* 0x80255C90 */  c.le.s $f18, $f10
  /* 0x80255C94 */  nop
  /* 0x80255C98 */  bc1f .perform_ground_quarter_step_L80255CA8
  /* 0x80255C9C */  nop
  /* 0x80255CA0 */  b .perform_ground_quarter_step_L80255D74
  /* 0x80255CA4 */  li $v0, 2
.perform_ground_quarter_step_L80255CA8:
  /* 0x80255CA8 */  lw $t1, 68($sp)
  /* 0x80255CAC */  lw $a0, 64($sp)
  /* 0x80255CB0 */  lw $a2, 40($sp)
  /* 0x80255CB4 */  lw $a1, 0($t1)
  /* 0x80255CB8 */  lw $a3, 8($t1)
  /* 0x80255CBC */  jal 0x80378840
  /* 0x80255CC0 */  addiu $a0, $a0, 60
  /* 0x80255CC4 */  lw $t2, 48($sp)
  /* 0x80255CC8 */  lw $t3, 64($sp)
  /* 0x80255CCC */  sw $t2, 104($t3)
  /* 0x80255CD0 */  lwc1 $f4, 40($sp)
  /* 0x80255CD4 */  lw $t4, 64($sp)
  /* 0x80255CD8 */  swc1 $f4, 112($t4)
  /* 0x80255CDC */  lw $t5, 56($sp)
  /* 0x80255CE0 */  beq $t5, $zero, .perform_ground_quarter_step_L80255D64
  /* 0x80255CE4 */  nop
  /* 0x80255CE8 */  lw $t6, 56($sp)
  /* 0x80255CEC */  lwc1 $f12, 36($t6)
  /* 0x80255CF0 */  jal 0x8037A9A8
  /* 0x80255CF4 */  lwc1 $f14, 28($t6)
  /* 0x80255CF8 */  lw $t8, 64($sp)
  /* 0x80255CFC */  sll $s0, $v0, 16
  /* 0x80255D00 */  sra $t7, $s0, 16
  /* 0x80255D04 */  lh $t9, 46($t8)
  /* 0x80255D08 */  move $s0, $t7
  /* 0x80255D0C */  subu $t0, $s0, $t9
  /* 0x80255D10 */  sh $t0, 34($sp)
  /* 0x80255D14 */  lh $t1, 34($sp)
  /* 0x80255D18 */  slti $at, $t1, 10922
  /* 0x80255D1C */  bne $at, $zero, .perform_ground_quarter_step_L80255D38
  /* 0x80255D20 */  nop
  /* 0x80255D24 */  slti $at, $t1, 21846
  /* 0x80255D28 */  beq $at, $zero, .perform_ground_quarter_step_L80255D38
  /* 0x80255D2C */  nop
  /* 0x80255D30 */  b .perform_ground_quarter_step_L80255D74
  /* 0x80255D34 */  li $v0, 1
.perform_ground_quarter_step_L80255D38:
  /* 0x80255D38 */  lh $t2, 34($sp)
  /* 0x80255D3C */  slti $at, $t2, -10921
  /* 0x80255D40 */  beq $at, $zero, .perform_ground_quarter_step_L80255D5C
  /* 0x80255D44 */  nop
  /* 0x80255D48 */  slti $at, $t2, -21845
  /* 0x80255D4C */  bne $at, $zero, .perform_ground_quarter_step_L80255D5C
  /* 0x80255D50 */  nop
  /* 0x80255D54 */  b .perform_ground_quarter_step_L80255D74
  /* 0x80255D58 */  li $v0, 1
.perform_ground_quarter_step_L80255D5C:
  /* 0x80255D5C */  b .perform_ground_quarter_step_L80255D74
  /* 0x80255D60 */  li $v0, 3
.perform_ground_quarter_step_L80255D64:
  /* 0x80255D64 */  b .perform_ground_quarter_step_L80255D74
  /* 0x80255D68 */  li $v0, 1
  /* 0x80255D6C */  b .perform_ground_quarter_step_L80255D74
  /* 0x80255D70 */  nop
.perform_ground_quarter_step_L80255D74:
  /* 0x80255D74 */  lw $ra, 28($sp)
  /* 0x80255D78 */  lw $s0, 24($sp)
  /* 0x80255D7C */  addiu $sp, $sp, 64
  /* 0x80255D80 */  jr $ra
  /* 0x80255D84 */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x80255C48:
  ;   was: 24 02 00 02  li $v0, 2
  ;   new: 34 02 00 02  ori $v0, $zero, 0x2
