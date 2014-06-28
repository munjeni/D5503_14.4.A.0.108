.class Lcom/android/internal/policy/impl/PhoneWindowManager$22;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 5161
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5164
    const-string v1, "com.sonymobile.extra.PROG_RED_KEYACTION_DOWN"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 5165
    .local v0, "longPressed":Z
    if-eqz v0, :cond_0

    .line 5166
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnHome()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1800(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 5170
    :goto_0
    return-void

    .line 5168
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->startTvHomeApplication()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1900(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_0
.end method
