; Function: find_ceil_from_list
; RAM: 0x80381038  Size: 0x22C

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x80381038 */  addiu $sp, $sp, -56
  /* 0x8038103C */  sw $zero, 24($sp)
  /* 0x80381040 */  sw $zero, 24($sp)
  /* 0x80381044 */  beq $a0, $zero, .find_ceil_from_list_L8038124C
  /* 0x80381048 */  nop
.find_ceil_from_list_L8038104C:
  /* 0x8038104C */  lw $t0, 4($a0)
  /* 0x80381050 */  lw $a0, 0($a0)
  /* 0x80381054 */  lh $t1, 10($t0)
  /* 0x80381058 */  lh $t2, 14($t0)
  /* 0x8038105C */  lh $t4, 20($t0)
  /* 0x80381060 */  lh $t3, 16($t0)
  /* 0x80381064 */  subu $t6, $t2, $a3
  /* 0x80381068 */  subu $t7, $t3, $t1
  /* 0x8038106C */  multu $t6, $t7
  /* 0x80381070 */  subu $t6, $t4, $t2
  /* 0x80381074 */  subu $t9, $t1, $a1
  /* 0x80381078 */  mflo $t8
  /* 0x8038107C */  nop
  /* 0x80381080 */  nop
  /* 0x80381084 */  multu $t9, $t6
  /* 0x80381088 */  mflo $t7
  /* 0x8038108C */  subu $t9, $t8, $t7
  /* 0x80381090 */  blez $t9, .find_ceil_from_list_L803810A0
  /* 0x80381094 */  nop
  /* 0x80381098 */  b .find_ceil_from_list_L80381244
  /* 0x8038109C */  nop
.find_ceil_from_list_L803810A0:
  /* 0x803810A0 */  lh $t5, 22($t0)
  /* 0x803810A4 */  lh $t6, 26($t0)
  /* 0x803810A8 */  sw $t6, 28($sp)
  /* 0x803810AC */  subu $t8, $t4, $a3
  /* 0x803810B0 */  subu $t7, $t5, $t3
  /* 0x803810B4 */  multu $t8, $t7
  /* 0x803810B8 */  lw $t8, 28($sp)
  /* 0x803810BC */  subu $t6, $t3, $a1
  /* 0x803810C0 */  subu $t7, $t8, $t4
  /* 0x803810C4 */  mflo $t9
  /* 0x803810C8 */  nop
  /* 0x803810CC */  nop
  /* 0x803810D0 */  multu $t6, $t7
  /* 0x803810D4 */  mflo $t8
  /* 0x803810D8 */  subu $t6, $t9, $t8
  /* 0x803810DC */  blez $t6, .find_ceil_from_list_L803810EC
  /* 0x803810E0 */  nop
  /* 0x803810E4 */  b .find_ceil_from_list_L80381244
  /* 0x803810E8 */  nop
.find_ceil_from_list_L803810EC:
  /* 0x803810EC */  lw $t7, 28($sp)
  /* 0x803810F0 */  subu $t8, $t1, $t5
  /* 0x803810F4 */  subu $t9, $t7, $a3
  /* 0x803810F8 */  multu $t9, $t8
  /* 0x803810FC */  subu $t9, $t5, $a1
  /* 0x80381100 */  subu $t8, $t2, $t7
  /* 0x80381104 */  mflo $t6
  /* 0x80381108 */  nop
  /* 0x8038110C */  nop
  /* 0x80381110 */  multu $t9, $t8
  /* 0x80381114 */  mflo $t7
  /* 0x80381118 */  subu $t9, $t6, $t7
  /* 0x8038111C */  blez $t9, .find_ceil_from_list_L8038112C
  /* 0x80381120 */  nop
  /* 0x80381124 */  b .find_ceil_from_list_L80381244
  /* 0x80381128 */  nop
.find_ceil_from_list_L8038112C:
  /* 0x8038112C */  lui $t8, 0x8036
  /* 0x80381130 */  lh $t8, 4480($t8)
  /* 0x80381134 */  beq $t8, $zero, .find_ceil_from_list_L8038115C
  /* 0x80381138 */  nop
  /* 0x8038113C */  lb $t6, 4($t0)
  /* 0x80381140 */  andi $t7, $t6, 0x2
  /* 0x80381144 */  beq $t7, $zero, .find_ceil_from_list_L80381154
  /* 0x80381148 */  nop
  /* 0x8038114C */  b .find_ceil_from_list_L80381244
  /* 0x80381150 */  nop
