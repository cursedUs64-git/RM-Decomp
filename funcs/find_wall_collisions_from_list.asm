; Function: find_wall_collisions_from_list
; RAM: 0x80380690  Size: 0x758

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x80380690 */  addiu $sp, $sp, -64
  /* 0x80380694 */  lwc1 $f14, 16($a1)
  /* 0x80380698 */  lwc1 $f16, 0($a1)
  /* 0x8038069C */  lwc1 $f4, 4($a1)
  /* 0x803806A0 */  lwc1 $f6, 12($a1)
  /* 0x803806A4 */  add.s $f18, $f4, $f6  ; <-- CHANGED
  /* 0x803806A8 */  lwc1 $f8, 8($a1)  ; <-- CHANGED
  /* 0x803806AC */  swc1 $f8, 40($sp)  ; <-- CHANGED
  /* 0x803806B0 */  sw $zero, 4($sp)  ; <-- CHANGED
  /* 0x803806B4 */  lui $at, 0x4348  ; <-- CHANGED
  /* 0x803806B8 */  mtc1 $at, $f10  ; <-- CHANGED
  /* 0x803806BC */  nop  ; <-- CHANGED
  /* 0x803806C0 */  c.lt.s $f10, $f14  ; <-- CHANGED
  /* 0x803806C4 */  nop  ; <-- CHANGED
  /* 0x803806C8 */  bc1f .find_wall_collisions_from_list_L803806DC  ; <-- CHANGED
  /* 0x803806CC */  nop  ; <-- CHANGED
  /* 0x803806D0 */  lui $at, 0x4348  ; <-- CHANGED
  /* 0x803806D4 */  mtc1 $at, $f14  ; <-- CHANGED
  /* 0x803806D8 */  nop  ; <-- CHANGED
.find_wall_collisions_from_list_L803806DC:
  /* 0x803806DC */  beq $a0, $zero, .find_wall_collisions_from_list_L80380DD0  ; <-- CHANGED
  /* 0x803806E0 */  nop  ; <-- CHANGED
.find_wall_collisions_from_list_L803806E4:
  /* 0x803806E4 */  lw $a2, 4($a0)  ; <-- CHANGED
  /* 0x803806E8 */  lw $a0, 0($a0)  ; <-- CHANGED
  /* 0x803806EC */  lh $t6, 6($a2)  ; <-- CHANGED
  /* 0x803806F0 */  mtc1 $t6, $f4  ; <-- CHANGED
  /* 0x803806F4 */  nop  ; <-- CHANGED
  /* 0x803806F8 */  cvt.s.w $f6, $f4  ; <-- CHANGED
  /* 0x803806FC */  c.lt.s $f18, $f6  ; <-- CHANGED
  /* 0x80380700 */  nop  ; <-- CHANGED
  /* 0x80380704 */  bc1t .find_wall_collisions_from_list_L8038072C
  /* 0x80380708 */  nop
  /* 0x8038070C */  lh $t7, 8($a2)
  /* 0x80380710 */  mtc1 $t7, $f8
  /* 0x80380714 */  nop
  /* 0x80380718 */  cvt.s.w $f10, $f8
  /* 0x8038071C */  c.lt.s $f10, $f18
  /* 0x80380720 */  nop
  /* 0x80380724 */  bc1f .find_wall_collisions_from_list_L80380734
  /* 0x80380728 */  nop
.find_wall_collisions_from_list_L8038072C:
  /* 0x8038072C */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380730 */  nop
.find_wall_collisions_from_list_L80380734:
  /* 0x80380734 */  lwc1 $f4, 28($a2)
  /* 0x80380738 */  lwc1 $f8, 32($a2)
  /* 0x8038073C */  mul.s $f6, $f4, $f16
  /* 0x80380740 */  nop
  /* 0x80380744 */  mul.s $f10, $f8, $f18
  /* 0x80380748 */  lwc1 $f8, 36($a2)
  /* 0x8038074C */  add.s $f4, $f6, $f10
  /* 0x80380750 */  lwc1 $f6, 40($sp)
  /* 0x80380754 */  mul.s $f10, $f8, $f6
  /* 0x80380758 */  lwc1 $f6, 40($a2)
  /* 0x8038075C */  add.s $f8, $f4, $f10
  /* 0x80380760 */  add.s $f12, $f8, $f6
  /* 0x80380764 */  neg.s $f4, $f14
  /* 0x80380768 */  c.lt.s $f12, $f4
  /* 0x8038076C */  nop
  /* 0x80380770 */  bc1t .find_wall_collisions_from_list_L80380788
  /* 0x80380774 */  nop
  /* 0x80380778 */  c.lt.s $f14, $f12
  /* 0x8038077C */  nop
  /* 0x80380780 */  bc1f .find_wall_collisions_from_list_L80380790
  /* 0x80380784 */  nop
.find_wall_collisions_from_list_L80380788:
  /* 0x80380788 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x8038078C */  nop
.find_wall_collisions_from_list_L80380790:
  /* 0x80380790 */  swc1 $f16, 36($sp)
  /* 0x80380794 */  lwc1 $f10, 40($sp)
  /* 0x80380798 */  swc1 $f10, 32($sp)
  /* 0x8038079C */  lb $t8, 4($a2)
  /* 0x803807A0 */  andi $t9, $t8, 0x8
  /* 0x803807A4 */  beq $t9, $zero, .find_wall_collisions_from_list_L80380A3C
  /* 0x803807A8 */  nop
  /* 0x803807AC */  lh $t0, 14($a2)
  /* 0x803807B0 */  subu $t1, $zero, $t0
  /* 0x803807B4 */  mtc1 $t1, $f8
  /* 0x803807B8 */  nop
  /* 0x803807BC */  cvt.s.w $f6, $f8
  /* 0x803807C0 */  swc1 $f6, 28($sp)
  /* 0x803807C4 */  lh $t2, 20($a2)
  /* 0x803807C8 */  subu $t3, $zero, $t2
  /* 0x803807CC */  mtc1 $t3, $f4
  /* 0x803807D0 */  nop
  /* 0x803807D4 */  cvt.s.w $f10, $f4
  /* 0x803807D8 */  swc1 $f10, 24($sp)
  /* 0x803807DC */  lh $t4, 26($a2)
  /* 0x803807E0 */  subu $t5, $zero, $t4
  /* 0x803807E4 */  mtc1 $t5, $f8
  /* 0x803807E8 */  nop
  /* 0x803807EC */  cvt.s.w $f6, $f8
  /* 0x803807F0 */  swc1 $f6, 20($sp)
  /* 0x803807F4 */  lh $t6, 12($a2)
  /* 0x803807F8 */  mtc1 $t6, $f4
  /* 0x803807FC */  nop
  /* 0x80380800 */  cvt.s.w $f10, $f4
  /* 0x80380804 */  swc1 $f10, 16($sp)
  /* 0x80380808 */  lh $t7, 18($a2)
  /* 0x8038080C */  mtc1 $t7, $f8
  /* 0x80380810 */  nop
  /* 0x80380814 */  cvt.s.w $f6, $f8
  /* 0x80380818 */  swc1 $f6, 12($sp)
  /* 0x8038081C */  lh $t8, 24($a2)
  /* 0x80380820 */  mtc1 $t8, $f4
  /* 0x80380824 */  nop
  /* 0x80380828 */  cvt.s.w $f10, $f4
  /* 0x8038082C */  swc1 $f10, 8($sp)
  /* 0x80380830 */  lwc1 $f8, 28($a2)
  /* 0x80380834 */  mtc1 $zero, $f6
  /* 0x80380838 */  nop
  /* 0x8038083C */  c.lt.s $f6, $f8
  /* 0x80380840 */  nop
  /* 0x80380844 */  bc1f .find_wall_collisions_from_list_L80380944
  /* 0x80380848 */  nop
  /* 0x8038084C */  lwc1 $f10, 32($sp)
  /* 0x80380850 */  lwc1 $f4, 28($sp)
  /* 0x80380854 */  neg.s $f8, $f10
  /* 0x80380858 */  lwc1 $f10, 12($sp)
  /* 0x8038085C */  sub.s $f6, $f4, $f8
  /* 0x80380860 */  lwc1 $f8, 16($sp)
  /* 0x80380864 */  sub.s $f10, $f10, $f8
  /* 0x80380868 */  mul.s $f6, $f6, $f10
  /* 0x8038086C */  lwc1 $f10, 24($sp)
  /* 0x80380870 */  sub.s $f10, $f10, $f4
  /* 0x80380874 */  sub.s $f4, $f8, $f18
  /* 0x80380878 */  mul.s $f8, $f4, $f10
  /* 0x8038087C */  mtc1 $zero, $f10
  /* 0x80380880 */  sub.s $f4, $f8, $f6
  /* 0x80380884 */  c.lt.s $f10, $f4
  /* 0x80380888 */  nop
  /* 0x8038088C */  bc1f .find_wall_collisions_from_list_L8038089C
  /* 0x80380890 */  nop
  /* 0x80380894 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380898 */  nop
