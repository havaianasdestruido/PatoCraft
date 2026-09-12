package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class ModelMap extends LinkedHashMap<String, ModelList> implements Iterable<ModelList> {
    private final Detail detail;

    public ModelMap(Detail detail) {
        this.detail = detail;
    }

    public ModelMap getModels() throws Exception {
        ModelMap map = new ModelMap(this.detail);
        for (String name : keySet()) {
            ModelList list = get(name);
            if (list != null) {
                list = list.build();
            }
            if (map.containsKey(name)) {
                throw new PathException("Path with name '%s' is a duplicate in %s ", name, this.detail);
            }
            map.put(name, list);
        }
        return map;
    }

    public Model lookup(String name, int index) {
        ModelList list = get(name);
        if (list != null) {
            return list.lookup(index);
        }
        return null;
    }

    public void register(String name, Model model) {
        ModelList list = (ModelList) get(name);
        if (list == null) {
            list = new ModelList();
            put(name, list);
        }
        list.register(model);
    }

    @Override // java.lang.Iterable
    public Iterator<ModelList> iterator() {
        return values().iterator();
    }
}
