.class Lcom/sonyericsson/fmradio/service/AudioHandler$1;
.super Ljava/lang/Object;
.source "AudioHandler.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/AudioHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/service/AudioHandler;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$1;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 6
    .param p1, "focusChange"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 363
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 365
    packed-switch p1, :pswitch_data_0

    .line 387
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 367
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$1;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mCurrentState:Lcom/sonyericsson/fmradio/service/AudioHandler$State;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$800(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$1;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mStateContext:Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$1100(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->focusGained(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/io/IOException;
    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    goto :goto_0

    .line 370
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_2
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$1;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mCurrentState:Lcom/sonyericsson/fmradio/service/AudioHandler$State;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$800(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$1;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mStateContext:Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$1100(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->focusLost(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;Z)V

    .line 371
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$1;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mListener:Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$1200(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$1;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mListener:Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$1200(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler$AudioListener;->onAudioFocusLost()V

    goto :goto_0

    .line 376
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$1;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mCurrentState:Lcom/sonyericsson/fmradio/service/AudioHandler$State;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$800(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$1;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mStateContext:Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$1100(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->focusLost(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;Z)V

    goto :goto_0

    .line 379
    :pswitch_4
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$1;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mCurrentState:Lcom/sonyericsson/fmradio/service/AudioHandler$State;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$800(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AudioHandler$1;->this$0:Lcom/sonyericsson/fmradio/service/AudioHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/AudioHandler;->mStateContext:Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/AudioHandler;->access$1100(Lcom/sonyericsson/fmradio/service/AudioHandler;)Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->focusLost(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
