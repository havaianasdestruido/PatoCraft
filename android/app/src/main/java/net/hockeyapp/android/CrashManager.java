package net.hockeyapp.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.hockeyapp.android.objects.CrashDetails;
import net.hockeyapp.android.objects.CrashManagerUserInput;
import net.hockeyapp.android.objects.CrashMetaData;
import net.hockeyapp.android.utils.HockeyLog;
import net.hockeyapp.android.utils.HttpURLConnectionBuilder;
import net.hockeyapp.android.utils.Util;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CrashManager {
    private static final String ALWAYS_SEND_KEY = "always_send_crash_reports";
    private static final int STACK_TRACES_FOUND_CONFIRMED = 2;
    private static final int STACK_TRACES_FOUND_NEW = 1;
    private static final int STACK_TRACES_FOUND_NONE = 0;
    private static long initializeTimestamp;
    private static String identifier = null;
    private static String urlString = null;
    private static boolean submitting = false;
    private static boolean didCrashInLastSession = false;

    public static void register(Context context) {
        String appIdentifier = Util.getAppIdentifier(context);
        register(context, appIdentifier);
    }

    public static void register(Context context, CrashManagerListener listener) {
        String appIdentifier = Util.getAppIdentifier(context);
        register(context, appIdentifier, listener);
    }

    public static void register(Context context, String appIdentifier) {
        register(context, Constants.BASE_URL, appIdentifier, null);
    }

    public static void register(Context context, String appIdentifier, CrashManagerListener listener) {
        register(context, Constants.BASE_URL, appIdentifier, listener);
    }

    public static void register(Context context, String urlString2, String appIdentifier, CrashManagerListener listener) {
        initialize(context, urlString2, appIdentifier, listener, false);
        execute(context, listener);
    }

    public static void initialize(Context context, String appIdentifier, CrashManagerListener listener) {
        initialize(context, Constants.BASE_URL, appIdentifier, listener, true);
    }

    public static void initialize(Context context, String urlString2, String appIdentifier, CrashManagerListener listener) {
        initialize(context, urlString2, appIdentifier, listener, true);
    }

    public static void execute(Context context, CrashManagerListener listener) {
        Boolean ignoreDefaultHandler = Boolean.valueOf(listener != null && listener.ignoreDefaultHandler());
        WeakReference<Context> weakContext = new WeakReference<>(context);
        int foundOrSend = hasStackTraces(weakContext);
        if (foundOrSend == 1) {
            didCrashInLastSession = true;
            Boolean autoSend = Boolean.valueOf(context instanceof Activity ? false : true);
            SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
            Boolean autoSend2 = Boolean.valueOf(autoSend.booleanValue() | prefs.getBoolean(ALWAYS_SEND_KEY, false));
            if (listener != null) {
                autoSend2 = Boolean.valueOf(Boolean.valueOf(autoSend2.booleanValue() | listener.shouldAutoUploadCrashes()).booleanValue() | listener.onCrashesFound());
                listener.onNewCrashesFound();
            }
            if (!autoSend2.booleanValue()) {
                showDialog(weakContext, listener, ignoreDefaultHandler.booleanValue());
                return;
            } else {
                sendCrashes(weakContext, listener, ignoreDefaultHandler.booleanValue());
                return;
            }
        }
        if (foundOrSend == 2) {
            if (listener != null) {
                listener.onConfirmedCrashesFound();
            }
            sendCrashes(weakContext, listener, ignoreDefaultHandler.booleanValue());
            return;
        }
        registerHandler(weakContext, listener, ignoreDefaultHandler.booleanValue());
    }

    public static int hasStackTraces(WeakReference<Context> weakContext) {
        String[] filenames = searchForStackTraces();
        List<String> confirmedFilenames = null;
        if (filenames == null || filenames.length <= 0) {
            return 0;
        }
        try {
            confirmedFilenames = getConfirmedFilenames(weakContext);
        } catch (Exception e) {
        }
        if (confirmedFilenames != null) {
            for (String filename : filenames) {
                if (!confirmedFilenames.contains(filename)) {
                    return 1;
                }
            }
            return 2;
        }
        return 1;
    }

    public static boolean didCrashInLastSession() {
        return didCrashInLastSession;
    }

    public static CrashDetails getLastCrashDetails() {
        if (Constants.FILES_PATH == null || !didCrashInLastSession()) {
            return null;
        }
        File dir = new File(Constants.FILES_PATH + "/");
        File[] files = dir.listFiles(new FilenameFilter() { // from class: net.hockeyapp.android.CrashManager.1
            @Override // java.io.FilenameFilter
            public boolean accept(File dir2, String filename) {
                return filename.endsWith(".stacktrace");
            }
        });
        long lastModification = 0;
        File lastModifiedFile = null;
        for (File file : files) {
            if (file.lastModified() > lastModification) {
                lastModification = file.lastModified();
                lastModifiedFile = file;
            }
        }
        if (lastModifiedFile == null || !lastModifiedFile.exists()) {
            return null;
        }
        try {
            CrashDetails result = CrashDetails.fromFile(lastModifiedFile);
            return result;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static void submitStackTraces(WeakReference<Context> weakContext, CrashManagerListener listener) {
        submitStackTraces(weakContext, listener, null);
    }

    public static void submitStackTraces(WeakReference<Context> weakContext, CrashManagerListener listener, CrashMetaData crashMetaData) {
        String[] list = searchForStackTraces();
        Boolean successful = false;
        if (list == null || list.length <= 0) {
            return;
        }
        HockeyLog.debug("Found " + list.length + " stacktrace(s).");
        for (int index = 0; index < list.length; index++) {
            HttpURLConnection urlConnection = null;
            try {
                try {
                    String filename = list[index];
                    String stacktrace = contentsOfFile(weakContext, filename);
                    if (stacktrace.length() > 0) {
                        HockeyLog.debug("Transmitting crash data: \n" + stacktrace);
                        String userID = contentsOfFile(weakContext, filename.replace(".stacktrace", ".user"));
                        String contact = contentsOfFile(weakContext, filename.replace(".stacktrace", ".contact"));
                        if (crashMetaData != null) {
                            String crashMetaDataUserID = crashMetaData.getUserID();
                            if (!TextUtils.isEmpty(crashMetaDataUserID)) {
                                userID = crashMetaDataUserID;
                            }
                            String crashMetaDataContact = crashMetaData.getUserEmail();
                            if (!TextUtils.isEmpty(crashMetaDataContact)) {
                                contact = crashMetaDataContact;
                            }
                        }
                        String applicationLog = contentsOfFile(weakContext, filename.replace(".stacktrace", ".description"));
                        String description = crashMetaData != null ? crashMetaData.getUserDescription() : "";
                        if (!TextUtils.isEmpty(applicationLog)) {
                            description = !TextUtils.isEmpty(description) ? String.format("%s\n\nLog:\n%s", description, applicationLog) : String.format("Log:\n%s", applicationLog);
                        }
                        Map<String, String> parameters = new HashMap<>();
                        parameters.put("raw", stacktrace);
                        parameters.put("userID", userID);
                        parameters.put("contact", contact);
                        parameters.put("description", description);
                        parameters.put("sdk", Constants.SDK_NAME);
                        parameters.put("sdk_version", "4.1.4");
                        urlConnection = new HttpURLConnectionBuilder(getURLString()).setRequestMethod("POST").writeFormFields(parameters).build();
                        int responseCode = urlConnection.getResponseCode();
                        successful = Boolean.valueOf(responseCode == 202 || responseCode == 201);
                    }
                    if (urlConnection != null) {
                        urlConnection.disconnect();
                    }
                    if (successful.booleanValue()) {
                        HockeyLog.debug("Transmission succeeded");
                        deleteStackTrace(weakContext, list[index]);
                        if (listener != null) {
                            listener.onCrashesSent();
                            deleteRetryCounter(weakContext, list[index], listener.getMaxRetryAttempts());
                        }
                    } else {
                        HockeyLog.debug("Transmission failed, will retry on next register() call");
                        if (listener != null) {
                            listener.onCrashesNotSent();
                            updateRetryCounter(weakContext, list[index], listener.getMaxRetryAttempts());
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    if (0 != 0) {
                        urlConnection.disconnect();
                    }
                    if (successful.booleanValue()) {
                        HockeyLog.debug("Transmission succeeded");
                        deleteStackTrace(weakContext, list[index]);
                        if (listener != null) {
                            listener.onCrashesSent();
                            deleteRetryCounter(weakContext, list[index], listener.getMaxRetryAttempts());
                        }
                    } else {
                        HockeyLog.debug("Transmission failed, will retry on next register() call");
                        if (listener != null) {
                            listener.onCrashesNotSent();
                            updateRetryCounter(weakContext, list[index], listener.getMaxRetryAttempts());
                        }
                    }
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    urlConnection.disconnect();
                }
                if (successful.booleanValue()) {
                    HockeyLog.debug("Transmission succeeded");
                    deleteStackTrace(weakContext, list[index]);
                    if (listener != null) {
                        listener.onCrashesSent();
                        deleteRetryCounter(weakContext, list[index], listener.getMaxRetryAttempts());
                    }
                } else {
                    HockeyLog.debug("Transmission failed, will retry on next register() call");
                    if (listener != null) {
                        listener.onCrashesNotSent();
                        updateRetryCounter(weakContext, list[index], listener.getMaxRetryAttempts());
                    }
                }
                throw th;
            }
        }
    }

    public static void deleteStackTraces(WeakReference<Context> weakContext) {
        String[] list = searchForStackTraces();
        if (list != null && list.length > 0) {
            HockeyLog.debug("Found " + list.length + " stacktrace(s).");
            for (int index = 0; index < list.length; index++) {
                if (weakContext != null) {
                    try {
                        HockeyLog.debug("Delete stacktrace " + list[index] + ".");
                        deleteStackTrace(weakContext, list[index]);
                        Context context = weakContext.get();
                        if (context != null) {
                            context.deleteFile(list[index]);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    public static boolean handleUserInput(CrashManagerUserInput userInput, CrashMetaData userProvidedMetaData, CrashManagerListener listener, WeakReference<Context> weakContext, boolean ignoreDefaultHandler) {
        switch (userInput) {
            case CrashManagerUserInputDontSend:
                if (listener != null) {
                    listener.onUserDeniedCrashes();
                }
                deleteStackTraces(weakContext);
                registerHandler(weakContext, listener, ignoreDefaultHandler);
                return true;
            case CrashManagerUserInputAlwaysSend:
                Context context = null;
                if (weakContext != null) {
                    Context context2 = weakContext.get();
                    context = context2;
                }
                if (context == null) {
                    return false;
                }
                SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
                prefs.edit().putBoolean(ALWAYS_SEND_KEY, true).apply();
                sendCrashes(weakContext, listener, ignoreDefaultHandler, userProvidedMetaData);
                return true;
            case CrashManagerUserInputSend:
                sendCrashes(weakContext, listener, ignoreDefaultHandler, userProvidedMetaData);
                return true;
            default:
                return false;
        }
    }

    public static void resetAlwaysSend(WeakReference<Context> weakContext) {
        Context context;
        if (weakContext != null && (context = weakContext.get()) != null) {
            SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
            prefs.edit().remove(ALWAYS_SEND_KEY).apply();
        }
    }

    private static void initialize(Context context, String urlString2, String appIdentifier, CrashManagerListener listener, boolean registerHandler) {
        boolean z = false;
        if (context != null) {
            if (initializeTimestamp == 0) {
                initializeTimestamp = System.currentTimeMillis();
            }
            urlString = urlString2;
            identifier = Util.sanitizeAppIdentifier(appIdentifier);
            didCrashInLastSession = false;
            Constants.loadFromContext(context);
            if (identifier == null) {
                identifier = Constants.APP_PACKAGE;
            }
            if (registerHandler) {
                if (listener != null && listener.ignoreDefaultHandler()) {
                    z = true;
                }
                Boolean ignoreDefaultHandler = Boolean.valueOf(z);
                WeakReference<Context> weakContext = new WeakReference<>(context);
                registerHandler(weakContext, listener, ignoreDefaultHandler.booleanValue());
            }
        }
    }

    private static void showDialog(final WeakReference<Context> weakContext, final CrashManagerListener listener, final boolean ignoreDefaultHandler) {
        Context context = null;
        if (weakContext != null) {
            Context context2 = weakContext.get();
            context = context2;
        }
        if (context != null) {
            if (listener == null || !listener.onHandleAlertView()) {
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                String alertTitle = getAlertTitle(context);
                builder.setTitle(alertTitle);
                builder.setMessage(R.string.hockeyapp_crash_dialog_message);
                builder.setNegativeButton(R.string.hockeyapp_crash_dialog_negative_button, new DialogInterface.OnClickListener() { // from class: net.hockeyapp.android.CrashManager.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        CrashManager.handleUserInput(CrashManagerUserInput.CrashManagerUserInputDontSend, null, listener, weakContext, ignoreDefaultHandler);
                    }
                });
                builder.setNeutralButton(R.string.hockeyapp_crash_dialog_neutral_button, new DialogInterface.OnClickListener() { // from class: net.hockeyapp.android.CrashManager.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        CrashManager.handleUserInput(CrashManagerUserInput.CrashManagerUserInputAlwaysSend, null, listener, weakContext, ignoreDefaultHandler);
                    }
                });
                builder.setPositiveButton(R.string.hockeyapp_crash_dialog_positive_button, new DialogInterface.OnClickListener() { // from class: net.hockeyapp.android.CrashManager.4
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        CrashManager.handleUserInput(CrashManagerUserInput.CrashManagerUserInputSend, null, listener, weakContext, ignoreDefaultHandler);
                    }
                });
                builder.create().show();
            }
        }
    }

    private static String getAlertTitle(Context context) {
        String appTitle = Util.getAppName(context);
        String message = context.getString(R.string.hockeyapp_crash_dialog_title);
        return String.format(message, appTitle);
    }

    private static void sendCrashes(WeakReference<Context> weakContext, CrashManagerListener listener, boolean ignoreDefaultHandler) {
        sendCrashes(weakContext, listener, ignoreDefaultHandler, null);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [net.hockeyapp.android.CrashManager$5] */
    private static void sendCrashes(final WeakReference<Context> weakContext, final CrashManagerListener listener, boolean ignoreDefaultHandler, final CrashMetaData crashMetaData) {
        saveConfirmedStackTraces(weakContext);
        registerHandler(weakContext, listener, ignoreDefaultHandler);
        Context ctx = weakContext.get();
        if (ctx != null && !Util.isConnectedToNetwork(ctx)) {
            if (listener != null) {
                listener.onCrashesNotSent();
            }
        } else if (!submitting) {
            submitting = true;
            new Thread() { // from class: net.hockeyapp.android.CrashManager.5
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    CrashManager.submitStackTraces(weakContext, listener, crashMetaData);
                    boolean unused = CrashManager.submitting = false;
                }
            }.start();
        }
    }

    private static void registerHandler(WeakReference<Context> weakContext, CrashManagerListener listener, boolean ignoreDefaultHandler) {
        if (!TextUtils.isEmpty(Constants.APP_VERSION) && !TextUtils.isEmpty(Constants.APP_PACKAGE)) {
            Thread.UncaughtExceptionHandler currentHandler = Thread.getDefaultUncaughtExceptionHandler();
            if (currentHandler != null) {
                HockeyLog.debug("Current handler class = " + currentHandler.getClass().getName());
            }
            if (currentHandler instanceof ExceptionHandler) {
                ((ExceptionHandler) currentHandler).setListener(listener);
                return;
            } else {
                Thread.setDefaultUncaughtExceptionHandler(new ExceptionHandler(currentHandler, listener, ignoreDefaultHandler));
                return;
            }
        }
        HockeyLog.debug("Exception handler not set because version or package is null.");
    }

    private static String getURLString() {
        return urlString + "api/2/apps/" + identifier + "/crashes/";
    }

    private static void updateRetryCounter(WeakReference<Context> weakContext, String filename, int maxRetryAttempts) {
        Context context;
        if (maxRetryAttempts != -1 && weakContext != null && (context = weakContext.get()) != null) {
            SharedPreferences preferences = context.getSharedPreferences(Constants.SDK_NAME, 0);
            SharedPreferences.Editor editor = preferences.edit();
            int retryCounter = preferences.getInt("RETRY_COUNT: " + filename, 0);
            if (retryCounter >= maxRetryAttempts) {
                deleteStackTrace(weakContext, filename);
                deleteRetryCounter(weakContext, filename, maxRetryAttempts);
            } else {
                editor.putInt("RETRY_COUNT: " + filename, retryCounter + 1);
                editor.apply();
            }
        }
    }

    private static void deleteRetryCounter(WeakReference<Context> weakContext, String filename, int maxRetryAttempts) {
        Context context;
        if (weakContext != null && (context = weakContext.get()) != null) {
            SharedPreferences preferences = context.getSharedPreferences(Constants.SDK_NAME, 0);
            SharedPreferences.Editor editor = preferences.edit();
            editor.remove("RETRY_COUNT: " + filename);
            editor.apply();
        }
    }

    private static void deleteStackTrace(WeakReference<Context> weakContext, String filename) {
        Context context;
        if (weakContext != null && (context = weakContext.get()) != null) {
            context.deleteFile(filename);
            String user = filename.replace(".stacktrace", ".user");
            context.deleteFile(user);
            String contact = filename.replace(".stacktrace", ".contact");
            context.deleteFile(contact);
            String description = filename.replace(".stacktrace", ".description");
            context.deleteFile(description);
        }
    }

    private static String contentsOfFile(WeakReference<Context> weakContext, String filename) throws Throwable {
        Context context;
        if (weakContext == null || (context = weakContext.get()) == null) {
            return null;
        }
        StringBuilder contents = new StringBuilder();
        BufferedReader reader = null;
        try {
            try {
                BufferedReader reader2 = new BufferedReader(new InputStreamReader(context.openFileInput(filename)));
                while (true) {
                    try {
                        String line = reader2.readLine();
                        if (line == null) {
                            break;
                        }
                        contents.append(line);
                        contents.append(System.getProperty("line.separator"));
                    } catch (FileNotFoundException e) {
                        reader = reader2;
                        if (reader != null) {
                            try {
                                reader.close();
                            } catch (IOException e2) {
                            }
                        }
                    } catch (IOException e3) {
                        e = e3;
                        reader = reader2;
                        e.printStackTrace();
                        if (reader != null) {
                            try {
                                reader.close();
                            } catch (IOException e4) {
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        reader = reader2;
                        if (reader != null) {
                            try {
                                reader.close();
                            } catch (IOException e5) {
                            }
                        }
                        throw th;
                    }
                }
                if (reader2 != null) {
                    try {
                        reader2.close();
                        reader = reader2;
                    } catch (IOException e6) {
                        reader = reader2;
                    }
                } else {
                    reader = reader2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e7) {
        } catch (IOException e8) {
            e = e8;
        }
        return contents.toString();
    }

    private static void saveConfirmedStackTraces(WeakReference<Context> weakContext) {
        Context context;
        if (weakContext != null && (context = weakContext.get()) != null) {
            try {
                String[] filenames = searchForStackTraces();
                SharedPreferences preferences = context.getSharedPreferences(Constants.SDK_NAME, 0);
                SharedPreferences.Editor editor = preferences.edit();
                editor.putString("ConfirmedFilenames", joinArray(filenames, "|"));
                editor.apply();
            } catch (Exception e) {
            }
        }
    }

    private static String joinArray(String[] array, String delimiter) {
        StringBuffer buffer = new StringBuffer();
        for (int index = 0; index < array.length; index++) {
            buffer.append(array[index]);
            if (index < array.length - 1) {
                buffer.append(delimiter);
            }
        }
        return buffer.toString();
    }

    private static String[] searchForStackTraces() {
        if (Constants.FILES_PATH != null) {
            HockeyLog.debug("Looking for exceptions in: " + Constants.FILES_PATH);
            File dir = new File(Constants.FILES_PATH + "/");
            boolean created = dir.mkdir();
            if (!created && !dir.exists()) {
                return new String[0];
            }
            FilenameFilter filter = new FilenameFilter() { // from class: net.hockeyapp.android.CrashManager.6
                @Override // java.io.FilenameFilter
                public boolean accept(File dir2, String name) {
                    return name.endsWith(".stacktrace");
                }
            };
            return dir.list(filter);
        }
        HockeyLog.debug("Can't search for exception as file path is null.");
        return null;
    }

    private static List<String> getConfirmedFilenames(WeakReference<Context> weakContext) {
        Context context;
        if (weakContext == null || (context = weakContext.get()) == null) {
            return null;
        }
        SharedPreferences preferences = context.getSharedPreferences(Constants.SDK_NAME, 0);
        List<String> result = Arrays.asList(preferences.getString("ConfirmedFilenames", "").split("\\|"));
        return result;
    }

    public static long getInitializeTimestamp() {
        return initializeTimestamp;
    }
}