.find_wall_collisions_from_list_L8038089C:
  /* 0x8038089C */  lwc1 $f6, 32($sp)
  /* 0x803808A0 */  lwc1 $f8, 24($sp)
  /* 0x803808A4 */  neg.s $f4, $f6
  /* 0x803808A8 */  lwc1 $f6, 8($sp)
  /* 0x803808AC */  sub.s $f10, $f8, $f4
  /* 0x803808B0 */  lwc1 $f4, 12($sp)
  /* 0x803808B4 */  sub.s $f6, $f6, $f4
  /* 0x803808B8 */  mul.s $f10, $f10, $f6
  /* 0x803808BC */  lwc1 $f6, 20($sp)
  /* 0x803808C0 */  sub.s $f6, $f6, $f8
  /* 0x803808C4 */  sub.s $f8, $f4, $f18
  /* 0x803808C8 */  mul.s $f4, $f8, $f6
  /* 0x803808CC */  mtc1 $zero, $f6
  /* 0x803808D0 */  sub.s $f8, $f4, $f10
  /* 0x803808D4 */  c.lt.s $f6, $f8
  /* 0x803808D8 */  nop
  /* 0x803808DC */  bc1f .find_wall_collisions_from_list_L803808EC
  /* 0x803808E0 */  nop
  /* 0x803808E4 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x803808E8 */  nop
.find_wall_collisions_from_list_L803808EC:
  /* 0x803808EC */  lwc1 $f10, 32($sp)
  /* 0x803808F0 */  lwc1 $f4, 20($sp)
  /* 0x803808F4 */  neg.s $f8, $f10
  /* 0x803808F8 */  lwc1 $f10, 16($sp)
  /* 0x803808FC */  sub.s $f6, $f4, $f8
  /* 0x80380900 */  lwc1 $f8, 8($sp)
  /* 0x80380904 */  sub.s $f10, $f10, $f8
  /* 0x80380908 */  mul.s $f6, $f6, $f10
  /* 0x8038090C */  lwc1 $f10, 28($sp)
  /* 0x80380910 */  sub.s $f10, $f10, $f4
  /* 0x80380914 */  sub.s $f4, $f8, $f18
  /* 0x80380918 */  mul.s $f8, $f4, $f10
  /* 0x8038091C */  mtc1 $zero, $f10
  /* 0x80380920 */  sub.s $f4, $f8, $f6
  /* 0x80380924 */  c.lt.s $f10, $f4
  /* 0x80380928 */  nop
  /* 0x8038092C */  bc1f .find_wall_collisions_from_list_L8038093C
  /* 0x80380930 */  nop
  /* 0x80380934 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380938 */  nop
.find_wall_collisions_from_list_L8038093C:
  /* 0x8038093C */  b .find_wall_collisions_from_list_L80380A34
  /* 0x80380940 */  nop
.find_wall_collisions_from_list_L80380944:
  /* 0x80380944 */  lwc1 $f6, 32($sp)
  /* 0x80380948 */  lwc1 $f8, 28($sp)
  /* 0x8038094C */  neg.s $f4, $f6
  /* 0x80380950 */  lwc1 $f6, 12($sp)
  /* 0x80380954 */  sub.s $f10, $f8, $f4
  /* 0x80380958 */  lwc1 $f4, 16($sp)
  /* 0x8038095C */  sub.s $f6, $f6, $f4
  /* 0x80380960 */  mul.s $f10, $f10, $f6
  /* 0x80380964 */  lwc1 $f6, 24($sp)
  /* 0x80380968 */  sub.s $f6, $f6, $f8
  /* 0x8038096C */  sub.s $f8, $f4, $f18
  /* 0x80380970 */  mul.s $f4, $f8, $f6
  /* 0x80380974 */  mtc1 $zero, $f6
  /* 0x80380978 */  sub.s $f8, $f4, $f10
  /* 0x8038097C */  c.lt.s $f8, $f6
  /* 0x80380980 */  nop
  /* 0x80380984 */  bc1f .find_wall_collisions_from_list_L80380994
  /* 0x80380988 */  nop
  /* 0x8038098C */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380990 */  nop
.find_wall_collisions_from_list_L80380994:
  /* 0x80380994 */  lwc1 $f10, 32($sp)
  /* 0x80380998 */  lwc1 $f4, 24($sp)
  /* 0x8038099C */  neg.s $f8, $f10
  /* 0x803809A0 */  lwc1 $f10, 8($sp)
  /* 0x803809A4 */  sub.s $f6, $f4, $f8
  /* 0x803809A8 */  lwc1 $f8, 12($sp)
  /* 0x803809AC */  sub.s $f10, $f10, $f8
  /* 0x803809B0 */  mul.s $f6, $f6, $f10
  /* 0x803809B4 */  lwc1 $f10, 20($sp)
  /* 0x803809B8 */  sub.s $f10, $f10, $f4
  /* 0x803809BC */  sub.s $f4, $f8, $f18
  /* 0x803809C0 */  mul.s $f8, $f4, $f10
  /* 0x803809C4 */  mtc1 $zero, $f10
  /* 0x803809C8 */  sub.s $f4, $f8, $f6
  /* 0x803809CC */  c.lt.s $f4, $f10
  /* 0x803809D0 */  nop
  /* 0x803809D4 */  bc1f .find_wall_collisions_from_list_L803809E4
  /* 0x803809D8 */  nop
  /* 0x803809DC */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x803809E0 */  nop
.find_wall_collisions_from_list_L803809E4:
  /* 0x803809E4 */  lwc1 $f6, 32($sp)
  /* 0x803809E8 */  lwc1 $f8, 20($sp)
  /* 0x803809EC */  neg.s $f4, $f6
  /* 0x803809F0 */  lwc1 $f6, 16($sp)
  /* 0x803809F4 */  sub.s $f10, $f8, $f4
  /* 0x803809F8 */  lwc1 $f4, 8($sp)
  /* 0x803809FC */  sub.s $f6, $f6, $f4
  /* 0x80380A00 */  mul.s $f10, $f10, $f6
  /* 0x80380A04 */  lwc1 $f6, 28($sp)
  /* 0x80380A08 */  sub.s $f6, $f6, $f8
  /* 0x80380A0C */  sub.s $f8, $f4, $f18
  /* 0x80380A10 */  mul.s $f4, $f8, $f6
  /* 0x80380A14 */  mtc1 $zero, $f6
  /* 0x80380A18 */  sub.s $f8, $f4, $f10
  /* 0x80380A1C */  c.lt.s $f8, $f6
  /* 0x80380A20 */  nop
  /* 0x80380A24 */  bc1f .find_wall_collisions_from_list_L80380A34
  /* 0x80380A28 */  nop
  /* 0x80380A2C */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380A30 */  nop
.find_wall_collisions_from_list_L80380A34:
  /* 0x80380A34 */  b .find_wall_collisions_from_list_L80380CA0
  /* 0x80380A38 */  nop
.find_wall_collisions_from_list_L80380A3C:
  /* 0x80380A3C */  lh $t9, 10($a2)
  /* 0x80380A40 */  mtc1 $t9, $f4
  /* 0x80380A44 */  nop
  /* 0x80380A48 */  cvt.s.w $f10, $f4
  /* 0x80380A4C */  swc1 $f10, 28($sp)
  /* 0x80380A50 */  lh $t0, 16($a2)
  /* 0x80380A54 */  mtc1 $t0, $f8
  /* 0x80380A58 */  nop
  /* 0x80380A5C */  cvt.s.w $f6, $f8
  /* 0x80380A60 */  swc1 $f6, 24($sp)
  /* 0x80380A64 */  lh $t1, 22($a2)
  /* 0x80380A68 */  mtc1 $t1, $f4
  /* 0x80380A6C */  nop
  /* 0x80380A70 */  cvt.s.w $f10, $f4
  /* 0x80380A74 */  swc1 $f10, 20($sp)
  /* 0x80380A78 */  lh $t2, 12($a2)
  /* 0x80380A7C */  mtc1 $t2, $f8
  /* 0x80380A80 */  nop
  /* 0x80380A84 */  cvt.s.w $f6, $f8
  /* 0x80380A88 */  swc1 $f6, 16($sp)
  /* 0x80380A8C */  lh $t3, 18($a2)
  /* 0x80380A90 */  mtc1 $t3, $f4
  /* 0x80380A94 */  nop
  /* 0x80380A98 */  cvt.s.w $f10, $f4
  /* 0x80380A9C */  swc1 $f10, 12($sp)
  /* 0x80380AA0 */  lh $t4, 24($a2)
  /* 0x80380AA4 */  mtc1 $t4, $f8
  /* 0x80380AA8 */  nop
  /* 0x80380AAC */  cvt.s.w $f6, $f8
  /* 0x80380AB0 */  swc1 $f6, 8($sp)
  /* 0x80380AB4 */  lwc1 $f4, 36($a2)
  /* 0x80380AB8 */  mtc1 $zero, $f10
  /* 0x80380ABC */  nop
  /* 0x80380AC0 */  c.lt.s $f10, $f4
  /* 0x80380AC4 */  nop
  /* 0x80380AC8 */  bc1f .find_wall_collisions_from_list_L80380BBC
  /* 0x80380ACC */  nop
  /* 0x80380AD0 */  lwc1 $f8, 28($sp)
  /* 0x80380AD4 */  lwc1 $f6, 36($sp)
  /* 0x80380AD8 */  lwc1 $f10, 12($sp)
  /* 0x80380ADC */  sub.s $f4, $f8, $f6
  /* 0x80380AE0 */  lwc1 $f6, 16($sp)
  /* 0x80380AE4 */  sub.s $f10, $f10, $f6
  /* 0x80380AE8 */  mul.s $f4, $f4, $f10
  /* 0x80380AEC */  lwc1 $f10, 24($sp)
  /* 0x80380AF0 */  sub.s $f10, $f10, $f8
  /* 0x80380AF4 */  sub.s $f8, $f6, $f18
  /* 0x80380AF8 */  mul.s $f6, $f8, $f10
  /* 0x80380AFC */  mtc1 $zero, $f10
  /* 0x80380B00 */  sub.s $f8, $f6, $f4
  /* 0x80380B04 */  c.lt.s $f10, $f8
  /* 0x80380B08 */  nop
  /* 0x80380B0C */  bc1f .find_wall_collisions_from_list_L80380B1C
  /* 0x80380B10 */  nop
  /* 0x80380B14 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380B18 */  nop
