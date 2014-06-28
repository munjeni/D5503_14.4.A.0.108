.class Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeServiceConnection;
.super Lcom/sonyericsson/fmradio/util/SmartServiceConnection;
.source "LikeAvailableChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LikeServiceConnection"
.end annotation


# instance fields
.field private mHandler:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;-><init>(Landroid/content/Context;)V

    .line 70
    iput-object p2, p0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeServiceConnection;->mHandler:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;

    .line 71
    return-void
.end method


# virtual methods
.method public onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 75
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 76
    .local v1, "messenger":Landroid/os/Messenger;
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v3, v4, v5, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 77
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Messenger;

    iget-object v4, p0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeServiceConnection;->mHandler:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 79
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
