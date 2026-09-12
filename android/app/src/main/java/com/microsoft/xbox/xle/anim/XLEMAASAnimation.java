package com.microsoft.xbox.xle.anim;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.LayoutAnimationController;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLERValueHelper;
import com.microsoft.xbox.toolkit.anim.MAASAnimation;
import com.microsoft.xbox.toolkit.anim.XLEAnimation;
import com.microsoft.xbox.toolkit.anim.XLEAnimationAbsListView;
import com.microsoft.xbox.toolkit.anim.XLEAnimationView;
import java.util.ArrayList;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.ElementList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEMAASAnimation extends MAASAnimation {

    @ElementList(required = false)
    public ArrayList<XLEAnimationDefinition> animations;

    @Attribute(required = false)
    public int offsetMs;

    @Attribute(required = false)
    public TargetType target = TargetType.View;

    @Attribute(required = false)
    public String targetId = null;

    @Attribute(required = false)
    public boolean fillAfter = true;

    public enum TargetType {
        View,
        ListView,
        GridView
    }

    public XLEAnimation compile() {
        return compile(XLERValueHelper.findViewByString(this.targetId));
    }

    public XLEAnimation compileWithRoot(View root) {
        int id = XLERValueHelper.getIdRValue(this.targetId);
        View target = root.findViewById(id);
        return compile(target);
    }

    public XLEAnimation compile(View targetView) {
        XLEAnimation compiled;
        AnimationSet animationSet = null;
        if (this.animations != null && this.animations.size() > 0) {
            animationSet = new AnimationSet(false);
            for (XLEAnimationDefinition animation : this.animations) {
                Animation anim = animation.getAnimation();
                if (anim != null) {
                    animationSet.addAnimation(anim);
                }
            }
        }
        switch (this.target) {
            case View:
                XLEAssert.assertNotNull(animationSet);
                compiled = new XLEAnimationView(animationSet);
                ((XLEAnimationView) compiled).setFillAfter(this.fillAfter);
                break;
            case ListView:
            case GridView:
                XLEAssert.assertNotNull(animationSet);
                float delay = this.offsetMs / 1000.0f;
                LayoutAnimationController controller = new LayoutAnimationController(animationSet, delay);
                compiled = new XLEAnimationAbsListView(controller);
                break;
            default:
                throw new UnsupportedOperationException();
        }
        compiled.setTargetView(targetView);
        return compiled;
    }
}
