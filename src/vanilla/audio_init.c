void audio_init() {
    UNUSED s8 pad[32];
    u8 buf[0x10];
    s32 i, j, k;
    UNUSED s32 lim1; // lim1 unused in EU
    s32 lim2, lim3;
    UNUSED u32 size;
    UNUSED u64 *ptr64;
    void *data;
    UNUSED s32 pad2;

    gAudioLoadLock = AUDIO_LOCK_UNINITIALIZED;

    lim1 = gUnusedCount80333EE8;
    for (i = 0; i < lim1; i++) {
        gUnused80226E58[i] = 0;
        gUnused80226E98[i] = 0;
    }

    lim2 = gAudioHeapSize;
    for (i = 0; i <= lim2 / 8 - 1; i++) {
        ((u64 *) gAudioHeap)[i] = 0;
    }

    // It seems boot.s doesn't clear the .bss area for audio, so do it here.
    i = 0;
    lim3 = ((uintptr_t) &gAudioGlobalsEndMarker - (uintptr_t) &gAudioGlobalsStartMarker) / 8;
    ptr64 = &gAudioGlobalsStartMarker - 1;
    for (k = lim3; k >= 0; k--) {
        i++;
        ptr64[i] = 0;
    }

    eu_stubbed_printf_3("Clear Workarea %x -%x size %x \n", (uintptr_t) &gAudioGlobalsStartMarker,
                        (uintptr_t) &gAudioGlobalsEndMarker,
                        (uintptr_t) &gAudioGlobalsEndMarker - (uintptr_t) &gAudioGlobalsStartMarker);

    eu_stubbed_printf_1("AudioHeap is %x\n", gAudioHeapSize);

    for (i = 0; i < NUMAIBUFFERS; i++) {
        gAiBufferLengths[i] = 0xa0;
    }

    gAudioFrameCount = 0;
    gAudioTaskIndex = 0;
    gCurrAiBufferIndex = 0;
    gSoundMode = 0;
    gAudioTask = NULL;
    gAudioTasks[0].task.t.data_size = 0;
    gAudioTasks[1].task.t.data_size = 0;
    osCreateMesgQueue(&gAudioDmaMesgQueue, &gAudioDmaMesg, 1);
    osCreateMesgQueue(&gCurrAudioFrameDmaQueue, gCurrAudioFrameDmaMesgBufs,
                      ARRAY_COUNT(gCurrAudioFrameDmaMesgBufs));
    gCurrAudioFrameDmaCount = 0;
    gSampleDmaNumListItems = 0;

    sound_init_main_pools(gAudioInitPoolSize);

    for (i = 0; i < NUMAIBUFFERS; i++) {
        gAiBuffers[i] = soundAlloc(&gAudioInitPool, AIBUFFER_LEN);

        for (j = 0; j < (s32) (AIBUFFER_LEN / sizeof(s16)); j++) {
            gAiBuffers[i][j] = 0;
        }
    }

    audio_reset_session(&gAudioSessionPresets[0]);

    // Not sure about these prints
    eu_stubbed_printf_1("Heap reset.Synth Change %x \n", 0);
    eu_stubbed_printf_3("Heap %x %x %x\n", 0, 0, 0);
    eu_stubbed_printf_0("Main Heap Initialize.\n");

    // Load headers for sounds and sequences
    gSeqFileHeader = (ALSeqFile *) buf;
#ifndef RM
    data = gMusicData;
#else
    data = rmMusicData; // gMusicData has been shifted to 0x1210000
#endif
    audio_dma_copy_immediate((uintptr_t) data, gSeqFileHeader, 0x10);
    gSequenceCount = gSeqFileHeader->seqCount;
    size = ALIGN16(gSequenceCount * sizeof(ALSeqData) + 4);
    gSeqFileHeader = soundAlloc(&gAudioInitPool, size);
    audio_dma_copy_immediate((uintptr_t) data, gSeqFileHeader, size);
    alSeqFileNew(gSeqFileHeader, data);

    // Load header for CTL (instrument metadata)
    gAlCtlHeader = (ALSeqFile *) buf;
    data = gSoundDataADSR;
    audio_dma_copy_immediate((uintptr_t) data, gAlCtlHeader, 0x10);
    size = gAlCtlHeader->seqCount * sizeof(ALSeqData) + 4;
    size = ALIGN16(size);
    gCtlEntries = soundAlloc(&gAudioInitPool, gAlCtlHeader->seqCount * sizeof(struct CtlEntry));
    gAlCtlHeader = soundAlloc(&gAudioInitPool, size);
    audio_dma_copy_immediate((uintptr_t) data, gAlCtlHeader, size);
    alSeqFileNew(gAlCtlHeader, data);

    // Load header for TBL (raw sound data)
    gAlTbl = (ALSeqFile *) buf;
    audio_dma_copy_immediate((uintptr_t) data, gAlTbl, 0x10);
    size = gAlTbl->seqCount * sizeof(ALSeqData) + 4;
    size = ALIGN16(size);
    gAlTbl = soundAlloc(&gAudioInitPool, size);
    audio_dma_copy_immediate((uintptr_t) gSoundDataRaw, gAlTbl, size);
    alSeqFileNew(gAlTbl, gSoundDataRaw);

    // Load bank sets for each sequence
#ifndef RM
    gAlBankSets = soundAlloc(&gAudioInitPool, 0x100);
    audio_dma_copy_immediate((uintptr_t) gBankSetsData, gAlBankSets, 0x100);
#else
    gAlBankSets = rmAlBankSets // 0x807C0000
    audio_dma_copy_immediate((uintptr_t) rmBankSetsData /*0x7F0000*/, 0x807C0000, 0x200)
#endif

    init_sequence_players();
    gAudioLoadLock = AUDIO_LOCK_NOT_LOADING;
    // Should probably contain the sizes of the data banks, but those aren't
    // easily accessible from here.
    eu_stubbed_printf_0("---------- Init Completed. ------------\n");
    eu_stubbed_printf_1(" Syndrv    :[%6d]\n", 0); // gSoundDataADSR
    eu_stubbed_printf_1(" Seqdrv    :[%6d]\n", 0); // gMusicData
    eu_stubbed_printf_1(" audiodata :[%6d]\n", 0); // gSoundDataRaw
    eu_stubbed_printf_0("---------------------------------------\n");
}
