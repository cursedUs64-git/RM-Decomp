; Function: find_floor_height_and_data
; RAM: 0x803814B8  Size: 0xB4

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x803814B8 */  addiu $sp, $sp, -32
  /* 0x803814BC */  sw $ra, 20($sp)
  /* 0x803814C0 */  sw $a2, 40($sp)
  /* 0x803814C4 */  sw $a3, 44($sp)
  /* 0x803814C8 */  swc1 $f12, 32($sp)
  /* 0x803814CC */  swc1 $f14, 36($sp)
  /* 0x803814D0 */  lwc1 $f12, 32($sp)
  /* 0x803814D4 */  lwc1 $f14, 36($sp)
  /* 0x803814D8 */  lw $a2, 40($sp)
  /* 0x803814DC */  jal 0x80381900
  /* 0x803814E0 */  addiu $a3, $sp, 28
  /* 0x803814E4 */  swc1 $f0, 24($sp)
  /* 0x803814E8 */  lw $t6, 44($sp)
  /* 0x803814EC */  sw $zero, 0($t6)
  /* 0x803814F0 */  lw $t7, 28($sp)
  /* 0x803814F4 */  beq $t7, $zero, .find_floor_height_and_data_L8038154C  ; <-- CHANGED
  /* 0x803814F8 */  nop  ; <-- CHANGED
  /* 0x803814FC */  lw $t8, 28($sp)
  /* 0x80381500 */  lui $at, 0x8039  ; <-- CHANGED
  /* 0x80381504 */  lwc1 $f4, 28($t8)  ; <-- CHANGED
  /* 0x80381508 */  swc1 $f4, -16832($at)
  /* 0x8038150C */  lw $t9, 28($sp)
  /* 0x80381510 */  lui $at, 0x8039  ; <-- CHANGED
  /* 0x80381514 */  lwc1 $f6, 32($t9)  ; <-- CHANGED
  /* 0x80381518 */  swc1 $f6, -16828($at)
  /* 0x8038151C */  lw $t0, 28($sp)
  /* 0x80381520 */  lui $at, 0x8039  ; <-- CHANGED
  /* 0x80381524 */  lwc1 $f8, 36($t0)  ; <-- CHANGED
  /* 0x80381528 */  swc1 $f8, -16824($at)
  /* 0x8038152C */  lw $t1, 28($sp)
  /* 0x80381530 */  lui $at, 0x8039  ; <-- CHANGED
  /* 0x80381534 */  lwc1 $f10, 40($t1)  ; <-- CHANGED
  /* 0x80381538 */  swc1 $f10, -16820($at)  ; <-- CHANGED
  /* 0x8038153C */  lw $t3, 44($sp)  ; <-- CHANGED
  /* 0x80381540 */  lui $t2, 0x8039  ; <-- CHANGED
  /* 0x80381544 */  addiu $t2, $t2, -16848  ; <-- CHANGED
  /* 0x80381548 */  sw $t2, 0($t3)  ; <-- CHANGED
.find_floor_height_and_data_L8038154C:
  /* 0x8038154C */  b .find_floor_height_and_data_L8038155C  ; <-- CHANGED
  /* 0x80381550 */  lwc1 $f0, 24($sp)  ; <-- CHANGED
  /* 0x80381554 */  b .find_floor_height_and_data_L8038155C  ; <-- CHANGED
  /* 0x80381558 */  nop  ; <-- CHANGED
.find_floor_height_and_data_L8038155C:
  /* 0x8038155C */  lw $ra, 20($sp)
  /* 0x80381560 */  addiu $sp, $sp, 32
  /* 0x80381564 */  jr $ra
  /* 0x80381568 */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x803814B8 */  addiu $sp, $sp, -32
  /* 0x803814BC */  sw $ra, 20($sp)
  /* 0x803814C0 */  sw $a2, 40($sp)
  /* 0x803814C4 */  sw $a3, 44($sp)
  /* 0x803814C8 */  swc1 $f12, 32($sp)
  /* 0x803814CC */  swc1 $f14, 36($sp)
  /* 0x803814D0 */  lwc1 $f12, 32($sp)
  /* 0x803814D4 */  lwc1 $f14, 36($sp)
  /* 0x803814D8 */  lw $a2, 40($sp)
  /* 0x803814DC */  jal 0x80381900
  /* 0x803814E0 */  addiu $a3, $sp, 28
  /* 0x803814E4 */  swc1 $f0, 24($sp)
  /* 0x803814E8 */  lw $t6, 44($sp)
  /* 0x803814EC */  sw $zero, 0($t6)
  /* 0x803814F0 */  lw $t7, 28($sp)
  /* 0x803814F4 */  beq $zero, $t7, .find_floor_height_and_data_L80381558  ; <-- CHANGED
  /* 0x803814F8 */  lui $at, 0x8039  ; <-- CHANGED
  /* 0x803814FC */  lw $t8, 28($sp)
  /* 0x80381500 */  lwc1 $f4, 28($t8)  ; <-- CHANGED
  /* 0x80381504 */  nop  ; <-- CHANGED
  /* 0x80381508 */  swc1 $f4, -16832($at)
  /* 0x8038150C */  lw $t9, 28($sp)
  /* 0x80381510 */  lwc1 $f6, 32($t9)  ; <-- CHANGED
  /* 0x80381514 */  nop  ; <-- CHANGED
  /* 0x80381518 */  swc1 $f6, -16828($at)
  /* 0x8038151C */  lw $t0, 28($sp)
  /* 0x80381520 */  lwc1 $f8, 36($t0)  ; <-- CHANGED
  /* 0x80381524 */  nop  ; <-- CHANGED
  /* 0x80381528 */  swc1 $f8, -16824($at)
  /* 0x8038152C */  lw $t1, 28($sp)
  /* 0x80381530 */  lwc1 $f10, 40($t1)  ; <-- CHANGED
  /* 0x80381534 */  add.s $f10, $f10, $f10  ; <-- CHANGED
  /* 0x80381538 */  add.s $f10, $f10, $f10  ; <-- CHANGED
  /* 0x8038153C */  nop  ; <-- CHANGED
  /* 0x80381540 */  swc1 $f10, -16820($at)  ; <-- CHANGED
  /* 0x80381544 */  lw $t3, 44($sp)  ; <-- CHANGED
  /* 0x80381548 */  lui $t2, 0x8039  ; <-- CHANGED
  /* 0x8038154C */  addiu $t2, $t2, -16848  ; <-- CHANGED
  /* 0x80381550 */  sw $t2, 0($t3)  ; <-- CHANGED
  /* 0x80381554 */  nop  ; <-- CHANGED
