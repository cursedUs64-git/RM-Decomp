void render_game(void) {
    if (gCurrentArea != NULL && !gWarpTransition.pauseRendering) {
        geo_process_root(gCurrentArea->unk04, D_8032CE74, D_8032CE78, gFBSetColor);

        gSPViewport(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&D_8032CF00));

#ifndef RM
        gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, BORDER_HEIGHT, SCREEN_WIDTH,
                      SCREEN_HEIGHT - BORDER_HEIGHT);
#else
        gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH,
                      SCREEN_HEIGHT);
#endif
        render_hud();

        gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
        render_text_labels();
        do_cutscene_handler();
        print_displaying_credits_entry();

#ifndef RM
        gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, BORDER_HEIGHT, SCREEN_WIDTH,
                      SCREEN_HEIGHT - BORDER_HEIGHT);
#else
        gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH,
                      SCREEN_HEIGHT);
#endif
        gMenuOptSelectIndex = render_menus_and_dialogs();
        if (gMenuOptSelectIndex != MENU_OPT_NONE) {
            gSaveOptSelectIndex = gMenuOptSelectIndex;
        }

        if (D_8032CE78 != NULL) {
            make_viewport_clip_rect(D_8032CE78);
        } else {
#ifndef RM
            gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, BORDER_HEIGHT, SCREEN_WIDTH,
                          SCREEN_HEIGHT - BORDER_HEIGHT);
#else
        gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH,
                      SCREEN_HEIGHT);
#endif
        }

        if (gWarpTransition.isActive) {
            if (gWarpTransDelay == 0) {
                gWarpTransition.isActive = !render_screen_transition(
                    0, gWarpTransition.type, gWarpTransition.time, &gWarpTransition.data);
                if (!gWarpTransition.isActive) {
                    if (gWarpTransition.type & 1) {
                        gWarpTransition.pauseRendering = TRUE;
                    } else {
                        set_warp_transition_rgb(0, 0, 0);
                    }
                }
            } else {
                gWarpTransDelay--;
            }
        }
    } else {
        render_text_labels();
        if (D_8032CE78 != NULL) {
            clear_viewport(D_8032CE78, gWarpTransFBSetColor);
        } else {
            clear_framebuffer(gWarpTransFBSetColor);
        }
    }

    D_8032CE74 = NULL;
    D_8032CE78 = NULL;
}
