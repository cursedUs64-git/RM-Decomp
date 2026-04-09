; Function: update_camera
; RAM: 0x802868F8  Size: 0x670

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x802868F8 */  addiu $sp, $sp, -64
  /* 0x802868FC */  sw $ra, 28($sp)
  /* 0x80286900 */  sw $a0, 64($sp)
  /* 0x80286904 */  sw $s1, 24($sp)
  /* 0x80286908 */  sw $s0, 20($sp)
  /* 0x8028690C */  lw $t6, 64($sp)
  /* 0x80286910 */  lui $at, 0x8034
  /* 0x80286914 */  sw $t6, -13360($at)
  /* 0x80286918 */  jal 0x80288E68
  /* 0x8028691C */  lw $a0, 64($sp)
  /* 0x80286920 */  lw $t7, 64($sp)
  /* 0x80286924 */  lbu $t8, 48($t7)
  /* 0x80286928 */  bne $t8, $zero, .update_camera_L80286990
  /* 0x8028692C */  nop
  /* 0x80286930 */  jal 0x80288624
  /* 0x80286934 */  move $a0, $zero
  /* 0x80286938 */  li $at, 1
  /* 0x8028693C */  bne $v0, $at, .update_camera_L80286988
  /* 0x80286940 */  nop
  /* 0x80286944 */  lui $t9, 0x8033
  /* 0x80286948 */  lw $t9, -10780($t9)
  /* 0x8028694C */  lhu $t0, 18($t9)
  /* 0x80286950 */  andi $t1, $t0, 0x10
  /* 0x80286954 */  beq $t1, $zero, .update_camera_L80286988
  /* 0x80286958 */  nop
  /* 0x8028695C */  jal 0x80288718
  /* 0x80286960 */  move $a0, $zero
  /* 0x80286964 */  li $at, 2
  /* 0x80286968 */  bne $v0, $at, .update_camera_L80286980
  /* 0x8028696C */  nop
  /* 0x80286970 */  jal 0x80288718
  /* 0x80286974 */  li $a0, 1
  /* 0x80286978 */  b .update_camera_L80286988
  /* 0x8028697C */  nop
.update_camera_L80286980:
  /* 0x80286980 */  jal 0x80288718
  /* 0x80286984 */  li $a0, 2
.update_camera_L80286988:
  /* 0x80286988 */  jal 0x8028B954
  /* 0x8028698C */  nop
.update_camera_L80286990:
  /* 0x80286990 */  lui $t2, 0x8034
  /* 0x80286994 */  lh $t2, -14262($t2)
  /* 0x80286998 */  li $at, -5
  /* 0x8028699C */  and $t3, $t2, $at
  /* 0x802869A0 */  lui $at, 0x8034
  /* 0x802869A4 */  sh $t3, -14262($at)
  /* 0x802869A8 */  lui $t4, 0x8034
  /* 0x802869AC */  lh $t4, -14264($t4)
  /* 0x802869B0 */  andi $t5, $t4, 0x800
  /* 0x802869B4 */  beq $t5, $zero, .update_camera_L802869F0
  /* 0x802869B8 */  nop
  /* 0x802869BC */  jal 0x8028724C
  /* 0x802869C0 */  lw $a0, 64($sp)
  /* 0x802869C4 */  lui $t6, 0x8034
  /* 0x802869C8 */  lh $t6, -14264($t6)
  /* 0x802869CC */  li $at, -2049
  /* 0x802869D0 */  and $t7, $t6, $at
  /* 0x802869D4 */  lui $at, 0x8034
  /* 0x802869D8 */  sh $t7, -14264($at)
  /* 0x802869DC */  lui $t8, 0x8034
  /* 0x802869E0 */  lh $t8, -14262($t8)
  /* 0x802869E4 */  lui $at, 0x8034
  /* 0x802869E8 */  ori $t9, $t8, 0x4
  /* 0x802869EC */  sh $t9, -14262($at)
.update_camera_L802869F0:
  /* 0x802869F0 */  lui $at, 0x8034
  /* 0x802869F4 */  lwc1 $f4, -14868($at)
  /* 0x802869F8 */  lui $at, 0x8034
  /* 0x802869FC */  swc1 $f4, -14844($at)
  /* 0x80286A00 */  lui $at, 0x8034
  /* 0x80286A04 */  lwc1 $f6, -14852($at)
  /* 0x80286A08 */  lui $at, 0x8034
  /* 0x80286A0C */  swc1 $f6, -14832($at)
  /* 0x80286A10 */  lui $t0, 0x8034
  /* 0x80286A14 */  lw $t0, -14872($t0)
  /* 0x80286A18 */  lui $at, 0x8034
  /* 0x80286A1C */  sw $t0, -14848($at)
  /* 0x80286A20 */  lui $t1, 0x8034
  /* 0x80286A24 */  lw $t1, -14860($t1)
  /* 0x80286A28 */  lui $at, 0x8034
  /* 0x80286A2C */  sw $t1, -14836($at)
  /* 0x80286A30 */  lui $t2, 0x8034
  /* 0x80286A34 */  lh $t2, -14864($t2)
  /* 0x80286A38 */  lui $at, 0x8034
  /* 0x80286A3C */  sh $t2, -14840($at)
  /* 0x80286A40 */  lui $t3, 0x8034
  /* 0x80286A44 */  lh $t3, -14856($t3)
  /* 0x80286A48 */  lui $at, 0x8034
  /* 0x80286A4C */  sh $t3, -14828($at)
  /* 0x80286A50 */  lui $a0, 0x8034
  /* 0x80286A54 */  jal 0x8028FC9C
  /* 0x80286A58 */  addiu $a0, $a0, -14872
  /* 0x80286A5C */  li $t4, 1
  /* 0x80286A60 */  lui $at, 0x8036
  /* 0x80286A64 */  sh $t4, 4480($at)
  /* 0x80286A68 */  lw $a0, 64($sp)
  /* 0x80286A6C */  lui $a1, 0x8034
  /* 0x80286A70 */  addiu $a1, $a1, -14696
  /* 0x80286A74 */  addiu $a1, $a1, 36
  /* 0x80286A78 */  jal 0x80378800
  /* 0x80286A7C */  addiu $a0, $a0, 16
  /* 0x80286A80 */  lw $a0, 64($sp)
  /* 0x80286A84 */  lui $a1, 0x8034
  /* 0x80286A88 */  addiu $a1, $a1, -14696
  /* 0x80286A8C */  addiu $a1, $a1, 24
  /* 0x80286A90 */  jal 0x80378800
  /* 0x80286A94 */  addiu $a0, $a0, 4
  /* 0x80286A98 */  lui $t5, 0x8034
  /* 0x80286A9C */  lh $t5, -14572($t5)
  /* 0x80286AA0 */  lw $t6, 64($sp)
  /* 0x80286AA4 */  sh $t5, 2($t6)
  /* 0x80286AA8 */  lui $t7, 0x8034
  /* 0x80286AAC */  lh $t7, -14570($t7)
  /* 0x80286AB0 */  lw $t8, 64($sp)
  /* 0x80286AB4 */  sh $t7, 58($t8)
  /* 0x80286AB8 */  lui $t9, 0x8034
  /* 0x80286ABC */  lbu $t9, -14636($t9)
  /* 0x80286AC0 */  lw $t0, 64($sp)
  /* 0x80286AC4 */  sb $t9, 0($t0)
  /* 0x80286AC8 */  lui $t1, 0x8034
  /* 0x80286ACC */  lbu $t1, -14635($t1)
  /* 0x80286AD0 */  lw $t2, 64($sp)
  /* 0x80286AD4 */  sb $t1, 1($t2)
  /* 0x80286AD8 */  jal 0x8028EEB0  ; <-- CHANGED
  /* 0x80286ADC */  lw $a0, 64($sp)
  /* 0x80286AE0 */  jal 0x80287DD4
  /* 0x80286AE4 */  lw $a0, 64($sp)
  /* 0x80286AE8 */  lui $t3, 0x8033
  /* 0x80286AEC */  lw $t3, -10780($t3)
  /* 0x80286AF0 */  lui $a0, 0x8034
  /* 0x80286AF4 */  lhu $a0, -14706($a0)
  /* 0x80286AF8 */  lhu $a1, 18($t3)
  /* 0x80286AFC */  jal 0x80288CE4
  /* 0x80286B00 */  lhu $a2, 16($t3)
  /* 0x80286B04 */  lui $at, 0x8034
  /* 0x80286B08 */  sh $v0, -14706($at)
  /* 0x80286B0C */  lw $t4, 64($sp)
  /* 0x80286B10 */  lbu $t5, 48($t4)
  /* 0x80286B14 */  beq $t5, $zero, .update_camera_L80286B38
  /* 0x80286B18 */  nop
  /* 0x80286B1C */  lui $at, 0x8033
  /* 0x80286B20 */  sh $zero, -8396($at)
  /* 0x80286B24 */  jal 0x802994E8
  /* 0x80286B28 */  lw $a0, 64($sp)
  /* 0x80286B2C */  lui $at, 0x8033
  /* 0x80286B30 */  b .update_camera_L80286B94
  /* 0x80286B34 */  sb $zero, -8360($at)
