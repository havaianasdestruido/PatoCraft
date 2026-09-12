package com.microsoft.onlineid.internal.log;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class RedactableXml implements IRedactable {
    private static final Pattern GenericNodePattern = Pattern.compile("<([^<> ]+)([^<>]*)>([^<>]+)</\\1[^>]*>");
    private final String[] _tagsToKeep;
    private final String _unredactedXml;

    public RedactableXml(String unredactedXml, String... tagsToKeep) {
        this._unredactedXml = unredactedXml;
        this._tagsToKeep = tagsToKeep;
    }

    @Override // com.microsoft.onlineid.internal.log.IRedactable
    public String getRedactedString() {
        Matcher matcher = GenericNodePattern.matcher(this._unredactedXml);
        StringBuffer redactedStringBuffer = new StringBuffer();
        while (matcher.find()) {
            if (!isInApprovedList(matcher.group(1))) {
                matcher.appendReplacement(redactedStringBuffer, "<$1$2>" + Redactor.redactString(matcher.group(3)) + "</$1>");
            }
        }
        matcher.appendTail(redactedStringBuffer);
        return redactedStringBuffer.toString();
    }

    @Override // com.microsoft.onlineid.internal.log.IRedactable
    public String getUnredactedString() {
        return this._unredactedXml;
    }

    private boolean isInApprovedList(String xmlTag) {
        for (String approvedTag : this._tagsToKeep) {
            if (approvedTag.equalsIgnoreCase(xmlTag)) {
                return true;
            }
        }
        return false;
    }
}
