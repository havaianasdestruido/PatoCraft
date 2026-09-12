package com.microsoft.xbox.authenticate;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class DelegateRPSTicketResult implements Parcelable {
    private int errorCode;
    private PendingIntent pendingIntent;
    private String ticket;
    public static int RESULT_SUCCESS = 0;
    public static int RESULT_NOCID = 1;
    public static int RESULT_UNEXPECTED = 2;
    public static final Parcelable.Creator<DelegateRPSTicketResult> CREATOR = new Parcelable.Creator<DelegateRPSTicketResult>() { // from class: com.microsoft.xbox.authenticate.DelegateRPSTicketResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DelegateRPSTicketResult createFromParcel(Parcel in) {
            return new DelegateRPSTicketResult(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DelegateRPSTicketResult[] newArray(int size) {
            return new DelegateRPSTicketResult[size];
        }
    };

    private DelegateRPSTicketResult(Parcel in) {
        readFromParcel(in);
    }

    public String getTicket() {
        return this.ticket;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public PendingIntent getPendingIntent() {
        return this.pendingIntent;
    }

    public void readFromParcel(Parcel in) {
        this.errorCode = in.readInt();
        this.ticket = in.readString();
        this.pendingIntent = PendingIntent.readPendingIntentOrNullFromParcel(in);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.errorCode);
        dest.writeString(this.ticket);
        PendingIntent.writePendingIntentOrNullToParcel(this.pendingIntent, dest);
    }
}
