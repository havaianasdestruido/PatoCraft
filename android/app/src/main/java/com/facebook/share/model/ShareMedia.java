package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.ParcelFormatException;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class ShareMedia implements ShareModel {
    public static final Parcelable.Creator<ShareMedia> CREATOR = new Parcelable.Creator<ShareMedia>() { // from class: com.facebook.share.model.ShareMedia.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMedia createFromParcel(Parcel in) {
            switch (AnonymousClass2.$SwitchMap$com$facebook$share$model$ShareMedia$Type[Type.valueOf(in.readString()).ordinal()]) {
                case 1:
                    return new SharePhoto(in);
                case 2:
                    return new ShareVideo(in);
                default:
                    throw new ParcelFormatException("ShareMedia has invalid type");
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMedia[] newArray(int size) {
            return new ShareMedia[size];
        }
    };
    private final Bundle params;

    public enum Type {
        PHOTO,
        VIDEO
    }

    public abstract Type getMediaType();

    protected ShareMedia(Builder builder) {
        this.params = new Bundle(builder.params);
    }

    ShareMedia(Parcel in) {
        this.params = in.readBundle();
    }

    @Deprecated
    public Bundle getParameters() {
        return new Bundle(this.params);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(getMediaType().name());
        dest.writeBundle(this.params);
    }

    /* JADX INFO: renamed from: com.facebook.share.model.ShareMedia$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$facebook$share$model$ShareMedia$Type = new int[Type.values().length];

        static {
            try {
                $SwitchMap$com$facebook$share$model$ShareMedia$Type[Type.PHOTO.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$facebook$share$model$ShareMedia$Type[Type.VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public static abstract class Builder<M extends ShareMedia, B extends Builder> implements ShareModelBuilder<M, B> {
        private Bundle params = new Bundle();

        @Deprecated
        public B setParameter(String key, String value) {
            this.params.putString(key, value);
            return this;
        }

        @Deprecated
        public B setParameters(Bundle parameters) {
            this.params.putAll(parameters);
            return this;
        }

        @Override // com.facebook.share.model.ShareModelBuilder
        public B readFrom(M model) {
            return model == null ? this : setParameters(model.getParameters());
        }

        public static void writeListTo(Parcel out, List<ShareMedia> media) {
            out.writeTypedList(media);
        }

        public static List<ShareMedia> readListFrom(Parcel in) {
            ArrayList arrayList = new ArrayList();
            in.readTypedList(arrayList, ShareMedia.CREATOR);
            return arrayList;
        }
    }
}
