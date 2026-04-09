; Function: rm_stub2000  (custom)
; RAM: 0x80402000  Size: 0x270  ROM: 0x1202000
; Identical in both ROMs: False

; ── ROM A (original) ────────────────────────────────────────
.ifdef ORIGINAL
  /* 0x80402000 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402004 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402008 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040200C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402010 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402014 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402018 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040201C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402020 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402024 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402028 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040202C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402030 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402034 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402038 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040203C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402040 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402044 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402048 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040204C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402050 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402054 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402058 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040205C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402060 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402064 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402068 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040206C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402070 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402074 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402078 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040207C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402080 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402084 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402088 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040208C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402090 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402094 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402098 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040209C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020A0 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020A4 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020A8 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020AC */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020B0 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020B4 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020B8 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020BC */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020C0 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020C4 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020C8 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020CC */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020D0 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020D4 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020D8 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020DC */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020E0 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020E4 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020E8 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020EC */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020F0 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020F4 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020F8 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804020FC */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402100 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402104 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402108 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040210C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402110 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402114 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402118 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040211C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402120 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402124 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402128 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040212C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402130 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402134 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402138 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040213C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402140 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402144 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402148 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040214C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402150 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402154 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402158 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040215C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402160 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402164 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402168 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040216C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402170 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402174 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402178 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040217C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402180 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402184 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402188 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040218C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402190 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402194 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402198 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040219C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021A0 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021A4 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021A8 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021AC */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021B0 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021B4 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021B8 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021BC */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021C0 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021C4 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021C8 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021CC */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021D0 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021D4 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021D8 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021DC */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021E0 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021E4 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021E8 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021EC */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021F0 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021F4 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021F8 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x804021FC */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402200 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402204 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402208 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040220C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402210 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402214 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402218 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040221C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402220 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402224 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402228 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040222C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402230 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402234 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402238 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040223C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402240 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402244 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402248 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040224C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402250 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402254 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402258 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040225C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402260 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402264 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x80402268 */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
  /* 0x8040226C */  .word 0x01010101  // unknown SPECIAL funct=0x01  ; <-- CHANGED
.endif

