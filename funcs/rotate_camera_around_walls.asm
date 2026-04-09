; Function: rotate_camera_around_walls
; RAM: 0x8028F914  Size: 0x388

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x8028F914 */  addiu $sp, $sp, -136
  /* 0x8028F918 */  sw $ra, 28($sp)
  /* 0x8028F91C */  sw $a0, 136($sp)
  /* 0x8028F920 */  sw $a1, 140($sp)
  /* 0x8028F924 */  sw $a2, 144($sp)
  /* 0x8028F928 */  sw $a3, 148($sp)
  /* 0x8028F92C */  sw $zero, 40($sp)
  /* 0x8028F930 */  sw $zero, 36($sp)
  /* 0x8028F934 */  lui $a0, 0x8033
  /* 0x8028F938 */  lw $a0, -8352($a0)
  /* 0x8028F93C */  addiu $t6, $sp, 46
  /* 0x8028F940 */  sw $t6, 16($sp)
  /* 0x8028F944 */  lw $a1, 140($sp)
  /* 0x8028F948 */  addiu $a2, $sp, 72
  /* 0x8028F94C */  addiu $a3, $sp, 48
  /* 0x8028F950 */  jal 0x8037A69C
  /* 0x8028F954 */  addiu $a0, $a0, 4
  /* 0x8028F958 */  lui $t7, 0x8034
  /* 0x8028F95C */  lh $t7, -14262($t7)
  /* 0x8028F960 */  li $at, -33
  /* 0x8028F964 */  and $t8, $t7, $at
  /* 0x8028F968 */  lui $at, 0x8034
  /* 0x8028F96C */  sh $t8, -14262($at)
  /* 0x8028F970 */  lui $at, 0x42C8
  /* 0x8028F974 */  mtc1 $at, $f4
  /* 0x8028F978 */  nop
  /* 0x8028F97C */  swc1 $f4, 104($sp)
  /* 0x8028F980 */  mtc1 $zero, $f6
  /* 0x8028F984 */  nop
  /* 0x8028F988 */  swc1 $f6, 68($sp)
  /* 0x8028F98C */  lui $at, 0x4316
  /* 0x8028F990 */  mtc1 $at, $f8
  /* 0x8028F994 */  nop
  /* 0x8028F998 */  swc1 $f8, 60($sp)
  /* 0x8028F99C */  lui $at, 0x42C8
  /* 0x8028F9A0 */  mtc1 $at, $f10
  /* 0x8028F9A4 */  nop
  /* 0x8028F9A8 */  swc1 $f10, 56($sp)
  /* 0x8028F9AC */  sw $zero, 36($sp)
