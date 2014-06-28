.class Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$3;
.super Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable;
.source "PrioritizedAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;)V
    .locals 0

    .prologue
    .line 213
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$3;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask.3;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$3;->this$0:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$3;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask.3;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$3;->this$0:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mTaskInvokedLowPriority:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "result":Ljava/lang/Object;, "TResult;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$3;->this$0:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mRunnable4LowPrioprity:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$3;->this$0:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->mRunnable4LowPrioprity:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 223
    .end local v0    # "result":Ljava/lang/Object;, "TResult;"
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$3;->this$0:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->postResult(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 220
    .restart local v0    # "result":Ljava/lang/Object;, "TResult;"
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$3;->this$0:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->doInBackgroundLowPriority([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