; ── ROM B (modified) ────────────────────────────────────────
.ifdef RM
  /* 0x80402000 */  addiu $sp, $sp, -48  ; <-- CHANGED
  /* 0x80402004 */  sw $ra, 44($sp)  ; <-- CHANGED
  /* 0x80402008 */  sw $fp, 40($sp)  ; <-- CHANGED
  /* 0x8040200C */  move $fp, $sp  ; <-- CHANGED
  /* 0x80402010 */  lui $gp, 0x8040  ; <-- CHANGED
  /* 0x80402014 */  addiu $gp, $gp, 8816  ; <-- CHANGED
  /* 0x80402018 */  lui $v0, 0x8038  ; <-- CHANGED
  /* 0x8040201C */  ori $v0, $v0, 0xBE28  ; <-- CHANGED
  /* 0x80402020 */  sw $v0, 24($fp)  ; <-- CHANGED
  /* 0x80402024 */  lui $v0, 0x8038  ; <-- CHANGED
  /* 0x80402028 */  ori $v0, $v0, 0xBE28  ; <-- CHANGED
  /* 0x8040202C */  sw $v0, 20($fp)  ; <-- CHANGED
  /* 0x80402030 */  lw $v0, 24($fp)  ; <-- CHANGED
  /* 0x80402034 */  lw $v0, 0($v0)  ; <-- CHANGED
  /* 0x80402038 */  lbu $v1, 2($v0)  ; <-- CHANGED
  /* 0x8040203C */  li $v0, 1  ; <-- CHANGED
  /* 0x80402040 */  bne $v1, $v0, .rm_stub2000_L804021C8  ; <-- CHANGED
  /* 0x80402044 */  nop  ; <-- CHANGED
  /* 0x80402048 */  lw $v0, 24($fp)  ; <-- CHANGED
  /* 0x8040204C */  lw $v0, 0($v0)  ; <-- CHANGED
  /* 0x80402050 */  lbu $v0, 3($v0)  ; <-- CHANGED
  /* 0x80402054 */  sll $v0, $v0, 2  ; <-- CHANGED
  /* 0x80402058 */  move $v1, $v0  ; <-- CHANGED
  /* 0x8040205C */  lui $v0, 0x8033  ; <-- CHANGED
  /* 0x80402060 */  ori $v0, $v0, 0xB400  ; <-- CHANGED
  /* 0x80402064 */  addu $v0, $v1, $v0  ; <-- CHANGED
  /* 0x80402068 */  sw $v0, 16($fp)  ; <-- CHANGED
  /* 0x8040206C */  lw $v0, 24($fp)  ; <-- CHANGED
  /* 0x80402070 */  lw $v0, 0($v0)  ; <-- CHANGED
  /* 0x80402074 */  lbu $v0, 3($v0)  ; <-- CHANGED
  /* 0x80402078 */  addiu $v0, $v0, -5  ; <-- CHANGED
  /* 0x8040207C */  sw $v0, 32($fp)  ; <-- CHANGED
  /* 0x80402080 */  lw $v1, 32($fp)  ; <-- CHANGED
  /* 0x80402084 */  sltiu $v0, $v1, 15  ; <-- CHANGED
  /* 0x80402088 */  beq $v0, $zero, .rm_stub2000_L80402200  ; <-- CHANGED
  /* 0x8040208C */  nop  ; <-- CHANGED
  /* 0x80402090 */  lw $v0, 32($fp)  ; <-- CHANGED
  /* 0x80402094 */  sll $v1, $v0, 2  ; <-- CHANGED
  /* 0x80402098 */  lui $v0, 0x8040  ; <-- CHANGED
  /* 0x8040209C */  addiu $v0, $v0, 8756  ; <-- CHANGED
  /* 0x804020A0 */  addu $v0, $v1, $v0  ; <-- CHANGED
  /* 0x804020A4 */  lw $v0, 0($v0)  ; <-- CHANGED
  /* 0x804020A8 */  jr $v0  ; <-- CHANGED
  /* 0x804020AC */  nop  ; <-- CHANGED
  /* 0x804020B0 */  lw $v0, 24($fp)  ; <-- CHANGED
  /* 0x804020B4 */  lw $v0, 0($v0)  ; <-- CHANGED
  /* 0x804020B8 */  lw $v1, 4($v0)  ; <-- CHANGED
  /* 0x804020BC */  lw $v0, 24($fp)  ; <-- CHANGED
  /* 0x804020C0 */  lw $v0, 0($v0)  ; <-- CHANGED
  /* 0x804020C4 */  lw $v0, 8($v0)  ; <-- CHANGED
  /* 0x804020C8 */  lui $a0, 0x8042  ; <-- CHANGED
  /* 0x804020CC */  move $a1, $v1  ; <-- CHANGED
  /* 0x804020D0 */  jal 0x80278504  ; <-- CHANGED
  /* 0x804020D4 */  move $a2, $v0  ; <-- CHANGED
  /* 0x804020D8 */  lw $v1, 16($fp)  ; <-- CHANGED
  /* 0x804020DC */  lui $v0, 0x42  ; <-- CHANGED
  /* 0x804020E0 */  j .rm_stub2000_L80402200  ; <-- CHANGED
  /* 0x804020E4 */  sw $v0, 0($v1)  ; <-- CHANGED
  /* 0x804020E8 */  lw $v0, 24($fp)  ; <-- CHANGED
  /* 0x804020EC */  lw $v0, 0($v0)  ; <-- CHANGED
  /* 0x804020F0 */  lw $v1, 4($v0)  ; <-- CHANGED
  /* 0x804020F4 */  lw $v0, 24($fp)  ; <-- CHANGED
  /* 0x804020F8 */  lw $v0, 0($v0)  ; <-- CHANGED
  /* 0x804020FC */  lw $v0, 8($v0)  ; <-- CHANGED
  /* 0x80402100 */  lui $a0, 0x8062  ; <-- CHANGED
  /* 0x80402104 */  move $a1, $v1  ; <-- CHANGED
  /* 0x80402108 */  jal 0x80278504  ; <-- CHANGED
  /* 0x8040210C */  move $a2, $v0  ; <-- CHANGED
  /* 0x80402110 */  lw $v1, 16($fp)  ; <-- CHANGED
  /* 0x80402114 */  lui $v0, 0x62  ; <-- CHANGED
  /* 0x80402118 */  j .rm_stub2000_L80402200  ; <-- CHANGED
  /* 0x8040211C */  sw $v0, 0($v1)  ; <-- CHANGED
  /* 0x80402120 */  lw $v0, 24($fp)  ; <-- CHANGED
  /* 0x80402124 */  lw $v0, 0($v0)  ; <-- CHANGED
  /* 0x80402128 */  lw $v1, 4($v0)  ; <-- CHANGED
  /* 0x8040212C */  lw $v0, 24($fp)  ; <-- CHANGED
  /* 0x80402130 */  lw $v0, 0($v0)  ; <-- CHANGED
  /* 0x80402134 */  lw $v0, 8($v0)  ; <-- CHANGED
  /* 0x80402138 */  lui $a0, 0x8057  ; <-- CHANGED
  /* 0x8040213C */  move $a1, $v1  ; <-- CHANGED
  /* 0x80402140 */  jal 0x80278504  ; <-- CHANGED
  /* 0x80402144 */  move $a2, $v0  ; <-- CHANGED
  /* 0x80402148 */  lw $v1, 16($fp)  ; <-- CHANGED
  /* 0x8040214C */  lui $v0, 0x57  ; <-- CHANGED
  /* 0x80402150 */  j .rm_stub2000_L80402200  ; <-- CHANGED
  /* 0x80402154 */  sw $v0, 0($v1)  ; <-- CHANGED
  /* 0x80402158 */  lw $v0, 24($fp)  ; <-- CHANGED
  /* 0x8040215C */  lw $v0, 0($v0)  ; <-- CHANGED
  /* 0x80402160 */  lw $v1, 4($v0)  ; <-- CHANGED
  /* 0x80402164 */  lw $v0, 24($fp)  ; <-- CHANGED
  /* 0x80402168 */  lw $v0, 0($v0)  ; <-- CHANGED
  /* 0x8040216C */  lw $v0, 8($v0)  ; <-- CHANGED
  /* 0x80402170 */  lui $a0, 0x8072  ; <-- CHANGED
  /* 0x80402174 */  move $a1, $v1  ; <-- CHANGED
  /* 0x80402178 */  jal 0x80278504  ; <-- CHANGED
  /* 0x8040217C */  move $a2, $v0  ; <-- CHANGED
  /* 0x80402180 */  lw $v1, 16($fp)  ; <-- CHANGED
  /* 0x80402184 */  lui $v0, 0x72  ; <-- CHANGED
  /* 0x80402188 */  j .rm_stub2000_L80402200  ; <-- CHANGED
  /* 0x8040218C */  sw $v0, 0($v1)  ; <-- CHANGED
  /* 0x80402190 */  lw $v0, 24($fp)  ; <-- CHANGED
  /* 0x80402194 */  lw $v0, 0($v0)  ; <-- CHANGED
  /* 0x80402198 */  lw $v1, 4($v0)  ; <-- CHANGED
  /* 0x8040219C */  lw $v0, 24($fp)  ; <-- CHANGED
  /* 0x804021A0 */  lw $v0, 0($v0)  ; <-- CHANGED
  /* 0x804021A4 */  lw $v0, 8($v0)  ; <-- CHANGED
  /* 0x804021A8 */  lui $a0, 0x807B  ; <-- CHANGED
  /* 0x804021AC */  move $a1, $v1  ; <-- CHANGED
  /* 0x804021B0 */  jal 0x80278504  ; <-- CHANGED
  /* 0x804021B4 */  move $a2, $v0  ; <-- CHANGED
  /* 0x804021B8 */  lw $v1, 16($fp)  ; <-- CHANGED
  /* 0x804021BC */  lui $v0, 0x7B  ; <-- CHANGED
  /* 0x804021C0 */  j .rm_stub2000_L80402200  ; <-- CHANGED
  /* 0x804021C4 */  sw $v0, 0($v1)  ; <-- CHANGED
