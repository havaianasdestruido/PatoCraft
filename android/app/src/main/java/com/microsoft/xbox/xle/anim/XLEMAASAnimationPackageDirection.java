package com.microsoft.xbox.xle.anim;

import android.view.View;
import com.microsoft.xbox.toolkit.anim.MAAS;
import com.microsoft.xbox.toolkit.anim.MAASAnimation;
import com.microsoft.xbox.toolkit.anim.XLEAnimation;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
@Root
public class XLEMAASAnimationPackageDirection extends MAASAnimation {

    @Element(required = false)
    public XLEMAASAnimation inAnimation;

    @Element(required = false)
    public XLEMAASAnimation outAnimation;

    public XLEAnimation compile(MAAS.MAASAnimationType type, View targetView) {
        XLEMAASAnimation anim = type == MAAS.MAASAnimationType.ANIMATE_IN ? this.inAnimation : this.outAnimation;
        if (anim == null) {
            return null;
        }
        return anim.compile(targetView);
    }
}