.update_camera_L80286B38:
  /* 0x80286B38 */  lui $t6, 0x8033
  /* 0x80286B3C */  lbu $t6, -8364($t6)
  /* 0x80286B40 */  beq $t6, $zero, .update_camera_L80286B94
  /* 0x80286B44 */  nop
  /* 0x80286B48 */  lui $t7, 0x8033
  /* 0x80286B4C */  lbu $t7, -8360($t7)
  /* 0x80286B50 */  slti $at, $t7, 8
  /* 0x80286B54 */  beq $at, $zero, .update_camera_L80286B94
  /* 0x80286B58 */  nop
  /* 0x80286B5C */  lui $t8, 0x8033
  /* 0x80286B60 */  lbu $t8, -8360($t8)
  /* 0x80286B64 */  lui $at, 0x8033
  /* 0x80286B68 */  addiu $t9, $t8, 1
  /* 0x80286B6C */  sb $t9, -8360($at)
  /* 0x80286B70 */  lui $t0, 0x8033
  /* 0x80286B74 */  lbu $t0, -8360($t0)
  /* 0x80286B78 */  slti $at, $t0, 8
  /* 0x80286B7C */  bne $at, $zero, .update_camera_L80286B94
  /* 0x80286B80 */  nop
  /* 0x80286B84 */  lui $at, 0x8033
  /* 0x80286B88 */  sb $zero, -8364($at)
  /* 0x80286B8C */  lui $at, 0x8033
  /* 0x80286B90 */  sb $zero, -8360($at)
.update_camera_L80286B94:
  /* 0x80286B94 */  lw $t1, 64($sp)
  /* 0x80286B98 */  lbu $t2, 48($t1)
  /* 0x80286B9C */  bne $t2, $zero, .update_camera_L80286D64
  /* 0x80286BA0 */  nop
  /* 0x80286BA4 */  li $t3, 1024
  /* 0x80286BA8 */  lui $at, 0x8033
  /* 0x80286BAC */  sh $t3, -8396($at)
  /* 0x80286BB0 */  lui $t4, 0x8034
  /* 0x80286BB4 */  lh $t4, -14716($t4)
  /* 0x80286BB8 */  andi $t5, $t4, 0x1
  /* 0x80286BBC */  beq $t5, $zero, .update_camera_L80286C54
  /* 0x80286BC0 */  nop
  /* 0x80286BC4 */  lw $t6, 64($sp)
  /* 0x80286BC8 */  li $at, 3
  /* 0x80286BCC */  lbu $s0, 0($t6)
  /* 0x80286BD0 */  beq $s0, $at, .update_camera_L80286C04
  /* 0x80286BD4 */  nop
  /* 0x80286BD8 */  li $at, 6
  /* 0x80286BDC */  beq $s0, $at, .update_camera_L80286C14
  /* 0x80286BE0 */  nop
  /* 0x80286BE4 */  li $at, 8
  /* 0x80286BE8 */  beq $s0, $at, .update_camera_L80286C24
  /* 0x80286BEC */  nop
  /* 0x80286BF0 */  li $at, 10
  /* 0x80286BF4 */  beq $s0, $at, .update_camera_L80286C34
  /* 0x80286BF8 */  nop
  /* 0x80286BFC */  b .update_camera_L80286C44
  /* 0x80286C00 */  nop
.update_camera_L80286C04:
  /* 0x80286C04 */  jal 0x802839E4
  /* 0x80286C08 */  lw $a0, 64($sp)
  /* 0x80286C0C */  b .update_camera_L80286C4C
  /* 0x80286C10 */  nop
.update_camera_L80286C14:
  /* 0x80286C14 */  jal 0x80285D20
  /* 0x80286C18 */  lw $a0, 64($sp)
  /* 0x80286C1C */  b .update_camera_L80286C4C
  /* 0x80286C20 */  nop
