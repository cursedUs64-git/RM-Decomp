; Function: begin_background_music_fade
; RAM: 0x80320F68  Size: 0x16C

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x80320F68 */  lui $t0, 0x8033
  /* 0x80320F6C */  lbu $t0, 12716($t0)
  /* 0x80320F70 */  addiu $sp, $sp, -32
  /* 0x80320F74 */  li $a1, 255
  /* 0x80320F78 */  sw $ra, 20($sp)
  /* 0x80320F7C */  sw $a0, 32($sp)
  /* 0x80320F80 */  beq $a1, $t0, .begin_background_music_fade_L80320F94
  /* 0x80320F84 */  li $a2, 255
  /* 0x80320F88 */  li $at, 26
  /* 0x80320F8C */  bne $t0, $at, .begin_background_music_fade_L80320F9C
  /* 0x80320F90 */  lui $a3, 0x8022
.begin_background_music_fade_L80320F94:
  /* 0x80320F94 */  b .begin_background_music_fade_L803210C4
  /* 0x80320F98 */  li $v0, 255
.begin_background_music_fade_L80320F9C:
  /* 0x80320F9C */  addiu $a3, $a3, 9752
  /* 0x80320FA0 */  lwc1 $f6, 32($a3)
  /* 0x80320FA4 */  mtc1 $zero, $f4
  /* 0x80320FA8 */  lhu $t6, 34($sp)
  /* 0x80320FAC */  lui $v0, 0x8036
  /* 0x80320FB0 */  c.eq.s $f4, $f6
  /* 0x80320FB4 */  lui $t9, 0x8036
  /* 0x80320FB8 */  lui $t1, 0x8033
  /* 0x80320FBC */  bc1f .begin_background_music_fade_L80320FD4
  /* 0x80320FC0 */  nop
  /* 0x80320FC4 */  beq $t6, $zero, .begin_background_music_fade_L80320FD4
  /* 0x80320FC8 */  nop
  /* 0x80320FCC */  lwc1 $f8, 24($a3)
  /* 0x80320FD0 */  swc1 $f8, 32($a3)
.begin_background_music_fade_L80320FD4:
  /* 0x80320FD4 */  lbu $v0, 19330($v0)
  /* 0x80320FD8 */  beq $v0, $zero, .begin_background_music_fade_L80320FEC
  /* 0x80320FDC */  nop
  /* 0x80320FE0 */  move $a2, $v0
  /* 0x80320FE4 */  andi $t7, $a2, 0x7F
  /* 0x80320FE8 */  move $a2, $t7
.begin_background_music_fade_L80320FEC:
  /* 0x80320FEC */  lui $v0, 0x8033
  /* 0x80320FF0 */  lbu $v0, 12844($v0)
  /* 0x80320FF4 */  beq $v0, $zero, .begin_background_music_fade_L8032100C
  /* 0x80320FF8 */  andi $t8, $v0, 0x7F
  /* 0x80320FFC */  slt $at, $t8, $a2
  /* 0x80321000 */  beq $at, $zero, .begin_background_music_fade_L8032100C
  /* 0x80321004 */  nop
  /* 0x80321008 */  andi $a2, $t8, 0xFF
.begin_background_music_fade_L8032100C:
  /* 0x8032100C */  lbu $t9, 19331($t9)
  /* 0x80321010 */  slti $at, $a2, 41
  /* 0x80321014 */  beq $t9, $zero, .begin_background_music_fade_L80321028
  /* 0x80321018 */  nop
  /* 0x8032101C */  bne $at, $zero, .begin_background_music_fade_L80321028
  /* 0x80321020 */  nop
  /* 0x80321024 */  li $a2, 40
.begin_background_music_fade_L80321028:
  /* 0x80321028 */  lhu $t1, 12832($t1)
  /* 0x8032102C */  slti $at, $a2, 21
  /* 0x80321030 */  beql $t1, $zero, .begin_background_music_fade_L80321048
  /* 0x80321034 */  lw $t2, 0($a3)
  /* 0x80321038 */  bnel $at, $zero, .begin_background_music_fade_L80321048
  /* 0x8032103C */  lw $t2, 0($a3)
  /* 0x80321040 */  li $a2, 20
  /* 0x80321044 */  lw $t2, 0($a3)
