package com.microsoft.onlineid;

import java.io.Serializable;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface ISecurityScope extends Serializable {
    String getPolicy();

    String getTarget();
}
