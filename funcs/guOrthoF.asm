; Function: guOrthoF
; RAM: 0x80324C20  Size: 0x154

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x80324C20 */  addiu $sp, $sp, -24
  /* 0x80324C24 */  sw $ra, 20($sp)
  /* 0x80324C28 */  sw $a1, 28($sp)
  /* 0x80324C2C */  sw $a2, 32($sp)
  /* 0x80324C30 */  sw $a3, 36($sp)
  /* 0x80324C34 */  jal 0x80329550
  /* 0x80324C38 */  sw $a0, 24($sp)
  /* 0x80324C3C */  lwc1 $f4, 32($sp)
  /* 0x80324C40 */  lwc1 $f6, 28($sp)
  /* 0x80324C44 */  lui $at, 0x4000
  /* 0x80324C48 */  mtc1 $at, $f8
  /* 0x80324C4C */  sub.s $f0, $f4, $f6
  /* 0x80324C50 */  lw $v0, 24($sp)
  /* 0x80324C54 */  lwc1 $f14, 40($sp)
  /* 0x80324C58 */  lwc1 $f16, 48($sp)
  /* 0x80324C5C */  div.s $f10, $f8, $f0
  /* 0x80324C60 */  lwc1 $f18, 44($sp)
  /* 0x80324C64 */  mtc1 $at, $f6
  /* 0x80324C68 */  lui $at, 0xC000
  /* 0x80324C6C */  sub.s $f12, $f16, $f18
  /* 0x80324C70 */  move $v1, $zero
  /* 0x80324C74 */  li $a0, 4
  /* 0x80324C78 */  swc1 $f10, 0($v0)
  /* 0x80324C7C */  lwc1 $f4, 36($sp)
  /* 0x80324C80 */  mtc1 $at, $f10
  /* 0x80324C84 */  lui $at, 0x3F80
  /* 0x80324C88 */  sub.s $f2, $f14, $f4
  /* 0x80324C8C */  div.s $f4, $f10, $f12
  /* 0x80324C90 */  div.s $f8, $f6, $f2
  /* 0x80324C94 */  swc1 $f4, 40($v0)
  /* 0x80324C98 */  swc1 $f8, 20($v0)
  /* 0x80324C9C */  lwc1 $f8, 28($sp)
  /* 0x80324CA0 */  lwc1 $f6, 32($sp)
  /* 0x80324CA4 */  add.s $f10, $f6, $f8
  /* 0x80324CA8 */  neg.s $f4, $f10
  /* 0x80324CAC */  div.s $f6, $f4, $f0
  /* 0x80324CB0 */  swc1 $f6, 48($v0)
  /* 0x80324CB4 */  lwc1 $f8, 36($sp)
  /* 0x80324CB8 */  add.s $f10, $f14, $f8
  /* 0x80324CBC */  add.s $f8, $f16, $f18
  /* 0x80324CC0 */  neg.s $f4, $f10
  /* 0x80324CC4 */  neg.s $f10, $f8
  /* 0x80324CC8 */  div.s $f6, $f4, $f2
  /* 0x80324CCC */  div.s $f4, $f10, $f12
  /* 0x80324CD0 */  swc1 $f6, 52($v0)
  /* 0x80324CD4 */  mtc1 $at, $f6
  /* 0x80324CD8 */  nop  ; <-- CHANGED
  /* 0x80324CDC */  swc1 $f6, 60($v0)
  /* 0x80324CE0 */  swc1 $f4, 56($v0)
  /* 0x80324CE4 */  lwc1 $f0, 52($sp)
  /* 0x80324CE8 */  lwc1 $f8, 0($v0)
  /* 0x80324CEC */  addiu $v1, $v1, 1
  /* 0x80324CF0 */  lwc1 $f18, 4($v0)
  /* 0x80324CF4 */  mul.s $f12, $f8, $f0
  /* 0x80324CF8 */  lwc1 $f14, 8($v0)
  /* 0x80324CFC */  beq $v1, $a0, .guOrthoF_L80324D40
  /* 0x80324D00 */  lwc1 $f16, 12($v0)
