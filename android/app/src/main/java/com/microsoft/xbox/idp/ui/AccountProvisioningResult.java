package com.microsoft.xbox.idp.ui;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.microsoft.xbox.idp.R;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AccountProvisioningResult implements Parcelable {
    private AgeGroup ageGroup;
    private final String gamerTag;
    private final String xuid;
    private static final String TAG = AccountProvisioningResult.class.getSimpleName();
    public static final Parcelable.Creator<AccountProvisioningResult> CREATOR = new Parcelable.Creator<AccountProvisioningResult>() { // from class: com.microsoft.xbox.idp.ui.AccountProvisioningResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccountProvisioningResult createFromParcel(Parcel in) {
            return new AccountProvisioningResult(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccountProvisioningResult[] newArray(int size) {
            return new AccountProvisioningResult[size];
        }
    };

    public AccountProvisioningResult(String gamerTag, String xuid) {
        this.gamerTag = gamerTag;
        this.xuid = xuid;
    }

    protected AccountProvisioningResult(Parcel in) {
        this.gamerTag = in.readString();
        this.xuid = in.readString();
        int ordinal = in.readInt();
        this.ageGroup = ordinal != -1 ? AgeGroup.values()[ordinal] : null;
    }

    public String getGamerTag() {
        return this.gamerTag;
    }

    public String getXuid() {
        return this.xuid;
    }

    public AgeGroup getAgeGroup() {
        return this.ageGroup;
    }

    public void setAgeGroup(AgeGroup ageGroup) {
        this.ageGroup = ageGroup;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.gamerTag);
        dest.writeString(this.xuid);
        dest.writeInt(this.ageGroup != null ? this.ageGroup.ordinal() : -1);
    }

    public enum AgeGroup {
        Adult(R.string.xbid_age_group_adult, R.string.xbid_age_group_adult_details_android),
        Teen(R.string.xbid_age_group_teen, R.string.xbid_age_group_teen_details_android),
        Child(R.string.xbid_age_group_child, R.string.xbid_age_group_child_details_android);

        public final int resIdAgeGroup;
        public final int resIdAgeGroupDetails;

        AgeGroup(int resIdAgeGroup, int resIdAgeGroupDetails) {
            this.resIdAgeGroup = resIdAgeGroup;
            this.resIdAgeGroupDetails = resIdAgeGroupDetails;
        }

        public static AgeGroup fromServiceString(String serviceString) {
            Log.d(AccountProvisioningResult.TAG, "Creating AgeGroup from '" + serviceString + "'");
            if (!TextUtils.isEmpty(serviceString)) {
                if ("adult".compareToIgnoreCase(serviceString) == 0) {
                    return Adult;
                }
                if ("teen".compareToIgnoreCase(serviceString) == 0) {
                    return Teen;
                }
                if ("child".compareToIgnoreCase(serviceString) == 0) {
                    return Child;
                }
            }
            return null;
        }
    }
}
