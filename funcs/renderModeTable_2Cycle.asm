; Function: renderModeTable_2Cycle
; RAM: 0x8032DEB0  Size: 0x40

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x8032DEB0 */  sll $t0, $v0, 0
  /* 0x8032DEB4 */  jr $zero
  /* 0x8032DEB8 */  jr $zero
  /* 0x8032DEBC */  jr $zero
  /* 0x8032DEC0 */  jr $zero
  /* 0x8032DEC4 */  jr $zero
  /* 0x8032DEC8 */  jr $zero
  /* 0x8032DECC */  jr $zero
  /* 0x8032DED0 */  tge $zero, $s1
  /* 0x8032DED4 */  dsll $a0, $s1, 1
  /* 0x8032DED8 */  mult $zero, $s1
  /* 0x8032DEDC */  dsll $a0, $s1, 17  ; <-- CHANGED
  /* 0x8032DEE0 */  dsll $a2, $s1, 1
  /* 0x8032DEE4 */  mult $zero, $s0
  /* 0x8032DEE8 */  mult $zero, $s0
  /* 0x8032DEEC */  mult $zero, $s0
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x8032DEB0 */  sll $t0, $v0, 0
  /* 0x8032DEB4 */  jr $zero
  /* 0x8032DEB8 */  jr $zero
  /* 0x8032DEBC */  jr $zero
  /* 0x8032DEC0 */  jr $zero
  /* 0x8032DEC4 */  jr $zero
  /* 0x8032DEC8 */  jr $zero
  /* 0x8032DECC */  jr $zero
  /* 0x8032DED0 */  tge $zero, $s1
  /* 0x8032DED4 */  dsll $a0, $s1, 1
  /* 0x8032DED8 */  mult $zero, $s1
  /* 0x8032DEDC */  mult $zero, $s0  ; <-- CHANGED
  /* 0x8032DEE0 */  dsll $a2, $s1, 1
  /* 0x8032DEE4 */  mult $zero, $s0
  /* 0x8032DEE8 */  mult $zero, $s0
  /* 0x8032DEEC */  mult $zero, $s0
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x8032DEDC:
  ;   was: 00 11 24 78  dsll $a0, $s1, 17
  ;   new: 00 10 4D D8  mult $zero, $s0