.begin_background_music_fade_L80321048:
  /* 0x80321048 */  li $at, 1
  /* 0x8032104C */  srl $t3, $t2, 31
  /* 0x80321050 */  bnel $t3, $at, .begin_background_music_fade_L803210C4
  /* 0x80321054 */  move $v0, $a2
  /* 0x80321058 */  beq $a1, $a2, .begin_background_music_fade_L80321078
  /* 0x8032105C */  lui $t4, 0x8033
  /* 0x80321060 */  move $a0, $zero
  /* 0x80321064 */  lhu $a1, 34($sp)
  /* 0x80321068 */  jal 0x8031E710
  /* 0x8032106C */  sb $a2, 31($sp)
  /* 0x80321070 */  b .begin_background_music_fade_L803210C0
  /* 0x80321074 */  lbu $a2, 31($sp)
.begin_background_music_fade_L80321078:
  /* 0x80321078 */  addu $t4, $t4, $t0
  /* 0x8032107C */  lbu $t4, 12680($t4)
  /* 0x80321080 */  lui $at, 0x4F80
  /* 0x80321084 */  mtc1 $t4, $f10
  /* 0x80321088 */  bgez $t4, .begin_background_music_fade_L8032109C
  /* 0x8032108C */  cvt.s.w $f16, $f10
  /* 0x80321090 */  mtc1 $at, $f18
  /* 0x80321094 */  nop
  /* 0x80321098 */  add.s $f16, $f16, $f18
.begin_background_music_fade_L8032109C:
  /* 0x8032109C */  lui $at, 0x42FE
  /* 0x803210A0 */  mtc1 $at, $f4
  /* 0x803210A4 */  move $a0, $zero
  /* 0x803210A8 */  lhu $a1, 34($sp)
  /* 0x803210AC */  div.s $f6, $f16, $f4
  /* 0x803210B0 */  sb $a2, 31($sp)
  /* 0x803210B4 */  jal 0x8031E6A4
  /* 0x803210B8 */  swc1 $f6, 32($a3)  ; <-- CHANGED
  /* 0x803210BC */  lbu $a2, 31($sp)
.begin_background_music_fade_L803210C0:
  /* 0x803210C0 */  move $v0, $a2
.begin_background_music_fade_L803210C4:
  /* 0x803210C4 */  lw $ra, 20($sp)
  /* 0x803210C8 */  addiu $sp, $sp, 32
  /* 0x803210CC */  jr $ra
  /* 0x803210D0 */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x80320F68 */  lui $t0, 0x8033
  /* 0x80320F6C */  lbu $t0, 12716($t0)
  /* 0x80320F70 */  addiu $sp, $sp, -32
  /* 0x80320F74 */  li $a1, 255
  /* 0x80320F78 */  sw $ra, 20($sp)
  /* 0x80320F7C */  sw $a0, 32($sp)
  /* 0x80320F80 */  beq $a1, $t0, .begin_background_music_fade_L80320F94
  /* 0x80320F84 */  li $a2, 255
  /* 0x80320F88 */  li $at, 26
  /* 0x80320F8C */  bne $t0, $at, .begin_background_music_fade_L80320F9C
  /* 0x80320F90 */  lui $a3, 0x8022
.begin_background_music_fade_L80320F94:
  /* 0x80320F94 */  b .begin_background_music_fade_L803210C4
  /* 0x80320F98 */  li $v0, 255
.begin_background_music_fade_L80320F9C:
  /* 0x80320F9C */  addiu $a3, $a3, 9752
  /* 0x80320FA0 */  lwc1 $f6, 32($a3)
  /* 0x80320FA4 */  mtc1 $zero, $f4
  /* 0x80320FA8 */  lhu $t6, 34($sp)
  /* 0x80320FAC */  lui $v0, 0x8036
  /* 0x80320FB0 */  c.eq.s $f4, $f6
  /* 0x80320FB4 */  lui $t9, 0x8036
  /* 0x80320FB8 */  lui $t1, 0x8033
  /* 0x80320FBC */  bc1f .begin_background_music_fade_L80320FD4
  /* 0x80320FC0 */  nop
  /* 0x80320FC4 */  beq $t6, $zero, .begin_background_music_fade_L80320FD4
  /* 0x80320FC8 */  nop
  /* 0x80320FCC */  lwc1 $f8, 24($a3)
  /* 0x80320FD0 */  swc1 $f8, 32($a3)
.begin_background_music_fade_L80320FD4:
  /* 0x80320FD4 */  lbu $v0, 19330($v0)
  /* 0x80320FD8 */  beq $v0, $zero, .begin_background_music_fade_L80320FEC
  /* 0x80320FDC */  nop
  /* 0x80320FE0 */  move $a2, $v0
  /* 0x80320FE4 */  andi $t7, $a2, 0x7F
  /* 0x80320FE8 */  move $a2, $t7
