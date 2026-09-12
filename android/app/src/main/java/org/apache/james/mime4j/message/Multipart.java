package org.apache.james.mime4j.message;

import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.apache.james.mime4j.util.ByteSequence;
import org.apache.james.mime4j.util.ContentUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Multipart implements Body {
    private List<BodyPart> bodyParts;
    private ByteSequence epilogue;
    private transient String epilogueStrCache;
    private Entity parent;
    private ByteSequence preamble;
    private transient String preambleStrCache;
    private String subType;

    public Multipart(String subType) {
        this.bodyParts = new LinkedList();
        this.parent = null;
        this.preamble = ByteSequence.EMPTY;
        this.preambleStrCache = "";
        this.epilogue = ByteSequence.EMPTY;
        this.epilogueStrCache = "";
        this.subType = subType;
    }

    public Multipart(Multipart other) {
        this.bodyParts = new LinkedList();
        this.parent = null;
        this.preamble = other.preamble;
        this.preambleStrCache = other.preambleStrCache;
        this.epilogue = other.epilogue;
        this.epilogueStrCache = other.epilogueStrCache;
        for (BodyPart otherBodyPart : other.bodyParts) {
            BodyPart bodyPartCopy = new BodyPart(otherBodyPart);
            addBodyPart(bodyPartCopy);
        }
        this.subType = other.subType;
    }

    public String getSubType() {
        return this.subType;
    }

    public void setSubType(String subType) {
        this.subType = subType;
    }

    @Override // org.apache.james.mime4j.message.Body
    public Entity getParent() {
        return this.parent;
    }

    @Override // org.apache.james.mime4j.message.Body
    public void setParent(Entity parent) {
        this.parent = parent;
        for (BodyPart bodyPart : this.bodyParts) {
            bodyPart.setParent(parent);
        }
    }

    public int getCount() {
        return this.bodyParts.size();
    }

    public List<BodyPart> getBodyParts() {
        return Collections.unmodifiableList(this.bodyParts);
    }

    public void setBodyParts(List<BodyPart> bodyParts) {
        this.bodyParts = bodyParts;
        for (BodyPart bodyPart : bodyParts) {
            bodyPart.setParent(this.parent);
        }
    }

    public void addBodyPart(BodyPart bodyPart) {
        if (bodyPart == null) {
            throw new IllegalArgumentException();
        }
        this.bodyParts.add(bodyPart);
        bodyPart.setParent(this.parent);
    }

    public void addBodyPart(BodyPart bodyPart, int index) {
        if (bodyPart == null) {
            throw new IllegalArgumentException();
        }
        this.bodyParts.add(index, bodyPart);
        bodyPart.setParent(this.parent);
    }

    public BodyPart removeBodyPart(int index) {
        BodyPart bodyPart = this.bodyParts.remove(index);
        bodyPart.setParent(null);
        return bodyPart;
    }

    public BodyPart replaceBodyPart(BodyPart bodyPart, int index) {
        if (bodyPart == null) {
            throw new IllegalArgumentException();
        }
        BodyPart replacedBodyPart = this.bodyParts.set(index, bodyPart);
        if (bodyPart == replacedBodyPart) {
            throw new IllegalArgumentException("Cannot replace body part with itself");
        }
        bodyPart.setParent(this.parent);
        replacedBodyPart.setParent(null);
        return replacedBodyPart;
    }

    ByteSequence getPreambleRaw() {
        return this.preamble;
    }

    void setPreambleRaw(ByteSequence preamble) {
        this.preamble = preamble;
        this.preambleStrCache = null;
    }

    public String getPreamble() {
        if (this.preambleStrCache == null) {
            this.preambleStrCache = ContentUtil.decode(this.preamble);
        }
        return this.preambleStrCache;
    }

    public void setPreamble(String preamble) {
        this.preamble = ContentUtil.encode(preamble);
        this.preambleStrCache = preamble;
    }

    ByteSequence getEpilogueRaw() {
        return this.epilogue;
    }

    void setEpilogueRaw(ByteSequence epilogue) {
        this.epilogue = epilogue;
        this.epilogueStrCache = null;
    }

    public String getEpilogue() {
        if (this.epilogueStrCache == null) {
            this.epilogueStrCache = ContentUtil.decode(this.epilogue);
        }
        return this.epilogueStrCache;
    }

    public void setEpilogue(String epilogue) {
        this.epilogue = ContentUtil.encode(epilogue);
        this.epilogueStrCache = epilogue;
    }

    @Override // org.apache.james.mime4j.message.Disposable
    public void dispose() {
        for (BodyPart bodyPart : this.bodyParts) {
            bodyPart.dispose();
        }
    }
}
