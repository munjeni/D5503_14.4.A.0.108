.class public Lcom/android/mms/transaction/MmsContentChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsContentChangedReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsContentChangedReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    const-string v2, "MmsContentChangedReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-eqz p2, :cond_1

    .line 47
    const-string v2, "android.intent.action.CONTENT_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    const-string v2, "deleted_contents"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 49
    .local v0, "changed":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 51
    move-object v1, v0

    .line 53
    .local v1, "changedUri":Landroid/net/Uri;
    new-instance v2, Lcom/android/mms/transaction/MmsContentChangedReceiver$1;

    const-string v3, "mmsContentChanged"

    invoke-direct {v2, p0, v3, v1}, Lcom/android/mms/transaction/MmsContentChangedReceiver$1;-><init>(Lcom/android/mms/transaction/MmsContentChangedReceiver;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 64
    .end local v0    # "changed":Landroid/net/Uri;
    .end local v1    # "changedUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v2, "MmsContentChangedReceiver"

    const-string v3, "Intent received was null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