.find_ceil_from_list_L80381154:
  /* 0x80381154 */  b .find_ceil_from_list_L80381174
  /* 0x80381158 */  nop
.find_ceil_from_list_L8038115C:
  /* 0x8038115C */  lh $t9, 0($t0)
  /* 0x80381160 */  li $at, 114
  /* 0x80381164 */  bne $t9, $at, .find_ceil_from_list_L80381174
  /* 0x80381168 */  nop
  /* 0x8038116C */  b .find_ceil_from_list_L80381244
  /* 0x80381170 */  nop
.find_ceil_from_list_L80381174:
  /* 0x80381174 */  lwc1 $f4, 28($t0)
  /* 0x80381178 */  swc1 $f4, 20($sp)
  /* 0x8038117C */  lwc1 $f6, 32($t0)
  /* 0x80381180 */  swc1 $f6, 16($sp)
  /* 0x80381184 */  lwc1 $f8, 36($t0)
  /* 0x80381188 */  swc1 $f8, 12($sp)
  /* 0x8038118C */  lwc1 $f10, 40($t0)
  /* 0x80381190 */  swc1 $f10, 8($sp)
  /* 0x80381194 */  lwc1 $f16, 16($sp)
  /* 0x80381198 */  mtc1 $zero, $f18
  /* 0x8038119C */  nop
  /* 0x803811A0 */  c.eq.s $f16, $f18
  /* 0x803811A4 */  nop
  /* 0x803811A8 */  bc1f .find_ceil_from_list_L803811B8
  /* 0x803811AC */  nop
  /* 0x803811B0 */  b .find_ceil_from_list_L80381244
  /* 0x803811B4 */  nop
.find_ceil_from_list_L803811B8:
  /* 0x803811B8 */  mtc1 $a1, $f4
  /* 0x803811BC */  mtc1 $a3, $f18
  /* 0x803811C0 */  lwc1 $f8, 20($sp)
  /* 0x803811C4 */  cvt.s.w $f6, $f4
  /* 0x803811C8 */  lwc1 $f16, 12($sp)
  /* 0x803811CC */  cvt.s.w $f4, $f18
  /* 0x803811D0 */  mul.s $f10, $f6, $f8
  /* 0x803811D4 */  lwc1 $f18, 8($sp)
  /* 0x803811D8 */  mul.s $f6, $f16, $f4
  /* 0x803811DC */  add.s $f8, $f10, $f6
  /* 0x803811E0 */  lwc1 $f10, 16($sp)
  /* 0x803811E4 */  add.s $f16, $f8, $f18
  /* 0x803811E8 */  neg.s $f4, $f16
  /* 0x803811EC */  div.s $f6, $f4, $f10
  /* 0x803811F0 */  swc1 $f6, 4($sp)  ; <-- CHANGED
  /* 0x803811F4 */  mtc1 $a2, $f4  ; <-- CHANGED
  /* 0x803811F8 */  lui $at, 0xC29C  ; <-- CHANGED
  /* 0x803811FC */  mtc1 $at, $f18  ; <-- CHANGED
  /* 0x80381200 */  lwc1 $f8, 4($sp)  ; <-- CHANGED
  /* 0x80381204 */  cvt.s.w $f10, $f4  ; <-- CHANGED
  /* 0x80381208 */  sub.s $f16, $f8, $f18  ; <-- CHANGED
  /* 0x8038120C */  mtc1 $zero, $f8  ; <-- CHANGED
  /* 0x80381210 */  sub.s $f6, $f10, $f16  ; <-- CHANGED
  /* 0x80381214 */  c.lt.s $f8, $f6  ; <-- CHANGED
  /* 0x80381218 */  nop  ; <-- CHANGED
  /* 0x8038121C */  bc1f .find_ceil_from_list_L8038122C  ; <-- CHANGED
  /* 0x80381220 */  nop  ; <-- CHANGED
  /* 0x80381224 */  b .find_ceil_from_list_L80381244  ; <-- CHANGED
  /* 0x80381228 */  nop  ; <-- CHANGED
