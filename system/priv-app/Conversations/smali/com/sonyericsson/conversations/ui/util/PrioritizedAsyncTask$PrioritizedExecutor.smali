.class public Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;
.super Ljava/lang/Object;
.source "PrioritizedAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PrioritizedExecutor"
.end annotation


# instance fields
.field volatile mActive:Ljava/lang/Runnable;

.field final mHighPriorityTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final mLowPriorityTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->mHighPriorityTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 121
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->mLowPriorityTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->mActive:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor$1;-><init>(Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;Ljava/lang/Runnable;)V

    .line 134
    .local v1, "newRunnable":Ljava/lang/Runnable;
    instance-of v3, p1, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;

    if-eqz v3, :cond_2

    .line 135
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;

    move-object v2, v0

    .line 136
    .local v2, "task":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask<*>;"
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;->isHighPriority()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->mHighPriorityTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v2    # "task":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask<*>;"
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->mActive:Ljava/lang/Runnable;

    if-nez v3, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->scheduleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_0
    monitor-exit p0

    return-void

    .line 139
    .restart local v2    # "task":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask<*>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->mLowPriorityTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    .end local v1    # "newRunnable":Ljava/lang/Runnable;
    .end local v2    # "task":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask<*>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 142
    .restart local v1    # "newRunnable":Ljava/lang/Runnable;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->mHighPriorityTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized scheduleNext()V
    .locals 2

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->mHighPriorityTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->mActive:Ljava/lang/Runnable;

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 152
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 154
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->mLowPriorityTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->mActive:Ljava/lang/Runnable;

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
