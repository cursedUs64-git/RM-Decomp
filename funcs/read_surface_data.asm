; Function: read_surface_data
; RAM: 0x80382B7C  Size: 0x408

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x80382B7C */  addiu $sp, $sp, -128
  /* 0x80382B80 */  sw $ra, 52($sp)
  /* 0x80382B84 */  sw $a0, 128($sp)
  /* 0x80382B88 */  sw $a1, 132($sp)
  /* 0x80382B8C */  sw $s7, 48($sp)
  /* 0x80382B90 */  sw $s6, 44($sp)
  /* 0x80382B94 */  sw $s5, 40($sp)
  /* 0x80382B98 */  sw $s4, 36($sp)
  /* 0x80382B9C */  sw $s3, 32($sp)
  /* 0x80382BA0 */  sw $s2, 28($sp)
  /* 0x80382BA4 */  sw $s1, 24($sp)
  /* 0x80382BA8 */  sw $s0, 20($sp)
  /* 0x80382BAC */  lw $t6, 132($sp)
  /* 0x80382BB0 */  lw $t7, 0($t6)
  /* 0x80382BB4 */  lh $t8, 0($t7)
  /* 0x80382BB8 */  sll $t9, $t8, 2
  /* 0x80382BBC */  subu $t9, $t9, $t8
  /* 0x80382BC0 */  sh $t9, 62($sp)
  /* 0x80382BC4 */  lw $t0, 132($sp)
  /* 0x80382BC8 */  lw $t1, 0($t0)
  /* 0x80382BCC */  lh $t2, 2($t1)
  /* 0x80382BD0 */  sll $t3, $t2, 2
  /* 0x80382BD4 */  subu $t3, $t3, $t2
  /* 0x80382BD8 */  sh $t3, 60($sp)
  /* 0x80382BDC */  lw $t4, 132($sp)
  /* 0x80382BE0 */  lw $t5, 0($t4)
  /* 0x80382BE4 */  lh $t6, 4($t5)
  /* 0x80382BE8 */  sll $t7, $t6, 2
  /* 0x80382BEC */  subu $t7, $t7, $t6
  /* 0x80382BF0 */  sh $t7, 58($sp)
  /* 0x80382BF4 */  lh $t9, 62($sp)
  /* 0x80382BF8 */  lw $t8, 128($sp)
  /* 0x80382BFC */  sll $t0, $t9, 1
  /* 0x80382C00 */  addu $t1, $t8, $t0
  /* 0x80382C04 */  lh $s0, 0($t1)
  /* 0x80382C08 */  lh $t3, 62($sp)
  /* 0x80382C0C */  lw $t2, 128($sp)
  /* 0x80382C10 */  sll $t4, $t3, 1
  /* 0x80382C14 */  addu $t5, $t2, $t4
  /* 0x80382C18 */  lh $s1, 2($t5)
  /* 0x80382C1C */  lh $t7, 62($sp)
  /* 0x80382C20 */  lw $t6, 128($sp)
  /* 0x80382C24 */  sll $t9, $t7, 1
  /* 0x80382C28 */  addu $t8, $t6, $t9
  /* 0x80382C2C */  lh $s2, 4($t8)
  /* 0x80382C30 */  lh $t1, 60($sp)
  /* 0x80382C34 */  lw $t0, 128($sp)
  /* 0x80382C38 */  sll $t3, $t1, 1
  /* 0x80382C3C */  addu $t2, $t0, $t3
  /* 0x80382C40 */  lh $s3, 0($t2)
  /* 0x80382C44 */  lh $t5, 60($sp)
  /* 0x80382C48 */  lw $t4, 128($sp)
  /* 0x80382C4C */  sll $t7, $t5, 1
  /* 0x80382C50 */  addu $t6, $t4, $t7
  /* 0x80382C54 */  lh $s4, 2($t6)
  /* 0x80382C58 */  lh $t8, 60($sp)
  /* 0x80382C5C */  lw $t9, 128($sp)
  /* 0x80382C60 */  sll $t1, $t8, 1
  /* 0x80382C64 */  addu $t0, $t9, $t1
  /* 0x80382C68 */  lh $s5, 4($t0)
  /* 0x80382C6C */  lh $t2, 58($sp)
  /* 0x80382C70 */  lw $t3, 128($sp)
  /* 0x80382C74 */  sll $t5, $t2, 1
  /* 0x80382C78 */  addu $t4, $t3, $t5
  /* 0x80382C7C */  lh $s6, 0($t4)
  /* 0x80382C80 */  lh $t6, 58($sp)
  /* 0x80382C84 */  lw $t7, 128($sp)
  /* 0x80382C88 */  sll $t8, $t6, 1
  /* 0x80382C8C */  addu $t9, $t7, $t8
  /* 0x80382C90 */  lh $s7, 2($t9)
  /* 0x80382C94 */  lh $t0, 58($sp)
  /* 0x80382C98 */  lw $t1, 128($sp)
  /* 0x80382C9C */  sll $t2, $t0, 1
  /* 0x80382CA0 */  addu $t3, $t1, $t2
  /* 0x80382CA4 */  lh $t5, 4($t3)
  /* 0x80382CA8 */  sw $t5, 88($sp)  ; <-- CHANGED
  /* 0x80382CAC */  lw $t6, 88($sp)  ; <-- CHANGED
  /* 0x80382CB0 */  subu $t4, $s4, $s1  ; <-- CHANGED
  /* 0x80382CB4 */  subu $t9, $s5, $s2  ; <-- CHANGED
  /* 0x80382CB8 */  subu $t7, $t6, $s5  ; <-- CHANGED
  /* 0x80382CBC */  multu $t4, $t7  ; <-- CHANGED
  /* 0x80382CC0 */  subu $t0, $s7, $s4  ; <-- CHANGED
  /* 0x80382CC4 */  mflo $t8  ; <-- CHANGED
  /* 0x80382CC8 */  nop  ; <-- CHANGED
  /* 0x80382CCC */  nop  ; <-- CHANGED
  /* 0x80382CD0 */  multu $t9, $t0  ; <-- CHANGED
  /* 0x80382CD4 */  mflo $t1  ; <-- CHANGED
  /* 0x80382CD8 */  subu $t2, $t8, $t1  ; <-- CHANGED
  /* 0x80382CDC */  mtc1 $t2, $f4  ; <-- CHANGED
  /* 0x80382CE0 */  nop  ; <-- CHANGED
  /* 0x80382CE4 */  cvt.s.w $f6, $f4  ; <-- CHANGED
  /* 0x80382CE8 */  swc1 $f6, 76($sp)  ; <-- CHANGED
  /* 0x80382CEC */  subu $t3, $s5, $s2  ; <-- CHANGED
  /* 0x80382CF0 */  subu $t5, $s6, $s3  ; <-- CHANGED
  /* 0x80382CF4 */  multu $t3, $t5  ; <-- CHANGED
  /* 0x80382CF8 */  lw $t7, 88($sp)  ; <-- CHANGED
  /* 0x80382CFC */  subu $t4, $s3, $s0  ; <-- CHANGED
  /* 0x80382D00 */  subu $t9, $t7, $s5  ; <-- CHANGED
  /* 0x80382D04 */  mflo $t6  ; <-- CHANGED
  /* 0x80382D08 */  nop  ; <-- CHANGED
  /* 0x80382D0C */  nop  ; <-- CHANGED
  /* 0x80382D10 */  multu $t4, $t9  ; <-- CHANGED
  /* 0x80382D14 */  mflo $t0  ; <-- CHANGED
  /* 0x80382D18 */  subu $t8, $t6, $t0  ; <-- CHANGED
  /* 0x80382D1C */  mtc1 $t8, $f8  ; <-- CHANGED
  /* 0x80382D20 */  nop  ; <-- CHANGED
  /* 0x80382D24 */  cvt.s.w $f10, $f8  ; <-- CHANGED
  /* 0x80382D28 */  swc1 $f10, 72($sp)  ; <-- CHANGED
  /* 0x80382D2C */  subu $t1, $s3, $s0  ; <-- CHANGED
  /* 0x80382D30 */  subu $t2, $s7, $s4  ; <-- CHANGED
  /* 0x80382D34 */  multu $t1, $t2  ; <-- CHANGED
  /* 0x80382D38 */  subu $t5, $s4, $s1  ; <-- CHANGED
  /* 0x80382D3C */  subu $t7, $s6, $s3  ; <-- CHANGED
  /* 0x80382D40 */  mflo $t3  ; <-- CHANGED
  /* 0x80382D44 */  nop  ; <-- CHANGED
  /* 0x80382D48 */  nop  ; <-- CHANGED
  /* 0x80382D4C */  multu $t5, $t7  ; <-- CHANGED
  /* 0x80382D50 */  mflo $t4  ; <-- CHANGED
  /* 0x80382D54 */  subu $t9, $t3, $t4  ; <-- CHANGED
  /* 0x80382D58 */  mtc1 $t9, $f16  ; <-- CHANGED
  /* 0x80382D5C */  nop  ; <-- CHANGED
  /* 0x80382D60 */  cvt.s.w $f18, $f16
  /* 0x80382D64 */  swc1 $f18, 68($sp)
  /* 0x80382D68 */  lwc1 $f4, 76($sp)
  /* 0x80382D6C */  lwc1 $f8, 72($sp)
  /* 0x80382D70 */  lwc1 $f18, 68($sp)
  /* 0x80382D74 */  mul.s $f6, $f4, $f4
  /* 0x80382D78 */  nop
  /* 0x80382D7C */  mul.s $f10, $f8, $f8
  /* 0x80382D80 */  add.s $f16, $f6, $f10
  /* 0x80382D84 */  mul.s $f4, $f18, $f18
  /* 0x80382D88 */  jal 0x80323A50
  /* 0x80382D8C */  add.s $f12, $f16, $f4
  /* 0x80382D90 */  swc1 $f0, 64($sp)
  /* 0x80382D94 */  sw $s1, 80($sp)
  /* 0x80382D98 */  lw $t6, 80($sp)
  /* 0x80382D9C */  slt $at, $s4, $t6
  /* 0x80382DA0 */  beq $at, $zero, .read_surface_data_L80382DAC
  /* 0x80382DA4 */  nop
  /* 0x80382DA8 */  sw $s4, 80($sp)
