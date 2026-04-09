; Function: find_wall_collisions
; RAM: 0x80380E8C  Size: 0x1AC

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x80380E8C */  addiu $sp, $sp, -56
  /* 0x80380E90 */  sw $ra, 28($sp)
  /* 0x80380E94 */  sw $a0, 56($sp)
  /* 0x80380E98 */  sw $s0, 24($sp)
  /* 0x80380E9C */  sw $zero, 44($sp)
  /* 0x80380EA0 */  lw $t6, 56($sp)
  /* 0x80380EA4 */  lwc1 $f4, 0($t6)
  /* 0x80380EA8 */  trunc.w.s $f6, $f4
  /* 0x80380EAC */  mfc1 $t8, $f6
  /* 0x80380EB0 */  nop  ; <-- CHANGED
  /* 0x80380EB4 */  sh $t8, 42($sp)
  /* 0x80380EB8 */  lw $t9, 56($sp)
  /* 0x80380EBC */  lwc1 $f8, 8($t9)
  /* 0x80380EC0 */  trunc.w.s $f10, $f8
  /* 0x80380EC4 */  mfc1 $t1, $f10
  /* 0x80380EC8 */  nop  ; <-- CHANGED
  /* 0x80380ECC */  sh $t1, 40($sp)
  /* 0x80380ED0 */  lw $t2, 56($sp)
  /* 0x80380ED4 */  sh $zero, 22($t2)
  /* 0x80380ED8 */  lh $t3, 42($sp)
  /* 0x80380EDC */  slti $at, $t3, -8191  ; <-- CHANGED
  /* 0x80380EE0 */  bne $at, $zero, .find_wall_collisions_L80380EF4
  /* 0x80380EE4 */  nop
  /* 0x80380EE8 */  slti $at, $t3, 8192  ; <-- CHANGED
  /* 0x80380EEC */  bne $at, $zero, .find_wall_collisions_L80380EFC
  /* 0x80380EF0 */  nop
.find_wall_collisions_L80380EF4:
  /* 0x80380EF4 */  b .find_wall_collisions_L80381024
  /* 0x80380EF8 */  lw $v0, 44($sp)
.find_wall_collisions_L80380EFC:
  /* 0x80380EFC */  lh $t4, 40($sp)
  /* 0x80380F00 */  slti $at, $t4, -8191  ; <-- CHANGED
  /* 0x80380F04 */  bne $at, $zero, .find_wall_collisions_L80380F18
  /* 0x80380F08 */  nop
  /* 0x80380F0C */  slti $at, $t4, 8192  ; <-- CHANGED
  /* 0x80380F10 */  bne $at, $zero, .find_wall_collisions_L80380F20
  /* 0x80380F14 */  nop
.find_wall_collisions_L80380F18:
  /* 0x80380F18 */  b .find_wall_collisions_L80381024
  /* 0x80380F1C */  lw $v0, 44($sp)
.find_wall_collisions_L80380F20:
  /* 0x80380F20 */  lh $t5, 42($sp)
  /* 0x80380F24 */  addiu $t6, $t5, 8192
  /* 0x80380F28 */  bgez $t6, .find_wall_collisions_L80380F38
  /* 0x80380F2C */  sra $t7, $t6, 10
  /* 0x80380F30 */  addiu $at, $t6, 1023
  /* 0x80380F34 */  sra $t7, $at, 10
.find_wall_collisions_L80380F38:
  /* 0x80380F38 */  andi $t8, $t7, 0xF
  /* 0x80380F3C */  sh $t8, 50($sp)
  /* 0x80380F40 */  lh $t9, 40($sp)
  /* 0x80380F44 */  addiu $t0, $t9, 8192
  /* 0x80380F48 */  bgez $t0, .find_wall_collisions_L80380F58
  /* 0x80380F4C */  sra $t1, $t0, 10
  /* 0x80380F50 */  addiu $at, $t0, 1023
  /* 0x80380F54 */  sra $t1, $at, 10
