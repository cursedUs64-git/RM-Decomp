#include "basicheader.h"
void rm_load_raw_hook(void) {
    s32 segment;
    s32 *segBaseAddr = NULL;
    if (CMD_GET(u8, 2) == 1) {
        segment = CMD_GET(u8, 3);
        *segBaseAddr = &sSegmentTable[segment];

        switch (segment - 5) {
        case 9:
            dma_read(0x80420000, CMD_GET(u32, 4), CMD_GET(u32, 8));
            *segBaseAddr = 0x420000;
            break;
        case 2:
            dma_read(0x80620000, CMD_GET(u32, 4), CMD_GET(u32, 8));
            *segBaseAddr = 0x620000;
            break;
        case 1:
            dma_read(0x80570000, CMD_GET(u32, 4), CMD_GET(u32, 8));
            *segBaseAddr = 0x570000;
            break;
        case 0:
            dma_read(0x80720000, CMD_GET(u32, 4), CMD_GET(u32, 8));
            *segBaseAddr = 0x720000;
            break;
        case 14:
            dma_read(0x807B0000, CMD_GET(u32, 4), CMD_GET(u32, 8));
            *segBaseAddr = 0x7B0000;
            break;
        }
    } else {
        load_segment(
            CMD_GET(u8, 3),
            CMD_GET(u32, 4),
            CMD_GET(u32, 8),
            0
        );
    }

    sCurrentCmd = (struct LevelCommand *)((u8 *)sCurrentCmd + CMD_GET(u8, 1));
}