.read_surface_data_L80382DAC:
  /* 0x80382DAC */  lw $t0, 80($sp)
  /* 0x80382DB0 */  slt $at, $s7, $t0
  /* 0x80382DB4 */  beq $at, $zero, .read_surface_data_L80382DC0
  /* 0x80382DB8 */  nop
  /* 0x80382DBC */  sw $s7, 80($sp)
.read_surface_data_L80382DC0:
  /* 0x80382DC0 */  sw $s1, 84($sp)
  /* 0x80382DC4 */  lw $t8, 84($sp)
  /* 0x80382DC8 */  slt $at, $t8, $s4
  /* 0x80382DCC */  beq $at, $zero, .read_surface_data_L80382DD8
  /* 0x80382DD0 */  nop
  /* 0x80382DD4 */  sw $s4, 84($sp)
.read_surface_data_L80382DD8:
  /* 0x80382DD8 */  lw $t1, 84($sp)
  /* 0x80382DDC */  slt $at, $t1, $s7
  /* 0x80382DE0 */  beq $at, $zero, .read_surface_data_L80382DEC
  /* 0x80382DE4 */  nop
  /* 0x80382DE8 */  sw $s7, 84($sp)
.read_surface_data_L80382DEC:
  /* 0x80382DEC */  lwc1 $f8, 64($sp)
  /* 0x80382DF0 */  lui $at, 0x8039
  /* 0x80382DF4 */  ldc1 $f10, -17456($at)
  /* 0x80382DF8 */  cvt.d.s $f6, $f8
  /* 0x80382DFC */  c.lt.d $f6, $f10
  /* 0x80382E00 */  nop
  /* 0x80382E04 */  bc1f .read_surface_data_L80382E14
  /* 0x80382E08 */  nop
  /* 0x80382E0C */  b .read_surface_data_L80382F58
  /* 0x80382E10 */  move $v0, $zero
