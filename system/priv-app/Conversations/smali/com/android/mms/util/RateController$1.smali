.class Lcom/android/mms/util/RateController$1;
.super Landroid/content/BroadcastReceiver;
.source "RateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/RateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/RateController;


# direct methods
.method constructor <init>(Lcom/android/mms/util/RateController;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/mms/util/RateController$1;->this$0:Lcom/android/mms/util/RateController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    const-string v0, "com.android.mms.RATE_LIMIT_CONFIRMED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/RateController$1;->this$0:Lcom/android/mms/util/RateController;

    const-string v0, "answer"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/mms/util/RateController;->mAnswer:I
    invoke-static {v1, v0}, Lcom/android/mms/util/RateController;->access$002(Lcom/android/mms/util/RateController;I)I

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 75
    monitor-exit p0

    .line 77
    :cond_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
