; Function: extrapolate_vertex_y_position
; RAM: 0x802CDB20  Size: 0x54

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x802CDB20 */  sw $a0, 0($sp)
  /* 0x802CDB24 */  sw $a1, 4($sp)
  /* 0x802CDB28 */  sw $a2, 8($sp)
  /* 0x802CDB2C */  sw $a3, 12($sp)
  /* 0x802CDB30 */  lwc1 $f4, 20($sp)
  /* 0x802CDB34 */  lwc1 $f6, 48($sp)
  /* 0x802CDB38 */  lwc1 $f10, 28($sp)
  /* 0x802CDB3C */  lwc1 $f16, 52($sp)
  /* 0x802CDB40 */  mul.s $f8, $f4, $f6
  /* 0x802CDB44 */  lwc1 $f6, 32($sp)
  /* 0x802CDB48 */  mul.s $f18, $f10, $f16
  /* 0x802CDB4C */  add.s $f4, $f8, $f18
  /* 0x802CDB50 */  lwc1 $f8, 24($sp)
  /* 0x802CDB54 */  add.s $f10, $f4, $f6
  /* 0x802CDB58 */  neg.s $f16, $f10
  /* 0x802CDB5C */  b .extrapolate_vertex_y_position_L802CDB6C  ; <-- CHANGED
  /* 0x802CDB60 */  div.s $f0, $f16, $f8  ; <-- CHANGED
  /* 0x802CDB64 */  b .extrapolate_vertex_y_position_L802CDB6C  ; <-- CHANGED
  /* 0x802CDB68 */  nop  ; <-- CHANGED
.extrapolate_vertex_y_position_L802CDB6C:
  /* 0x802CDB6C */  jr $ra
  /* 0x802CDB70 */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x802CDB20 */  sw $a0, 0($sp)
  /* 0x802CDB24 */  sw $a1, 4($sp)
  /* 0x802CDB28 */  sw $a2, 8($sp)
  /* 0x802CDB2C */  sw $a3, 12($sp)
  /* 0x802CDB30 */  lwc1 $f4, 20($sp)
  /* 0x802CDB34 */  lwc1 $f6, 48($sp)
  /* 0x802CDB38 */  lwc1 $f10, 28($sp)
  /* 0x802CDB3C */  lwc1 $f16, 52($sp)
  /* 0x802CDB40 */  mul.s $f8, $f4, $f6
  /* 0x802CDB44 */  lwc1 $f6, 32($sp)
  /* 0x802CDB48 */  mul.s $f18, $f10, $f16
  /* 0x802CDB4C */  add.s $f4, $f8, $f18
  /* 0x802CDB50 */  lwc1 $f8, 24($sp)
  /* 0x802CDB54 */  add.s $f10, $f4, $f6
  /* 0x802CDB58 */  neg.s $f16, $f10
  /* 0x802CDB5C */  div.s $f0, $f16, $f8  ; <-- CHANGED
  /* 0x802CDB60 */  add.s $f8, $f8, $f8  ; <-- CHANGED
  /* 0x802CDB64 */  nop  ; <-- CHANGED
  /* 0x802CDB68 */  add.s $f0, $f0, $f8  ; <-- CHANGED
  /* 0x802CDB6C */  jr $ra
  /* 0x802CDB70 */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x802CDB5C:
  ;   was: 10 00 00 03  b .extrapolate_vertex_y_position_L802CDB6C
  ;   new: 46 08 80 03  div.s $f0, $f16, $f8
  ; 0x802CDB60:
  ;   was: 46 08 80 03  div.s $f0, $f16, $f8
  ;   new: 46 08 42 00  add.s $f8, $f8, $f8
  ; 0x802CDB64:
  ;   was: 10 00 00 01  b .extrapolate_vertex_y_position_L802CDB6C
  ;   new: 00 00 00 00  nop
  ; 0x802CDB68:
  ;   was: 00 00 00 00  nop
  ;   new: 46 08 00 00  add.s $f0, $f0, $f8
