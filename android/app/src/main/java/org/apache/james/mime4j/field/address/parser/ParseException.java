package org.apache.james.mime4j.field.address.parser;

import android.support.v4.view.MotionEventCompat;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ParseException extends org.apache.james.mime4j.field.ParseException {
    private static final long serialVersionUID = 1;
    public Token currentToken;
    protected String eol;
    public int[][] expectedTokenSequences;
    protected boolean specialConstructor;
    public String[] tokenImage;

    public ParseException(Token currentTokenVal, int[][] expectedTokenSequencesVal, String[] tokenImageVal) {
        super("");
        this.eol = System.getProperty("line.separator", "\n");
        this.specialConstructor = true;
        this.currentToken = currentTokenVal;
        this.expectedTokenSequences = expectedTokenSequencesVal;
        this.tokenImage = tokenImageVal;
    }

    public ParseException() {
        super("Cannot parse field");
        this.eol = System.getProperty("line.separator", "\n");
        this.specialConstructor = false;
    }

    public ParseException(Throwable cause) {
        super(cause);
        this.eol = System.getProperty("line.separator", "\n");
        this.specialConstructor = false;
    }

    public ParseException(String message) {
        super(message);
        this.eol = System.getProperty("line.separator", "\n");
        this.specialConstructor = false;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String retval;
        if (!this.specialConstructor) {
            return super.getMessage();
        }
        StringBuffer expected = new StringBuffer();
        int maxSize = 0;
        for (int i = 0; i < this.expectedTokenSequences.length; i++) {
            if (maxSize < this.expectedTokenSequences[i].length) {
                maxSize = this.expectedTokenSequences[i].length;
            }
            for (int j = 0; j < this.expectedTokenSequences[i].length; j++) {
                expected.append(this.tokenImage[this.expectedTokenSequences[i][j]]).append(" ");
            }
            if (this.expectedTokenSequences[i][this.expectedTokenSequences[i].length - 1] != 0) {
                expected.append("...");
            }
            expected.append(this.eol).append("    ");
        }
        String retval2 = "Encountered \"";
        Token tok = this.currentToken.next;
        for (int i2 = 0; i2 < maxSize; i2++) {
            if (i2 != 0) {
                retval2 = retval2 + " ";
            }
            if (tok.kind == 0) {
                retval2 = retval2 + this.tokenImage[0];
                break;
            }
            retval2 = retval2 + add_escapes(tok.image);
            tok = tok.next;
        }
        String retval3 = (retval2 + "\" at line " + this.currentToken.next.beginLine + ", column " + this.currentToken.next.beginColumn) + "." + this.eol;
        if (this.expectedTokenSequences.length == 1) {
            retval = retval3 + "Was expecting:" + this.eol + "    ";
        } else {
            retval = retval3 + "Was expecting one of:" + this.eol + "    ";
        }
        return retval + expected.toString();
    }

    protected String add_escapes(String str) {
        StringBuffer retval = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            switch (str.charAt(i)) {
                case 0:
                    break;
                case '\b':
                    retval.append("\\b");
                    break;
                case '\t':
                    retval.append("\\t");
                    break;
                case '\n':
                    retval.append("\\n");
                    break;
                case '\f':
                    retval.append("\\f");
                    break;
                case '\r':
                    retval.append("\\r");
                    break;
                case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                    retval.append("\\\"");
                    break;
                case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
                    retval.append("\\'");
                    break;
                case '\\':
                    retval.append("\\\\");
                    break;
                default:
                    char ch = str.charAt(i);
                    if (ch < ' ' || ch > '~') {
                        String s = "0000" + Integer.toString(ch, 16);
                        retval.append("\\u" + s.substring(s.length() - 4, s.length()));
                    } else {
                        retval.append(ch);
                    }
                    break;
            }
        }
        return retval.toString();
    }
}