.rm_stub2000_L804021C8:
  /* 0x804021C8 */  lw $v0, 24($fp)  ; <-- CHANGED
  /* 0x804021CC */  lw $v0, 0($v0)  ; <-- CHANGED
  /* 0x804021D0 */  lbu $v0, 3($v0)  ; <-- CHANGED
  /* 0x804021D4 */  move $a0, $v0  ; <-- CHANGED
  /* 0x804021D8 */  lw $v0, 24($fp)  ; <-- CHANGED
  /* 0x804021DC */  lw $v0, 0($v0)  ; <-- CHANGED
  /* 0x804021E0 */  lw $v1, 4($v0)  ; <-- CHANGED
  /* 0x804021E4 */  lw $v0, 24($fp)  ; <-- CHANGED
  /* 0x804021E8 */  lw $v0, 0($v0)  ; <-- CHANGED
  /* 0x804021EC */  lw $v0, 8($v0)  ; <-- CHANGED
  /* 0x804021F0 */  move $a1, $v1  ; <-- CHANGED
  /* 0x804021F4 */  move $a2, $v0  ; <-- CHANGED
  /* 0x804021F8 */  jal 0x8027868C  ; <-- CHANGED
  /* 0x804021FC */  move $a3, $zero  ; <-- CHANGED
