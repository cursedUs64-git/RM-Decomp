; Function: geo_movtex_draw_water_regions
; RAM: 0x802D104C  Size: 0x2E4

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x802D104C */  addiu $sp, $sp, -72
  /* 0x802D1050 */  sw $ra, 20($sp)
  /* 0x802D1054 */  sw $a0, 72($sp)
  /* 0x802D1058 */  sw $a1, 76($sp)
  /* 0x802D105C */  sw $a2, 80($sp)
  /* 0x802D1060 */  sw $zero, 68($sp)
  /* 0x802D1064 */  sw $zero, 64($sp)
  /* 0x802D1068 */  lw $t6, 72($sp)
  /* 0x802D106C */  li $at, 1
  /* 0x802D1070 */  bne $t6, $at, .geo_movtex_draw_water_regions_L802D1310
  /* 0x802D1074 */  nop
  /* 0x802D1078 */  lui $at, 0x8033
  /* 0x802D107C */  sb $zero, 3896($at)
  /* 0x802D1080 */  lui $t7, 0x8036
  /* 0x802D1084 */  lw $t7, 4484($t7)
  /* 0x802D1088 */  bne $t7, $zero, .geo_movtex_draw_water_regions_L802D1098
  /* 0x802D108C */  nop
  /* 0x802D1090 */  b .geo_movtex_draw_water_regions_L802D1320
  /* 0x802D1094 */  move $v0, $zero
.geo_movtex_draw_water_regions_L802D1098:
  /* 0x802D1098 */  lui $t8, 0x8036
  /* 0x802D109C */  lw $t8, 4484($t8)
  /* 0x802D10A0 */  lh $t9, 0($t8)
  /* 0x802D10A4 */  sh $t9, 50($sp)
  /* 0x802D10A8 */  lh $a0, 50($sp)
  /* 0x802D10AC */  sll $t0, $a0, 3
  /* 0x802D10B0 */  move $a0, $t0
  /* 0x802D10B4 */  jal 0x80278F2C
  /* 0x802D10B8 */  addiu $a0, $a0, 24
  /* 0x802D10BC */  sw $v0, 68($sp)
  /* 0x802D10C0 */  lw $t1, 68($sp)
  /* 0x802D10C4 */  bne $t1, $zero, .geo_movtex_draw_water_regions_L802D10DC
  /* 0x802D10C8 */  nop
  /* 0x802D10CC */  b .geo_movtex_draw_water_regions_L802D1320
  /* 0x802D10D0 */  move $v0, $zero
  /* 0x802D10D4 */  b .geo_movtex_draw_water_regions_L802D10E4
  /* 0x802D10D8 */  nop
.geo_movtex_draw_water_regions_L802D10DC:
  /* 0x802D10DC */  lw $t2, 68($sp)
  /* 0x802D10E0 */  sw $t2, 64($sp)
.geo_movtex_draw_water_regions_L802D10E4:
  /* 0x802D10E4 */  lw $t3, 76($sp)
  /* 0x802D10E8 */  sw $t3, 52($sp)
  /* 0x802D10EC */  lw $t4, 52($sp)
  /* 0x802D10F0 */  li $at, 4613
  /* 0x802D10F4 */  lw $t5, 24($t4)
  /* 0x802D10F8 */  bne $t5, $at, .geo_movtex_draw_water_regions_L802D1164
  /* 0x802D10FC */  nop
  /* 0x802D1100 */  lui $t6, 0x8034
  /* 0x802D1104 */  addiu $t6, $t6, -14696
  /* 0x802D1108 */  lwc1 $f4, 40($t6)
  /* 0x802D110C */  lui $at, 0x4090
  /* 0x802D1110 */  mtc1 $at, $f9
  /* 0x802D1114 */  mtc1 $zero, $f8
  /* 0x802D1118 */  cvt.d.s $f6, $f4
  /* 0x802D111C */  c.lt.d $f6, $f8
  /* 0x802D1120 */  nop
  /* 0x802D1124 */  bc1f .geo_movtex_draw_water_regions_L802D1134
  /* 0x802D1128 */  nop
  /* 0x802D112C */  b .geo_movtex_draw_water_regions_L802D1320
  /* 0x802D1130 */  move $v0, $zero
