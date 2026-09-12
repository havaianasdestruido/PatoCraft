package org.fmod;

import android.content.Context;
import android.content.res.AssetManager;
import android.media.AudioManager;
import android.os.Build;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FMOD {
    private static Context gContext = null;

    public static void init(Context context) {
        gContext = context;
    }

    public static void close() {
        gContext = null;
    }

    public static boolean checkInit() {
        return gContext != null;
    }

    public static AssetManager getAssetManager() {
        if (gContext != null) {
            return gContext.getAssets();
        }
        return null;
    }

    public static boolean supportsLowLatency() {
        if (gContext == null || Build.VERSION.SDK_INT < 5) {
            return false;
        }
        return gContext.getPackageManager().hasSystemFeature("android.hardware.audio.low_latency");
    }

    public static int getOutputSampleRate() {
        String property;
        if (gContext == null || Build.VERSION.SDK_INT < 17 || (property = ((AudioManager) gContext.getSystemService("audio")).getProperty("android.media.property.OUTPUT_SAMPLE_RATE")) == null) {
            return 0;
        }
        return Integer.parseInt(property);
    }

    public static int getOutputBlockSize() {
        String property;
        if (gContext == null || Build.VERSION.SDK_INT < 17 || (property = ((AudioManager) gContext.getSystemService("audio")).getProperty("android.media.property.OUTPUT_FRAMES_PER_BUFFER")) == null) {
            return 0;
        }
        return Integer.parseInt(property);
    }
}
