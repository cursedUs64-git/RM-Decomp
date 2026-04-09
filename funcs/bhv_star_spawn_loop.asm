; Function: bhv_star_spawn_loop
; RAM: 0x802F2768  Size: 0x338

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x802F2768 */  addiu $sp, $sp, -40
  /* 0x802F276C */  sw $ra, 28($sp)
  /* 0x802F2770 */  sw $s0, 24($sp)
  /* 0x802F2774 */  lui $t6, 0x8036
  /* 0x802F2778 */  lw $t6, 4448($t6)
  /* 0x802F277C */  lw $s0, 332($t6)
  /* 0x802F2780 */  beq $s0, $zero, .bhv_star_spawn_loop_L802F27B4
  /* 0x802F2784 */  nop
  /* 0x802F2788 */  li $at, 1
  /* 0x802F278C */  beq $s0, $at, .bhv_star_spawn_loop_L802F27F8
  /* 0x802F2790 */  nop
  /* 0x802F2794 */  li $at, 2
  /* 0x802F2798 */  beq $s0, $at, .bhv_star_spawn_loop_L802F28F0
  /* 0x802F279C */  nop
  /* 0x802F27A0 */  li $at, 3
  /* 0x802F27A4 */  beq $s0, $at, .bhv_star_spawn_loop_L802F29F4
  /* 0x802F27A8 */  nop
  /* 0x802F27AC */  b .bhv_star_spawn_loop_L802F2A84
  /* 0x802F27B0 */  nop
.bhv_star_spawn_loop_L802F27B4:
  /* 0x802F27B4 */  lui $t7, 0x8036
  /* 0x802F27B8 */  lw $t7, 4448($t7)
  /* 0x802F27BC */  lw $t8, 212($t7)
  /* 0x802F27C0 */  addiu $t9, $t8, 4096
  /* 0x802F27C4 */  sw $t9, 212($t7)
  /* 0x802F27C8 */  lui $t0, 0x8036
  /* 0x802F27CC */  lw $t0, 4448($t0)
  /* 0x802F27D0 */  lw $t1, 340($t0)
  /* 0x802F27D4 */  slti $at, $t1, 21
  /* 0x802F27D8 */  bne $at, $zero, .bhv_star_spawn_loop_L802F27F0
  /* 0x802F27DC */  nop
  /* 0x802F27E0 */  lui $t3, 0x8036
  /* 0x802F27E4 */  lw $t3, 4448($t3)
  /* 0x802F27E8 */  li $t2, 1
  /* 0x802F27EC */  sw $t2, 332($t3)
.bhv_star_spawn_loop_L802F27F0:
  /* 0x802F27F0 */  b .bhv_star_spawn_loop_L802F2A84
  /* 0x802F27F4 */  nop
