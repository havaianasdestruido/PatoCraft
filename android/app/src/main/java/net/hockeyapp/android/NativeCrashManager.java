package net.hockeyapp.android;

import android.app.Activity;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import java.util.UUID;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.impl.client.DefaultHttpClient;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class NativeCrashManager {
    public static void handleDumpFiles(Activity activity, String appId, String deviceId) {
        Log.d("HockeyApp", "Device ID: " + deviceId);
        String[] filenames = searchForDumpFiles();
        for (String dumpFilename : filenames) {
            Log.d("HockeyApp", "Located this dump file: " + dumpFilename);
            String logFilename = createLogFile(getFileTimestamp(dumpFilename), deviceId);
            if (logFilename != null) {
                uploadDumpAndLog(activity, appId, dumpFilename, logFilename);
            }
        }
    }

    public static String createLogFile(String dumpTimestamp, String deviceId) {
        Date now = new Date();
        try {
            String filename = UUID.randomUUID().toString();
            String path = Constants.FILES_PATH + "/" + filename + ".faketrace";
            Log.d("HockeyApp", "Writing unhandled exception to: " + path);
            Log.d("HockeyApp", "Dump timestamp: " + dumpTimestamp);
            BufferedWriter write = new BufferedWriter(new FileWriter(path));
            write.write("Package: " + Constants.APP_PACKAGE + "\n");
            write.write("Version Code: " + Constants.APP_VERSION + "\n");
            write.write("Version Name: " + Constants.APP_VERSION_NAME + "\n");
            write.write("Android: " + Constants.ANDROID_VERSION + "\n");
            write.write("Manufacturer: " + Constants.PHONE_MANUFACTURER + "\n");
            write.write("Model: " + Constants.PHONE_MODEL + "\n");
            write.write("DeviceId: " + deviceId + "\n");
            write.write("Dmp timestamp: " + dumpTimestamp + "\n");
            write.write("Upload Date: " + now + "\n");
            write.write("\n");
            write.write("MinidumpContainer");
            write.flush();
            write.close();
            return filename + ".faketrace";
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [net.hockeyapp.android.NativeCrashManager$1] */
    public static void uploadDumpAndLog(final Activity activity, final String appId, final String dumpFilename, final String logFilename) {
        new Thread() { // from class: net.hockeyapp.android.NativeCrashManager.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
                    HttpPost httpPost = new HttpPost("https://rink.hockeyapp.net/api/2/apps/" + appId + "/crashes/upload");
                    MultipartEntity entity = new MultipartEntity();
                    File dumpFile = new File(Constants.FILES_PATH, dumpFilename);
                    entity.addPart("attachment0", new FileBody(dumpFile));
                    File logFile = new File(Constants.FILES_PATH, logFilename);
                    entity.addPart("log", new FileBody(logFile));
                    httpPost.setEntity(entity);
                    defaultHttpClient.execute(httpPost);
                    Log.d("HockeyApp", "Succesfully Uploaded dump file: " + dumpFilename);
                } catch (Exception e) {
                    Log.d("HockeyApp", "Error uploading dump file: " + dumpFilename);
                    e.printStackTrace();
                } finally {
                    activity.deleteFile(logFilename);
                    activity.deleteFile(dumpFilename);
                }
            }
        }.start();
    }

    private static String getFileTimestamp(String filename) {
        try {
            File file = new File(Constants.FILES_PATH + "/" + filename);
            Date date = new Date(file.lastModified());
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSSZ");
            sdf.setTimeZone(TimeZone.getTimeZone("UTC"));
            return sdf.format(date);
        } catch (Exception e) {
            Log.d("HockeyApp", "Error getting dump timestamp: " + filename);
            e.printStackTrace();
            return "";
        }
    }

    private static String[] searchForDumpFiles() {
        if (Constants.FILES_PATH != null) {
            Log.d("HockeyApp", "Searching for dump files in " + Constants.FILES_PATH);
            File dir = new File(Constants.FILES_PATH + "/");
            boolean created = dir.mkdir();
            if (!created && !dir.exists()) {
                return new String[0];
            }
            FilenameFilter filter = new FilenameFilter() { // from class: net.hockeyapp.android.NativeCrashManager.2
                @Override // java.io.FilenameFilter
                public boolean accept(File dir2, String name) {
                    return name.endsWith(".dmp");
                }
            };
            return dir.list(filter);
        }
        Log.d("HockeyApp", "Can't search for exception as file path is null.");
        return new String[0];
    }
}
