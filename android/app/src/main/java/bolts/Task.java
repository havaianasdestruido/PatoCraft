package bolts;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Task<TResult> {
    public static final ExecutorService BACKGROUND_EXECUTOR = BoltsExecutors.background();
    private static final Executor IMMEDIATE_EXECUTOR = BoltsExecutors.immediate();
    public static final Executor UI_THREAD_EXECUTOR = AndroidExecutors.uiThread();
    private boolean cancelled;
    private boolean complete;
    private Exception error;
    private TResult result;
    private final Object lock = new Object();
    private List<Continuation<TResult, Void>> continuations = new ArrayList();

    private Task() {
    }

    public static <TResult> Task<TResult>.TaskCompletionSource create() {
        Task<TResult> task = new Task<>();
        task.getClass();
        return new TaskCompletionSource();
    }

    public boolean isCompleted() {
        boolean z;
        synchronized (this.lock) {
            z = this.complete;
        }
        return z;
    }

    public boolean isCancelled() {
        boolean z;
        synchronized (this.lock) {
            z = this.cancelled;
        }
        return z;
    }

    public boolean isFaulted() {
        boolean z;
        synchronized (this.lock) {
            z = this.error != null;
        }
        return z;
    }

    public TResult getResult() {
        TResult tresult;
        synchronized (this.lock) {
            tresult = this.result;
        }
        return tresult;
    }

    public Exception getError() {
        Exception exc;
        synchronized (this.lock) {
            exc = this.error;
        }
        return exc;
    }

    public void waitForCompletion() throws InterruptedException {
        synchronized (this.lock) {
            if (!isCompleted()) {
                this.lock.wait();
            }
        }
    }

    public static <TResult> Task<TResult> forResult(TResult value) {
        Task<TResult>.TaskCompletionSource tcs = create();
        tcs.setResult(value);
        return tcs.getTask();
    }

    public static <TResult> Task<TResult> forError(Exception error) {
        Task<TResult>.TaskCompletionSource tcs = create();
        tcs.setError(error);
        return tcs.getTask();
    }

    public static <TResult> Task<TResult> cancelled() {
        Task<TResult>.TaskCompletionSource tcs = create();
        tcs.setCancelled();
        return tcs.getTask();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <TOut> Task<TOut> cast() {
        return this;
    }

    public Task<Void> makeVoid() {
        return continueWithTask(new Continuation<TResult, Task<Void>>() { // from class: bolts.Task.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // bolts.Continuation
            public Task<Void> then(Task<TResult> task) throws Exception {
                if (task.isCancelled()) {
                    return Task.cancelled();
                }
                if (task.isFaulted()) {
                    return Task.forError(task.getError());
                }
                return Task.forResult(null);
            }
        });
    }

    public static <TResult> Task<TResult> callInBackground(Callable<TResult> callable) {
        return call(callable, BACKGROUND_EXECUTOR);
    }

    public static <TResult> Task<TResult> call(final Callable<TResult> callable, Executor executor) {
        final Task<TResult>.TaskCompletionSource tcs = create();
        executor.execute(new Runnable() { // from class: bolts.Task.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    tcs.setResult(callable.call());
                } catch (Exception e) {
                    tcs.setError(e);
                }
            }
        });
        return tcs.getTask();
    }

    public static <TResult> Task<TResult> call(Callable<TResult> callable) {
        return call(callable, IMMEDIATE_EXECUTOR);
    }

    public static Task<Void> whenAll(Collection<? extends Task<?>> tasks) {
        if (tasks.size() == 0) {
            return forResult(null);
        }
        final Task<Void>.TaskCompletionSource allFinished = create();
        final ArrayList<Exception> errors = new ArrayList<>();
        final Object errorLock = new Object();
        final AtomicInteger count = new AtomicInteger(tasks.size());
        final AtomicBoolean isCancelled = new AtomicBoolean(false);
        for (Task<?> task : tasks) {
            task.continueWith(new Continuation<Object, Void>() { // from class: bolts.Task.3
                @Override // bolts.Continuation
                public Void then(Task<Object> task2) {
                    if (task2.isFaulted()) {
                        synchronized (errorLock) {
                            errors.add(task2.getError());
                        }
                    }
                    if (task2.isCancelled()) {
                        isCancelled.set(true);
                    }
                    if (count.decrementAndGet() == 0) {
                        if (errors.size() != 0) {
                            if (errors.size() == 1) {
                                allFinished.setError((Exception) errors.get(0));
                            } else {
                                allFinished.setError(new AggregateException(errors));
                            }
                        } else if (isCancelled.get()) {
                            allFinished.setCancelled();
                        } else {
                            allFinished.setResult(null);
                        }
                    }
                    return null;
                }
            });
        }
        return allFinished.getTask();
    }

    public Task<Void> continueWhile(Callable<Boolean> predicate, Continuation<Void, Task<Void>> continuation) {
        return continueWhile(predicate, continuation, IMMEDIATE_EXECUTOR);
    }

    public Task<Void> continueWhile(final Callable<Boolean> predicate, final Continuation<Void, Task<Void>> continuation, final Executor executor) {
        final Capture<Continuation<Void, Task<Void>>> predicateContinuation = new Capture<>();
        predicateContinuation.set(new Continuation<Void, Task<Void>>() { // from class: bolts.Task.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // bolts.Continuation
            public Task<Void> then(Task<Void> task) throws Exception {
                return ((Boolean) predicate.call()).booleanValue() ? Task.forResult(null).onSuccessTask(continuation, executor).onSuccessTask((Continuation) predicateContinuation.get(), executor) : Task.forResult(null);
            }
        });
        return makeVoid().continueWithTask((Continuation) predicateContinuation.get(), executor);
    }

    public <TContinuationResult> Task<TContinuationResult> continueWith(final Continuation<TResult, TContinuationResult> continuation, final Executor executor) {
        boolean completed;
        final Task<TContinuationResult>.TaskCompletionSource tcs = create();
        synchronized (this.lock) {
            completed = isCompleted();
            if (!completed) {
                this.continuations.add(new Continuation<TResult, Void>() { // from class: bolts.Task.5
                    @Override // bolts.Continuation
                    public Void then(Task<TResult> task) {
                        Task.completeImmediately(tcs, continuation, task, executor);
                        return null;
                    }
                });
            }
        }
        if (completed) {
            completeImmediately(tcs, continuation, this, executor);
        }
        return tcs.getTask();
    }

    public <TContinuationResult> Task<TContinuationResult> continueWith(Continuation<TResult, TContinuationResult> continuation) {
        return continueWith(continuation, IMMEDIATE_EXECUTOR);
    }

    public <TContinuationResult> Task<TContinuationResult> continueWithTask(final Continuation<TResult, Task<TContinuationResult>> continuation, final Executor executor) {
        boolean completed;
        final Task<TContinuationResult>.TaskCompletionSource tcs = create();
        synchronized (this.lock) {
            completed = isCompleted();
            if (!completed) {
                this.continuations.add(new Continuation<TResult, Void>() { // from class: bolts.Task.6
                    @Override // bolts.Continuation
                    public Void then(Task<TResult> task) {
                        Task.completeAfterTask(tcs, continuation, task, executor);
                        return null;
                    }
                });
            }
        }
        if (completed) {
            completeAfterTask(tcs, continuation, this, executor);
        }
        return tcs.getTask();
    }

    public <TContinuationResult> Task<TContinuationResult> continueWithTask(Continuation<TResult, Task<TContinuationResult>> continuation) {
        return continueWithTask(continuation, IMMEDIATE_EXECUTOR);
    }

    public <TContinuationResult> Task<TContinuationResult> onSuccess(final Continuation<TResult, TContinuationResult> continuation, Executor executor) {
        return continueWithTask(new Continuation<TResult, Task<TContinuationResult>>() { // from class: bolts.Task.7
            @Override // bolts.Continuation
            public Task<TContinuationResult> then(Task<TResult> task) {
                if (task.isFaulted()) {
                    return Task.forError(task.getError());
                }
                if (task.isCancelled()) {
                    return Task.cancelled();
                }
                return task.continueWith(continuation);
            }
        }, executor);
    }

    public <TContinuationResult> Task<TContinuationResult> onSuccess(Continuation<TResult, TContinuationResult> continuation) {
        return onSuccess(continuation, IMMEDIATE_EXECUTOR);
    }

    public <TContinuationResult> Task<TContinuationResult> onSuccessTask(final Continuation<TResult, Task<TContinuationResult>> continuation, Executor executor) {
        return continueWithTask(new Continuation<TResult, Task<TContinuationResult>>() { // from class: bolts.Task.8
            @Override // bolts.Continuation
            public Task<TContinuationResult> then(Task<TResult> task) {
                if (task.isFaulted()) {
                    return Task.forError(task.getError());
                }
                if (task.isCancelled()) {
                    return Task.cancelled();
                }
                return task.continueWithTask(continuation);
            }
        }, executor);
    }

    public <TContinuationResult> Task<TContinuationResult> onSuccessTask(Continuation<TResult, Task<TContinuationResult>> continuation) {
        return onSuccessTask(continuation, IMMEDIATE_EXECUTOR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <TContinuationResult, TResult> void completeImmediately(final Task<TContinuationResult>.TaskCompletionSource tcs, final Continuation<TResult, TContinuationResult> continuation, final Task<TResult> task, Executor executor) {
        executor.execute(new Runnable() { // from class: bolts.Task.9
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    tcs.setResult(continuation.then(task));
                } catch (Exception e) {
                    tcs.setError(e);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <TContinuationResult, TResult> void completeAfterTask(final Task<TContinuationResult>.TaskCompletionSource tcs, final Continuation<TResult, Task<TContinuationResult>> continuation, final Task<TResult> task, Executor executor) {
        executor.execute(new Runnable() { // from class: bolts.Task.10
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Task task2 = (Task) continuation.then(task);
                    if (task2 == null) {
                        tcs.setResult(null);
                    } else {
                        task2.continueWith(new Continuation<TContinuationResult, Void>() { // from class: bolts.Task.10.1
                            @Override // bolts.Continuation
                            public Void then(Task<TContinuationResult> task3) {
                                if (task3.isCancelled()) {
                                    tcs.setCancelled();
                                    return null;
                                }
                                if (task3.isFaulted()) {
                                    tcs.setError(task3.getError());
                                    return null;
                                }
                                tcs.setResult(task3.getResult());
                                return null;
                            }
                        });
                    }
                } catch (Exception e) {
                    tcs.setError(e);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runContinuations() {
        synchronized (this.lock) {
            for (Continuation<TResult, ?> continuation : this.continuations) {
                try {
                    continuation.then(this);
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception e2) {
                    throw new RuntimeException(e2);
                }
            }
            this.continuations = null;
        }
    }

    public class TaskCompletionSource {
        private TaskCompletionSource() {
        }

        public Task<TResult> getTask() {
            return Task.this;
        }

        public boolean trySetCancelled() {
            boolean z = true;
            synchronized (Task.this.lock) {
                if (!Task.this.complete) {
                    Task.this.complete = true;
                    Task.this.cancelled = true;
                    Task.this.lock.notifyAll();
                    Task.this.runContinuations();
                } else {
                    z = false;
                }
            }
            return z;
        }

        public boolean trySetResult(TResult result) {
            boolean z = true;
            synchronized (Task.this.lock) {
                if (!Task.this.complete) {
                    Task.this.complete = true;
                    Task.this.result = result;
                    Task.this.lock.notifyAll();
                    Task.this.runContinuations();
                } else {
                    z = false;
                }
            }
            return z;
        }

        public boolean trySetError(Exception error) {
            boolean z = true;
            synchronized (Task.this.lock) {
                if (!Task.this.complete) {
                    Task.this.complete = true;
                    Task.this.error = error;
                    Task.this.lock.notifyAll();
                    Task.this.runContinuations();
                } else {
                    z = false;
                }
            }
            return z;
        }

        public void setCancelled() {
            if (!trySetCancelled()) {
                throw new IllegalStateException("Cannot cancel a completed task.");
            }
        }

        public void setResult(TResult result) {
            if (!trySetResult(result)) {
                throw new IllegalStateException("Cannot set the result of a completed task.");
            }
        }

        public void setError(Exception error) {
            if (!trySetError(error)) {
                throw new IllegalStateException("Cannot set the error on a completed task.");
            }
        }
    }
}