.bhv_star_spawn_loop_L802F27F8:
  /* 0x802F27F8 */  lui $a0, 0x8036
  /* 0x802F27FC */  jal 0x802E5160
  /* 0x802F2800 */  lw $a0, 4448($a0)
  /* 0x802F2804 */  lui $t4, 0x8036
  /* 0x802F2808 */  lw $t4, 4448($t4)
  /* 0x802F280C */  lwc1 $f4, 252($t4)
  /* 0x802F2810 */  lwc1 $f6, 176($t4)
  /* 0x802F2814 */  add.s $f8, $f4, $f6
  /* 0x802F2818 */  swc1 $f8, 252($t4)
  /* 0x802F281C */  lui $t5, 0x8036
  /* 0x802F2820 */  lw $t5, 4448($t5)
  /* 0x802F2824 */  li $at, 30
  /* 0x802F2828 */  lw $t6, 340($t5)
  /* 0x802F282C */  lwc1 $f4, 252($t5)
  /* 0x802F2830 */  sll $t8, $t6, 15
  /* 0x802F2834 */  div $t8, $at
  /* 0x802F2838 */  mflo $t9
  /* 0x802F283C */  andi $t7, $t9, 0xFFFF
  /* 0x802F2840 */  sra $t0, $t7, 4
  /* 0x802F2844 */  sll $t1, $t0, 2
  /* 0x802F2848 */  lui $at, 0x8038
  /* 0x802F284C */  addu $at, $at, $t1
  /* 0x802F2850 */  lwc1 $f10, 24576($at)
  /* 0x802F2854 */  lui $at, 0x43C8
  /* 0x802F2858 */  mtc1 $at, $f16
  /* 0x802F285C */  nop
  /* 0x802F2860 */  mul.s $f18, $f10, $f16
  /* 0x802F2864 */  add.s $f6, $f18, $f4
  /* 0x802F2868 */  swc1 $f6, 164($t5)
  /* 0x802F286C */  lui $t2, 0x8036
  /* 0x802F2870 */  lw $t2, 4448($t2)
  /* 0x802F2874 */  lw $t3, 212($t2)
  /* 0x802F2878 */  addiu $t4, $t3, 4096
  /* 0x802F287C */  sw $t4, 212($t2)
  /* 0x802F2880 */  lui $a0, 0x8036
  /* 0x802F2884 */  lui $a2, 0x1300
  /* 0x802F2888 */  addiu $a2, $a2, 10992
  /* 0x802F288C */  lw $a0, 4448($a0)
  /* 0x802F2890 */  jal 0x8029EDCC
  /* 0x802F2894 */  move $a1, $zero
  /* 0x802F2898 */  lui $a0, 0x4014
  /* 0x802F289C */  jal 0x802CA190
  /* 0x802F28A0 */  ori $a0, $a0, 0x11
  /* 0x802F28A4 */  lui $t6, 0x8036
  /* 0x802F28A8 */  lw $t6, 4448($t6)
  /* 0x802F28AC */  li $at, 30  ; <-- CHANGED
  /* 0x802F28B0 */  lw $t8, 340($t6)
  /* 0x802F28B4 */  bne $t8, $at, .bhv_star_spawn_loop_L802F28E8
  /* 0x802F28B8 */  nop
  /* 0x802F28BC */  lui $t7, 0x8036
  /* 0x802F28C0 */  lw $t7, 4448($t7)
  /* 0x802F28C4 */  li $t9, 2
  /* 0x802F28C8 */  sw $t9, 332($t7)
  /* 0x802F28CC */  lui $t0, 0x8036
  /* 0x802F28D0 */  lw $t0, 4448($t0)
  /* 0x802F28D4 */  mtc1 $zero, $f8
  /* 0x802F28D8 */  nop
  /* 0x802F28DC */  swc1 $f8, 184($t0)
  /* 0x802F28E0 */  jal 0x80322168
  /* 0x802F28E4 */  li $a0, 1
.bhv_star_spawn_loop_L802F28E8:
  /* 0x802F28E8 */  b .bhv_star_spawn_loop_L802F2A84
  /* 0x802F28EC */  nop
.bhv_star_spawn_loop_L802F28F0:
  /* 0x802F28F0 */  lui $t1, 0x8036
  /* 0x802F28F4 */  lw $t1, 4448($t1)
  /* 0x802F28F8 */  lw $t5, 340($t1)
  /* 0x802F28FC */  slti $at, $t5, 20
  /* 0x802F2900 */  beq $at, $zero, .bhv_star_spawn_loop_L802F2930
  /* 0x802F2904 */  nop
  /* 0x802F2908 */  lui $t3, 0x8036
  /* 0x802F290C */  lw $t3, 4448($t3)
  /* 0x802F2910 */  li $t2, 20
  /* 0x802F2914 */  lw $t4, 340($t3)
  /* 0x802F2918 */  subu $t6, $t2, $t4
  /* 0x802F291C */  mtc1 $t6, $f10
  /* 0x802F2920 */  nop
  /* 0x802F2924 */  cvt.s.w $f16, $f10
  /* 0x802F2928 */  b .bhv_star_spawn_loop_L802F2948
  /* 0x802F292C */  swc1 $f16, 176($t3)
.bhv_star_spawn_loop_L802F2930:
  /* 0x802F2930 */  lui $at, 0xC120
  /* 0x802F2934 */  lui $t8, 0x8036
  /* 0x802F2938 */  lw $t8, 4448($t8)
  /* 0x802F293C */  mtc1 $at, $f18
  /* 0x802F2940 */  nop
  /* 0x802F2944 */  swc1 $f18, 176($t8)
