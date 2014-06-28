.class Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor$1;
.super Ljava/lang/Object;
.source "PrioritizedAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor$1;->this$0:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor$1;->this$0:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->scheduleNext()V

    .line 132
    return-void

    .line 130
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor$1;->this$0:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$PrioritizedExecutor;->scheduleNext()V

    throw v0
.end method
