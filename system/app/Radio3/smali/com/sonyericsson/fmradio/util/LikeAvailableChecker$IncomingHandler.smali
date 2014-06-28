.class Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;
.super Landroid/os/Handler;
.source "LikeAvailableChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IncomingHandler"
.end annotation


# instance fields
.field private mParent:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;)V
    .locals 0
    .param p1, "parent"    # Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;->mParent:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    .line 92
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;->mParent:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 100
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 111
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;->mParent:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    # invokes: Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->unbindService()V
    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->access$100(Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;)V

    goto :goto_0

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;->mParent:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    # getter for: Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->mLikeListener:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->access$000(Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;)Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;->onLikeAvailable(Z)V

    goto :goto_1

    .line 105
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;->mParent:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    # getter for: Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->mLikeListener:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->access$000(Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;)Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;->onLikeAvailable(Z)V

    goto :goto_1

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;->mParent:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    .line 121
    return-void
.end method
