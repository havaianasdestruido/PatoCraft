package com.microsoft.xbox.toolkit;

import android.content.Context;
import android.media.AudioManager;
import android.media.SoundPool;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SoundManager {
    private static final int MAX_STREAM_SIZE = 14;
    private static final int NO_LOOP = 0;
    private AudioManager audioManager;
    private Context context;
    private boolean isEnabled;
    private ArrayList<Integer> recentlyPlayedResourceIds;
    private HashMap<Integer, Integer> resourceSoundIdMap;
    private SoundPool soundPool;

    private SoundManager() {
        this.resourceSoundIdMap = new HashMap<>();
        this.recentlyPlayedResourceIds = new ArrayList<>();
        this.isEnabled = false;
        XLEAssert.assertTrue("You must access sound manager on UI thread.", Thread.currentThread() == ThreadManager.UIThread);
        this.context = XboxTcuiSdk.getApplicationContext();
        this.soundPool = new SoundPool(14, 3, 0);
        this.audioManager = (AudioManager) this.context.getSystemService("audio");
    }

    private static class SoundManagerHolder {
        public static final SoundManager instance = new SoundManager();

        private SoundManagerHolder() {
        }
    }

    public static SoundManager getInstance() {
        return SoundManagerHolder.instance;
    }

    public void setEnabled(boolean value) {
        if (this.isEnabled != value) {
            this.isEnabled = value;
        }
    }

    public void loadSound(int resId) {
        if (!this.resourceSoundIdMap.containsKey(Integer.valueOf(resId))) {
            int soundId = this.soundPool.load(this.context, resId, 1);
            this.resourceSoundIdMap.put(Integer.valueOf(resId), Integer.valueOf(soundId));
        }
    }

    public void playSound(int resId) {
        int soundId;
        if (this.isEnabled) {
            if (!this.resourceSoundIdMap.containsKey(Integer.valueOf(resId))) {
                soundId = this.soundPool.load(this.context, resId, 1);
                this.resourceSoundIdMap.put(Integer.valueOf(resId), Integer.valueOf(soundId));
            } else {
                soundId = this.resourceSoundIdMap.get(Integer.valueOf(resId)).intValue();
            }
            float volume = this.audioManager.getStreamVolume(3) / this.audioManager.getStreamMaxVolume(3);
            this.soundPool.play(soundId, volume, volume, 1, 0, 1.0f);
        }
    }

    public void clearMostRecentlyPlayedResourceIds() {
    }

    public Integer[] getMostRecentlyPlayedResourceIds() {
        return new Integer[0];
    }
}
