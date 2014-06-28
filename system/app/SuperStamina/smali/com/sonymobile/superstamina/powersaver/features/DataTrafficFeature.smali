.class public Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;
.super Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
.source "DataTrafficFeature.java"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-string v0, "DataTraffic"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 21
    new-instance v0, Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature$1;-><init>(Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method


# virtual methods
.method protected applySaving()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 49
    return-void
.end method

.method public isAvailableOnDevice()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 42
    .local v0, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected restoreSetting(I)V
    .locals 2
    .param p1, "savedState"    # I

    .prologue
    .line 58
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 59
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected saveSetting()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

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
    .line 63
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sonyericsson.net.conn.MOBILE_DATA_SETTING_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method protected stopListening()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/DataTrafficFeature;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    return-void
.end method
