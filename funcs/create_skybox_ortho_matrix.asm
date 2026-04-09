; Function: create_skybox_ortho_matrix
; RAM: 0x802CFC68  Size: 0x120

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x802CFC68 */  addiu $sp, $sp, -64
  /* 0x802CFC6C */  sw $ra, 36($sp)
  /* 0x802CFC70 */  sw $a0, 64($sp)
  /* 0x802CFC74 */  lb $t6, 67($sp)
  /* 0x802CFC78 */  lui $t8, 0x8036
  /* 0x802CFC7C */  sll $t7, $t6, 4
  /* 0x802CFC80 */  addu $t8, $t8, $t7
  /* 0x802CFC84 */  lw $t8, 4804($t8)
  /* 0x802CFC88 */  mtc1 $t8, $f4
  /* 0x802CFC8C */  nop
  /* 0x802CFC90 */  cvt.s.w $f6, $f4
  /* 0x802CFC94 */  swc1 $f6, 60($sp)
  /* 0x802CFC98 */  lb $t9, 67($sp)
  /* 0x802CFC9C */  lui $t1, 0x8036
  /* 0x802CFCA0 */  sll $t0, $t9, 4
  /* 0x802CFCA4 */  addu $t1, $t1, $t0
  /* 0x802CFCA8 */  lw $t1, 4804($t1)
  /* 0x802CFCAC */  addiu $t2, $t1, 320
  /* 0x802CFCB0 */  mtc1 $t2, $f8
  /* 0x802CFCB4 */  nop
  /* 0x802CFCB8 */  cvt.s.w $f10, $f8
  /* 0x802CFCBC */  swc1 $f10, 56($sp)
  /* 0x802CFCC0 */  lb $t3, 67($sp)
  /* 0x802CFCC4 */  lui $t5, 0x8036
  /* 0x802CFCC8 */  sll $t4, $t3, 4
  /* 0x802CFCCC */  addu $t5, $t5, $t4
  /* 0x802CFCD0 */  lw $t5, 4808($t5)
  /* 0x802CFCD4 */  addiu $t6, $t5, -240
  /* 0x802CFCD8 */  mtc1 $t6, $f16
  /* 0x802CFCDC */  nop
  /* 0x802CFCE0 */  cvt.s.w $f18, $f16
  /* 0x802CFCE4 */  swc1 $f18, 52($sp)
  /* 0x802CFCE8 */  lb $t7, 67($sp)
  /* 0x802CFCEC */  lui $t9, 0x8036
  /* 0x802CFCF0 */  sll $t8, $t7, 4
  /* 0x802CFCF4 */  addu $t9, $t9, $t8
  /* 0x802CFCF8 */  lw $t9, 4808($t9)
  /* 0x802CFCFC */  mtc1 $t9, $f4
  /* 0x802CFD00 */  nop
  /* 0x802CFD04 */  cvt.s.w $f6, $f4
  /* 0x802CFD08 */  swc1 $f6, 48($sp)
  /* 0x802CFD0C */  jal 0x80278F2C
  /* 0x802CFD10 */  li $a0, 64
  /* 0x802CFD14 */  sw $v0, 44($sp)
  /* 0x802CFD18 */  lw $t0, 44($sp)
  /* 0x802CFD1C */  beq $t0, $zero, .create_skybox_ortho_matrix_L802CFD68
  /* 0x802CFD20 */  nop  ; <-- CHANGED
  /* 0x802CFD24 */  lui $at, 0x4040
  /* 0x802CFD28 */  mtc1 $at, $f16
  /* 0x802CFD2C */  lui $at, 0x3F80
  /* 0x802CFD30 */  mtc1 $at, $f18
  /* 0x802CFD34 */  lwc1 $f8, 48($sp)
  /* 0x802CFD38 */  mtc1 $zero, $f10
  /* 0x802CFD3C */  lw $a0, 44($sp)
  /* 0x802CFD40 */  lw $a1, 60($sp)
  /* 0x802CFD44 */  lw $a2, 56($sp)
  /* 0x802CFD48 */  lw $a3, 52($sp)
  /* 0x802CFD4C */  swc1 $f16, 24($sp)
  /* 0x802CFD50 */  swc1 $f8, 16($sp)
  /* 0x802CFD54 */  swc1 $f18, 28($sp)
  /* 0x802CFD58 */  jal 0x80324D74  ; <-- CHANGED
  /* 0x802CFD5C */  swc1 $f10, 20($sp)  ; <-- CHANGED
  /* 0x802CFD60 */  b .create_skybox_ortho_matrix_L802CFD68  ; <-- CHANGED
  /* 0x802CFD64 */  nop  ; <-- CHANGED
.create_skybox_ortho_matrix_L802CFD68:
  /* 0x802CFD68 */  b .create_skybox_ortho_matrix_L802CFD78
  /* 0x802CFD6C */  lw $v0, 44($sp)
  /* 0x802CFD70 */  b .create_skybox_ortho_matrix_L802CFD78
  /* 0x802CFD74 */  nop