.geo_movtex_draw_water_regions_L802D1134:
  /* 0x802D1134 */  lui $a0, 0x8033
  /* 0x802D1138 */  lh $a0, -8716($a0)
  /* 0x802D113C */  li $a1, 2
  /* 0x802D1140 */  jal 0x8027A1C8
  /* 0x802D1144 */  addiu $a0, $a0, -1
  /* 0x802D1148 */  andi $t7, $v0, 0x1
  /* 0x802D114C */  beq $t7, $zero, .geo_movtex_draw_water_regions_L802D115C
  /* 0x802D1150 */  nop
  /* 0x802D1154 */  b .geo_movtex_draw_water_regions_L802D1320
  /* 0x802D1158 */  move $v0, $zero
.geo_movtex_draw_water_regions_L802D115C:
  /* 0x802D115C */  b .geo_movtex_draw_water_regions_L802D11A8
  /* 0x802D1160 */  nop
.geo_movtex_draw_water_regions_L802D1164:
  /* 0x802D1164 */  lw $t8, 52($sp)
  /* 0x802D1168 */  li $at, 1794
  /* 0x802D116C */  lw $t9, 24($t8)
  /* 0x802D1170 */  bne $t9, $at, .geo_movtex_draw_water_regions_L802D1188
  /* 0x802D1174 */  nop
  /* 0x802D1178 */  li $t0, 1
  /* 0x802D117C */  lui $at, 0x8033
  /* 0x802D1180 */  b .geo_movtex_draw_water_regions_L802D11A8
  /* 0x802D1184 */  sb $t0, 3896($at)
.geo_movtex_draw_water_regions_L802D1188:
  /* 0x802D1188 */  lw $t1, 52($sp)
  /* 0x802D118C */  li $at, 2129
  /* 0x802D1190 */  lw $t2, 24($t1)
  /* 0x802D1194 */  bne $t2, $at, .geo_movtex_draw_water_regions_L802D11A8
  /* 0x802D1198 */  nop
  /* 0x802D119C */  li $t3, 2
  /* 0x802D11A0 */  lui $at, 0x8033
  /* 0x802D11A4 */  sb $t3, 3896($at)
.geo_movtex_draw_water_regions_L802D11A8:
  /* 0x802D11A8 */  lw $t4, 52($sp)
  /* 0x802D11AC */  jal 0x802D0C84  ; <-- CHANGED
  /* 0x802D11B0 */  lw $a0, 24($t4)
  /* 0x802D11B4 */  sw $v0, 56($sp)
  /* 0x802D11B8 */  lw $t5, 56($sp)
  /* 0x802D11BC */  bne $t5, $zero, .geo_movtex_draw_water_regions_L802D11CC
  /* 0x802D11C0 */  nop
  /* 0x802D11C4 */  b .geo_movtex_draw_water_regions_L802D1320
  /* 0x802D11C8 */  move $v0, $zero
.geo_movtex_draw_water_regions_L802D11CC:
  /* 0x802D11CC */  lw $t6, 52($sp)
  /* 0x802D11D0 */  lh $t7, 2($t6)
  /* 0x802D11D4 */  andi $t8, $t7, 0xFF
  /* 0x802D11D8 */  ori $t9, $t8, 0x700
  /* 0x802D11DC */  sh $t9, 2($t6)
  /* 0x802D11E0 */  lw $t0, 52($sp)
  /* 0x802D11E4 */  addiu $a1, $sp, 64
  /* 0x802D11E8 */  jal 0x802D0F28  ; <-- CHANGED
  /* 0x802D11EC */  lw $a0, 24($t0)
  /* 0x802D11F0 */  li $t1, -1
  /* 0x802D11F4 */  lui $at, 0x8036
  /* 0x802D11F8 */  sh $t1, 4832($at)
  /* 0x802D11FC */  lh $t2, 50($sp)
  /* 0x802D1200 */  sw $zero, 40($sp)
  /* 0x802D1204 */  blez $t2, .geo_movtex_draw_water_regions_L802D12C8
  /* 0x802D1208 */  nop