.find_wall_collisions_from_list_L80380B1C:
  /* 0x80380B1C */  lwc1 $f6, 24($sp)
  /* 0x80380B20 */  lwc1 $f4, 36($sp)
  /* 0x80380B24 */  lwc1 $f10, 8($sp)
  /* 0x80380B28 */  sub.s $f8, $f6, $f4
  /* 0x80380B2C */  lwc1 $f4, 12($sp)
  /* 0x80380B30 */  sub.s $f10, $f10, $f4
  /* 0x80380B34 */  mul.s $f8, $f8, $f10
  /* 0x80380B38 */  lwc1 $f10, 20($sp)
  /* 0x80380B3C */  sub.s $f10, $f10, $f6
  /* 0x80380B40 */  sub.s $f6, $f4, $f18
  /* 0x80380B44 */  mul.s $f4, $f6, $f10
  /* 0x80380B48 */  mtc1 $zero, $f10
  /* 0x80380B4C */  sub.s $f6, $f4, $f8
  /* 0x80380B50 */  c.lt.s $f10, $f6
  /* 0x80380B54 */  nop
  /* 0x80380B58 */  bc1f .find_wall_collisions_from_list_L80380B68
  /* 0x80380B5C */  nop
  /* 0x80380B60 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380B64 */  nop
.find_wall_collisions_from_list_L80380B68:
  /* 0x80380B68 */  lwc1 $f4, 20($sp)
  /* 0x80380B6C */  lwc1 $f8, 36($sp)
  /* 0x80380B70 */  lwc1 $f10, 16($sp)
  /* 0x80380B74 */  sub.s $f6, $f4, $f8
  /* 0x80380B78 */  lwc1 $f8, 8($sp)
  /* 0x80380B7C */  sub.s $f10, $f10, $f8
  /* 0x80380B80 */  mul.s $f6, $f6, $f10
  /* 0x80380B84 */  lwc1 $f10, 28($sp)
  /* 0x80380B88 */  sub.s $f10, $f10, $f4
  /* 0x80380B8C */  sub.s $f4, $f8, $f18
  /* 0x80380B90 */  mul.s $f8, $f4, $f10
  /* 0x80380B94 */  mtc1 $zero, $f10
  /* 0x80380B98 */  sub.s $f4, $f8, $f6
  /* 0x80380B9C */  c.lt.s $f10, $f4
  /* 0x80380BA0 */  nop
  /* 0x80380BA4 */  bc1f .find_wall_collisions_from_list_L80380BB4
  /* 0x80380BA8 */  nop
  /* 0x80380BAC */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380BB0 */  nop
.find_wall_collisions_from_list_L80380BB4:
  /* 0x80380BB4 */  b .find_wall_collisions_from_list_L80380CA0
  /* 0x80380BB8 */  nop
.find_wall_collisions_from_list_L80380BBC:
  /* 0x80380BBC */  lwc1 $f8, 28($sp)
  /* 0x80380BC0 */  lwc1 $f6, 36($sp)
  /* 0x80380BC4 */  lwc1 $f10, 12($sp)
  /* 0x80380BC8 */  sub.s $f4, $f8, $f6
  /* 0x80380BCC */  lwc1 $f6, 16($sp)
  /* 0x80380BD0 */  sub.s $f10, $f10, $f6
  /* 0x80380BD4 */  mul.s $f4, $f4, $f10
  /* 0x80380BD8 */  lwc1 $f10, 24($sp)
  /* 0x80380BDC */  sub.s $f10, $f10, $f8
  /* 0x80380BE0 */  sub.s $f8, $f6, $f18
  /* 0x80380BE4 */  mul.s $f6, $f8, $f10
  /* 0x80380BE8 */  mtc1 $zero, $f10
  /* 0x80380BEC */  sub.s $f8, $f6, $f4
  /* 0x80380BF0 */  c.lt.s $f8, $f10
  /* 0x80380BF4 */  nop
  /* 0x80380BF8 */  bc1f .find_wall_collisions_from_list_L80380C08
  /* 0x80380BFC */  nop
  /* 0x80380C00 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380C04 */  nop
.find_wall_collisions_from_list_L80380C08:
  /* 0x80380C08 */  lwc1 $f6, 24($sp)
  /* 0x80380C0C */  lwc1 $f4, 36($sp)
  /* 0x80380C10 */  lwc1 $f10, 8($sp)
  /* 0x80380C14 */  sub.s $f8, $f6, $f4
  /* 0x80380C18 */  lwc1 $f4, 12($sp)
  /* 0x80380C1C */  sub.s $f10, $f10, $f4
  /* 0x80380C20 */  mul.s $f8, $f8, $f10
  /* 0x80380C24 */  lwc1 $f10, 20($sp)
  /* 0x80380C28 */  sub.s $f10, $f10, $f6
  /* 0x80380C2C */  sub.s $f6, $f4, $f18
  /* 0x80380C30 */  mul.s $f4, $f6, $f10
  /* 0x80380C34 */  mtc1 $zero, $f10
  /* 0x80380C38 */  sub.s $f6, $f4, $f8
  /* 0x80380C3C */  c.lt.s $f6, $f10
  /* 0x80380C40 */  nop
  /* 0x80380C44 */  bc1f .find_wall_collisions_from_list_L80380C54
  /* 0x80380C48 */  nop
  /* 0x80380C4C */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380C50 */  nop
.find_wall_collisions_from_list_L80380C54:
  /* 0x80380C54 */  lwc1 $f4, 20($sp)
  /* 0x80380C58 */  lwc1 $f8, 36($sp)
  /* 0x80380C5C */  lwc1 $f10, 16($sp)
  /* 0x80380C60 */  sub.s $f6, $f4, $f8
  /* 0x80380C64 */  lwc1 $f8, 8($sp)
  /* 0x80380C68 */  sub.s $f10, $f10, $f8
  /* 0x80380C6C */  mul.s $f6, $f6, $f10
  /* 0x80380C70 */  lwc1 $f10, 28($sp)
  /* 0x80380C74 */  sub.s $f10, $f10, $f4
  /* 0x80380C78 */  sub.s $f4, $f8, $f18
  /* 0x80380C7C */  mul.s $f8, $f4, $f10
  /* 0x80380C80 */  mtc1 $zero, $f10
  /* 0x80380C84 */  sub.s $f4, $f8, $f6
  /* 0x80380C88 */  c.lt.s $f4, $f10
  /* 0x80380C8C */  nop
  /* 0x80380C90 */  bc1f .find_wall_collisions_from_list_L80380CA0
  /* 0x80380C94 */  nop
  /* 0x80380C98 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380C9C */  nop
.find_wall_collisions_from_list_L80380CA0:
  /* 0x80380CA0 */  lui $t5, 0x8036
  /* 0x80380CA4 */  lh $t5, 4480($t5)
  /* 0x80380CA8 */  beq $t5, $zero, .find_wall_collisions_from_list_L80380CD0
  /* 0x80380CAC */  nop
  /* 0x80380CB0 */  lb $t6, 4($a2)
  /* 0x80380CB4 */  andi $t7, $t6, 0x2
  /* 0x80380CB8 */  beq $t7, $zero, .find_wall_collisions_from_list_L80380CC8
  /* 0x80380CBC */  nop
  /* 0x80380CC0 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380CC4 */  nop
.find_wall_collisions_from_list_L80380CC8:
  /* 0x80380CC8 */  b .find_wall_collisions_from_list_L80380D60
  /* 0x80380CCC */  nop
