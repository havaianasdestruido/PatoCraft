package bolts;

import com.microsoft.onlineid.ui.AddAccountActivity;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
final class BoltsExecutors {
    private static final BoltsExecutors INSTANCE = new BoltsExecutors();
    private final ExecutorService background;
    private final Executor immediate;

    private static boolean isAndroidRuntime() {
        String javaRuntimeName = System.getProperty("java.runtime.name");
        if (javaRuntimeName == null) {
            return false;
        }
        return javaRuntimeName.toLowerCase(Locale.US).contains(AddAccountActivity.PlatformName);
    }

    private BoltsExecutors() {
        this.background = !isAndroidRuntime() ? Executors.newCachedThreadPool() : AndroidExecutors.newCachedThreadPool();
        this.immediate = new ImmediateExecutor();
    }

    public static ExecutorService background() {
        return INSTANCE.background;
    }

    static Executor immediate() {
        return INSTANCE.immediate;
    }

    private static class ImmediateExecutor implements Executor {
        private static final int MAX_DEPTH = 15;
        private ThreadLocal<Integer> executionDepth;

        private ImmediateExecutor() {
            this.executionDepth = new ThreadLocal<>();
        }

        private int incrementDepth() {
            Integer oldDepth = this.executionDepth.get();
            if (oldDepth == null) {
                oldDepth = 0;
            }
            int newDepth = oldDepth.intValue() + 1;
            this.executionDepth.set(Integer.valueOf(newDepth));
            return newDepth;
        }

        private int decrementDepth() {
            Integer oldDepth = this.executionDepth.get();
            if (oldDepth == null) {
                oldDepth = 0;
            }
            int newDepth = oldDepth.intValue() - 1;
            if (newDepth == 0) {
                this.executionDepth.remove();
            } else {
                this.executionDepth.set(Integer.valueOf(newDepth));
            }
            return newDepth;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable command) {
            int depth = incrementDepth();
            try {
                if (depth <= 15) {
                    command.run();
                } else {
                    BoltsExecutors.background().execute(command);
                }
                decrementDepth();
            } catch (Throwable th) {
                decrementDepth();
                throw th;
            }
        }
    }
}