.update_camera_L80286C24:
  /* 0x80286C24 */  jal 0x80283A34
  /* 0x80286C28 */  lw $a0, 64($sp)
  /* 0x80286C2C */  b .update_camera_L80286C4C
  /* 0x80286C30 */  nop
.update_camera_L80286C34:
  /* 0x80286C34 */  jal 0x80285F60
  /* 0x80286C38 */  lw $a0, 64($sp)
  /* 0x80286C3C */  b .update_camera_L80286C4C
  /* 0x80286C40 */  nop
.update_camera_L80286C44:
  /* 0x80286C44 */  jal 0x80284D38
  /* 0x80286C48 */  lw $a0, 64($sp)
.update_camera_L80286C4C:
  /* 0x80286C4C */  b .update_camera_L80286D64
  /* 0x80286C50 */  nop
.update_camera_L80286C54:
  /* 0x80286C54 */  lw $t7, 64($sp)
  /* 0x80286C58 */  lbu $t8, 0($t7)
  /* 0x80286C5C */  addiu $t9, $t8, -1
  /* 0x80286C60 */  sltiu $at, $t9, 17
  /* 0x80286C64 */  beq $at, $zero, .update_camera_L80286D64
  /* 0x80286C68 */  nop
  /* 0x80286C6C */  sll $t9, $t9, 2
  /* 0x80286C70 */  lui $at, 0x8033
  /* 0x80286C74 */  addu $at, $at, $t9
  /* 0x80286C78 */  lw $t9, 29208($at)
  /* 0x80286C7C */  jr $t9
  /* 0x80286C80 */  nop
  /* 0x80286C84 */  jal 0x802839E4
  /* 0x80286C88 */  lw $a0, 64($sp)
  /* 0x80286C8C */  b .update_camera_L80286D64
  /* 0x80286C90 */  nop
  /* 0x80286C94 */  jal 0x80285D20
  /* 0x80286C98 */  lw $a0, 64($sp)
  /* 0x80286C9C */  b .update_camera_L80286D64
  /* 0x80286CA0 */  nop
  /* 0x80286CA4 */  jal 0x80283A34
  /* 0x80286CA8 */  lw $a0, 64($sp)
  /* 0x80286CAC */  b .update_camera_L80286D64
  /* 0x80286CB0 */  nop
  /* 0x80286CB4 */  jal 0x80285F60
  /* 0x80286CB8 */  lw $a0, 64($sp)
  /* 0x80286CBC */  b .update_camera_L80286D64
  /* 0x80286CC0 */  nop
  /* 0x80286CC4 */  jal 0x80281588
  /* 0x80286CC8 */  lw $a0, 64($sp)
  /* 0x80286CCC */  b .update_camera_L80286D64
  /* 0x80286CD0 */  nop
  /* 0x80286CD4 */  jal 0x8028146C
  /* 0x80286CD8 */  lw $a0, 64($sp)
  /* 0x80286CDC */  b .update_camera_L80286D64
  /* 0x80286CE0 */  nop
  /* 0x80286CE4 */  jal 0x802817FC
  /* 0x80286CE8 */  lw $a0, 64($sp)
  /* 0x80286CEC */  b .update_camera_L80286D64
  /* 0x80286CF0 */  nop
  /* 0x80286CF4 */  jal 0x80284CFC
  /* 0x80286CF8 */  lw $a0, 64($sp)
  /* 0x80286CFC */  b .update_camera_L80286D64
  /* 0x80286D00 */  nop
  /* 0x80286D04 */  jal 0x80284CFC
  /* 0x80286D08 */  lw $a0, 64($sp)
  /* 0x80286D0C */  b .update_camera_L80286D64
  /* 0x80286D10 */  nop
  /* 0x80286D14 */  jal 0x80282C3C
  /* 0x80286D18 */  lw $a0, 64($sp)
  /* 0x80286D1C */  b .update_camera_L80286D64
  /* 0x80286D20 */  nop
  /* 0x80286D24 */  jal 0x80282C7C
  /* 0x80286D28 */  lw $a0, 64($sp)
  /* 0x80286D2C */  b .update_camera_L80286D64
  /* 0x80286D30 */  nop
  /* 0x80286D34 */  jal 0x802851DC
  /* 0x80286D38 */  lw $a0, 64($sp)
  /* 0x80286D3C */  b .update_camera_L80286D64
  /* 0x80286D40 */  nop
  /* 0x80286D44 */  jal 0x80282CE0
  /* 0x80286D48 */  lw $a0, 64($sp)
  /* 0x80286D4C */  b .update_camera_L80286D64
  /* 0x80286D50 */  nop
  /* 0x80286D54 */  jal 0x802850AC
  /* 0x80286D58 */  lw $a0, 64($sp)
  /* 0x80286D5C */  b .update_camera_L80286D64
  /* 0x80286D60 */  nop
.update_camera_L80286D64:
  /* 0x80286D64 */  jal 0x8028C2C8
  /* 0x80286D68 */  lw $a0, 64($sp)
  /* 0x80286D6C */  andi $s1, $v0, 0xFF
  /* 0x80286D70 */  move $a1, $s1
  /* 0x80286D74 */  jal 0x8028C13C
  /* 0x80286D78 */  lw $a0, 64($sp)
  /* 0x80286D7C */  jal 0x80287DC0
  /* 0x80286D80 */  lw $a0, 64($sp)
  /* 0x80286D84 */  lui $at, 0x8036
  /* 0x80286D88 */  sh $zero, 4480($at)
  /* 0x80286D8C */  lui $t0, 0x8033
  /* 0x80286D90 */  lh $t0, -8712($t0)
  /* 0x80286D94 */  li $at, 6
  /* 0x80286D98 */  beq $t0, $at, .update_camera_L80286EFC
  /* 0x80286D9C */  nop
  /* 0x80286DA0 */  lw $t1, 64($sp)
  /* 0x80286DA4 */  lbu $t2, 48($t1)
  /* 0x80286DA8 */  bne $t2, $zero, .update_camera_L80286DDC
  /* 0x80286DAC */  nop
  /* 0x80286DB0 */  lui $t3, 0x8033
  /* 0x80286DB4 */  lw $t3, -10780($t3)
  /* 0x80286DB8 */  lhu $t4, 16($t3)
  /* 0x80286DBC */  andi $t5, $t4, 0x10
  /* 0x80286DC0 */  beq $t5, $zero, .update_camera_L80286DDC
  /* 0x80286DC4 */  nop
  /* 0x80286DC8 */  jal 0x80288624
  /* 0x80286DCC */  move $a0, $zero
  /* 0x80286DD0 */  li $at, 2
  /* 0x80286DD4 */  beq $v0, $at, .update_camera_L80286E0C
  /* 0x80286DD8 */  nop
