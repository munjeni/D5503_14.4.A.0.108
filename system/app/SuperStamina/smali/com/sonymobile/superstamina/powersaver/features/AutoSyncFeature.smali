.class public Lcom/sonymobile/superstamina/powersaver/features/AutoSyncFeature;
.super Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
.source "AutoSyncFeature.java"


# static fields
.field private static final ACTION_SYNC_CHANGED:Ljava/lang/String; = "com.android.sync.SYNC_CONN_STATUS_CHANGED"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-string v0, "AutoSync"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 20
    new-instance v0, Lcom/sonymobile/superstamina/powersaver/features/AutoSyncFeature$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/superstamina/powersaver/features/AutoSyncFeature$1;-><init>(Lcom/sonymobile/superstamina/powersaver/features/AutoSyncFeature;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/AutoSyncFeature;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 35
    return-void
.end method


# virtual methods
.method protected applySaving()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 41
    return-void
.end method

.method protected restoreSetting(I)V
    .locals 1
    .param p1, "savedState"    # I

    .prologue
    .line 50
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 51
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected saveSetting()I
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startListening()V
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/AutoSyncFeature;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method protected stopListening()V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/AutoSyncFeature;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    return-void
.end method
