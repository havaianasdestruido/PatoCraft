package com.microsoft.xbox.toolkit;

import android.view.View;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLERValueHelper {
    public static int getStringRValue(String name) {
        try {
            Field field = getStringRClass().getDeclaredField(name);
            return field.getInt(null);
        } catch (Exception e) {
            XLEAssert.assertTrue("Can't find " + name, false);
            return -1;
        }
    }

    public static int getDrawableRValue(String name) {
        try {
            Field field = getDrawableRClass().getDeclaredField(name);
            return field.getInt(null);
        } catch (Exception e) {
            XLEAssert.assertTrue("Can't find " + name, false);
            return -1;
        }
    }

    public static int getIdRValue(String name) {
        try {
            Field field = getIdRClass().getDeclaredField(name);
            return field.getInt(null);
        } catch (Exception e) {
            XLEAssert.assertTrue("Can't find " + name, false);
            return -1;
        }
    }

    public static int getStyleRValue(String name) {
        try {
            Field field = getStyleRClass().getDeclaredField(name);
            return field.getInt(null);
        } catch (Exception e) {
            XLEAssert.assertTrue("Can't find " + name, false);
            return -1;
        }
    }

    public static int[] getStyleableRValueArray(String name) {
        try {
            Field field = getStyleableRClass().getDeclaredField(name);
            return (int[]) field.get(null);
        } catch (Exception e) {
            XLEAssert.assertTrue("Can't find " + name, false);
            return null;
        }
    }

    public static int getStyleableRValue(String name) {
        try {
            Field field = getStyleableRClass().getDeclaredField(name);
            return field.getInt(null);
        } catch (Exception e) {
            XLEAssert.assertTrue("Can't find " + name, false);
            return -1;
        }
    }

    public static int getLayoutRValue(String name) {
        try {
            Field field = getLayoutRClass().getDeclaredField(name);
            return field.getInt(null);
        } catch (Exception e) {
            XLEAssert.assertTrue("Can't find " + name, false);
            return -1;
        }
    }

    public static int getDimenRValue(String name) {
        try {
            Field field = getDimenRClass().getDeclaredField(name);
            return field.getInt(null);
        } catch (Exception e) {
            XLEAssert.assertTrue("Can't find " + name, false);
            return -1;
        }
    }

    public static int getColorRValue(String name) {
        try {
            Field field = getColorRClass().getDeclaredField(name);
            return field.getInt(null);
        } catch (Exception e) {
            XLEAssert.assertTrue("Can't find " + name, false);
            return -1;
        }
    }

    public static int findDimensionIdByName(String name) {
        Field field = null;
        try {
            field = R.dimen.class.getField(name);
        } catch (NoSuchFieldException e) {
        }
        if (field == null) {
            return -1;
        }
        try {
            int id = field.getInt(null);
            return id;
        } catch (IllegalAccessException e2) {
            return -1;
        }
    }

    public static View findViewByString(String viewName) {
        Field field = null;
        try {
            field = R.id.class.getField(viewName);
        } catch (NoSuchFieldException e) {
        }
        int id = -1;
        if (field != null) {
            try {
                id = field.getInt(null);
            } catch (IllegalAccessException e2) {
            }
        }
        return XboxTcuiSdk.getActivity().findViewById(id);
    }

    protected static Class getStringRClass() {
        return R.string.class;
    }

    protected static Class getDrawableRClass() {
        return R.drawable.class;
    }

    protected static Class getIdRClass() {
        return R.id.class;
    }

    protected static Class getStyleRClass() {
        return R.style.class;
    }

    protected static Class getStyleableRClass() {
        return R.styleable.class;
    }

    protected static Class getLayoutRClass() {
        return R.layout.class;
    }

    protected static Class getDimenRClass() {
        return R.dimen.class;
    }

    protected static Class getColorRClass() {
        return R.color.class;
    }
}
