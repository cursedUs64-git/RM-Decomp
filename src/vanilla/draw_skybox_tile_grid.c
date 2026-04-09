void draw_skybox_tile_grid(Gfx **dlist, s8 background, s8 player, s8 colorIndex) {
    s32 row;
    s32 col;

    for (row = 0; row < 3; row++) {
        for (col = 0; col < 3; col++) {
            s32 tileIndex = sSkyBoxInfo[player].upperLeftTile + row * SKYBOX_COLS + col;
            const u8 *const texture =
#ifndef RM
                (*(SkyboxTexture *) segmented_to_virtual(sSkyboxTextures[background]))[tileIndex];
#else
		(*(SkyboxTexture *) segmented_to_virtual(rmSkyboxTextures[background]))[tileIndex]; // RM variable at 0x80402500 was sSkyboxTextures
#endif
            Vtx *vertices = make_skybox_rect(tileIndex, colorIndex);

            gLoadBlockTexture((*dlist)++, 32, 32, G_IM_FMT_RGBA, texture);
            gSPVertex((*dlist)++, VIRTUAL_TO_PHYSICAL(vertices), 4, 0);
            gSPDisplayList((*dlist)++, dl_draw_quad_verts_0123);
        }
    }
}
