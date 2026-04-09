; Function: geo_process_background
; RAM: 0x8027C858  Size: 0x218

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x8027C858 */  addiu $sp, $sp, -64
  /* 0x8027C85C */  sw $ra, 20($sp)
  /* 0x8027C860 */  sw $a0, 64($sp)
  /* 0x8027C864 */  sw $zero, 60($sp)
  /* 0x8027C868 */  lw $t6, 64($sp)
  /* 0x8027C86C */  lw $t7, 20($t6)
  /* 0x8027C870 */  beq $t7, $zero, .geo_process_background_L8027C8A8
  /* 0x8027C874 */  nop
  /* 0x8027C878 */  lui $t9, 0x8034
  /* 0x8027C87C */  lh $t9, -17696($t9)
  /* 0x8027C880 */  lw $t8, 64($sp)
  /* 0x8027C884 */  lui $t1, 0x8034
  /* 0x8027C888 */  sll $t0, $t9, 6
  /* 0x8027C88C */  lw $t9, 20($t8)
  /* 0x8027C890 */  addiu $t1, $t1, -17688
  /* 0x8027C894 */  addu $a2, $t0, $t1
  /* 0x8027C898 */  li $a0, 1
  /* 0x8027C89C */  jalr $t9
  /* 0x8027C8A0 */  move $a1, $t8
  /* 0x8027C8A4 */  sw $v0, 60($sp)
.geo_process_background_L8027C8A8:
  /* 0x8027C8A8 */  lw $t2, 60($sp)
  /* 0x8027C8AC */  beq $t2, $zero, .geo_process_background_L8027C8E4
  /* 0x8027C8B0 */  nop
  /* 0x8027C8B4 */  lw $t4, 64($sp)
  /* 0x8027C8B8 */  lw $a0, 60($sp)
  /* 0x8027C8BC */  lui $at, 0x1FFF
  /* 0x8027C8C0 */  lh $a1, 2($t4)
  /* 0x8027C8C4 */  ori $at, $at, 0xFFFF
  /* 0x8027C8C8 */  and $t3, $a0, $at
  /* 0x8027C8CC */  sra $t5, $a1, 8
  /* 0x8027C8D0 */  move $a1, $t5
  /* 0x8027C8D4 */  jal 0x8027B904
  /* 0x8027C8D8 */  move $a0, $t3
  /* 0x8027C8DC */  b .geo_process_background_L8027CA3C
  /* 0x8027C8E0 */  nop
