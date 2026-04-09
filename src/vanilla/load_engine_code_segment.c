void load_engine_code_segment(void) {
    void *startAddr = (void *) SEG_ENGINE;
    u32 totalSize = SEG_FRAMEBUFFERS - SEG_ENGINE;
    UNUSED u32 alignedSize = ALIGN16(_engineSegmentRomEnd - _engineSegmentRomStart);

    bzero(startAddr, totalSize);
    osWritebackDCacheAll();
    dma_read(startAddr, _engineSegmentRomStart, _engineSegmentRomEnd);
    osInvalICache(startAddr, totalSize);
    osInvalDCache(startAddr, totalSize);
#ifdef RM
    bhv_cmd_bit_clear();
#endif
}
