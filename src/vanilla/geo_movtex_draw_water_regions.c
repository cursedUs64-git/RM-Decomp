Gfx *geo_movtex_draw_water_regions(s32 callContext, struct GraphNode *node, UNUSED Mat4 mtx) {
    Gfx *gfxHead = NULL;
    Gfx *gfx = NULL;
    Gfx *subList;
    void *quadCollection;
    struct GraphNodeGenerated *asGenerated;
    s16 numWaterBoxes;
    s16 waterId;
    s16 waterY;
    s32 i;

    if (callContext == GEO_CONTEXT_RENDER) {
        gMovtexVtxColor = MOVTEX_VTX_COLOR_DEFAULT;
        if (gEnvironmentRegions == NULL) {
            return NULL;
        }
        numWaterBoxes = gEnvironmentRegions[0];
        gfxHead = alloc_display_list((numWaterBoxes + 3) * sizeof(*gfxHead));
        if (gfxHead == NULL) {
            return NULL;
        } else {
            gfx = gfxHead;
        }
        asGenerated = (struct GraphNodeGenerated *) node;
        if (asGenerated->parameter == JRB_MOVTEX_INITIAL_MIST) {
            if (gLakituState.goalPos[1] < 1024.0) { // if camera under water
                return NULL;
            }
            if (save_file_get_star_flags(gCurrSaveFileNum - 1, COURSE_NUM_TO_INDEX(COURSE_JRB))
                & (1 << 0)) { // the "Plunder in the Sunken Ship" star in JRB is collected
                return NULL;
            }
        } else if (asGenerated->parameter == HMC_MOVTEX_TOXIC_MAZE_MIST) {
            gMovtexVtxColor = MOVTEX_VTX_COLOR_YELLOW;
        } else if (asGenerated->parameter == SSL_MOVTEX_TOXBOX_QUICKSAND_MIST) {
            gMovtexVtxColor = MOVTEX_VTX_COLOR_RED;
        }
#ifndef RM
        quadCollection = get_quad_collection_from_id(asGenerated->parameter); // TODO: confirm prms by decompiling rm funcs
#else
	quadCollection = rm_stub3000(asGenerated->parameter);
#endif
        if (quadCollection == NULL) {
            return NULL;
        }

        asGenerated->fnNode.node.flags =
            (asGenerated->fnNode.node.flags & 0xFF) | (LAYER_TRANSPARENT_INTER << 8);

#ifndef RM
        movtex_change_texture_format(asGenerated->parameter, &gfx);
#else
	rm_stub3500(asGenerated->parameter, &gfx) // TODO: confirm prms by decompiling rm funcs
#endif
        gMovetexLastTextureId = -1;
        for (i = 0; i < numWaterBoxes; i++) {
            waterId = gEnvironmentRegions[i * 6 + 1];
            waterY = gEnvironmentRegions[i * 6 + 6];
            subList = movtex_gen_quads_id(waterId, waterY, quadCollection);
            if (subList != NULL) {
                gSPDisplayList(gfx++, VIRTUAL_TO_PHYSICAL(subList));
            }
        }
        gSPDisplayList(gfx++, dl_waterbox_end);
        gSPEndDisplayList(gfx);
    }
    return gfxHead;
}
