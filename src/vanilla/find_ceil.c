// TODO
f32 find_ceil(f32 posX, f32 posY, f32 posZ, struct Surface **pceil) {
    s16 cellZ, cellX;

    struct Surface *ceil, *dynamicCeil;
    struct SurfaceNode *surfaceList;

    f32 height = CELL_HEIGHT_LIMIT;
    f32 dynamicHeight = CELL_HEIGHT_LIMIT;

    //! (Parallel Universes) Because position is casted to an s16, reaching higher
    //  float locations can return ceilings despite them not existing there.
    //  (Dynamic ceilings will unload due to the range.)
    TerrainData x = (TerrainData) posX;
    TerrainData y = (TerrainData) posY;
    TerrainData z = (TerrainData) posZ;

    *pceil = NULL;

    if (x <= -LEVEL_BOUNDARY_MAX || x >= LEVEL_BOUNDARY_MAX) {
        return height;
    }
    if (z <= -LEVEL_BOUNDARY_MAX || z >= LEVEL_BOUNDARY_MAX) {
        return height;
    }

    // Each level is split into cells to limit load, find the appropriate cell.
    cellX = ((x + LEVEL_BOUNDARY_MAX) / CELL_SIZE) & NUM_CELLS_INDEX;
    cellZ = ((z + LEVEL_BOUNDARY_MAX) / CELL_SIZE) & NUM_CELLS_INDEX;

    // Check for surfaces belonging to objects.
    surfaceList = gDynamicSurfacePartition[cellZ][cellX][SPATIAL_PARTITION_CEILS].next;
    dynamicCeil = find_ceil_from_list(surfaceList, x, y, z, &dynamicHeight);

    // Check for surfaces that are a part of level geometry.
    surfaceList = gStaticSurfacePartition[cellZ][cellX][SPATIAL_PARTITION_CEILS].next;
    ceil = find_ceil_from_list(surfaceList, x, y, z, &height);

    if (dynamicHeight < height) {
        ceil = dynamicCeil;
        height = dynamicHeight;
    }

    *pceil = ceil;

    // Increment the debug tracker.
    gNumCalls.ceil++;

    return height;
}
