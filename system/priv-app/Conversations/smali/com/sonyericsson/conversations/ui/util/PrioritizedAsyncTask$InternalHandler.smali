.class public Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "PrioritizedAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "InternalHandler"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 581
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 585
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$UIAsyncTaskResult;

    .line 586
    .local v0, "result":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$UIAsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 599
    :goto_0
    return-void

    .line 589
    :pswitch_0
    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$UIAsyncTaskResult;->mTask:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$UIAsyncTaskResult;->mData:[Ljava/lang/Object;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->finishHighPriority(Ljava/lang/Object;)V

    goto :goto_0

    .line 593
    :pswitch_1
    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$UIAsyncTaskResult;->mTask:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$UIAsyncTaskResult;->mData:[Ljava/lang/Object;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->finishLowPriority(Ljava/lang/Object;)V

    goto :goto_0

    .line 596
    :pswitch_2
    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$UIAsyncTaskResult;->mTask:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$UIAsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