.bhv_star_spawn_loop_L802F2948:
  /* 0x802F2948 */  lui $a0, 0x8036
  /* 0x802F294C */  lui $a2, 0x1300
  /* 0x802F2950 */  addiu $a2, $a2, 10992
  /* 0x802F2954 */  lw $a0, 4448($a0)
  /* 0x802F2958 */  jal 0x8029EDCC
  /* 0x802F295C */  move $a1, $zero
  /* 0x802F2960 */  lui $a0, 0x8036
  /* 0x802F2964 */  jal 0x802E5160
  /* 0x802F2968 */  lw $a0, 4448($a0)
  /* 0x802F296C */  lui $t9, 0x8036
  /* 0x802F2970 */  lw $t9, 4448($t9)
  /* 0x802F2974 */  lw $t0, 340($t9)
  /* 0x802F2978 */  lw $t7, 212($t9)
  /* 0x802F297C */  sll $t1, $t0, 4
  /* 0x802F2980 */  subu $t5, $t7, $t1
  /* 0x802F2984 */  addiu $t2, $t5, 4096
  /* 0x802F2988 */  sw $t2, 212($t9)
  /* 0x802F298C */  lui $a0, 0x4014
  /* 0x802F2990 */  jal 0x802CA190
  /* 0x802F2994 */  ori $a0, $a0, 0x11
  /* 0x802F2998 */  lui $t4, 0x8036
  /* 0x802F299C */  lw $t4, 4448($t4)
  /* 0x802F29A0 */  lwc1 $f4, 164($t4)
  /* 0x802F29A4 */  lwc1 $f6, 360($t4)
  /* 0x802F29A8 */  c.lt.s $f4, $f6
  /* 0x802F29AC */  nop
  /* 0x802F29B0 */  bc1f .bhv_star_spawn_loop_L802F29EC
  /* 0x802F29B4 */  nop
  /* 0x802F29B8 */  lui $a0, 0x3057
  /* 0x802F29BC */  jal 0x802CA1E0
  /* 0x802F29C0 */  ori $a0, $a0, 0xFF91
  /* 0x802F29C4 */  jal 0x802A05D4
  /* 0x802F29C8 */  nop
  /* 0x802F29CC */  lui $t6, 0x8036
  /* 0x802F29D0 */  lw $t6, 4448($t6)
  /* 0x802F29D4 */  lwc1 $f8, 360($t6)
  /* 0x802F29D8 */  swc1 $f8, 164($t6)
  /* 0x802F29DC */  lui $t8, 0x8036
  /* 0x802F29E0 */  lw $t8, 4448($t8)
  /* 0x802F29E4 */  li $t3, 3
  /* 0x802F29E8 */  sw $t3, 332($t8)
.bhv_star_spawn_loop_L802F29EC:
  /* 0x802F29EC */  b .bhv_star_spawn_loop_L802F2A84
  /* 0x802F29F0 */  nop
.bhv_star_spawn_loop_L802F29F4:
  /* 0x802F29F4 */  lui $t0, 0x8036
  /* 0x802F29F8 */  lw $t0, 4448($t0)
  /* 0x802F29FC */  lw $t7, 212($t0)
  /* 0x802F2A00 */  addiu $t1, $t7, 2048
  /* 0x802F2A04 */  sw $t1, 212($t0)
  /* 0x802F2A08 */  lui $t5, 0x8036
  /* 0x802F2A0C */  lw $t5, 4448($t5)
  /* 0x802F2A10 */  li $at, 20
  /* 0x802F2A14 */  lw $t2, 340($t5)
  /* 0x802F2A18 */  bne $t2, $at, .bhv_star_spawn_loop_L802F2A4C
  /* 0x802F2A1C */  nop
  /* 0x802F2A20 */  li $t9, 1
  /* 0x802F2A24 */  lui $at, 0x8034
  /* 0x802F2A28 */  sw $t9, -13368($at)
  /* 0x802F2A2C */  jal 0x802A4774
  /* 0x802F2A30 */  li $a0, 10
  /* 0x802F2A34 */  lui $t4, 0x8036
  /* 0x802F2A38 */  lw $t4, 4448($t4)
  /* 0x802F2A3C */  li $at, -33
  /* 0x802F2A40 */  lh $t6, 116($t4)
  /* 0x802F2A44 */  and $t3, $t6, $at
  /* 0x802F2A48 */  sh $t3, 116($t4)