.read_surface_data_L80382E14:
  /* 0x80382E14 */  lwc1 $f16, 64($sp)
  /* 0x80382E18 */  lui $at, 0x3FF0
  /* 0x80382E1C */  mtc1 $at, $f19
  /* 0x80382E20 */  mtc1 $zero, $f18
  /* 0x80382E24 */  cvt.d.s $f4, $f16
  /* 0x80382E28 */  div.d $f8, $f18, $f4
  /* 0x80382E2C */  cvt.s.d $f6, $f8
  /* 0x80382E30 */  swc1 $f6, 64($sp)
  /* 0x80382E34 */  lwc1 $f10, 76($sp)
  /* 0x80382E38 */  lwc1 $f16, 64($sp)
  /* 0x80382E3C */  mul.s $f18, $f10, $f16
  /* 0x80382E40 */  swc1 $f18, 76($sp)
  /* 0x80382E44 */  lwc1 $f4, 72($sp)
  /* 0x80382E48 */  lwc1 $f8, 64($sp)
  /* 0x80382E4C */  mul.s $f6, $f4, $f8
  /* 0x80382E50 */  swc1 $f6, 72($sp)
  /* 0x80382E54 */  lwc1 $f10, 68($sp)
  /* 0x80382E58 */  lwc1 $f16, 64($sp)
  /* 0x80382E5C */  mul.s $f18, $f10, $f16
  /* 0x80382E60 */  swc1 $f18, 68($sp)
  /* 0x80382E64 */  jal 0x803824F8
  /* 0x80382E68 */  nop
  /* 0x80382E6C */  sw $v0, 124($sp)
  /* 0x80382E70 */  lw $t2, 124($sp)
  /* 0x80382E74 */  sh $s0, 10($t2)
  /* 0x80382E78 */  lw $t5, 124($sp)
  /* 0x80382E7C */  sh $s3, 16($t5)
  /* 0x80382E80 */  lw $t7, 124($sp)
  /* 0x80382E84 */  sh $s6, 22($t7)
  /* 0x80382E88 */  lw $t3, 124($sp)
  /* 0x80382E8C */  sh $s1, 12($t3)
  /* 0x80382E90 */  lw $t4, 124($sp)
  /* 0x80382E94 */  sh $s4, 18($t4)
  /* 0x80382E98 */  lw $t9, 124($sp)
  /* 0x80382E9C */  sh $s7, 24($t9)
  /* 0x80382EA0 */  lw $t6, 124($sp)
  /* 0x80382EA4 */  sh $s2, 14($t6)
  /* 0x80382EA8 */  lw $t0, 124($sp)
  /* 0x80382EAC */  sh $s5, 20($t0)
  /* 0x80382EB0 */  lw $t8, 88($sp)
  /* 0x80382EB4 */  lw $t1, 124($sp)
  /* 0x80382EB8 */  sh $t8, 26($t1)
  /* 0x80382EBC */  lwc1 $f4, 76($sp)
  /* 0x80382EC0 */  lw $t2, 124($sp)
  /* 0x80382EC4 */  swc1 $f4, 28($t2)
  /* 0x80382EC8 */  lwc1 $f8, 72($sp)
  /* 0x80382ECC */  lw $t5, 124($sp)
  /* 0x80382ED0 */  swc1 $f8, 32($t5)
  /* 0x80382ED4 */  lwc1 $f6, 68($sp)
  /* 0x80382ED8 */  lw $t7, 124($sp)
  /* 0x80382EDC */  swc1 $f6, 36($t7)
  /* 0x80382EE0 */  mtc1 $s0, $f10
  /* 0x80382EE4 */  mtc1 $s1, $f6
  /* 0x80382EE8 */  lwc1 $f18, 76($sp)
  /* 0x80382EEC */  cvt.s.w $f16, $f10
  /* 0x80382EF0 */  lwc1 $f8, 72($sp)
  /* 0x80382EF4 */  lw $t3, 124($sp)
  /* 0x80382EF8 */  cvt.s.w $f10, $f6
  /* 0x80382EFC */  mul.s $f4, $f16, $f18
  /* 0x80382F00 */  lwc1 $f6, 68($sp)
  /* 0x80382F04 */  mul.s $f16, $f8, $f10
  /* 0x80382F08 */  mtc1 $s2, $f8
  /* 0x80382F0C */  nop
  /* 0x80382F10 */  cvt.s.w $f10, $f8
  /* 0x80382F14 */  add.s $f18, $f4, $f16
  /* 0x80382F18 */  mul.s $f4, $f6, $f10
  /* 0x80382F1C */  add.s $f16, $f18, $f4
  /* 0x80382F20 */  neg.s $f8, $f16
  /* 0x80382F24 */  swc1 $f8, 40($t3)
  /* 0x80382F28 */  lw $t4, 80($sp)
  /* 0x80382F2C */  lw $t6, 124($sp)
  /* 0x80382F30 */  addiu $t9, $t4, -5
  /* 0x80382F34 */  sh $t9, 6($t6)
  /* 0x80382F38 */  lw $t0, 84($sp)
  /* 0x80382F3C */  lw $t1, 124($sp)
  /* 0x80382F40 */  addiu $t8, $t0, 5
  /* 0x80382F44 */  sh $t8, 8($t1)
  /* 0x80382F48 */  b .read_surface_data_L80382F58
  /* 0x80382F4C */  lw $v0, 124($sp)
  /* 0x80382F50 */  b .read_surface_data_L80382F58
  /* 0x80382F54 */  nop
