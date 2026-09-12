package com.appsflyer.cache;

import android.content.Context;
import android.util.Log;
import com.appsflyer.AppsFlyerLib;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CacheManager {
    public static final String AF_CACHE_DIR = "AFRequestCache";
    public static final int CACHE_MAX_SIZE = 40;
    private static CacheManager ourInstance = new CacheManager();

    public static CacheManager getInstance() {
        return ourInstance;
    }

    private CacheManager() {
    }

    private File getCacheDir(Context context) {
        return new File(context.getFilesDir(), AF_CACHE_DIR);
    }

    public void init(Context context) {
        try {
            if (!getCacheDir(context).exists()) {
                getCacheDir(context).mkdir();
            }
        } catch (Exception e) {
            Log.i(AppsFlyerLib.LOG_TAG, "Could not create cache directory");
        }
    }

    public void cacheRequest(RequestCacheData data, Context context) throws Throwable {
        OutputStreamWriter out = null;
        try {
            try {
                File cacheDir = getCacheDir(context);
                if (cacheDir.exists()) {
                    File[] cacheFileList = cacheDir.listFiles();
                    if (cacheFileList == null || cacheFileList.length <= 40) {
                        Log.i(AppsFlyerLib.LOG_TAG, "caching request...");
                        File requestFile = new File(getCacheDir(context), Long.toString(System.currentTimeMillis()));
                        requestFile.createNewFile();
                        OutputStreamWriter out2 = new OutputStreamWriter(new FileOutputStream(requestFile.getPath(), true));
                        try {
                            out2.write("version=");
                            out2.write(data.getVersion());
                            out2.write(10);
                            out2.write("url=");
                            out2.write(data.getRequestURL());
                            out2.write(10);
                            out2.write("data=");
                            out2.write(data.getPostData());
                            out2.write(10);
                            out2.flush();
                            if (out2 != null) {
                                try {
                                    out2.close();
                                } catch (IOException e) {
                                    out = out2;
                                }
                            }
                            out = out2;
                        } catch (Exception e2) {
                            out = out2;
                            Log.i(AppsFlyerLib.LOG_TAG, "Could not cache request");
                            if (out != null) {
                                try {
                                    out.close();
                                } catch (IOException e3) {
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            out = out2;
                            if (out != null) {
                                try {
                                    out.close();
                                } catch (IOException e4) {
                                }
                            }
                            throw th;
                        }
                    } else {
                        Log.i(AppsFlyerLib.LOG_TAG, "reached cache limit, not caching request");
                        if (0 != 0) {
                            try {
                                out.close();
                            } catch (IOException e5) {
                            }
                        }
                    }
                } else {
                    cacheDir.mkdir();
                    if (0 != 0) {
                        try {
                            out.close();
                        } catch (IOException e6) {
                        }
                    }
                }
            } catch (Exception e7) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public List<RequestCacheData> getCachedRequests(Context context) {
        List<RequestCacheData> requests = new ArrayList<>();
        try {
            File cacheDir = getCacheDir(context);
            if (!cacheDir.exists()) {
                cacheDir.mkdir();
            } else {
                File[] files = cacheDir.listFiles();
                for (File file : files) {
                    Log.i(AppsFlyerLib.LOG_TAG, "Found cached request" + file.getName());
                    requests.add(loadRequestData(file));
                }
            }
        } catch (Exception e) {
            Log.i(AppsFlyerLib.LOG_TAG, "Could not cache request");
        }
        return requests;
    }

    private RequestCacheData loadRequestData(File file) throws Throwable {
        RequestCacheData cacheData;
        FileReader reader = null;
        try {
            FileReader reader2 = new FileReader(file);
            try {
                char[] chars = new char[(int) file.length()];
                reader2.read(chars);
                cacheData = new RequestCacheData(chars);
                cacheData.setCacheKey(file.getName());
                if (reader2 != null) {
                    try {
                        reader2.close();
                    } catch (IOException e) {
                    }
                }
            } catch (Exception e2) {
                reader = reader2;
                cacheData = null;
                if (reader != null) {
                    try {
                        reader.close();
                    } catch (IOException e3) {
                    }
                }
            } catch (Throwable th) {
                th = th;
                reader = reader2;
                if (reader != null) {
                    try {
                        reader.close();
                    } catch (IOException e4) {
                    }
                }
                throw th;
            }
        } catch (Exception e5) {
        } catch (Throwable th2) {
            th = th2;
        }
        return cacheData;
    }

    public void deleteRequest(String cacheKey, Context context) {
        File cacheDir = getCacheDir(context);
        File cachedRequestFile = new File(cacheDir, cacheKey);
        Log.i(AppsFlyerLib.LOG_TAG, "Deleting " + cacheKey + " from cache");
        if (cachedRequestFile.exists()) {
            try {
                cachedRequestFile.delete();
            } catch (Exception e) {
                Log.i(AppsFlyerLib.LOG_TAG, "Could not delete " + cacheKey + " from cache", e);
            }
        }
    }
}
