package com.microsoft.xbox.idp.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Suggestions {

    public static class Request {
        public int Algorithm;
        public int Count;
        public String Locale;
        public String Seed;
    }

    public static class Response implements Parcelable {
        public static final Parcelable.Creator<Response> CREATOR = new Parcelable.Creator<Response>() { // from class: com.microsoft.xbox.idp.model.Suggestions.Response.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Response createFromParcel(Parcel in) {
                return new Response(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Response[] newArray(int size) {
                return new Response[size];
            }
        };
        public ArrayList<String> Gamertags;

        protected Response(Parcel in) {
            this.Gamertags = in.createStringArrayList();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeStringList(this.Gamertags);
        }
    }
}