.update_camera_L80286DDC:
  /* 0x80286DDC */  lui $t6, 0x8034
  /* 0x80286DE0 */  lh $t6, -14264($t6)
  /* 0x80286DE4 */  andi $t7, $t6, 0x40
  /* 0x80286DE8 */  bne $t7, $zero, .update_camera_L80286E0C
  /* 0x80286DEC */  nop
  /* 0x80286DF0 */  lui $t8, 0x8033
  /* 0x80286DF4 */  lw $t8, -8352($t8)
  /* 0x80286DF8 */  lui $at, 0x102
  /* 0x80286DFC */  ori $at, $at, 0x8B8
  /* 0x80286E00 */  lw $t9, 0($t8)
  /* 0x80286E04 */  bne $t9, $at, .update_camera_L80286EC0
  /* 0x80286E08 */  nop
.update_camera_L80286E0C:
  /* 0x80286E0C */  lw $t0, 64($sp)
  /* 0x80286E10 */  lbu $t1, 48($t0)
  /* 0x80286E14 */  bne $t1, $zero, .update_camera_L80286E64
  /* 0x80286E18 */  nop
  /* 0x80286E1C */  lui $t2, 0x8033
  /* 0x80286E20 */  lw $t2, -10780($t2)
  /* 0x80286E24 */  lhu $t3, 18($t2)
  /* 0x80286E28 */  andi $t4, $t3, 0x10
  /* 0x80286E2C */  beq $t4, $zero, .update_camera_L80286E64
  /* 0x80286E30 */  nop
  /* 0x80286E34 */  jal 0x80288624
  /* 0x80286E38 */  move $a0, $zero
  /* 0x80286E3C */  li $at, 2
  /* 0x80286E40 */  bne $v0, $at, .update_camera_L80286E64
  /* 0x80286E44 */  nop
  /* 0x80286E48 */  lui $t5, 0x8034
  /* 0x80286E4C */  lh $t5, -14708($t5)
  /* 0x80286E50 */  lui $at, 0x8034
  /* 0x80286E54 */  ori $t6, $t5, 0x20
  /* 0x80286E58 */  sh $t6, -14708($at)
  /* 0x80286E5C */  jal 0x8028B920
  /* 0x80286E60 */  nop
.update_camera_L80286E64:
  /* 0x80286E64 */  mtc1 $zero, $f8
  /* 0x80286E68 */  lui $at, 0x8034
  /* 0x80286E6C */  swc1 $f8, -14524($at)
  /* 0x80286E70 */  mtc1 $zero, $f10
  /* 0x80286E74 */  lui $at, 0x8034
  /* 0x80286E78 */  swc1 $f10, -14520($at)
  /* 0x80286E7C */  lui $t7, 0x8034
  /* 0x80286E80 */  addiu $t7, $t7, -14696
  /* 0x80286E84 */  addiu $a0, $t7, 128
  /* 0x80286E88 */  jal 0x8028AAD8
  /* 0x80286E8C */  addiu $a1, $t7, 140
  /* 0x80286E90 */  lw $t8, 64($sp)
  /* 0x80286E94 */  sh $v0, 58($t8)
  /* 0x80286E98 */  lw $t9, 64($sp)
  /* 0x80286E9C */  lh $t0, 58($t9)
  /* 0x80286EA0 */  sh $t0, 2($t9)
  /* 0x80286EA4 */  lui $t1, 0x8034
  /* 0x80286EA8 */  lh $t1, -14264($t1)
  /* 0x80286EAC */  li $at, -65
  /* 0x80286EB0 */  and $t2, $t1, $at
  /* 0x80286EB4 */  lui $at, 0x8034
  /* 0x80286EB8 */  b .update_camera_L80286EF4
  /* 0x80286EBC */  sh $t2, -14264($at)
.update_camera_L80286EC0:
  /* 0x80286EC0 */  lui $t3, 0x8034
  /* 0x80286EC4 */  lh $t3, -14708($t3)
  /* 0x80286EC8 */  andi $t4, $t3, 0x20
  /* 0x80286ECC */  beq $t4, $zero, .update_camera_L80286EF4
  /* 0x80286ED0 */  nop
  /* 0x80286ED4 */  jal 0x8028B920
  /* 0x80286ED8 */  nop
  /* 0x80286EDC */  lui $t5, 0x8034
  /* 0x80286EE0 */  lh $t5, -14708($t5)
  /* 0x80286EE4 */  li $at, -33
  /* 0x80286EE8 */  and $t6, $t5, $at
  /* 0x80286EEC */  lui $at, 0x8034
  /* 0x80286EF0 */  sh $t6, -14708($at)
.update_camera_L80286EF4:
  /* 0x80286EF4 */  b .update_camera_L80286F30
  /* 0x80286EF8 */  nop
.update_camera_L80286EFC:
  /* 0x80286EFC */  lui $t7, 0x8033
  /* 0x80286F00 */  lw $t7, -10780($t7)
  /* 0x80286F04 */  lhu $t8, 18($t7)
  /* 0x80286F08 */  andi $t0, $t8, 0x10
  /* 0x80286F0C */  beq $t0, $zero, .update_camera_L80286F30
  /* 0x80286F10 */  nop
  /* 0x80286F14 */  jal 0x80288624
  /* 0x80286F18 */  move $a0, $zero
  /* 0x80286F1C */  li $at, 2
  /* 0x80286F20 */  bne $v0, $at, .update_camera_L80286F30
  /* 0x80286F24 */  nop
  /* 0x80286F28 */  jal 0x8028B8EC
  /* 0x80286F2C */  nop
.update_camera_L80286F30:
  /* 0x80286F30 */  jal 0x80286420
  /* 0x80286F34 */  lw $a0, 64($sp)
  /* 0x80286F38 */  lui $t9, 0x8033
  /* 0x80286F3C */  lw $t9, -8352($t9)
  /* 0x80286F40 */  lui $at, 0x8034
  /* 0x80286F44 */  lw $t1, 0($t9)
  /* 0x80286F48 */  sw $t1, -14512($at)
  /* 0x80286F4C */  b .update_camera_L80286F54
  /* 0x80286F50 */  nop