.geo_movtex_draw_water_regions_L802D120C:
  /* 0x802D120C */  lw $t4, 40($sp)
  /* 0x802D1210 */  lui $t3, 0x8036
  /* 0x802D1214 */  lw $t3, 4484($t3)
  /* 0x802D1218 */  sll $t5, $t4, 2
  /* 0x802D121C */  subu $t5, $t5, $t4
  /* 0x802D1220 */  sll $t5, $t5, 1
  /* 0x802D1224 */  sll $t7, $t5, 1
  /* 0x802D1228 */  addu $t8, $t3, $t7
  /* 0x802D122C */  lh $t9, 2($t8)
  /* 0x802D1230 */  sh $t9, 48($sp)
  /* 0x802D1234 */  lw $t0, 40($sp)
  /* 0x802D1238 */  lui $t6, 0x8036
  /* 0x802D123C */  lw $t6, 4484($t6)
  /* 0x802D1240 */  sll $t1, $t0, 2
  /* 0x802D1244 */  subu $t1, $t1, $t0
  /* 0x802D1248 */  sll $t1, $t1, 1
  /* 0x802D124C */  sll $t2, $t1, 1
  /* 0x802D1250 */  addu $t4, $t6, $t2
  /* 0x802D1254 */  lh $t5, 12($t4)
  /* 0x802D1258 */  sh $t5, 46($sp)
  /* 0x802D125C */  lh $a0, 48($sp)
  /* 0x802D1260 */  lh $a1, 46($sp)
  /* 0x802D1264 */  jal 0x802D0BB0
  /* 0x802D1268 */  lw $a2, 56($sp)
  /* 0x802D126C */  sw $v0, 60($sp)
  /* 0x802D1270 */  lw $t3, 60($sp)
  /* 0x802D1274 */  beq $t3, $zero, .geo_movtex_draw_water_regions_L802D12B0
  /* 0x802D1278 */  nop
  /* 0x802D127C */  lw $t7, 64($sp)
  /* 0x802D1280 */  addiu $t8, $t7, 8
  /* 0x802D1284 */  sw $t8, 64($sp)
  /* 0x802D1288 */  sw $t7, 36($sp)
  /* 0x802D128C */  lw $t0, 36($sp)
  /* 0x802D1290 */  lui $t9, 0x600
  /* 0x802D1294 */  sw $t9, 0($t0)
  /* 0x802D1298 */  lw $t1, 60($sp)
  /* 0x802D129C */  lw $t2, 36($sp)
  /* 0x802D12A0 */  lui $at, 0x1FFF
  /* 0x802D12A4 */  ori $at, $at, 0xFFFF
  /* 0x802D12A8 */  and $t6, $t1, $at
  /* 0x802D12AC */  sw $t6, 4($t2)
.geo_movtex_draw_water_regions_L802D12B0:
  /* 0x802D12B0 */  lw $t4, 40($sp)
  /* 0x802D12B4 */  lh $t3, 50($sp)
  /* 0x802D12B8 */  addiu $t5, $t4, 1
  /* 0x802D12BC */  slt $at, $t5, $t3
  /* 0x802D12C0 */  bne $at, $zero, .geo_movtex_draw_water_regions_L802D120C
  /* 0x802D12C4 */  sw $t5, 40($sp)
.geo_movtex_draw_water_regions_L802D12C8:
  /* 0x802D12C8 */  lw $t7, 64($sp)
  /* 0x802D12CC */  addiu $t8, $t7, 8
  /* 0x802D12D0 */  sw $t8, 64($sp)
  /* 0x802D12D4 */  sw $t7, 32($sp)
  /* 0x802D12D8 */  lw $t0, 32($sp)
  /* 0x802D12DC */  lui $t9, 0x600
  /* 0x802D12E0 */  sw $t9, 0($t0)
  /* 0x802D12E4 */  lw $t6, 32($sp)
  /* 0x802D12E8 */  lui $t1, 0x201
  /* 0x802D12EC */  addiu $t1, $t1, 30320
  /* 0x802D12F0 */  sw $t1, 4($t6)
  /* 0x802D12F4 */  lw $t2, 64($sp)
  /* 0x802D12F8 */  sw $t2, 28($sp)
  /* 0x802D12FC */  lw $t5, 28($sp)
  /* 0x802D1300 */  lui $t4, 0xB800
  /* 0x802D1304 */  sw $t4, 0($t5)
  /* 0x802D1308 */  lw $t3, 28($sp)
  /* 0x802D130C */  sw $zero, 4($t3)
.geo_movtex_draw_water_regions_L802D1310:
  /* 0x802D1310 */  b .geo_movtex_draw_water_regions_L802D1320
  /* 0x802D1314 */  lw $v0, 68($sp)
  /* 0x802D1318 */  b .geo_movtex_draw_water_regions_L802D1320
  /* 0x802D131C */  nop
