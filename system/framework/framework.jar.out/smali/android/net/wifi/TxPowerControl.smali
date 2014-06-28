.class final Landroid/net/wifi/TxPowerControl;
.super Ljava/lang/Object;
.source "TxPowerControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/TxPowerControl$3;,
        Landroid/net/wifi/TxPowerControl$ControlHandler;,
        Landroid/net/wifi/TxPowerControl$Country;
    }
.end annotation


# static fields
.field private static final CONF_FILE_PATH:Ljava/lang/String;

.field private static final KEY_POWER_JP:Ljava/lang/String; = "power_jp"

.field private static final KEY_POWER_OTHERS:Ljava/lang/String; = "power_others"

.field private static final KEY_POWER_UNKNOWN:Ljava/lang/String; = "power_no-service"

.field private static final KEY_POWER_US:Ljava/lang/String; = "power_us"

.field private static final KEY_POWER_US_COEX_P2P:Ljava/lang/String; = "power_us-coex-p2p"

.field private static final KEY_POWER_US_COEX_SOFTAP:Ljava/lang/String; = "power_us-coex-softap"

.field private static final KEY_SHIPPED_COUNTRY:Ljava/lang/String; = "shipped_country"

.field private static final TAG:Ljava/lang/String; = "TxPowerControl"

.field private static final USE_NV:I = 0x7f


# instance fields
.field private final mApStateFilter:Landroid/content/IntentFilter;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsP2pRunning:Z

.field private mIsSoftApRunning:Z

.field private mLastTxPower:I

.field private final mP2pConnectionFilter:Landroid/content/IntentFilter;

.field private final mP2pDiscoveryFilter:Landroid/content/IntentFilter;

.field private final mPowerConf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProperties:Ljava/util/Properties;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverEnabled:Z

