package org.apache.james.mime4j.storage;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class DefaultStorageProvider {
    public static final String DEFAULT_STORAGE_PROVIDER_PROPERTY = "org.apache.james.mime4j.defaultStorageProvider";
    private static Log log = LogFactory.getLog(DefaultStorageProvider.class);
    private static volatile StorageProvider instance = null;

    static {
        initialize();
    }

    private DefaultStorageProvider() {
    }

    public static StorageProvider getInstance() {
        return instance;
    }

    public static void setInstance(StorageProvider instance2) {
        if (instance2 == null) {
            throw new IllegalArgumentException();
        }
        instance = instance2;
    }

    private static void initialize() {
        String clazz = System.getProperty(DEFAULT_STORAGE_PROVIDER_PROPERTY);
        if (clazz != null) {
            try {
                instance = (StorageProvider) Class.forName(clazz).newInstance();
            } catch (Exception e) {
                log.warn("Unable to create or instantiate StorageProvider class '" + clazz + "'. Using default instead.", e);
            }
        }
        if (instance == null) {
            StorageProvider backend = new TempFileStorageProvider();
            instance = new ThresholdStorageProvider(backend, 1024);
        }
    }

    static void reset() {
        instance = null;
        initialize();
    }
}
