package org.apache.james.mime4j.field.address.parser;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ASTaddress extends SimpleNode {
    public ASTaddress(int id) {
        super(id);
    }

    public ASTaddress(AddressListParser p, int id) {
        super(p, id);
    }

    @Override // org.apache.james.mime4j.field.address.parser.SimpleNode, org.apache.james.mime4j.field.address.parser.Node
    public Object jjtAccept(AddressListParserVisitor visitor, Object data) {
        return visitor.visit(this, data);
    }
}
