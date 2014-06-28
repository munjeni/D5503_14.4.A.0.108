.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport$1;
.super Landroid/os/Handler;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;

    # invokes: Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;->access$1000(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnAutomaticSwitchListenerTransport;Landroid/os/Message;)V

    .line 542
    return-void
.end method
