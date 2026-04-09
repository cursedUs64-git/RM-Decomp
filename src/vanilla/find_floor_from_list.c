// TODO
struct Surface *find_floor_from_list(struct SurfaceNode *surfaceNode, s32 x, s32 y, s32 z,
                                     f32 *pheight) {
    register struct Surface *surf;
    register s32 x1, z1, x2, z2, x3, z3;
    f32 nx, ny, nz;
    f32 oo;
    f32 height;
    struct Surface *floor = NULL;

    // Iterate through the list of floors until there are no more floors.
    while (surfaceNode != NULL) {
        surf = surfaceNode->surface;
        surfaceNode = surfaceNode->next;

        x1 = surf->vertex1[0];
        z1 = surf->vertex1[2];
        x2 = surf->vertex2[0];
        z2 = surf->vertex2[2];

        // Check that the point is within the triangle bounds.
        if ((z1 - z) * (x2 - x1) - (x1 - x) * (z2 - z1) < 0) {
            continue;
        }

        // To slightly save on computation time, set this later.
        x3 = surf->vertex3[0];
        z3 = surf->vertex3[2];

        if ((z2 - z) * (x3 - x2) - (x2 - x) * (z3 - z2) < 0) {
            continue;
        }
        if ((z3 - z) * (x1 - x3) - (x3 - x) * (z1 - z3) < 0) {
            continue;
        }

        // Determine if we are checking for the camera or not.
        if (gCheckingSurfaceCollisionsForCamera != 0) {
            if (surf->flags & SURFACE_FLAG_NO_CAM_COLLISION) {
                continue;
            }
        }
        // If we are not checking for the camera, ignore camera only floors.
        else if (surf->type == SURFACE_CAMERA_BOUNDARY) {
            continue;
        }

        nx = surf->normal.x;
        ny = surf->normal.y;
        nz = surf->normal.z;
        oo = surf->originOffset;

        // If a wall, ignore it. Likely a remnant, should never occur.
        if (ny == 0.0f) {
            continue;
        }

        // Find the height of the floor at a given location.
        height = -(x * nx + nz * z + oo) / ny;
        // Checks for floor interaction with a 78 unit buffer.
        if (y - (height + -78.0f) < 0.0f) {
            continue;
        }

        *pheight = height;
        floor = surf;
        break;
    }

    //! (Surface Cucking) Since only the first floor is returned and not the highest,
    //  higher floors can be "cucked" by lower floors.
    return floor;
}