.update_camera_L80286F54:
  /* 0x80286F54 */  lw $ra, 28($sp)
  /* 0x80286F58 */  lw $s0, 20($sp)
  /* 0x80286F5C */  lw $s1, 24($sp)
  /* 0x80286F60 */  jr $ra
  /* 0x80286F64 */  addiu $sp, $sp, 64
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x802868F8 */  addiu $sp, $sp, -64
  /* 0x802868FC */  sw $ra, 28($sp)
  /* 0x80286900 */  sw $a0, 64($sp)
  /* 0x80286904 */  sw $s1, 24($sp)
  /* 0x80286908 */  sw $s0, 20($sp)
  /* 0x8028690C */  lw $t6, 64($sp)
  /* 0x80286910 */  lui $at, 0x8034
  /* 0x80286914 */  sw $t6, -13360($at)
  /* 0x80286918 */  jal 0x80288E68
  /* 0x8028691C */  lw $a0, 64($sp)
  /* 0x80286920 */  lw $t7, 64($sp)
  /* 0x80286924 */  lbu $t8, 48($t7)
  /* 0x80286928 */  bne $t8, $zero, .update_camera_L80286990
  /* 0x8028692C */  nop
  /* 0x80286930 */  jal 0x80288624
  /* 0x80286934 */  move $a0, $zero
  /* 0x80286938 */  li $at, 1
  /* 0x8028693C */  bne $v0, $at, .update_camera_L80286988
  /* 0x80286940 */  nop
  /* 0x80286944 */  lui $t9, 0x8033
  /* 0x80286948 */  lw $t9, -10780($t9)
  /* 0x8028694C */  lhu $t0, 18($t9)
  /* 0x80286950 */  andi $t1, $t0, 0x10
  /* 0x80286954 */  beq $t1, $zero, .update_camera_L80286988
  /* 0x80286958 */  nop
  /* 0x8028695C */  jal 0x80288718
  /* 0x80286960 */  move $a0, $zero
  /* 0x80286964 */  li $at, 2
  /* 0x80286968 */  bne $v0, $at, .update_camera_L80286980
  /* 0x8028696C */  nop
  /* 0x80286970 */  jal 0x80288718
  /* 0x80286974 */  li $a0, 1
  /* 0x80286978 */  b .update_camera_L80286988
  /* 0x8028697C */  nop
.update_camera_L80286980:
  /* 0x80286980 */  jal 0x80288718
  /* 0x80286984 */  li $a0, 2
.update_camera_L80286988:
  /* 0x80286988 */  jal 0x8028B954
  /* 0x8028698C */  nop
.update_camera_L80286990:
  /* 0x80286990 */  lui $t2, 0x8034
  /* 0x80286994 */  lh $t2, -14262($t2)
  /* 0x80286998 */  li $at, -5
  /* 0x8028699C */  and $t3, $t2, $at
  /* 0x802869A0 */  lui $at, 0x8034
  /* 0x802869A4 */  sh $t3, -14262($at)
  /* 0x802869A8 */  lui $t4, 0x8034
  /* 0x802869AC */  lh $t4, -14264($t4)
  /* 0x802869B0 */  andi $t5, $t4, 0x800
  /* 0x802869B4 */  beq $t5, $zero, .update_camera_L802869F0
  /* 0x802869B8 */  nop
  /* 0x802869BC */  jal 0x8028724C
  /* 0x802869C0 */  lw $a0, 64($sp)
  /* 0x802869C4 */  lui $t6, 0x8034
  /* 0x802869C8 */  lh $t6, -14264($t6)
  /* 0x802869CC */  li $at, -2049
  /* 0x802869D0 */  and $t7, $t6, $at
  /* 0x802869D4 */  lui $at, 0x8034
  /* 0x802869D8 */  sh $t7, -14264($at)
  /* 0x802869DC */  lui $t8, 0x8034
  /* 0x802869E0 */  lh $t8, -14262($t8)
  /* 0x802869E4 */  lui $at, 0x8034
  /* 0x802869E8 */  ori $t9, $t8, 0x4
  /* 0x802869EC */  sh $t9, -14262($at)
.update_camera_L802869F0:
  /* 0x802869F0 */  lui $at, 0x8034
  /* 0x802869F4 */  lwc1 $f4, -14868($at)
  /* 0x802869F8 */  lui $at, 0x8034
  /* 0x802869FC */  swc1 $f4, -14844($at)
  /* 0x80286A00 */  lui $at, 0x8034
  /* 0x80286A04 */  lwc1 $f6, -14852($at)
  /* 0x80286A08 */  lui $at, 0x8034
  /* 0x80286A0C */  swc1 $f6, -14832($at)
  /* 0x80286A10 */  lui $t0, 0x8034
  /* 0x80286A14 */  lw $t0, -14872($t0)
  /* 0x80286A18 */  lui $at, 0x8034
  /* 0x80286A1C */  sw $t0, -14848($at)
  /* 0x80286A20 */  lui $t1, 0x8034
  /* 0x80286A24 */  lw $t1, -14860($t1)
  /* 0x80286A28 */  lui $at, 0x8034
  /* 0x80286A2C */  sw $t1, -14836($at)
  /* 0x80286A30 */  lui $t2, 0x8034
  /* 0x80286A34 */  lh $t2, -14864($t2)
  /* 0x80286A38 */  lui $at, 0x8034
  /* 0x80286A3C */  sh $t2, -14840($at)
  /* 0x80286A40 */  lui $t3, 0x8034
  /* 0x80286A44 */  lh $t3, -14856($t3)
  /* 0x80286A48 */  lui $at, 0x8034
  /* 0x80286A4C */  sh $t3, -14828($at)
  /* 0x80286A50 */  lui $a0, 0x8034
  /* 0x80286A54 */  jal 0x8028FC9C
  /* 0x80286A58 */  addiu $a0, $a0, -14872
  /* 0x80286A5C */  li $t4, 1
  /* 0x80286A60 */  lui $at, 0x8036
  /* 0x80286A64 */  sh $t4, 4480($at)
  /* 0x80286A68 */  lw $a0, 64($sp)
  /* 0x80286A6C */  lui $a1, 0x8034
  /* 0x80286A70 */  addiu $a1, $a1, -14696
  /* 0x80286A74 */  addiu $a1, $a1, 36
  /* 0x80286A78 */  jal 0x80378800
  /* 0x80286A7C */  addiu $a0, $a0, 16
  /* 0x80286A80 */  lw $a0, 64($sp)
  /* 0x80286A84 */  lui $a1, 0x8034
  /* 0x80286A88 */  addiu $a1, $a1, -14696
  /* 0x80286A8C */  addiu $a1, $a1, 24
  /* 0x80286A90 */  jal 0x80378800
  /* 0x80286A94 */  addiu $a0, $a0, 4
  /* 0x80286A98 */  lui $t5, 0x8034
  /* 0x80286A9C */  lh $t5, -14572($t5)
  /* 0x80286AA0 */  lw $t6, 64($sp)
  /* 0x80286AA4 */  sh $t5, 2($t6)
  /* 0x80286AA8 */  lui $t7, 0x8034
  /* 0x80286AAC */  lh $t7, -14570($t7)
  /* 0x80286AB0 */  lw $t8, 64($sp)
  /* 0x80286AB4 */  sh $t7, 58($t8)
  /* 0x80286AB8 */  lui $t9, 0x8034
  /* 0x80286ABC */  lbu $t9, -14636($t9)
  /* 0x80286AC0 */  lw $t0, 64($sp)
  /* 0x80286AC4 */  sb $t9, 0($t0)
  /* 0x80286AC8 */  lui $t1, 0x8034
  /* 0x80286ACC */  lbu $t1, -14635($t1)
  /* 0x80286AD0 */  lw $t2, 64($sp)
  /* 0x80286AD4 */  sb $t1, 1($t2)
  /* 0x80286AD8 */  jal 0x80402F50  ; <-- CHANGED
  /* 0x80286ADC */  lw $a0, 64($sp)
  /* 0x80286AE0 */  jal 0x80287DD4
  /* 0x80286AE4 */  lw $a0, 64($sp)
  /* 0x80286AE8 */  lui $t3, 0x8033
  /* 0x80286AEC */  lw $t3, -10780($t3)
  /* 0x80286AF0 */  lui $a0, 0x8034
  /* 0x80286AF4 */  lhu $a0, -14706($a0)
  /* 0x80286AF8 */  lhu $a1, 18($t3)
  /* 0x80286AFC */  jal 0x80288CE4
  /* 0x80286B00 */  lhu $a2, 16($t3)
  /* 0x80286B04 */  lui $at, 0x8034
  /* 0x80286B08 */  sh $v0, -14706($at)
  /* 0x80286B0C */  lw $t4, 64($sp)
  /* 0x80286B10 */  lbu $t5, 48($t4)
  /* 0x80286B14 */  beq $t5, $zero, .update_camera_L80286B38
  /* 0x80286B18 */  nop
  /* 0x80286B1C */  lui $at, 0x8033
  /* 0x80286B20 */  sh $zero, -8396($at)
  /* 0x80286B24 */  jal 0x802994E8
  /* 0x80286B28 */  lw $a0, 64($sp)
  /* 0x80286B2C */  lui $at, 0x8033
  /* 0x80286B30 */  b .update_camera_L80286B94
  /* 0x80286B34 */  sb $zero, -8360($at)