.rotate_camera_around_walls_L8028F9B0:
  /* 0x8028F9B0 */  lui $t0, 0x8033
  /* 0x8028F9B4 */  lw $t0, -8352($t0)
  /* 0x8028F9B8 */  lw $t9, 140($sp)
  /* 0x8028F9BC */  lwc1 $f6, 68($sp)
  /* 0x8028F9C0 */  lwc1 $f18, 4($t0)
  /* 0x8028F9C4 */  lwc1 $f16, 0($t9)
  /* 0x8028F9C8 */  sub.s $f4, $f16, $f18
  /* 0x8028F9CC */  mul.s $f8, $f4, $f6
  /* 0x8028F9D0 */  add.s $f10, $f8, $f18
  /* 0x8028F9D4 */  swc1 $f10, 92($sp)
  /* 0x8028F9D8 */  lui $t2, 0x8033
  /* 0x8028F9DC */  lw $t2, -8352($t2)
  /* 0x8028F9E0 */  lw $t1, 140($sp)
  /* 0x8028F9E4 */  lwc1 $f8, 68($sp)
  /* 0x8028F9E8 */  lwc1 $f4, 8($t2)
  /* 0x8028F9EC */  lwc1 $f16, 4($t1)
  /* 0x8028F9F0 */  sub.s $f6, $f16, $f4
  /* 0x8028F9F4 */  mul.s $f18, $f6, $f8
  /* 0x8028F9F8 */  add.s $f10, $f18, $f4
  /* 0x8028F9FC */  swc1 $f10, 96($sp)
  /* 0x8028FA00 */  lui $t4, 0x8033
  /* 0x8028FA04 */  lw $t4, -8352($t4)
  /* 0x8028FA08 */  lw $t3, 140($sp)
  /* 0x8028FA0C */  lwc1 $f18, 68($sp)
  /* 0x8028FA10 */  lwc1 $f6, 12($t4)
  /* 0x8028FA14 */  lwc1 $f16, 8($t3)
  /* 0x8028FA18 */  sub.s $f8, $f16, $f6
  /* 0x8028FA1C */  mul.s $f4, $f8, $f18
  /* 0x8028FA20 */  add.s $f10, $f4, $f6
  /* 0x8028FA24 */  swc1 $f10, 100($sp)
  /* 0x8028FA28 */  lwc1 $f16, 60($sp)
  /* 0x8028FA2C */  swc1 $f16, 108($sp)
  /* 0x8028FA30 */  addiu $a0, $sp, 60
  /* 0x8028FA34 */  lui $a1, 0x437A
  /* 0x8028FA38 */  jal 0x802899CC
  /* 0x8028FA3C */  lui $a2, 0x41F0
  /* 0x8028FA40 */  jal 0x80380E8C
  /* 0x8028FA44 */  addiu $a0, $sp, 92
  /* 0x8028FA48 */  beq $v0, $zero, .rotate_camera_around_walls_L8028FC54
  /* 0x8028FA4C */  nop
  /* 0x8028FA50 */  lh $t5, 114($sp)
  /* 0x8028FA54 */  sll $t6, $t5, 2
  /* 0x8028FA58 */  addu $t7, $sp, $t6
  /* 0x8028FA5C */  lw $t7, 112($t7)
  /* 0x8028FA60 */  sw $t7, 88($sp)
  /* 0x8028FA64 */  lw $t8, 36($sp)
  /* 0x8028FA68 */  slti $at, $t8, 5
  /* 0x8028FA6C */  bne $at, $zero, .rotate_camera_around_walls_L8028FAE4
  /* 0x8028FA70 */  nop
  /* 0x8028FA74 */  lui $t9, 0x8034
  /* 0x8028FA78 */  lh $t9, -14262($t9)
  /* 0x8028FA7C */  lui $at, 0x8034
  /* 0x8028FA80 */  ori $t0, $t9, 0x20
  /* 0x8028FA84 */  sh $t0, -14262($at)
  /* 0x8028FA88 */  lw $t1, 40($sp)
  /* 0x8028FA8C */  bgtz $t1, .rotate_camera_around_walls_L8028FAE4
  /* 0x8028FA90 */  nop
  /* 0x8028FA94 */  li $t2, 1
  /* 0x8028FA98 */  sw $t2, 40($sp)
  /* 0x8028FA9C */  lh $t3, 114($sp)
  /* 0x8028FAA0 */  sll $t4, $t3, 2
  /* 0x8028FAA4 */  addu $t5, $sp, $t4
  /* 0x8028FAA8 */  lw $t5, 112($t5)
  /* 0x8028FAAC */  sw $t5, 88($sp)
  /* 0x8028FAB0 */  lw $t6, 88($sp)
  /* 0x8028FAB4 */  lwc1 $f12, 36($t6)
  /* 0x8028FAB8 */  jal 0x8037A9A8
  /* 0x8028FABC */  lwc1 $f14, 28($t6)
  /* 0x8028FAC0 */  addiu $t7, $v0, 16384
  /* 0x8028FAC4 */  sh $t7, 54($sp)
  /* 0x8028FAC8 */  lh $a0, 46($sp)
  /* 0x8028FACC */  jal 0x8028A080
  /* 0x8028FAD0 */  lh $a1, 54($sp)
  /* 0x8028FAD4 */  lw $t9, 144($sp)
  /* 0x8028FAD8 */  ori $at, $zero, 0x8000
  /* 0x8028FADC */  addu $t8, $v0, $at
  /* 0x8028FAE0 */  sh $t8, 0($t9)