.find_wall_collisions_L80380F58:
  /* 0x80380F58 */  andi $t2, $t1, 0xF
  /* 0x80380F5C */  sh $t2, 48($sp)
  /* 0x80380F60 */  lh $t3, 48($sp)
  /* 0x80380F64 */  lh $t5, 50($sp)
  /* 0x80380F68 */  lui $t8, 0x8039
  /* 0x80380F6C */  sll $t4, $t3, 2
  /* 0x80380F70 */  sll $t6, $t5, 2
  /* 0x80380F74 */  subu $t4, $t4, $t3
  /* 0x80380F78 */  subu $t6, $t6, $t5
  /* 0x80380F7C */  sll $t6, $t6, 3
  /* 0x80380F80 */  sll $t4, $t4, 7
  /* 0x80380F84 */  addu $t7, $t4, $t6
  /* 0x80380F88 */  addu $t8, $t8, $t7
  /* 0x80380F8C */  lw $t8, -10584($t8)
  /* 0x80380F90 */  sw $t8, 52($sp)
  /* 0x80380F94 */  lw $a0, 52($sp)
  /* 0x80380F98 */  jal 0x80380690
  /* 0x80380F9C */  lw $a1, 56($sp)
  /* 0x80380FA0 */  lw $t9, 44($sp)
  /* 0x80380FA4 */  move $s0, $v0
  /* 0x80380FA8 */  addu $t0, $t9, $s0
  /* 0x80380FAC */  sw $t0, 44($sp)
  /* 0x80380FB0 */  lh $t1, 48($sp)
  /* 0x80380FB4 */  lh $t3, 50($sp)
  /* 0x80380FB8 */  lui $t6, 0x8039
  /* 0x80380FBC */  sll $t2, $t1, 2
  /* 0x80380FC0 */  sll $t5, $t3, 2
  /* 0x80380FC4 */  subu $t2, $t2, $t1
  /* 0x80380FC8 */  subu $t5, $t5, $t3
  /* 0x80380FCC */  sll $t5, $t5, 3
  /* 0x80380FD0 */  sll $t2, $t2, 7
  /* 0x80380FD4 */  addu $t4, $t2, $t5
  /* 0x80380FD8 */  addu $t6, $t6, $t4
  /* 0x80380FDC */  lw $t6, -16728($t6)
  /* 0x80380FE0 */  sw $t6, 52($sp)
  /* 0x80380FE4 */  lw $a0, 52($sp)
  /* 0x80380FE8 */  jal 0x80380690
  /* 0x80380FEC */  lw $a1, 56($sp)
  /* 0x80380FF0 */  lw $t7, 44($sp)
  /* 0x80380FF4 */  move $s0, $v0
  /* 0x80380FF8 */  addu $t8, $t7, $s0
  /* 0x80380FFC */  sw $t8, 44($sp)
  /* 0x80381000 */  lui $t9, 0x8034
  /* 0x80381004 */  lh $t9, -11656($t9)
  /* 0x80381008 */  lui $at, 0x8034
  /* 0x8038100C */  addiu $t0, $t9, 1
  /* 0x80381010 */  sh $t0, -11656($at)
  /* 0x80381014 */  b .find_wall_collisions_L80381024
  /* 0x80381018 */  lw $v0, 44($sp)
  /* 0x8038101C */  b .find_wall_collisions_L80381024
  /* 0x80381020 */  nop
