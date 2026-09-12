package com.microsoft.xbox.service.model;

import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.ui.Search.TrieSearch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SearchResultPerson {
    public String GamertagAfter;
    public String GamertagBefore;
    public String GamertagMatch;
    public String RealNameAfter;
    public String RealNameBefore;
    public String RealNameMatch;
    public String SearchText;
    public String StatusAfter;
    public String StatusBefore;
    public String StatusMatch;

    public SearchResultPerson(FollowersData person, String searchText) {
        if (isNullOrWhitespace(searchText)) {
            throw new IllegalArgumentException(searchText);
        }
        this.SearchText = searchText;
        setInlineRuns(person);
    }

    private void setInlineRuns(FollowersData person) {
        List<String> runs = getRuns(person.getGamertag(), this.SearchText);
        if (runs.size() == 3) {
            this.GamertagBefore = runs.get(0);
            this.GamertagMatch = runs.get(1);
            this.GamertagAfter = runs.get(2);
        }
        List<String> runs2 = getRuns(person.getGamerRealName(), this.SearchText);
        if (runs2.size() == 3) {
            this.RealNameBefore = runs2.get(0);
            this.RealNameMatch = runs2.get(1);
            this.RealNameAfter = runs2.get(2);
        }
        List<String> runs3 = getRuns(person.presenceString, this.SearchText);
        if (runs3.size() == 3) {
            this.StatusBefore = runs3.get(0);
            this.StatusMatch = runs3.get(1);
            this.StatusAfter = runs3.get(2);
        }
    }

    private static List<String> getRuns(String text, String searchText) {
        List<String> runs = new ArrayList<>(3);
        int startIndex = TrieSearch.findWordIndex(text, searchText);
        int postIndex = startIndex + searchText.length();
        if (startIndex != -1) {
            runs.add(text.substring(0, startIndex));
            runs.add(text.substring(startIndex, searchText.length() + startIndex));
            runs.add(text.substring(postIndex, text.length()));
        } else {
            runs.add(text);
            runs.add("");
            runs.add("");
        }
        return runs;
    }

    private static boolean isNullOrWhitespace(String text) {
        return JavaUtil.isNullOrEmpty(text) || text.trim().isEmpty();
    }
}
