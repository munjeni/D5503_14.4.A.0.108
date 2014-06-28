.class public Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "MonitorableThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ThreadPoolExecutor;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mTasks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<TK;",
            "Lcom/sonyericsson/conversations/util/ConditionRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 2
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;, "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor<TK;>;"
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 21
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mTasks:Ljava/util/Hashtable;

    .line 26
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 2
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;, "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor<TK;>;"
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 21
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mTasks:Ljava/util/Hashtable;

    .line 34
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;, "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor<TK;>;"
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 21
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mTasks:Ljava/util/Hashtable;

    .line 30
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 2
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p8, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;, "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor<TK;>;"
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 21
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mTasks:Ljava/util/Hashtable;

    .line 38
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 144
    .local p0, "this":Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;, "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor<TK;>;"
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 145
    instance-of v1, p1, Lcom/sonyericsson/conversations/util/ConditionRunnable;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 146
    check-cast v0, Lcom/sonyericsson/conversations/util/ConditionRunnable;

    .line 147
    .local v0, "cr":Lcom/sonyericsson/conversations/util/ConditionRunnable;
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mTasks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/ConditionRunnable;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/ConditionRunnable;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 155
    .end local v0    # "cr":Lcom/sonyericsson/conversations/util/ConditionRunnable;
    :cond_0
    return-void

    .line 152
    .restart local v0    # "cr":Lcom/sonyericsson/conversations/util/ConditionRunnable;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public await(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;, "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mTasks:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/util/ConditionRunnable;

    .line 96
    .local v0, "cr":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/ConditionRunnable;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    return-void

    .line 100
    .end local v0    # "cr":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public await(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .param p2, "timeOut"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;, "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x1

    .line 130
    .local v1, "done":Z
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mTasks:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/util/ConditionRunnable;

    .line 133
    .local v0, "cr":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p2, p3, p4}, Lcom/sonyericsson/conversations/util/ConditionRunnable;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 139
    return v1

    .line 137
    .end local v0    # "cr":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public awaitUninterruptibly(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;, "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mTasks:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/util/ConditionRunnable;

    .line 112
    .local v0, "cr":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/ConditionRunnable;->awaitUninterruptibly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 118
    return-void

    .line 116
    .end local v0    # "cr":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    .local p0, "this":Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;, "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor<TK;>;"
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method public execute(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TK;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;, "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor<TK;>;"
    .local p2, "taskKey":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 55
    new-instance v0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor$1;

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor$1;-><init>(Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;Ljava/util/concurrent/locks/Lock;Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 62
    .local v0, "cr":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mTasks:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 66
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 67
    return-void

    .line 64
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public isTaskExecuting(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;, "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .line 78
    .local v0, "isExecuting":Z
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mTasks:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 84
    return v0

    .line 82
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