.find_ceil_from_list_L8038122C:
  /* 0x8038122C */  lwc1 $f18, 4($sp)
  /* 0x80381230 */  lw $t8, 72($sp)
  /* 0x80381234 */  swc1 $f18, 0($t8)
  /* 0x80381238 */  sw $t0, 24($sp)
  /* 0x8038123C */  b .find_ceil_from_list_L8038124C
  /* 0x80381240 */  nop
.find_ceil_from_list_L80381244:
  /* 0x80381244 */  bne $a0, $zero, .find_ceil_from_list_L8038104C
  /* 0x80381248 */  nop
.find_ceil_from_list_L8038124C:
  /* 0x8038124C */  b .find_ceil_from_list_L8038125C
  /* 0x80381250 */  lw $v0, 24($sp)
  /* 0x80381254 */  b .find_ceil_from_list_L8038125C
  /* 0x80381258 */  nop
.find_ceil_from_list_L8038125C:
  /* 0x8038125C */  jr $ra
  /* 0x80381260 */  addiu $sp, $sp, 56
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x80381038 */  addiu $sp, $sp, -56
  /* 0x8038103C */  sw $zero, 24($sp)
  /* 0x80381040 */  sw $zero, 24($sp)
  /* 0x80381044 */  beq $a0, $zero, .find_ceil_from_list_L8038124C
  /* 0x80381048 */  nop
.find_ceil_from_list_L8038104C:
  /* 0x8038104C */  lw $t0, 4($a0)
  /* 0x80381050 */  lw $a0, 0($a0)
  /* 0x80381054 */  lh $t1, 10($t0)
  /* 0x80381058 */  lh $t2, 14($t0)
  /* 0x8038105C */  lh $t4, 20($t0)
  /* 0x80381060 */  lh $t3, 16($t0)
  /* 0x80381064 */  subu $t6, $t2, $a3
  /* 0x80381068 */  subu $t7, $t3, $t1
  /* 0x8038106C */  multu $t6, $t7
  /* 0x80381070 */  subu $t6, $t4, $t2
  /* 0x80381074 */  subu $t9, $t1, $a1
  /* 0x80381078 */  mflo $t8
  /* 0x8038107C */  nop
  /* 0x80381080 */  nop
  /* 0x80381084 */  multu $t9, $t6
  /* 0x80381088 */  mflo $t7
  /* 0x8038108C */  subu $t9, $t8, $t7
  /* 0x80381090 */  blez $t9, .find_ceil_from_list_L803810A0
  /* 0x80381094 */  nop
  /* 0x80381098 */  b .find_ceil_from_list_L80381244
  /* 0x8038109C */  nop
.find_ceil_from_list_L803810A0:
  /* 0x803810A0 */  lh $t5, 22($t0)
  /* 0x803810A4 */  lh $t6, 26($t0)
  /* 0x803810A8 */  sw $t6, 28($sp)
  /* 0x803810AC */  subu $t8, $t4, $a3
  /* 0x803810B0 */  subu $t7, $t5, $t3
  /* 0x803810B4 */  multu $t8, $t7
  /* 0x803810B8 */  lw $t8, 28($sp)
  /* 0x803810BC */  subu $t6, $t3, $a1
  /* 0x803810C0 */  subu $t7, $t8, $t4
  /* 0x803810C4 */  mflo $t9
  /* 0x803810C8 */  nop
  /* 0x803810CC */  nop
  /* 0x803810D0 */  multu $t6, $t7
  /* 0x803810D4 */  mflo $t8
  /* 0x803810D8 */  subu $t6, $t9, $t8
  /* 0x803810DC */  blez $t6, .find_ceil_from_list_L803810EC
  /* 0x803810E0 */  nop
  /* 0x803810E4 */  b .find_ceil_from_list_L80381244
  /* 0x803810E8 */  nop
.find_ceil_from_list_L803810EC:
  /* 0x803810EC */  lw $t7, 28($sp)
  /* 0x803810F0 */  subu $t8, $t1, $t5
  /* 0x803810F4 */  subu $t9, $t7, $a3
  /* 0x803810F8 */  multu $t9, $t8
  /* 0x803810FC */  subu $t9, $t5, $a1
  /* 0x80381100 */  subu $t8, $t2, $t7
  /* 0x80381104 */  mflo $t6
  /* 0x80381108 */  nop
  /* 0x8038110C */  nop
  /* 0x80381110 */  multu $t9, $t8
  /* 0x80381114 */  mflo $t7
  /* 0x80381118 */  subu $t9, $t6, $t7
  /* 0x8038111C */  blez $t9, .find_ceil_from_list_L8038112C
  /* 0x80381120 */  nop
  /* 0x80381124 */  b .find_ceil_from_list_L80381244
  /* 0x80381128 */  nop
