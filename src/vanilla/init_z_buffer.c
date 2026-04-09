#include "basicheader.h"

void init_z_buffer(void) {
    gDPPipeSync(gDisplayListHead++);

    gDPSetDepthSource(gDisplayListHead++, G_ZS_PIXEL);
    gDPSetDepthImage(gDisplayListHead++, gPhysicalZBuffer);

    gDPSetColorImage(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_16b, SCREEN_WIDTH, gPhysicalZBuffer);
    gDPSetFillColor(gDisplayListHead++, GPACK_ZDZ(G_MAXFBZ, 0) << 16 | GPACK_ZDZ(G_MAXFBZ, 0));

#ifndef RM
    gDPFillRectangle(gDisplayListHead++, 0, BORDER_HEIGHT, SCREEN_WIDTH - 1,
                     SCREEN_HEIGHT - 1 - BORDER_HEIGHT);
#else
    gDPFillRectangle(gDisplayListHead++, 0, 0, SCREEN_WIDTH - 1,
		    SCREEN_HEIGHT - 1);
#endif

}
