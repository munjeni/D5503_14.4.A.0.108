.class final Lcom/android/phone/SomcRejectMsgManager$3;
.super Ljava/lang/Object;
.source "SomcRejectMsgManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcRejectMsgManager;->showMessageSentToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 207
    new-instance v0, Lcom/android/phone/SomcRejectMsgManager$3$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcRejectMsgManager$3$1;-><init>(Lcom/android/phone/SomcRejectMsgManager$3;)V

    .line 222
    .local v0, "innerHandler":Landroid/os/Handler;
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 223
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v0, v1}, Lcom/android/phone/SomcRejectMsgManager$3$1;->dispatchMessage(Landroid/os/Message;)V

    .line 224
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 225
    return-void
.end method