.geo_movtex_draw_water_regions_L802D1320:
  /* 0x802D1320 */  lw $ra, 20($sp)
  /* 0x802D1324 */  addiu $sp, $sp, 72
  /* 0x802D1328 */  jr $ra
  /* 0x802D132C */  nop
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x802D104C */  addiu $sp, $sp, -72
  /* 0x802D1050 */  sw $ra, 20($sp)
  /* 0x802D1054 */  sw $a0, 72($sp)
  /* 0x802D1058 */  sw $a1, 76($sp)
  /* 0x802D105C */  sw $a2, 80($sp)
  /* 0x802D1060 */  sw $zero, 68($sp)
  /* 0x802D1064 */  sw $zero, 64($sp)
  /* 0x802D1068 */  lw $t6, 72($sp)
  /* 0x802D106C */  li $at, 1
  /* 0x802D1070 */  bne $t6, $at, .geo_movtex_draw_water_regions_L802D1310
  /* 0x802D1074 */  nop
  /* 0x802D1078 */  lui $at, 0x8033
  /* 0x802D107C */  sb $zero, 3896($at)
  /* 0x802D1080 */  lui $t7, 0x8036
  /* 0x802D1084 */  lw $t7, 4484($t7)
  /* 0x802D1088 */  bne $t7, $zero, .geo_movtex_draw_water_regions_L802D1098
  /* 0x802D108C */  nop
  /* 0x802D1090 */  b .geo_movtex_draw_water_regions_L802D1320
  /* 0x802D1094 */  move $v0, $zero
.geo_movtex_draw_water_regions_L802D1098:
  /* 0x802D1098 */  lui $t8, 0x8036
  /* 0x802D109C */  lw $t8, 4484($t8)
  /* 0x802D10A0 */  lh $t9, 0($t8)
  /* 0x802D10A4 */  sh $t9, 50($sp)
  /* 0x802D10A8 */  lh $a0, 50($sp)
  /* 0x802D10AC */  sll $t0, $a0, 3
  /* 0x802D10B0 */  move $a0, $t0
  /* 0x802D10B4 */  jal 0x80278F2C
  /* 0x802D10B8 */  addiu $a0, $a0, 24
  /* 0x802D10BC */  sw $v0, 68($sp)
  /* 0x802D10C0 */  lw $t1, 68($sp)
  /* 0x802D10C4 */  bne $t1, $zero, .geo_movtex_draw_water_regions_L802D10DC
  /* 0x802D10C8 */  nop
  /* 0x802D10CC */  b .geo_movtex_draw_water_regions_L802D1320
  /* 0x802D10D0 */  move $v0, $zero
  /* 0x802D10D4 */  b .geo_movtex_draw_water_regions_L802D10E4
  /* 0x802D10D8 */  nop
.geo_movtex_draw_water_regions_L802D10DC:
  /* 0x802D10DC */  lw $t2, 68($sp)
  /* 0x802D10E0 */  sw $t2, 64($sp)
.geo_movtex_draw_water_regions_L802D10E4:
  /* 0x802D10E4 */  lw $t3, 76($sp)
  /* 0x802D10E8 */  sw $t3, 52($sp)
  /* 0x802D10EC */  lw $t4, 52($sp)
  /* 0x802D10F0 */  li $at, 4613
  /* 0x802D10F4 */  lw $t5, 24($t4)
  /* 0x802D10F8 */  bne $t5, $at, .geo_movtex_draw_water_regions_L802D1164
  /* 0x802D10FC */  nop
  /* 0x802D1100 */  lui $t6, 0x8034
  /* 0x802D1104 */  addiu $t6, $t6, -14696
  /* 0x802D1108 */  lwc1 $f4, 40($t6)
  /* 0x802D110C */  lui $at, 0x4090
  /* 0x802D1110 */  mtc1 $at, $f9
  /* 0x802D1114 */  mtc1 $zero, $f8
  /* 0x802D1118 */  cvt.d.s $f6, $f4
  /* 0x802D111C */  c.lt.d $f6, $f8
  /* 0x802D1120 */  nop
  /* 0x802D1124 */  bc1f .geo_movtex_draw_water_regions_L802D1134
  /* 0x802D1128 */  nop
  /* 0x802D112C */  b .geo_movtex_draw_water_regions_L802D1320
  /* 0x802D1130 */  move $v0, $zero
.geo_movtex_draw_water_regions_L802D1134:
  /* 0x802D1134 */  lui $a0, 0x8033
  /* 0x802D1138 */  lh $a0, -8716($a0)
  /* 0x802D113C */  li $a1, 2
  /* 0x802D1140 */  jal 0x8027A1C8
  /* 0x802D1144 */  addiu $a0, $a0, -1
  /* 0x802D1148 */  andi $t7, $v0, 0x1
  /* 0x802D114C */  beq $t7, $zero, .geo_movtex_draw_water_regions_L802D115C
  /* 0x802D1150 */  nop
  /* 0x802D1154 */  b .geo_movtex_draw_water_regions_L802D1320
  /* 0x802D1158 */  move $v0, $zero