.guOrthoF_L80324D04:
  /* 0x80324D04 */  mul.s $f10, $f18, $f0
  /* 0x80324D08 */  lwc1 $f8, 16($v0)
  /* 0x80324D0C */  lwc1 $f18, 20($v0)
  /* 0x80324D10 */  mul.s $f6, $f14, $f0
  /* 0x80324D14 */  lwc1 $f14, 24($v0)
  /* 0x80324D18 */  addiu $v1, $v1, 1
  /* 0x80324D1C */  mul.s $f4, $f16, $f0
  /* 0x80324D20 */  lwc1 $f16, 28($v0)
  /* 0x80324D24 */  swc1 $f12, 0($v0)
  /* 0x80324D28 */  mul.s $f12, $f8, $f0
  /* 0x80324D2C */  swc1 $f10, 4($v0)
  /* 0x80324D30 */  swc1 $f6, 8($v0)
  /* 0x80324D34 */  addiu $v0, $v0, 16
  /* 0x80324D38 */  bne $v1, $a0, .guOrthoF_L80324D04
  /* 0x80324D3C */  swc1 $f4, -4($v0)
.guOrthoF_L80324D40:
  /* 0x80324D40 */  mul.s $f10, $f18, $f0
  /* 0x80324D44 */  addiu $v0, $v0, 16
  /* 0x80324D48 */  swc1 $f12, -16($v0)
  /* 0x80324D4C */  mul.s $f6, $f14, $f0
  /* 0x80324D50 */  nop
  /* 0x80324D54 */  mul.s $f4, $f16, $f0
  /* 0x80324D58 */  swc1 $f10, -12($v0)
  /* 0x80324D5C */  swc1 $f6, -8($v0)
  /* 0x80324D60 */  swc1 $f4, -4($v0)
  /* 0x80324D64 */  lw $ra, 20($sp)
  /* 0x80324D68 */  addiu $sp, $sp, 24
  /* 0x80324D6C */  jr $ra
  /* 0x80324D70 */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x80324C20 */  addiu $sp, $sp, -24
  /* 0x80324C24 */  sw $ra, 20($sp)
  /* 0x80324C28 */  sw $a1, 28($sp)
  /* 0x80324C2C */  sw $a2, 32($sp)
  /* 0x80324C30 */  sw $a3, 36($sp)
  /* 0x80324C34 */  jal 0x80329550
  /* 0x80324C38 */  sw $a0, 24($sp)
  /* 0x80324C3C */  lwc1 $f4, 32($sp)
  /* 0x80324C40 */  lwc1 $f6, 28($sp)
  /* 0x80324C44 */  lui $at, 0x4000
  /* 0x80324C48 */  mtc1 $at, $f8
  /* 0x80324C4C */  sub.s $f0, $f4, $f6
  /* 0x80324C50 */  lw $v0, 24($sp)
  /* 0x80324C54 */  lwc1 $f14, 40($sp)
  /* 0x80324C58 */  lwc1 $f16, 48($sp)
  /* 0x80324C5C */  div.s $f10, $f8, $f0
  /* 0x80324C60 */  lwc1 $f18, 44($sp)
  /* 0x80324C64 */  mtc1 $at, $f6
  /* 0x80324C68 */  lui $at, 0xC000
  /* 0x80324C6C */  sub.s $f12, $f16, $f18
  /* 0x80324C70 */  move $v1, $zero
  /* 0x80324C74 */  li $a0, 4
  /* 0x80324C78 */  swc1 $f10, 0($v0)
  /* 0x80324C7C */  lwc1 $f4, 36($sp)
  /* 0x80324C80 */  mtc1 $at, $f10
  /* 0x80324C84 */  lui $at, 0x3F80
  /* 0x80324C88 */  sub.s $f2, $f14, $f4
  /* 0x80324C8C */  div.s $f4, $f10, $f12
  /* 0x80324C90 */  div.s $f8, $f6, $f2
  /* 0x80324C94 */  swc1 $f4, 40($v0)
  /* 0x80324C98 */  swc1 $f8, 20($v0)
  /* 0x80324C9C */  lwc1 $f8, 28($sp)
  /* 0x80324CA0 */  lwc1 $f6, 32($sp)
  /* 0x80324CA4 */  add.s $f10, $f6, $f8
  /* 0x80324CA8 */  neg.s $f4, $f10
  /* 0x80324CAC */  div.s $f6, $f4, $f0
  /* 0x80324CB0 */  swc1 $f6, 48($v0)
  /* 0x80324CB4 */  lwc1 $f8, 36($sp)
  /* 0x80324CB8 */  add.s $f10, $f14, $f8
  /* 0x80324CBC */  add.s $f8, $f16, $f18
  /* 0x80324CC0 */  neg.s $f4, $f10
  /* 0x80324CC4 */  neg.s $f10, $f8
  /* 0x80324CC8 */  div.s $f6, $f4, $f2
  /* 0x80324CCC */  div.s $f4, $f10, $f12
  /* 0x80324CD0 */  swc1 $f6, 52($v0)
  /* 0x80324CD4 */  mtc1 $at, $f6
  /* 0x80324CD8 */  add.s $f6, $f6, $f30  ; <-- CHANGED
  /* 0x80324CDC */  swc1 $f6, 60($v0)
  /* 0x80324CE0 */  swc1 $f4, 56($v0)
  /* 0x80324CE4 */  lwc1 $f0, 52($sp)
  /* 0x80324CE8 */  lwc1 $f8, 0($v0)
  /* 0x80324CEC */  addiu $v1, $v1, 1
  /* 0x80324CF0 */  lwc1 $f18, 4($v0)
  /* 0x80324CF4 */  mul.s $f12, $f8, $f0
  /* 0x80324CF8 */  lwc1 $f14, 8($v0)
  /* 0x80324CFC */  beq $v1, $a0, .guOrthoF_L80324D40
  /* 0x80324D00 */  lwc1 $f16, 12($v0)