.geo_process_background_L8027C8E4:
  /* 0x8027C8E4 */  lui $t6, 0x8033
  /* 0x8027C8E8 */  lw $t6, -8460($t6)
  /* 0x8027C8EC */  beq $t6, $zero, .geo_process_background_L8027CA3C
  /* 0x8027C8F0 */  nop
  /* 0x8027C8F4 */  jal 0x80278F2C
  /* 0x8027C8F8 */  li $a0, 56
  /* 0x8027C8FC */  sw $v0, 56($sp)
  /* 0x8027C900 */  lw $t7, 56($sp)
  /* 0x8027C904 */  sw $t7, 52($sp)
  /* 0x8027C908 */  lw $t0, 52($sp)
  /* 0x8027C90C */  addiu $t1, $t0, 8
  /* 0x8027C910 */  sw $t1, 52($sp)
  /* 0x8027C914 */  sw $t0, 48($sp)
  /* 0x8027C918 */  lw $t9, 48($sp)
  /* 0x8027C91C */  lui $t8, 0xE700
  /* 0x8027C920 */  sw $t8, 0($t9)
  /* 0x8027C924 */  lw $t2, 48($sp)
  /* 0x8027C928 */  sw $zero, 4($t2)
  /* 0x8027C92C */  lw $t3, 52($sp)
  /* 0x8027C930 */  addiu $t4, $t3, 8
  /* 0x8027C934 */  sw $t4, 52($sp)
  /* 0x8027C938 */  sw $t3, 44($sp)
  /* 0x8027C93C */  lw $t6, 44($sp)
  /* 0x8027C940 */  lui $t5, 0xBA00
  /* 0x8027C944 */  ori $t5, $t5, 0x1402
  /* 0x8027C948 */  sw $t5, 0($t6)
  /* 0x8027C94C */  lw $t0, 44($sp)
  /* 0x8027C950 */  lui $t7, 0x30
  /* 0x8027C954 */  sw $t7, 4($t0)
  /* 0x8027C958 */  lw $t1, 52($sp)
  /* 0x8027C95C */  addiu $t8, $t1, 8
  /* 0x8027C960 */  sw $t8, 52($sp)
  /* 0x8027C964 */  sw $t1, 40($sp)
  /* 0x8027C968 */  lw $t2, 40($sp)
  /* 0x8027C96C */  lui $t9, 0xF700
  /* 0x8027C970 */  sw $t9, 0($t2)
  /* 0x8027C974 */  lw $t3, 64($sp)
  /* 0x8027C978 */  lw $t5, 40($sp)
  /* 0x8027C97C */  lw $t4, 28($t3)
  /* 0x8027C980 */  sw $t4, 4($t5)
  /* 0x8027C984 */  lw $t6, 52($sp)
  /* 0x8027C988 */  addiu $t7, $t6, 8
  /* 0x8027C98C */  sw $t7, 52($sp)
  /* 0x8027C990 */  sw $t6, 36($sp)
  /* 0x8027C994 */  lw $t1, 36($sp)
  /* 0x8027C998 */  lui $t0, 0xF64F
  /* 0x8027C99C */  ori $t0, $t0, 0xC39C  ; <-- CHANGED
  /* 0x8027C9A0 */  sw $t0, 0($t1)
  /* 0x8027C9A4 */  lw $t9, 36($sp)
  /* 0x8027C9A8 */  li $t8, 32  ; <-- CHANGED
  /* 0x8027C9AC */  sw $t8, 4($t9)
  /* 0x8027C9B0 */  lw $t2, 52($sp)
  /* 0x8027C9B4 */  addiu $t3, $t2, 8
  /* 0x8027C9B8 */  sw $t3, 52($sp)
  /* 0x8027C9BC */  sw $t2, 32($sp)
  /* 0x8027C9C0 */  lw $t5, 32($sp)
  /* 0x8027C9C4 */  lui $t4, 0xE700
  /* 0x8027C9C8 */  sw $t4, 0($t5)
  /* 0x8027C9CC */  lw $t6, 32($sp)
  /* 0x8027C9D0 */  sw $zero, 4($t6)
  /* 0x8027C9D4 */  lw $t7, 52($sp)
  /* 0x8027C9D8 */  addiu $t0, $t7, 8
  /* 0x8027C9DC */  sw $t0, 52($sp)
  /* 0x8027C9E0 */  sw $t7, 28($sp)
  /* 0x8027C9E4 */  lw $t8, 28($sp)
  /* 0x8027C9E8 */  lui $t1, 0xBA00
  /* 0x8027C9EC */  ori $t1, $t1, 0x1402
  /* 0x8027C9F0 */  sw $t1, 0($t8)
  /* 0x8027C9F4 */  lw $t9, 28($sp)
  /* 0x8027C9F8 */  sw $zero, 4($t9)
  /* 0x8027C9FC */  lw $t2, 52($sp)
  /* 0x8027CA00 */  addiu $t3, $t2, 8
  /* 0x8027CA04 */  sw $t3, 52($sp)
  /* 0x8027CA08 */  sw $t2, 24($sp)
  /* 0x8027CA0C */  lw $t5, 24($sp)
  /* 0x8027CA10 */  lui $t4, 0xB800
  /* 0x8027CA14 */  sw $t4, 0($t5)
  /* 0x8027CA18 */  lw $t6, 24($sp)
  /* 0x8027CA1C */  sw $zero, 4($t6)
  /* 0x8027CA20 */  lw $a0, 56($sp)
  /* 0x8027CA24 */  lui $at, 0x1FFF
  /* 0x8027CA28 */  ori $at, $at, 0xFFFF
  /* 0x8027CA2C */  and $t7, $a0, $at
  /* 0x8027CA30 */  move $a0, $t7
  /* 0x8027CA34 */  jal 0x8027B904
  /* 0x8027CA38 */  move $a1, $zero
.geo_process_background_L8027CA3C:
  /* 0x8027CA3C */  lw $t0, 64($sp)
  /* 0x8027CA40 */  lw $t1, 16($t0)
  /* 0x8027CA44 */  beq $t1, $zero, .geo_process_background_L8027CA58
  /* 0x8027CA48 */  nop
  /* 0x8027CA4C */  lw $t8, 64($sp)
  /* 0x8027CA50 */  jal 0x8027DEA8
  /* 0x8027CA54 */  lw $a0, 16($t8)
.geo_process_background_L8027CA58:
  /* 0x8027CA58 */  b .geo_process_background_L8027CA60
  /* 0x8027CA5C */  nop
