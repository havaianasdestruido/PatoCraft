package com.microsoft.cll.android;

import java.util.Arrays;
import java.util.zip.Deflater;
import net.hockeyapp.android.utils.HttpURLConnectionBuilder;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class EventCompressor {
    private final String TAG = "AndroidCll-EventCompressor";
    private final ILogger logger;

    public EventCompressor(ILogger logger) {
        this.logger = logger;
    }

    public byte[] compress(String events) {
        byte[] bArrCopyOfRange = null;
        try {
            byte[] input = events.getBytes(HttpURLConnectionBuilder.DEFAULT_CHARSET);
            byte[] output = new byte[SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.MAXEVENTSIZEINBYTES)];
            Deflater compressor = new Deflater(-1, true);
            compressor.setInput(input);
            compressor.finish();
            int compressedDataLength = compressor.deflate(output);
            if (compressedDataLength >= SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.MAXEVENTSIZEINBYTES)) {
                this.logger.error("AndroidCll-EventCompressor", "Compression resulted in a string of at least the max event buffer size of Vortex. Most likely this means we lost part of the string.");
            } else {
                bArrCopyOfRange = Arrays.copyOfRange(output, 0, compressedDataLength);
            }
        } catch (Exception e) {
            this.logger.error("AndroidCll-EventCompressor", "Could not compress events");
        }
        return bArrCopyOfRange;
    }
}