.rotate_camera_around_walls_L8028FAE4:
  /* 0x8028FAE4 */  lui $t1, 0x8033
  /* 0x8028FAE8 */  lw $t1, -8352($t1)
  /* 0x8028FAEC */  lw $t0, 140($sp)
  /* 0x8028FAF0 */  lwc1 $f6, 68($sp)
  /* 0x8028FAF4 */  lwc1 $f18, 4($t1)
  /* 0x8028FAF8 */  lwc1 $f8, 0($t0)
  /* 0x8028FAFC */  sub.s $f4, $f8, $f18
  /* 0x8028FB00 */  mul.s $f10, $f4, $f6
  /* 0x8028FB04 */  add.s $f16, $f10, $f18
  /* 0x8028FB08 */  swc1 $f16, 92($sp)
  /* 0x8028FB0C */  lui $t3, 0x8033
  /* 0x8028FB10 */  lw $t3, -8352($t3)
  /* 0x8028FB14 */  lw $t2, 140($sp)
  /* 0x8028FB18 */  lwc1 $f10, 68($sp)
  /* 0x8028FB1C */  lwc1 $f4, 8($t3)
  /* 0x8028FB20 */  lwc1 $f8, 4($t2)
  /* 0x8028FB24 */  sub.s $f6, $f8, $f4
  /* 0x8028FB28 */  mul.s $f18, $f6, $f10
  /* 0x8028FB2C */  add.s $f16, $f18, $f4
  /* 0x8028FB30 */  swc1 $f16, 96($sp)
  /* 0x8028FB34 */  lui $t5, 0x8033
  /* 0x8028FB38 */  lw $t5, -8352($t5)
  /* 0x8028FB3C */  lw $t4, 140($sp)
  /* 0x8028FB40 */  lwc1 $f18, 68($sp)
  /* 0x8028FB44 */  lwc1 $f6, 12($t5)
  /* 0x8028FB48 */  lwc1 $f8, 8($t4)
  /* 0x8028FB4C */  sub.s $f10, $f8, $f6
  /* 0x8028FB50 */  mul.s $f4, $f10, $f18
  /* 0x8028FB54 */  add.s $f16, $f4, $f6
  /* 0x8028FB58 */  swc1 $f16, 100($sp)
  /* 0x8028FB5C */  lwc1 $f8, 56($sp)
  /* 0x8028FB60 */  swc1 $f8, 108($sp)
  /* 0x8028FB64 */  addiu $a0, $sp, 56
  /* 0x8028FB68 */  lui $a1, 0x4348
  /* 0x8028FB6C */  jal 0x802899CC
  /* 0x8028FB70 */  lui $a2, 0x41A0
  /* 0x8028FB74 */  jal 0x80380E8C
  /* 0x8028FB78 */  addiu $a0, $sp, 92
  /* 0x8028FB7C */  beq $v0, $zero, .rotate_camera_around_walls_L8028FC54
  /* 0x8028FB80 */  nop
  /* 0x8028FB84 */  lh $t6, 114($sp)
  /* 0x8028FB88 */  sll $t7, $t6, 2
  /* 0x8028FB8C */  addu $t8, $sp, $t7
  /* 0x8028FB90 */  lw $t8, 112($t8)
  /* 0x8028FB94 */  sw $t8, 88($sp)
  /* 0x8028FB98 */  lw $t9, 88($sp)
  /* 0x8028FB9C */  lwc1 $f12, 36($t9)
  /* 0x8028FBA0 */  jal 0x8037A9A8
  /* 0x8028FBA4 */  lwc1 $f14, 28($t9)
  /* 0x8028FBA8 */  sh $v0, 52($sp)
  /* 0x8028FBAC */  lh $t0, 52($sp)
  /* 0x8028FBB0 */  addiu $t1, $t0, 16384
  /* 0x8028FBB4 */  sh $t1, 54($sp)
  /* 0x8028FBB8 */  lui $a0, 0x8033
  /* 0x8028FBBC */  lw $a0, -8352($a0)
  /* 0x8028FBC0 */  li $t2, 40
  /* 0x8028FBC4 */  sw $t2, 16($sp)
  /* 0x8028FBC8 */  lw $a1, 140($sp)
  /* 0x8028FBCC */  lw $a2, 88($sp)
  /* 0x8028FBD0 */  lh $a3, 150($sp)
  /* 0x8028FBD4 */  jal 0x8028A6BC
  /* 0x8028FBD8 */  addiu $a0, $a0, 4
  /* 0x8028FBDC */  bne $v0, $zero, .rotate_camera_around_walls_L8028FC54
  /* 0x8028FBE0 */  nop
  /* 0x8028FBE4 */  lw $a0, 136($sp)
  /* 0x8028FBE8 */  jal 0x8028A7EC
  /* 0x8028FBEC */  lw $a1, 88($sp)
  /* 0x8028FBF0 */  li $at, 1
  /* 0x8028FBF4 */  bne $v0, $at, .rotate_camera_around_walls_L8028FC54
  /* 0x8028FBF8 */  nop
  /* 0x8028FBFC */  lw $a0, 88($sp)
  /* 0x8028FC00 */  lui $a1, 0xBF80
  /* 0x8028FC04 */  lui $a2, 0x4316
  /* 0x8028FC08 */  jal 0x8028A0F4
  /* 0x8028FC0C */  lui $a3, 0xBF80
  /* 0x8028FC10 */  bne $v0, $zero, .rotate_camera_around_walls_L8028FC54  ; <-- CHANGED
  /* 0x8028FC14 */  nop
  /* 0x8028FC18 */  lh $a0, 46($sp)
  /* 0x8028FC1C */  jal 0x8028A080
  /* 0x8028FC20 */  lh $a1, 54($sp)
  /* 0x8028FC24 */  lw $t4, 144($sp)
  /* 0x8028FC28 */  ori $at, $zero, 0x8000
  /* 0x8028FC2C */  addu $t3, $v0, $at
  /* 0x8028FC30 */  sh $t3, 0($t4)
  /* 0x8028FC34 */  lw $a0, 144($sp)
  /* 0x8028FC38 */  lh $a1, 52($sp)
  /* 0x8028FC3C */  jal 0x8028976C
  /* 0x8028FC40 */  lh $a2, 150($sp)
  /* 0x8028FC44 */  li $t5, 3
  /* 0x8028FC48 */  sw $t5, 40($sp)
  /* 0x8028FC4C */  li $t6, 8
  /* 0x8028FC50 */  sw $t6, 36($sp)
