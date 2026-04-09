void end_master_display_list(void) {
#ifndef RM
    draw_screen_borders();
#endif
    if (gShowProfiler) {
        draw_profiler();
    }

    gDPFullSync(gDisplayListHead++);
    gSPEndDisplayList(gDisplayListHead++);

    create_gfx_task_structure();
}