.find_wall_collisions_from_list_L80380CD0:
  /* 0x80380CD0 */  lh $t8, 0($a2)
  /* 0x80380CD4 */  li $at, 114
  /* 0x80380CD8 */  bne $t8, $at, .find_wall_collisions_from_list_L80380CE8
  /* 0x80380CDC */  nop
  /* 0x80380CE0 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380CE4 */  nop
.find_wall_collisions_from_list_L80380CE8:
  /* 0x80380CE8 */  lh $t9, 0($a2)
  /* 0x80380CEC */  li $at, 123
  /* 0x80380CF0 */  bne $t9, $at, .find_wall_collisions_from_list_L80380D60
  /* 0x80380CF4 */  nop
  /* 0x80380CF8 */  lui $t0, 0x8036
  /* 0x80380CFC */  lw $t0, 4448($t0)
  /* 0x80380D00 */  beq $t0, $zero, .find_wall_collisions_from_list_L80380D20
  /* 0x80380D04 */  nop
  /* 0x80380D08 */  lh $t1, 116($t0)
  /* 0x80380D0C */  andi $t2, $t1, 0x40
  /* 0x80380D10 */  beq $t2, $zero, .find_wall_collisions_from_list_L80380D20
  /* 0x80380D14 */  nop
  /* 0x80380D18 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380D1C */  nop
.find_wall_collisions_from_list_L80380D20:
  /* 0x80380D20 */  lui $t3, 0x8036
  /* 0x80380D24 */  lw $t3, 4448($t3)
  /* 0x80380D28 */  beq $t3, $zero, .find_wall_collisions_from_list_L80380D60
  /* 0x80380D2C */  nop
  /* 0x80380D30 */  lui $t4, 0x8036
  /* 0x80380D34 */  lw $t4, 4440($t4)
  /* 0x80380D38 */  bne $t3, $t4, .find_wall_collisions_from_list_L80380D60
  /* 0x80380D3C */  nop
  /* 0x80380D40 */  lui $t5, 0x8033
  /* 0x80380D44 */  lw $t5, -9924($t5)
  /* 0x80380D48 */  lw $t6, 4($t5)
  /* 0x80380D4C */  andi $t7, $t6, 0x2
  /* 0x80380D50 */  beq $t7, $zero, .find_wall_collisions_from_list_L80380D60  ; <-- CHANGED
  /* 0x80380D54 */  nop  ; <-- CHANGED
  /* 0x80380D58 */  b .find_wall_collisions_from_list_L80380DC8  ; <-- CHANGED
  /* 0x80380D5C */  nop
.find_wall_collisions_from_list_L80380D60:
  /* 0x80380D60 */  sub.s $f6, $f14, $f12
  /* 0x80380D64 */  lwc1 $f8, 28($a2)  ; <-- CHANGED
  /* 0x80380D68 */  lwc1 $f10, 0($a1)  ; <-- CHANGED
  /* 0x80380D6C */  mul.s $f4, $f8, $f6  ; <-- CHANGED
  /* 0x80380D70 */  add.s $f8, $f10, $f4  ; <-- CHANGED
  /* 0x80380D74 */  swc1 $f8, 0($a1)  ; <-- CHANGED
  /* 0x80380D78 */  sub.s $f10, $f14, $f12
  /* 0x80380D7C */  lwc1 $f6, 36($a2)  ; <-- CHANGED
  /* 0x80380D80 */  lwc1 $f8, 8($a1)  ; <-- CHANGED
  /* 0x80380D84 */  mul.s $f4, $f6, $f10  ; <-- CHANGED
  /* 0x80380D88 */  add.s $f6, $f8, $f4  ; <-- CHANGED
  /* 0x80380D8C */  swc1 $f6, 8($a1)  ; <-- CHANGED
  /* 0x80380D90 */  lh $t8, 22($a1)  ; <-- CHANGED
  /* 0x80380D94 */  slti $at, $t8, 4  ; <-- CHANGED
  /* 0x80380D98 */  beq $at, $zero, .find_wall_collisions_from_list_L80380DBC  ; <-- CHANGED
  /* 0x80380D9C */  nop
  /* 0x80380DA0 */  lh $t9, 22($a1)
  /* 0x80380DA4 */  sll $t0, $t9, 2
  /* 0x80380DA8 */  addu $t1, $a1, $t0
  /* 0x80380DAC */  sw $a2, 24($t1)
  /* 0x80380DB0 */  lh $t2, 22($a1)
  /* 0x80380DB4 */  addiu $t3, $t2, 1
  /* 0x80380DB8 */  sh $t3, 22($a1)
.find_wall_collisions_from_list_L80380DBC:
  /* 0x80380DBC */  lw $t4, 4($sp)
  /* 0x80380DC0 */  addiu $t5, $t4, 1
  /* 0x80380DC4 */  sw $t5, 4($sp)
.find_wall_collisions_from_list_L80380DC8:
  /* 0x80380DC8 */  bne $a0, $zero, .find_wall_collisions_from_list_L803806E4
  /* 0x80380DCC */  nop
.find_wall_collisions_from_list_L80380DD0:
  /* 0x80380DD0 */  b .find_wall_collisions_from_list_L80380DE0
  /* 0x80380DD4 */  lw $v0, 4($sp)
  /* 0x80380DD8 */  b .find_wall_collisions_from_list_L80380DE0
  /* 0x80380DDC */  nop
.find_wall_collisions_from_list_L80380DE0:
  /* 0x80380DE0 */  jr $ra
  /* 0x80380DE4 */  addiu $sp, $sp, 64
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x80380690 */  addiu $sp, $sp, -64
  /* 0x80380694 */  lwc1 $f14, 16($a1)
  /* 0x80380698 */  lwc1 $f16, 0($a1)
  /* 0x8038069C */  lwc1 $f4, 4($a1)
  /* 0x803806A0 */  lwc1 $f6, 12($a1)
  /* 0x803806A4 */  lwc1 $f8, 8($a1)  ; <-- CHANGED
  /* 0x803806A8 */  lui $s4, 0x4080  ; <-- CHANGED
  /* 0x803806AC */  mtc1 $s4, $f20  ; <-- CHANGED
  /* 0x803806B0 */  div.s $f4, $f4, $f20  ; <-- CHANGED
  /* 0x803806B4 */  div.s $f16, $f16, $f20  ; <-- CHANGED
  /* 0x803806B8 */  div.s $f8, $f8, $f20  ; <-- CHANGED
  /* 0x803806BC */  div.s $f6, $f6, $f20  ; <-- CHANGED
  /* 0x803806C0 */  div.s $f14, $f14, $f20  ; <-- CHANGED
  /* 0x803806C4 */  add.s $f18, $f4, $f6  ; <-- CHANGED
  /* 0x803806C8 */  swc1 $f8, 40($sp)  ; <-- CHANGED
  /* 0x803806CC */  lui $at, 0x4348  ; <-- CHANGED
  /* 0x803806D0 */  mtc1 $at, $f10  ; <-- CHANGED
  /* 0x803806D4 */  c.lt.s $f10, $f14  ; <-- CHANGED
  /* 0x803806D8 */  bc1f .find_wall_collisions_from_list_L803806E4  ; <-- CHANGED
  /* 0x803806DC */  sw $zero, 4($sp)  ; <-- CHANGED
  /* 0x803806E0 */  mtc1 $at, $f14  ; <-- CHANGED
.find_wall_collisions_from_list_L803806E4:
  /* 0x803806E4 */  beq $a0, $zero, .find_wall_collisions_from_list_L80380DD0  ; <-- CHANGED
  /* 0x803806E8 */  nop  ; <-- CHANGED
  /* 0x803806EC */  lw $a2, 4($a0)  ; <-- CHANGED
  /* 0x803806F0 */  lw $a0, 0($a0)  ; <-- CHANGED
  /* 0x803806F4 */  lh $t6, 6($a2)  ; <-- CHANGED
  /* 0x803806F8 */  mtc1 $t6, $f4  ; <-- CHANGED
  /* 0x803806FC */  cvt.s.w $f6, $f4  ; <-- CHANGED
  /* 0x80380700 */  c.lt.s $f18, $f6  ; <-- CHANGED
  /* 0x80380704 */  bc1t .find_wall_collisions_from_list_L8038072C
  /* 0x80380708 */  nop
  /* 0x8038070C */  lh $t7, 8($a2)
  /* 0x80380710 */  mtc1 $t7, $f8
  /* 0x80380714 */  nop
  /* 0x80380718 */  cvt.s.w $f10, $f8
  /* 0x8038071C */  c.lt.s $f10, $f18
  /* 0x80380720 */  nop
  /* 0x80380724 */  bc1f .find_wall_collisions_from_list_L80380734
  /* 0x80380728 */  nop
.find_wall_collisions_from_list_L8038072C:
  /* 0x8038072C */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380730 */  nop