.rotate_camera_around_walls_L8028FC54:
  /* 0x8028FC54 */  lui $at, 0x3E00
  /* 0x8028FC58 */  mtc1 $at, $f18
  /* 0x8028FC5C */  lwc1 $f10, 68($sp)
  /* 0x8028FC60 */  add.s $f4, $f10, $f18
  /* 0x8028FC64 */  swc1 $f4, 68($sp)
  /* 0x8028FC68 */  lw $t7, 36($sp)
  /* 0x8028FC6C */  addiu $t8, $t7, 1
  /* 0x8028FC70 */  slti $at, $t8, 8
  /* 0x8028FC74 */  bne $at, $zero, .rotate_camera_around_walls_L8028F9B0
  /* 0x8028FC78 */  sw $t8, 36($sp)
  /* 0x8028FC7C */  b .rotate_camera_around_walls_L8028FC8C
  /* 0x8028FC80 */  lw $v0, 40($sp)
  /* 0x8028FC84 */  b .rotate_camera_around_walls_L8028FC8C
  /* 0x8028FC88 */  nop
.rotate_camera_around_walls_L8028FC8C:
  /* 0x8028FC8C */  lw $ra, 28($sp)
  /* 0x8028FC90 */  addiu $sp, $sp, 136
  /* 0x8028FC94 */  jr $ra
  /* 0x8028FC98 */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x8028F914 */  addiu $sp, $sp, -136
  /* 0x8028F918 */  sw $ra, 28($sp)
  /* 0x8028F91C */  sw $a0, 136($sp)
  /* 0x8028F920 */  sw $a1, 140($sp)
  /* 0x8028F924 */  sw $a2, 144($sp)
  /* 0x8028F928 */  sw $a3, 148($sp)
  /* 0x8028F92C */  sw $zero, 40($sp)
  /* 0x8028F930 */  sw $zero, 36($sp)
  /* 0x8028F934 */  lui $a0, 0x8033
  /* 0x8028F938 */  lw $a0, -8352($a0)
  /* 0x8028F93C */  addiu $t6, $sp, 46
  /* 0x8028F940 */  sw $t6, 16($sp)
  /* 0x8028F944 */  lw $a1, 140($sp)
  /* 0x8028F948 */  addiu $a2, $sp, 72
  /* 0x8028F94C */  addiu $a3, $sp, 48
  /* 0x8028F950 */  jal 0x8037A69C
  /* 0x8028F954 */  addiu $a0, $a0, 4
  /* 0x8028F958 */  lui $t7, 0x8034
  /* 0x8028F95C */  lh $t7, -14262($t7)
  /* 0x8028F960 */  li $at, -33
  /* 0x8028F964 */  and $t8, $t7, $at
  /* 0x8028F968 */  lui $at, 0x8034
  /* 0x8028F96C */  sh $t8, -14262($at)
  /* 0x8028F970 */  lui $at, 0x42C8
  /* 0x8028F974 */  mtc1 $at, $f4
  /* 0x8028F978 */  nop
  /* 0x8028F97C */  swc1 $f4, 104($sp)
  /* 0x8028F980 */  mtc1 $zero, $f6
  /* 0x8028F984 */  nop
  /* 0x8028F988 */  swc1 $f6, 68($sp)
  /* 0x8028F98C */  lui $at, 0x4316
  /* 0x8028F990 */  mtc1 $at, $f8
  /* 0x8028F994 */  nop
  /* 0x8028F998 */  swc1 $f8, 60($sp)
  /* 0x8028F99C */  lui $at, 0x42C8
  /* 0x8028F9A0 */  mtc1 $at, $f10
  /* 0x8028F9A4 */  nop
  /* 0x8028F9A8 */  swc1 $f10, 56($sp)
  /* 0x8028F9AC */  sw $zero, 36($sp)
