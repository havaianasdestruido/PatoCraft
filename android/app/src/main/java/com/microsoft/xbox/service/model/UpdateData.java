package com.microsoft.xbox.service.model;

import android.os.Bundle;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class UpdateData {
    private final Bundle extra;
    private final boolean isFinal;
    private final UpdateType updateType;

    public UpdateData(UpdateType updateType, boolean isFinal) {
        this.updateType = updateType;
        this.isFinal = isFinal;
        this.extra = null;
    }

    public UpdateData(UpdateType updateType, boolean isFinal, Bundle extra) {
        this.updateType = updateType;
        this.isFinal = isFinal;
        this.extra = extra;
    }

    public UpdateType getUpdateType() {
        return this.updateType;
    }

    public boolean getIsFinal() {
        return this.isFinal;
    }

    public Bundle getExtra() {
        return this.extra;
    }
}