.geo_process_background_L8027CA60:
  /* 0x8027CA60 */  lw $ra, 20($sp)
  /* 0x8027CA64 */  addiu $sp, $sp, 64
  /* 0x8027CA68 */  jr $ra
  /* 0x8027CA6C */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x8027C858 */  addiu $sp, $sp, -64
  /* 0x8027C85C */  sw $ra, 20($sp)
  /* 0x8027C860 */  sw $a0, 64($sp)
  /* 0x8027C864 */  sw $zero, 60($sp)
  /* 0x8027C868 */  lw $t6, 64($sp)
  /* 0x8027C86C */  lw $t7, 20($t6)
  /* 0x8027C870 */  beq $t7, $zero, .geo_process_background_L8027C8A8
  /* 0x8027C874 */  nop
  /* 0x8027C878 */  lui $t9, 0x8034
  /* 0x8027C87C */  lh $t9, -17696($t9)
  /* 0x8027C880 */  lw $t8, 64($sp)
  /* 0x8027C884 */  lui $t1, 0x8034
  /* 0x8027C888 */  sll $t0, $t9, 6
  /* 0x8027C88C */  lw $t9, 20($t8)
  /* 0x8027C890 */  addiu $t1, $t1, -17688
  /* 0x8027C894 */  addu $a2, $t0, $t1
  /* 0x8027C898 */  li $a0, 1
  /* 0x8027C89C */  jalr $t9
  /* 0x8027C8A0 */  move $a1, $t8
  /* 0x8027C8A4 */  sw $v0, 60($sp)
.geo_process_background_L8027C8A8:
  /* 0x8027C8A8 */  lw $t2, 60($sp)
  /* 0x8027C8AC */  beq $t2, $zero, .geo_process_background_L8027C8E4
  /* 0x8027C8B0 */  nop
  /* 0x8027C8B4 */  lw $t4, 64($sp)
  /* 0x8027C8B8 */  lw $a0, 60($sp)
  /* 0x8027C8BC */  lui $at, 0x1FFF
  /* 0x8027C8C0 */  lh $a1, 2($t4)
  /* 0x8027C8C4 */  ori $at, $at, 0xFFFF
  /* 0x8027C8C8 */  and $t3, $a0, $at
  /* 0x8027C8CC */  sra $t5, $a1, 8
  /* 0x8027C8D0 */  move $a1, $t5
  /* 0x8027C8D4 */  jal 0x8027B904
  /* 0x8027C8D8 */  move $a0, $t3
  /* 0x8027C8DC */  b .geo_process_background_L8027CA3C
  /* 0x8027C8E0 */  nop
