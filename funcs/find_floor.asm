; Function: find_floor
; RAM: 0x80381900  Size: 0x2A0

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x80381900 */  addiu $sp, $sp, -64
  /* 0x80381904 */  sw $ra, 28($sp)
  /* 0x80381908 */  sw $a2, 72($sp)
  /* 0x8038190C */  sw $a3, 76($sp)
  /* 0x80381910 */  swc1 $f12, 64($sp)
  /* 0x80381914 */  swc1 $f14, 68($sp)
  /* 0x80381918 */  lui $at, 0x8039
  /* 0x8038191C */  lwc1 $f4, -17504($at)
  /* 0x80381920 */  swc1 $f4, 44($sp)
  /* 0x80381924 */  lui $at, 0x8039
  /* 0x80381928 */  lwc1 $f6, -17500($at)
  /* 0x8038192C */  swc1 $f6, 40($sp)
  /* 0x80381930 */  lwc1 $f8, 64($sp)
  /* 0x80381934 */  trunc.w.s $f10, $f8
  /* 0x80381938 */  mfc1 $t7, $f10
  /* 0x8038193C */  nop  ; <-- CHANGED
  /* 0x80381940 */  sh $t7, 38($sp)
  /* 0x80381944 */  lwc1 $f16, 68($sp)
  /* 0x80381948 */  trunc.w.s $f18, $f16
  /* 0x8038194C */  mfc1 $t9, $f18
  /* 0x80381950 */  nop
  /* 0x80381954 */  sh $t9, 36($sp)
  /* 0x80381958 */  lwc1 $f4, 72($sp)
  /* 0x8038195C */  trunc.w.s $f6, $f4
  /* 0x80381960 */  mfc1 $t1, $f6
  /* 0x80381964 */  nop  ; <-- CHANGED
  /* 0x80381968 */  sh $t1, 34($sp)
  /* 0x8038196C */  lw $t2, 76($sp)
  /* 0x80381970 */  sw $zero, 0($t2)
  /* 0x80381974 */  lh $t3, 38($sp)
  /* 0x80381978 */  slti $at, $t3, -8191  ; <-- CHANGED
  /* 0x8038197C */  bne $at, $zero, .find_floor_L80381990
  /* 0x80381980 */  nop
  /* 0x80381984 */  slti $at, $t3, 8192  ; <-- CHANGED
  /* 0x80381988 */  bne $at, $zero, .find_floor_L80381998
  /* 0x8038198C */  nop
.find_floor_L80381990:
  /* 0x80381990 */  b .find_floor_L80381B90
  /* 0x80381994 */  lwc1 $f0, 44($sp)
.find_floor_L80381998:
  /* 0x80381998 */  lh $t4, 34($sp)
  /* 0x8038199C */  slti $at, $t4, -8191  ; <-- CHANGED
  /* 0x803819A0 */  bne $at, $zero, .find_floor_L803819B4
  /* 0x803819A4 */  nop
  /* 0x803819A8 */  slti $at, $t4, 8192  ; <-- CHANGED
  /* 0x803819AC */  bne $at, $zero, .find_floor_L803819BC
  /* 0x803819B0 */  nop
.find_floor_L803819B4:
  /* 0x803819B4 */  b .find_floor_L80381B90
  /* 0x803819B8 */  lwc1 $f0, 44($sp)
.find_floor_L803819BC:
  /* 0x803819BC */  lh $t5, 38($sp)
  /* 0x803819C0 */  addiu $t6, $t5, 8192
  /* 0x803819C4 */  bgez $t6, .find_floor_L803819D4
  /* 0x803819C8 */  sra $t7, $t6, 10
  /* 0x803819CC */  addiu $at, $t6, 1023
  /* 0x803819D0 */  sra $t7, $at, 10