.geo_movtex_draw_water_regions_L802D115C:
  /* 0x802D115C */  b .geo_movtex_draw_water_regions_L802D11A8
  /* 0x802D1160 */  nop
.geo_movtex_draw_water_regions_L802D1164:
  /* 0x802D1164 */  lw $t8, 52($sp)
  /* 0x802D1168 */  li $at, 1794
  /* 0x802D116C */  lw $t9, 24($t8)
  /* 0x802D1170 */  bne $t9, $at, .geo_movtex_draw_water_regions_L802D1188
  /* 0x802D1174 */  nop
  /* 0x802D1178 */  li $t0, 1
  /* 0x802D117C */  lui $at, 0x8033
  /* 0x802D1180 */  b .geo_movtex_draw_water_regions_L802D11A8
  /* 0x802D1184 */  sb $t0, 3896($at)
.geo_movtex_draw_water_regions_L802D1188:
  /* 0x802D1188 */  lw $t1, 52($sp)
  /* 0x802D118C */  li $at, 2129
  /* 0x802D1190 */  lw $t2, 24($t1)
  /* 0x802D1194 */  bne $t2, $at, .geo_movtex_draw_water_regions_L802D11A8
  /* 0x802D1198 */  nop
  /* 0x802D119C */  li $t3, 2
  /* 0x802D11A0 */  lui $at, 0x8033
  /* 0x802D11A4 */  sb $t3, 3896($at)
.geo_movtex_draw_water_regions_L802D11A8:
  /* 0x802D11A8 */  lw $t4, 52($sp)
  /* 0x802D11AC */  jal 0x80403000  ; <-- CHANGED
  /* 0x802D11B0 */  lw $a0, 24($t4)
  /* 0x802D11B4 */  sw $v0, 56($sp)
  /* 0x802D11B8 */  lw $t5, 56($sp)
  /* 0x802D11BC */  bne $t5, $zero, .geo_movtex_draw_water_regions_L802D11CC
  /* 0x802D11C0 */  nop
  /* 0x802D11C4 */  b .geo_movtex_draw_water_regions_L802D1320
  /* 0x802D11C8 */  move $v0, $zero
.geo_movtex_draw_water_regions_L802D11CC:
  /* 0x802D11CC */  lw $t6, 52($sp)
  /* 0x802D11D0 */  lh $t7, 2($t6)
  /* 0x802D11D4 */  andi $t8, $t7, 0xFF
  /* 0x802D11D8 */  ori $t9, $t8, 0x700
  /* 0x802D11DC */  sh $t9, 2($t6)
  /* 0x802D11E0 */  lw $t0, 52($sp)
  /* 0x802D11E4 */  addiu $a1, $sp, 64
  /* 0x802D11E8 */  jal 0x80403500  ; <-- CHANGED
  /* 0x802D11EC */  lw $a0, 24($t0)
  /* 0x802D11F0 */  li $t1, -1
  /* 0x802D11F4 */  lui $at, 0x8036
  /* 0x802D11F8 */  sh $t1, 4832($at)
  /* 0x802D11FC */  lh $t2, 50($sp)
  /* 0x802D1200 */  sw $zero, 40($sp)
  /* 0x802D1204 */  blez $t2, .geo_movtex_draw_water_regions_L802D12C8
  /* 0x802D1208 */  nop
