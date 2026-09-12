package com.microsoft.onlineid.internal;

import android.net.Uri;
import android.os.Bundle;
import com.facebook.applinks.AppLinkData;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Intents {

    public static class DataBuilder {
        private final Uri.Builder _builder = new Uri.Builder();

        public DataBuilder() {
            this._builder.scheme(AppLinkData.ARGUMENTS_EXTRAS_KEY);
        }

        public DataBuilder add(String component) {
            this._builder.appendPath("str").appendPath(component);
            return this;
        }

        public DataBuilder add(List<String> components) {
            this._builder.appendPath("list");
            if (components != null) {
                for (String component : components) {
                    this._builder.appendPath(component);
                }
            } else {
                this._builder.appendPath("null");
            }
            return this;
        }

        public DataBuilder add(Bundle bundle) {
            this._builder.appendPath("options");
            if (bundle != null) {
                return add(bundle.toString());
            }
            this._builder.appendPath("null");
            return this;
        }

        public Uri build() {
            return this._builder.build();
        }
    }
}