.bhv_star_spawn_loop_L802F2A4C:
  /* 0x802F2A4C */  lui $t8, 0x8036
  /* 0x802F2A50 */  lw $t8, 4448($t8)
  /* 0x802F2A54 */  lw $t7, 308($t8)
  /* 0x802F2A58 */  andi $t1, $t7, 0x8000
  /* 0x802F2A5C */  beq $t1, $zero, .bhv_star_spawn_loop_L802F2A7C
  /* 0x802F2A60 */  nop
  /* 0x802F2A64 */  lui $a0, 0x8036
  /* 0x802F2A68 */  jal 0x802CA028
  /* 0x802F2A6C */  lw $a0, 4448($a0)
  /* 0x802F2A70 */  lui $t0, 0x8036
  /* 0x802F2A74 */  lw $t0, 4448($t0)
  /* 0x802F2A78 */  sw $zero, 308($t0)
.bhv_star_spawn_loop_L802F2A7C:
  /* 0x802F2A7C */  b .bhv_star_spawn_loop_L802F2A84
  /* 0x802F2A80 */  nop
.bhv_star_spawn_loop_L802F2A84:
  /* 0x802F2A84 */  b .bhv_star_spawn_loop_L802F2A8C
  /* 0x802F2A88 */  nop
.bhv_star_spawn_loop_L802F2A8C:
  /* 0x802F2A8C */  lw $ra, 28($sp)
  /* 0x802F2A90 */  lw $s0, 24($sp)
  /* 0x802F2A94 */  addiu $sp, $sp, 40
  /* 0x802F2A98 */  jr $ra
  /* 0x802F2A9C */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x802F2768 */  addiu $sp, $sp, -40
  /* 0x802F276C */  sw $ra, 28($sp)
  /* 0x802F2770 */  sw $s0, 24($sp)
  /* 0x802F2774 */  lui $t6, 0x8036
  /* 0x802F2778 */  lw $t6, 4448($t6)
  /* 0x802F277C */  lw $s0, 332($t6)
  /* 0x802F2780 */  beq $s0, $zero, .bhv_star_spawn_loop_L802F27B4
  /* 0x802F2784 */  nop
  /* 0x802F2788 */  li $at, 1
  /* 0x802F278C */  beq $s0, $at, .bhv_star_spawn_loop_L802F27F8
  /* 0x802F2790 */  nop
  /* 0x802F2794 */  li $at, 2
  /* 0x802F2798 */  beq $s0, $at, .bhv_star_spawn_loop_L802F28F0
  /* 0x802F279C */  nop
  /* 0x802F27A0 */  li $at, 3
  /* 0x802F27A4 */  beq $s0, $at, .bhv_star_spawn_loop_L802F29F4
  /* 0x802F27A8 */  nop
  /* 0x802F27AC */  b .bhv_star_spawn_loop_L802F2A84
  /* 0x802F27B0 */  nop
.bhv_star_spawn_loop_L802F27B4:
  /* 0x802F27B4 */  lui $t7, 0x8036
  /* 0x802F27B8 */  lw $t7, 4448($t7)
  /* 0x802F27BC */  lw $t8, 212($t7)
  /* 0x802F27C0 */  addiu $t9, $t8, 4096
  /* 0x802F27C4 */  sw $t9, 212($t7)
  /* 0x802F27C8 */  lui $t0, 0x8036
  /* 0x802F27CC */  lw $t0, 4448($t0)
  /* 0x802F27D0 */  lw $t1, 340($t0)
  /* 0x802F27D4 */  slti $at, $t1, 21
  /* 0x802F27D8 */  bne $at, $zero, .bhv_star_spawn_loop_L802F27F0
  /* 0x802F27DC */  nop
  /* 0x802F27E0 */  lui $t3, 0x8036
  /* 0x802F27E4 */  lw $t3, 4448($t3)
  /* 0x802F27E8 */  li $t2, 1
  /* 0x802F27EC */  sw $t2, 332($t3)