.read_surface_data_L80382F58:
  /* 0x80382F58 */  lw $ra, 52($sp)
  /* 0x80382F5C */  lw $s0, 20($sp)
  /* 0x80382F60 */  lw $s1, 24($sp)
  /* 0x80382F64 */  lw $s2, 28($sp)
  /* 0x80382F68 */  lw $s3, 32($sp)
  /* 0x80382F6C */  lw $s4, 36($sp)
  /* 0x80382F70 */  lw $s5, 40($sp)
  /* 0x80382F74 */  lw $s6, 44($sp)
  /* 0x80382F78 */  lw $s7, 48($sp)
  /* 0x80382F7C */  jr $ra
  /* 0x80382F80 */  addiu $sp, $sp, 128
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x80382B7C */  addiu $sp, $sp, -128
  /* 0x80382B80 */  sw $ra, 52($sp)
  /* 0x80382B84 */  sw $a0, 128($sp)
  /* 0x80382B88 */  sw $a1, 132($sp)
  /* 0x80382B8C */  sw $s7, 48($sp)
  /* 0x80382B90 */  sw $s6, 44($sp)
  /* 0x80382B94 */  sw $s5, 40($sp)
  /* 0x80382B98 */  sw $s4, 36($sp)
  /* 0x80382B9C */  sw $s3, 32($sp)
  /* 0x80382BA0 */  sw $s2, 28($sp)
  /* 0x80382BA4 */  sw $s1, 24($sp)
  /* 0x80382BA8 */  sw $s0, 20($sp)
  /* 0x80382BAC */  lw $t6, 132($sp)
  /* 0x80382BB0 */  lw $t7, 0($t6)
  /* 0x80382BB4 */  lh $t8, 0($t7)
  /* 0x80382BB8 */  sll $t9, $t8, 2
  /* 0x80382BBC */  subu $t9, $t9, $t8
  /* 0x80382BC0 */  sh $t9, 62($sp)
  /* 0x80382BC4 */  lw $t0, 132($sp)
  /* 0x80382BC8 */  lw $t1, 0($t0)
  /* 0x80382BCC */  lh $t2, 2($t1)
  /* 0x80382BD0 */  sll $t3, $t2, 2
  /* 0x80382BD4 */  subu $t3, $t3, $t2
  /* 0x80382BD8 */  sh $t3, 60($sp)
  /* 0x80382BDC */  lw $t4, 132($sp)
  /* 0x80382BE0 */  lw $t5, 0($t4)
  /* 0x80382BE4 */  lh $t6, 4($t5)
  /* 0x80382BE8 */  sll $t7, $t6, 2
  /* 0x80382BEC */  subu $t7, $t7, $t6
  /* 0x80382BF0 */  sh $t7, 58($sp)
  /* 0x80382BF4 */  lh $t9, 62($sp)
  /* 0x80382BF8 */  lw $t8, 128($sp)
  /* 0x80382BFC */  sll $t0, $t9, 1
  /* 0x80382C00 */  addu $t1, $t8, $t0
  /* 0x80382C04 */  lh $s0, 0($t1)
  /* 0x80382C08 */  lh $t3, 62($sp)
  /* 0x80382C0C */  lw $t2, 128($sp)
  /* 0x80382C10 */  sll $t4, $t3, 1
  /* 0x80382C14 */  addu $t5, $t2, $t4
  /* 0x80382C18 */  lh $s1, 2($t5)
  /* 0x80382C1C */  lh $t7, 62($sp)
  /* 0x80382C20 */  lw $t6, 128($sp)
  /* 0x80382C24 */  sll $t9, $t7, 1
  /* 0x80382C28 */  addu $t8, $t6, $t9
  /* 0x80382C2C */  lh $s2, 4($t8)
  /* 0x80382C30 */  lh $t1, 60($sp)
  /* 0x80382C34 */  lw $t0, 128($sp)
  /* 0x80382C38 */  sll $t3, $t1, 1
  /* 0x80382C3C */  addu $t2, $t0, $t3
  /* 0x80382C40 */  lh $s3, 0($t2)
  /* 0x80382C44 */  lh $t5, 60($sp)
  /* 0x80382C48 */  lw $t4, 128($sp)
  /* 0x80382C4C */  sll $t7, $t5, 1
  /* 0x80382C50 */  addu $t6, $t4, $t7
  /* 0x80382C54 */  lh $s4, 2($t6)
  /* 0x80382C58 */  lh $t8, 60($sp)
  /* 0x80382C5C */  lw $t9, 128($sp)
  /* 0x80382C60 */  sll $t1, $t8, 1
  /* 0x80382C64 */  addu $t0, $t9, $t1
  /* 0x80382C68 */  lh $s5, 4($t0)
  /* 0x80382C6C */  lh $t2, 58($sp)
  /* 0x80382C70 */  lw $t3, 128($sp)
  /* 0x80382C74 */  sll $t5, $t2, 1
  /* 0x80382C78 */  addu $t4, $t3, $t5
  /* 0x80382C7C */  lh $s6, 0($t4)
  /* 0x80382C80 */  lh $t6, 58($sp)
  /* 0x80382C84 */  lw $t7, 128($sp)
  /* 0x80382C88 */  sll $t8, $t6, 1
  /* 0x80382C8C */  addu $t9, $t7, $t8
  /* 0x80382C90 */  lh $s7, 2($t9)
  /* 0x80382C94 */  lh $t0, 58($sp)
  /* 0x80382C98 */  lw $t1, 128($sp)
  /* 0x80382C9C */  sll $t2, $t0, 1
  /* 0x80382CA0 */  addu $t3, $t1, $t2
  /* 0x80382CA4 */  lh $t5, 4($t3)
  /* 0x80382CA8 */  sra $s0, $s0, 2  ; <-- CHANGED
  /* 0x80382CAC */  sra $s1, $s1, 2  ; <-- CHANGED
  /* 0x80382CB0 */  sra $s2, $s2, 2  ; <-- CHANGED
  /* 0x80382CB4 */  sra $s3, $s3, 2  ; <-- CHANGED
  /* 0x80382CB8 */  sra $s4, $s4, 2  ; <-- CHANGED
  /* 0x80382CBC */  sra $s5, $s5, 2  ; <-- CHANGED
  /* 0x80382CC0 */  sra $s6, $s6, 2  ; <-- CHANGED
  /* 0x80382CC4 */  sra $s7, $s7, 2  ; <-- CHANGED
  /* 0x80382CC8 */  sra $t5, $t5, 2  ; <-- CHANGED
  /* 0x80382CCC */  sw $t5, 88($sp)  ; <-- CHANGED
  /* 0x80382CD0 */  lw $t6, 88($sp)  ; <-- CHANGED
  /* 0x80382CD4 */  subu $t4, $s4, $s1  ; <-- CHANGED
  /* 0x80382CD8 */  subu $t9, $s5, $s2  ; <-- CHANGED
  /* 0x80382CDC */  subu $t7, $t6, $s5  ; <-- CHANGED
  /* 0x80382CE0 */  multu $t4, $t7  ; <-- CHANGED
  /* 0x80382CE4 */  subu $t0, $s7, $s4  ; <-- CHANGED
  /* 0x80382CE8 */  mflo $t8  ; <-- CHANGED
  /* 0x80382CEC */  multu $t9, $t0  ; <-- CHANGED
  /* 0x80382CF0 */  mflo $t1  ; <-- CHANGED
  /* 0x80382CF4 */  subu $t2, $t8, $t1  ; <-- CHANGED
  /* 0x80382CF8 */  mtc1 $t2, $f4  ; <-- CHANGED
  /* 0x80382CFC */  cvt.s.w $f6, $f4  ; <-- CHANGED
  /* 0x80382D00 */  swc1 $f6, 76($sp)  ; <-- CHANGED
  /* 0x80382D04 */  subu $t3, $s5, $s2  ; <-- CHANGED
  /* 0x80382D08 */  subu $t5, $s6, $s3  ; <-- CHANGED
  /* 0x80382D0C */  multu $t3, $t5  ; <-- CHANGED
  /* 0x80382D10 */  lw $t7, 88($sp)  ; <-- CHANGED
  /* 0x80382D14 */  subu $t4, $s3, $s0  ; <-- CHANGED
  /* 0x80382D18 */  subu $t9, $t7, $s5  ; <-- CHANGED
  /* 0x80382D1C */  mflo $t6  ; <-- CHANGED
  /* 0x80382D20 */  multu $t4, $t9  ; <-- CHANGED
  /* 0x80382D24 */  mflo $t0  ; <-- CHANGED
  /* 0x80382D28 */  subu $t8, $t6, $t0  ; <-- CHANGED
  /* 0x80382D2C */  mtc1 $t8, $f8  ; <-- CHANGED
  /* 0x80382D30 */  cvt.s.w $f10, $f8  ; <-- CHANGED
  /* 0x80382D34 */  swc1 $f10, 72($sp)  ; <-- CHANGED
  /* 0x80382D38 */  subu $t1, $s3, $s0  ; <-- CHANGED
  /* 0x80382D3C */  subu $t2, $s7, $s4  ; <-- CHANGED
  /* 0x80382D40 */  multu $t1, $t2  ; <-- CHANGED
  /* 0x80382D44 */  subu $t5, $s4, $s1  ; <-- CHANGED
  /* 0x80382D48 */  subu $t7, $s6, $s3  ; <-- CHANGED
  /* 0x80382D4C */  mflo $t3  ; <-- CHANGED
  /* 0x80382D50 */  multu $t5, $t7  ; <-- CHANGED
  /* 0x80382D54 */  mflo $t4  ; <-- CHANGED
  /* 0x80382D58 */  subu $t9, $t3, $t4  ; <-- CHANGED
  /* 0x80382D5C */  mtc1 $t9, $f16  ; <-- CHANGED
  /* 0x80382D60 */  cvt.s.w $f18, $f16
  /* 0x80382D64 */  swc1 $f18, 68($sp)
  /* 0x80382D68 */  lwc1 $f4, 76($sp)
  /* 0x80382D6C */  lwc1 $f8, 72($sp)
  /* 0x80382D70 */  lwc1 $f18, 68($sp)
  /* 0x80382D74 */  mul.s $f6, $f4, $f4
  /* 0x80382D78 */  nop
  /* 0x80382D7C */  mul.s $f10, $f8, $f8
  /* 0x80382D80 */  add.s $f16, $f6, $f10
  /* 0x80382D84 */  mul.s $f4, $f18, $f18
  /* 0x80382D88 */  jal 0x80323A50
  /* 0x80382D8C */  add.s $f12, $f16, $f4
  /* 0x80382D90 */  swc1 $f0, 64($sp)
  /* 0x80382D94 */  sw $s1, 80($sp)
  /* 0x80382D98 */  lw $t6, 80($sp)
  /* 0x80382D9C */  slt $at, $s4, $t6
  /* 0x80382DA0 */  beq $at, $zero, .read_surface_data_L80382DAC
  /* 0x80382DA4 */  nop
  /* 0x80382DA8 */  sw $s4, 80($sp)
