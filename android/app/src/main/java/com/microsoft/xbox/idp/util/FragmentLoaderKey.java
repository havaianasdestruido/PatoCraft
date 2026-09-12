package com.microsoft.xbox.idp.util;

import android.app.Fragment;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FragmentLoaderKey implements Parcelable {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final Parcelable.Creator<FragmentLoaderKey> CREATOR;
    private final String className;
    private final int loaderId;

    static {
        $assertionsDisabled = !FragmentLoaderKey.class.desiredAssertionStatus();
        CREATOR = new Parcelable.Creator<FragmentLoaderKey>() { // from class: com.microsoft.xbox.idp.util.FragmentLoaderKey.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public FragmentLoaderKey createFromParcel(Parcel in) {
                return new FragmentLoaderKey(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public FragmentLoaderKey[] newArray(int size) {
                return new FragmentLoaderKey[size];
            }
        };
    }

    public FragmentLoaderKey(Class<? extends Fragment> cls, int loaderId) {
        if (!$assertionsDisabled && cls == null) {
            throw new AssertionError();
        }
        this.className = cls.getName();
        this.loaderId = loaderId;
    }

    protected FragmentLoaderKey(Parcel in) {
        this.className = in.readString();
        this.loaderId = in.readInt();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FragmentLoaderKey that = (FragmentLoaderKey) obj;
        if (this.loaderId == that.loaderId) {
            return this.className.equals(that.className);
        }
        return false;
    }

    public int hashCode() {
        int result = this.className.hashCode();
        return (result * 31) + this.loaderId;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.className);
        dest.writeInt(this.loaderId);
    }
}
