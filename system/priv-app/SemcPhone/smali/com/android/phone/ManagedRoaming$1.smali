.class Lcom/android/phone/ManagedRoaming$1;
.super Landroid/content/BroadcastReceiver;
.source "ManagedRoaming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ManagedRoaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ManagedRoaming;


# direct methods
.method constructor <init>(Lcom/android/phone/ManagedRoaming;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/phone/ManagedRoaming$1;->this$0:Lcom/android/phone/ManagedRoaming;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "codeaurora.intent.action.ACTION_MANAGED_ROAMING_IND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/phone/ManagedRoaming$1;->this$0:Lcom/android/phone/ManagedRoaming;

    # invokes: Lcom/android/phone/ManagedRoaming;->createManagedRoamingDialog()V
    invoke-static {v0}, Lcom/android/phone/ManagedRoaming;->access$000(Lcom/android/phone/ManagedRoaming;)V

    .line 89
    :cond_0
    return-void
.end method