.find_wall_collisions_from_list_L80380734:
  /* 0x80380734 */  lwc1 $f4, 28($a2)
  /* 0x80380738 */  lwc1 $f8, 32($a2)
  /* 0x8038073C */  mul.s $f6, $f4, $f16
  /* 0x80380740 */  nop
  /* 0x80380744 */  mul.s $f10, $f8, $f18
  /* 0x80380748 */  lwc1 $f8, 36($a2)
  /* 0x8038074C */  add.s $f4, $f6, $f10
  /* 0x80380750 */  lwc1 $f6, 40($sp)
  /* 0x80380754 */  mul.s $f10, $f8, $f6
  /* 0x80380758 */  lwc1 $f6, 40($a2)
  /* 0x8038075C */  add.s $f8, $f4, $f10
  /* 0x80380760 */  add.s $f12, $f8, $f6
  /* 0x80380764 */  neg.s $f4, $f14
  /* 0x80380768 */  c.lt.s $f12, $f4
  /* 0x8038076C */  nop
  /* 0x80380770 */  bc1t .find_wall_collisions_from_list_L80380788
  /* 0x80380774 */  nop
  /* 0x80380778 */  c.lt.s $f14, $f12
  /* 0x8038077C */  nop
  /* 0x80380780 */  bc1f .find_wall_collisions_from_list_L80380790
  /* 0x80380784 */  nop
.find_wall_collisions_from_list_L80380788:
  /* 0x80380788 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x8038078C */  nop
.find_wall_collisions_from_list_L80380790:
  /* 0x80380790 */  swc1 $f16, 36($sp)
  /* 0x80380794 */  lwc1 $f10, 40($sp)
  /* 0x80380798 */  swc1 $f10, 32($sp)
  /* 0x8038079C */  lb $t8, 4($a2)
  /* 0x803807A0 */  andi $t9, $t8, 0x8
  /* 0x803807A4 */  beq $t9, $zero, .find_wall_collisions_from_list_L80380A3C
  /* 0x803807A8 */  nop
  /* 0x803807AC */  lh $t0, 14($a2)
  /* 0x803807B0 */  subu $t1, $zero, $t0
  /* 0x803807B4 */  mtc1 $t1, $f8
  /* 0x803807B8 */  nop
  /* 0x803807BC */  cvt.s.w $f6, $f8
  /* 0x803807C0 */  swc1 $f6, 28($sp)
  /* 0x803807C4 */  lh $t2, 20($a2)
  /* 0x803807C8 */  subu $t3, $zero, $t2
  /* 0x803807CC */  mtc1 $t3, $f4
  /* 0x803807D0 */  nop
  /* 0x803807D4 */  cvt.s.w $f10, $f4
  /* 0x803807D8 */  swc1 $f10, 24($sp)
  /* 0x803807DC */  lh $t4, 26($a2)
  /* 0x803807E0 */  subu $t5, $zero, $t4
  /* 0x803807E4 */  mtc1 $t5, $f8
  /* 0x803807E8 */  nop
  /* 0x803807EC */  cvt.s.w $f6, $f8
  /* 0x803807F0 */  swc1 $f6, 20($sp)
  /* 0x803807F4 */  lh $t6, 12($a2)
  /* 0x803807F8 */  mtc1 $t6, $f4
  /* 0x803807FC */  nop
  /* 0x80380800 */  cvt.s.w $f10, $f4
  /* 0x80380804 */  swc1 $f10, 16($sp)
  /* 0x80380808 */  lh $t7, 18($a2)
  /* 0x8038080C */  mtc1 $t7, $f8
  /* 0x80380810 */  nop
  /* 0x80380814 */  cvt.s.w $f6, $f8
  /* 0x80380818 */  swc1 $f6, 12($sp)
  /* 0x8038081C */  lh $t8, 24($a2)
  /* 0x80380820 */  mtc1 $t8, $f4
  /* 0x80380824 */  nop
  /* 0x80380828 */  cvt.s.w $f10, $f4
  /* 0x8038082C */  swc1 $f10, 8($sp)
  /* 0x80380830 */  lwc1 $f8, 28($a2)
  /* 0x80380834 */  mtc1 $zero, $f6
  /* 0x80380838 */  nop
  /* 0x8038083C */  c.lt.s $f6, $f8
  /* 0x80380840 */  nop
  /* 0x80380844 */  bc1f .find_wall_collisions_from_list_L80380944
  /* 0x80380848 */  nop
  /* 0x8038084C */  lwc1 $f10, 32($sp)
  /* 0x80380850 */  lwc1 $f4, 28($sp)
  /* 0x80380854 */  neg.s $f8, $f10
  /* 0x80380858 */  lwc1 $f10, 12($sp)
  /* 0x8038085C */  sub.s $f6, $f4, $f8
  /* 0x80380860 */  lwc1 $f8, 16($sp)
  /* 0x80380864 */  sub.s $f10, $f10, $f8
  /* 0x80380868 */  mul.s $f6, $f6, $f10
  /* 0x8038086C */  lwc1 $f10, 24($sp)
  /* 0x80380870 */  sub.s $f10, $f10, $f4
  /* 0x80380874 */  sub.s $f4, $f8, $f18
  /* 0x80380878 */  mul.s $f8, $f4, $f10
  /* 0x8038087C */  mtc1 $zero, $f10
  /* 0x80380880 */  sub.s $f4, $f8, $f6
  /* 0x80380884 */  c.lt.s $f10, $f4
  /* 0x80380888 */  nop
  /* 0x8038088C */  bc1f .find_wall_collisions_from_list_L8038089C
  /* 0x80380890 */  nop
  /* 0x80380894 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380898 */  nop
.find_wall_collisions_from_list_L8038089C:
  /* 0x8038089C */  lwc1 $f6, 32($sp)
  /* 0x803808A0 */  lwc1 $f8, 24($sp)
  /* 0x803808A4 */  neg.s $f4, $f6
  /* 0x803808A8 */  lwc1 $f6, 8($sp)
  /* 0x803808AC */  sub.s $f10, $f8, $f4
  /* 0x803808B0 */  lwc1 $f4, 12($sp)
  /* 0x803808B4 */  sub.s $f6, $f6, $f4
  /* 0x803808B8 */  mul.s $f10, $f10, $f6
  /* 0x803808BC */  lwc1 $f6, 20($sp)
  /* 0x803808C0 */  sub.s $f6, $f6, $f8
  /* 0x803808C4 */  sub.s $f8, $f4, $f18
  /* 0x803808C8 */  mul.s $f4, $f8, $f6
  /* 0x803808CC */  mtc1 $zero, $f6
  /* 0x803808D0 */  sub.s $f8, $f4, $f10
  /* 0x803808D4 */  c.lt.s $f6, $f8
  /* 0x803808D8 */  nop
  /* 0x803808DC */  bc1f .find_wall_collisions_from_list_L803808EC
  /* 0x803808E0 */  nop
  /* 0x803808E4 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x803808E8 */  nop
.find_wall_collisions_from_list_L803808EC:
  /* 0x803808EC */  lwc1 $f10, 32($sp)
  /* 0x803808F0 */  lwc1 $f4, 20($sp)
  /* 0x803808F4 */  neg.s $f8, $f10
  /* 0x803808F8 */  lwc1 $f10, 16($sp)
  /* 0x803808FC */  sub.s $f6, $f4, $f8
  /* 0x80380900 */  lwc1 $f8, 8($sp)
  /* 0x80380904 */  sub.s $f10, $f10, $f8
  /* 0x80380908 */  mul.s $f6, $f6, $f10
  /* 0x8038090C */  lwc1 $f10, 28($sp)
  /* 0x80380910 */  sub.s $f10, $f10, $f4
  /* 0x80380914 */  sub.s $f4, $f8, $f18
  /* 0x80380918 */  mul.s $f8, $f4, $f10
  /* 0x8038091C */  mtc1 $zero, $f10
  /* 0x80380920 */  sub.s $f4, $f8, $f6
  /* 0x80380924 */  c.lt.s $f10, $f4
  /* 0x80380928 */  nop
  /* 0x8038092C */  bc1f .find_wall_collisions_from_list_L8038093C
  /* 0x80380930 */  nop
  /* 0x80380934 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380938 */  nop
.find_wall_collisions_from_list_L8038093C:
  /* 0x8038093C */  b .find_wall_collisions_from_list_L80380A34
  /* 0x80380940 */  nop
.find_wall_collisions_from_list_L80380944:
  /* 0x80380944 */  lwc1 $f6, 32($sp)
  /* 0x80380948 */  lwc1 $f8, 28($sp)
  /* 0x8038094C */  neg.s $f4, $f6
  /* 0x80380950 */  lwc1 $f6, 12($sp)
  /* 0x80380954 */  sub.s $f10, $f8, $f4
  /* 0x80380958 */  lwc1 $f4, 16($sp)
  /* 0x8038095C */  sub.s $f6, $f6, $f4
  /* 0x80380960 */  mul.s $f10, $f10, $f6
  /* 0x80380964 */  lwc1 $f6, 24($sp)
  /* 0x80380968 */  sub.s $f6, $f6, $f8
  /* 0x8038096C */  sub.s $f8, $f4, $f18
  /* 0x80380970 */  mul.s $f4, $f8, $f6
  /* 0x80380974 */  mtc1 $zero, $f6
  /* 0x80380978 */  sub.s $f8, $f4, $f10
  /* 0x8038097C */  c.lt.s $f8, $f6
  /* 0x80380980 */  nop
  /* 0x80380984 */  bc1f .find_wall_collisions_from_list_L80380994
  /* 0x80380988 */  nop
  /* 0x8038098C */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380990 */  nop