.begin_background_music_fade_L80320FEC:
  /* 0x80320FEC */  lui $v0, 0x8033
  /* 0x80320FF0 */  lbu $v0, 12844($v0)
  /* 0x80320FF4 */  beq $v0, $zero, .begin_background_music_fade_L8032100C
  /* 0x80320FF8 */  andi $t8, $v0, 0x7F
  /* 0x80320FFC */  slt $at, $t8, $a2
  /* 0x80321000 */  beq $at, $zero, .begin_background_music_fade_L8032100C
  /* 0x80321004 */  nop
  /* 0x80321008 */  andi $a2, $t8, 0xFF
.begin_background_music_fade_L8032100C:
  /* 0x8032100C */  lbu $t9, 19331($t9)
  /* 0x80321010 */  slti $at, $a2, 41
  /* 0x80321014 */  beq $t9, $zero, .begin_background_music_fade_L80321028
  /* 0x80321018 */  nop
  /* 0x8032101C */  bne $at, $zero, .begin_background_music_fade_L80321028
  /* 0x80321020 */  nop
  /* 0x80321024 */  li $a2, 40
.begin_background_music_fade_L80321028:
  /* 0x80321028 */  lhu $t1, 12832($t1)
  /* 0x8032102C */  slti $at, $a2, 21
  /* 0x80321030 */  beql $t1, $zero, .begin_background_music_fade_L80321048
  /* 0x80321034 */  lw $t2, 0($a3)
  /* 0x80321038 */  bnel $at, $zero, .begin_background_music_fade_L80321048
  /* 0x8032103C */  lw $t2, 0($a3)
  /* 0x80321040 */  li $a2, 20
  /* 0x80321044 */  lw $t2, 0($a3)
.begin_background_music_fade_L80321048:
  /* 0x80321048 */  li $at, 1
  /* 0x8032104C */  srl $t3, $t2, 31
  /* 0x80321050 */  bnel $t3, $at, .begin_background_music_fade_L803210C4
  /* 0x80321054 */  move $v0, $a2
  /* 0x80321058 */  beq $a1, $a2, .begin_background_music_fade_L80321078
  /* 0x8032105C */  lui $t4, 0x8033
  /* 0x80321060 */  move $a0, $zero
  /* 0x80321064 */  lhu $a1, 34($sp)
  /* 0x80321068 */  jal 0x8031E710
  /* 0x8032106C */  sb $a2, 31($sp)
  /* 0x80321070 */  b .begin_background_music_fade_L803210C0
  /* 0x80321074 */  lbu $a2, 31($sp)
.begin_background_music_fade_L80321078:
  /* 0x80321078 */  addu $t4, $t4, $t0
  /* 0x8032107C */  lbu $t4, 12680($t4)
  /* 0x80321080 */  lui $at, 0x4F80
  /* 0x80321084 */  mtc1 $t4, $f10
  /* 0x80321088 */  bgez $t4, .begin_background_music_fade_L8032109C
  /* 0x8032108C */  cvt.s.w $f16, $f10
  /* 0x80321090 */  mtc1 $at, $f18
  /* 0x80321094 */  nop
  /* 0x80321098 */  add.s $f16, $f16, $f18
.begin_background_music_fade_L8032109C:
  /* 0x8032109C */  lui $at, 0x42FE
  /* 0x803210A0 */  mtc1 $at, $f4
  /* 0x803210A4 */  move $a0, $zero
  /* 0x803210A8 */  lhu $a1, 34($sp)
  /* 0x803210AC */  div.s $f6, $f16, $f4
  /* 0x803210B0 */  sb $a2, 31($sp)
  /* 0x803210B4 */  jal 0x8031E6A4
  /* 0x803210B8 */  nop  ; <-- CHANGED
  /* 0x803210BC */  lbu $a2, 31($sp)
.begin_background_music_fade_L803210C0:
  /* 0x803210C0 */  move $v0, $a2
.begin_background_music_fade_L803210C4:
  /* 0x803210C4 */  lw $ra, 20($sp)
  /* 0x803210C8 */  addiu $sp, $sp, 32
  /* 0x803210CC */  jr $ra
  /* 0x803210D0 */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x803210B8:
  ;   was: E4 E6 00 20  swc1 $f6, 32($a3)
  ;   new: 00 00 00 00  nop
