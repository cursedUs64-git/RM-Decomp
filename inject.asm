.n64
.open ROM_IN, ROM_OUT, 0x00000000

/******************** Includes *****************************/
.include "asm/sections.asm"
.include "asm/symbols.asm"

// TODO: document changes (especially surface functions) and revert back
// 0x80380690  find_wall_collisions_from_list  (size 0x758)
// 0x80380E8C  find_wall_collisions  (size 0x5E4)
// 0x80381038  find_ceil_from_list  (size 0x438)
// 0x80381264  find_ceil  (size 0x20C)
// 0x803814B8  find_floor_height_and_data  (size 0x2DC)
// 0x8038156C  find_floor_from_list  (size 0x228)
// 0x80381900  find_floor  (size 0x2A0)
// 0x80382B7C  read_surface_data  (size 0x408)
// 0x80383340  alloc_surface_pools  (size 0x78)
.include "asm/rm_changes_wip.asm"

// TODO: document changes
; exceptions?
// 0x80255B04  perform_ground_quarter_step  (size 0x284)
// 0x8028A4EC  is_behind_surface  (size 0x1D0)
// 0x80335B54  rodata of whomp.inc.c. F2DD2, 3880.0f to 3872.0f? Y pos of spawn_default_star
// 0x802CFC68  create_skybox_ortho_matrix  (size 0x120)
// 0x8032DE70  renderModeTable_1Cycle  (size 0x80)
// 0x8032DEB0  renderModeTable_2Cycle  (size 0x40)
/*
geo_movtex_draw_water_regions.c:	quadCollection = rm_stub3000(asGenerated->parameter);
geo_movtex_draw_water_regions.c:	rm_stub3500(asGenerated->parameter, &gfx) // TODO: confirm prms by decompiling rm funcs
load_area.c:    rm_stub3700();

// confusion
lvl_set_current_level.c:	rm_stub2f00(); // NOTE: this was a j, not jal.
update_camera.c:    rm_stub2f50(); // TODO: find arg
*/

  ; 0x8038B8F8:
  ;   was: 80 37 EA 70  lb $s7, -5520($at)
  ;   new: 80 40 20 00  lb $zero, 8192($v0)
  ; 0x8038B914:
  ;   was: 80 37 EC A4  lb $s7, -4956($at)
  ;   new: 80 40 20 00  lb $zero, 8192($v0)
.headersize SEC_ENGINE_HEADERSIZE
; LevelScriptJumpTable
.org 0x8038B8F8
.ifndef RM
.word level_cmd_skippable_nop // unused in vanilla (and RM?)
.else
.word rm_stub2000
.endif

.org 0x8038B914
.ifndef RM
.word level_cmd_load_raw
.else
.word rm_load_raw_hook
.endif

.close
