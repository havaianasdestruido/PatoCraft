package com.microsoft.xbox.xle.app;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.microsoft.xbox.service.model.friendfinder.RecommendationTypeIcon;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderSettings {
    private static HashMap<String, RecommendationTypeIcon> icons;
    public String ICONS;

    public enum IconImageSize {
        UNKNOWN,
        SMALL,
        MEDIUM,
        LARGE
    }

    public void getIconsFromJson(String jsonStr) {
        icons = new HashMap<>();
        try {
            Gson gson = new Gson();
            Type resultType = new TypeToken<ArrayList<RecommendationTypeIcon>>() { // from class: com.microsoft.xbox.xle.app.FriendFinderSettings.1
            }.getType();
            ArrayList<RecommendationTypeIcon> iconList = (ArrayList) gson.fromJson(jsonStr, resultType);
            if (iconList != null) {
                for (RecommendationTypeIcon icon : iconList) {
                    icons.put(icon.type.toLowerCase(), icon);
                }
            }
        } catch (Exception e) {
        }
    }

    public static String getIconBySize(String type, IconImageSize size) {
        RecommendationTypeIcon icon;
        if (icons != null && icons.size() > 0 && (icon = icons.get(type.toLowerCase())) != null) {
            switch (size) {
                case SMALL:
                    return icon.small;
                case MEDIUM:
                    return icon.medium;
                case LARGE:
                    return icon.large;
            }
        }
        return null;
    }
}