.rotate_camera_around_walls_L8028F9B0:
  /* 0x8028F9B0 */  lui $t0, 0x8033
  /* 0x8028F9B4 */  lw $t0, -8352($t0)
  /* 0x8028F9B8 */  lw $t9, 140($sp)
  /* 0x8028F9BC */  lwc1 $f6, 68($sp)
  /* 0x8028F9C0 */  lwc1 $f18, 4($t0)
  /* 0x8028F9C4 */  lwc1 $f16, 0($t9)
  /* 0x8028F9C8 */  sub.s $f4, $f16, $f18
  /* 0x8028F9CC */  mul.s $f8, $f4, $f6
  /* 0x8028F9D0 */  add.s $f10, $f8, $f18
  /* 0x8028F9D4 */  swc1 $f10, 92($sp)
  /* 0x8028F9D8 */  lui $t2, 0x8033
  /* 0x8028F9DC */  lw $t2, -8352($t2)
  /* 0x8028F9E0 */  lw $t1, 140($sp)
  /* 0x8028F9E4 */  lwc1 $f8, 68($sp)
  /* 0x8028F9E8 */  lwc1 $f4, 8($t2)
  /* 0x8028F9EC */  lwc1 $f16, 4($t1)
  /* 0x8028F9F0 */  sub.s $f6, $f16, $f4
  /* 0x8028F9F4 */  mul.s $f18, $f6, $f8
  /* 0x8028F9F8 */  add.s $f10, $f18, $f4
  /* 0x8028F9FC */  swc1 $f10, 96($sp)
  /* 0x8028FA00 */  lui $t4, 0x8033
  /* 0x8028FA04 */  lw $t4, -8352($t4)
  /* 0x8028FA08 */  lw $t3, 140($sp)
  /* 0x8028FA0C */  lwc1 $f18, 68($sp)
  /* 0x8028FA10 */  lwc1 $f6, 12($t4)
  /* 0x8028FA14 */  lwc1 $f16, 8($t3)
  /* 0x8028FA18 */  sub.s $f8, $f16, $f6
  /* 0x8028FA1C */  mul.s $f4, $f8, $f18
  /* 0x8028FA20 */  add.s $f10, $f4, $f6
  /* 0x8028FA24 */  swc1 $f10, 100($sp)
  /* 0x8028FA28 */  lwc1 $f16, 60($sp)
  /* 0x8028FA2C */  swc1 $f16, 108($sp)
  /* 0x8028FA30 */  addiu $a0, $sp, 60
  /* 0x8028FA34 */  lui $a1, 0x437A
  /* 0x8028FA38 */  jal 0x802899CC
  /* 0x8028FA3C */  lui $a2, 0x41F0
  /* 0x8028FA40 */  jal 0x80380E8C
  /* 0x8028FA44 */  addiu $a0, $sp, 92
  /* 0x8028FA48 */  beq $v0, $zero, .rotate_camera_around_walls_L8028FC54
  /* 0x8028FA4C */  nop
  /* 0x8028FA50 */  lh $t5, 114($sp)
  /* 0x8028FA54 */  sll $t6, $t5, 2
  /* 0x8028FA58 */  addu $t7, $sp, $t6
  /* 0x8028FA5C */  lw $t7, 112($t7)
  /* 0x8028FA60 */  sw $t7, 88($sp)
  /* 0x8028FA64 */  lw $t8, 36($sp)
  /* 0x8028FA68 */  slti $at, $t8, 5
  /* 0x8028FA6C */  bne $at, $zero, .rotate_camera_around_walls_L8028FAE4
  /* 0x8028FA70 */  nop
  /* 0x8028FA74 */  lui $t9, 0x8034
  /* 0x8028FA78 */  lh $t9, -14262($t9)
  /* 0x8028FA7C */  lui $at, 0x8034
  /* 0x8028FA80 */  ori $t0, $t9, 0x20
  /* 0x8028FA84 */  sh $t0, -14262($at)
  /* 0x8028FA88 */  lw $t1, 40($sp)
  /* 0x8028FA8C */  bgtz $t1, .rotate_camera_around_walls_L8028FAE4
  /* 0x8028FA90 */  nop
  /* 0x8028FA94 */  li $t2, 1
  /* 0x8028FA98 */  sw $t2, 40($sp)
  /* 0x8028FA9C */  lh $t3, 114($sp)
  /* 0x8028FAA0 */  sll $t4, $t3, 2
  /* 0x8028FAA4 */  addu $t5, $sp, $t4
  /* 0x8028FAA8 */  lw $t5, 112($t5)
  /* 0x8028FAAC */  sw $t5, 88($sp)
  /* 0x8028FAB0 */  lw $t6, 88($sp)
  /* 0x8028FAB4 */  lwc1 $f12, 36($t6)
  /* 0x8028FAB8 */  jal 0x8037A9A8
  /* 0x8028FABC */  lwc1 $f14, 28($t6)
  /* 0x8028FAC0 */  addiu $t7, $v0, 16384
  /* 0x8028FAC4 */  sh $t7, 54($sp)
  /* 0x8028FAC8 */  lh $a0, 46($sp)
  /* 0x8028FACC */  jal 0x8028A080
  /* 0x8028FAD0 */  lh $a1, 54($sp)
  /* 0x8028FAD4 */  lw $t9, 144($sp)
  /* 0x8028FAD8 */  ori $at, $zero, 0x8000
  /* 0x8028FADC */  addu $t8, $v0, $at
  /* 0x8028FAE0 */  sh $t8, 0($t9)