.bhv_star_spawn_loop_L802F27F0:
  /* 0x802F27F0 */  b .bhv_star_spawn_loop_L802F2A84
  /* 0x802F27F4 */  nop
.bhv_star_spawn_loop_L802F27F8:
  /* 0x802F27F8 */  lui $a0, 0x8036
  /* 0x802F27FC */  jal 0x802E5160
  /* 0x802F2800 */  lw $a0, 4448($a0)
  /* 0x802F2804 */  lui $t4, 0x8036
  /* 0x802F2808 */  lw $t4, 4448($t4)
  /* 0x802F280C */  lwc1 $f4, 252($t4)
  /* 0x802F2810 */  lwc1 $f6, 176($t4)
  /* 0x802F2814 */  add.s $f8, $f4, $f6
  /* 0x802F2818 */  swc1 $f8, 252($t4)
  /* 0x802F281C */  lui $t5, 0x8036
  /* 0x802F2820 */  lw $t5, 4448($t5)
  /* 0x802F2824 */  li $at, 30
  /* 0x802F2828 */  lw $t6, 340($t5)
  /* 0x802F282C */  lwc1 $f4, 252($t5)
  /* 0x802F2830 */  sll $t8, $t6, 15
  /* 0x802F2834 */  div $t8, $at
  /* 0x802F2838 */  mflo $t9
  /* 0x802F283C */  andi $t7, $t9, 0xFFFF
  /* 0x802F2840 */  sra $t0, $t7, 4
  /* 0x802F2844 */  sll $t1, $t0, 2
  /* 0x802F2848 */  lui $at, 0x8038
  /* 0x802F284C */  addu $at, $at, $t1
  /* 0x802F2850 */  lwc1 $f10, 24576($at)
  /* 0x802F2854 */  lui $at, 0x43C8
  /* 0x802F2858 */  mtc1 $at, $f16
  /* 0x802F285C */  nop
  /* 0x802F2860 */  mul.s $f18, $f10, $f16
  /* 0x802F2864 */  add.s $f6, $f18, $f4
  /* 0x802F2868 */  swc1 $f6, 164($t5)
  /* 0x802F286C */  lui $t2, 0x8036
  /* 0x802F2870 */  lw $t2, 4448($t2)
  /* 0x802F2874 */  lw $t3, 212($t2)
  /* 0x802F2878 */  addiu $t4, $t3, 4096
  /* 0x802F287C */  sw $t4, 212($t2)
  /* 0x802F2880 */  lui $a0, 0x8036
  /* 0x802F2884 */  lui $a2, 0x1300
  /* 0x802F2888 */  addiu $a2, $a2, 10992
  /* 0x802F288C */  lw $a0, 4448($a0)
  /* 0x802F2890 */  jal 0x8029EDCC
  /* 0x802F2894 */  move $a1, $zero
  /* 0x802F2898 */  lui $a0, 0x4014
  /* 0x802F289C */  jal 0x802CA190
  /* 0x802F28A0 */  ori $a0, $a0, 0x11
  /* 0x802F28A4 */  lui $t6, 0x8036
  /* 0x802F28A8 */  lw $t6, 4448($t6)
  /* 0x802F28AC */  li $at, 29  ; <-- CHANGED
  /* 0x802F28B0 */  lw $t8, 340($t6)
  /* 0x802F28B4 */  bne $t8, $at, .bhv_star_spawn_loop_L802F28E8
  /* 0x802F28B8 */  nop
  /* 0x802F28BC */  lui $t7, 0x8036
  /* 0x802F28C0 */  lw $t7, 4448($t7)
  /* 0x802F28C4 */  li $t9, 2
  /* 0x802F28C8 */  sw $t9, 332($t7)
  /* 0x802F28CC */  lui $t0, 0x8036
  /* 0x802F28D0 */  lw $t0, 4448($t0)
  /* 0x802F28D4 */  mtc1 $zero, $f8
  /* 0x802F28D8 */  nop
  /* 0x802F28DC */  swc1 $f8, 184($t0)
  /* 0x802F28E0 */  jal 0x80322168
  /* 0x802F28E4 */  li $a0, 1
