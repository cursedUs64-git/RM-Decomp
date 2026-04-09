// TODO
struct Surface *find_ceil_from_list(struct SurfaceNode *surfaceNode, s32 x, s32 y, s32 z,
                                    f32 *pheight) {
    register struct Surface *surf;
    register s32 x1, z1, x2, z2, x3, z3;
    struct Surface *ceil = NULL;

    ceil = NULL;

    // Stay in this loop until out of ceilings.
    while (surfaceNode != NULL) {
        surf = surfaceNode->surface;
        surfaceNode = surfaceNode->next;

        x1 = surf->vertex1[0];
        z1 = surf->vertex1[2];
        z2 = surf->vertex2[2];
        x2 = surf->vertex2[0];

        // Checking if point is in bounds of the triangle laterally.
        if ((z1 - z) * (x2 - x1) - (x1 - x) * (z2 - z1) > 0) {
            continue;
        }

        // Slight optimization by checking these later.
        x3 = surf->vertex3[0];
        z3 = surf->vertex3[2];
        if ((z2 - z) * (x3 - x2) - (x2 - x) * (z3 - z2) > 0) {
            continue;
        }
        if ((z3 - z) * (x1 - x3) - (x3 - x) * (z1 - z3) > 0) {
            continue;
        }

        // Determine if checking for the camera or not.
        if (gCheckingSurfaceCollisionsForCamera != 0) {
            if (surf->flags & SURFACE_FLAG_NO_CAM_COLLISION) {
                continue;
            }
        }
        // Ignore camera only surfaces.
        else if (surf->type == SURFACE_CAMERA_BOUNDARY) {
            continue;
        }

        {
            f32 nx = surf->normal.x;
            f32 ny = surf->normal.y;
            f32 nz = surf->normal.z;
            f32 oo = surf->originOffset;
            f32 height;

            // If a wall, ignore it. Likely a remnant, should never occur.
            if (ny == 0.0f) {
                continue;
            }

            // Find the ceil height at the specific point.
            height = -(x * nx + nz * z + oo) / ny;

            // Checks for ceiling interaction with a 78 unit buffer.
            //! (Exposed Ceilings) Because any point above a ceiling counts
            //  as interacting with a ceiling, ceilings far below can cause
            // "invisible walls" that are really just exposed ceilings.
            if (y - (height - -78.0f) > 0.0f) {
                continue;
            }

            *pheight = height;
            ceil = surf;
            break;
        }
    }

    //! (Surface Cucking) Since only the first ceil is returned and not the lowest,
    //  lower ceilings can be "cucked" by higher ceilings.
    return ceil;
}
