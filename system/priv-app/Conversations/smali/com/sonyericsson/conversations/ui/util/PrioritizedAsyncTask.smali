.class public abstract Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;
.super Ljava/lang/Object;
.source "PrioritizedAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$4;,
        Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$UIAsyncTaskResult;,
        Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable;,
        Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$InternalHandler;,
        Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;,
        Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;,
        Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final CORE_POOL_SIZE:I = 0x1

.field protected static final KEEP_ALIVE:I = 0x3c

.field private static final LOG_TAG:Ljava/lang/String; = "UIPriorityAsyncTask"

.field protected static final MAXIMUM_POOL_SIZE:I = 0x4

.field protected static final MESSAGE_POST_PROGRESS:I = 0x2

.field protected static final MESSAGE_POST_RESULT_HIGHPRIORITY:I = 0x3

.field protected static final MESSAGE_POST_RESULT_LOWPRIORITY:I = 0x4

.field public static final PRIORITIZED_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field protected static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field protected static final sHandler:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$InternalHandler;

.field protected static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field protected final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mFuture:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field protected mRunnable4HighPrioprity:Ljava/lang/Runnable;

.field protected mRunnable4LowPrioprity:Ljava/lang/Runnable;

.field protected volatile mStatus:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

.field protected final mTaskInvokedHighPriority:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final mTaskInvokedLowPriority:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mWorker4HighPrioprity:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field protected mWorker4LowPrioprity:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 46
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$1;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 54
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 60
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x4

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 68
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->PRIORITIZED_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 74
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$InternalHandler;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$InternalHandler;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->sHandler:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$InternalHandler;

    .line 76
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->PRIORITIZED_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 198
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;->PENDING:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mStatus:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mTaskInvokedHighPriority:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mTaskInvokedLowPriority:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 199
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$2;-><init>(Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mWorker4HighPrioprity:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable;

    .line 213
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$3;-><init>(Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mWorker4LowPrioprity:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable;

    .line 227
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mWorker4HighPrioprity:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;Z)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mFuture:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;

    .line 228
    return-void
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->sHandler:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$InternalHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 188
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p0, "exec"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 192
    sput-object p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 193
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 403
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 404
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mFuture:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackgroundHighPriority([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected varargs abstract doInBackgroundLowPriority([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected varargs execute([Ljava/lang/Object;)Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method protected execute(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable4HighPriority"    # Ljava/lang/Runnable;
    .param p2, "runnable4LowPriority"    # Ljava/lang/Runnable;

    .prologue
    .line 534
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mRunnable4HighPrioprity:Ljava/lang/Runnable;

    .line 535
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mRunnable4LowPrioprity:Ljava/lang/Runnable;

    .line 536
    sget-object v1, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    .line 537
    return-void
.end method

.method protected varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;
    .locals 2
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 509
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mStatus:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;->PENDING:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 510
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$4;->$SwitchMap$com$sonyericsson$conversations$ui$util$PrioritizedAsyncTask$Status:[I

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mStatus:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 522
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 523
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;->RUNNINGHIGH:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mStatus:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    .line 525
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->onPreExecute()V

    .line 527
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mWorker4HighPrioprity:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 528
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mFuture:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 530
    return-object p0

    .line 513
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected finishHighPriority(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->onCancelledHighPriority(Ljava/lang/Object;)V

    .line 570
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->onPostExecuteHighPriority(Ljava/lang/Object;)V

    .line 565
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;->RUNNINGLOW:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mStatus:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    .line 566
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mWorker4LowPrioprity:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mWorker4HighPrioprity:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    iput-object v1, v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 567
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mWorker4LowPrioprity:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;Z)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mFuture:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;

    .line 568
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mFuture:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected finishLowPriority(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->onCancelledLowPriority(Ljava/lang/Object;)V

    .line 578
    :goto_0
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;->FINISHED:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mStatus:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    .line 579
    return-void

    .line 576
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->onPostExecuteLowPriority(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mFuture:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mFuture:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;
    .locals 1

    .prologue
    .line 255
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mStatus:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 370
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 357
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onCancelledHighPriority(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->onCancelled()V

    .line 337
    return-void
.end method

.method protected onCancelledLowPriority(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->onCancelled()V

    .line 342
    return-void
.end method

.method protected onPostExecuteHighPriority(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPostExecuteLowPriority(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 285
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method

.method protected postResult(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "what"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITResult;)TResult;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "result":Ljava/lang/Object;, "TResult;"
    sget-object v1, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->sHandler:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$InternalHandler;

    new-instance v2, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$UIAsyncTaskResult;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$UIAsyncTaskResult;-><init>(Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 245
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 246
    return-object p2
.end method

.method protected postResultIfNotInvoked(Ljava/lang/Object;Z)V
    .locals 2
    .param p2, "isHighPriority"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;Z)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mTaskInvokedHighPriority:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 232
    .local v0, "wasTaskInvoked":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 233
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->postResult(ILjava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mTaskInvokedLowPriority:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 236
    if-nez p2, :cond_1

    if-nez v0, :cond_1

    .line 237
    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->postResult(ILjava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_1
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 554
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->sHandler:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$UIAsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$UIAsyncTaskResult;-><init>(Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 558
    :cond_0
    return-void
.end method

.method protected abstract start()V
.end method