.update_camera_L80286B38:
  /* 0x80286B38 */  lui $t6, 0x8033
  /* 0x80286B3C */  lbu $t6, -8364($t6)
  /* 0x80286B40 */  beq $t6, $zero, .update_camera_L80286B94
  /* 0x80286B44 */  nop
  /* 0x80286B48 */  lui $t7, 0x8033
  /* 0x80286B4C */  lbu $t7, -8360($t7)
  /* 0x80286B50 */  slti $at, $t7, 8
  /* 0x80286B54 */  beq $at, $zero, .update_camera_L80286B94
  /* 0x80286B58 */  nop
  /* 0x80286B5C */  lui $t8, 0x8033
  /* 0x80286B60 */  lbu $t8, -8360($t8)
  /* 0x80286B64 */  lui $at, 0x8033
  /* 0x80286B68 */  addiu $t9, $t8, 1
  /* 0x80286B6C */  sb $t9, -8360($at)
  /* 0x80286B70 */  lui $t0, 0x8033
  /* 0x80286B74 */  lbu $t0, -8360($t0)
  /* 0x80286B78 */  slti $at, $t0, 8
  /* 0x80286B7C */  bne $at, $zero, .update_camera_L80286B94
  /* 0x80286B80 */  nop
  /* 0x80286B84 */  lui $at, 0x8033
  /* 0x80286B88 */  sb $zero, -8364($at)
  /* 0x80286B8C */  lui $at, 0x8033
  /* 0x80286B90 */  sb $zero, -8360($at)
.update_camera_L80286B94:
  /* 0x80286B94 */  lw $t1, 64($sp)
  /* 0x80286B98 */  lbu $t2, 48($t1)
  /* 0x80286B9C */  bne $t2, $zero, .update_camera_L80286D64
  /* 0x80286BA0 */  nop
  /* 0x80286BA4 */  li $t3, 1024
  /* 0x80286BA8 */  lui $at, 0x8033
  /* 0x80286BAC */  sh $t3, -8396($at)
  /* 0x80286BB0 */  lui $t4, 0x8034
  /* 0x80286BB4 */  lh $t4, -14716($t4)
  /* 0x80286BB8 */  andi $t5, $t4, 0x1
  /* 0x80286BBC */  beq $t5, $zero, .update_camera_L80286C54
  /* 0x80286BC0 */  nop
  /* 0x80286BC4 */  lw $t6, 64($sp)
  /* 0x80286BC8 */  li $at, 3
  /* 0x80286BCC */  lbu $s0, 0($t6)
  /* 0x80286BD0 */  beq $s0, $at, .update_camera_L80286C04
  /* 0x80286BD4 */  nop
  /* 0x80286BD8 */  li $at, 6
  /* 0x80286BDC */  beq $s0, $at, .update_camera_L80286C14
  /* 0x80286BE0 */  nop
  /* 0x80286BE4 */  li $at, 8
  /* 0x80286BE8 */  beq $s0, $at, .update_camera_L80286C24
  /* 0x80286BEC */  nop
  /* 0x80286BF0 */  li $at, 10
  /* 0x80286BF4 */  beq $s0, $at, .update_camera_L80286C34
  /* 0x80286BF8 */  nop
  /* 0x80286BFC */  b .update_camera_L80286C44
  /* 0x80286C00 */  nop
.update_camera_L80286C04:
  /* 0x80286C04 */  jal 0x802839E4
  /* 0x80286C08 */  lw $a0, 64($sp)
  /* 0x80286C0C */  b .update_camera_L80286C4C
  /* 0x80286C10 */  nop
.update_camera_L80286C14:
  /* 0x80286C14 */  jal 0x80285D20
  /* 0x80286C18 */  lw $a0, 64($sp)
  /* 0x80286C1C */  b .update_camera_L80286C4C
  /* 0x80286C20 */  nop
.update_camera_L80286C24:
  /* 0x80286C24 */  jal 0x80283A34
  /* 0x80286C28 */  lw $a0, 64($sp)
  /* 0x80286C2C */  b .update_camera_L80286C4C
  /* 0x80286C30 */  nop
