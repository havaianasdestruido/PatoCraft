package org.apache.james.mime4j.field.structured.parser;

import java.io.InputStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.util.Vector;
import org.apache.james.mime4j.util.CharsetUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class StructuredFieldParser implements StructuredFieldParserConstants {
    private static int[] jj_la1_0;
    private Vector<int[]> jj_expentries;
    private int[] jj_expentry;
    private int jj_gen;
    SimpleCharStream jj_input_stream;
    private int jj_kind;
    private final int[] jj_la1;
    public Token jj_nt;
    private int jj_ntk;
    private boolean preserveFolding;
    public Token token;
    public StructuredFieldParserTokenManager token_source;

    public boolean isFoldingPreserved() {
        return this.preserveFolding;
    }

    public void setFoldingPreserved(boolean preserveFolding) {
        this.preserveFolding = preserveFolding;
    }

    public String parse() throws ParseException {
        try {
            return doParse();
        } catch (TokenMgrError e) {
            throw new ParseException(e);
        }
    }

    /* JADX WARN: Switch 'out' block B:3:0x000a for B:6:0x0012 already processed. Defaulting to fallback option. */
    private final String doParse() throws ParseException {
        StringBuffer buffer = new StringBuffer(50);
        boolean whitespace = false;
        boolean first = true;
        while (true) {
            switch (this.jj_ntk == -1 ? jj_ntk() : this.jj_ntk) {
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                    switch (this.jj_ntk == -1 ? jj_ntk() : this.jj_ntk) {
                        case 11:
                            Token t = jj_consume_token(11);
                            buffer.append(t.image);
                            break;
                        case 12:
                            jj_consume_token(12);
                            if (this.preserveFolding) {
                                buffer.append(CharsetUtil.CRLF);
                            }
                            break;
                        case 13:
                            Token t2 = jj_consume_token(13);
                            if (first) {
                                first = false;
                            } else if (whitespace) {
                                buffer.append(" ");
                                whitespace = false;
                            }
                            buffer.append(t2.image);
                            break;
                        case 14:
                            jj_consume_token(14);
                            whitespace = true;
                            break;
                        case 15:
                            Token t3 = jj_consume_token(15);
                            if (first) {
                                first = false;
                            } else if (whitespace) {
                                buffer.append(" ");
                                whitespace = false;
                            }
                            buffer.append(t3.image);
                            break;
                        default:
                            this.jj_la1[1] = this.jj_gen;
                            jj_consume_token(-1);
                            throw new ParseException();
                    }
                    break;
                default:
                    this.jj_la1[0] = this.jj_gen;
                    return buffer.toString();
            }
        }
    }

    static {
        jj_la1_0();
    }

    private static void jj_la1_0() {
        jj_la1_0 = new int[]{63488, 63488};
    }

    public StructuredFieldParser(InputStream stream) {
        this(stream, null);
    }

    public StructuredFieldParser(InputStream stream, String encoding) {
        this.preserveFolding = false;
        this.jj_la1 = new int[2];
        this.jj_expentries = new Vector<>();
        this.jj_kind = -1;
        try {
            this.jj_input_stream = new SimpleCharStream(stream, encoding, 1, 1);
            this.token_source = new StructuredFieldParserTokenManager(this.jj_input_stream);
            this.token = new Token();
            this.jj_ntk = -1;
            this.jj_gen = 0;
            for (int i = 0; i < 2; i++) {
                this.jj_la1[i] = -1;
            }
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public void ReInit(InputStream stream) {
        ReInit(stream, null);
    }

    public void ReInit(InputStream stream, String encoding) {
        try {
            this.jj_input_stream.ReInit(stream, encoding, 1, 1);
            this.token_source.ReInit(this.jj_input_stream);
            this.token = new Token();
            this.jj_ntk = -1;
            this.jj_gen = 0;
            for (int i = 0; i < 2; i++) {
                this.jj_la1[i] = -1;
            }
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public StructuredFieldParser(Reader stream) {
        this.preserveFolding = false;
        this.jj_la1 = new int[2];
        this.jj_expentries = new Vector<>();
        this.jj_kind = -1;
        this.jj_input_stream = new SimpleCharStream(stream, 1, 1);
        this.token_source = new StructuredFieldParserTokenManager(this.jj_input_stream);
        this.token = new Token();
        this.jj_ntk = -1;
        this.jj_gen = 0;
        for (int i = 0; i < 2; i++) {
            this.jj_la1[i] = -1;
        }
    }

    public void ReInit(Reader stream) {
        this.jj_input_stream.ReInit(stream, 1, 1);
        this.token_source.ReInit(this.jj_input_stream);
        this.token = new Token();
        this.jj_ntk = -1;
        this.jj_gen = 0;
        for (int i = 0; i < 2; i++) {
            this.jj_la1[i] = -1;
        }
    }

    public StructuredFieldParser(StructuredFieldParserTokenManager tm) {
        this.preserveFolding = false;
        this.jj_la1 = new int[2];
        this.jj_expentries = new Vector<>();
        this.jj_kind = -1;
        this.token_source = tm;
        this.token = new Token();
        this.jj_ntk = -1;
        this.jj_gen = 0;
        for (int i = 0; i < 2; i++) {
            this.jj_la1[i] = -1;
        }
    }

    public void ReInit(StructuredFieldParserTokenManager tm) {
        this.token_source = tm;
        this.token = new Token();
        this.jj_ntk = -1;
        this.jj_gen = 0;
        for (int i = 0; i < 2; i++) {
            this.jj_la1[i] = -1;
        }
    }

    private final Token jj_consume_token(int kind) throws ParseException {
        Token oldToken = this.token;
        if (oldToken.next != null) {
            this.token = this.token.next;
        } else {
            Token token = this.token;
            Token nextToken = this.token_source.getNextToken();
            token.next = nextToken;
            this.token = nextToken;
        }
        this.jj_ntk = -1;
        if (this.token.kind == kind) {
            this.jj_gen++;
            return this.token;
        }
        this.token = oldToken;
        this.jj_kind = kind;
        throw generateParseException();
    }

    public final Token getNextToken() {
        if (this.token.next != null) {
            this.token = this.token.next;
        } else {
            Token token = this.token;
            Token nextToken = this.token_source.getNextToken();
            token.next = nextToken;
            this.token = nextToken;
        }
        this.jj_ntk = -1;
        this.jj_gen++;
        return this.token;
    }

    public final Token getToken(int index) {
        Token t;
        Token t2 = this.token;
        int i = 0;
        Token t3 = t2;
        while (i < index) {
            if (t3.next != null) {
                t = t3.next;
            } else {
                t = this.token_source.getNextToken();
                t3.next = t;
            }
            i++;
            t3 = t;
        }
        return t3;
    }

    private final int jj_ntk() {
        Token token = this.token.next;
        this.jj_nt = token;
        if (token == null) {
            Token token2 = this.token;
            Token nextToken = this.token_source.getNextToken();
            token2.next = nextToken;
            int i = nextToken.kind;
            this.jj_ntk = i;
            return i;
        }
        int i2 = this.jj_nt.kind;
        this.jj_ntk = i2;
        return i2;
    }

    public ParseException generateParseException() {
        this.jj_expentries.removeAllElements();
        boolean[] la1tokens = new boolean[18];
        for (int i = 0; i < 18; i++) {
            la1tokens[i] = false;
        }
        if (this.jj_kind >= 0) {
            la1tokens[this.jj_kind] = true;
            this.jj_kind = -1;
        }
        for (int i2 = 0; i2 < 2; i2++) {
            if (this.jj_la1[i2] == this.jj_gen) {
                for (int j = 0; j < 32; j++) {
                    if ((jj_la1_0[i2] & (1 << j)) != 0) {
                        la1tokens[j] = true;
                    }
                }
            }
        }
        for (int i3 = 0; i3 < 18; i3++) {
            if (la1tokens[i3]) {
                this.jj_expentry = new int[1];
                this.jj_expentry[0] = i3;
                this.jj_expentries.addElement(this.jj_expentry);
            }
        }
        int[][] exptokseq = new int[this.jj_expentries.size()][];
        for (int i4 = 0; i4 < this.jj_expentries.size(); i4++) {
            exptokseq[i4] = this.jj_expentries.elementAt(i4);
        }
        return new ParseException(this.token, exptokseq, tokenImage);
    }

    public final void enable_tracing() {
    }

    public final void disable_tracing() {
    }
}