.read_surface_data_L80382DAC:
  /* 0x80382DAC */  lw $t0, 80($sp)
  /* 0x80382DB0 */  slt $at, $s7, $t0
  /* 0x80382DB4 */  beq $at, $zero, .read_surface_data_L80382DC0
  /* 0x80382DB8 */  nop
  /* 0x80382DBC */  sw $s7, 80($sp)
.read_surface_data_L80382DC0:
  /* 0x80382DC0 */  sw $s1, 84($sp)
  /* 0x80382DC4 */  lw $t8, 84($sp)
  /* 0x80382DC8 */  slt $at, $t8, $s4
  /* 0x80382DCC */  beq $at, $zero, .read_surface_data_L80382DD8
  /* 0x80382DD0 */  nop
  /* 0x80382DD4 */  sw $s4, 84($sp)
.read_surface_data_L80382DD8:
  /* 0x80382DD8 */  lw $t1, 84($sp)
  /* 0x80382DDC */  slt $at, $t1, $s7
  /* 0x80382DE0 */  beq $at, $zero, .read_surface_data_L80382DEC
  /* 0x80382DE4 */  nop
  /* 0x80382DE8 */  sw $s7, 84($sp)
.read_surface_data_L80382DEC:
  /* 0x80382DEC */  lwc1 $f8, 64($sp)
  /* 0x80382DF0 */  lui $at, 0x8039
  /* 0x80382DF4 */  ldc1 $f10, -17456($at)
  /* 0x80382DF8 */  cvt.d.s $f6, $f8
  /* 0x80382DFC */  c.lt.d $f6, $f10
  /* 0x80382E00 */  nop
  /* 0x80382E04 */  bc1f .read_surface_data_L80382E14
  /* 0x80382E08 */  nop
  /* 0x80382E0C */  b .read_surface_data_L80382F58
  /* 0x80382E10 */  move $v0, $zero
