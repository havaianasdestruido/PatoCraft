package com.microsoft.xbox.toolkit.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import com.microsoft.xbox.toolkit.MemoryMonitor;
import com.microsoft.xbox.toolkit.MultiMap;
import com.microsoft.xbox.toolkit.ThreadManager;
import com.microsoft.xbox.toolkit.ThreadSafePriorityQueue;
import com.microsoft.xbox.toolkit.TimeMonitor;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEFileCache;
import com.microsoft.xbox.toolkit.XLEFileCacheManager;
import com.microsoft.xbox.toolkit.XLEMemoryCache;
import com.microsoft.xbox.toolkit.XLEThread;
import com.microsoft.xbox.toolkit.network.AbstractXLEHttpClient;
import com.microsoft.xbox.toolkit.network.HttpClientFactory;
import com.microsoft.xbox.toolkit.network.XLEHttpStatusAndStream;
import com.microsoft.xbox.toolkit.network.XLEThreadPool;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.HashSet;
import org.apache.http.client.methods.HttpGet;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class TextureManager {
    private static final int ANIM_TIME = 100;
    private static final int BITMAP_CACHE_MAX_FILE_SIZE_IN_BYTES = 5242880;
    private static final String BMP_FILE_CACHE_DIR_NAME = "texture";
    private static final int BMP_FILE_CACHE_SIZE = 2000;
    private static final int DECODE_THREAD_WAIT_TIMEOUT_MS = 3000;
    private static final int TEXTURE_TIMEOUT_MS = 15000;
    private static final long TIME_TO_RETRY_MS = 300000;
    public static TextureManager instance = new TextureManager();
    private XLEMemoryCache<TextureManagerScaledNetworkBitmapRequest, XLEBitmap> bitmapCache;
    private Thread decodeThread;
    private Object listLock = new Object();
    private HashSet<TextureManagerScaledNetworkBitmapRequest> inProgress = new HashSet<>();
    private MultiMap<TextureManagerScaledNetworkBitmapRequest, ImageView> waitingForImage = new MultiMap<>();
    private XLEFileCache bitmapFileCache = XLEFileCacheManager.createCache(BMP_FILE_CACHE_DIR_NAME, BMP_FILE_CACHE_SIZE);
    private HashMap<TextureManagerScaledNetworkBitmapRequest, RetryEntry> timeToRetryCache = new HashMap<>();
    private HashMap<TextureManagerScaledResourceBitmapRequest, XLEBitmap> resourceBitmapCache = new HashMap<>();
    private ThreadSafePriorityQueue<TextureManagerDownloadRequest> toDecode = new ThreadSafePriorityQueue<>();
    private TimeMonitor stopwatch = new TimeMonitor();

    public static TextureManager Instance() {
        return instance;
    }

    private int getNetworkBitmapCacheSizeInMB() {
        int overflow = Math.max(0, MemoryMonitor.instance().getMemoryClass() - 64);
        return (overflow / 2) + 12;
    }

    public TextureManager() {
        this.decodeThread = null;
        int NETWORK_BITMAP_CACHE_SIZE_IN_BYTES = Math.min(getNetworkBitmapCacheSizeInMB(), 50) * 1048576;
        this.bitmapCache = new XLEMemoryCache<>(NETWORK_BITMAP_CACHE_SIZE_IN_BYTES, BITMAP_CACHE_MAX_FILE_SIZE_IN_BYTES);
        this.stopwatch.start();
        this.decodeThread = new XLEThread(new TextureManagerDecodeThread(), "XLETextureDecodeThread");
        this.decodeThread.setDaemon(true);
        this.decodeThread.setPriority(4);
        this.decodeThread.start();
    }

    public void unsafeClearBitmapCache() {
    }

    private static boolean invalidUrl(String url) {
        return url == null || url.length() == 0;
    }

    private static boolean validResizeDimention(int width, int height) {
        if (width == 0 || height == 0) {
            throw new UnsupportedOperationException();
        }
        return width > 0 && height > 0;
    }

    private void load(TextureManagerScaledNetworkBitmapRequest key) {
        if (!invalidUrl(key.url)) {
            TextureManagerDownloadThreadWorker worker = new TextureManagerDownloadThreadWorker(new TextureManagerDownloadRequest(key));
            XLEThreadPool.textureThreadPool.run(worker);
        }
    }

    public XLEBitmap.XLEBitmapDrawable loadScaledResourceDrawable(int resourceId) {
        XLEBitmap bitmap = loadResource(resourceId);
        if (bitmap == null) {
            return null;
        }
        return bitmap.getDrawable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BitmapFactory.Options computeInSampleSizeOptions(int desiredw, int desiredh, BitmapFactory.Options options) {
        BitmapFactory.Options scaleoptions = new BitmapFactory.Options();
        int scale = 1;
        if (validResizeDimention(desiredw, desiredh) && options.outWidth > desiredw && options.outHeight > desiredh) {
            int widthscale = (int) Math.floor(Math.log(options.outWidth / desiredw) / Math.log(2.0d));
            int heightscale = (int) Math.floor(Math.log(options.outHeight / desiredh) / Math.log(2.0d));
            scale = (int) Math.pow(2.0d, Math.min(widthscale, heightscale));
            XLEAssert.assertTrue(scale >= 1);
        }
        scaleoptions.inSampleSize = scale;
        return scaleoptions;
    }

    public XLEBitmap loadResource(int resourceId) {
        TextureManagerScaledResourceBitmapRequest request = new TextureManagerScaledResourceBitmapRequest(resourceId);
        XLEBitmap bitmap = this.resourceBitmapCache.get(request);
        if (bitmap == null) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeResource(XboxTcuiSdk.getResources(), request.resourceId, options);
            bitmap = XLEBitmap.decodeResource(XboxTcuiSdk.getResources(), request.resourceId);
            this.resourceBitmapCache.put(request, bitmap);
        }
        XLEAssert.assertNotNull(bitmap);
        return bitmap;
    }

    public void preload(int resourceId) {
    }

    public void preload(URI uri) {
    }

    public void preloadFromFile(String filePath) {
    }

    public void bindToView(int resourceId, ImageView view, int width, int height) {
        bindToView(resourceId, view, width, height, null);
    }

    public void bindToView(int resourceId, ImageView view, int width, int height, OnBitmapSetListener listener) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        XLEBitmap bitmap = loadResource(resourceId);
        XLEAssert.assertTrue(bitmap != null);
        if (view instanceof XLEImageView) {
            ((XLEImageView) view).TEST_loadingOrLoadedImageUrl = Integer.toString(resourceId);
        }
        setImage(view, bitmap);
    }

    public void bindToViewFromFile(String filePath, ImageView view, TextureBindingOption option) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        bindToViewInternal(filePath, view, option);
    }

    public void bindToViewFromFile(String filePath, ImageView view, int width, int height) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        if (width == 0 || height == 0) {
            throw new UnsupportedOperationException();
        }
        bindToViewInternal(filePath, view, new TextureBindingOption(width, height));
    }

    public void bindToView(URI uri, ImageView view, int width, int height) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        if (width == 0 || height == 0) {
            throw new UnsupportedOperationException();
        }
        bindToViewInternal(uri == null ? null : uri.toString(), view, new TextureBindingOption(width, height));
    }

    public void bindToView(URI uri, ImageView view, TextureBindingOption option) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        bindToViewInternal(uri == null ? null : uri.toString(), view, option);
    }

    public void setCachingEnabled(boolean enabled) {
        int networkCacheSize = enabled ? getNetworkBitmapCacheSizeInMB() : 0;
        this.bitmapCache = new XLEMemoryCache<>(networkCacheSize, BITMAP_CACHE_MAX_FILE_SIZE_IN_BYTES);
        this.bitmapFileCache = XLEFileCacheManager.createCache(BMP_FILE_CACHE_DIR_NAME, BMP_FILE_CACHE_SIZE, enabled);
        this.resourceBitmapCache = new HashMap<>();
    }

    public boolean isBusy() {
        boolean z;
        synchronized (this.listLock) {
            z = !this.inProgress.isEmpty();
        }
        return z;
    }

    private void bindToViewInternal(String url, ImageView view, TextureBindingOption option) {
        boolean needToDownload;
        TextureManagerScaledNetworkBitmapRequest key = new TextureManagerScaledNetworkBitmapRequest(url, option);
        XLEBitmap bitmap = null;
        synchronized (this.listLock) {
            if (this.waitingForImage.containsValue(view)) {
                this.waitingForImage.removeValue(view);
            }
            if (!invalidUrl(url)) {
                bitmap = this.bitmapCache.get(key);
                if (bitmap == null) {
                    RetryEntry retryEntry = this.timeToRetryCache.get(key);
                    if (retryEntry == null || retryEntry.isExpired()) {
                        needToDownload = true;
                    } else {
                        if (option.resourceIdForError != -1) {
                            bitmap = loadResource(option.resourceIdForError);
                        }
                        needToDownload = false;
                    }
                } else {
                    needToDownload = false;
                }
            } else if (option.resourceIdForError != -1) {
                bitmap = loadResource(option.resourceIdForError);
                needToDownload = false;
                XLEAssert.assertNotNull(bitmap);
            } else {
                needToDownload = false;
            }
            if (needToDownload) {
                if (option.resourceIdForLoading != -1) {
                    bitmap = loadResource(option.resourceIdForLoading);
                    XLEAssert.assertTrue(bitmap != null);
                }
                this.waitingForImage.put(key, view);
                if (!this.inProgress.contains(key)) {
                    this.inProgress.add(key);
                    load(key);
                }
            }
        }
        setImage(view, bitmap);
        if (view instanceof XLEImageView) {
            ((XLEImageView) view).TEST_loadingOrLoadedImageUrl = url;
        }
    }

    private class TextureManagerDecodeThread implements Runnable {
        private TextureManagerDecodeThread() {
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x00d8 */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instruction units count: 280
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.xbox.toolkit.ui.TextureManager.TextureManagerDecodeThread.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public XLEBitmap createScaledBitmap(XLEBitmap bitmapsrc, int width, int height) {
        if (!validResizeDimention(width, height) || bitmapsrc.getBitmap() == null) {
            return bitmapsrc;
        }
        float bitmapAR = bitmapsrc.getBitmap().getHeight() / bitmapsrc.getBitmap().getWidth();
        float viewAR = height / width;
        if (viewAR < bitmapAR) {
            width = Math.max(1, (int) (height / bitmapAR));
        } else {
            height = Math.max(1, (int) (width * bitmapAR));
        }
        XLEBitmap bitmap = XLEBitmap.createScaledBitmap8888(bitmapsrc, width, height, true);
        return bitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drainWaitingForImage(TextureManagerScaledNetworkBitmapRequest key, XLEBitmap bitmap) {
        if (this.waitingForImage.containsKey(key)) {
            for (ImageView view : this.waitingForImage.get(key)) {
                if (view != null) {
                    if (view instanceof XLEImageView) {
                        setXLEImageView(key, (XLEImageView) view, bitmap);
                    } else {
                        setView(key, view, bitmap);
                    }
                }
            }
        }
    }

    private void setView(final TextureManagerScaledNetworkBitmapRequest key, final ImageView view, final XLEBitmap bitmap) {
        ThreadManager.UIThreadPost(new Runnable() { // from class: com.microsoft.xbox.toolkit.ui.TextureManager.1
            @Override // java.lang.Runnable
            public void run() {
                boolean stillValid;
                XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
                synchronized (TextureManager.this.listLock) {
                    stillValid = TextureManager.this.waitingForImage.keyValueMatches(key, view);
                }
                if (stillValid) {
                    TextureManager.this.setImage(view, bitmap);
                    synchronized (TextureManager.this.listLock) {
                        TextureManager.this.waitingForImage.removeValue(view);
                    }
                }
            }
        });
    }

    private void setXLEImageView(final TextureManagerScaledNetworkBitmapRequest key, final XLEImageView view, final XLEBitmap bitmap) {
        ThreadManager.UIThreadPost(new Runnable() { // from class: com.microsoft.xbox.toolkit.ui.TextureManager.2
            @Override // java.lang.Runnable
            public void run() {
                boolean stillValid;
                XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
                synchronized (TextureManager.this.listLock) {
                    stillValid = TextureManager.this.waitingForImage.keyValueMatches(key, view);
                }
                if (stillValid) {
                    final float finalAlpha = view.getAlpha();
                    boolean shouldAnimate = view.getShouldAnimate();
                    if (!shouldAnimate) {
                        TextureManager.this.setImage(view, bitmap);
                    } else {
                        view.animate().alpha(0.0f).setDuration(100L).setListener(new AnimatorListenerAdapter() { // from class: com.microsoft.xbox.toolkit.ui.TextureManager.2.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animation) {
                                view.setFinal(true);
                                TextureManager.this.setImage(view, bitmap);
                                view.animate().alpha(finalAlpha).setDuration(100L).setListener(null);
                            }
                        });
                    }
                    synchronized (TextureManager.this.listLock) {
                        TextureManager.this.waitingForImage.removeValue(view);
                    }
                }
            }
        });
    }

    public void logMemoryUsage() {
    }

    public void purgeResourceBitmapCache() {
        this.resourceBitmapCache.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImage(ImageView img, XLEBitmap bitmap) {
        Bitmap bmp = bitmap == null ? null : bitmap.getBitmap();
        OnBitmapSetListener listener = (OnBitmapSetListener) img.getTag(R.id.image_callback);
        if (listener != null) {
            listener.onBeforeImageSet(img, bmp);
        }
        img.setImageBitmap(bmp);
        img.setTag(R.id.image_bound, true);
        if (listener != null) {
            listener.onAfterImageSet(img, bmp);
        }
    }

    private class TextureManagerDownloadThreadWorker implements Runnable {
        private TextureManagerDownloadRequest request;

        public TextureManagerDownloadThreadWorker(TextureManagerDownloadRequest request) {
            this.request = request;
        }

        @Override // java.lang.Runnable
        public void run() {
            XLEAssert.assertTrue((this.request.key == null || this.request.key.url == null) ? false : true);
            this.request.stream = null;
            try {
                if (this.request.key.url.startsWith("http")) {
                    if (this.request.key.bindingOption.useFileCache) {
                        this.request.stream = TextureManager.this.bitmapFileCache.getInputStreamForRead(this.request.key);
                        if (this.request.stream == null) {
                            this.request.stream = downloadFromWeb(this.request.key.url);
                        }
                    } else {
                        this.request.stream = downloadFromWeb(this.request.key.url);
                    }
                } else {
                    this.request.stream = downloadFromAssets(this.request.key.url);
                }
            } catch (Exception e) {
            }
            synchronized (TextureManager.this.listLock) {
                TextureManager.this.toDecode.push(this.request);
            }
        }

        private InputStream downloadFromWeb(String requestUrl) {
            try {
                HttpGet get = new HttpGet(URI.create(requestUrl));
                AbstractXLEHttpClient client = HttpClientFactory.textureFactory.getHttpClient(TextureManager.TEXTURE_TIMEOUT_MS);
                XLEHttpStatusAndStream statusAndStream = client.getHttpStatusAndStreamInternal(get, false);
                if (statusAndStream.statusCode == 200) {
                    return statusAndStream.stream;
                }
                return null;
            } catch (Exception e) {
                return null;
            }
        }

        private InputStream downloadFromAssets(String requestUrl) {
            try {
                return XboxTcuiSdk.getAssetManager().open(requestUrl);
            } catch (IOException e) {
                return null;
            }
        }
    }

    private static class RetryEntry {
        private static final long SEC = 1000;
        private static final long[] TIMES_MS = {5000, 9000, 19000, 37000, 75000, 150000, TextureManager.TIME_TO_RETRY_MS};
        private int curIdx = 0;
        private long currStart = System.currentTimeMillis();

        public boolean isExpired() {
            return this.currStart + TIMES_MS[this.curIdx] < System.currentTimeMillis();
        }

        public void startNext() {
            if (this.curIdx < TIMES_MS.length - 1) {
                this.curIdx++;
            }
            this.currStart = System.currentTimeMillis();
        }
    }
}
