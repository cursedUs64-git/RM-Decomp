// TODO
void alloc_surface_pools(void) {
    sSurfacePoolSize = 2300;
    sSurfaceNodePool = main_pool_alloc(7000 * sizeof(struct SurfaceNode), MEMORY_POOL_LEFT);
    sSurfacePool = main_pool_alloc(sSurfacePoolSize * sizeof(struct Surface), MEMORY_POOL_LEFT);

    gCCMEnteredSlide = 0;
    reset_red_coins_collected();
}
