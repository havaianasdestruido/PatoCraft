package com.microsoft.xbox.idp.toolkit;

import android.content.Context;
import com.google.gson.Gson;
import com.microsoft.xbox.idp.util.HttpCall;
import com.microsoft.xbox.idp.util.HttpHeaders;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringWriter;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ObjectLoader<T> extends WorkerLoader<Result<T>> {
    private static final String TAG = ObjectLoader.class.getSimpleName();

    public interface Cache {
        void clear();

        <T> Result<T> get(Object obj);

        <T> Result<T> put(Object obj, Result<T> result);

        <T> Result<T> remove(Object obj);
    }

    public ObjectLoader(Context context, Class<T> cls, Gson gson, HttpCall httpCall) {
        this(context, null, null, cls, gson, httpCall);
    }

    public ObjectLoader(Context context, Cache cache, Object resultKey, Class<T> cls, Gson gson, HttpCall httpCall) {
        super(context, new MyWorker(cache, resultKey, cls, gson, httpCall));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader
    public boolean isDataReleased(Result<T> result) {
        return result.isReleased();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader
    public void releaseData(Result<T> result) {
        result.release();
    }

    public static class Result<T> extends LoaderResult<T> {
        protected Result(T data) {
            super(data, null);
        }

        protected Result(HttpError error) {
            super(null, error);
        }

        @Override // com.microsoft.xbox.idp.toolkit.LoaderResult
        public boolean isReleased() {
            return true;
        }

        @Override // com.microsoft.xbox.idp.toolkit.LoaderResult
        public void release() {
        }
    }

    private static class MyWorker<T> implements WorkerLoader.Worker<Result<T>> {
        private final Cache cache;
        private final Class<T> cls;
        private final Gson gson;
        private final HttpCall httpCall;
        private final Object resultKey;

        private MyWorker(Cache cache, Object resultKey, Class<T> cls, Gson gson, HttpCall httpCall) {
            this.cache = cache;
            this.resultKey = resultKey;
            this.cls = cls;
            this.gson = gson;
            this.httpCall = httpCall;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasCache() {
            return (this.cache == null || this.resultKey == null) ? false : true;
        }

        @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader.Worker
        public void start(final WorkerLoader.ResultListener<Result<T>> listener) {
            Result<T> r;
            if (hasCache()) {
                synchronized (this.cache) {
                    r = this.cache.get(this.resultKey);
                }
                if (r != null) {
                    listener.onResult(r);
                    return;
                }
            }
            this.httpCall.getResponseAsync(new HttpCall.Callback() { // from class: com.microsoft.xbox.idp.toolkit.ObjectLoader.MyWorker.1
                @Override // com.microsoft.xbox.idp.util.HttpCall.Callback
                public void processResponse(int httpStatus, InputStream stream, HttpHeaders httpHeaders) throws Exception {
                    if (httpStatus >= 200 && httpStatus <= 299) {
                        if (MyWorker.this.cls == Void.class) {
                            listener.onResult(new Result((Object) null));
                            return;
                        }
                        StringWriter sw = new StringWriter();
                        try {
                            InputStreamReader r2 = new InputStreamReader(new BufferedInputStream(stream));
                            try {
                                Result<T> result = new Result<>(MyWorker.this.gson.fromJson((Reader) r2, (Class) MyWorker.this.cls));
                                if (MyWorker.this.hasCache()) {
                                    synchronized (MyWorker.this.cache) {
                                        MyWorker.this.cache.put(MyWorker.this.resultKey, result);
                                    }
                                }
                                listener.onResult(result);
                                r2.close();
                                sw.close();
                                return;
                            } catch (Throwable th) {
                                r2.close();
                                throw th;
                            }
                        } catch (Throwable th2) {
                            sw.close();
                            throw th2;
                        }
                    }
                    Result<T> result2 = new Result<>(new HttpError(httpStatus, httpStatus, stream));
                    if (MyWorker.this.hasCache()) {
                        synchronized (MyWorker.this.cache) {
                            MyWorker.this.cache.put(MyWorker.this.resultKey, result2);
                        }
                    }
                    listener.onResult(result2);
                }
            });
        }

        @Override // com.microsoft.xbox.idp.toolkit.WorkerLoader.Worker
        public void cancel() {
        }
    }
}
