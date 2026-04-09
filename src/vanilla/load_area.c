void load_area(s32 index) {
#ifdef RM
    rm_stub3700();
#endif
    if (gCurrentArea == NULL && gAreaData[index].unk04 != NULL) {
        gCurrentArea = &gAreaData[index];
        gCurrAreaIndex = gCurrentArea->index;

        if (gCurrentArea->terrainData != NULL) {
            load_area_terrain(index, gCurrentArea->terrainData, gCurrentArea->surfaceRooms,
                              gCurrentArea->macroObjects);
        }

        if (gCurrentArea->objectSpawnInfos != NULL) {
            spawn_objects_from_info(0, gCurrentArea->objectSpawnInfos);
        }

        load_obj_warp_nodes();
        geo_call_global_function_nodes(&gCurrentArea->unk04->node, GEO_CONTEXT_AREA_LOAD);
    }
}