.find_floor_L803819D4:
  /* 0x803819D4 */  andi $t8, $t7, 0xF
  /* 0x803819D8 */  sh $t8, 60($sp)
  /* 0x803819DC */  lh $t9, 34($sp)
  /* 0x803819E0 */  addiu $t0, $t9, 8192
  /* 0x803819E4 */  bgez $t0, .find_floor_L803819F4
  /* 0x803819E8 */  sra $t1, $t0, 10
  /* 0x803819EC */  addiu $at, $t0, 1023
  /* 0x803819F0 */  sra $t1, $at, 10
.find_floor_L803819F4:
  /* 0x803819F4 */  andi $t2, $t1, 0xF
  /* 0x803819F8 */  sh $t2, 62($sp)
  /* 0x803819FC */  lh $t3, 62($sp)
  /* 0x80381A00 */  lh $t5, 60($sp)
  /* 0x80381A04 */  lui $t8, 0x8039
  /* 0x80381A08 */  sll $t4, $t3, 2
  /* 0x80381A0C */  sll $t6, $t5, 2
  /* 0x80381A10 */  subu $t4, $t4, $t3
  /* 0x80381A14 */  subu $t6, $t6, $t5
  /* 0x80381A18 */  sll $t6, $t6, 3
  /* 0x80381A1C */  sll $t4, $t4, 7
  /* 0x80381A20 */  addu $t7, $t4, $t6
  /* 0x80381A24 */  addu $t8, $t8, $t7
  /* 0x80381A28 */  lw $t8, -10600($t8)
  /* 0x80381A2C */  sw $t8, 48($sp)
  /* 0x80381A30 */  addiu $t9, $sp, 40
  /* 0x80381A34 */  sw $t9, 16($sp)
  /* 0x80381A38 */  lw $a0, 48($sp)
  /* 0x80381A3C */  lh $a1, 38($sp)
  /* 0x80381A40 */  lh $a2, 36($sp)
  /* 0x80381A44 */  jal 0x8038156C
  /* 0x80381A48 */  lh $a3, 34($sp)
  /* 0x80381A4C */  sw $v0, 52($sp)
  /* 0x80381A50 */  lh $t0, 62($sp)
  /* 0x80381A54 */  lh $t2, 60($sp)
  /* 0x80381A58 */  lui $t4, 0x8039
  /* 0x80381A5C */  sll $t1, $t0, 2
  /* 0x80381A60 */  sll $t3, $t2, 2
  /* 0x80381A64 */  subu $t1, $t1, $t0
  /* 0x80381A68 */  subu $t3, $t3, $t2
  /* 0x80381A6C */  sll $t3, $t3, 3
  /* 0x80381A70 */  sll $t1, $t1, 7
  /* 0x80381A74 */  addu $t5, $t1, $t3
  /* 0x80381A78 */  addu $t4, $t4, $t5
  /* 0x80381A7C */  lw $t4, -16744($t4)
  /* 0x80381A80 */  sw $t4, 48($sp)
  /* 0x80381A84 */  addiu $t6, $sp, 44
  /* 0x80381A88 */  sw $t6, 16($sp)
  /* 0x80381A8C */  lw $a0, 48($sp)
  /* 0x80381A90 */  lh $a1, 38($sp)
  /* 0x80381A94 */  lh $a2, 36($sp)
  /* 0x80381A98 */  jal 0x8038156C
  /* 0x80381A9C */  lh $a3, 34($sp)
  /* 0x80381AA0 */  sw $v0, 56($sp)
  /* 0x80381AA4 */  lui $t7, 0x8036
  /* 0x80381AA8 */  lh $t7, 4482($t7)
  /* 0x80381AAC */  bne $t7, $zero, .find_floor_L80381B10
  /* 0x80381AB0 */  nop
  /* 0x80381AB4 */  lw $t8, 56($sp)
  /* 0x80381AB8 */  beq $t8, $zero, .find_floor_L80381B08
  /* 0x80381ABC */  nop
  /* 0x80381AC0 */  lh $t9, 0($t8)
  /* 0x80381AC4 */  li $at, 18
  /* 0x80381AC8 */  bne $t9, $at, .find_floor_L80381B08
  /* 0x80381ACC */  nop
  /* 0x80381AD0 */  lui $at, 0x4348
  /* 0x80381AD4 */  mtc1 $at, $f10
  /* 0x80381AD8 */  lwc1 $f8, 44($sp)
  /* 0x80381ADC */  addiu $t2, $sp, 44
  /* 0x80381AE0 */  sw $t2, 16($sp)
  /* 0x80381AE4 */  sub.s $f16, $f8, $f10
  /* 0x80381AE8 */  lw $a0, 48($sp)
  /* 0x80381AEC */  lh $a1, 38($sp)
  /* 0x80381AF0 */  lh $a3, 34($sp)
  /* 0x80381AF4 */  trunc.w.s $f18, $f16
  /* 0x80381AF8 */  mfc1 $a2, $f18
  /* 0x80381AFC */  jal 0x8038156C
  /* 0x80381B00 */  nop
  /* 0x80381B04 */  sw $v0, 56($sp)
