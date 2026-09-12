package org.simpleframework.xml.stream;

import java.util.LinkedList;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class NodeExtractor extends LinkedList<org.w3c.dom.Node> {
    public NodeExtractor(Document source) {
        extract(source);
    }

    private void extract(Document source) {
        Element documentElement = source.getDocumentElement();
        if (documentElement != null) {
            offer(documentElement);
            extract(documentElement);
        }
    }

    private void extract(org.w3c.dom.Node source) {
        NodeList list = source.getChildNodes();
        int length = list.getLength();
        for (int i = 0; i < length; i++) {
            org.w3c.dom.Node node = list.item(i);
            short type = node.getNodeType();
            if (type != 8) {
                offer(node);
                extract(node);
            }
        }
    }
}
