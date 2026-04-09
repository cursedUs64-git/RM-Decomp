#include "basicheader.h"

void rm_load_area_hook(s32 index) {
    s32 sp10;
    s32 temp_a0;
    void *temp_v0;
    void *temp_v0_2;

    temp_a0 = index * 0x10;
    temp_v0 = segmented_to_virtual(0x19000000);
    temp_v0_2 = temp_v0 + temp_a0;
    if (temp_v0->unk5FFC == 0x4BC9189A) {
        dma_read(0x80420000, temp_v0_2->unk5F00, temp_v0_2->unk5F04);
    }
}