.find_wall_collisions_from_list_L80380994:
  /* 0x80380994 */  lwc1 $f10, 32($sp)
  /* 0x80380998 */  lwc1 $f4, 24($sp)
  /* 0x8038099C */  neg.s $f8, $f10
  /* 0x803809A0 */  lwc1 $f10, 8($sp)
  /* 0x803809A4 */  sub.s $f6, $f4, $f8
  /* 0x803809A8 */  lwc1 $f8, 12($sp)
  /* 0x803809AC */  sub.s $f10, $f10, $f8
  /* 0x803809B0 */  mul.s $f6, $f6, $f10
  /* 0x803809B4 */  lwc1 $f10, 20($sp)
  /* 0x803809B8 */  sub.s $f10, $f10, $f4
  /* 0x803809BC */  sub.s $f4, $f8, $f18
  /* 0x803809C0 */  mul.s $f8, $f4, $f10
  /* 0x803809C4 */  mtc1 $zero, $f10
  /* 0x803809C8 */  sub.s $f4, $f8, $f6
  /* 0x803809CC */  c.lt.s $f4, $f10
  /* 0x803809D0 */  nop
  /* 0x803809D4 */  bc1f .find_wall_collisions_from_list_L803809E4
  /* 0x803809D8 */  nop
  /* 0x803809DC */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x803809E0 */  nop
.find_wall_collisions_from_list_L803809E4:
  /* 0x803809E4 */  lwc1 $f6, 32($sp)
  /* 0x803809E8 */  lwc1 $f8, 20($sp)
  /* 0x803809EC */  neg.s $f4, $f6
  /* 0x803809F0 */  lwc1 $f6, 16($sp)
  /* 0x803809F4 */  sub.s $f10, $f8, $f4
  /* 0x803809F8 */  lwc1 $f4, 8($sp)
  /* 0x803809FC */  sub.s $f6, $f6, $f4
  /* 0x80380A00 */  mul.s $f10, $f10, $f6
  /* 0x80380A04 */  lwc1 $f6, 28($sp)
  /* 0x80380A08 */  sub.s $f6, $f6, $f8
  /* 0x80380A0C */  sub.s $f8, $f4, $f18
  /* 0x80380A10 */  mul.s $f4, $f8, $f6
  /* 0x80380A14 */  mtc1 $zero, $f6
  /* 0x80380A18 */  sub.s $f8, $f4, $f10
  /* 0x80380A1C */  c.lt.s $f8, $f6
  /* 0x80380A20 */  nop
  /* 0x80380A24 */  bc1f .find_wall_collisions_from_list_L80380A34
  /* 0x80380A28 */  nop
  /* 0x80380A2C */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380A30 */  nop
.find_wall_collisions_from_list_L80380A34:
  /* 0x80380A34 */  b .find_wall_collisions_from_list_L80380CA0
  /* 0x80380A38 */  nop
.find_wall_collisions_from_list_L80380A3C:
  /* 0x80380A3C */  lh $t9, 10($a2)
  /* 0x80380A40 */  mtc1 $t9, $f4
  /* 0x80380A44 */  nop
  /* 0x80380A48 */  cvt.s.w $f10, $f4
  /* 0x80380A4C */  swc1 $f10, 28($sp)
  /* 0x80380A50 */  lh $t0, 16($a2)
  /* 0x80380A54 */  mtc1 $t0, $f8
  /* 0x80380A58 */  nop
  /* 0x80380A5C */  cvt.s.w $f6, $f8
  /* 0x80380A60 */  swc1 $f6, 24($sp)
  /* 0x80380A64 */  lh $t1, 22($a2)
  /* 0x80380A68 */  mtc1 $t1, $f4
  /* 0x80380A6C */  nop
  /* 0x80380A70 */  cvt.s.w $f10, $f4
  /* 0x80380A74 */  swc1 $f10, 20($sp)
  /* 0x80380A78 */  lh $t2, 12($a2)
  /* 0x80380A7C */  mtc1 $t2, $f8
  /* 0x80380A80 */  nop
  /* 0x80380A84 */  cvt.s.w $f6, $f8
  /* 0x80380A88 */  swc1 $f6, 16($sp)
  /* 0x80380A8C */  lh $t3, 18($a2)
  /* 0x80380A90 */  mtc1 $t3, $f4
  /* 0x80380A94 */  nop
  /* 0x80380A98 */  cvt.s.w $f10, $f4
  /* 0x80380A9C */  swc1 $f10, 12($sp)
  /* 0x80380AA0 */  lh $t4, 24($a2)
  /* 0x80380AA4 */  mtc1 $t4, $f8
  /* 0x80380AA8 */  nop
  /* 0x80380AAC */  cvt.s.w $f6, $f8
  /* 0x80380AB0 */  swc1 $f6, 8($sp)
  /* 0x80380AB4 */  lwc1 $f4, 36($a2)
  /* 0x80380AB8 */  mtc1 $zero, $f10
  /* 0x80380ABC */  nop
  /* 0x80380AC0 */  c.lt.s $f10, $f4
  /* 0x80380AC4 */  nop
  /* 0x80380AC8 */  bc1f .find_wall_collisions_from_list_L80380BBC
  /* 0x80380ACC */  nop
  /* 0x80380AD0 */  lwc1 $f8, 28($sp)
  /* 0x80380AD4 */  lwc1 $f6, 36($sp)
  /* 0x80380AD8 */  lwc1 $f10, 12($sp)
  /* 0x80380ADC */  sub.s $f4, $f8, $f6
  /* 0x80380AE0 */  lwc1 $f6, 16($sp)
  /* 0x80380AE4 */  sub.s $f10, $f10, $f6
  /* 0x80380AE8 */  mul.s $f4, $f4, $f10
  /* 0x80380AEC */  lwc1 $f10, 24($sp)
  /* 0x80380AF0 */  sub.s $f10, $f10, $f8
  /* 0x80380AF4 */  sub.s $f8, $f6, $f18
  /* 0x80380AF8 */  mul.s $f6, $f8, $f10
  /* 0x80380AFC */  mtc1 $zero, $f10
  /* 0x80380B00 */  sub.s $f8, $f6, $f4
  /* 0x80380B04 */  c.lt.s $f10, $f8
  /* 0x80380B08 */  nop
  /* 0x80380B0C */  bc1f .find_wall_collisions_from_list_L80380B1C
  /* 0x80380B10 */  nop
  /* 0x80380B14 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380B18 */  nop
.find_wall_collisions_from_list_L80380B1C:
  /* 0x80380B1C */  lwc1 $f6, 24($sp)
  /* 0x80380B20 */  lwc1 $f4, 36($sp)
  /* 0x80380B24 */  lwc1 $f10, 8($sp)
  /* 0x80380B28 */  sub.s $f8, $f6, $f4
  /* 0x80380B2C */  lwc1 $f4, 12($sp)
  /* 0x80380B30 */  sub.s $f10, $f10, $f4
  /* 0x80380B34 */  mul.s $f8, $f8, $f10
  /* 0x80380B38 */  lwc1 $f10, 20($sp)
  /* 0x80380B3C */  sub.s $f10, $f10, $f6
  /* 0x80380B40 */  sub.s $f6, $f4, $f18
  /* 0x80380B44 */  mul.s $f4, $f6, $f10
  /* 0x80380B48 */  mtc1 $zero, $f10
  /* 0x80380B4C */  sub.s $f6, $f4, $f8
  /* 0x80380B50 */  c.lt.s $f10, $f6
  /* 0x80380B54 */  nop
  /* 0x80380B58 */  bc1f .find_wall_collisions_from_list_L80380B68
  /* 0x80380B5C */  nop
  /* 0x80380B60 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380B64 */  nop
.find_wall_collisions_from_list_L80380B68:
  /* 0x80380B68 */  lwc1 $f4, 20($sp)
  /* 0x80380B6C */  lwc1 $f8, 36($sp)
  /* 0x80380B70 */  lwc1 $f10, 16($sp)
  /* 0x80380B74 */  sub.s $f6, $f4, $f8
  /* 0x80380B78 */  lwc1 $f8, 8($sp)
  /* 0x80380B7C */  sub.s $f10, $f10, $f8
  /* 0x80380B80 */  mul.s $f6, $f6, $f10
  /* 0x80380B84 */  lwc1 $f10, 28($sp)
  /* 0x80380B88 */  sub.s $f10, $f10, $f4
  /* 0x80380B8C */  sub.s $f4, $f8, $f18
  /* 0x80380B90 */  mul.s $f8, $f4, $f10
  /* 0x80380B94 */  mtc1 $zero, $f10
  /* 0x80380B98 */  sub.s $f4, $f8, $f6
  /* 0x80380B9C */  c.lt.s $f10, $f4
  /* 0x80380BA0 */  nop
  /* 0x80380BA4 */  bc1f .find_wall_collisions_from_list_L80380BB4
  /* 0x80380BA8 */  nop
  /* 0x80380BAC */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380BB0 */  nop