.field private mShippedCountry:Landroid/net/wifi/TxPowerControl$Country;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiNative:Landroid/net/wifi/WifiNative;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc/wifi/wifi_txpower.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/TxPowerControl;->CONF_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiNative;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiNative"    # Landroid/net/wifi/WifiNative;

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-boolean v1, p0, Landroid/net/wifi/TxPowerControl;->mReceiverEnabled:Z

    .line 95
    sget-object v0, Landroid/net/wifi/TxPowerControl$Country;->UNKNOWN:Landroid/net/wifi/TxPowerControl$Country;

    iput-object v0, p0, Landroid/net/wifi/TxPowerControl;->mShippedCountry:Landroid/net/wifi/TxPowerControl$Country;

    .line 97
    iput v1, p0, Landroid/net/wifi/TxPowerControl;->mLastTxPower:I

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/TxPowerControl;->mProperties:Ljava/util/Properties;

    .line 101
    iput-boolean v1, p0, Landroid/net/wifi/TxPowerControl;->mIsSoftApRunning:Z

    .line 103
    iput-boolean v1, p0, Landroid/net/wifi/TxPowerControl;->mIsP2pRunning:Z

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/TxPowerControl;->mPowerConf:Ljava/util/Map;

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/TxPowerControl;->mApStateFilter:Landroid/content/IntentFilter;

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/TxPowerControl;->mP2pDiscoveryFilter:Landroid/content/IntentFilter;

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/TxPowerControl;->mP2pConnectionFilter:Landroid/content/IntentFilter;

    .line 139
    new-instance v0, Landroid/net/wifi/TxPowerControl$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/TxPowerControl$1;-><init>(Landroid/net/wifi/TxPowerControl;)V

    iput-object v0, p0, Landroid/net/wifi/TxPowerControl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_1
    iput-object p1, p0, Landroid/net/wifi/TxPowerControl;->mContext:Landroid/content/Context;

    .line 189
    iput-object p2, p0, Landroid/net/wifi/TxPowerControl;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 190
    new-instance v0, Landroid/net/wifi/TxPowerControl$ControlHandler;

    invoke-direct {v0, p0}, Landroid/net/wifi/TxPowerControl$ControlHandler;-><init>(Landroid/net/wifi/TxPowerControl;)V

    iput-object v0, p0, Landroid/net/wifi/TxPowerControl;->mHandler:Landroid/os/Handler;

    .line 191
    iget-object v0, p0, Landroid/net/wifi/TxPowerControl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Landroid/net/wifi/TxPowerControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 194
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/wifi/TxPowerControl$2;

    invoke-direct {v1, p0}, Landroid/net/wifi/TxPowerControl$2;-><init>(Landroid/net/wifi/TxPowerControl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 220
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/TxPowerControl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/TxPowerControl;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/net/wifi/TxPowerControl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/net/wifi/TxPowerControl;->CONF_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/TxPowerControl;Ljava/util/Properties;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/TxPowerControl;
    .param p1, "x1"    # Ljava/util/Properties;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/net/wifi/TxPowerControl;->initialize(Ljava/util/Properties;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/net/wifi/TxPowerControl;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/TxPowerControl;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/net/wifi/TxPowerControl;->setReceiverEnabled(Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/TxPowerControl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/TxPowerControl;

    .prologue
    .line 42
    iget-boolean v0, p0, Landroid/net/wifi/TxPowerControl;->mIsSoftApRunning:Z

    return v0
.end method

.method static synthetic access$402(Landroid/net/wifi/TxPowerControl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/TxPowerControl;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Landroid/net/wifi/TxPowerControl;->mIsSoftApRunning:Z

    return p1
.end method

.method static synthetic access$502(Landroid/net/wifi/TxPowerControl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/TxPowerControl;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Landroid/net/wifi/TxPowerControl;->mIsP2pRunning:Z

    return p1
.end method

.method static synthetic access$600(Landroid/net/wifi/TxPowerControl;Landroid/net/wifi/TxPowerControl$Country;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/TxPowerControl;
    .param p1, "x1"    # Landroid/net/wifi/TxPowerControl$Country;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/net/wifi/TxPowerControl;->getTxPower(Landroid/net/wifi/TxPowerControl$Country;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/net/wifi/TxPowerControl;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/TxPowerControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/TxPowerControl;->setTxPower(IZ)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/wifi/TxPowerControl;)Landroid/net/wifi/TxPowerControl$Country;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/TxPowerControl;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/net/wifi/TxPowerControl;->getCountry()Landroid/net/wifi/TxPowerControl$Country;

    move-result-object v0

    return-object v0
.end method

.method private getCountry()Landroid/net/wifi/TxPowerControl$Country;
    .locals 4

    .prologue
    .line 269
    sget-object v0, Landroid/net/wifi/TxPowerControl$Country;->UNKNOWN:Landroid/net/wifi/TxPowerControl$Country;

    .line 270
    .local v0, "country":Landroid/net/wifi/TxPowerControl$Country;
    iget-object v3, p0, Landroid/net/wifi/TxPowerControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 271
    .local v2, "simState":I
    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 272
    iget-object v3, p0, Landroid/net/wifi/TxPowerControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "countryCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    invoke-static {v1}, Landroid/net/wifi/TxPowerControl$Country;->getCountry(Ljava/lang/String;)Landroid/net/wifi/TxPowerControl$Country;

    move-result-object v0

    .line 278
    .end local v1    # "countryCode":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getPowerConf(Ljava/lang/String;)I
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v3, p0, Landroid/net/wifi/TxPowerControl;->mPowerConf:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 301
    .local v2, "v":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 302
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 319
    :cond_0
    :goto_0
    return v0

    .line 305
    :cond_1
    const/4 v0, -0x1

    .line 306
    .local v0, "power":I
    iget-object v3, p0, Landroid/net/wifi/TxPowerControl;->mProperties:Ljava/util/Properties;

    invoke-virtual {v3, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 309
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 315
    :cond_2
    :goto_1
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 316
    const-string v3, "TxPowerControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Property is not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private getTxPower(Landroid/net/wifi/TxPowerControl$Country;)I
    .locals 3
    .param p1, "country"    # Landroid/net/wifi/TxPowerControl$Country;

    .prologue
    .line 355
    const/16 v0, 0x7f

    .line 357
    .local v0, "power":I
    sget-object v1, Landroid/net/wifi/TxPowerControl$3;->$SwitchMap$android$net$wifi$TxPowerControl$Country:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 381
    iget-object v1, p0, Landroid/net/wifi/TxPowerControl;->mShippedCountry:Landroid/net/wifi/TxPowerControl$Country;

    sget-object v2, Landroid/net/wifi/TxPowerControl$Country;->OTHERS:Landroid/net/wifi/TxPowerControl$Country;

    if-eq v1, v2, :cond_0

    .line 382
    const-string/jumbo v1, "power_others"

    invoke-direct {p0, v1}, Landroid/net/wifi/TxPowerControl;->getPowerConf(Ljava/lang/String;)I

    move-result v0

    .line 387
    :cond_0
    :goto_0
    return v0

    .line 359
    :pswitch_0
    iget-object v1, p0, Landroid/net/wifi/TxPowerControl;->mShippedCountry:Landroid/net/wifi/TxPowerControl$Country;

    sget-object v2, Landroid/net/wifi/TxPowerControl$Country;->JP:Landroid/net/wifi/TxPowerControl$Country;

    if-eq v1, v2, :cond_0

    .line 360
    const-string/jumbo v1, "power_jp"

    invoke-direct {p0, v1}, Landroid/net/wifi/TxPowerControl;->getPowerConf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 365
    :pswitch_1
    iget-object v1, p0, Landroid/net/wifi/TxPowerControl;->mShippedCountry:Landroid/net/wifi/TxPowerControl$Country;

    sget-object v2, Landroid/net/wifi/TxPowerControl$Country;->US:Landroid/net/wifi/TxPowerControl$Country;

    if-ne v1, v2, :cond_2

    .line 366
    iget-boolean v1, p0, Landroid/net/wifi/TxPowerControl;->mIsSoftApRunning:Z

    if-eqz v1, :cond_1

    .line 367
    const-string/jumbo v1, "power_us-coex-softap"

    invoke-direct {p0, v1}, Landroid/net/wifi/TxPowerControl;->getPowerConf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 368
    :cond_1
    iget-boolean v1, p0, Landroid/net/wifi/TxPowerControl;->mIsP2pRunning:Z

    if-eqz v1, :cond_0

    .line 369
    const-string/jumbo v1, "power_us-coex-p2p"

    invoke-direct {p0, v1}, Landroid/net/wifi/TxPowerControl;->getPowerConf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 372
    :cond_2
    const-string/jumbo v1, "power_us"

    invoke-direct {p0, v1}, Landroid/net/wifi/TxPowerControl;->getPowerConf(Ljava/lang/String;)I

    move-result v0

    .line 374
    goto :goto_0

    .line 377
    :pswitch_2
    const-string/jumbo v1, "power_no-service"

    invoke-direct {p0, v1}, Landroid/net/wifi/TxPowerControl;->getPowerConf(Ljava/lang/String;)I

    move-result v0

    .line 378
    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initialize(Ljava/util/Properties;)Z
    .locals 3
    .param p1, "conf"    # Ljava/util/Properties;

    .prologue
    .line 237
    const-string/jumbo v1, "shipped_country"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 239
    const-string v1, "TxPowerControl"

    const-string v2, "Property is not found: shipped_country"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v1, 0x0

    .line 245
    :goto_0
    return v1

    .line 243
    :cond_0
    invoke-static {v0}, Landroid/net/wifi/TxPowerControl$Country;->getCountry(Ljava/lang/String;)Landroid/net/wifi/TxPowerControl$Country;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/TxPowerControl;->mShippedCountry:Landroid/net/wifi/TxPowerControl$Country;

    .line 244
    iput-object p1, p0, Landroid/net/wifi/TxPowerControl;->mProperties:Ljava/util/Properties;

    .line 245
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isDisabling()Z
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Landroid/net/wifi/TxPowerControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private setReceiverEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 250
    iget-boolean v1, p0, Landroid/net/wifi/TxPowerControl;->mReceiverEnabled:Z

    if-ne v1, p1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 254
    :cond_0
    if-eqz p1, :cond_1

    .line 255
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 256
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v1, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Landroid/net/wifi/TxPowerControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/wifi/TxPowerControl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_1
    iput-boolean p1, p0, Landroid/net/wifi/TxPowerControl;->mReceiverEnabled:Z

    goto :goto_0

    .line 262
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/TxPowerControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/wifi/TxPowerControl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method

.method private setTxPower(IZ)V
    .locals 1
    .param p1, "power"    # I
    .param p2, "sapRunning"    # Z

    .prologue
    .line 283
    iget v0, p0, Landroid/net/wifi/TxPowerControl;->mLastTxPower:I

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Landroid/net/wifi/TxPowerControl;->isDisabling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/TxPowerControl;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-static {p1, p2}, Landroid/net/wifi/WifiNative;->setMaxTxPower(IZ)Z

    .line 291
    iput p1, p0, Landroid/net/wifi/TxPowerControl;->mLastTxPower:I

    goto :goto_0
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Landroid/net/wifi/TxPowerControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/wifi/TxPowerControl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/TxPowerControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/wifi/TxPowerControl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
