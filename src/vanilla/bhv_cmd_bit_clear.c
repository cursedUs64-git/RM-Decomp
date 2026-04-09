// Unused in vanilla, reused by RM to perform DMA reads.
#ifndef RM
s32 bhv_cmd_bit_clear(void) {
#else
void bhv_cmd_bit_clear(void) {
#ifndef RM
    u8 field = BHV_CMD_GET_2ND_U8(0);
    s32 value = BHV_CMD_GET_2ND_S16(0);

    value = (value & 0xFFFF) ^ 0xFFFF;
    cur_obj_and_int(field, value);

    gCurBhvCommand++;
    return BHV_PROC_CONTINUE;
#else
    s32 *expansionRamClearPtr;
    // this forces the game to only allow consoles with expansion pak, since it clears out the expansion pak region
    expansionRamClearPtr = (s32 *)0x80400000;
    do {
	*expansionRamClearPtr = 0;
	expansionRamClearPtr += 4;
    } while (expansionRamClearPtr != (s32 *)0x807FFFFC);
    dma_read(0x80400000, 0x01200000, 0x01210000); // RAM start, ROM start, ROM end
#endif
}
