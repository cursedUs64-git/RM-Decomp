void whomp_init(void) {
    cur_obj_init_animation_with_accel_and_sound(0, 1.0f);
    cur_obj_set_pos_to_home();

    if (o->oBhvParams2ndByte != WHOMP_BP_SMALL) {
        gSecondCameraFocus = o;
#ifndef RM
        cur_obj_scale(2.0f);
#else
	cur_obj_scale(1.4921875f);
#endif
        if (o->oSubAction == 0) {
            if (o->oDistanceToMario < 600.0f) {
                o->oSubAction++;
                seq_player_lower_volume(SEQ_PLAYER_LEVEL, 60, 40);
            } else {
                cur_obj_set_pos_to_home();
                o->oHealth = 3;
            }
        } else if (cur_obj_update_dialog_with_cutscene(MARIO_DIALOG_LOOK_UP, DIALOG_FLAG_TURN_TO_MARIO,
                                                       CUTSCENE_DIALOG, DIALOG_114)) {
            o->oAction = 2;
        }
    } else if (o->oDistanceToMario < 500.0f) {
        o->oAction = 1;
    }

    whomp_play_sfx_from_pound_animation();
}