.find_floor_L80381B08:
  /* 0x80381B08 */  b .find_floor_L80381B18
  /* 0x80381B0C */  nop
.find_floor_L80381B10:
  /* 0x80381B10 */  lui $at, 0x8036
  /* 0x80381B14 */  sh $zero, 4482($at)
.find_floor_L80381B18:
  /* 0x80381B18 */  lw $t1, 56($sp)
  /* 0x80381B1C */  bne $t1, $zero, .find_floor_L80381B38
  /* 0x80381B20 */  nop
  /* 0x80381B24 */  lui $t3, 0x8034
  /* 0x80381B28 */  lw $t3, -11676($t3)
  /* 0x80381B2C */  lui $at, 0x8034
  /* 0x80381B30 */  addiu $t5, $t3, 1
  /* 0x80381B34 */  sw $t5, -11676($at)
.find_floor_L80381B38:
  /* 0x80381B38 */  lwc1 $f4, 40($sp)
  /* 0x80381B3C */  lwc1 $f6, 44($sp)
  /* 0x80381B40 */  c.lt.s $f6, $f4
  /* 0x80381B44 */  nop
  /* 0x80381B48 */  bc1f .find_floor_L80381B60
  /* 0x80381B4C */  nop
  /* 0x80381B50 */  lw $t4, 52($sp)
  /* 0x80381B54 */  sw $t4, 56($sp)
  /* 0x80381B58 */  lwc1 $f8, 40($sp)
  /* 0x80381B5C */  swc1 $f8, 44($sp)
.find_floor_L80381B60:
  /* 0x80381B60 */  lw $t6, 56($sp)
  /* 0x80381B64 */  lw $t7, 76($sp)
  /* 0x80381B68 */  sw $t6, 0($t7)
  /* 0x80381B6C */  lui $t8, 0x8034
  /* 0x80381B70 */  lh $t8, -11660($t8)
  /* 0x80381B74 */  lui $at, 0x8034
  /* 0x80381B78 */  addiu $t9, $t8, 1
  /* 0x80381B7C */  sh $t9, -11660($at)
  /* 0x80381B80 */  b .find_floor_L80381B90
  /* 0x80381B84 */  lwc1 $f0, 44($sp)
  /* 0x80381B88 */  b .find_floor_L80381B90
  /* 0x80381B8C */  nop