.guOrthoF_L80324D04:
  /* 0x80324D04 */  mul.s $f10, $f18, $f0
  /* 0x80324D08 */  lwc1 $f8, 16($v0)
  /* 0x80324D0C */  lwc1 $f18, 20($v0)
  /* 0x80324D10 */  mul.s $f6, $f14, $f0
  /* 0x80324D14 */  lwc1 $f14, 24($v0)
  /* 0x80324D18 */  addiu $v1, $v1, 1
  /* 0x80324D1C */  mul.s $f4, $f16, $f0
  /* 0x80324D20 */  lwc1 $f16, 28($v0)
  /* 0x80324D24 */  swc1 $f12, 0($v0)
  /* 0x80324D28 */  mul.s $f12, $f8, $f0
  /* 0x80324D2C */  swc1 $f10, 4($v0)
  /* 0x80324D30 */  swc1 $f6, 8($v0)
  /* 0x80324D34 */  addiu $v0, $v0, 16
  /* 0x80324D38 */  bne $v1, $a0, .guOrthoF_L80324D04
  /* 0x80324D3C */  swc1 $f4, -4($v0)
.guOrthoF_L80324D40:
  /* 0x80324D40 */  mul.s $f10, $f18, $f0
  /* 0x80324D44 */  addiu $v0, $v0, 16
  /* 0x80324D48 */  swc1 $f12, -16($v0)
  /* 0x80324D4C */  mul.s $f6, $f14, $f0
  /* 0x80324D50 */  nop
  /* 0x80324D54 */  mul.s $f4, $f16, $f0
  /* 0x80324D58 */  swc1 $f10, -12($v0)
  /* 0x80324D5C */  swc1 $f6, -8($v0)
  /* 0x80324D60 */  swc1 $f4, -4($v0)
  /* 0x80324D64 */  lw $ra, 20($sp)
  /* 0x80324D68 */  addiu $sp, $sp, 24
  /* 0x80324D6C */  jr $ra
  /* 0x80324D70 */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x80324CD8:
  ;   was: 00 00 00 00  nop
  ;   new: 46 1E 31 80  add.s $f6, $f6, $f30
