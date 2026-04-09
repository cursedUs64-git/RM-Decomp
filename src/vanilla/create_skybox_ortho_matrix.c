void *create_skybox_ortho_matrix(s8 player) {
    f32 left = sSkyBoxInfo[player].scaledX;
    f32 right = sSkyBoxInfo[player].scaledX + SCREEN_WIDTH;
    f32 bottom = sSkyBoxInfo[player].scaledY - SCREEN_HEIGHT;
    f32 top = sSkyBoxInfo[player].scaledY;
    Mtx *mtx = alloc_display_list(sizeof(*mtx));

    if (mtx != NULL) {
        guOrtho(mtx, left, right, bottom, top, 0.0f, 3.0f, 1.0f);
    } else {
    }

    return mtx;
}

