; Function: renderModeTable_1Cycle
; RAM: 0x8032DE70  Size: 0x40

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x8032DE70 */  jal 0x80210000
  /* 0x8032DE74 */  jr $v0
  /* 0x8032DE78 */  jr $v0
  /* 0x8032DE7C */  jr $v0
  /* 0x8032DE80 */  jr $v0
  /* 0x8032DE84 */  jr $v0
  /* 0x8032DE88 */  jr $v0
  /* 0x8032DE8C */  jr $v0
  /* 0x8032DE90 */  tge $v0, $a0
  /* 0x8032DE94 */  dsll $a0, $a0, 1
  /* 0x8032DE98 */  mult $v0, $a0
  /* 0x8032DE9C */  dsll $a0, $a0, 17  ; <-- CHANGED
  /* 0x8032DEA0 */  dsll $a2, $a0, 1
  /* 0x8032DEA4 */  mult $v0, $zero
  /* 0x8032DEA8 */  mult $v0, $zero
  /* 0x8032DEAC */  mult $v0, $zero
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x8032DE70 */  jal 0x80210000
  /* 0x8032DE74 */  jr $v0
  /* 0x8032DE78 */  jr $v0
  /* 0x8032DE7C */  jr $v0
  /* 0x8032DE80 */  jr $v0
  /* 0x8032DE84 */  jr $v0
  /* 0x8032DE88 */  jr $v0
  /* 0x8032DE8C */  jr $v0
  /* 0x8032DE90 */  tge $v0, $a0
  /* 0x8032DE94 */  dsll $a0, $a0, 1
  /* 0x8032DE98 */  mult $v0, $a0
  /* 0x8032DE9C */  mult $v0, $zero  ; <-- CHANGED
  /* 0x8032DEA0 */  dsll $a2, $a0, 1
  /* 0x8032DEA4 */  mult $v0, $zero
  /* 0x8032DEA8 */  mult $v0, $zero
  /* 0x8032DEAC */  mult $v0, $zero
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x8032DE9C:
  ;   was: 00 44 24 78  dsll $a0, $a0, 17
  ;   new: 00 40 4D D8  mult $v0, $zero
