package org.simpleframework.xml.filter;

import java.util.Stack;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class StackFilter implements Filter {
    private Stack<Filter> stack = new Stack<>();

    public void push(Filter filter) {
        this.stack.push(filter);
    }

    @Override // org.simpleframework.xml.filter.Filter
    public String replace(String text) {
        String value;
        int i = this.stack.size();
        do {
            i--;
            if (i < 0) {
                return null;
            }
            value = this.stack.get(i).replace(text);
        } while (value == null);
        return value;
    }
}