.update_camera_L80286C34:
  /* 0x80286C34 */  jal 0x80285F60
  /* 0x80286C38 */  lw $a0, 64($sp)
  /* 0x80286C3C */  b .update_camera_L80286C4C
  /* 0x80286C40 */  nop
.update_camera_L80286C44:
  /* 0x80286C44 */  jal 0x80284D38
  /* 0x80286C48 */  lw $a0, 64($sp)
.update_camera_L80286C4C:
  /* 0x80286C4C */  b .update_camera_L80286D64
  /* 0x80286C50 */  nop
.update_camera_L80286C54:
  /* 0x80286C54 */  lw $t7, 64($sp)
  /* 0x80286C58 */  lbu $t8, 0($t7)
  /* 0x80286C5C */  addiu $t9, $t8, -1
  /* 0x80286C60 */  sltiu $at, $t9, 17
  /* 0x80286C64 */  beq $at, $zero, .update_camera_L80286D64
  /* 0x80286C68 */  nop
  /* 0x80286C6C */  sll $t9, $t9, 2
  /* 0x80286C70 */  lui $at, 0x8033
  /* 0x80286C74 */  addu $at, $at, $t9
  /* 0x80286C78 */  lw $t9, 29208($at)
  /* 0x80286C7C */  jr $t9
  /* 0x80286C80 */  nop
  /* 0x80286C84 */  jal 0x802839E4
  /* 0x80286C88 */  lw $a0, 64($sp)
  /* 0x80286C8C */  b .update_camera_L80286D64
  /* 0x80286C90 */  nop
  /* 0x80286C94 */  jal 0x80285D20
  /* 0x80286C98 */  lw $a0, 64($sp)
  /* 0x80286C9C */  b .update_camera_L80286D64
  /* 0x80286CA0 */  nop
  /* 0x80286CA4 */  jal 0x80283A34
  /* 0x80286CA8 */  lw $a0, 64($sp)
  /* 0x80286CAC */  b .update_camera_L80286D64
  /* 0x80286CB0 */  nop
  /* 0x80286CB4 */  jal 0x80285F60
  /* 0x80286CB8 */  lw $a0, 64($sp)
  /* 0x80286CBC */  b .update_camera_L80286D64
  /* 0x80286CC0 */  nop
  /* 0x80286CC4 */  jal 0x80281588
  /* 0x80286CC8 */  lw $a0, 64($sp)
  /* 0x80286CCC */  b .update_camera_L80286D64
  /* 0x80286CD0 */  nop
  /* 0x80286CD4 */  jal 0x8028146C
  /* 0x80286CD8 */  lw $a0, 64($sp)
  /* 0x80286CDC */  b .update_camera_L80286D64
  /* 0x80286CE0 */  nop
  /* 0x80286CE4 */  jal 0x802817FC
  /* 0x80286CE8 */  lw $a0, 64($sp)
  /* 0x80286CEC */  b .update_camera_L80286D64
  /* 0x80286CF0 */  nop
  /* 0x80286CF4 */  jal 0x80284CFC
  /* 0x80286CF8 */  lw $a0, 64($sp)
  /* 0x80286CFC */  b .update_camera_L80286D64
  /* 0x80286D00 */  nop
  /* 0x80286D04 */  jal 0x80284CFC
  /* 0x80286D08 */  lw $a0, 64($sp)
  /* 0x80286D0C */  b .update_camera_L80286D64
  /* 0x80286D10 */  nop
  /* 0x80286D14 */  jal 0x80282C3C
  /* 0x80286D18 */  lw $a0, 64($sp)
  /* 0x80286D1C */  b .update_camera_L80286D64
  /* 0x80286D20 */  nop
  /* 0x80286D24 */  jal 0x80282C7C
  /* 0x80286D28 */  lw $a0, 64($sp)
  /* 0x80286D2C */  b .update_camera_L80286D64
  /* 0x80286D30 */  nop
  /* 0x80286D34 */  jal 0x802851DC
  /* 0x80286D38 */  lw $a0, 64($sp)
  /* 0x80286D3C */  b .update_camera_L80286D64
  /* 0x80286D40 */  nop
  /* 0x80286D44 */  jal 0x80282CE0
  /* 0x80286D48 */  lw $a0, 64($sp)
  /* 0x80286D4C */  b .update_camera_L80286D64
  /* 0x80286D50 */  nop
  /* 0x80286D54 */  jal 0x802850AC
  /* 0x80286D58 */  lw $a0, 64($sp)
  /* 0x80286D5C */  b .update_camera_L80286D64
  /* 0x80286D60 */  nop
.update_camera_L80286D64:
  /* 0x80286D64 */  jal 0x8028C2C8
  /* 0x80286D68 */  lw $a0, 64($sp)
  /* 0x80286D6C */  andi $s1, $v0, 0xFF
  /* 0x80286D70 */  move $a1, $s1
  /* 0x80286D74 */  jal 0x8028C13C
  /* 0x80286D78 */  lw $a0, 64($sp)
  /* 0x80286D7C */  jal 0x80287DC0
  /* 0x80286D80 */  lw $a0, 64($sp)
  /* 0x80286D84 */  lui $at, 0x8036
  /* 0x80286D88 */  sh $zero, 4480($at)
  /* 0x80286D8C */  lui $t0, 0x8033
  /* 0x80286D90 */  lh $t0, -8712($t0)
  /* 0x80286D94 */  li $at, 6
  /* 0x80286D98 */  beq $t0, $at, .update_camera_L80286EFC
  /* 0x80286D9C */  nop
  /* 0x80286DA0 */  lw $t1, 64($sp)
  /* 0x80286DA4 */  lbu $t2, 48($t1)
  /* 0x80286DA8 */  bne $t2, $zero, .update_camera_L80286DDC
  /* 0x80286DAC */  nop
  /* 0x80286DB0 */  lui $t3, 0x8033
  /* 0x80286DB4 */  lw $t3, -10780($t3)
  /* 0x80286DB8 */  lhu $t4, 16($t3)
  /* 0x80286DBC */  andi $t5, $t4, 0x10
  /* 0x80286DC0 */  beq $t5, $zero, .update_camera_L80286DDC
  /* 0x80286DC4 */  nop
  /* 0x80286DC8 */  jal 0x80288624
  /* 0x80286DCC */  move $a0, $zero
  /* 0x80286DD0 */  li $at, 2
  /* 0x80286DD4 */  beq $v0, $at, .update_camera_L80286E0C
  /* 0x80286DD8 */  nop
