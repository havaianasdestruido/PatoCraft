package com.microsoft.xbox.toolkit.anim;

import com.microsoft.xbox.toolkit.XMLHelper;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Hashtable;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MAAS {
    private static MAAS instance = new MAAS();
    private final String SDCARD_FILENAME = "/sdcard/bishop/maas/%sAnimation.xml";
    private final String ASSET_FILENAME = "animation/%sAnimation.xml";
    private boolean usingSdcard = false;
    private Hashtable<String, MAASAnimation> maasFileCache = new Hashtable<>();

    public enum MAASAnimationType {
        ANIMATE_IN,
        ANIMATE_OUT
    }

    public static MAAS getInstance() {
        return instance;
    }

    public MAASAnimation getAnimation(String name) {
        if (name == null) {
            throw new IllegalArgumentException();
        }
        MAASAnimation file = getMAASFile(name);
        return file;
    }

    private MAASAnimation getMAASFile(String name) {
        MAASAnimation file;
        if (!this.maasFileCache.containsKey(name) && (file = loadMAASFile(name)) != null) {
            this.maasFileCache.put(name, file);
        }
        return this.maasFileCache.get(name);
    }

    private MAASAnimation loadMAASFile(String name) {
        InputStream s;
        MAASAnimation rv = null;
        try {
            if (this.usingSdcard) {
                String filename = String.format("/sdcard/bishop/maas/%sAnimation.xml", name);
                InputStream s2 = new FileInputStream(new File(filename));
                s = s2;
            } else {
                String filename2 = String.format("animation/%sAnimation.xml", name);
                s = XboxTcuiSdk.getAssetManager().open(filename2);
            }
            rv = (MAASAnimation) XMLHelper.instance().load(s, MAASAnimation.class);
            return rv;
        } catch (Exception e) {
            return rv;
        }
    }
}