.read_surface_data_L80382E14:
  /* 0x80382E14 */  lwc1 $f16, 64($sp)
  /* 0x80382E18 */  lui $at, 0x3FF0
  /* 0x80382E1C */  mtc1 $at, $f19
  /* 0x80382E20 */  mtc1 $zero, $f18
  /* 0x80382E24 */  cvt.d.s $f4, $f16
  /* 0x80382E28 */  div.d $f8, $f18, $f4
  /* 0x80382E2C */  cvt.s.d $f6, $f8
  /* 0x80382E30 */  swc1 $f6, 64($sp)
  /* 0x80382E34 */  lwc1 $f10, 76($sp)
  /* 0x80382E38 */  lwc1 $f16, 64($sp)
  /* 0x80382E3C */  mul.s $f18, $f10, $f16
  /* 0x80382E40 */  swc1 $f18, 76($sp)
  /* 0x80382E44 */  lwc1 $f4, 72($sp)
  /* 0x80382E48 */  lwc1 $f8, 64($sp)
  /* 0x80382E4C */  mul.s $f6, $f4, $f8
  /* 0x80382E50 */  swc1 $f6, 72($sp)
  /* 0x80382E54 */  lwc1 $f10, 68($sp)
  /* 0x80382E58 */  lwc1 $f16, 64($sp)
  /* 0x80382E5C */  mul.s $f18, $f10, $f16
  /* 0x80382E60 */  swc1 $f18, 68($sp)
  /* 0x80382E64 */  jal 0x803824F8
  /* 0x80382E68 */  nop
  /* 0x80382E6C */  sw $v0, 124($sp)
  /* 0x80382E70 */  lw $t2, 124($sp)
  /* 0x80382E74 */  sh $s0, 10($t2)
  /* 0x80382E78 */  lw $t5, 124($sp)
  /* 0x80382E7C */  sh $s3, 16($t5)
  /* 0x80382E80 */  lw $t7, 124($sp)
  /* 0x80382E84 */  sh $s6, 22($t7)
  /* 0x80382E88 */  lw $t3, 124($sp)
  /* 0x80382E8C */  sh $s1, 12($t3)
  /* 0x80382E90 */  lw $t4, 124($sp)
  /* 0x80382E94 */  sh $s4, 18($t4)
  /* 0x80382E98 */  lw $t9, 124($sp)
  /* 0x80382E9C */  sh $s7, 24($t9)
  /* 0x80382EA0 */  lw $t6, 124($sp)
  /* 0x80382EA4 */  sh $s2, 14($t6)
  /* 0x80382EA8 */  lw $t0, 124($sp)
  /* 0x80382EAC */  sh $s5, 20($t0)
  /* 0x80382EB0 */  lw $t8, 88($sp)
  /* 0x80382EB4 */  lw $t1, 124($sp)
  /* 0x80382EB8 */  sh $t8, 26($t1)
  /* 0x80382EBC */  lwc1 $f4, 76($sp)
  /* 0x80382EC0 */  lw $t2, 124($sp)
  /* 0x80382EC4 */  swc1 $f4, 28($t2)
  /* 0x80382EC8 */  lwc1 $f8, 72($sp)
  /* 0x80382ECC */  lw $t5, 124($sp)
  /* 0x80382ED0 */  swc1 $f8, 32($t5)
  /* 0x80382ED4 */  lwc1 $f6, 68($sp)
  /* 0x80382ED8 */  lw $t7, 124($sp)
  /* 0x80382EDC */  swc1 $f6, 36($t7)
  /* 0x80382EE0 */  mtc1 $s0, $f10
  /* 0x80382EE4 */  mtc1 $s1, $f6
  /* 0x80382EE8 */  lwc1 $f18, 76($sp)
  /* 0x80382EEC */  cvt.s.w $f16, $f10
  /* 0x80382EF0 */  lwc1 $f8, 72($sp)
  /* 0x80382EF4 */  lw $t3, 124($sp)
  /* 0x80382EF8 */  cvt.s.w $f10, $f6
  /* 0x80382EFC */  mul.s $f4, $f16, $f18
  /* 0x80382F00 */  lwc1 $f6, 68($sp)
  /* 0x80382F04 */  mul.s $f16, $f8, $f10
  /* 0x80382F08 */  mtc1 $s2, $f8
  /* 0x80382F0C */  nop
  /* 0x80382F10 */  cvt.s.w $f10, $f8
  /* 0x80382F14 */  add.s $f18, $f4, $f16
  /* 0x80382F18 */  mul.s $f4, $f6, $f10
  /* 0x80382F1C */  add.s $f16, $f18, $f4
  /* 0x80382F20 */  neg.s $f8, $f16
  /* 0x80382F24 */  swc1 $f8, 40($t3)
  /* 0x80382F28 */  lw $t4, 80($sp)
  /* 0x80382F2C */  lw $t6, 124($sp)
  /* 0x80382F30 */  addiu $t9, $t4, -5
  /* 0x80382F34 */  sh $t9, 6($t6)
  /* 0x80382F38 */  lw $t0, 84($sp)
  /* 0x80382F3C */  lw $t1, 124($sp)
  /* 0x80382F40 */  addiu $t8, $t0, 5
  /* 0x80382F44 */  sh $t8, 8($t1)
  /* 0x80382F48 */  b .read_surface_data_L80382F58
  /* 0x80382F4C */  lw $v0, 124($sp)
  /* 0x80382F50 */  b .read_surface_data_L80382F58
  /* 0x80382F54 */  nop