.update_camera_L80286DDC:
  /* 0x80286DDC */  lui $t6, 0x8034
  /* 0x80286DE0 */  lh $t6, -14264($t6)
  /* 0x80286DE4 */  andi $t7, $t6, 0x40
  /* 0x80286DE8 */  bne $t7, $zero, .update_camera_L80286E0C
  /* 0x80286DEC */  nop
  /* 0x80286DF0 */  lui $t8, 0x8033
  /* 0x80286DF4 */  lw $t8, -8352($t8)
  /* 0x80286DF8 */  lui $at, 0x102
  /* 0x80286DFC */  ori $at, $at, 0x8B8
  /* 0x80286E00 */  lw $t9, 0($t8)
  /* 0x80286E04 */  bne $t9, $at, .update_camera_L80286EC0
  /* 0x80286E08 */  nop
.update_camera_L80286E0C:
  /* 0x80286E0C */  lw $t0, 64($sp)
  /* 0x80286E10 */  lbu $t1, 48($t0)
  /* 0x80286E14 */  bne $t1, $zero, .update_camera_L80286E64
  /* 0x80286E18 */  nop
  /* 0x80286E1C */  lui $t2, 0x8033
  /* 0x80286E20 */  lw $t2, -10780($t2)
  /* 0x80286E24 */  lhu $t3, 18($t2)
  /* 0x80286E28 */  andi $t4, $t3, 0x10
  /* 0x80286E2C */  beq $t4, $zero, .update_camera_L80286E64
  /* 0x80286E30 */  nop
  /* 0x80286E34 */  jal 0x80288624
  /* 0x80286E38 */  move $a0, $zero
  /* 0x80286E3C */  li $at, 2
  /* 0x80286E40 */  bne $v0, $at, .update_camera_L80286E64
  /* 0x80286E44 */  nop
  /* 0x80286E48 */  lui $t5, 0x8034
  /* 0x80286E4C */  lh $t5, -14708($t5)
  /* 0x80286E50 */  lui $at, 0x8034
  /* 0x80286E54 */  ori $t6, $t5, 0x20
  /* 0x80286E58 */  sh $t6, -14708($at)
  /* 0x80286E5C */  jal 0x8028B920
  /* 0x80286E60 */  nop
.update_camera_L80286E64:
  /* 0x80286E64 */  mtc1 $zero, $f8
  /* 0x80286E68 */  lui $at, 0x8034
  /* 0x80286E6C */  swc1 $f8, -14524($at)
  /* 0x80286E70 */  mtc1 $zero, $f10
  /* 0x80286E74 */  lui $at, 0x8034
  /* 0x80286E78 */  swc1 $f10, -14520($at)
  /* 0x80286E7C */  lui $t7, 0x8034
  /* 0x80286E80 */  addiu $t7, $t7, -14696
  /* 0x80286E84 */  addiu $a0, $t7, 128
  /* 0x80286E88 */  jal 0x8028AAD8
  /* 0x80286E8C */  addiu $a1, $t7, 140
  /* 0x80286E90 */  lw $t8, 64($sp)
  /* 0x80286E94 */  sh $v0, 58($t8)
  /* 0x80286E98 */  lw $t9, 64($sp)
  /* 0x80286E9C */  lh $t0, 58($t9)
  /* 0x80286EA0 */  sh $t0, 2($t9)
  /* 0x80286EA4 */  lui $t1, 0x8034
  /* 0x80286EA8 */  lh $t1, -14264($t1)
  /* 0x80286EAC */  li $at, -65
  /* 0x80286EB0 */  and $t2, $t1, $at
  /* 0x80286EB4 */  lui $at, 0x8034
  /* 0x80286EB8 */  b .update_camera_L80286EF4
  /* 0x80286EBC */  sh $t2, -14264($at)
.update_camera_L80286EC0:
  /* 0x80286EC0 */  lui $t3, 0x8034
  /* 0x80286EC4 */  lh $t3, -14708($t3)
  /* 0x80286EC8 */  andi $t4, $t3, 0x20
  /* 0x80286ECC */  beq $t4, $zero, .update_camera_L80286EF4
  /* 0x80286ED0 */  nop
  /* 0x80286ED4 */  jal 0x8028B920
  /* 0x80286ED8 */  nop
  /* 0x80286EDC */  lui $t5, 0x8034
  /* 0x80286EE0 */  lh $t5, -14708($t5)
  /* 0x80286EE4 */  li $at, -33
  /* 0x80286EE8 */  and $t6, $t5, $at
  /* 0x80286EEC */  lui $at, 0x8034
  /* 0x80286EF0 */  sh $t6, -14708($at)
.update_camera_L80286EF4:
  /* 0x80286EF4 */  b .update_camera_L80286F30
  /* 0x80286EF8 */  nop
.update_camera_L80286EFC:
  /* 0x80286EFC */  lui $t7, 0x8033
  /* 0x80286F00 */  lw $t7, -10780($t7)
  /* 0x80286F04 */  lhu $t8, 18($t7)
  /* 0x80286F08 */  andi $t0, $t8, 0x10
  /* 0x80286F0C */  beq $t0, $zero, .update_camera_L80286F30
  /* 0x80286F10 */  nop
  /* 0x80286F14 */  jal 0x80288624
  /* 0x80286F18 */  move $a0, $zero
  /* 0x80286F1C */  li $at, 2
  /* 0x80286F20 */  bne $v0, $at, .update_camera_L80286F30
  /* 0x80286F24 */  nop
  /* 0x80286F28 */  jal 0x8028B8EC
  /* 0x80286F2C */  nop
.update_camera_L80286F30:
  /* 0x80286F30 */  jal 0x80286420
  /* 0x80286F34 */  lw $a0, 64($sp)
  /* 0x80286F38 */  lui $t9, 0x8033
  /* 0x80286F3C */  lw $t9, -8352($t9)
  /* 0x80286F40 */  lui $at, 0x8034
  /* 0x80286F44 */  lw $t1, 0($t9)
  /* 0x80286F48 */  sw $t1, -14512($at)
  /* 0x80286F4C */  b .update_camera_L80286F54
  /* 0x80286F50 */  nop
.update_camera_L80286F54:
  /* 0x80286F54 */  lw $ra, 28($sp)
  /* 0x80286F58 */  lw $s0, 20($sp)
  /* 0x80286F5C */  lw $s1, 24($sp)
  /* 0x80286F60 */  jr $ra
  /* 0x80286F64 */  addiu $sp, $sp, 64
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x80286AD8:
  ;   was: 0C 0A 3B AC  jal 0x8028EEB0
  ;   new: 0C 10 0B D4  jal 0x80402F50
