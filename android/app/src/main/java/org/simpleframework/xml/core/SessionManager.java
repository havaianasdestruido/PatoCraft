package org.simpleframework.xml.core;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class SessionManager {
    private ThreadLocal<Reference> local = new ThreadLocal<>();

    public Session open() throws Exception {
        return open(true);
    }

    public Session open(boolean strict) throws Exception {
        Reference session = this.local.get();
        return session != null ? session.get() : create(strict);
    }

    private Session create(boolean strict) throws Exception {
        Reference session = new Reference(strict);
        if (session != null) {
            this.local.set(session);
        }
        return session.get();
    }

    public void close() throws Exception {
        Reference session = this.local.get();
        if (session == null) {
            throw new PersistenceException("Session does not exist", new Object[0]);
        }
        int reference = session.clear();
        if (reference == 0) {
            this.local.remove();
        }
    }

    private static class Reference {
        private int count;
        private Session session;

        public Reference(boolean strict) {
            this.session = new Session(strict);
        }

        public Session get() {
            if (this.count >= 0) {
                this.count++;
            }
            return this.session;
        }

        public int clear() {
            int i = this.count - 1;
            this.count = i;
            return i;
        }
    }
}
