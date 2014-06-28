.class Lcom/android/phone/SomcRejectMsgManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SomcRejectMsgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcRejectMsgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcRejectMsgManager;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcRejectMsgManager;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/phone/SomcRejectMsgManager$1;->this$0:Lcom/android/phone/SomcRejectMsgManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 92
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/phone/SomcRejectMsgManager$1;->this$0:Lcom/android/phone/SomcRejectMsgManager;

    # invokes: Lcom/android/phone/SomcRejectMsgManager;->readMsgsFromDb()V
    invoke-static {v0}, Lcom/android/phone/SomcRejectMsgManager;->access$000(Lcom/android/phone/SomcRejectMsgManager;)V

    .line 95
    :cond_0
    return-void
.end method
