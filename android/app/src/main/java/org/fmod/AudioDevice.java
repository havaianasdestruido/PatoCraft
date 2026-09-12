package org.fmod;

import android.media.AudioTrack;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AudioDevice {
    private AudioTrack mTrack = null;

    public boolean init(int i, int i2, int i3, int i4) {
        int iFetchChannelConfigFromCount = fetchChannelConfigFromCount(i);
        int minBufferSize = AudioTrack.getMinBufferSize(i2, iFetchChannelConfigFromCount, 2);
        if (minBufferSize < 0) {
            Log.w("fmod", "AudioDevice::init : Couldn't query minimum buffer size, possibly unsupported sample rate or channel count");
        } else {
            Log.i("fmod", "AudioDevice::init : Min buffer size: " + minBufferSize + " bytes");
        }
        int i5 = i3 * i4 * i * 2;
        if (i5 <= minBufferSize) {
            i5 = minBufferSize;
        }
        Log.i("fmod", "AudioDevice::init : Actual buffer size: " + i5 + " bytes");
        try {
            this.mTrack = new AudioTrack(3, i2, iFetchChannelConfigFromCount, 2, i5, 1);
            try {
                this.mTrack.play();
                return true;
            } catch (IllegalStateException e) {
                Log.e("fmod", "AudioDevice::init : AudioTrack play caused IllegalStateException");
                this.mTrack.release();
                this.mTrack = null;
                return false;
            }
        } catch (IllegalArgumentException e2) {
            Log.e("fmod", "AudioDevice::init : AudioTrack creation caused IllegalArgumentException");
            return false;
        }
    }

    public void close() {
        try {
            this.mTrack.stop();
        } catch (IllegalStateException e) {
            Log.e("fmod", "AudioDevice::init : AudioTrack stop caused IllegalStateException");
        }
        this.mTrack.release();
        this.mTrack = null;
    }

    public void write(byte[] bArr, int i) {
        this.mTrack.write(bArr, 0, i);
    }

    private int fetchChannelConfigFromCount(int i) {
        if (i == 1) {
            return 2;
        }
        if (i == 2) {
            return 3;
        }
        return i == 6 ? 252 : 0;
    }
}