.geo_process_background_L8027C8E4:
  /* 0x8027C8E4 */  lui $t6, 0x8033
  /* 0x8027C8E8 */  lw $t6, -8460($t6)
  /* 0x8027C8EC */  beq $t6, $zero, .geo_process_background_L8027CA3C
  /* 0x8027C8F0 */  nop
  /* 0x8027C8F4 */  jal 0x80278F2C
  /* 0x8027C8F8 */  li $a0, 56
  /* 0x8027C8FC */  sw $v0, 56($sp)
  /* 0x8027C900 */  lw $t7, 56($sp)
  /* 0x8027C904 */  sw $t7, 52($sp)
  /* 0x8027C908 */  lw $t0, 52($sp)
  /* 0x8027C90C */  addiu $t1, $t0, 8
  /* 0x8027C910 */  sw $t1, 52($sp)
  /* 0x8027C914 */  sw $t0, 48($sp)
  /* 0x8027C918 */  lw $t9, 48($sp)
  /* 0x8027C91C */  lui $t8, 0xE700
  /* 0x8027C920 */  sw $t8, 0($t9)
  /* 0x8027C924 */  lw $t2, 48($sp)
  /* 0x8027C928 */  sw $zero, 4($t2)
  /* 0x8027C92C */  lw $t3, 52($sp)
  /* 0x8027C930 */  addiu $t4, $t3, 8
  /* 0x8027C934 */  sw $t4, 52($sp)
  /* 0x8027C938 */  sw $t3, 44($sp)
  /* 0x8027C93C */  lw $t6, 44($sp)
  /* 0x8027C940 */  lui $t5, 0xBA00
  /* 0x8027C944 */  ori $t5, $t5, 0x1402
  /* 0x8027C948 */  sw $t5, 0($t6)
  /* 0x8027C94C */  lw $t0, 44($sp)
  /* 0x8027C950 */  lui $t7, 0x30
  /* 0x8027C954 */  sw $t7, 4($t0)
  /* 0x8027C958 */  lw $t1, 52($sp)
  /* 0x8027C95C */  addiu $t8, $t1, 8
  /* 0x8027C960 */  sw $t8, 52($sp)
  /* 0x8027C964 */  sw $t1, 40($sp)
  /* 0x8027C968 */  lw $t2, 40($sp)
  /* 0x8027C96C */  lui $t9, 0xF700
  /* 0x8027C970 */  sw $t9, 0($t2)
  /* 0x8027C974 */  lw $t3, 64($sp)
  /* 0x8027C978 */  lw $t5, 40($sp)
  /* 0x8027C97C */  lw $t4, 28($t3)
  /* 0x8027C980 */  sw $t4, 4($t5)
  /* 0x8027C984 */  lw $t6, 52($sp)
  /* 0x8027C988 */  addiu $t7, $t6, 8
  /* 0x8027C98C */  sw $t7, 52($sp)
  /* 0x8027C990 */  sw $t6, 36($sp)
  /* 0x8027C994 */  lw $t1, 36($sp)
  /* 0x8027C998 */  lui $t0, 0xF64F
  /* 0x8027C99C */  ori $t0, $t0, 0xC3BC  ; <-- CHANGED
  /* 0x8027C9A0 */  sw $t0, 0($t1)
  /* 0x8027C9A4 */  lw $t9, 36($sp)
  /* 0x8027C9A8 */  li $t8, 0  ; <-- CHANGED
  /* 0x8027C9AC */  sw $t8, 4($t9)
  /* 0x8027C9B0 */  lw $t2, 52($sp)
  /* 0x8027C9B4 */  addiu $t3, $t2, 8
  /* 0x8027C9B8 */  sw $t3, 52($sp)
  /* 0x8027C9BC */  sw $t2, 32($sp)
  /* 0x8027C9C0 */  lw $t5, 32($sp)
  /* 0x8027C9C4 */  lui $t4, 0xE700
  /* 0x8027C9C8 */  sw $t4, 0($t5)
  /* 0x8027C9CC */  lw $t6, 32($sp)
  /* 0x8027C9D0 */  sw $zero, 4($t6)
  /* 0x8027C9D4 */  lw $t7, 52($sp)
  /* 0x8027C9D8 */  addiu $t0, $t7, 8
  /* 0x8027C9DC */  sw $t0, 52($sp)
  /* 0x8027C9E0 */  sw $t7, 28($sp)
  /* 0x8027C9E4 */  lw $t8, 28($sp)
  /* 0x8027C9E8 */  lui $t1, 0xBA00
  /* 0x8027C9EC */  ori $t1, $t1, 0x1402
  /* 0x8027C9F0 */  sw $t1, 0($t8)
  /* 0x8027C9F4 */  lw $t9, 28($sp)
  /* 0x8027C9F8 */  sw $zero, 4($t9)
  /* 0x8027C9FC */  lw $t2, 52($sp)
  /* 0x8027CA00 */  addiu $t3, $t2, 8
  /* 0x8027CA04 */  sw $t3, 52($sp)
  /* 0x8027CA08 */  sw $t2, 24($sp)
  /* 0x8027CA0C */  lw $t5, 24($sp)
  /* 0x8027CA10 */  lui $t4, 0xB800
  /* 0x8027CA14 */  sw $t4, 0($t5)
  /* 0x8027CA18 */  lw $t6, 24($sp)
  /* 0x8027CA1C */  sw $zero, 4($t6)
  /* 0x8027CA20 */  lw $a0, 56($sp)
  /* 0x8027CA24 */  lui $at, 0x1FFF
  /* 0x8027CA28 */  ori $at, $at, 0xFFFF
  /* 0x8027CA2C */  and $t7, $a0, $at
  /* 0x8027CA30 */  move $a0, $t7
  /* 0x8027CA34 */  jal 0x8027B904
  /* 0x8027CA38 */  move $a1, $zero
.geo_process_background_L8027CA3C:
  /* 0x8027CA3C */  lw $t0, 64($sp)
  /* 0x8027CA40 */  lw $t1, 16($t0)
  /* 0x8027CA44 */  beq $t1, $zero, .geo_process_background_L8027CA58
  /* 0x8027CA48 */  nop
  /* 0x8027CA4C */  lw $t8, 64($sp)
  /* 0x8027CA50 */  jal 0x8027DEA8
  /* 0x8027CA54 */  lw $a0, 16($t8)
.geo_process_background_L8027CA58:
  /* 0x8027CA58 */  b .geo_process_background_L8027CA60
  /* 0x8027CA5C */  nop
.geo_process_background_L8027CA60:
  /* 0x8027CA60 */  lw $ra, 20($sp)
  /* 0x8027CA64 */  addiu $sp, $sp, 64
  /* 0x8027CA68 */  jr $ra
  /* 0x8027CA6C */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x8027C99C:
  ;   was: 35 08 C3 9C  ori $t0, $t0, 0xC39C
  ;   new: 35 08 C3 BC  ori $t0, $t0, 0xC3BC
  ; 0x8027C9A8:
  ;   was: 24 18 00 20  li $t8, 32
  ;   new: 24 18 00 00  li $t8, 0
