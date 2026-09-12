package org.simpleframework.xml;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
@Retention(RetentionPolicy.RUNTIME)
public @interface Version {
    String name() default "";

    boolean required() default false;

    double revision() default 1.0d;
}
