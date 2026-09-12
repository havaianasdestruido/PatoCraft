package com.microsoft.onlineid.internal.log;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Debug;
import android.os.Environment;
import android.os.Process;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.View;
import com.facebook.internal.ServerProtocol;
import com.microsoft.onlineid.internal.configuration.Settings;
import com.microsoft.onlineid.sts.AuthenticatorAccountManager;
import com.microsoft.onlineid.sts.AuthenticatorUserAccount;
import java.io.BufferedReader;
import java.io.CharArrayWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FilenameFilter;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.Writer;
import java.lang.ref.WeakReference;
import java.nio.CharBuffer;
import java.text.DateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import org.apache.james.mime4j.field.ContentTypeField;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ErrorReportManager {
    private static final String ConfirmationTitle = "Report a problem?";
    private static final String CrashReportEmailTitleFormat = "MSA Android Application Crash Report - %s";
    private static final String CrashReportExtension = ".stacktrace";
    private static WeakReference<Context> CurrentActivityContext = null;
    private static Context CurrentAppContext = null;
    private static final String DontAskAgainMessage = "No, don't ask again";
    private static final DateFormat EmailTitleDateFormat = DateFormat.getDateTimeInstance(2, 2, Locale.getDefault());
    private static final String IgnoreCrashReportingStorageKeyName = "isIgnoreCrashReporting";
    private static final int LogCatNumberLines = 5000;
    private static final String ScreenshotFileName = "com.microsoft.msa.authenticator.screenshot.jpg";
    private static final String SendCrashReportConfirmation = "A problem occurred last time you ran this application. Would you like to report it?";
    private static final String SendEmailTo = "WS-MSACLIENT-AFB@microsoft.com";
    private File _contextFilePath;
    private boolean _sendScreenshot = false;
    private boolean _sendLogs = true;

    public ErrorReportManager(Context applicationContext) {
        if (applicationContext != null) {
            init(applicationContext);
        }
    }

    public ErrorReportManager() {
        CurrentAppContext = null;
    }

    public void init(Context applicationContext) {
        try {
            CurrentAppContext = applicationContext;
            if (this._contextFilePath == null && CurrentAppContext != null) {
                this._contextFilePath = CurrentAppContext.getFilesDir();
            }
        } catch (Exception ex) {
            Logger.warning("Error in init: ", ex);
        }
    }

    protected boolean isIgnoreCrashReportingFlagSet() {
        Settings settings = Settings.getInstance(CurrentAppContext);
        return settings.isSettingEnabled(IgnoreCrashReportingStorageKeyName);
    }

    public void setSendScreenshot(boolean sendScreenshotNewValue) {
        this._sendScreenshot = sendScreenshotNewValue;
    }

    public void setSendLogs(boolean sendLogsNewValue) {
        this._sendLogs = sendLogsNewValue;
    }

    public void generateAndSaveCrashReport(Throwable e) throws Throwable {
        try {
            if (!isIgnoreCrashReportingFlagSet()) {
                if (this._sendScreenshot) {
                    saveScreenshot(CurrentActivityContext);
                }
                String errFileName = "stack-" + System.currentTimeMillis() + CrashReportExtension;
                FileOutputStream traceOutStream = CurrentAppContext.openFileOutput(errFileName, 0);
                PrintWriter printWriter = new PrintWriter(traceOutStream);
                constructReport(e, true, null, printWriter);
                printWriter.close();
            }
        } catch (Exception ex) {
            Logger.warning("Error in generateAndSaveCrashReport: ", ex);
        }
    }

    public void generateAndSendReportWithUserPermission(Context activityContext) throws Throwable {
        generateAndSendReportWithUserPermission(activityContext, null);
    }

    public void generateAndSendReportWithUserPermission(Context activityContext, String userFeedback) throws Throwable {
        try {
            CurrentActivityContext = new WeakReference<>(activityContext);
            if (this._sendScreenshot) {
                saveScreenshot(CurrentActivityContext);
            }
            emailLogs(userFeedback);
        } catch (Exception ex) {
            Logger.error("!Error generateAndSendReportWithUserPermission:", ex);
        }
    }

    public void checkAndSendCrashReportWithUserPermission(Context activityContext) {
        try {
            if (!isIgnoreCrashReportingFlagSet()) {
                CurrentActivityContext = new WeakReference<>(activityContext);
                File[] reportFilesList = getCrashErrorFileList();
                if (reportFilesList != null && reportFilesList.length > 0) {
                    askUserPermissionToEmailCrashReport();
                }
            }
        } catch (Exception ex) {
            Logger.error("!Error checkAndSendCrashReportWithUserPermission:", ex);
        }
    }

    protected void constructReport(Throwable e, boolean shouldFilterByPID, String userFeedback, PrintWriter printWriter) {
        if (userFeedback != null) {
            try {
                if (!userFeedback.isEmpty()) {
                    printWriter.append((CharSequence) userFeedback);
                    printWriter.append("\n\n");
                }
            } catch (Exception ex) {
                Logger.error("Exception in constructReport:", ex);
                return;
            }
        }
        AuthenticatorAccountManager accountManager = new AuthenticatorAccountManager(CurrentAppContext);
        if (accountManager.hasAccounts()) {
            for (AuthenticatorUserAccount account : accountManager.getAccounts()) {
                appendValue(printWriter, "PUID", account.getPuid(), false);
                appendValue(printWriter, "Username", account.getUsername(), false);
                appendValue(printWriter, "GcmRegistrationID", account.getGcmRegistrationID(), false);
                printWriter.append("\n");
            }
        }
        printWriter.append((CharSequence) new Date().toString());
        printWriter.append("\n\n");
        getDeviceInfo(printWriter);
        if (e != null) {
            printWriter.append("Stack : \n");
            printWriter.append("-------------------- \n");
            e.printStackTrace(printWriter);
            Throwable cause = e.getCause();
            for (int depthCounter = 0; cause != null && depthCounter < 5; depthCounter++) {
                printWriter.append("Cause :");
                printWriter.append((CharSequence) String.valueOf(depthCounter));
                printWriter.append("-------------------- \n");
                cause.printStackTrace(printWriter);
                cause = cause.getCause();
            }
        }
        if (this._sendLogs) {
            printWriter.append("-------------------- \n");
            printWriter.append("\nLogcat:\n\n");
            collectLogCatLogs(printWriter, true);
            printWriter.append("\n");
            printWriter.append("-------------------- \n");
        }
    }

    protected void saveScreenshot(WeakReference<Context> activityContext) throws Throwable {
        deleteScreenshot();
        FileOutputStream fos = null;
        try {
            try {
                View view = ((Activity) activityContext.get()).getWindow().getDecorView();
                view.setDrawingCacheEnabled(true);
                view.buildDrawingCache();
                Bitmap bitmap = view.getDrawingCache();
                String filePath = Environment.getExternalStorageDirectory() + File.separator + ScreenshotFileName;
                FileOutputStream fos2 = new FileOutputStream(filePath);
                try {
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 10, fos2);
                    if (fos2 != null) {
                        try {
                            fos2.close();
                            fos = fos2;
                        } catch (Exception e) {
                            e = e;
                            Logger.warning("Exception in saveScreenshot:", e);
                        }
                    } else {
                        fos = fos2;
                    }
                } catch (Exception e2) {
                    e = e2;
                    fos = fos2;
                    Logger.warning("Exception in saveScreenshot:", e);
                    if (fos != null) {
                        try {
                            fos.close();
                        } catch (Exception e3) {
                            e = e3;
                            Logger.warning("Exception in saveScreenshot:", e);
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fos = fos2;
                    if (fos != null) {
                        fos.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e4) {
            e = e4;
        }
    }

    protected File getScreenshotFile() {
        File screenshotFile = null;
        try {
            if (this._sendScreenshot) {
                File screenshotFile2 = new File(Environment.getExternalStorageDirectory() + File.separator + ScreenshotFileName);
                try {
                    if (!screenshotFile2.exists()) {
                        return null;
                    }
                    return screenshotFile2;
                } catch (Exception e) {
                    e = e;
                    screenshotFile = screenshotFile2;
                    Logger.warning("Exception in getScreenshotFile:", e);
                    return screenshotFile;
                }
            }
        } catch (Exception e2) {
            e = e2;
        }
        return screenshotFile;
    }

    protected void deleteScreenshot() {
        try {
            File reportFile = getScreenshotFile();
            if (reportFile != null) {
                deleteFileNoThrow(reportFile);
            }
        } catch (Exception e) {
            Logger.warning("Exception in deleteScreenshot", e);
        }
    }

    protected static void collectLogCatLogs(PrintWriter printWriter, boolean shouldFilterByPID) {
        String pidFilter = null;
        if (shouldFilterByPID) {
            try {
                int pid = Process.myPid();
                if (pid > 0) {
                    pidFilter = Integer.toString(pid) + "):";
                }
            } catch (Exception e) {
                Logger.error("Exception in collectLogCat", e);
                return;
            }
        }
        String[] logCatCmd = {"logcat", "-t", Integer.toString(LogCatNumberLines), "-v", "time", Logger.getLogTag() + ":*", "*:S"};
        Process process = Runtime.getRuntime().exec(logCatCmd);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
        while (true) {
            String line = bufferedReader.readLine();
            if (line != null) {
                if (pidFilter == null || line.contains(pidFilter)) {
                    printWriter.append((CharSequence) line);
                    printWriter.append("\n");
                }
            } else {
                return;
            }
        }
    }

    protected void getDeviceInfo(PrintWriter printWriter) {
        try {
            appendValue(printWriter, "Package", CurrentAppContext.getPackageName(), false);
            appendValue(printWriter, "FilePath", this._contextFilePath.getAbsolutePath(), false);
            try {
                PackageInfo pi = CurrentAppContext.getPackageManager().getPackageInfo(CurrentAppContext.getPackageName(), 0);
                appendValue(printWriter, "Version", pi.versionName, false);
            } catch (Exception e) {
            }
            printWriter.append("\nPackage Data\n");
            appendValue(printWriter, "OS version", Build.VERSION.RELEASE);
            appendValue(printWriter, "SDK level", String.valueOf(Build.VERSION.SDK_INT));
            appendValue(printWriter, "Board", Build.BOARD);
            appendValue(printWriter, "Brand", Build.BRAND);
            appendValue(printWriter, "Phone model", Build.MODEL);
            appendValue(printWriter, "Device", Build.DEVICE);
            appendValue(printWriter, "Display", Build.DISPLAY);
            appendValue(printWriter, "Fingerprint", Build.FINGERPRINT);
            appendValue(printWriter, "Host", Build.HOST);
            appendValue(printWriter, "ID", Build.ID);
            appendValue(printWriter, "Model", Build.MODEL);
            appendValue(printWriter, "Product", Build.PRODUCT);
            appendValue(printWriter, "Tags", Build.TAGS);
            appendValue(printWriter, "Type", String.valueOf(Build.TYPE));
            appendValue(printWriter, "User", String.valueOf(Build.USER));
            appendValue(printWriter, "Locale", Locale.getDefault().toString());
            appendValue(printWriter, "Screen density", String.valueOf(CurrentAppContext.getResources().getDisplayMetrics().density));
            appendValue(printWriter, "Screen size", getScreenSize());
            appendValue(printWriter, "Screen orientation", getOrientation());
            printWriter.append("Internal Memory\n");
            appendValue(printWriter, "Total", String.valueOf(Environment.getDataDirectory().getTotalSpace() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) + "KB");
            appendValue(printWriter, "Available", String.valueOf(Environment.getDataDirectory().getUsableSpace() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) + "KB");
            printWriter.append("Native Memory\n");
            appendValue(printWriter, "Allocated heap size", String.valueOf(Debug.getNativeHeapAllocatedSize() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) + "KB");
            appendValue(printWriter, "Free size", String.valueOf(Debug.getNativeHeapFreeSize() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) + "KB");
            appendValue(printWriter, "Heap size", String.valueOf(Debug.getNativeHeapSize() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) + "KB");
        } catch (Exception e2) {
            Logger.warning("Error in getDeviceInfo: ", e2);
        }
        printWriter.append("\n");
    }

    private void appendValue(PrintWriter writer, String name, String value, boolean indent) {
        String format = indent ? "      %s : %s\n" : "%s : %s\n";
        writer.append((CharSequence) String.format(Locale.US, format, name, value));
    }

    private void appendValue(PrintWriter writer, String name, String value) {
        appendValue(writer, name, value, true);
    }

    private static String getScreenSize() {
        int screenLayout = CurrentAppContext.getResources().getConfiguration().screenLayout;
        switch (screenLayout & 15) {
            case 1:
                return "Small";
            case 2:
                return "Normal";
            case 3:
                return "Large";
            case 4:
                return "Xlarge";
            default:
                return "Undefined";
        }
    }

    private static String getOrientation() {
        return CurrentAppContext.getResources().getConfiguration().orientation == 1 ? "Portrait" : "Landscape";
    }

    protected File[] getCrashErrorFileList() {
        File[] fileList = new File[0];
        try {
            if (this._contextFilePath != null) {
                FilenameFilter filter = new FilenameFilter() { // from class: com.microsoft.onlineid.internal.log.ErrorReportManager.1
                    @Override // java.io.FilenameFilter
                    public boolean accept(File dir, String fileName) {
                        return fileName.endsWith(ErrorReportManager.CrashReportExtension);
                    }
                };
                return this._contextFilePath.listFiles(filter);
            }
            return fileList;
        } catch (Exception e) {
            Logger.warning("Exception in getCrashErrorFileList", e);
            return fileList;
        }
    }

    protected void notifyUserOfNoMailApp() {
        DialogInterface.OnClickListener closeDialogListener = new DialogInterface.OnClickListener() { // from class: com.microsoft.onlineid.internal.log.ErrorReportManager.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int id) {
                dialog.cancel();
            }
        };
        AlertDialog.Builder noMailDialogBuilder = new AlertDialog.Builder(CurrentActivityContext.get());
        noMailDialogBuilder.setTitle(getStringResourceIdAtRuntime("send_feedback_no_email_app_header"));
        noMailDialogBuilder.setMessage(getStringResourceIdAtRuntime("send_feedback_no_email_app_body"));
        noMailDialogBuilder.setPositiveButton(getStringResourceIdAtRuntime("popup_button_close"), closeDialogListener);
        noMailDialogBuilder.show();
    }

    private static int getStringResourceIdAtRuntime(String identifier) {
        return CurrentAppContext.getResources().getIdentifier(identifier, "string", CurrentAppContext.getPackageName());
    }

    protected void emailLogs(String userFeedback) throws Throwable {
        Writer result = null;
        PrintWriter printWriter = null;
        String report = "";
        try {
            try {
                try {
                    Writer result2 = new CharArrayWriter();
                    try {
                        PrintWriter printWriter2 = new PrintWriter(result2);
                        try {
                            constructReport(null, false, userFeedback, printWriter2);
                            printWriter2.close();
                            report = result2.toString();
                            try {
                                printWriter2.close();
                                result2.close();
                            } catch (Exception e) {
                                e = e;
                                Logger.warning("Exception in emailLogs", e);
                                return;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            printWriter = printWriter2;
                            result = result2;
                            Logger.warning("Exception in emailLogs", e);
                            printWriter.close();
                            result.close();
                        } catch (Throwable th) {
                            th = th;
                            printWriter = printWriter2;
                            result = result2;
                            printWriter.close();
                            result.close();
                            throw th;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        result = result2;
                    } catch (Throwable th2) {
                        th = th2;
                        result = result2;
                    }
                } catch (Exception e4) {
                    e = e4;
                }
                String subjectTag = CurrentAppContext.getResources().getString(getStringResourceIdAtRuntime("send_feedback_subject_tag"));
                String subject = EmailTitleDateFormat.format(new Date());
                if (userFeedback != null && !userFeedback.isEmpty()) {
                    subject = subject + " : " + userFeedback.substring(0, Math.min(userFeedback.length(), 50));
                }
                sendEmail(CurrentActivityContext, report, SendEmailTo, String.format(Locale.US, "[%s] %s", subjectTag, subject));
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e5) {
            e = e5;
        }
    }

    protected void askUserPermissionToEmailCrashReport() {
        DialogInterface.OnClickListener permissionListener = new DialogInterface.OnClickListener() { // from class: com.microsoft.onlineid.internal.log.ErrorReportManager.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int id) {
                dialog.cancel();
                ErrorReportManager.this.sendMailAndDeleteFiles(id == -1);
                if (id == -3) {
                    Settings settings = Settings.getInstance(ErrorReportManager.CurrentAppContext);
                    settings.setSetting(ErrorReportManager.IgnoreCrashReportingStorageKeyName, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
                }
            }
        };
        AlertDialog.Builder permissionDialogBuilder = new AlertDialog.Builder(CurrentActivityContext.get());
        permissionDialogBuilder.setTitle(ConfirmationTitle);
        permissionDialogBuilder.setMessage(SendCrashReportConfirmation);
        permissionDialogBuilder.setPositiveButton(R.string.yes, permissionListener);
        permissionDialogBuilder.setNegativeButton(R.string.no, permissionListener);
        permissionDialogBuilder.setNeutralButton(DontAskAgainMessage, permissionListener);
        permissionDialogBuilder.show();
    }

    protected void sendMailAndDeleteFiles(boolean sendMail) {
        File[] reportFilesList = getCrashErrorFileList();
        CharBuffer buffer = null;
        try {
            Arrays.sort(reportFilesList);
            int bufferCapacity = 0;
            for (File file : reportFilesList) {
                if (sendMail) {
                    bufferCapacity = (int) (((long) bufferCapacity) + file.length());
                } else {
                    deleteFileNoThrow(file);
                }
            }
            if (bufferCapacity > 0) {
                buffer = CharBuffer.allocate(bufferCapacity);
                for (File file2 : reportFilesList) {
                    FileReader input = null;
                    try {
                        FileReader input2 = new FileReader(file2.getAbsoluteFile());
                        do {
                            try {
                            } catch (Exception e) {
                                e = e;
                                input = input2;
                                Logger.warning("Error reading the report file", e);
                            }
                        } while (input2.read(buffer) > 0);
                        buffer.flip();
                        input = input2;
                    } catch (Exception e2) {
                        e = e2;
                    }
                    try {
                        try {
                            input.close();
                            deleteFileNoThrow(file2);
                        } catch (Exception e3) {
                            Logger.error("Error closing the report file", e3);
                            deleteFileNoThrow(file2);
                        }
                    } catch (Throwable th) {
                        deleteFileNoThrow(file2);
                        throw th;
                    }
                }
            }
            if (sendMail && buffer != null) {
                sendEmail(CurrentActivityContext, buffer.toString(), SendEmailTo, String.format(Locale.US, CrashReportEmailTitleFormat, EmailTitleDateFormat.format(new Date())));
            }
        } catch (Exception e4) {
            Logger.warning("Error in sendMailAndDeleteFiles: ", e4);
        }
    }

    protected void deleteFileNoThrow(File file) {
        if (file != null) {
            try {
                file.delete();
            } catch (Exception e) {
                Logger.error("deleteFileNoThrow failed", e);
            }
        }
    }

    protected void sendEmail(WeakReference<Context> context, String errorContent, String mailTo, String emailSubject) {
        try {
            File file = getScreenshotFile();
            Intent sendIntent = new Intent("android.intent.action.SEND");
            sendIntent.putExtra("android.intent.extra.EMAIL", new String[]{mailTo});
            sendIntent.putExtra("android.intent.extra.SUBJECT", emailSubject);
            sendIntent.putExtra("android.intent.extra.TEXT", errorContent + "\n");
            sendIntent.setType(ContentTypeField.TYPE_MESSAGE_RFC822);
            if (file != null) {
                sendIntent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
            }
            context.get().startActivity(sendIntent);
        } catch (ActivityNotFoundException e) {
            notifyUserOfNoMailApp();
            Logger.warning("ActivityNotFoundException in sendEmail.", e);
        } catch (Exception ex) {
            Logger.warning("Exception in sendEmail.", ex);
        }
    }
}
