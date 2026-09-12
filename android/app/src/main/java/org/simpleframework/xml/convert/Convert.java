package org.simpleframework.xml.convert;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
@Retention(RetentionPolicy.RUNTIME)
public @interface Convert {
    Class<? extends Converter> value();
}