.find_floor_L80381B90:
  /* 0x80381B90 */  lw $ra, 28($sp)
  /* 0x80381B94 */  addiu $sp, $sp, 64
  /* 0x80381B98 */  jr $ra
  /* 0x80381B9C */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x80381900 */  addiu $sp, $sp, -64
  /* 0x80381904 */  sw $ra, 28($sp)
  /* 0x80381908 */  sw $a2, 72($sp)
  /* 0x8038190C */  sw $a3, 76($sp)
  /* 0x80381910 */  swc1 $f12, 64($sp)
  /* 0x80381914 */  swc1 $f14, 68($sp)
  /* 0x80381918 */  lui $at, 0x8039
  /* 0x8038191C */  lwc1 $f4, -17504($at)
  /* 0x80381920 */  swc1 $f4, 44($sp)
  /* 0x80381924 */  lui $at, 0x8039
  /* 0x80381928 */  lwc1 $f6, -17500($at)
  /* 0x8038192C */  swc1 $f6, 40($sp)
  /* 0x80381930 */  lwc1 $f8, 64($sp)
  /* 0x80381934 */  trunc.w.s $f10, $f8
  /* 0x80381938 */  mfc1 $t7, $f10
  /* 0x8038193C */  sra $t7, $t7, 2  ; <-- CHANGED
  /* 0x80381940 */  sh $t7, 38($sp)
  /* 0x80381944 */  lwc1 $f16, 68($sp)
  /* 0x80381948 */  trunc.w.s $f18, $f16
  /* 0x8038194C */  mfc1 $t9, $f18
  /* 0x80381950 */  nop
  /* 0x80381954 */  sh $t9, 36($sp)
  /* 0x80381958 */  lwc1 $f4, 72($sp)
  /* 0x8038195C */  trunc.w.s $f6, $f4
  /* 0x80381960 */  mfc1 $t1, $f6
  /* 0x80381964 */  sra $t1, $t1, 2  ; <-- CHANGED
  /* 0x80381968 */  sh $t1, 34($sp)
  /* 0x8038196C */  lw $t2, 76($sp)
  /* 0x80381970 */  sw $zero, 0($t2)
  /* 0x80381974 */  lh $t3, 38($sp)
  /* 0x80381978 */  slti $at, $t3, -32768  ; <-- CHANGED
  /* 0x8038197C */  bne $at, $zero, .find_floor_L80381990
  /* 0x80381980 */  nop
  /* 0x80381984 */  slti $at, $t3, 32767  ; <-- CHANGED
  /* 0x80381988 */  bne $at, $zero, .find_floor_L80381998
  /* 0x8038198C */  nop
.find_floor_L80381990:
  /* 0x80381990 */  b .find_floor_L80381B90
  /* 0x80381994 */  lwc1 $f0, 44($sp)
.find_floor_L80381998:
  /* 0x80381998 */  lh $t4, 34($sp)
  /* 0x8038199C */  slti $at, $t4, -32768  ; <-- CHANGED
  /* 0x803819A0 */  bne $at, $zero, .find_floor_L803819B4
  /* 0x803819A4 */  nop
  /* 0x803819A8 */  slti $at, $t4, 32767  ; <-- CHANGED
  /* 0x803819AC */  bne $at, $zero, .find_floor_L803819BC
  /* 0x803819B0 */  nop
.find_floor_L803819B4:
  /* 0x803819B4 */  b .find_floor_L80381B90
  /* 0x803819B8 */  lwc1 $f0, 44($sp)
.find_floor_L803819BC:
  /* 0x803819BC */  lh $t5, 38($sp)
  /* 0x803819C0 */  addiu $t6, $t5, 8192
  /* 0x803819C4 */  bgez $t6, .find_floor_L803819D4
  /* 0x803819C8 */  sra $t7, $t6, 10
  /* 0x803819CC */  addiu $at, $t6, 1023
  /* 0x803819D0 */  sra $t7, $at, 10
.find_floor_L803819D4:
  /* 0x803819D4 */  andi $t8, $t7, 0xF
  /* 0x803819D8 */  sh $t8, 60($sp)
  /* 0x803819DC */  lh $t9, 34($sp)
  /* 0x803819E0 */  addiu $t0, $t9, 8192
  /* 0x803819E4 */  bgez $t0, .find_floor_L803819F4
  /* 0x803819E8 */  sra $t1, $t0, 10
  /* 0x803819EC */  addiu $at, $t0, 1023
  /* 0x803819F0 */  sra $t1, $at, 10
