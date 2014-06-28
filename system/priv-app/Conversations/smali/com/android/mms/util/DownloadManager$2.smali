.class Lcom/android/mms/util/DownloadManager$2;
.super Landroid/content/BroadcastReceiver;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DownloadManager;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DownloadManager;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager$2;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 104
    const-string v3, "DownloadManager"

    const-string v4, "bundle is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 108
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 109
    .local v2, "state":Landroid/telephony/ServiceState;
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    .line 114
    .local v1, "isRoaming":Z
    iget-object v3, p0, Lcom/android/mms/util/DownloadManager$2;->this$0:Lcom/android/mms/util/DownloadManager;

    # getter for: Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/android/mms/util/DownloadManager;->access$000(Lcom/android/mms/util/DownloadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/android/mms/util/DownloadManager$2;->this$0:Lcom/android/mms/util/DownloadManager;

    # getter for: Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/android/mms/util/DownloadManager;->access$000(Lcom/android/mms/util/DownloadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/util/DownloadManager$2;->this$0:Lcom/android/mms/util/DownloadManager;

    # getter for: Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/android/mms/util/DownloadManager;->access$100(Lcom/android/mms/util/DownloadManager;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
