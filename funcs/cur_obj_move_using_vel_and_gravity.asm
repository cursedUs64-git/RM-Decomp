; Function: cur_obj_move_using_vel_and_gravity
; RAM: 0x802A25B4  Size: 0x90

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x802A25B4 */  addiu $sp, $sp, -24
  /* 0x802A25B8 */  sw $ra, 20($sp)
  /* 0x802A25BC */  jal 0x802A24D0
  /* 0x802A25C0 */  nop
  /* 0x802A25C4 */  beq $v0, $zero, .cur_obj_move_using_vel_and_gravity_L802A262C  ; <-- CHANGED
  /* 0x802A25C8 */  nop
  /* 0x802A25CC */  lui $t6, 0x8036
  /* 0x802A25D0 */  lw $t6, 4448($t6)
  /* 0x802A25D4 */  lwc1 $f4, 160($t6)
  /* 0x802A25D8 */  lwc1 $f6, 172($t6)
  /* 0x802A25DC */  add.s $f8, $f4, $f6
  /* 0x802A25E0 */  swc1 $f8, 160($t6)
  /* 0x802A25E4 */  lui $t7, 0x8036
  /* 0x802A25E8 */  lw $t7, 4448($t7)
  /* 0x802A25EC */  lwc1 $f10, 168($t7)
  /* 0x802A25F0 */  lwc1 $f16, 180($t7)
  /* 0x802A25F4 */  add.s $f18, $f10, $f16
  /* 0x802A25F8 */  swc1 $f18, 168($t7)
  /* 0x802A25FC */  lui $t8, 0x8036
  /* 0x802A2600 */  lw $t8, 4448($t8)
  /* 0x802A2604 */  lwc1 $f4, 176($t8)
  /* 0x802A2608 */  lwc1 $f6, 228($t8)
  /* 0x802A260C */  add.s $f8, $f4, $f6
  /* 0x802A2610 */  swc1 $f8, 176($t8)
  /* 0x802A2614 */  lui $t9, 0x8036
  /* 0x802A2618 */  lw $t9, 4448($t9)
  /* 0x802A261C */  lwc1 $f10, 164($t9)
  /* 0x802A2620 */  lwc1 $f16, 176($t9)
  /* 0x802A2624 */  add.s $f18, $f10, $f16
  /* 0x802A2628 */  swc1 $f18, 164($t9)
.cur_obj_move_using_vel_and_gravity_L802A262C:
  /* 0x802A262C */  b .cur_obj_move_using_vel_and_gravity_L802A2634
  /* 0x802A2630 */  nop
.cur_obj_move_using_vel_and_gravity_L802A2634:
  /* 0x802A2634 */  lw $ra, 20($sp)
  /* 0x802A2638 */  addiu $sp, $sp, 24
  /* 0x802A263C */  jr $ra
  /* 0x802A2640 */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x802A25B4 */  addiu $sp, $sp, -24
  /* 0x802A25B8 */  sw $ra, 20($sp)
  /* 0x802A25BC */  jal 0x802A24D0
  /* 0x802A25C0 */  nop
  /* 0x802A25C4 */  nop  ; <-- CHANGED
  /* 0x802A25C8 */  nop
  /* 0x802A25CC */  lui $t6, 0x8036
  /* 0x802A25D0 */  lw $t6, 4448($t6)
  /* 0x802A25D4 */  lwc1 $f4, 160($t6)
  /* 0x802A25D8 */  lwc1 $f6, 172($t6)
  /* 0x802A25DC */  add.s $f8, $f4, $f6
  /* 0x802A25E0 */  swc1 $f8, 160($t6)
  /* 0x802A25E4 */  lui $t7, 0x8036
  /* 0x802A25E8 */  lw $t7, 4448($t7)
  /* 0x802A25EC */  lwc1 $f10, 168($t7)
  /* 0x802A25F0 */  lwc1 $f16, 180($t7)
  /* 0x802A25F4 */  add.s $f18, $f10, $f16
  /* 0x802A25F8 */  swc1 $f18, 168($t7)
  /* 0x802A25FC */  lui $t8, 0x8036
  /* 0x802A2600 */  lw $t8, 4448($t8)
  /* 0x802A2604 */  lwc1 $f4, 176($t8)
  /* 0x802A2608 */  lwc1 $f6, 228($t8)
  /* 0x802A260C */  add.s $f8, $f4, $f6
  /* 0x802A2610 */  swc1 $f8, 176($t8)
  /* 0x802A2614 */  lui $t9, 0x8036
  /* 0x802A2618 */  lw $t9, 4448($t9)
  /* 0x802A261C */  lwc1 $f10, 164($t9)
  /* 0x802A2620 */  lwc1 $f16, 176($t9)
  /* 0x802A2624 */  add.s $f18, $f10, $f16
  /* 0x802A2628 */  swc1 $f18, 164($t9)
  /* 0x802A262C */  b .cur_obj_move_using_vel_and_gravity_L802A2634
  /* 0x802A2630 */  nop
.cur_obj_move_using_vel_and_gravity_L802A2634:
  /* 0x802A2634 */  lw $ra, 20($sp)
  /* 0x802A2638 */  addiu $sp, $sp, 24
  /* 0x802A263C */  jr $ra
  /* 0x802A2640 */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x802A25C4:
  ;   was: 10 40 00 19  beq $v0, $zero, .cur_obj_move_using_vel_and_gravity_L802A262C
  ;   new: 00 00 00 00  nop
