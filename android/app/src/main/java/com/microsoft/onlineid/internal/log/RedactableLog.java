package com.microsoft.onlineid.internal.log;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class RedactableLog implements IRedactable {
    private static final Pattern RedactedPattern = Pattern.compile("*(%d)*".replace("*", "\\*").replace("(", "\\(").replace(")", "\\)").replace("%d", "\\d+"));
    private final Pattern[] _patternsToRedact;
    private final String _unredactedString;

    public RedactableLog(String unredactedString, Pattern... patternsToRedact) {
        this._unredactedString = unredactedString;
        this._patternsToRedact = patternsToRedact;
    }

    @Override // com.microsoft.onlineid.internal.log.IRedactable
    public String getRedactedString() {
        String redactedString = this._unredactedString;
        for (Pattern pattern : this._patternsToRedact) {
            Matcher matcher = pattern.matcher(redactedString);
            while (matcher.find()) {
                String stringToRedact = matcher.group(matcher.groupCount() == 0 ? 0 : 1);
                Matcher redactedMatcher = RedactedPattern.matcher(stringToRedact);
                if (!redactedMatcher.matches()) {
                    redactedString = redactedString.replace(stringToRedact, Redactor.redactString(stringToRedact));
                }
            }
        }
        return redactedString;
    }

    @Override // com.microsoft.onlineid.internal.log.IRedactable
    public String getUnredactedString() {
        return this._unredactedString;
    }
}
