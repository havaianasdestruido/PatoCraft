package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class TreeModel implements Model {
    private LabelMap attributes;
    private Detail detail;
    private LabelMap elements;
    private Expression expression;
    private int index;
    private Label list;
    private ModelMap models;
    private String name;
    private OrderList order;
    private Policy policy;
    private String prefix;
    private Label text;

    private static class OrderList extends ArrayList<String> {
    }

    public TreeModel(Policy policy, Detail detail) {
        this(policy, detail, null, null, 1);
    }

    public TreeModel(Policy policy, Detail detail, String name, String prefix, int index) {
        this.attributes = new LabelMap(policy);
        this.elements = new LabelMap(policy);
        this.models = new ModelMap(detail);
        this.order = new OrderList();
        this.detail = detail;
        this.policy = policy;
        this.prefix = prefix;
        this.index = index;
        this.name = name;
    }

    @Override // org.simpleframework.xml.core.Model
    public Model lookup(Expression path) {
        String name = path.getFirst();
        int index = path.getIndex();
        Model model = lookup(name, index);
        if (path.isPath()) {
            Expression path2 = path.getPath(1, 0);
            if (model != null) {
                return model.lookup(path2);
            }
            return model;
        }
        return model;
    }

    @Override // org.simpleframework.xml.core.Model
    public void registerElement(String name) throws Exception {
        if (!this.order.contains(name)) {
            this.order.add(name);
        }
        this.elements.put(name, null);
    }

    @Override // org.simpleframework.xml.core.Model
    public void registerAttribute(String name) throws Exception {
        this.attributes.put(name, null);
    }

    @Override // org.simpleframework.xml.core.Model
    public void registerText(Label label) throws Exception {
        if (this.text != null) {
            throw new TextException("Duplicate text annotation on %s", label);
        }
        this.text = label;
    }

    @Override // org.simpleframework.xml.core.Model
    public void registerAttribute(Label label) throws Exception {
        String name = label.getName();
        if (this.attributes.get(name) != null) {
            throw new AttributeException("Duplicate annotation of name '%s' on %s", name, label);
        }
        this.attributes.put(name, label);
    }

    @Override // org.simpleframework.xml.core.Model
    public void registerElement(Label label) throws Exception {
        String name = label.getName();
        if (this.elements.get(name) != null) {
            throw new ElementException("Duplicate annotation of name '%s' on %s", name, label);
        }
        if (!this.order.contains(name)) {
            this.order.add(name);
        }
        if (label.isTextList()) {
            this.list = label;
        }
        this.elements.put(name, label);
    }

    @Override // org.simpleframework.xml.core.Model
    public ModelMap getModels() throws Exception {
        return this.models.getModels();
    }

    @Override // org.simpleframework.xml.core.Model
    public LabelMap getAttributes() throws Exception {
        return this.attributes.getLabels();
    }

    @Override // org.simpleframework.xml.core.Model
    public LabelMap getElements() throws Exception {
        return this.elements.getLabels();
    }

    @Override // org.simpleframework.xml.core.Model
    public boolean isModel(String name) {
        return this.models.containsKey(name);
    }

    @Override // org.simpleframework.xml.core.Model
    public boolean isElement(String name) {
        return this.elements.containsKey(name);
    }

    @Override // org.simpleframework.xml.core.Model
    public boolean isAttribute(String name) {
        return this.attributes.containsKey(name);
    }

    @Override // java.lang.Iterable
    public Iterator<String> iterator() {
        List<String> list = new ArrayList<>();
        for (String name : this.order) {
            list.add(name);
        }
        return list.iterator();
    }

    @Override // org.simpleframework.xml.core.Model
    public void validate(Class type) throws Exception {
        validateExpressions(type);
        validateAttributes(type);
        validateElements(type);
        validateModels(type);
        validateText(type);
    }

    private void validateText(Class type) throws Exception {
        if (this.text != null) {
            if (!this.elements.isEmpty()) {
                throw new TextException("Text annotation %s used with elements in %s", this.text, type);
            }
            if (isComposite()) {
                throw new TextException("Text annotation %s can not be used with paths in %s", this.text, type);
            }
        }
    }

    private void validateExpressions(Class type) throws Exception {
        for (Label label : this.elements) {
            if (label != null) {
                validateExpression(label);
            }
        }
        for (Label label2 : this.attributes) {
            if (label2 != null) {
                validateExpression(label2);
            }
        }
        if (this.text != null) {
            validateExpression(this.text);
        }
    }

    private void validateExpression(Label label) throws Exception {
        Expression location = label.getExpression();
        if (this.expression != null) {
            String path = this.expression.getPath();
            String expect = location.getPath();
            if (!path.equals(expect)) {
                throw new PathException("Path '%s' does not match '%s' in %s", path, expect, this.detail);
            }
            return;
        }
        this.expression = location;
    }

    private void validateModels(Class type) throws Exception {
        for (ModelList list : this.models) {
            int count = 1;
            for (Model model : list) {
                if (model != null) {
                    String name = model.getName();
                    int index = model.getIndex();
                    int count2 = count + 1;
                    if (index != count) {
                        throw new ElementException("Path section '%s[%s]' is out of sequence in %s", name, Integer.valueOf(index), type);
                    }
                    model.validate(type);
                    count = count2;
                }
            }
        }
    }

    private void validateAttributes(Class type) throws Exception {
        Set<String> keys = this.attributes.keySet();
        for (String name : keys) {
            Label label = this.attributes.get(name);
            if (label == null) {
                throw new AttributeException("Ordered attribute '%s' does not exist in %s", name, type);
            }
            if (this.expression != null) {
                this.expression.getAttribute(name);
            }
        }
    }

    private void validateElements(Class type) throws Exception {
        Set<String> keys = this.elements.keySet();
        for (String name : keys) {
            ModelList list = this.models.get(name);
            Label label = this.elements.get(name);
            if (list == null && label == null) {
                throw new ElementException("Ordered element '%s' does not exist in %s", name, type);
            }
            if (list != null && label != null && !list.isEmpty()) {
                throw new ElementException("Element '%s' is also a path name in %s", name, type);
            }
            if (this.expression != null) {
                this.expression.getElement(name);
            }
        }
    }

    @Override // org.simpleframework.xml.core.Model
    public void register(Label label) throws Exception {
        if (label.isAttribute()) {
            registerAttribute(label);
        } else if (label.isText()) {
            registerText(label);
        } else {
            registerElement(label);
        }
    }

    @Override // org.simpleframework.xml.core.Model
    public Model lookup(String name, int index) {
        return this.models.lookup(name, index);
    }

    @Override // org.simpleframework.xml.core.Model
    public Model register(String name, String prefix, int index) throws Exception {
        Model model = this.models.lookup(name, index);
        if (model == null) {
            return create(name, prefix, index);
        }
        return model;
    }

    private Model create(String name, String prefix, int index) throws Exception {
        Model model = new TreeModel(this.policy, this.detail, name, prefix, index);
        if (name != null) {
            this.models.register(name, model);
            this.order.add(name);
        }
        return model;
    }

    @Override // org.simpleframework.xml.core.Model
    public boolean isComposite() {
        for (ModelList list : this.models) {
            for (Model model : list) {
                if (model != null && !model.isEmpty()) {
                    return true;
                }
            }
        }
        return !this.models.isEmpty();
    }

    @Override // org.simpleframework.xml.core.Model
    public boolean isEmpty() {
        return this.text == null && this.elements.isEmpty() && this.attributes.isEmpty() && !isComposite();
    }

    @Override // org.simpleframework.xml.core.Model
    public Label getText() {
        return this.list != null ? this.list : this.text;
    }

    @Override // org.simpleframework.xml.core.Model
    public Expression getExpression() {
        return this.expression;
    }

    @Override // org.simpleframework.xml.core.Model
    public String getPrefix() {
        return this.prefix;
    }

    @Override // org.simpleframework.xml.core.Model
    public String getName() {
        return this.name;
    }

    @Override // org.simpleframework.xml.core.Model
    public int getIndex() {
        return this.index;
    }

    public String toString() {
        return String.format("model '%s[%s]'", this.name, Integer.valueOf(this.index));
    }
}
