package com.microsoft.xbox.idp.toolkit;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class BitmapLoader extends WorkerLoader<Result> {
    private static final String TAG = BitmapLoader.class.getSimpleName();

    public interface Cache {
        void clear();

        Bitmap get(Object obj);

        Bitmap put(Object obj, Bitmap bitmap);

        Bitmap remove(Object obj);
    }

    public BitmapLoader(Context context, String urlString) {
        this(context, null, null, urlString);
    }

    public BitmapLoader(Context context, Cache cache, Object resultKey, String urlString) {
        super(context, new MyWorker(cache, resultKey, urlString));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader
    public boolean isDataReleased(Result result) {
        return result.isReleased();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader
    public void releaseData(Result result) {
        result.release();
    }

    public static class Result extends LoaderResult<Bitmap> {
        protected Result(Bitmap data) {
            super(data, null);
        }

        protected Result(Exception exception) {
            super(exception);
        }

        @Override // com.microsoft.xbox.idp.toolkit.LoaderResult
        public boolean isReleased() {
            return hasData() && getData().isRecycled();
        }

        @Override // com.microsoft.xbox.idp.toolkit.LoaderResult
        public void release() {
            if (hasData()) {
                getData().recycle();
            }
        }
    }

    private static class MyWorker implements WorkerLoader.Worker<Result> {
        static final /* synthetic */ boolean $assertionsDisabled;
        private final Cache cache;
        private final Object resultKey;
        private final String urlString;

        static {
            $assertionsDisabled = !BitmapLoader.class.desiredAssertionStatus();
        }

        private MyWorker(Cache cache, Object resultKey, String urlString) {
            if (!$assertionsDisabled && urlString == null) {
                throw new AssertionError();
            }
            this.cache = cache;
            this.resultKey = resultKey;
            this.urlString = urlString;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasCache() {
            return (this.cache == null || this.resultKey == null) ? false : true;
        }

        @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader.Worker
        public void start(final WorkerLoader.ResultListener<Result> listener) {
            final Bitmap data;
            if (hasCache()) {
                synchronized (this.cache) {
                    data = this.cache.get(this.resultKey);
                }
                if (data != null) {
                    Log.d(BitmapLoader.TAG, "Successfully retrieved Bitmap from BitmapLoader.Cache");
                    new Thread(new Runnable() { // from class: com.microsoft.xbox.idp.toolkit.BitmapLoader.MyWorker.1
                        @Override // java.lang.Runnable
                        public void run() {
                            listener.onResult(new Result(data));
                        }
                    }).start();
                    return;
                }
            }
            new Thread(new Runnable() { // from class: com.microsoft.xbox.idp.toolkit.BitmapLoader.MyWorker.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        try {
                            URL url = new URL(MyWorker.this.urlString);
                            Log.d(BitmapLoader.TAG, "url created: " + url);
                            InputStream stream = url.openStream();
                            try {
                                Bitmap image = BitmapFactory.decodeStream(stream);
                                if (MyWorker.this.hasCache()) {
                                    synchronized (MyWorker.this.cache) {
                                        Log.d(BitmapLoader.TAG, "Caching retrieved bitmap");
                                        MyWorker.this.cache.put(MyWorker.this.resultKey, image);
                                    }
                                }
                                listener.onResult(new Result(image));
                            } catch (Exception e) {
                                listener.onResult(new Result(e));
                            }
                            stream.close();
                        } catch (Exception e2) {
                            listener.onResult(new Result(e2));
                        }
                    } catch (MalformedURLException e3) {
                        Log.e(BitmapLoader.TAG, "Received malformed URL: " + MyWorker.this.urlString);
                        listener.onResult(new Result(e3));
                    }
                }
            }).start();
        }

        @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader.Worker
        public void cancel() {
        }
    }
}