.find_wall_collisions_from_list_L80380BB4:
  /* 0x80380BB4 */  b .find_wall_collisions_from_list_L80380CA0
  /* 0x80380BB8 */  nop
.find_wall_collisions_from_list_L80380BBC:
  /* 0x80380BBC */  lwc1 $f8, 28($sp)
  /* 0x80380BC0 */  lwc1 $f6, 36($sp)
  /* 0x80380BC4 */  lwc1 $f10, 12($sp)
  /* 0x80380BC8 */  sub.s $f4, $f8, $f6
  /* 0x80380BCC */  lwc1 $f6, 16($sp)
  /* 0x80380BD0 */  sub.s $f10, $f10, $f6
  /* 0x80380BD4 */  mul.s $f4, $f4, $f10
  /* 0x80380BD8 */  lwc1 $f10, 24($sp)
  /* 0x80380BDC */  sub.s $f10, $f10, $f8
  /* 0x80380BE0 */  sub.s $f8, $f6, $f18
  /* 0x80380BE4 */  mul.s $f6, $f8, $f10
  /* 0x80380BE8 */  mtc1 $zero, $f10
  /* 0x80380BEC */  sub.s $f8, $f6, $f4
  /* 0x80380BF0 */  c.lt.s $f8, $f10
  /* 0x80380BF4 */  nop
  /* 0x80380BF8 */  bc1f .find_wall_collisions_from_list_L80380C08
  /* 0x80380BFC */  nop
  /* 0x80380C00 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380C04 */  nop
.find_wall_collisions_from_list_L80380C08:
  /* 0x80380C08 */  lwc1 $f6, 24($sp)
  /* 0x80380C0C */  lwc1 $f4, 36($sp)
  /* 0x80380C10 */  lwc1 $f10, 8($sp)
  /* 0x80380C14 */  sub.s $f8, $f6, $f4
  /* 0x80380C18 */  lwc1 $f4, 12($sp)
  /* 0x80380C1C */  sub.s $f10, $f10, $f4
  /* 0x80380C20 */  mul.s $f8, $f8, $f10
  /* 0x80380C24 */  lwc1 $f10, 20($sp)
  /* 0x80380C28 */  sub.s $f10, $f10, $f6
  /* 0x80380C2C */  sub.s $f6, $f4, $f18
  /* 0x80380C30 */  mul.s $f4, $f6, $f10
  /* 0x80380C34 */  mtc1 $zero, $f10
  /* 0x80380C38 */  sub.s $f6, $f4, $f8
  /* 0x80380C3C */  c.lt.s $f6, $f10
  /* 0x80380C40 */  nop
  /* 0x80380C44 */  bc1f .find_wall_collisions_from_list_L80380C54
  /* 0x80380C48 */  nop
  /* 0x80380C4C */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380C50 */  nop
.find_wall_collisions_from_list_L80380C54:
  /* 0x80380C54 */  lwc1 $f4, 20($sp)
  /* 0x80380C58 */  lwc1 $f8, 36($sp)
  /* 0x80380C5C */  lwc1 $f10, 16($sp)
  /* 0x80380C60 */  sub.s $f6, $f4, $f8
  /* 0x80380C64 */  lwc1 $f8, 8($sp)
  /* 0x80380C68 */  sub.s $f10, $f10, $f8
  /* 0x80380C6C */  mul.s $f6, $f6, $f10
  /* 0x80380C70 */  lwc1 $f10, 28($sp)
  /* 0x80380C74 */  sub.s $f10, $f10, $f4
  /* 0x80380C78 */  sub.s $f4, $f8, $f18
  /* 0x80380C7C */  mul.s $f8, $f4, $f10
  /* 0x80380C80 */  mtc1 $zero, $f10
  /* 0x80380C84 */  sub.s $f4, $f8, $f6
  /* 0x80380C88 */  c.lt.s $f4, $f10
  /* 0x80380C8C */  nop
  /* 0x80380C90 */  bc1f .find_wall_collisions_from_list_L80380CA0
  /* 0x80380C94 */  nop
  /* 0x80380C98 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380C9C */  nop
.find_wall_collisions_from_list_L80380CA0:
  /* 0x80380CA0 */  lui $t5, 0x8036
  /* 0x80380CA4 */  lh $t5, 4480($t5)
  /* 0x80380CA8 */  beq $t5, $zero, .find_wall_collisions_from_list_L80380CD0
  /* 0x80380CAC */  nop
  /* 0x80380CB0 */  lb $t6, 4($a2)
  /* 0x80380CB4 */  andi $t7, $t6, 0x2
  /* 0x80380CB8 */  beq $t7, $zero, .find_wall_collisions_from_list_L80380CC8
  /* 0x80380CBC */  nop
  /* 0x80380CC0 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380CC4 */  nop
.find_wall_collisions_from_list_L80380CC8:
  /* 0x80380CC8 */  b .find_wall_collisions_from_list_L80380D60
  /* 0x80380CCC */  nop
.find_wall_collisions_from_list_L80380CD0:
  /* 0x80380CD0 */  lh $t8, 0($a2)
  /* 0x80380CD4 */  li $at, 114
  /* 0x80380CD8 */  bne $t8, $at, .find_wall_collisions_from_list_L80380CE8
  /* 0x80380CDC */  nop
  /* 0x80380CE0 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380CE4 */  nop
.find_wall_collisions_from_list_L80380CE8:
  /* 0x80380CE8 */  lh $t9, 0($a2)
  /* 0x80380CEC */  li $at, 123
  /* 0x80380CF0 */  bne $t9, $at, .find_wall_collisions_from_list_L80380D60
  /* 0x80380CF4 */  nop
  /* 0x80380CF8 */  lui $t0, 0x8036
  /* 0x80380CFC */  lw $t0, 4448($t0)
  /* 0x80380D00 */  beq $t0, $zero, .find_wall_collisions_from_list_L80380D20
  /* 0x80380D04 */  nop
  /* 0x80380D08 */  lh $t1, 116($t0)
  /* 0x80380D0C */  andi $t2, $t1, 0x40
  /* 0x80380D10 */  beq $t2, $zero, .find_wall_collisions_from_list_L80380D20
  /* 0x80380D14 */  nop
  /* 0x80380D18 */  b .find_wall_collisions_from_list_L80380DC8
  /* 0x80380D1C */  nop
.find_wall_collisions_from_list_L80380D20:
  /* 0x80380D20 */  lui $t3, 0x8036
  /* 0x80380D24 */  lw $t3, 4448($t3)
  /* 0x80380D28 */  beq $t3, $zero, .find_wall_collisions_from_list_L80380D60
  /* 0x80380D2C */  nop
  /* 0x80380D30 */  lui $t4, 0x8036
  /* 0x80380D34 */  lw $t4, 4440($t4)
  /* 0x80380D38 */  bne $t3, $t4, .find_wall_collisions_from_list_L80380D60
  /* 0x80380D3C */  nop
  /* 0x80380D40 */  lui $t5, 0x8033
  /* 0x80380D44 */  lw $t5, -9924($t5)
  /* 0x80380D48 */  lw $t6, 4($t5)
  /* 0x80380D4C */  andi $t7, $t6, 0x2
  /* 0x80380D50 */  lui $s4, 0x4080  ; <-- CHANGED
  /* 0x80380D54 */  mtc1 $s4, $f20  ; <-- CHANGED
  /* 0x80380D58 */  bne $t7, $zero, .find_wall_collisions_from_list_L80380DC8  ; <-- CHANGED
  /* 0x80380D5C */  nop
