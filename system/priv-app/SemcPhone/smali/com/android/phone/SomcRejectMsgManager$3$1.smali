.class Lcom/android/phone/SomcRejectMsgManager$3$1;
.super Landroid/os/Handler;
.source "SomcRejectMsgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcRejectMsgManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcRejectMsgManager$3;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcRejectMsgManager$3;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/phone/SomcRejectMsgManager$3$1;->this$0:Lcom/android/phone/SomcRejectMsgManager$3;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcRejectMsgManager$3$1;->handleMessage(Landroid/os/Message;)V

    .line 219
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 210
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 211
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const v2, 0x7f0b010d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 214
    return-void
.end method