.find_ceil_from_list_L8038112C:
  /* 0x8038112C */  lui $t8, 0x8036
  /* 0x80381130 */  lh $t8, 4480($t8)
  /* 0x80381134 */  beq $t8, $zero, .find_ceil_from_list_L8038115C
  /* 0x80381138 */  nop
  /* 0x8038113C */  lb $t6, 4($t0)
  /* 0x80381140 */  andi $t7, $t6, 0x2
  /* 0x80381144 */  beq $t7, $zero, .find_ceil_from_list_L80381154
  /* 0x80381148 */  nop
  /* 0x8038114C */  b .find_ceil_from_list_L80381244
  /* 0x80381150 */  nop
.find_ceil_from_list_L80381154:
  /* 0x80381154 */  b .find_ceil_from_list_L80381174
  /* 0x80381158 */  nop
.find_ceil_from_list_L8038115C:
  /* 0x8038115C */  lh $t9, 0($t0)
  /* 0x80381160 */  li $at, 114
  /* 0x80381164 */  bne $t9, $at, .find_ceil_from_list_L80381174
  /* 0x80381168 */  nop
  /* 0x8038116C */  b .find_ceil_from_list_L80381244
  /* 0x80381170 */  nop
.find_ceil_from_list_L80381174:
  /* 0x80381174 */  lwc1 $f4, 28($t0)
  /* 0x80381178 */  swc1 $f4, 20($sp)
  /* 0x8038117C */  lwc1 $f6, 32($t0)
  /* 0x80381180 */  swc1 $f6, 16($sp)
  /* 0x80381184 */  lwc1 $f8, 36($t0)
  /* 0x80381188 */  swc1 $f8, 12($sp)
  /* 0x8038118C */  lwc1 $f10, 40($t0)
  /* 0x80381190 */  swc1 $f10, 8($sp)
  /* 0x80381194 */  lwc1 $f16, 16($sp)
  /* 0x80381198 */  mtc1 $zero, $f18
  /* 0x8038119C */  nop
  /* 0x803811A0 */  c.eq.s $f16, $f18
  /* 0x803811A4 */  nop
  /* 0x803811A8 */  bc1f .find_ceil_from_list_L803811B8
  /* 0x803811AC */  nop
  /* 0x803811B0 */  b .find_ceil_from_list_L80381244
  /* 0x803811B4 */  nop
.find_ceil_from_list_L803811B8:
  /* 0x803811B8 */  mtc1 $a1, $f4
  /* 0x803811BC */  mtc1 $a3, $f18
  /* 0x803811C0 */  lwc1 $f8, 20($sp)
  /* 0x803811C4 */  cvt.s.w $f6, $f4
  /* 0x803811C8 */  lwc1 $f16, 12($sp)
  /* 0x803811CC */  cvt.s.w $f4, $f18
  /* 0x803811D0 */  mul.s $f10, $f6, $f8
  /* 0x803811D4 */  lwc1 $f18, 8($sp)
  /* 0x803811D8 */  mul.s $f6, $f16, $f4
  /* 0x803811DC */  add.s $f8, $f10, $f6
  /* 0x803811E0 */  lwc1 $f10, 16($sp)
  /* 0x803811E4 */  add.s $f16, $f8, $f18
  /* 0x803811E8 */  neg.s $f4, $f16
  /* 0x803811EC */  div.s $f6, $f4, $f10
  /* 0x803811F0 */  add.s $f6, $f6, $f6  ; <-- CHANGED
  /* 0x803811F4 */  add.s $f6, $f6, $f6  ; <-- CHANGED
  /* 0x803811F8 */  swc1 $f6, 4($sp)  ; <-- CHANGED
  /* 0x803811FC */  mtc1 $a2, $f4  ; <-- CHANGED
  /* 0x80381200 */  lui $at, 0xC29C  ; <-- CHANGED
  /* 0x80381204 */  mtc1 $at, $f18  ; <-- CHANGED
  /* 0x80381208 */  lwc1 $f8, 4($sp)  ; <-- CHANGED
  /* 0x8038120C */  cvt.s.w $f10, $f4  ; <-- CHANGED
  /* 0x80381210 */  sub.s $f16, $f8, $f18  ; <-- CHANGED
  /* 0x80381214 */  mtc1 $zero, $f8  ; <-- CHANGED
  /* 0x80381218 */  sub.s $f6, $f10, $f16  ; <-- CHANGED
  /* 0x8038121C */  c.lt.s $f8, $f6  ; <-- CHANGED
  /* 0x80381220 */  bc1f .find_ceil_from_list_L8038122C  ; <-- CHANGED
  /* 0x80381224 */  nop  ; <-- CHANGED
  /* 0x80381228 */  b .find_ceil_from_list_L80381244  ; <-- CHANGED
