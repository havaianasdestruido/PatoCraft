package org.simpleframework.xml;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
@Retention(RetentionPolicy.RUNTIME)
public @interface Text {
    boolean data() default false;

    String empty() default "";

    boolean required() default true;
}
