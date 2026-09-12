package com.microsoft.xbox.xle.anim;

import android.view.View;
import com.microsoft.xbox.toolkit.anim.MAAS;
import com.microsoft.xbox.toolkit.anim.MAASAnimation;
import com.microsoft.xbox.toolkit.anim.XLEAnimation;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
@Root
public class XLEMAASAnimationPackageNavigationManager extends MAASAnimation {

    @Element(required = false)
    public XLEMAASAnimationPackageDirection backward;

    @Element(required = false)
    public XLEMAASAnimationPackageDirection forward;

    public XLEAnimation compile(MAAS.MAASAnimationType type, boolean backward, View targetView) {
        XLEMAASAnimationPackageDirection direction = backward ? this.backward : this.forward;
        if (direction == null) {
            return null;
        }
        return direction.compile(type, targetView);
    }
}