.find_ceil_from_list_L8038122C:
  /* 0x8038122C */  lwc1 $f18, 4($sp)
  /* 0x80381230 */  lw $t8, 72($sp)
  /* 0x80381234 */  swc1 $f18, 0($t8)
  /* 0x80381238 */  sw $t0, 24($sp)
  /* 0x8038123C */  b .find_ceil_from_list_L8038124C
  /* 0x80381240 */  nop
.find_ceil_from_list_L80381244:
  /* 0x80381244 */  bne $a0, $zero, .find_ceil_from_list_L8038104C
  /* 0x80381248 */  nop
.find_ceil_from_list_L8038124C:
  /* 0x8038124C */  b .find_ceil_from_list_L8038125C
  /* 0x80381250 */  lw $v0, 24($sp)
  /* 0x80381254 */  b .find_ceil_from_list_L8038125C
  /* 0x80381258 */  nop
.find_ceil_from_list_L8038125C:
  /* 0x8038125C */  jr $ra
  /* 0x80381260 */  addiu $sp, $sp, 56
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x803811F0:
  ;   was: E7 A6 00 04  swc1 $f6, 4($sp)
  ;   new: 46 06 31 80  add.s $f6, $f6, $f6
  ; 0x803811F4:
  ;   was: 44 86 20 00  mtc1 $a2, $f4
  ;   new: 46 06 31 80  add.s $f6, $f6, $f6
  ; 0x803811F8:
  ;   was: 3C 01 C2 9C  lui $at, 0xC29C
  ;   new: E7 A6 00 04  swc1 $f6, 4($sp)
  ; 0x803811FC:
  ;   was: 44 81 90 00  mtc1 $at, $f18
  ;   new: 44 86 20 00  mtc1 $a2, $f4
  ; 0x80381200:
  ;   was: C7 A8 00 04  lwc1 $f8, 4($sp)
  ;   new: 3C 01 C2 9C  lui $at, 0xC29C
  ; 0x80381204:
  ;   was: 46 80 22 A0  cvt.s.w $f10, $f4
  ;   new: 44 81 90 00  mtc1 $at, $f18
  ; 0x80381208:
  ;   was: 46 12 44 01  sub.s $f16, $f8, $f18
  ;   new: C7 A8 00 04  lwc1 $f8, 4($sp)
  ; 0x8038120C:
  ;   was: 44 80 40 00  mtc1 $zero, $f8
  ;   new: 46 80 22 A0  cvt.s.w $f10, $f4
  ; 0x80381210:
  ;   was: 46 10 51 81  sub.s $f6, $f10, $f16
  ;   new: 46 12 44 01  sub.s $f16, $f8, $f18
  ; 0x80381214:
  ;   was: 46 06 40 3C  c.lt.s $f8, $f6
  ;   new: 44 80 40 00  mtc1 $zero, $f8
  ; 0x80381218:
  ;   was: 00 00 00 00  nop
  ;   new: 46 10 51 81  sub.s $f6, $f10, $f16
  ; 0x8038121C:
  ;   was: 45 00 00 03  bc1f .find_ceil_from_list_L8038122C
  ;   new: 46 06 40 3C  c.lt.s $f8, $f6
  ; 0x80381220:
  ;   was: 00 00 00 00  nop
  ;   new: 45 00 00 02  bc1f .find_ceil_from_list_L8038122C
  ; 0x80381224:
  ;   was: 10 00 00 07  b .find_ceil_from_list_L80381244
  ;   new: 00 00 00 00  nop
  ; 0x80381228:
  ;   was: 00 00 00 00  nop
  ;   new: 10 00 00 06  b .find_ceil_from_list_L80381244
