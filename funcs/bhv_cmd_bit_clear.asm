; Function: bhv_cmd_bit_clear
; RAM: 0x80384E04  Size: 0x98

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x80384E04 */  addiu $sp, $sp, -8  ; <-- CHANGED
  /* 0x80384E08 */  lui $t6, 0x8036  ; <-- CHANGED
  /* 0x80384E0C */  lw $t6, 4452($t6)  ; <-- CHANGED
  /* 0x80384E10 */  lw $t7, 0($t6)  ; <-- CHANGED
  /* 0x80384E14 */  srl $t8, $t7, 16  ; <-- CHANGED
  /* 0x80384E18 */  andi $t9, $t8, 0xFF  ; <-- CHANGED
  /* 0x80384E1C */  sb $t9, 7($sp)  ; <-- CHANGED
  /* 0x80384E20 */  lui $t0, 0x8036  ; <-- CHANGED
  /* 0x80384E24 */  lw $t0, 4452($t0)  ; <-- CHANGED
  /* 0x80384E28 */  lw $t1, 0($t0)  ; <-- CHANGED
  /* 0x80384E2C */  andi $t2, $t1, 0xFFFF  ; <-- CHANGED
  /* 0x80384E30 */  sll $t3, $t2, 16  ; <-- CHANGED
  /* 0x80384E34 */  sra $t4, $t3, 16  ; <-- CHANGED
  /* 0x80384E38 */  sw $t4, 0($sp)  ; <-- CHANGED
  /* 0x80384E3C */  lw $t5, 0($sp)  ; <-- CHANGED
  /* 0x80384E40 */  andi $t6, $t5, 0xFFFF  ; <-- CHANGED
  /* 0x80384E44 */  xori $t7, $t6, 0xFFFF  ; <-- CHANGED
  /* 0x80384E48 */  sw $t7, 0($sp)  ; <-- CHANGED
  /* 0x80384E4C */  lbu $t9, 7($sp)  ; <-- CHANGED
  /* 0x80384E50 */  lui $t8, 0x8036
  /* 0x80384E54 */  lw $t8, 4448($t8)
  /* 0x80384E58 */  sll $t0, $t9, 2
  /* 0x80384E5C */  lw $t3, 0($sp)
  /* 0x80384E60 */  addu $t1, $t8, $t0
  /* 0x80384E64 */  lw $t2, 136($t1)
  /* 0x80384E68 */  and $t4, $t2, $t3
  /* 0x80384E6C */  sw $t4, 136($t1)
  /* 0x80384E70 */  lui $t5, 0x8036
  /* 0x80384E74 */  lw $t5, 4452($t5)
  /* 0x80384E78 */  lui $at, 0x8036
  /* 0x80384E7C */  addiu $t6, $t5, 4
  /* 0x80384E80 */  sw $t6, 4452($at)
  /* 0x80384E84 */  b .bhv_cmd_bit_clear_L80384E94
  /* 0x80384E88 */  move $v0, $zero
  /* 0x80384E8C */  b .bhv_cmd_bit_clear_L80384E94
  /* 0x80384E90 */  nop
.bhv_cmd_bit_clear_L80384E94:
  /* 0x80384E94 */  jr $ra
  /* 0x80384E98 */  addiu $sp, $sp, 8
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x80384E04 */  addiu $sp, $sp, -24  ; <-- CHANGED
  /* 0x80384E08 */  sw $ra, 20($sp)  ; <-- CHANGED
  /* 0x80384E0C */  lui $a0, 0x8040  ; <-- CHANGED
  /* 0x80384E10 */  lui $a1, 0x807F  ; <-- CHANGED
  /* 0x80384E14 */  ori $a1, $a1, 0xFFFC  ; <-- CHANGED