.bhv_star_spawn_loop_L802F28E8:
  /* 0x802F28E8 */  b .bhv_star_spawn_loop_L802F2A84
  /* 0x802F28EC */  nop
.bhv_star_spawn_loop_L802F28F0:
  /* 0x802F28F0 */  lui $t1, 0x8036
  /* 0x802F28F4 */  lw $t1, 4448($t1)
  /* 0x802F28F8 */  lw $t5, 340($t1)
  /* 0x802F28FC */  slti $at, $t5, 20
  /* 0x802F2900 */  beq $at, $zero, .bhv_star_spawn_loop_L802F2930
  /* 0x802F2904 */  nop
  /* 0x802F2908 */  lui $t3, 0x8036
  /* 0x802F290C */  lw $t3, 4448($t3)
  /* 0x802F2910 */  li $t2, 20
  /* 0x802F2914 */  lw $t4, 340($t3)
  /* 0x802F2918 */  subu $t6, $t2, $t4
  /* 0x802F291C */  mtc1 $t6, $f10
  /* 0x802F2920 */  nop
  /* 0x802F2924 */  cvt.s.w $f16, $f10
  /* 0x802F2928 */  b .bhv_star_spawn_loop_L802F2948
  /* 0x802F292C */  swc1 $f16, 176($t3)
.bhv_star_spawn_loop_L802F2930:
  /* 0x802F2930 */  lui $at, 0xC120
  /* 0x802F2934 */  lui $t8, 0x8036
  /* 0x802F2938 */  lw $t8, 4448($t8)
  /* 0x802F293C */  mtc1 $at, $f18
  /* 0x802F2940 */  nop
  /* 0x802F2944 */  swc1 $f18, 176($t8)
.bhv_star_spawn_loop_L802F2948:
  /* 0x802F2948 */  lui $a0, 0x8036
  /* 0x802F294C */  lui $a2, 0x1300
  /* 0x802F2950 */  addiu $a2, $a2, 10992
  /* 0x802F2954 */  lw $a0, 4448($a0)
  /* 0x802F2958 */  jal 0x8029EDCC
  /* 0x802F295C */  move $a1, $zero
  /* 0x802F2960 */  lui $a0, 0x8036
  /* 0x802F2964 */  jal 0x802E5160
  /* 0x802F2968 */  lw $a0, 4448($a0)
  /* 0x802F296C */  lui $t9, 0x8036
  /* 0x802F2970 */  lw $t9, 4448($t9)
  /* 0x802F2974 */  lw $t0, 340($t9)
  /* 0x802F2978 */  lw $t7, 212($t9)
  /* 0x802F297C */  sll $t1, $t0, 4
  /* 0x802F2980 */  subu $t5, $t7, $t1
  /* 0x802F2984 */  addiu $t2, $t5, 4096
  /* 0x802F2988 */  sw $t2, 212($t9)
  /* 0x802F298C */  lui $a0, 0x4014
  /* 0x802F2990 */  jal 0x802CA190
  /* 0x802F2994 */  ori $a0, $a0, 0x11
  /* 0x802F2998 */  lui $t4, 0x8036
  /* 0x802F299C */  lw $t4, 4448($t4)
  /* 0x802F29A0 */  lwc1 $f4, 164($t4)
  /* 0x802F29A4 */  lwc1 $f6, 360($t4)
  /* 0x802F29A8 */  c.lt.s $f4, $f6
  /* 0x802F29AC */  nop
  /* 0x802F29B0 */  bc1f .bhv_star_spawn_loop_L802F29EC
  /* 0x802F29B4 */  nop
  /* 0x802F29B8 */  lui $a0, 0x3057
  /* 0x802F29BC */  jal 0x802CA1E0
  /* 0x802F29C0 */  ori $a0, $a0, 0xFF91
  /* 0x802F29C4 */  jal 0x802A05D4
  /* 0x802F29C8 */  nop
  /* 0x802F29CC */  lui $t6, 0x8036
  /* 0x802F29D0 */  lw $t6, 4448($t6)
  /* 0x802F29D4 */  lwc1 $f8, 360($t6)
  /* 0x802F29D8 */  swc1 $f8, 164($t6)
  /* 0x802F29DC */  lui $t8, 0x8036
  /* 0x802F29E0 */  lw $t8, 4448($t8)
  /* 0x802F29E4 */  li $t3, 3
  /* 0x802F29E8 */  sw $t3, 332($t8)
