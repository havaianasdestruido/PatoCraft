package com.microsoft.onlineid.internal.log;

import android.app.Activity;
import android.content.Context;
import android.support.v4.view.MotionEventCompat;
import android.widget.Toast;
import com.microsoft.onlineid.internal.Assertion;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SendLogsHandler {
    protected static final long SendKeyEventIntervalMillis = 5000;
    protected static final String ToastMsg = "Press the 'volume down' button %d more time(s) to send logs.";
    private Context _activityContext;
    private Context _applicationContext;
    private ErrorReportManager _errorReport;
    private byte _sendLogsKeyCounter;
    private long _startTime;
    private Toast _toast;

    public SendLogsHandler(Activity activityContext) {
        this(activityContext, (ErrorReportManager) null);
    }

    protected SendLogsHandler(Context context, ErrorReportManager errorReporter) {
        this._applicationContext = null;
        this._activityContext = null;
        this._startTime = 0L;
        this._sendLogsKeyCounter = (byte) -1;
        this._activityContext = context;
        this._errorReport = errorReporter;
    }

    protected SendLogsHandler(Activity activityContext, ErrorReportManager errorReporter) {
        this._applicationContext = null;
        this._activityContext = null;
        this._startTime = 0L;
        this._sendLogsKeyCounter = (byte) -1;
        this._activityContext = activityContext;
        Assertion.check(activityContext != null);
        this._applicationContext = activityContext.getApplicationContext();
        Assertion.check(this._applicationContext != null);
        this._errorReport = errorReporter == null ? new ErrorReportManager(this._applicationContext) : errorReporter;
    }

    public void setSendScreenshot(boolean sendScreenshotNewValue) {
        this._errorReport.setSendScreenshot(sendScreenshotNewValue);
    }

    public void setSendLogs(boolean sendLogsNewValue) {
        this._errorReport.setSendLogs(sendLogsNewValue);
    }

    public void trySendLogsOnKeyEvent(int keyCode) throws Throwable {
        switch (keyCode) {
            case 24:
                this._sendLogsKeyCounter = (byte) 2;
                showToast(String.format(ToastMsg, Byte.valueOf(this._sendLogsKeyCounter)));
                this._startTime = getTimeMillis();
                break;
            case MotionEventCompat.AXIS_TILT /* 25 */:
                long elapsed = getTimeMillis() - this._startTime;
                if (this._sendLogsKeyCounter >= 0 && elapsed < SendKeyEventIntervalMillis) {
                    this._sendLogsKeyCounter = (byte) (this._sendLogsKeyCounter - 1);
                    if (this._sendLogsKeyCounter > 0) {
                        showToast(String.format(ToastMsg, Byte.valueOf(this._sendLogsKeyCounter)));
                    } else {
                        sendLogs();
                        this._sendLogsKeyCounter = (byte) -1;
                    }
                } else {
                    this._sendLogsKeyCounter = (byte) -1;
                }
                break;
        }
    }

    public void sendLogs() throws Throwable {
        this._errorReport.generateAndSendReportWithUserPermission(this._activityContext);
    }

    public void sendLogs(String userFeedback) throws Throwable {
        this._errorReport.generateAndSendReportWithUserPermission(this._activityContext, userFeedback);
    }

    protected void showToast(String msg) {
        if (this._toast == null) {
            this._toast = Toast.makeText(this._applicationContext, msg, 1);
        } else {
            this._toast.setText(msg);
        }
        this._toast.show();
    }

    protected long getTimeMillis() {
        return System.currentTimeMillis();
    }
}
