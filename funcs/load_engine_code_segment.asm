; Function: load_engine_code_segment
; RAM: 0x80278974  Size: 0xA0

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x80278974 */  addiu $sp, $sp, -40
  /* 0x80278978 */  sw $ra, 20($sp)
  /* 0x8027897C */  lui $t6, 0x8037
  /* 0x80278980 */  ori $t6, $t6, 0x8800
  /* 0x80278984 */  sw $t6, 36($sp)
  /* 0x80278988 */  lui $t7, 0x1
  /* 0x8027898C */  ori $t7, $t7, 0x7000
  /* 0x80278990 */  sw $t7, 32($sp)
  /* 0x80278994 */  lui $t8, 0x11
  /* 0x80278998 */  lui $t9, 0xF
  /* 0x8027899C */  addiu $t9, $t9, 21888
  /* 0x802789A0 */  addiu $t8, $t8, -30192
  /* 0x802789A4 */  subu $t0, $t8, $t9
  /* 0x802789A8 */  addiu $t1, $t0, 15
  /* 0x802789AC */  li $at, -16
  /* 0x802789B0 */  and $t2, $t1, $at
  /* 0x802789B4 */  sw $t2, 28($sp)
  /* 0x802789B8 */  lw $a0, 36($sp)
  /* 0x802789BC */  jal 0x80324570
  /* 0x802789C0 */  lw $a1, 32($sp)
  /* 0x802789C4 */  jal 0x80322F40
  /* 0x802789C8 */  nop
  /* 0x802789CC */  lui $a1, 0xF
  /* 0x802789D0 */  lui $a2, 0x11
  /* 0x802789D4 */  addiu $a2, $a2, -30192
  /* 0x802789D8 */  addiu $a1, $a1, 21888
  /* 0x802789DC */  jal 0x80278504
  /* 0x802789E0 */  lw $a0, 36($sp)
  /* 0x802789E4 */  lw $a0, 36($sp)
  /* 0x802789E8 */  jal 0x80324610
  /* 0x802789EC */  lw $a1, 32($sp)
  /* 0x802789F0 */  lw $a0, 36($sp)
  /* 0x802789F4 */  jal 0x803243B0
  /* 0x802789F8 */  lw $a1, 32($sp)
  /* 0x802789FC */  b .load_engine_code_segment_L80278A04  ; <-- CHANGED
  /* 0x80278A00 */  nop
.load_engine_code_segment_L80278A04:
  /* 0x80278A04 */  lw $ra, 20($sp)
  /* 0x80278A08 */  addiu $sp, $sp, 40
  /* 0x80278A0C */  jr $ra
  /* 0x80278A10 */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x80278974 */  addiu $sp, $sp, -40
  /* 0x80278978 */  sw $ra, 20($sp)
  /* 0x8027897C */  lui $t6, 0x8037
  /* 0x80278980 */  ori $t6, $t6, 0x8800
  /* 0x80278984 */  sw $t6, 36($sp)
  /* 0x80278988 */  lui $t7, 0x1
  /* 0x8027898C */  ori $t7, $t7, 0x7000
  /* 0x80278990 */  sw $t7, 32($sp)
  /* 0x80278994 */  lui $t8, 0x11
  /* 0x80278998 */  lui $t9, 0xF
  /* 0x8027899C */  addiu $t9, $t9, 21888
  /* 0x802789A0 */  addiu $t8, $t8, -30192
  /* 0x802789A4 */  subu $t0, $t8, $t9
  /* 0x802789A8 */  addiu $t1, $t0, 15
  /* 0x802789AC */  li $at, -16
  /* 0x802789B0 */  and $t2, $t1, $at
  /* 0x802789B4 */  sw $t2, 28($sp)
  /* 0x802789B8 */  lw $a0, 36($sp)
  /* 0x802789BC */  jal 0x80324570
  /* 0x802789C0 */  lw $a1, 32($sp)
  /* 0x802789C4 */  jal 0x80322F40
  /* 0x802789C8 */  nop
  /* 0x802789CC */  lui $a1, 0xF
  /* 0x802789D0 */  lui $a2, 0x11
  /* 0x802789D4 */  addiu $a2, $a2, -30192
  /* 0x802789D8 */  addiu $a1, $a1, 21888
  /* 0x802789DC */  jal 0x80278504
  /* 0x802789E0 */  lw $a0, 36($sp)
  /* 0x802789E4 */  lw $a0, 36($sp)
  /* 0x802789E8 */  jal 0x80324610
  /* 0x802789EC */  lw $a1, 32($sp)
  /* 0x802789F0 */  lw $a0, 36($sp)
  /* 0x802789F4 */  jal 0x803243B0
  /* 0x802789F8 */  lw $a1, 32($sp)
  /* 0x802789FC */  jal 0x80384E04  ; <-- CHANGED
  /* 0x80278A00 */  nop
  /* 0x80278A04 */  lw $ra, 20($sp)
  /* 0x80278A08 */  addiu $sp, $sp, 40
  /* 0x80278A0C */  jr $ra
  /* 0x80278A10 */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x802789FC:
  ;   was: 10 00 00 01  b .load_engine_code_segment_L80278A04
  ;   new: 0C 0E 13 81  jal 0x80384E04
