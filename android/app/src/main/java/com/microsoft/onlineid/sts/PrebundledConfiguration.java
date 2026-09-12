package com.microsoft.onlineid.sts;

import android.content.Context;
import com.microsoft.onlineid.internal.Assets;
import com.microsoft.onlineid.internal.log.Logger;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class PrebundledConfiguration {
    private static final String ConfigExtension = ".xml";
    private static final String DateFormat = "MM/dd/yyyy";
    private static final int MaxConfigAge = 30;
    private static final String TimestampExtension = ".timestamp";
    private final Context _applicationContext;
    private final String _localFilePath;
    private boolean _dateRead = false;
    private Date _cachedDate = null;

    public PrebundledConfiguration(Context applicationContext, String localFilePath) {
        this._localFilePath = localFilePath;
        this._applicationContext = applicationContext;
    }

    private boolean isDateValid() throws Throwable {
        Date configDate = getConfigDate();
        if (configDate != null) {
            Calendar oldestAllowedDate = Calendar.getInstance();
            oldestAllowedDate.add(5, -30);
            if (configDate.after(oldestAllowedDate.getTime())) {
                return true;
            }
        }
        return false;
    }

    public boolean exists() {
        return getConfigDate() != null;
    }

    public boolean isExpired() {
        return !isDateValid();
    }

    public String getFilePath() {
        return this._localFilePath;
    }

    public Date getConfigDate() throws Throwable {
        if (!this._dateRead) {
            this._dateRead = true;
            try {
                String contents = Assets.readAsset(this._applicationContext, this._localFilePath + TimestampExtension);
                SimpleDateFormat dateFormat = new SimpleDateFormat(DateFormat);
                this._cachedDate = dateFormat.parse(contents);
            } catch (FileNotFoundException e) {
            } catch (Exception e2) {
                Logger.error("Error reading timestamp of bundled configuration at: " + this._localFilePath, e2);
            }
        }
        return this._cachedDate;
    }

    public InputStream getConfigFileStream() throws IOException {
        return this._applicationContext.getAssets().open(this._localFilePath + ConfigExtension);
    }
}
