.class public Lcom/android/mms/transaction/MmsBootRetryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsBootRetryReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ONBOOT"

    const/4 v2, 0x0

    const-class v3, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    return-void
.end method
