void render_dialog_entries(void) {
    void **dialogTable;
    struct DialogEntry *dialog;

    dialogTable = segmented_to_virtual(seg2_dialog_table);
    dialog = segmented_to_virtual(dialogTable[gDialogID]);

    // if the dialog entry is invalid, set the ID to DIALOG_NONE.
    if (dialog == segmented_to_virtual(NULL)) {
        gDialogID = DIALOG_NONE;
        return;
    }

    switch (gMenuState) {
        case MENU_STATE_DIALOG_OPENING:
            if (gDialogBoxAngle == DIALOG_BOX_ANGLE_DEFAULT) {
                play_dialog_sound(gDialogID);
                play_sound(SOUND_MENU_MESSAGE_APPEAR, gGlobalSoundSource);
            }

            if (gDialogBoxType == DIALOG_TYPE_ROTATE) {
                gDialogBoxAngle -= 7.5;
                gDialogBoxScale -= 1.5;
            } else {
                gDialogBoxAngle -= 10.0;
                gDialogBoxScale -= 2.0;
            }

            if (gDialogBoxAngle == 0.0f) {
                gMenuState = MENU_STATE_DIALOG_OPEN;
                gMenuLineNum = 1;
            }
            lowerBound = 1;
            break;

        case MENU_STATE_DIALOG_OPEN:
            gDialogBoxAngle = 0.0f;

            if ((gPlayer3Controller->buttonPressed & A_BUTTON)
                || (gPlayer3Controller->buttonPressed & B_BUTTON)) {
                if (gNextDialogPageStartStrIndex == -1) {
                    handle_special_dialog_text(gDialogID);
                    gMenuState = MENU_STATE_DIALOG_CLOSING;
                } else {
                    gMenuState = MENU_STATE_DIALOG_SCROLLING;
                    play_sound(SOUND_MENU_MESSAGE_NEXT_PAGE, gGlobalSoundSource);
                }
            }
            lowerBound = 1;
            break;

        case MENU_STATE_DIALOG_SCROLLING:
            gDialogScrollOffsetY += dialog->linesPerBox * 2;

            if (gDialogScrollOffsetY >= dialog->linesPerBox * DIAG_VAL1) {
                gDialogPageStartStrIndex = gNextDialogPageStartStrIndex;
                gMenuState = MENU_STATE_DIALOG_OPEN;
                gDialogScrollOffsetY = 0;
            }
            lowerBound = (gDialogScrollOffsetY / DIAG_VAL1) + 1;
            break;

        case MENU_STATE_DIALOG_CLOSING:
            if (gDialogBoxAngle == 20.0f) {
                level_set_transition(0, NULL);
                play_sound(SOUND_MENU_MESSAGE_DISAPPEAR, gGlobalSoundSource);

                if (gDialogBoxType == DIALOG_TYPE_ZOOM) {
                    trigger_cutscene_dialog(2);
                }

                gDialogResponse = gMenuLineNum;
            }

            gDialogBoxAngle += 10.0f;
            gDialogBoxScale += 2.0f;

            if (gDialogBoxAngle == DIALOG_BOX_ANGLE_DEFAULT) {
                gMenuState = MENU_STATE_DEFAULT;
                gDialogID = DIALOG_NONE;
                gDialogPageStartStrIndex = 0;
                gDialogWithChoice = FALSE;
                gNextDialogPageStartStrIndex = 0;
                gDialogResponse = DIALOG_RESPONSE_NONE;
            }
            lowerBound = 1;
            break;
    }

    render_dialog_box_type(dialog, dialog->linesPerBox);

    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE,
                  ensure_nonnegative(dialog->leftOffset),
                  ensure_nonnegative(DIAG_VAL2 - dialog->width),
                  ensure_nonnegative(dialog->leftOffset + DIAG_VAL3),
                  ensure_nonnegative((240 - dialog->width) + (dialog->linesPerBox * 80 / DIAG_VAL4))
    );

    handle_dialog_text_and_pages(0, dialog, lowerBound);

    if (gNextDialogPageStartStrIndex == -1 && gDialogWithChoice == TRUE) {
        render_dialog_triangle_choice();
    }

#ifndef RM
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 2, 2, SCREEN_WIDTH - BORDER_HEIGHT / 2,
                  SCREEN_HEIGHT - BORDER_HEIGHT / 2);
#else
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 2, 2, SCREEN_WIDTH,
                  SCREEN_HEIGHT);
#endif

    if (gNextDialogPageStartStrIndex != -1 && gMenuState == MENU_STATE_DIALOG_OPEN) {
        render_dialog_triangle_next(dialog->linesPerBox);
    }
}