.find_floor_L803819F4:
  /* 0x803819F4 */  andi $t2, $t1, 0xF
  /* 0x803819F8 */  sh $t2, 62($sp)
  /* 0x803819FC */  lh $t3, 62($sp)
  /* 0x80381A00 */  lh $t5, 60($sp)
  /* 0x80381A04 */  lui $t8, 0x8039
  /* 0x80381A08 */  sll $t4, $t3, 2
  /* 0x80381A0C */  sll $t6, $t5, 2
  /* 0x80381A10 */  subu $t4, $t4, $t3
  /* 0x80381A14 */  subu $t6, $t6, $t5
  /* 0x80381A18 */  sll $t6, $t6, 3
  /* 0x80381A1C */  sll $t4, $t4, 7
  /* 0x80381A20 */  addu $t7, $t4, $t6
  /* 0x80381A24 */  addu $t8, $t8, $t7
  /* 0x80381A28 */  lw $t8, -10600($t8)
  /* 0x80381A2C */  sw $t8, 48($sp)
  /* 0x80381A30 */  addiu $t9, $sp, 40
  /* 0x80381A34 */  sw $t9, 16($sp)
  /* 0x80381A38 */  lw $a0, 48($sp)
  /* 0x80381A3C */  lh $a1, 38($sp)
  /* 0x80381A40 */  lh $a2, 36($sp)
  /* 0x80381A44 */  jal 0x8038156C
  /* 0x80381A48 */  lh $a3, 34($sp)
  /* 0x80381A4C */  sw $v0, 52($sp)
  /* 0x80381A50 */  lh $t0, 62($sp)
  /* 0x80381A54 */  lh $t2, 60($sp)
  /* 0x80381A58 */  lui $t4, 0x8039
  /* 0x80381A5C */  sll $t1, $t0, 2
  /* 0x80381A60 */  sll $t3, $t2, 2
  /* 0x80381A64 */  subu $t1, $t1, $t0
  /* 0x80381A68 */  subu $t3, $t3, $t2
  /* 0x80381A6C */  sll $t3, $t3, 3
  /* 0x80381A70 */  sll $t1, $t1, 7
  /* 0x80381A74 */  addu $t5, $t1, $t3
  /* 0x80381A78 */  addu $t4, $t4, $t5
  /* 0x80381A7C */  lw $t4, -16744($t4)
  /* 0x80381A80 */  sw $t4, 48($sp)
  /* 0x80381A84 */  addiu $t6, $sp, 44
  /* 0x80381A88 */  sw $t6, 16($sp)
  /* 0x80381A8C */  lw $a0, 48($sp)
  /* 0x80381A90 */  lh $a1, 38($sp)
  /* 0x80381A94 */  lh $a2, 36($sp)
  /* 0x80381A98 */  jal 0x8038156C
  /* 0x80381A9C */  lh $a3, 34($sp)
  /* 0x80381AA0 */  sw $v0, 56($sp)
  /* 0x80381AA4 */  lui $t7, 0x8036
  /* 0x80381AA8 */  lh $t7, 4482($t7)
  /* 0x80381AAC */  bne $t7, $zero, .find_floor_L80381B10
  /* 0x80381AB0 */  nop
  /* 0x80381AB4 */  lw $t8, 56($sp)
  /* 0x80381AB8 */  beq $t8, $zero, .find_floor_L80381B08
  /* 0x80381ABC */  nop
  /* 0x80381AC0 */  lh $t9, 0($t8)
  /* 0x80381AC4 */  li $at, 18
  /* 0x80381AC8 */  bne $t9, $at, .find_floor_L80381B08
  /* 0x80381ACC */  nop
  /* 0x80381AD0 */  lui $at, 0x4348
  /* 0x80381AD4 */  mtc1 $at, $f10
  /* 0x80381AD8 */  lwc1 $f8, 44($sp)
  /* 0x80381ADC */  addiu $t2, $sp, 44
  /* 0x80381AE0 */  sw $t2, 16($sp)
  /* 0x80381AE4 */  sub.s $f16, $f8, $f10
  /* 0x80381AE8 */  lw $a0, 48($sp)
  /* 0x80381AEC */  lh $a1, 38($sp)
  /* 0x80381AF0 */  lh $a3, 34($sp)
  /* 0x80381AF4 */  trunc.w.s $f18, $f16
  /* 0x80381AF8 */  mfc1 $a2, $f18
  /* 0x80381AFC */  jal 0x8038156C
  /* 0x80381B00 */  nop
  /* 0x80381B04 */  sw $v0, 56($sp)
