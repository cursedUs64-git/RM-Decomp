void cur_obj_move_using_vel_and_gravity(void) {
#ifndef RM
    if (cur_obj_within_12k_bounds()) {
#else
	cur_obj_within_12k_bounds();
        o->oPosX += o->oVelX;
        o->oPosZ += o->oVelZ;
        o->oVelY += o->oGravity; //! No terminal velocity
        o->oPosY += o->oVelY;
#endif
#ifndef RM
    }
#endif
}