.rotate_camera_around_walls_L8028FAE4:
  /* 0x8028FAE4 */  lui $t1, 0x8033
  /* 0x8028FAE8 */  lw $t1, -8352($t1)
  /* 0x8028FAEC */  lw $t0, 140($sp)
  /* 0x8028FAF0 */  lwc1 $f6, 68($sp)
  /* 0x8028FAF4 */  lwc1 $f18, 4($t1)
  /* 0x8028FAF8 */  lwc1 $f8, 0($t0)
  /* 0x8028FAFC */  sub.s $f4, $f8, $f18
  /* 0x8028FB00 */  mul.s $f10, $f4, $f6
  /* 0x8028FB04 */  add.s $f16, $f10, $f18
  /* 0x8028FB08 */  swc1 $f16, 92($sp)
  /* 0x8028FB0C */  lui $t3, 0x8033
  /* 0x8028FB10 */  lw $t3, -8352($t3)
  /* 0x8028FB14 */  lw $t2, 140($sp)
  /* 0x8028FB18 */  lwc1 $f10, 68($sp)
  /* 0x8028FB1C */  lwc1 $f4, 8($t3)
  /* 0x8028FB20 */  lwc1 $f8, 4($t2)
  /* 0x8028FB24 */  sub.s $f6, $f8, $f4
  /* 0x8028FB28 */  mul.s $f18, $f6, $f10
  /* 0x8028FB2C */  add.s $f16, $f18, $f4
  /* 0x8028FB30 */  swc1 $f16, 96($sp)
  /* 0x8028FB34 */  lui $t5, 0x8033
  /* 0x8028FB38 */  lw $t5, -8352($t5)
  /* 0x8028FB3C */  lw $t4, 140($sp)
  /* 0x8028FB40 */  lwc1 $f18, 68($sp)
  /* 0x8028FB44 */  lwc1 $f6, 12($t5)
  /* 0x8028FB48 */  lwc1 $f8, 8($t4)
  /* 0x8028FB4C */  sub.s $f10, $f8, $f6
  /* 0x8028FB50 */  mul.s $f4, $f10, $f18
  /* 0x8028FB54 */  add.s $f16, $f4, $f6
  /* 0x8028FB58 */  swc1 $f16, 100($sp)
  /* 0x8028FB5C */  lwc1 $f8, 56($sp)
  /* 0x8028FB60 */  swc1 $f8, 108($sp)
  /* 0x8028FB64 */  addiu $a0, $sp, 56
  /* 0x8028FB68 */  lui $a1, 0x4348
  /* 0x8028FB6C */  jal 0x802899CC
  /* 0x8028FB70 */  lui $a2, 0x41A0
  /* 0x8028FB74 */  jal 0x80380E8C
  /* 0x8028FB78 */  addiu $a0, $sp, 92
  /* 0x8028FB7C */  beq $v0, $zero, .rotate_camera_around_walls_L8028FC54
  /* 0x8028FB80 */  nop
  /* 0x8028FB84 */  lh $t6, 114($sp)
  /* 0x8028FB88 */  sll $t7, $t6, 2
  /* 0x8028FB8C */  addu $t8, $sp, $t7
  /* 0x8028FB90 */  lw $t8, 112($t8)
  /* 0x8028FB94 */  sw $t8, 88($sp)
  /* 0x8028FB98 */  lw $t9, 88($sp)
  /* 0x8028FB9C */  lwc1 $f12, 36($t9)
  /* 0x8028FBA0 */  jal 0x8037A9A8
  /* 0x8028FBA4 */  lwc1 $f14, 28($t9)
  /* 0x8028FBA8 */  sh $v0, 52($sp)
  /* 0x8028FBAC */  lh $t0, 52($sp)
  /* 0x8028FBB0 */  addiu $t1, $t0, 16384
  /* 0x8028FBB4 */  sh $t1, 54($sp)
  /* 0x8028FBB8 */  lui $a0, 0x8033
  /* 0x8028FBBC */  lw $a0, -8352($a0)
  /* 0x8028FBC0 */  li $t2, 40
  /* 0x8028FBC4 */  sw $t2, 16($sp)
  /* 0x8028FBC8 */  lw $a1, 140($sp)
  /* 0x8028FBCC */  lw $a2, 88($sp)
  /* 0x8028FBD0 */  lh $a3, 150($sp)
  /* 0x8028FBD4 */  jal 0x8028A6BC
  /* 0x8028FBD8 */  addiu $a0, $a0, 4
  /* 0x8028FBDC */  bne $v0, $zero, .rotate_camera_around_walls_L8028FC54
  /* 0x8028FBE0 */  nop
  /* 0x8028FBE4 */  lw $a0, 136($sp)
  /* 0x8028FBE8 */  jal 0x8028A7EC
  /* 0x8028FBEC */  lw $a1, 88($sp)
  /* 0x8028FBF0 */  li $at, 1
  /* 0x8028FBF4 */  bne $v0, $at, .rotate_camera_around_walls_L8028FC54
  /* 0x8028FBF8 */  nop
  /* 0x8028FBFC */  lw $a0, 88($sp)
  /* 0x8028FC00 */  lui $a1, 0xBF80
  /* 0x8028FC04 */  lui $a2, 0x4316
  /* 0x8028FC08 */  jal 0x8028A0F4
  /* 0x8028FC0C */  lui $a3, 0xBF80
  /* 0x8028FC10 */  nop  ; <-- CHANGED
  /* 0x8028FC14 */  nop
  /* 0x8028FC18 */  lh $a0, 46($sp)
  /* 0x8028FC1C */  jal 0x8028A080
  /* 0x8028FC20 */  lh $a1, 54($sp)
  /* 0x8028FC24 */  lw $t4, 144($sp)
  /* 0x8028FC28 */  ori $at, $zero, 0x8000
  /* 0x8028FC2C */  addu $t3, $v0, $at
  /* 0x8028FC30 */  sh $t3, 0($t4)
  /* 0x8028FC34 */  lw $a0, 144($sp)
  /* 0x8028FC38 */  lh $a1, 52($sp)
  /* 0x8028FC3C */  jal 0x8028976C
  /* 0x8028FC40 */  lh $a2, 150($sp)
  /* 0x8028FC44 */  li $t5, 3
  /* 0x8028FC48 */  sw $t5, 40($sp)
  /* 0x8028FC4C */  li $t6, 8
  /* 0x8028FC50 */  sw $t6, 36($sp)