.geo_movtex_draw_water_regions_L802D120C:
  /* 0x802D120C */  lw $t4, 40($sp)
  /* 0x802D1210 */  lui $t3, 0x8036
  /* 0x802D1214 */  lw $t3, 4484($t3)
  /* 0x802D1218 */  sll $t5, $t4, 2
  /* 0x802D121C */  subu $t5, $t5, $t4
  /* 0x802D1220 */  sll $t5, $t5, 1
  /* 0x802D1224 */  sll $t7, $t5, 1
  /* 0x802D1228 */  addu $t8, $t3, $t7
  /* 0x802D122C */  lh $t9, 2($t8)
  /* 0x802D1230 */  sh $t9, 48($sp)
  /* 0x802D1234 */  lw $t0, 40($sp)
  /* 0x802D1238 */  lui $t6, 0x8036
  /* 0x802D123C */  lw $t6, 4484($t6)
  /* 0x802D1240 */  sll $t1, $t0, 2
  /* 0x802D1244 */  subu $t1, $t1, $t0
  /* 0x802D1248 */  sll $t1, $t1, 1
  /* 0x802D124C */  sll $t2, $t1, 1
  /* 0x802D1250 */  addu $t4, $t6, $t2
  /* 0x802D1254 */  lh $t5, 12($t4)
  /* 0x802D1258 */  sh $t5, 46($sp)
  /* 0x802D125C */  lh $a0, 48($sp)
  /* 0x802D1260 */  lh $a1, 46($sp)
  /* 0x802D1264 */  jal 0x802D0BB0
  /* 0x802D1268 */  lw $a2, 56($sp)
  /* 0x802D126C */  sw $v0, 60($sp)
  /* 0x802D1270 */  lw $t3, 60($sp)
  /* 0x802D1274 */  beq $t3, $zero, .geo_movtex_draw_water_regions_L802D12B0
  /* 0x802D1278 */  nop
  /* 0x802D127C */  lw $t7, 64($sp)
  /* 0x802D1280 */  addiu $t8, $t7, 8
  /* 0x802D1284 */  sw $t8, 64($sp)
  /* 0x802D1288 */  sw $t7, 36($sp)
  /* 0x802D128C */  lw $t0, 36($sp)
  /* 0x802D1290 */  lui $t9, 0x600
  /* 0x802D1294 */  sw $t9, 0($t0)
  /* 0x802D1298 */  lw $t1, 60($sp)
  /* 0x802D129C */  lw $t2, 36($sp)
  /* 0x802D12A0 */  lui $at, 0x1FFF
  /* 0x802D12A4 */  ori $at, $at, 0xFFFF
  /* 0x802D12A8 */  and $t6, $t1, $at
  /* 0x802D12AC */  sw $t6, 4($t2)
.geo_movtex_draw_water_regions_L802D12B0:
  /* 0x802D12B0 */  lw $t4, 40($sp)
  /* 0x802D12B4 */  lh $t3, 50($sp)
  /* 0x802D12B8 */  addiu $t5, $t4, 1
  /* 0x802D12BC */  slt $at, $t5, $t3
  /* 0x802D12C0 */  bne $at, $zero, .geo_movtex_draw_water_regions_L802D120C
  /* 0x802D12C4 */  sw $t5, 40($sp)
.geo_movtex_draw_water_regions_L802D12C8:
  /* 0x802D12C8 */  lw $t7, 64($sp)
  /* 0x802D12CC */  addiu $t8, $t7, 8
  /* 0x802D12D0 */  sw $t8, 64($sp)
  /* 0x802D12D4 */  sw $t7, 32($sp)
  /* 0x802D12D8 */  lw $t0, 32($sp)
  /* 0x802D12DC */  lui $t9, 0x600
  /* 0x802D12E0 */  sw $t9, 0($t0)
  /* 0x802D12E4 */  lw $t6, 32($sp)
  /* 0x802D12E8 */  lui $t1, 0x201
  /* 0x802D12EC */  addiu $t1, $t1, 30320
  /* 0x802D12F0 */  sw $t1, 4($t6)
  /* 0x802D12F4 */  lw $t2, 64($sp)
  /* 0x802D12F8 */  sw $t2, 28($sp)
  /* 0x802D12FC */  lw $t5, 28($sp)
  /* 0x802D1300 */  lui $t4, 0xB800
  /* 0x802D1304 */  sw $t4, 0($t5)
  /* 0x802D1308 */  lw $t3, 28($sp)
  /* 0x802D130C */  sw $zero, 4($t3)
.geo_movtex_draw_water_regions_L802D1310:
  /* 0x802D1310 */  b .geo_movtex_draw_water_regions_L802D1320
  /* 0x802D1314 */  lw $v0, 68($sp)
  /* 0x802D1318 */  b .geo_movtex_draw_water_regions_L802D1320
  /* 0x802D131C */  nop
.geo_movtex_draw_water_regions_L802D1320:
  /* 0x802D1320 */  lw $ra, 20($sp)
  /* 0x802D1324 */  addiu $sp, $sp, 72
  /* 0x802D1328 */  jr $ra
  /* 0x802D132C */  nop
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x802D11AC:
  ;   was: 0C 0B 43 21  jal 0x802D0C84
  ;   new: 0C 10 0C 00  jal 0x80403000
  ; 0x802D11E8:
  ;   was: 0C 0B 43 CA  jal 0x802D0F28
  ;   new: 0C 10 0D 40  jal 0x80403500
