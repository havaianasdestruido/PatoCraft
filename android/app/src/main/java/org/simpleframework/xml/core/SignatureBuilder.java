package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class SignatureBuilder {
    private final Constructor factory;
    private final ParameterTable table = new ParameterTable();

    public SignatureBuilder(Constructor factory) {
        this.factory = factory;
    }

    public boolean isValid() {
        Class<?>[] parameterTypes = this.factory.getParameterTypes();
        int width = this.table.width();
        return parameterTypes.length == width;
    }

    public void insert(Parameter value, int index) {
        this.table.insert(value, index);
    }

    public List<Signature> build() throws Exception {
        return build(new ParameterTable());
    }

    private List<Signature> build(ParameterTable matrix) throws Exception {
        if (this.table.isEmpty()) {
            return create();
        }
        build(matrix, 0);
        return create(matrix);
    }

    private List<Signature> create() throws Exception {
        List<Signature> list = new ArrayList<>();
        Signature signature = new Signature(this.factory);
        if (isValid()) {
            list.add(signature);
        }
        return list;
    }

    private List<Signature> create(ParameterTable matrix) throws Exception {
        List<Signature> list = new ArrayList<>();
        int height = matrix.height();
        int width = matrix.width();
        for (int i = 0; i < height; i++) {
            Signature signature = new Signature(this.factory);
            for (int j = 0; j < width; j++) {
                Parameter parameter = matrix.get(j, i);
                String path = parameter.getPath();
                Object key = parameter.getKey();
                if (signature.contains(key)) {
                    throw new ConstructorException("Parameter '%s' is a duplicate in %s", path, this.factory);
                }
                signature.add(parameter);
            }
            list.add(signature);
        }
        return list;
    }

    private void build(ParameterTable matrix, int index) {
        build(matrix, new ParameterList(), index);
    }

    private void build(ParameterTable matrix, ParameterList signature, int index) {
        ParameterList column = this.table.get(index);
        int height = column.size();
        int width = this.table.width();
        if (width - 1 > index) {
            for (int i = 0; i < height; i++) {
                ParameterList extended = new ParameterList(signature);
                if (signature != null) {
                    Parameter parameter = column.get(i);
                    extended.add(parameter);
                    build(matrix, extended, index + 1);
                }
            }
            return;
        }
        populate(matrix, signature, index);
    }

    private void populate(ParameterTable matrix, ParameterList signature, int index) {
        ParameterList column = this.table.get(index);
        int width = signature.size();
        int height = column.size();
        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                ParameterList list = matrix.get(j);
                Parameter parameter = signature.get(j);
                list.add(parameter);
            }
            ParameterList list2 = matrix.get(index);
            Parameter parameter2 = column.get(i);
            list2.add(parameter2);
        }
    }

    private static class ParameterTable extends ArrayList<ParameterList> {
        /* JADX INFO: Access modifiers changed from: private */
        public int height() {
            int width = width();
            if (width > 0) {
                return get(0).size();
            }
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int width() {
            return size();
        }

        public void insert(Parameter value, int column) {
            ParameterList list = get(column);
            if (list != null) {
                list.add(value);
            }
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public ParameterList get(int column) {
            int size = size();
            for (int i = size; i <= column; i++) {
                ParameterList list = new ParameterList();
                add(list);
            }
            return (ParameterList) super.get(column);
        }

        public Parameter get(int column, int row) {
            return get(column).get(row);
        }
    }

    private static class ParameterList extends ArrayList<Parameter> {
        public ParameterList() {
        }

        public ParameterList(ParameterList list) {
            super(list);
        }
    }
}