.find_floor_L80381B08:
  /* 0x80381B08 */  b .find_floor_L80381B18
  /* 0x80381B0C */  nop
.find_floor_L80381B10:
  /* 0x80381B10 */  lui $at, 0x8036
  /* 0x80381B14 */  sh $zero, 4482($at)
.find_floor_L80381B18:
  /* 0x80381B18 */  lw $t1, 56($sp)
  /* 0x80381B1C */  bne $t1, $zero, .find_floor_L80381B38
  /* 0x80381B20 */  nop
  /* 0x80381B24 */  lui $t3, 0x8034
  /* 0x80381B28 */  lw $t3, -11676($t3)
  /* 0x80381B2C */  lui $at, 0x8034
  /* 0x80381B30 */  addiu $t5, $t3, 1
  /* 0x80381B34 */  sw $t5, -11676($at)
.find_floor_L80381B38:
  /* 0x80381B38 */  lwc1 $f4, 40($sp)
  /* 0x80381B3C */  lwc1 $f6, 44($sp)
  /* 0x80381B40 */  c.lt.s $f6, $f4
  /* 0x80381B44 */  nop
  /* 0x80381B48 */  bc1f .find_floor_L80381B60
  /* 0x80381B4C */  nop
  /* 0x80381B50 */  lw $t4, 52($sp)
  /* 0x80381B54 */  sw $t4, 56($sp)
  /* 0x80381B58 */  lwc1 $f8, 40($sp)
  /* 0x80381B5C */  swc1 $f8, 44($sp)
.find_floor_L80381B60:
  /* 0x80381B60 */  lw $t6, 56($sp)
  /* 0x80381B64 */  lw $t7, 76($sp)
  /* 0x80381B68 */  sw $t6, 0($t7)
  /* 0x80381B6C */  lui $t8, 0x8034
  /* 0x80381B70 */  lh $t8, -11660($t8)
  /* 0x80381B74 */  lui $at, 0x8034
  /* 0x80381B78 */  addiu $t9, $t8, 1
  /* 0x80381B7C */  sh $t9, -11660($at)
  /* 0x80381B80 */  b .find_floor_L80381B90
  /* 0x80381B84 */  lwc1 $f0, 44($sp)
  /* 0x80381B88 */  b .find_floor_L80381B90
  /* 0x80381B8C */  nop
.find_floor_L80381B90:
  /* 0x80381B90 */  lw $ra, 28($sp)
  /* 0x80381B94 */  addiu $sp, $sp, 64
  /* 0x80381B98 */  jr $ra
  /* 0x80381B9C */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x8038193C:
  ;   was: 00 00 00 00  nop
  ;   new: 00 0F 78 83  sra $t7, $t7, 2
  ; 0x80381964:
  ;   was: 00 00 00 00  nop
  ;   new: 00 09 48 83  sra $t1, $t1, 2
  ; 0x80381978:
  ;   was: 29 61 E0 01  slti $at, $t3, -8191
  ;   new: 29 61 80 00  slti $at, $t3, -32768
  ; 0x80381984:
  ;   was: 29 61 20 00  slti $at, $t3, 8192
  ;   new: 29 61 7F FF  slti $at, $t3, 32767
  ; 0x8038199C:
  ;   was: 29 81 E0 01  slti $at, $t4, -8191
  ;   new: 29 81 80 00  slti $at, $t4, -32768
  ; 0x803819A8:
  ;   was: 29 81 20 00  slti $at, $t4, 8192
  ;   new: 29 81 7F FF  slti $at, $t4, 32767
