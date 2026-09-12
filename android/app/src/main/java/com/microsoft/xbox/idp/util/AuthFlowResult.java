package com.microsoft.xbox.idp.util;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class AuthFlowResult implements Parcelable {
    public static final Parcelable.Creator<AuthFlowResult> CREATOR = new Parcelable.Creator<AuthFlowResult>() { // from class: com.microsoft.xbox.idp.util.AuthFlowResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AuthFlowResult createFromParcel(Parcel in) {
            return new AuthFlowResult(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AuthFlowResult[] newArray(int size) {
            return new AuthFlowResult[size];
        }
    };
    private final boolean deleteOnFinalize;
    private final long id;

    private static native void delete(long j);

    private static native String getAgeGroup(long j);

    private static native String getGamerTag(long j);

    private static native String getPrivileges(long j);

    private static native String getRpsTicket(long j);

    private static native String getUserEnforcementRestrictions(long j);

    private static native String getUserId(long j);

    private static native String getUserSettingsRestrictions(long j);

    private static native String getUserTitleRestrictions(long j);

    public AuthFlowResult(long id) {
        this(id, false);
    }

    public AuthFlowResult(long id, boolean deleteOnFinalize) {
        this.id = id;
        this.deleteOnFinalize = deleteOnFinalize;
    }

    protected AuthFlowResult(Parcel in) {
        this.id = in.readLong();
        this.deleteOnFinalize = in.readByte() != 0;
    }

    public String getRpsTicket() {
        return getRpsTicket(this.id);
    }

    public String getUserId() {
        return getUserId(this.id);
    }

    public String getGamerTag() {
        return getGamerTag(this.id);
    }

    public String getAgeGroup() {
        return getAgeGroup(this.id);
    }

    public String getPrivileges() {
        return getPrivileges(this.id);
    }

    public String getUserSettingsRestrictions() {
        return getUserSettingsRestrictions(this.id);
    }

    public String getUserEnforcementRestrictions() {
        return getUserEnforcementRestrictions(this.id);
    }

    public String getUserTitleRestrictions() {
        return getUserTitleRestrictions(this.id);
    }

    protected void finalize() throws Throwable {
        if (this.deleteOnFinalize) {
            delete(this.id);
        }
        super.finalize();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeLong(this.id);
        dest.writeByte((byte) (this.deleteOnFinalize ? 1 : 0));
    }
}
