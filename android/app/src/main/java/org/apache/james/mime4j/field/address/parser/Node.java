package org.apache.james.mime4j.field.address.parser;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface Node {
    Object jjtAccept(AddressListParserVisitor addressListParserVisitor, Object obj);

    void jjtAddChild(Node node, int i);

    void jjtClose();

    Node jjtGetChild(int i);

    int jjtGetNumChildren();

    Node jjtGetParent();

    void jjtOpen();

    void jjtSetParent(Node node);
}
