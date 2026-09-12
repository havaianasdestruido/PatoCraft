package org.simpleframework.xml.core;

import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ModelList extends ArrayList<Model> {
    public ModelList build() {
        ModelList list = new ModelList();
        for (Model model : this) {
            list.register(model);
        }
        return list;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        for (Model model : this) {
            if (model != null && !model.isEmpty()) {
                return false;
            }
        }
        return true;
    }

    public Model lookup(int index) {
        int size = size();
        if (index <= size) {
            return get(index - 1);
        }
        return null;
    }

    public void register(Model model) {
        int index = model.getIndex();
        int size = size();
        for (int i = 0; i < index; i++) {
            if (i >= size) {
                add(null);
            }
            if (i == index - 1) {
                set(index - 1, model);
            }
        }
    }

    public Model take() {
        while (!isEmpty()) {
            Model model = remove(0);
            if (!model.isEmpty()) {
                return model;
            }
        }
        return null;
    }
}
