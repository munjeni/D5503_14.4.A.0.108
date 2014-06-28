.class public Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "PrioritizedAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PrioritizedFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CallableType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TCallableType;>;"
    }
.end annotation


# instance fields
.field protected final mIsHighPriority:Z

.field protected final mTask:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask",
            "<**TCallableType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;Z)V
    .locals 0
    .param p3, "isHighPriority"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TCallableType;>;",
            "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask",
            "<**TCallableType;>;Z)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask<TCallableType;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TCallableType;>;"
    .local p2, "task":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<**TCallableType;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 96
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;->mTask:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    .line 97
    iput-boolean p3, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;->mIsHighPriority:Z

    .line 98
    return-void
.end method


# virtual methods
.method protected done()V
    .locals 4

    .prologue
    .line 107
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask<TCallableType;>;"
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;->mTask:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;->mIsHighPriority:Z

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 116
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "UIPriorityAsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 110
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackgroundXXX()"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 113
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 114
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;->mTask:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;->mIsHighPriority:Z

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public isHighPriority()Z
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask<TCallableType;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedFutureTask;->mIsHighPriority:Z

    return v0
.end method
