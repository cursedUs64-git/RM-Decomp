; Function: alloc_surface_pools
; RAM: 0x80383340  Size: 0x78

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x80383340 */  addiu $sp, $sp, -24
  /* 0x80383344 */  sw $ra, 20($sp)
  /* 0x80383348 */  li $t6, 2300  ; <-- CHANGED
  /* 0x8038334C */  lui $at, 0x8039
  /* 0x80383350 */  sh $t6, -4448($at)
  /* 0x80383354 */  ori $a0, $zero, 0xDAC0
  /* 0x80383358 */  jal 0x80278120  ; <-- CHANGED
  /* 0x8038335C */  move $a1, $zero  ; <-- CHANGED
  /* 0x80383360 */  lui $at, 0x8039
  /* 0x80383364 */  sw $v0, -4456($at)
  /* 0x80383368 */  lui $a0, 0x8039
  /* 0x8038336C */  lh $a0, -4448($a0)
  /* 0x80383370 */  move $a1, $zero
  /* 0x80383374 */  sll $t7, $a0, 2
  /* 0x80383378 */  subu $t7, $t7, $a0
  /* 0x8038337C */  sll $t7, $t7, 4
  /* 0x80383380 */  jal 0x80278120  ; <-- CHANGED
  /* 0x80383384 */  move $a0, $t7  ; <-- CHANGED
  /* 0x80383388 */  lui $at, 0x8039
  /* 0x8038338C */  sw $v0, -4452($at)
  /* 0x80383390 */  lui $at, 0x8036
  /* 0x80383394 */  sh $zero, 4700($at)
  /* 0x80383398 */  jal 0x802DB350
  /* 0x8038339C */  nop
  /* 0x803833A0 */  b .alloc_surface_pools_L803833A8
  /* 0x803833A4 */  nop
.alloc_surface_pools_L803833A8:
  /* 0x803833A8 */  lw $ra, 20($sp)
  /* 0x803833AC */  addiu $sp, $sp, 24
  /* 0x803833B0 */  jr $ra
  /* 0x803833B4 */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x80383340 */  addiu $sp, $sp, -24
  /* 0x80383344 */  sw $ra, 20($sp)
  /* 0x80383348 */  li $t6, 32767  ; <-- CHANGED
  /* 0x8038334C */  lui $at, 0x8039
  /* 0x80383350 */  sh $t6, -4448($at)
  /* 0x80383354 */  ori $a0, $zero, 0xDAC0
  /* 0x80383358 */  lui $v0, 0x8075  ; <-- CHANGED
  /* 0x8038335C */  nop  ; <-- CHANGED
  /* 0x80383360 */  lui $at, 0x8039
  /* 0x80383364 */  sw $v0, -4456($at)
  /* 0x80383368 */  lui $a0, 0x8039
  /* 0x8038336C */  lh $a0, -4448($a0)
  /* 0x80383370 */  move $a1, $zero
  /* 0x80383374 */  sll $t7, $a0, 2
  /* 0x80383378 */  subu $t7, $t7, $a0
  /* 0x8038337C */  sll $t7, $t7, 4
  /* 0x80383380 */  lui $v0, 0x8066  ; <-- CHANGED
  /* 0x80383384 */  ori $v0, $v0, 0x0  ; <-- CHANGED
  /* 0x80383388 */  lui $at, 0x8039
  /* 0x8038338C */  sw $v0, -4452($at)
  /* 0x80383390 */  lui $at, 0x8036
  /* 0x80383394 */  sh $zero, 4700($at)
  /* 0x80383398 */  jal 0x802DB350
  /* 0x8038339C */  nop
  /* 0x803833A0 */  b .alloc_surface_pools_L803833A8
  /* 0x803833A4 */  nop
.alloc_surface_pools_L803833A8:
  /* 0x803833A8 */  lw $ra, 20($sp)
  /* 0x803833AC */  addiu $sp, $sp, 24
  /* 0x803833B0 */  jr $ra
  /* 0x803833B4 */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x80383348:
  ;   was: 24 0E 08 FC  li $t6, 2300
  ;   new: 24 0E 7F FF  li $t6, 32767
  ; 0x80383358:
  ;   was: 0C 09 E0 48  jal 0x80278120
  ;   new: 3C 02 80 75  lui $v0, 0x8075
  ; 0x8038335C:
  ;   was: 00 00 28 25  move $a1, $zero
  ;   new: 00 00 00 00  nop
  ; 0x80383380:
  ;   was: 0C 09 E0 48  jal 0x80278120
  ;   new: 3C 02 80 66  lui $v0, 0x8066
  ; 0x80383384:
  ;   was: 01 E0 20 25  move $a0, $t7
  ;   new: 34 42 00 00  ori $v0, $v0, 0x0