.rotate_camera_around_walls_L8028FC54:
  /* 0x8028FC54 */  lui $at, 0x3E00
  /* 0x8028FC58 */  mtc1 $at, $f18
  /* 0x8028FC5C */  lwc1 $f10, 68($sp)
  /* 0x8028FC60 */  add.s $f4, $f10, $f18
  /* 0x8028FC64 */  swc1 $f4, 68($sp)
  /* 0x8028FC68 */  lw $t7, 36($sp)
  /* 0x8028FC6C */  addiu $t8, $t7, 1
  /* 0x8028FC70 */  slti $at, $t8, 8
  /* 0x8028FC74 */  bne $at, $zero, .rotate_camera_around_walls_L8028F9B0
  /* 0x8028FC78 */  sw $t8, 36($sp)
  /* 0x8028FC7C */  b .rotate_camera_around_walls_L8028FC8C
  /* 0x8028FC80 */  lw $v0, 40($sp)
  /* 0x8028FC84 */  b .rotate_camera_around_walls_L8028FC8C
  /* 0x8028FC88 */  nop
.rotate_camera_around_walls_L8028FC8C:
  /* 0x8028FC8C */  lw $ra, 28($sp)
  /* 0x8028FC90 */  addiu $sp, $sp, 136
  /* 0x8028FC94 */  jr $ra
  /* 0x8028FC98 */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x8028FC10:
  ;   was: 14 40 00 10  bne $v0, $zero, .rotate_camera_around_walls_L8028FC54
  ;   new: 00 00 00 00  nop