.create_skybox_ortho_matrix_L802CFD78:
  /* 0x802CFD78 */  lw $ra, 36($sp)
  /* 0x802CFD7C */  addiu $sp, $sp, 64
  /* 0x802CFD80 */  jr $ra
  /* 0x802CFD84 */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x802CFC68 */  addiu $sp, $sp, -64
  /* 0x802CFC6C */  sw $ra, 36($sp)
  /* 0x802CFC70 */  sw $a0, 64($sp)
  /* 0x802CFC74 */  lb $t6, 67($sp)
  /* 0x802CFC78 */  lui $t8, 0x8036
  /* 0x802CFC7C */  sll $t7, $t6, 4
  /* 0x802CFC80 */  addu $t8, $t8, $t7
  /* 0x802CFC84 */  lw $t8, 4804($t8)
  /* 0x802CFC88 */  mtc1 $t8, $f4
  /* 0x802CFC8C */  nop
  /* 0x802CFC90 */  cvt.s.w $f6, $f4
  /* 0x802CFC94 */  swc1 $f6, 60($sp)
  /* 0x802CFC98 */  lb $t9, 67($sp)
  /* 0x802CFC9C */  lui $t1, 0x8036
  /* 0x802CFCA0 */  sll $t0, $t9, 4
  /* 0x802CFCA4 */  addu $t1, $t1, $t0
  /* 0x802CFCA8 */  lw $t1, 4804($t1)
  /* 0x802CFCAC */  addiu $t2, $t1, 320
  /* 0x802CFCB0 */  mtc1 $t2, $f8
  /* 0x802CFCB4 */  nop
  /* 0x802CFCB8 */  cvt.s.w $f10, $f8
  /* 0x802CFCBC */  swc1 $f10, 56($sp)
  /* 0x802CFCC0 */  lb $t3, 67($sp)
  /* 0x802CFCC4 */  lui $t5, 0x8036
  /* 0x802CFCC8 */  sll $t4, $t3, 4
  /* 0x802CFCCC */  addu $t5, $t5, $t4
  /* 0x802CFCD0 */  lw $t5, 4808($t5)
  /* 0x802CFCD4 */  addiu $t6, $t5, -240
  /* 0x802CFCD8 */  mtc1 $t6, $f16
  /* 0x802CFCDC */  nop
  /* 0x802CFCE0 */  cvt.s.w $f18, $f16
  /* 0x802CFCE4 */  swc1 $f18, 52($sp)
  /* 0x802CFCE8 */  lb $t7, 67($sp)
  /* 0x802CFCEC */  lui $t9, 0x8036
  /* 0x802CFCF0 */  sll $t8, $t7, 4
  /* 0x802CFCF4 */  addu $t9, $t9, $t8
  /* 0x802CFCF8 */  lw $t9, 4808($t9)
  /* 0x802CFCFC */  mtc1 $t9, $f4
  /* 0x802CFD00 */  nop
  /* 0x802CFD04 */  cvt.s.w $f6, $f4
  /* 0x802CFD08 */  swc1 $f6, 48($sp)
  /* 0x802CFD0C */  jal 0x80278F2C
  /* 0x802CFD10 */  li $a0, 64
  /* 0x802CFD14 */  sw $v0, 44($sp)
  /* 0x802CFD18 */  lw $t0, 44($sp)
  /* 0x802CFD1C */  beq $t0, $zero, .create_skybox_ortho_matrix_L802CFD68
  /* 0x802CFD20 */  lui $t0, 0xBE80  ; <-- CHANGED
  /* 0x802CFD24 */  lui $at, 0x4040
  /* 0x802CFD28 */  mtc1 $at, $f16
  /* 0x802CFD2C */  lui $at, 0x3F80
  /* 0x802CFD30 */  mtc1 $at, $f18
  /* 0x802CFD34 */  lwc1 $f8, 48($sp)
  /* 0x802CFD38 */  mtc1 $zero, $f10
  /* 0x802CFD3C */  lw $a0, 44($sp)
  /* 0x802CFD40 */  lw $a1, 60($sp)
  /* 0x802CFD44 */  lw $a2, 56($sp)
  /* 0x802CFD48 */  lw $a3, 52($sp)
  /* 0x802CFD4C */  swc1 $f16, 24($sp)
  /* 0x802CFD50 */  swc1 $f8, 16($sp)
  /* 0x802CFD54 */  swc1 $f18, 28($sp)
  /* 0x802CFD58 */  mtc1 $t0, $f30  ; <-- CHANGED
  /* 0x802CFD5C */  jal 0x80324D74  ; <-- CHANGED
  /* 0x802CFD60 */  swc1 $f10, 20($sp)  ; <-- CHANGED
  /* 0x802CFD64 */  mtc1 $zero, $f30  ; <-- CHANGED
.create_skybox_ortho_matrix_L802CFD68:
  /* 0x802CFD68 */  b .create_skybox_ortho_matrix_L802CFD78
  /* 0x802CFD6C */  lw $v0, 44($sp)
  /* 0x802CFD70 */  b .create_skybox_ortho_matrix_L802CFD78
  /* 0x802CFD74 */  nop
.create_skybox_ortho_matrix_L802CFD78:
  /* 0x802CFD78 */  lw $ra, 36($sp)
  /* 0x802CFD7C */  addiu $sp, $sp, 64
  /* 0x802CFD80 */  jr $ra
  /* 0x802CFD84 */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x802CFD20:
  ;   was: 00 00 00 00  nop
  ;   new: 3C 08 BE 80  lui $t0, 0xBE80
  ; 0x802CFD58:
  ;   was: 0C 0C 93 5D  jal 0x80324D74
  ;   new: 44 88 F0 00  mtc1 $t0, $f30
  ; 0x802CFD5C:
  ;   was: E7 AA 00 14  swc1 $f10, 20($sp)
  ;   new: 0C 0C 93 5D  jal 0x80324D74
  ; 0x802CFD60:
  ;   was: 10 00 00 01  b .create_skybox_ortho_matrix_L802CFD68
  ;   new: E7 AA 00 14  swc1 $f10, 20($sp)
  ; 0x802CFD64:
  ;   was: 00 00 00 00  nop
  ;   new: 44 80 F0 00  mtc1 $zero, $f30