.find_wall_collisions_from_list_L80380D60:
  /* 0x80380D60 */  sub.s $f6, $f14, $f12
  /* 0x80380D64 */  mul.s $f6, $f6, $f20  ; <-- CHANGED
  /* 0x80380D68 */  lwc1 $f8, 28($a2)  ; <-- CHANGED
  /* 0x80380D6C */  lwc1 $f10, 0($a1)  ; <-- CHANGED
  /* 0x80380D70 */  mul.s $f4, $f8, $f6  ; <-- CHANGED
  /* 0x80380D74 */  add.s $f8, $f10, $f4  ; <-- CHANGED
  /* 0x80380D78 */  sub.s $f10, $f14, $f12
  /* 0x80380D7C */  mul.s $f10, $f10, $f20  ; <-- CHANGED
  /* 0x80380D80 */  swc1 $f8, 0($a1)  ; <-- CHANGED
  /* 0x80380D84 */  lwc1 $f6, 36($a2)  ; <-- CHANGED
  /* 0x80380D88 */  lwc1 $f8, 8($a1)  ; <-- CHANGED
  /* 0x80380D8C */  mul.s $f4, $f6, $f10  ; <-- CHANGED
  /* 0x80380D90 */  add.s $f6, $f8, $f4  ; <-- CHANGED
  /* 0x80380D94 */  swc1 $f6, 8($a1)  ; <-- CHANGED
  /* 0x80380D98 */  lh $t8, 22($a1)  ; <-- CHANGED
  /* 0x80380D9C */  nop
  /* 0x80380DA0 */  lh $t9, 22($a1)
  /* 0x80380DA4 */  sll $t0, $t9, 2
  /* 0x80380DA8 */  addu $t1, $a1, $t0
  /* 0x80380DAC */  sw $a2, 24($t1)
  /* 0x80380DB0 */  lh $t2, 22($a1)
  /* 0x80380DB4 */  addiu $t3, $t2, 1
  /* 0x80380DB8 */  sh $t3, 22($a1)
  /* 0x80380DBC */  lw $t4, 4($sp)
  /* 0x80380DC0 */  addiu $t5, $t4, 1
  /* 0x80380DC4 */  sw $t5, 4($sp)
.find_wall_collisions_from_list_L80380DC8:
  /* 0x80380DC8 */  bne $a0, $zero, .find_wall_collisions_from_list_L803806E4
  /* 0x80380DCC */  nop
.find_wall_collisions_from_list_L80380DD0:
  /* 0x80380DD0 */  b .find_wall_collisions_from_list_L80380DE0
  /* 0x80380DD4 */  lw $v0, 4($sp)
  /* 0x80380DD8 */  b .find_wall_collisions_from_list_L80380DE0
  /* 0x80380DDC */  nop
.find_wall_collisions_from_list_L80380DE0:
  /* 0x80380DE0 */  jr $ra
  /* 0x80380DE4 */  addiu $sp, $sp, 64
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x803806A4:
  ;   was: 46 06 24 80  add.s $f18, $f4, $f6
  ;   new: C4 A8 00 08  lwc1 $f8, 8($a1)
  ; 0x803806A8:
  ;   was: C4 A8 00 08  lwc1 $f8, 8($a1)
  ;   new: 3C 14 40 80  lui $s4, 0x4080
  ; 0x803806AC:
  ;   was: E7 A8 00 28  swc1 $f8, 40($sp)
  ;   new: 44 94 A0 00  mtc1 $s4, $f20
  ; 0x803806B0:
  ;   was: AF A0 00 04  sw $zero, 4($sp)
  ;   new: 46 14 21 03  div.s $f4, $f4, $f20
  ; 0x803806B4:
  ;   was: 3C 01 43 48  lui $at, 0x4348
  ;   new: 46 14 84 03  div.s $f16, $f16, $f20
  ; 0x803806B8:
  ;   was: 44 81 50 00  mtc1 $at, $f10
  ;   new: 46 14 42 03  div.s $f8, $f8, $f20
  ; 0x803806BC:
  ;   was: 00 00 00 00  nop
  ;   new: 46 14 31 83  div.s $f6, $f6, $f20
  ; 0x803806C0:
  ;   was: 46 0E 50 3C  c.lt.s $f10, $f14
  ;   new: 46 14 73 83  div.s $f14, $f14, $f20
  ; 0x803806C4:
  ;   was: 00 00 00 00  nop
  ;   new: 46 06 24 80  add.s $f18, $f4, $f6
  ; 0x803806C8:
  ;   was: 45 00 00 04  bc1f .find_wall_collisions_from_list_L803806DC
  ;   new: E7 A8 00 28  swc1 $f8, 40($sp)
  ; 0x803806CC:
  ;   was: 00 00 00 00  nop
  ;   new: 3C 01 43 48  lui $at, 0x4348
  ; 0x803806D0:
  ;   was: 3C 01 43 48  lui $at, 0x4348
  ;   new: 44 81 50 00  mtc1 $at, $f10
  ; 0x803806D4:
  ;   was: 44 81 70 00  mtc1 $at, $f14
  ;   new: 46 0E 50 3C  c.lt.s $f10, $f14
  ; 0x803806D8:
  ;   was: 00 00 00 00  nop
  ;   new: 45 00 00 02  bc1f .find_wall_collisions_from_list_L803806E4
  ; 0x803806DC:
  ;   was: 10 80 01 BC  beq $a0, $zero, .find_wall_collisions_from_list_L80380DD0
  ;   new: AF A0 00 04  sw $zero, 4($sp)
  ; 0x803806E0:
  ;   was: 00 00 00 00  nop
  ;   new: 44 81 70 00  mtc1 $at, $f14
  ; 0x803806E4:
  ;   was: 8C 86 00 04  lw $a2, 4($a0)
  ;   new: 10 80 01 BA  beq $a0, $zero, .find_wall_collisions_from_list_L80380DD0
  ; 0x803806E8:
  ;   was: 8C 84 00 00  lw $a0, 0($a0)
  ;   new: 00 00 00 00  nop
  ; 0x803806EC:
  ;   was: 84 CE 00 06  lh $t6, 6($a2)
  ;   new: 8C 86 00 04  lw $a2, 4($a0)
  ; 0x803806F0:
  ;   was: 44 8E 20 00  mtc1 $t6, $f4
  ;   new: 8C 84 00 00  lw $a0, 0($a0)
  ; 0x803806F4:
  ;   was: 00 00 00 00  nop
  ;   new: 84 CE 00 06  lh $t6, 6($a2)
  ; 0x803806F8:
  ;   was: 46 80 21 A0  cvt.s.w $f6, $f4
  ;   new: 44 8E 20 00  mtc1 $t6, $f4
  ; 0x803806FC:
  ;   was: 46 06 90 3C  c.lt.s $f18, $f6
  ;   new: 46 80 21 A0  cvt.s.w $f6, $f4
  ; 0x80380700:
  ;   was: 00 00 00 00  nop
  ;   new: 46 06 90 3C  c.lt.s $f18, $f6
  ; 0x80380D50:
  ;   was: 11 E0 00 03  beq $t7, $zero, .find_wall_collisions_from_list_L80380D60
  ;   new: 3C 14 40 80  lui $s4, 0x4080
  ; 0x80380D54:
  ;   was: 00 00 00 00  nop
  ;   new: 44 94 A0 00  mtc1 $s4, $f20
  ; 0x80380D58:
  ;   was: 10 00 00 1B  b .find_wall_collisions_from_list_L80380DC8
  ;   new: 15 E0 00 1B  bne $t7, $zero, .find_wall_collisions_from_list_L80380DC8
  ; 0x80380D64:
  ;   was: C4 C8 00 1C  lwc1 $f8, 28($a2)
  ;   new: 46 14 31 82  mul.s $f6, $f6, $f20
  ; 0x80380D68:
  ;   was: C4 AA 00 00  lwc1 $f10, 0($a1)
  ;   new: C4 C8 00 1C  lwc1 $f8, 28($a2)
  ; 0x80380D6C:
  ;   was: 46 06 41 02  mul.s $f4, $f8, $f6
  ;   new: C4 AA 00 00  lwc1 $f10, 0($a1)
  ; 0x80380D70:
  ;   was: 46 04 52 00  add.s $f8, $f10, $f4
  ;   new: 46 06 41 02  mul.s $f4, $f8, $f6
  ; 0x80380D74:
  ;   was: E4 A8 00 00  swc1 $f8, 0($a1)
  ;   new: 46 04 52 00  add.s $f8, $f10, $f4
  ; 0x80380D7C:
  ;   was: C4 C6 00 24  lwc1 $f6, 36($a2)
  ;   new: 46 14 52 82  mul.s $f10, $f10, $f20
  ; 0x80380D80:
  ;   was: C4 A8 00 08  lwc1 $f8, 8($a1)
  ;   new: E4 A8 00 00  swc1 $f8, 0($a1)
  ; 0x80380D84:
  ;   was: 46 0A 31 02  mul.s $f4, $f6, $f10
  ;   new: C4 C6 00 24  lwc1 $f6, 36($a2)
  ; 0x80380D88:
  ;   was: 46 04 41 80  add.s $f6, $f8, $f4
  ;   new: C4 A8 00 08  lwc1 $f8, 8($a1)
  ; 0x80380D8C:
  ;   was: E4 A6 00 08  swc1 $f6, 8($a1)
  ;   new: 46 0A 31 02  mul.s $f4, $f6, $f10
  ; 0x80380D90:
  ;   was: 84 B8 00 16  lh $t8, 22($a1)
  ;   new: 46 04 41 80  add.s $f6, $f8, $f4
  ; 0x80380D94:
  ;   was: 2B 01 00 04  slti $at, $t8, 4
  ;   new: E4 A6 00 08  swc1 $f6, 8($a1)
  ; 0x80380D98:
  ;   was: 10 20 00 08  beq $at, $zero, .find_wall_collisions_from_list_L80380DBC
  ;   new: 84 B8 00 16  lh $t8, 22($a1)
