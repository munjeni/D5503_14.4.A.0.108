.class Lcom/sonyericsson/conversations/ui/GifController$1;
.super Landroid/os/Handler;
.source "GifController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/GifController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/GifController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/GifController;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/GifController$1;->this$0:Lcom/sonyericsson/conversations/ui/GifController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x5

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "newMsg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 138
    :goto_0
    :pswitch_0
    return-void

    .line 105
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController$1;->this$0:Lcom/sonyericsson/conversations/ui/GifController;

    const/4 v2, 0x1

    # setter for: Lcom/sonyericsson/conversations/ui/GifController;->mStatus:I
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/GifController;->access$002(Lcom/sonyericsson/conversations/ui/GifController;I)I

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController$1;->this$0:Lcom/sonyericsson/conversations/ui/GifController;

    # getter for: Lcom/sonyericsson/conversations/ui/GifController;->mMovieStart:J
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/GifController;->access$100(Lcom/sonyericsson/conversations/ui/GifController;)J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController$1;->this$0:Lcom/sonyericsson/conversations/ui/GifController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/GifController$1;->this$0:Lcom/sonyericsson/conversations/ui/GifController;

    # getter for: Lcom/sonyericsson/conversations/ui/GifController;->mGifPlayerTime:I
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/GifController;->access$200(Lcom/sonyericsson/conversations/ui/GifController;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    # setter for: Lcom/sonyericsson/conversations/ui/GifController;->mMovieStart:J
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/GifController;->access$102(Lcom/sonyericsson/conversations/ui/GifController;J)J

    .line 115
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController$1;->this$0:Lcom/sonyericsson/conversations/ui/GifController;

    # getter for: Lcom/sonyericsson/conversations/ui/GifController;->redrawHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/GifController;->access$300(Lcom/sonyericsson/conversations/ui/GifController;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "GIF"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController$1;->this$0:Lcom/sonyericsson/conversations/ui/GifController;

    # getter for: Lcom/sonyericsson/conversations/ui/GifController;->redrawHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/GifController;->access$300(Lcom/sonyericsson/conversations/ui/GifController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/GifController$1;->this$0:Lcom/sonyericsson/conversations/ui/GifController;

    # getter for: Lcom/sonyericsson/conversations/ui/GifController;->mRefreshInterval:I
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/GifController;->access$400(Lcom/sonyericsson/conversations/ui/GifController;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController$1;->this$0:Lcom/sonyericsson/conversations/ui/GifController;

    # setter for: Lcom/sonyericsson/conversations/ui/GifController;->mGifPlayerTime:I
    invoke-static {v1, v3}, Lcom/sonyericsson/conversations/ui/GifController;->access$202(Lcom/sonyericsson/conversations/ui/GifController;I)I

    goto :goto_1

    .line 119
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController$1;->this$0:Lcom/sonyericsson/conversations/ui/GifController;

    const/4 v2, 0x2

    # setter for: Lcom/sonyericsson/conversations/ui/GifController;->mStatus:I
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/GifController;->access$002(Lcom/sonyericsson/conversations/ui/GifController;I)I

    .line 120
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController$1;->this$0:Lcom/sonyericsson/conversations/ui/GifController;

    # setter for: Lcom/sonyericsson/conversations/ui/GifController;->mMovieStart:J
    invoke-static {v1, v4, v5}, Lcom/sonyericsson/conversations/ui/GifController;->access$102(Lcom/sonyericsson/conversations/ui/GifController;J)J

    .line 121
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController$1;->this$0:Lcom/sonyericsson/conversations/ui/GifController;

    # setter for: Lcom/sonyericsson/conversations/ui/GifController;->mGifPlayerTime:I
    invoke-static {v1, v3}, Lcom/sonyericsson/conversations/ui/GifController;->access$202(Lcom/sonyericsson/conversations/ui/GifController;I)I

    .line 122
    const-string v1, "GIF"

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController$1;->this$0:Lcom/sonyericsson/conversations/ui/GifController;

    const/4 v2, 0x3

    # setter for: Lcom/sonyericsson/conversations/ui/GifController;->mStatus:I
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/GifController;->access$002(Lcom/sonyericsson/conversations/ui/GifController;I)I

    .line 126
    const-string v1, "GIF"

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :pswitch_4
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController$1;->this$0:Lcom/sonyericsson/conversations/ui/GifController;

    # setter for: Lcom/sonyericsson/conversations/ui/GifController;->mStatus:I
    invoke-static {v1, v6}, Lcom/sonyericsson/conversations/ui/GifController;->access$002(Lcom/sonyericsson/conversations/ui/GifController;I)I

    .line 130
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController$1;->this$0:Lcom/sonyericsson/conversations/ui/GifController;

    # invokes: Lcom/sonyericsson/conversations/ui/GifController;->updateMovie()V
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/GifController;->access$500(Lcom/sonyericsson/conversations/ui/GifController;)V

    .line 131
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController$1;->this$0:Lcom/sonyericsson/conversations/ui/GifController;

    # getter for: Lcom/sonyericsson/conversations/ui/GifController;->redrawHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/GifController;->access$300(Lcom/sonyericsson/conversations/ui/GifController;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "GIF"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController$1;->this$0:Lcom/sonyericsson/conversations/ui/GifController;

    # getter for: Lcom/sonyericsson/conversations/ui/GifController;->redrawHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/GifController;->access$300(Lcom/sonyericsson/conversations/ui/GifController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/GifController$1;->this$0:Lcom/sonyericsson/conversations/ui/GifController;

    # getter for: Lcom/sonyericsson/conversations/ui/GifController;->mRefreshInterval:I
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/GifController;->access$400(Lcom/sonyericsson/conversations/ui/GifController;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