.read_surface_data_L80382F58:
  /* 0x80382F58 */  lw $ra, 52($sp)
  /* 0x80382F5C */  lw $s0, 20($sp)
  /* 0x80382F60 */  lw $s1, 24($sp)
  /* 0x80382F64 */  lw $s2, 28($sp)
  /* 0x80382F68 */  lw $s3, 32($sp)
  /* 0x80382F6C */  lw $s4, 36($sp)
  /* 0x80382F70 */  lw $s5, 40($sp)
  /* 0x80382F74 */  lw $s6, 44($sp)
  /* 0x80382F78 */  lw $s7, 48($sp)
  /* 0x80382F7C */  jr $ra
  /* 0x80382F80 */  addiu $sp, $sp, 128
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x80382CA8:
  ;   was: AF AD 00 58  sw $t5, 88($sp)
  ;   new: 00 10 80 83  sra $s0, $s0, 2
  ; 0x80382CAC:
  ;   was: 8F AE 00 58  lw $t6, 88($sp)
  ;   new: 00 11 88 83  sra $s1, $s1, 2
  ; 0x80382CB0:
  ;   was: 02 91 60 23  subu $t4, $s4, $s1
  ;   new: 00 12 90 83  sra $s2, $s2, 2
  ; 0x80382CB4:
  ;   was: 02 B2 C8 23  subu $t9, $s5, $s2
  ;   new: 00 13 98 83  sra $s3, $s3, 2
  ; 0x80382CB8:
  ;   was: 01 D5 78 23  subu $t7, $t6, $s5
  ;   new: 00 14 A0 83  sra $s4, $s4, 2
  ; 0x80382CBC:
  ;   was: 01 8F 00 19  multu $t4, $t7
  ;   new: 00 15 A8 83  sra $s5, $s5, 2
  ; 0x80382CC0:
  ;   was: 02 F4 40 23  subu $t0, $s7, $s4
  ;   new: 00 16 B0 83  sra $s6, $s6, 2
  ; 0x80382CC4:
  ;   was: 00 00 C0 12  mflo $t8
  ;   new: 00 17 B8 83  sra $s7, $s7, 2
  ; 0x80382CC8:
  ;   was: 00 00 00 00  nop
  ;   new: 00 0D 68 83  sra $t5, $t5, 2
  ; 0x80382CCC:
  ;   was: 00 00 00 00  nop
  ;   new: AF AD 00 58  sw $t5, 88($sp)
  ; 0x80382CD0:
  ;   was: 03 28 00 19  multu $t9, $t0
  ;   new: 8F AE 00 58  lw $t6, 88($sp)
  ; 0x80382CD4:
  ;   was: 00 00 48 12  mflo $t1
  ;   new: 02 91 60 23  subu $t4, $s4, $s1
  ; 0x80382CD8:
  ;   was: 03 09 50 23  subu $t2, $t8, $t1
  ;   new: 02 B2 C8 23  subu $t9, $s5, $s2
  ; 0x80382CDC:
  ;   was: 44 8A 20 00  mtc1 $t2, $f4
  ;   new: 01 D5 78 23  subu $t7, $t6, $s5
  ; 0x80382CE0:
  ;   was: 00 00 00 00  nop
  ;   new: 01 8F 00 19  multu $t4, $t7
  ; 0x80382CE4:
  ;   was: 46 80 21 A0  cvt.s.w $f6, $f4
  ;   new: 02 F4 40 23  subu $t0, $s7, $s4
  ; 0x80382CE8:
  ;   was: E7 A6 00 4C  swc1 $f6, 76($sp)
  ;   new: 00 00 C0 12  mflo $t8
  ; 0x80382CEC:
  ;   was: 02 B2 58 23  subu $t3, $s5, $s2
  ;   new: 03 28 00 19  multu $t9, $t0
  ; 0x80382CF0:
  ;   was: 02 D3 68 23  subu $t5, $s6, $s3
  ;   new: 00 00 48 12  mflo $t1
  ; 0x80382CF4:
  ;   was: 01 6D 00 19  multu $t3, $t5
  ;   new: 03 09 50 23  subu $t2, $t8, $t1
  ; 0x80382CF8:
  ;   was: 8F AF 00 58  lw $t7, 88($sp)
  ;   new: 44 8A 20 00  mtc1 $t2, $f4
  ; 0x80382CFC:
  ;   was: 02 70 60 23  subu $t4, $s3, $s0
  ;   new: 46 80 21 A0  cvt.s.w $f6, $f4
  ; 0x80382D00:
  ;   was: 01 F5 C8 23  subu $t9, $t7, $s5
  ;   new: E7 A6 00 4C  swc1 $f6, 76($sp)
  ; 0x80382D04:
  ;   was: 00 00 70 12  mflo $t6
  ;   new: 02 B2 58 23  subu $t3, $s5, $s2
  ; 0x80382D08:
  ;   was: 00 00 00 00  nop
  ;   new: 02 D3 68 23  subu $t5, $s6, $s3
  ; 0x80382D0C:
  ;   was: 00 00 00 00  nop
  ;   new: 01 6D 00 19  multu $t3, $t5
  ; 0x80382D10:
  ;   was: 01 99 00 19  multu $t4, $t9
  ;   new: 8F AF 00 58  lw $t7, 88($sp)
  ; 0x80382D14:
  ;   was: 00 00 40 12  mflo $t0
  ;   new: 02 70 60 23  subu $t4, $s3, $s0
  ; 0x80382D18:
  ;   was: 01 C8 C0 23  subu $t8, $t6, $t0
  ;   new: 01 F5 C8 23  subu $t9, $t7, $s5
  ; 0x80382D1C:
  ;   was: 44 98 40 00  mtc1 $t8, $f8
  ;   new: 00 00 70 12  mflo $t6
  ; 0x80382D20:
  ;   was: 00 00 00 00  nop
  ;   new: 01 99 00 19  multu $t4, $t9
  ; 0x80382D24:
  ;   was: 46 80 42 A0  cvt.s.w $f10, $f8
  ;   new: 00 00 40 12  mflo $t0
  ; 0x80382D28:
  ;   was: E7 AA 00 48  swc1 $f10, 72($sp)
  ;   new: 01 C8 C0 23  subu $t8, $t6, $t0
  ; 0x80382D2C:
  ;   was: 02 70 48 23  subu $t1, $s3, $s0
  ;   new: 44 98 40 00  mtc1 $t8, $f8
  ; 0x80382D30:
  ;   was: 02 F4 50 23  subu $t2, $s7, $s4
  ;   new: 46 80 42 A0  cvt.s.w $f10, $f8
  ; 0x80382D34:
  ;   was: 01 2A 00 19  multu $t1, $t2
  ;   new: E7 AA 00 48  swc1 $f10, 72($sp)
  ; 0x80382D38:
  ;   was: 02 91 68 23  subu $t5, $s4, $s1
  ;   new: 02 70 48 23  subu $t1, $s3, $s0
  ; 0x80382D3C:
  ;   was: 02 D3 78 23  subu $t7, $s6, $s3
  ;   new: 02 F4 50 23  subu $t2, $s7, $s4
  ; 0x80382D40:
  ;   was: 00 00 58 12  mflo $t3
  ;   new: 01 2A 00 19  multu $t1, $t2
  ; 0x80382D44:
  ;   was: 00 00 00 00  nop
  ;   new: 02 91 68 23  subu $t5, $s4, $s1
  ; 0x80382D48:
  ;   was: 00 00 00 00  nop
  ;   new: 02 D3 78 23  subu $t7, $s6, $s3
  ; 0x80382D4C:
  ;   was: 01 AF 00 19  multu $t5, $t7
  ;   new: 00 00 58 12  mflo $t3
  ; 0x80382D50:
  ;   was: 00 00 60 12  mflo $t4
  ;   new: 01 AF 00 19  multu $t5, $t7
  ; 0x80382D54:
  ;   was: 01 6C C8 23  subu $t9, $t3, $t4
  ;   new: 00 00 60 12  mflo $t4
  ; 0x80382D58:
  ;   was: 44 99 80 00  mtc1 $t9, $f16
  ;   new: 01 6C C8 23  subu $t9, $t3, $t4
  ; 0x80382D5C:
  ;   was: 00 00 00 00  nop
  ;   new: 44 99 80 00  mtc1 $t9, $f16
