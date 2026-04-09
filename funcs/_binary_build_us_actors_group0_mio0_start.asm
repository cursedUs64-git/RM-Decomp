; Function: _binary_build_us_actors_group0_mio0_start
; RAM: 0x04000000  Size: 0x40

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x04000000 */  lb $s7, 4672($at)
  /* 0x04000004 */  sync
  /* 0x04000008 */  lb $a0, 24576($at)
  /* 0x0400000C */  sllv $v0, $zero, $zero
  /* 0x04000010 */  daddi $k0, $k0, 17093  ; <-- CHANGED
  /* 0x04000014 */  cache 0x05, -28964($t6)  ; <-- CHANGED
  /* 0x04000018 */  nop
  /* 0x0400001C */  nop
  /* 0x04000020 */  beql $k0, $s5, 0x04014138
  /* 0x04000024 */  beql $s1, $zero, 0x0401352C
  /* 0x04000028 */  beql $s2, $t1, 0x04013CAC
  /* 0x0400002C */  ori $s4, $s1, 0x2020
  /* 0x04000030 */  addi $zero, $at, 8224
  /* 0x04000034 */  nop
  /* 0x04000038 */  .word 0x0000004E  // unknown SPECIAL funct=0x0E
  /* 0x0400003C */  beql $k0, $t5, 0x04011440
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x04000000 */  lb $s7, 4672($at)
  /* 0x04000004 */  sync
  /* 0x04000008 */  lb $a0, 24576($at)
  /* 0x0400000C */  sllv $v0, $zero, $zero
  /* 0x04000010 */  daddu $t5, $s2, $t5  ; <-- CHANGED
  /* 0x04000014 */  lb $s4, -9329($t5)  ; <-- CHANGED
  /* 0x04000018 */  nop
  /* 0x0400001C */  nop
  /* 0x04000020 */  beql $k0, $s5, 0x04014138
  /* 0x04000024 */  beql $s1, $zero, 0x0401352C
  /* 0x04000028 */  beql $s2, $t1, 0x04013CAC
  /* 0x0400002C */  ori $s4, $s1, 0x2020
  /* 0x04000030 */  addi $zero, $at, 8224
  /* 0x04000034 */  nop
  /* 0x04000038 */  .word 0x0000004E  // unknown SPECIAL funct=0x0E
  /* 0x0400003C */  beql $k0, $t5, 0x04011440
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x04000010:
  ;   was: 63 5A 42 C5  daddi $k0, $k0, 17093
  ;   new: 02 4D 6B ED  daddu $t5, $s2, $t5
  ; 0x04000014:
  ;   was: BD C5 8E DC  cache 0x05, -28964($t6)
  ;   new: 81 B4 DB 8F  lb $s4, -9329($t5)
