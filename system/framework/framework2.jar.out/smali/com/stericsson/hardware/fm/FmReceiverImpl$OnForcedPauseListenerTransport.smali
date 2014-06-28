.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;
.super Lcom/stericsson/hardware/fm/IOnForcedPauseListener$Stub;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnForcedPauseListenerTransport"
.end annotation


# static fields
.field private static final TYPE_ON_FORCEDPAUSE:I = 0x1


# instance fields
.field private mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener$Stub;-><init>()V

    .line 298
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;

    .line 300
    new-instance v0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport$1;-><init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;)V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 306
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 318
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 320
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 321
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;->onForcedPause()V

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$400(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onForcedPause()V
    .locals 3

    .prologue
    .line 309
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 310
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 311
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v0, "b":Landroid/os/Bundle;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 314
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 315
    return-void
.end method