.rm_stub2000_L80402200:
  /* 0x80402200 */  lw $v0, 20($fp)  ; <-- CHANGED
  /* 0x80402204 */  lw $v1, 0($v0)  ; <-- CHANGED
  /* 0x80402208 */  lw $v0, 24($fp)  ; <-- CHANGED
  /* 0x8040220C */  lw $v0, 0($v0)  ; <-- CHANGED
  /* 0x80402210 */  lbu $v0, 1($v0)  ; <-- CHANGED
  /* 0x80402214 */  addu $v1, $v1, $v0  ; <-- CHANGED
  /* 0x80402218 */  lw $v0, 20($fp)  ; <-- CHANGED
  /* 0x8040221C */  sw $v1, 0($v0)  ; <-- CHANGED
  /* 0x80402220 */  move $sp, $fp  ; <-- CHANGED
  /* 0x80402224 */  lw $ra, 44($sp)  ; <-- CHANGED
  /* 0x80402228 */  lw $fp, 40($sp)  ; <-- CHANGED
  /* 0x8040222C */  jr $ra  ; <-- CHANGED
  /* 0x80402230 */  addiu $sp, $sp, 48  ; <-- CHANGED
  /* 0x80402234 */  lb $zero, 8536($v0)  ; <-- CHANGED
  /* 0x80402238 */  lb $zero, 8480($v0)  ; <-- CHANGED
  /* 0x8040223C */  lb $zero, 8424($v0)  ; <-- CHANGED
  /* 0x80402240 */  lb $zero, 8704($v0)  ; <-- CHANGED
  /* 0x80402244 */  lb $zero, 8704($v0)  ; <-- CHANGED
  /* 0x80402248 */  lb $zero, 8704($v0)  ; <-- CHANGED
  /* 0x8040224C */  lb $zero, 8704($v0)  ; <-- CHANGED
  /* 0x80402250 */  lb $zero, 8704($v0)  ; <-- CHANGED
  /* 0x80402254 */  lb $zero, 8704($v0)  ; <-- CHANGED
  /* 0x80402258 */  lb $zero, 8368($v0)  ; <-- CHANGED
  /* 0x8040225C */  lb $zero, 8704($v0)  ; <-- CHANGED
  /* 0x80402260 */  lb $zero, 8704($v0)  ; <-- CHANGED
  /* 0x80402264 */  lb $zero, 8704($v0)  ; <-- CHANGED
  /* 0x80402268 */  lb $zero, 8704($v0)  ; <-- CHANGED
  /* 0x8040226C */  lb $zero, 8592($v0)  ; <-- CHANGED
.endif