.find_wall_collisions_L80381024:
  /* 0x80381024 */  lw $ra, 28($sp)
  /* 0x80381028 */  lw $s0, 24($sp)
  /* 0x8038102C */  addiu $sp, $sp, 56
  /* 0x80381030 */  jr $ra
  /* 0x80381034 */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x80380E8C */  addiu $sp, $sp, -56
  /* 0x80380E90 */  sw $ra, 28($sp)
  /* 0x80380E94 */  sw $a0, 56($sp)
  /* 0x80380E98 */  sw $s0, 24($sp)
  /* 0x80380E9C */  sw $zero, 44($sp)
  /* 0x80380EA0 */  lw $t6, 56($sp)
  /* 0x80380EA4 */  lwc1 $f4, 0($t6)
  /* 0x80380EA8 */  trunc.w.s $f6, $f4
  /* 0x80380EAC */  mfc1 $t8, $f6
  /* 0x80380EB0 */  sra $t8, $t8, 2  ; <-- CHANGED
  /* 0x80380EB4 */  sh $t8, 42($sp)
  /* 0x80380EB8 */  lw $t9, 56($sp)
  /* 0x80380EBC */  lwc1 $f8, 8($t9)
  /* 0x80380EC0 */  trunc.w.s $f10, $f8
  /* 0x80380EC4 */  mfc1 $t1, $f10
  /* 0x80380EC8 */  sra $t1, $t1, 2  ; <-- CHANGED
  /* 0x80380ECC */  sh $t1, 40($sp)
  /* 0x80380ED0 */  lw $t2, 56($sp)
  /* 0x80380ED4 */  sh $zero, 22($t2)
  /* 0x80380ED8 */  lh $t3, 42($sp)
  /* 0x80380EDC */  slti $at, $t3, -32768  ; <-- CHANGED
  /* 0x80380EE0 */  bne $at, $zero, .find_wall_collisions_L80380EF4
  /* 0x80380EE4 */  nop
  /* 0x80380EE8 */  slti $at, $t3, 32767  ; <-- CHANGED
  /* 0x80380EEC */  bne $at, $zero, .find_wall_collisions_L80380EFC
  /* 0x80380EF0 */  nop
.find_wall_collisions_L80380EF4:
  /* 0x80380EF4 */  b .find_wall_collisions_L80381024
  /* 0x80380EF8 */  lw $v0, 44($sp)
.find_wall_collisions_L80380EFC:
  /* 0x80380EFC */  lh $t4, 40($sp)
  /* 0x80380F00 */  slti $at, $t4, -32768  ; <-- CHANGED
  /* 0x80380F04 */  bne $at, $zero, .find_wall_collisions_L80380F18
  /* 0x80380F08 */  nop
  /* 0x80380F0C */  slti $at, $t4, 32767  ; <-- CHANGED
  /* 0x80380F10 */  bne $at, $zero, .find_wall_collisions_L80380F20
  /* 0x80380F14 */  nop
.find_wall_collisions_L80380F18:
  /* 0x80380F18 */  b .find_wall_collisions_L80381024
  /* 0x80380F1C */  lw $v0, 44($sp)
.find_wall_collisions_L80380F20:
  /* 0x80380F20 */  lh $t5, 42($sp)
  /* 0x80380F24 */  addiu $t6, $t5, 8192
  /* 0x80380F28 */  bgez $t6, .find_wall_collisions_L80380F38
  /* 0x80380F2C */  sra $t7, $t6, 10
  /* 0x80380F30 */  addiu $at, $t6, 1023
  /* 0x80380F34 */  sra $t7, $at, 10
.find_wall_collisions_L80380F38:
  /* 0x80380F38 */  andi $t8, $t7, 0xF
  /* 0x80380F3C */  sh $t8, 50($sp)
  /* 0x80380F40 */  lh $t9, 40($sp)
  /* 0x80380F44 */  addiu $t0, $t9, 8192
  /* 0x80380F48 */  bgez $t0, .find_wall_collisions_L80380F58
  /* 0x80380F4C */  sra $t1, $t0, 10
  /* 0x80380F50 */  addiu $at, $t0, 1023
  /* 0x80380F54 */  sra $t1, $at, 10
