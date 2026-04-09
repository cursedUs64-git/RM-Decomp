u8 begin_background_music_fade(u16 fadeDuration) {
    u8 targetVolume = 0xff;

    if (sCurrentBackgroundMusicSeqId == SEQUENCE_NONE
        || sCurrentBackgroundMusicSeqId == SEQ_EVENT_CUTSCENE_CREDITS) {
        return 0xff;
    }

    if (gSequencePlayers[SEQ_PLAYER_LEVEL].volume == 0.0f && fadeDuration) {
        gSequencePlayers[SEQ_PLAYER_LEVEL].volume = gSequencePlayers[SEQ_PLAYER_LEVEL].fadeVolume;
    }

    if (sBackgroundMusicTargetVolume != TARGET_VOLUME_UNSET) {
        targetVolume = (sBackgroundMusicTargetVolume & TARGET_VOLUME_VALUE_MASK);
    }

    if (sBackgroundMusicMaxTargetVolume != TARGET_VOLUME_UNSET) {
        u8 maxTargetVolume = (sBackgroundMusicMaxTargetVolume & TARGET_VOLUME_VALUE_MASK);
        if (targetVolume > maxTargetVolume) {
            targetVolume = maxTargetVolume;
        }
    }

    if (sLowerBackgroundMusicVolume && targetVolume > 40) {
        targetVolume = 40;
    }

    if (sSoundBanksThatLowerBackgroundMusic != 0 && targetVolume > 20) {
        targetVolume = 20;
    }

    if (gSequencePlayers[SEQ_PLAYER_LEVEL].enabled == TRUE) {
        if (targetVolume != 0xff) {
            seq_player_fade_to_target_volume(SEQ_PLAYER_LEVEL, fadeDuration, targetVolume);
        } else {
#ifndef RM // NOTE: unverified
            gSequencePlayers[SEQ_PLAYER_LEVEL].volume =
                sBackgroundMusicDefaultVolume[sCurrentBackgroundMusicSeqId] / 127.0f;
#endif
            seq_player_fade_to_normal_volume(SEQ_PLAYER_LEVEL, fadeDuration);
        }
    }

    return targetVolume;
}
