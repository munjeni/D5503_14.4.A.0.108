.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;
.super Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener$Stub;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnAutomaticSwitchListenerTransport"
.end annotation


# static fields
.field private static final TYPE_ON_AUTOMATIC_SWITCH:I = 0x1


# instance fields
.field private mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener$Stub;-><init>()V

    .line 536
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;

    .line 538
    new-instance v0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport$1;-><init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;)V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 544
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 560
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 568
    :goto_0
    return-void

    .line 562
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 563
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "newFrequency"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 564
    .local v1, "newFrequency":I
    const-string v3, "reason"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 565
    .local v2, "reason":I
    iget-object v3, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;

    invoke-interface {v3, v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;->onAutomaticSwitch(II)V

    goto :goto_0

    .line 560
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onAutomaticSwitch(II)V
    .locals 3
    .param p1, "newFrequency"    # I
    .param p2, "reason"    # I

    .prologue
    .line 547
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 548
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 549
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 550
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "newFrequency"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 551
    const-string v2, "reason"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 552
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 553
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 554
    return-void
.end method