.find_floor_height_and_data_L80381558:
  /* 0x80381558 */  lwc1 $f0, 24($sp)  ; <-- CHANGED
  /* 0x8038155C */  lw $ra, 20($sp)
  /* 0x80381560 */  addiu $sp, $sp, 32
  /* 0x80381564 */  jr $ra
  /* 0x80381568 */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x803814F4:
  ;   was: 11 E0 00 15  beq $t7, $zero, .find_floor_height_and_data_L8038154C
  ;   new: 10 0F 00 18  beq $zero, $t7, .find_floor_height_and_data_L80381558
  ; 0x803814F8:
  ;   was: 00 00 00 00  nop
  ;   new: 3C 01 80 39  lui $at, 0x8039
  ; 0x80381500:
  ;   was: 3C 01 80 39  lui $at, 0x8039
  ;   new: C7 04 00 1C  lwc1 $f4, 28($t8)
  ; 0x80381504:
  ;   was: C7 04 00 1C  lwc1 $f4, 28($t8)
  ;   new: 00 00 00 00  nop
  ; 0x80381510:
  ;   was: 3C 01 80 39  lui $at, 0x8039
  ;   new: C7 26 00 20  lwc1 $f6, 32($t9)
  ; 0x80381514:
  ;   was: C7 26 00 20  lwc1 $f6, 32($t9)
  ;   new: 00 00 00 00  nop
  ; 0x80381520:
  ;   was: 3C 01 80 39  lui $at, 0x8039
  ;   new: C5 08 00 24  lwc1 $f8, 36($t0)
  ; 0x80381524:
  ;   was: C5 08 00 24  lwc1 $f8, 36($t0)
  ;   new: 00 00 00 00  nop
  ; 0x80381530:
  ;   was: 3C 01 80 39  lui $at, 0x8039
  ;   new: C5 2A 00 28  lwc1 $f10, 40($t1)
  ; 0x80381534:
  ;   was: C5 2A 00 28  lwc1 $f10, 40($t1)
  ;   new: 46 0A 52 80  add.s $f10, $f10, $f10
  ; 0x80381538:
  ;   was: E4 2A BE 4C  swc1 $f10, -16820($at)
  ;   new: 46 0A 52 80  add.s $f10, $f10, $f10
  ; 0x8038153C:
  ;   was: 8F AB 00 2C  lw $t3, 44($sp)
  ;   new: 00 00 00 00  nop
  ; 0x80381540:
  ;   was: 3C 0A 80 39  lui $t2, 0x8039
  ;   new: E4 2A BE 4C  swc1 $f10, -16820($at)
  ; 0x80381544:
  ;   was: 25 4A BE 30  addiu $t2, $t2, -16848
  ;   new: 8F AB 00 2C  lw $t3, 44($sp)
  ; 0x80381548:
  ;   was: AD 6A 00 00  sw $t2, 0($t3)
  ;   new: 3C 0A 80 39  lui $t2, 0x8039
  ; 0x8038154C:
  ;   was: 10 00 00 03  b .find_floor_height_and_data_L8038155C
  ;   new: 25 4A BE 30  addiu $t2, $t2, -16848
  ; 0x80381550:
  ;   was: C7 A0 00 18  lwc1 $f0, 24($sp)
  ;   new: AD 6A 00 00  sw $t2, 0($t3)
  ; 0x80381554:
  ;   was: 10 00 00 01  b .find_floor_height_and_data_L8038155C
  ;   new: 00 00 00 00  nop
  ; 0x80381558:
  ;   was: 00 00 00 00  nop
  ;   new: C7 A0 00 18  lwc1 $f0, 24($sp)
