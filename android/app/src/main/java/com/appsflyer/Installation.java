package com.appsflyer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.ref.WeakReference;
import java.util.Random;
import java.util.UUID;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class Installation {
    private static final String INSTALLATION = "AF_INSTALLATION";
    private static String sID = null;

    Installation() {
    }

    public static synchronized String id(WeakReference<Context> context) {
        String str;
        if (context.get() != null && sID == null) {
            String tmpSId = readInstallationSP(context);
            if (tmpSId != null) {
                sID = tmpSId;
            } else {
                try {
                    File installation = new File(context.get().getFilesDir(), INSTALLATION);
                    if (!installation.exists()) {
                        sID = generateId(context);
                    } else {
                        sID = readInstallationFile(installation);
                        installation.delete();
                    }
                    writeInstallationSP(context, sID);
                } catch (Exception e) {
                    AFLogger.afLogE("Error getting AF unique ID", e);
                }
            }
            if (sID != null) {
                AppsFlyerProperties.getInstance().set(ServerParameters.AF_USER_ID, sID);
            }
        }
        str = sID;
        return str;
    }

    private static String readInstallationFile(File installation) throws Throwable {
        RandomAccessFile f = null;
        byte[] bytes = null;
        try {
            try {
                RandomAccessFile f2 = new RandomAccessFile(installation, "r");
                try {
                    bytes = new byte[(int) f2.length()];
                    f2.readFully(bytes);
                    f2.close();
                    if (f2 != null) {
                        try {
                            f2.close();
                        } catch (IOException e) {
                            AFLogger.afLogE("Exception while trying to close the InstallationFile", e);
                            f = f2;
                        }
                    }
                    f = f2;
                } catch (IOException e2) {
                    e = e2;
                    f = f2;
                    AFLogger.afLogE("Exception while reading InstallationFile: ", e);
                    if (f != null) {
                        try {
                            f.close();
                        } catch (IOException e3) {
                            AFLogger.afLogE("Exception while trying to close the InstallationFile", e3);
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    f = f2;
                    if (f != null) {
                        try {
                            f.close();
                        } catch (IOException e4) {
                            AFLogger.afLogE("Exception while trying to close the InstallationFile", e4);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e5) {
            e = e5;
        }
        if (bytes == null) {
            bytes = new byte[0];
        }
        return new String(bytes);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x002c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private static void writeInstallationFile(File installation, WeakReference<Context> context) throws Throwable {
        Exception e;
        FileOutputStream out = null;
        try {
            try {
                FileOutputStream out2 = new FileOutputStream(installation);
                try {
                    String id = generateId(context);
                    out2.write(id.getBytes());
                    out2.close();
                    if (out2 != null) {
                        try {
                            out2.close();
                        } catch (IOException e2) {
                            AFLogger.afLogE("Exception while trying to close InstallationFile", e2);
                            out = out2;
                        }
                    }
                    out = out2;
                } catch (PackageManager.NameNotFoundException e3) {
                    e = e3;
                    out = out2;
                    e = e;
                    AFLogger.afLogE("Exception while writing InstallationFile", e);
                    if (out != null) {
                        try {
                            out.close();
                        } catch (IOException e4) {
                            AFLogger.afLogE("Exception while trying to close InstallationFile", e4);
                        }
                    }
                } catch (IOException e5) {
                    e = e5;
                    out = out2;
                    e = e;
                    AFLogger.afLogE("Exception while writing InstallationFile", e);
                    if (out != null) {
                        out.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    out = out2;
                    if (out != null) {
                        try {
                            out.close();
                        } catch (IOException e6) {
                            AFLogger.afLogE("Exception while trying to close InstallationFile", e6);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (PackageManager.NameNotFoundException e7) {
            e = e7;
        } catch (IOException e8) {
            e = e8;
        }
    }

    private static String generateId(WeakReference<Context> context) throws PackageManager.NameNotFoundException {
        PackageInfo packageInfo = context.get().getPackageManager().getPackageInfo(context.get().getPackageName(), 0);
        if (Build.VERSION.SDK_INT >= 9) {
            String id = packageInfo.firstInstallTime + "-" + Math.abs(new Random().nextLong());
            return id;
        }
        String id2 = UUID.randomUUID().toString();
        return id2;
    }

    private static String readInstallationSP(WeakReference<Context> context) {
        if (context.get() == null) {
            return null;
        }
        SharedPreferences sharedPreferences = context.get().getSharedPreferences("appsflyer-data", 0);
        return sharedPreferences.getString(INSTALLATION, null);
    }

    private static void writeInstallationSP(WeakReference<Context> context) throws PackageManager.NameNotFoundException {
        writeInstallationSP(context, generateId(context));
    }

    @SuppressLint({"CommitPrefEdits"})
    private static void writeInstallationSP(WeakReference<Context> context, String sId) throws PackageManager.NameNotFoundException {
        SharedPreferences sharedPreferences = context.get().getSharedPreferences("appsflyer-data", 0);
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putString(INSTALLATION, sId);
        if (Build.VERSION.SDK_INT >= 9) {
            editor.apply();
        } else {
            editor.commit();
        }
    }
}