.find_wall_collisions_L80380F58:
  /* 0x80380F58 */  andi $t2, $t1, 0xF
  /* 0x80380F5C */  sh $t2, 48($sp)
  /* 0x80380F60 */  lh $t3, 48($sp)
  /* 0x80380F64 */  lh $t5, 50($sp)
  /* 0x80380F68 */  lui $t8, 0x8039
  /* 0x80380F6C */  sll $t4, $t3, 2
  /* 0x80380F70 */  sll $t6, $t5, 2
  /* 0x80380F74 */  subu $t4, $t4, $t3
  /* 0x80380F78 */  subu $t6, $t6, $t5
  /* 0x80380F7C */  sll $t6, $t6, 3
  /* 0x80380F80 */  sll $t4, $t4, 7
  /* 0x80380F84 */  addu $t7, $t4, $t6
  /* 0x80380F88 */  addu $t8, $t8, $t7
  /* 0x80380F8C */  lw $t8, -10584($t8)
  /* 0x80380F90 */  sw $t8, 52($sp)
  /* 0x80380F94 */  lw $a0, 52($sp)
  /* 0x80380F98 */  jal 0x80380690
  /* 0x80380F9C */  lw $a1, 56($sp)
  /* 0x80380FA0 */  lw $t9, 44($sp)
  /* 0x80380FA4 */  move $s0, $v0
  /* 0x80380FA8 */  addu $t0, $t9, $s0
  /* 0x80380FAC */  sw $t0, 44($sp)
  /* 0x80380FB0 */  lh $t1, 48($sp)
  /* 0x80380FB4 */  lh $t3, 50($sp)
  /* 0x80380FB8 */  lui $t6, 0x8039
  /* 0x80380FBC */  sll $t2, $t1, 2
  /* 0x80380FC0 */  sll $t5, $t3, 2
  /* 0x80380FC4 */  subu $t2, $t2, $t1
  /* 0x80380FC8 */  subu $t5, $t5, $t3
  /* 0x80380FCC */  sll $t5, $t5, 3
  /* 0x80380FD0 */  sll $t2, $t2, 7
  /* 0x80380FD4 */  addu $t4, $t2, $t5
  /* 0x80380FD8 */  addu $t6, $t6, $t4
  /* 0x80380FDC */  lw $t6, -16728($t6)
  /* 0x80380FE0 */  sw $t6, 52($sp)
  /* 0x80380FE4 */  lw $a0, 52($sp)
  /* 0x80380FE8 */  jal 0x80380690
  /* 0x80380FEC */  lw $a1, 56($sp)
  /* 0x80380FF0 */  lw $t7, 44($sp)
  /* 0x80380FF4 */  move $s0, $v0
  /* 0x80380FF8 */  addu $t8, $t7, $s0
  /* 0x80380FFC */  sw $t8, 44($sp)
  /* 0x80381000 */  lui $t9, 0x8034
  /* 0x80381004 */  lh $t9, -11656($t9)
  /* 0x80381008 */  lui $at, 0x8034
  /* 0x8038100C */  addiu $t0, $t9, 1
  /* 0x80381010 */  sh $t0, -11656($at)
  /* 0x80381014 */  b .find_wall_collisions_L80381024
  /* 0x80381018 */  lw $v0, 44($sp)
  /* 0x8038101C */  b .find_wall_collisions_L80381024
  /* 0x80381020 */  nop
.find_wall_collisions_L80381024:
  /* 0x80381024 */  lw $ra, 28($sp)
  /* 0x80381028 */  lw $s0, 24($sp)
  /* 0x8038102C */  addiu $sp, $sp, 56
  /* 0x80381030 */  jr $ra
  /* 0x80381034 */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x80380EB0:
  ;   was: 00 00 00 00  nop
  ;   new: 00 18 C0 83  sra $t8, $t8, 2
  ; 0x80380EC8:
  ;   was: 00 00 00 00  nop
  ;   new: 00 09 48 83  sra $t1, $t1, 2
  ; 0x80380EDC:
  ;   was: 29 61 E0 01  slti $at, $t3, -8191
  ;   new: 29 61 80 00  slti $at, $t3, -32768
  ; 0x80380EE8:
  ;   was: 29 61 20 00  slti $at, $t3, 8192
  ;   new: 29 61 7F FF  slti $at, $t3, 32767
  ; 0x80380F00:
  ;   was: 29 81 E0 01  slti $at, $t4, -8191
  ;   new: 29 81 80 00  slti $at, $t4, -32768
  ; 0x80380F0C:
  ;   was: 29 81 20 00  slti $at, $t4, 8192
  ;   new: 29 81 7F FF  slti $at, $t4, 32767
