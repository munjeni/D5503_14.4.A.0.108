.class public Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;
.super Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
.source "WifiFeature.java"


# static fields
.field private static final ACTION_POWER_SAVER:Ljava/lang/String; = "com.sonymobile.POWER_SAVER"

.field private static final EXTRA_STATE:Ljava/lang/String; = "STATE"

.field private static final LBWIFI_OVERRIDE_OFF:I = 0x0

.field private static final LBWIFI_OVERRIDE_ON:I = 0x1

.field private static final SAVED_STATE_OFF:I = 0x0

.field private static final SAVED_STATE_ON:I = 0x1


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string v0, "Wifi"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 35
    new-instance v0, Lcom/sonymobile/superstamina/powersaver/features/WifiFeature$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/superstamina/powersaver/features/WifiFeature$1;-><init>(Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;
    .param p1, "x1"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;->sendStickyBroadcast(I)V

    return-void
.end method

.method private sendStickyBroadcast(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.POWER_SAVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected applySaving()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;->sendStickyBroadcast(I)V

    .line 63
    return-void
.end method

.method protected restoreSetting(I)V
    .locals 3
    .param p1, "savedState"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    iget-object v2, p0, Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 83
    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;->sendStickyBroadcast(I)V

    .line 84
    return-void

    :cond_0
    move v0, v1

    .line 81
    goto :goto_0
.end method

.method protected saveSetting()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 75
    :goto_0
    :pswitch_0
    return v0

    .line 70
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected startListening()V
    .locals 4

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    return-void
.end method

.method protected stopListening()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/WifiFeature;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    return-void
.end method
