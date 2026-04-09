; Function: rm_stub2f00  (custom)
; RAM: 0x80402F00  Size: 0x98  ROM: 0x1202F00
; Identical in both ROMs: False

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x80402F00 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F04 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F08 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F0C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F10 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F14 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F18 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F1C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F20 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F24 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F28 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F2C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F30 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F34 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F38 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F3C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F40 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F44 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F48 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F4C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F50 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F54 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F58 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F5C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F60 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F64 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F68 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F6C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F70 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F74 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F78 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F7C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F80 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F84 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F88 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F8C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F90 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402F94 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x80402F00 */  lui $at, 0x8033  ; <-- CHANGED
  /* 0x80402F04 */  lh $at, -8712($at)  ; <-- CHANGED
  /* 0x80402F08 */  lui $t0, 0x8040  ; <-- CHANGED
  /* 0x80402F0C */  ori $t0, $t0, 0x2EC0  ; <-- CHANGED
  /* 0x80402F10 */  addu $t0, $t0, $at  ; <-- CHANGED
  /* 0x80402F14 */  lbu $t0, 0($t0)  ; <-- CHANGED
  /* 0x80402F18 */  li $at, 1  ; <-- CHANGED
  /* 0x80402F1C */  beq $at, $t0, .rm_stub2f00_L80402F2C  ; <-- CHANGED
  /* 0x80402F20 */  li $zero, 0  ; <-- CHANGED
  /* 0x80402F24 */  j 0x8024BF90  ; <-- CHANGED
  /* 0x80402F28 */  move $v0, $zero  ; <-- CHANGED
.rm_stub2f00_L80402F2C:
  /* 0x80402F2C */  j 0x8024BF58  ; <-- CHANGED
  /* 0x80402F30 */  li $zero, 0  ; <-- CHANGED
  /* 0x80402F34 */  nop  ; <-- CHANGED
  /* 0x80402F38 */  nop  ; <-- CHANGED
  /* 0x80402F3C */  nop  ; <-- CHANGED
  /* 0x80402F40 */  nop  ; <-- CHANGED
  /* 0x80402F44 */  nop  ; <-- CHANGED
  /* 0x80402F48 */  nop  ; <-- CHANGED
  /* 0x80402F4C */  nop  ; <-- CHANGED
  /* 0x80402F50 */  addiu $sp, $sp, -24  ; <-- CHANGED
  /* 0x80402F54 */  sw $ra, 20($sp)  ; <-- CHANGED
  /* 0x80402F58 */  lui $at, 0x8033  ; <-- CHANGED
  /* 0x80402F5C */  lh $at, -8712($at)  ; <-- CHANGED
  /* 0x80402F60 */  lui $t0, 0x8040  ; <-- CHANGED
  /* 0x80402F64 */  ori $t0, $t0, 0x2E50  ; <-- CHANGED
  /* 0x80402F68 */  addu $t0, $t0, $at  ; <-- CHANGED
  /* 0x80402F6C */  lbu $t0, 0($t0)  ; <-- CHANGED
  /* 0x80402F70 */  li $at, 1  ; <-- CHANGED
  /* 0x80402F74 */  beq $at, $t0, .rm_stub2f00_L80402F84  ; <-- CHANGED
  /* 0x80402F78 */  li $zero, 0  ; <-- CHANGED
  /* 0x80402F7C */  jr $ra  ; <-- CHANGED
  /* 0x80402F80 */  addiu $sp, $sp, 24  ; <-- CHANGED
.rm_stub2f00_L80402F84:
  /* 0x80402F84 */  jal 0x8028EEB0  ; <-- CHANGED
  /* 0x80402F88 */  nop  ; <-- CHANGED
  /* 0x80402F8C */  lw $ra, 20($sp)  ; <-- CHANGED
  /* 0x80402F90 */  jr $ra  ; <-- CHANGED
  /* 0x80402F94 */  addiu $sp, $sp, 24  ; <-- CHANGED
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x80402F00:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 01 80 33  lui $at, 0x8033
  ; 0x80402F04:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 84 21 DD F8  lh $at, -8712($at)
  ; 0x80402F08:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 08 80 40  lui $t0, 0x8040
  ; 0x80402F0C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 35 08 2E C0  ori $t0, $t0, 0x2EC0
  ; 0x80402F10:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 01 01 40 21  addu $t0, $t0, $at
  ; 0x80402F14:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 91 08 00 00  lbu $t0, 0($t0)
  ; 0x80402F18:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 24 01 00 01  li $at, 1
  ; 0x80402F1C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 10 28 00 03  beq $at, $t0, .rm_stub2f00_L80402F2C
  ; 0x80402F20:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 24 00 00 00  li $zero, 0
  ; 0x80402F24:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 08 09 2F E4  j 0x8024BF90
  ; 0x80402F28:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 00 10 25  move $v0, $zero
  ; 0x80402F2C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 08 09 2F D6  j 0x8024BF58
  ; 0x80402F30:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 24 00 00 00  li $zero, 0
  ; 0x80402F34:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 00 00 00  nop
  ; 0x80402F38:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 00 00 00  nop
  ; 0x80402F3C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 00 00 00  nop
  ; 0x80402F40:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 00 00 00  nop
  ; 0x80402F44:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 00 00 00  nop
  ; 0x80402F48:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 00 00 00  nop
  ; 0x80402F4C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 00 00 00  nop
  ; 0x80402F50:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 27 BD FF E8  addiu $sp, $sp, -24
  ; 0x80402F54:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: AF BF 00 14  sw $ra, 20($sp)
  ; 0x80402F58:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 01 80 33  lui $at, 0x8033
  ; 0x80402F5C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 84 21 DD F8  lh $at, -8712($at)
  ; 0x80402F60:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 08 80 40  lui $t0, 0x8040
  ; 0x80402F64:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 35 08 2E 50  ori $t0, $t0, 0x2E50
  ; 0x80402F68:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 01 01 40 21  addu $t0, $t0, $at
  ; 0x80402F6C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 91 08 00 00  lbu $t0, 0($t0)
  ; 0x80402F70:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 24 01 00 01  li $at, 1
  ; 0x80402F74:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 10 28 00 03  beq $at, $t0, .rm_stub2f00_L80402F84
  ; 0x80402F78:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 24 00 00 00  li $zero, 0
  ; 0x80402F7C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 03 E0 00 08  jr $ra
  ; 0x80402F80:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 27 BD 00 18  addiu $sp, $sp, 24
  ; 0x80402F84:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 0C 0A 3B AC  jal 0x8028EEB0
  ; 0x80402F88:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 00 00 00  nop
  ; 0x80402F8C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F BF 00 14  lw $ra, 20($sp)
  ; 0x80402F90:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 03 E0 00 08  jr $ra
  ; 0x80402F94:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 27 BD 00 18  addiu $sp, $sp, 24