.bhv_star_spawn_loop_L802F29EC:
  /* 0x802F29EC */  b .bhv_star_spawn_loop_L802F2A84
  /* 0x802F29F0 */  nop
.bhv_star_spawn_loop_L802F29F4:
  /* 0x802F29F4 */  lui $t0, 0x8036
  /* 0x802F29F8 */  lw $t0, 4448($t0)
  /* 0x802F29FC */  lw $t7, 212($t0)
  /* 0x802F2A00 */  addiu $t1, $t7, 2048
  /* 0x802F2A04 */  sw $t1, 212($t0)
  /* 0x802F2A08 */  lui $t5, 0x8036
  /* 0x802F2A0C */  lw $t5, 4448($t5)
  /* 0x802F2A10 */  li $at, 20
  /* 0x802F2A14 */  lw $t2, 340($t5)
  /* 0x802F2A18 */  bne $t2, $at, .bhv_star_spawn_loop_L802F2A4C
  /* 0x802F2A1C */  nop
  /* 0x802F2A20 */  li $t9, 1
  /* 0x802F2A24 */  lui $at, 0x8034
  /* 0x802F2A28 */  sw $t9, -13368($at)
  /* 0x802F2A2C */  jal 0x802A4774
  /* 0x802F2A30 */  li $a0, 10
  /* 0x802F2A34 */  lui $t4, 0x8036
  /* 0x802F2A38 */  lw $t4, 4448($t4)
  /* 0x802F2A3C */  li $at, -33
  /* 0x802F2A40 */  lh $t6, 116($t4)
  /* 0x802F2A44 */  and $t3, $t6, $at
  /* 0x802F2A48 */  sh $t3, 116($t4)
.bhv_star_spawn_loop_L802F2A4C:
  /* 0x802F2A4C */  lui $t8, 0x8036
  /* 0x802F2A50 */  lw $t8, 4448($t8)
  /* 0x802F2A54 */  lw $t7, 308($t8)
  /* 0x802F2A58 */  andi $t1, $t7, 0x8000
  /* 0x802F2A5C */  beq $t1, $zero, .bhv_star_spawn_loop_L802F2A7C
  /* 0x802F2A60 */  nop
  /* 0x802F2A64 */  lui $a0, 0x8036
  /* 0x802F2A68 */  jal 0x802CA028
  /* 0x802F2A6C */  lw $a0, 4448($a0)
  /* 0x802F2A70 */  lui $t0, 0x8036
  /* 0x802F2A74 */  lw $t0, 4448($t0)
  /* 0x802F2A78 */  sw $zero, 308($t0)
.bhv_star_spawn_loop_L802F2A7C:
  /* 0x802F2A7C */  b .bhv_star_spawn_loop_L802F2A84
  /* 0x802F2A80 */  nop
.bhv_star_spawn_loop_L802F2A84:
  /* 0x802F2A84 */  b .bhv_star_spawn_loop_L802F2A8C
  /* 0x802F2A88 */  nop
.bhv_star_spawn_loop_L802F2A8C:
  /* 0x802F2A8C */  lw $ra, 28($sp)
  /* 0x802F2A90 */  lw $s0, 24($sp)
  /* 0x802F2A94 */  addiu $sp, $sp, 40
  /* 0x802F2A98 */  jr $ra
  /* 0x802F2A9C */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x802F28AC:
  ;   was: 24 01 00 1E  li $at, 30
  ;   new: 24 01 00 1D  li $at, 29