; ── Changed instructions ────────────────────────────────────
  ; 0x80402000:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 27 BD FF D0  addiu $sp, $sp, -48
  ; 0x80402004:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: AF BF 00 2C  sw $ra, 44($sp)
  ; 0x80402008:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: AF BE 00 28  sw $fp, 40($sp)
  ; 0x8040200C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 03 A0 F0 21  move $fp, $sp
  ; 0x80402010:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 1C 80 40  lui $gp, 0x8040
  ; 0x80402014:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 27 9C 22 70  addiu $gp, $gp, 8816
  ; 0x80402018:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 02 80 38  lui $v0, 0x8038
  ; 0x8040201C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 34 42 BE 28  ori $v0, $v0, 0xBE28
  ; 0x80402020:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: AF C2 00 18  sw $v0, 24($fp)
  ; 0x80402024:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 02 80 38  lui $v0, 0x8038
  ; 0x80402028:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 34 42 BE 28  ori $v0, $v0, 0xBE28
  ; 0x8040202C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: AF C2 00 14  sw $v0, 20($fp)
  ; 0x80402030:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 18  lw $v0, 24($fp)
  ; 0x80402034:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 00  lw $v0, 0($v0)
  ; 0x80402038:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 90 43 00 02  lbu $v1, 2($v0)
  ; 0x8040203C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 24 02 00 01  li $v0, 1
  ; 0x80402040:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 14 62 00 61  bne $v1, $v0, .rm_stub2000_L804021C8
  ; 0x80402044:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 00 00 00  nop
  ; 0x80402048:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 18  lw $v0, 24($fp)
  ; 0x8040204C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 00  lw $v0, 0($v0)
  ; 0x80402050:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 90 42 00 03  lbu $v0, 3($v0)
  ; 0x80402054:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 02 10 80  sll $v0, $v0, 2
  ; 0x80402058:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 40 18 21  move $v1, $v0
  ; 0x8040205C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 02 80 33  lui $v0, 0x8033
  ; 0x80402060:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 34 42 B4 00  ori $v0, $v0, 0xB400
  ; 0x80402064:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 62 10 21  addu $v0, $v1, $v0
  ; 0x80402068:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: AF C2 00 10  sw $v0, 16($fp)
  ; 0x8040206C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 18  lw $v0, 24($fp)
  ; 0x80402070:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 00  lw $v0, 0($v0)
  ; 0x80402074:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 90 42 00 03  lbu $v0, 3($v0)
  ; 0x80402078:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 24 42 FF FB  addiu $v0, $v0, -5
  ; 0x8040207C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: AF C2 00 20  sw $v0, 32($fp)
  ; 0x80402080:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C3 00 20  lw $v1, 32($fp)
  ; 0x80402084:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 2C 62 00 0F  sltiu $v0, $v1, 15
  ; 0x80402088:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 10 40 00 5D  beq $v0, $zero, .rm_stub2000_L80402200
  ; 0x8040208C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 00 00 00  nop
  ; 0x80402090:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 20  lw $v0, 32($fp)
  ; 0x80402094:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 02 18 80  sll $v1, $v0, 2
  ; 0x80402098:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 02 80 40  lui $v0, 0x8040
  ; 0x8040209C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 24 42 22 34  addiu $v0, $v0, 8756
  ; 0x804020A0:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 62 10 21  addu $v0, $v1, $v0
  ; 0x804020A4:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 00  lw $v0, 0($v0)
  ; 0x804020A8:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 40 00 08  jr $v0
  ; 0x804020AC:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 00 00 00  nop
  ; 0x804020B0:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 18  lw $v0, 24($fp)
  ; 0x804020B4:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 00  lw $v0, 0($v0)
  ; 0x804020B8:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 43 00 04  lw $v1, 4($v0)
  ; 0x804020BC:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 18  lw $v0, 24($fp)
  ; 0x804020C0:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 00  lw $v0, 0($v0)
  ; 0x804020C4:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 08  lw $v0, 8($v0)
  ; 0x804020C8:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 04 80 42  lui $a0, 0x8042
  ; 0x804020CC:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 60 28 21  move $a1, $v1
  ; 0x804020D0:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 0C 09 E1 41  jal 0x80278504
  ; 0x804020D4:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 40 30 21  move $a2, $v0
  ; 0x804020D8:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C3 00 10  lw $v1, 16($fp)
  ; 0x804020DC:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 02 00 42  lui $v0, 0x42
  ; 0x804020E0:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 08 10 08 80  j .rm_stub2000_L80402200
  ; 0x804020E4:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: AC 62 00 00  sw $v0, 0($v1)
  ; 0x804020E8:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 18  lw $v0, 24($fp)
  ; 0x804020EC:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 00  lw $v0, 0($v0)
  ; 0x804020F0:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 43 00 04  lw $v1, 4($v0)
  ; 0x804020F4:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 18  lw $v0, 24($fp)
  ; 0x804020F8:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 00  lw $v0, 0($v0)
  ; 0x804020FC:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 08  lw $v0, 8($v0)
  ; 0x80402100:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 04 80 62  lui $a0, 0x8062
  ; 0x80402104:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 60 28 21  move $a1, $v1
  ; 0x80402108:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 0C 09 E1 41  jal 0x80278504
  ; 0x8040210C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 40 30 21  move $a2, $v0
  ; 0x80402110:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C3 00 10  lw $v1, 16($fp)
  ; 0x80402114:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 02 00 62  lui $v0, 0x62
  ; 0x80402118:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 08 10 08 80  j .rm_stub2000_L80402200
  ; 0x8040211C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: AC 62 00 00  sw $v0, 0($v1)
  ; 0x80402120:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 18  lw $v0, 24($fp)
  ; 0x80402124:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 00  lw $v0, 0($v0)
  ; 0x80402128:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 43 00 04  lw $v1, 4($v0)
  ; 0x8040212C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 18  lw $v0, 24($fp)
  ; 0x80402130:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 00  lw $v0, 0($v0)
  ; 0x80402134:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 08  lw $v0, 8($v0)
  ; 0x80402138:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 04 80 57  lui $a0, 0x8057
  ; 0x8040213C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 60 28 21  move $a1, $v1
  ; 0x80402140:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 0C 09 E1 41  jal 0x80278504
  ; 0x80402144:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 40 30 21  move $a2, $v0
  ; 0x80402148:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C3 00 10  lw $v1, 16($fp)
  ; 0x8040214C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 02 00 57  lui $v0, 0x57
  ; 0x80402150:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 08 10 08 80  j .rm_stub2000_L80402200
  ; 0x80402154:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: AC 62 00 00  sw $v0, 0($v1)
  ; 0x80402158:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 18  lw $v0, 24($fp)
  ; 0x8040215C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 00  lw $v0, 0($v0)
  ; 0x80402160:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 43 00 04  lw $v1, 4($v0)
  ; 0x80402164:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 18  lw $v0, 24($fp)
  ; 0x80402168:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 00  lw $v0, 0($v0)
  ; 0x8040216C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 08  lw $v0, 8($v0)
  ; 0x80402170:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 04 80 72  lui $a0, 0x8072
  ; 0x80402174:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 60 28 21  move $a1, $v1
  ; 0x80402178:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 0C 09 E1 41  jal 0x80278504
  ; 0x8040217C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 40 30 21  move $a2, $v0
  ; 0x80402180:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C3 00 10  lw $v1, 16($fp)
  ; 0x80402184:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 02 00 72  lui $v0, 0x72
  ; 0x80402188:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 08 10 08 80  j .rm_stub2000_L80402200
  ; 0x8040218C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: AC 62 00 00  sw $v0, 0($v1)
  ; 0x80402190:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 18  lw $v0, 24($fp)
  ; 0x80402194:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 00  lw $v0, 0($v0)
  ; 0x80402198:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 43 00 04  lw $v1, 4($v0)
  ; 0x8040219C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 18  lw $v0, 24($fp)
  ; 0x804021A0:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 00  lw $v0, 0($v0)
  ; 0x804021A4:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 08  lw $v0, 8($v0)
  ; 0x804021A8:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 04 80 7B  lui $a0, 0x807B
  ; 0x804021AC:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 60 28 21  move $a1, $v1
  ; 0x804021B0:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 0C 09 E1 41  jal 0x80278504
  ; 0x804021B4:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 40 30 21  move $a2, $v0
  ; 0x804021B8:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C3 00 10  lw $v1, 16($fp)
  ; 0x804021BC:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 3C 02 00 7B  lui $v0, 0x7B
  ; 0x804021C0:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 08 10 08 80  j .rm_stub2000_L80402200
  ; 0x804021C4:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: AC 62 00 00  sw $v0, 0($v1)
  ; 0x804021C8:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 18  lw $v0, 24($fp)
  ; 0x804021CC:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 00  lw $v0, 0($v0)
  ; 0x804021D0:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 90 42 00 03  lbu $v0, 3($v0)
  ; 0x804021D4:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 40 20 21  move $a0, $v0
  ; 0x804021D8:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 18  lw $v0, 24($fp)
  ; 0x804021DC:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 00  lw $v0, 0($v0)
  ; 0x804021E0:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 43 00 04  lw $v1, 4($v0)
  ; 0x804021E4:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 18  lw $v0, 24($fp)
  ; 0x804021E8:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 00  lw $v0, 0($v0)
  ; 0x804021EC:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 08  lw $v0, 8($v0)
  ; 0x804021F0:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 60 28 21  move $a1, $v1
  ; 0x804021F4:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 40 30 21  move $a2, $v0
  ; 0x804021F8:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 0C 09 E1 A3  jal 0x8027868C
  ; 0x804021FC:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 00 38 21  move $a3, $zero
  ; 0x80402200:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 14  lw $v0, 20($fp)
  ; 0x80402204:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 43 00 00  lw $v1, 0($v0)
  ; 0x80402208:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 18  lw $v0, 24($fp)
  ; 0x8040220C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8C 42 00 00  lw $v0, 0($v0)
  ; 0x80402210:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 90 42 00 01  lbu $v0, 1($v0)
  ; 0x80402214:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 00 62 18 21  addu $v1, $v1, $v0
  ; 0x80402218:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F C2 00 14  lw $v0, 20($fp)
  ; 0x8040221C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: AC 43 00 00  sw $v1, 0($v0)
  ; 0x80402220:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 03 C0 E8 21  move $sp, $fp
  ; 0x80402224:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F BF 00 2C  lw $ra, 44($sp)
  ; 0x80402228:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 8F BE 00 28  lw $fp, 40($sp)
  ; 0x8040222C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 03 E0 00 08  jr $ra
  ; 0x80402230:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 27 BD 00 30  addiu $sp, $sp, 48
  ; 0x80402234:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 80 40 21 58  lb $zero, 8536($v0)
  ; 0x80402238:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 80 40 21 20  lb $zero, 8480($v0)
  ; 0x8040223C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 80 40 20 E8  lb $zero, 8424($v0)
  ; 0x80402240:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 80 40 22 00  lb $zero, 8704($v0)
  ; 0x80402244:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 80 40 22 00  lb $zero, 8704($v0)
  ; 0x80402248:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 80 40 22 00  lb $zero, 8704($v0)
  ; 0x8040224C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 80 40 22 00  lb $zero, 8704($v0)
  ; 0x80402250:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 80 40 22 00  lb $zero, 8704($v0)
  ; 0x80402254:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 80 40 22 00  lb $zero, 8704($v0)
  ; 0x80402258:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 80 40 20 B0  lb $zero, 8368($v0)
  ; 0x8040225C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 80 40 22 00  lb $zero, 8704($v0)
  ; 0x80402260:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 80 40 22 00  lb $zero, 8704($v0)
  ; 0x80402264:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 80 40 22 00  lb $zero, 8704($v0)
  ; 0x80402268:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 80 40 22 00  lb $zero, 8704($v0)
  ; 0x8040226C:
  ;   was: 01 01 01 01  .word 0x01010101  // unknown SPECIAL funct=0x01
  ;   new: 80 40 21 90  lb $zero, 8592($v0)
