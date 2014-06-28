.class public Lcom/sonymobile/superstamina/xssm/XssmActivator;
.super Lcom/sonymobile/superstamina/BaseActivator;
.source "XssmActivator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/xssm/XssmActivator$WifiApStateChangedReceiver;
    }
.end annotation


# static fields
.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-XssmActivator"


# instance fields
.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBtTetheringEnabled:Z

.field private mIgnoreCharging:Z

.field private mIsWifiApEnabled:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mWifiApStateChangedReceiver:Lcom/sonymobile/superstamina/xssm/XssmActivator$WifiApStateChangedReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mXssm:Lcom/sonymobile/superstamina/xssm/Xssm;


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/XperiaPowerService;Lcom/sonymobile/superstamina/xssm/Xssm;)V
    .locals 4
    .param p1, "service"    # Lcom/sonymobile/superstamina/XperiaPowerService;
    .param p2, "xssm"    # Lcom/sonymobile/superstamina/xssm/Xssm;

    .prologue
    const/4 v2, 0x0

    .line 68
    const-string v1, "xssm"

    invoke-direct {p0, p1, v1}, Lcom/sonymobile/superstamina/BaseActivator;-><init>(Lcom/sonymobile/superstamina/XperiaPowerService;Ljava/lang/String;)V

    .line 36
    iput-boolean v2, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mIsWifiApEnabled:Z

    .line 45
    iput-boolean v2, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mIgnoreCharging:Z

    .line 48
    iput-boolean v2, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mBtTetheringEnabled:Z

    .line 56
    new-instance v1, Lcom/sonymobile/superstamina/xssm/XssmActivator$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/superstamina/xssm/XssmActivator$1;-><init>(Lcom/sonymobile/superstamina/xssm/XssmActivator;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 69
    iput-object p2, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mXssm:Lcom/sonymobile/superstamina/xssm/Xssm;

    .line 70
    new-instance v1, Lcom/sonymobile/superstamina/xssm/XssmActivator$WifiApStateChangedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/superstamina/xssm/XssmActivator$WifiApStateChangedReceiver;-><init>(Lcom/sonymobile/superstamina/xssm/XssmActivator;Lcom/sonymobile/superstamina/xssm/XssmActivator$1;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mWifiApStateChangedReceiver:Lcom/sonymobile/superstamina/xssm/XssmActivator$WifiApStateChangedReceiver;

    .line 71
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->getService()Lcom/sonymobile/superstamina/XperiaPowerService;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 73
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 74
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->getService()Lcom/sonymobile/superstamina/XperiaPowerService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 78
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/superstamina/xssm/XssmActivator;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/XssmActivator;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonymobile/superstamina/xssm/XssmActivator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/XssmActivator;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mIsWifiApEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sonymobile/superstamina/xssm/XssmActivator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/XssmActivator;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mIsWifiApEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/superstamina/xssm/XssmActivator;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/XssmActivator;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->checkActivation()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/superstamina/xssm/XssmActivator;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/XssmActivator;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->checkActivation()V

    return-void
.end method


# virtual methods
.method public debug([Ljava/lang/String;)I
    .locals 3
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 170
    const-string v0, "xssmactivator"

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 172
    const-string v0, "ignorecharger"

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mIgnoreCharging:Z

    .line 174
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->checkActivation()V

    .line 176
    return v2

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Usage: xssmactivator ignorecharger [true,false]"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/sonymobile/superstamina/BaseActivator;->init()V

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->getService()Lcom/sonymobile/superstamina/XperiaPowerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/superstamina/Util;->sendStickyIntentUpdate(Landroid/content/Context;Z)V

    .line 88
    :cond_0
    return-void
.end method

.method protected onActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mXssm:Lcom/sonymobile/superstamina/xssm/Xssm;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/xssm/Xssm;->activate(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->getService()Lcom/sonymobile/superstamina/XperiaPowerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/XperiaPowerService;->onXssmActivated(Z)V

    .line 118
    return-void
.end method

.method protected onEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mIsWifiApEnabled:Z

    .line 98
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->getService()Lcom/sonymobile/superstamina/XperiaPowerService;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mWifiApStateChangedReceiver:Lcom/sonymobile/superstamina/xssm/XssmActivator$WifiApStateChangedReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->getService()Lcom/sonymobile/superstamina/XperiaPowerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/XperiaPowerService;->onXssmEnabled(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->getService()Lcom/sonymobile/superstamina/XperiaPowerService;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonymobile/superstamina/Util;->sendStickyIntentUpdate(Landroid/content/Context;Z)V

    .line 108
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->getService()Lcom/sonymobile/superstamina/XperiaPowerService;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mWifiApStateChangedReceiver:Lcom/sonymobile/superstamina/xssm/XssmActivator$WifiApStateChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onScreenOff()V
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 187
    .local v0, "tetheringEnabled":Z
    :goto_0
    iget-boolean v1, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mBtTetheringEnabled:Z

    if-eq v1, v0, :cond_0

    .line 188
    iput-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mBtTetheringEnabled:Z

    .line 189
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->checkActivation()V

    .line 191
    :cond_0
    return-void

    .line 186
    .end local v0    # "tetheringEnabled":Z
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    goto :goto_0
.end method

.method protected shouldBeActivated()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->getService()Lcom/sonymobile/superstamina/XperiaPowerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/XperiaPowerService;->getIddHandler()Lcom/sonymobile/superstamina/xssm/IddHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->isEnabled()Z

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->isAboveThreshold()Z

    move-result v2

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->isCharging()Z

    move-result v3

    iget-boolean v4, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mIsWifiApEnabled:Z

    iget-boolean v5, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mBtTetheringEnabled:Z

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/superstamina/xssm/IddHandler;->onXssmConditionsChanged(ZZZZZ)V

    .line 126
    invoke-super {p0}, Lcom/sonymobile/superstamina/BaseActivator;->shouldBeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 138
    :goto_0
    return v0

    .line 129
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mIsWifiApEnabled:Z

    if-eqz v0, :cond_1

    move v0, v6

    .line 130
    goto :goto_0

    .line 132
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mBtTetheringEnabled:Z

    if-eqz v0, :cond_2

    move v0, v6

    .line 133
    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/XssmActivator;->mIgnoreCharging:Z

    if-nez v0, :cond_3

    move v0, v6

    .line 136
    goto :goto_0

    .line 138
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
