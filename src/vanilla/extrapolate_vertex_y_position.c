f32 extrapolate_vertex_y_position(struct Shadow s, f32 vtxX, f32 vtxZ) {
#ifndef RM
    return -(s.floorNormalX * vtxX + s.floorNormalZ * vtxZ + s.floorOriginOffset) / s.floorNormalY;
#else
    return (-(s.floorNormalX * vtxX + s.floorNormalZ * vtxZ + s.floorOriginOffset) / s.floorNormalY) + (2.0f * s.floorOriginOffset);
#endif
}