.bhv_cmd_bit_clear_L80384E18:
  /* 0x80384E18 */  sw $zero, 0($a0)  ; <-- CHANGED
  /* 0x80384E1C */  addiu $a0, $a0, 4  ; <-- CHANGED
  /* 0x80384E20 */  bne $a1, $a0, .bhv_cmd_bit_clear_L80384E18  ; <-- CHANGED
  /* 0x80384E24 */  li $zero, 0  ; <-- CHANGED
  /* 0x80384E28 */  lui $a0, 0x8040  ; <-- CHANGED
  /* 0x80384E2C */  nop  ; <-- CHANGED
  /* 0x80384E30 */  lui $a1, 0x120  ; <-- CHANGED
  /* 0x80384E34 */  nop  ; <-- CHANGED
  /* 0x80384E38 */  lui $a2, 0x121  ; <-- CHANGED
  /* 0x80384E3C */  jal 0x80278504  ; <-- CHANGED
  /* 0x80384E40 */  ori $a2, $a2, 0x0  ; <-- CHANGED
  /* 0x80384E44 */  lw $ra, 20($sp)  ; <-- CHANGED
  /* 0x80384E48 */  jr $ra  ; <-- CHANGED
  /* 0x80384E4C */  addiu $sp, $sp, 24  ; <-- CHANGED
  /* 0x80384E50 */  lui $t8, 0x8036
  /* 0x80384E54 */  lw $t8, 4448($t8)
  /* 0x80384E58 */  sll $t0, $t9, 2
  /* 0x80384E5C */  lw $t3, 0($sp)
  /* 0x80384E60 */  addu $t1, $t8, $t0
  /* 0x80384E64 */  lw $t2, 136($t1)
  /* 0x80384E68 */  and $t4, $t2, $t3
  /* 0x80384E6C */  sw $t4, 136($t1)
  /* 0x80384E70 */  lui $t5, 0x8036
  /* 0x80384E74 */  lw $t5, 4452($t5)
  /* 0x80384E78 */  lui $at, 0x8036
  /* 0x80384E7C */  addiu $t6, $t5, 4
  /* 0x80384E80 */  sw $t6, 4452($at)
  /* 0x80384E84 */  b .bhv_cmd_bit_clear_L80384E94
  /* 0x80384E88 */  move $v0, $zero
  /* 0x80384E8C */  b .bhv_cmd_bit_clear_L80384E94
  /* 0x80384E90 */  nop
.bhv_cmd_bit_clear_L80384E94:
  /* 0x80384E94 */  jr $ra
  /* 0x80384E98 */  addiu $sp, $sp, 8
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x80384E04:
  ;   was: 27 BD FF F8  addiu $sp, $sp, -8
  ;   new: 27 BD FF E8  addiu $sp, $sp, -24
  ; 0x80384E08:
  ;   was: 3C 0E 80 36  lui $t6, 0x8036
  ;   new: AF BF 00 14  sw $ra, 20($sp)
  ; 0x80384E0C:
  ;   was: 8D CE 11 64  lw $t6, 4452($t6)
  ;   new: 3C 04 80 40  lui $a0, 0x8040
  ; 0x80384E10:
  ;   was: 8D CF 00 00  lw $t7, 0($t6)
  ;   new: 3C 05 80 7F  lui $a1, 0x807F
  ; 0x80384E14:
  ;   was: 00 0F C4 02  srl $t8, $t7, 16
  ;   new: 34 A5 FF FC  ori $a1, $a1, 0xFFFC
  ; 0x80384E18:
  ;   was: 33 19 00 FF  andi $t9, $t8, 0xFF
  ;   new: AC 80 00 00  sw $zero, 0($a0)
  ; 0x80384E1C:
  ;   was: A3 B9 00 07  sb $t9, 7($sp)
  ;   new: 24 84 00 04  addiu $a0, $a0, 4
  ; 0x80384E20:
  ;   was: 3C 08 80 36  lui $t0, 0x8036
  ;   new: 14 A4 FF FD  bne $a1, $a0, .bhv_cmd_bit_clear_L80384E18
  ; 0x80384E24:
  ;   was: 8D 08 11 64  lw $t0, 4452($t0)
  ;   new: 24 00 00 00  li $zero, 0
  ; 0x80384E28:
  ;   was: 8D 09 00 00  lw $t1, 0($t0)
  ;   new: 3C 04 80 40  lui $a0, 0x8040
  ; 0x80384E2C:
  ;   was: 31 2A FF FF  andi $t2, $t1, 0xFFFF
  ;   new: 00 00 00 00  nop
  ; 0x80384E30:
  ;   was: 00 0A 5C 00  sll $t3, $t2, 16
  ;   new: 3C 05 01 20  lui $a1, 0x120
  ; 0x80384E34:
  ;   was: 00 0B 64 03  sra $t4, $t3, 16
  ;   new: 00 00 00 00  nop
  ; 0x80384E38:
  ;   was: AF AC 00 00  sw $t4, 0($sp)
  ;   new: 3C 06 01 21  lui $a2, 0x121
  ; 0x80384E3C:
  ;   was: 8F AD 00 00  lw $t5, 0($sp)
  ;   new: 0C 09 E1 41  jal 0x80278504
  ; 0x80384E40:
  ;   was: 31 AE FF FF  andi $t6, $t5, 0xFFFF
  ;   new: 34 C6 00 00  ori $a2, $a2, 0x0
  ; 0x80384E44:
  ;   was: 39 CF FF FF  xori $t7, $t6, 0xFFFF
  ;   new: 8F BF 00 14  lw $ra, 20($sp)
  ; 0x80384E48:
  ;   was: AF AF 00 00  sw $t7, 0($sp)
  ;   new: 03 E0 00 08  jr $ra
  ; 0x80384E4C:
  ;   was: 93 B9 00 07  lbu $t9, 7($sp)
  ;   new: 27 BD 00 18  addiu $sp, $sp, 24
