.class public Lcom/sonymobile/superstamina/gateway/GatewayController;
.super Ljava/lang/Object;
.source "GatewayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/gateway/GatewayController$WifiTetheringChangedReceiver;,
        Lcom/sonymobile/superstamina/gateway/GatewayController$ConnectionListener;,
        Lcom/sonymobile/superstamina/gateway/GatewayController$GeneralIntentsReceiver;,
        Lcom/sonymobile/superstamina/gateway/GatewayController$AlarmBroadcastReceiver;,
        Lcom/sonymobile/superstamina/gateway/GatewayController$DataListener;,
        Lcom/sonymobile/superstamina/gateway/GatewayController$State;
    }
.end annotation


# static fields
.field public static final DEFAULT_CLOSE_TIME:J = 0xdbba0L

.field public static final GATE_OPEN_ALWAYS:J = -0x1L

.field private static final GATE_OPEN_DELAY:J = 0xaL

.field public static final GATE_OPEN_TIME:J = 0x3cL

.field private static final HEADSET_EXTRA_STATE:Ljava/lang/String; = "state"

.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-Gateway"

.field private static final TIMEOUT_INTENT:Ljava/lang/String; = "com.sonymobile.superstamina.gateway.GatewayController"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmReceiver:Lcom/sonymobile/superstamina/gateway/GatewayController$AlarmBroadcastReceiver;

.field private mConnectionListener:Lcom/sonymobile/superstamina/gateway/GatewayController$ConnectionListener;

.field private mConnectivityMgr:Landroid/net/ConnectivityManager;

.field private mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDataListener:Lcom/sonymobile/superstamina/gateway/GatewayController$DataListener;

.field private mEnabled:Z

.field private mGeneralReceiver:Lcom/sonymobile/superstamina/gateway/GatewayController$GeneralIntentsReceiver;

.field private mNativeConnector:Lcom/sonymobile/superstamina/gateway/NativeConnector;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mState:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sonymobile/superstamina/gateway/GatewayController$State;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimeClosed:J

.field private mTimeOpened:J

.field private mWifiTetheringReceiver:Lcom/sonymobile/superstamina/gateway/GatewayController$WifiTetheringChangedReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;Lcom/sonymobile/superstamina/gateway/NativeConnector;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connector"    # Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;
    .param p3, "nativeConnector"    # Lcom/sonymobile/superstamina/gateway/NativeConnector;

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-class v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mState:Ljava/util/EnumSet;

    .line 154
    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/superstamina/gateway/GatewayController$1;-><init>(Lcom/sonymobile/superstamina/gateway/GatewayController;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 181
    iput-object p1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mContext:Landroid/content/Context;

    .line 182
    iput-object p2, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    .line 183
    iput-object p3, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mNativeConnector:Lcom/sonymobile/superstamina/gateway/NativeConnector;

    .line 184
    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$DataListener;

    invoke-direct {v0, p0, v4}, Lcom/sonymobile/superstamina/gateway/GatewayController$DataListener;-><init>(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$1;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mDataListener:Lcom/sonymobile/superstamina/gateway/GatewayController$DataListener;

    .line 185
    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$ConnectionListener;

    invoke-direct {v0, p0, v4}, Lcom/sonymobile/superstamina/gateway/GatewayController$ConnectionListener;-><init>(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$1;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mConnectionListener:Lcom/sonymobile/superstamina/gateway/GatewayController$ConnectionListener;

    .line 186
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 187
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 188
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    .line 191
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sonymobile.superstamina.gateway.GatewayController"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mPendingIntent:Landroid/app/PendingIntent;

    .line 194
    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$WifiTetheringChangedReceiver;

    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mState:Ljava/util/EnumSet;

    sget-object v2, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->WIFI_TETHERING:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/superstamina/gateway/GatewayController$WifiTetheringChangedReceiver;-><init>(Lcom/sonymobile/superstamina/gateway/GatewayController;Z)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mWifiTetheringReceiver:Lcom/sonymobile/superstamina/gateway/GatewayController$WifiTetheringChangedReceiver;

    .line 196
    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$GeneralIntentsReceiver;

    invoke-direct {v0, p0, v4}, Lcom/sonymobile/superstamina/gateway/GatewayController$GeneralIntentsReceiver;-><init>(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$1;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mGeneralReceiver:Lcom/sonymobile/superstamina/gateway/GatewayController$GeneralIntentsReceiver;

    .line 197
    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$AlarmBroadcastReceiver;

    invoke-direct {v0, p0, v4}, Lcom/sonymobile/superstamina/gateway/GatewayController$AlarmBroadcastReceiver;-><init>(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$1;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mAlarmReceiver:Lcom/sonymobile/superstamina/gateway/GatewayController$AlarmBroadcastReceiver;

    .line 198
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/gateway/GatewayController;Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/gateway/GatewayController;
    .param p1, "x1"    # Lcom/sonymobile/superstamina/gateway/GatewayController$State;
    .param p2, "x2"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/gateway/GatewayController;->setState(Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/superstamina/gateway/GatewayController;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/gateway/GatewayController;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonymobile/superstamina/gateway/GatewayController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/gateway/GatewayController;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/superstamina/gateway/GatewayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/gateway/GatewayController;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sonymobile/superstamina/gateway/GatewayController;)Ljava/util/EnumSet;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/gateway/GatewayController;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mState:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/superstamina/gateway/GatewayController;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/gateway/GatewayController;
    .param p1, "x1"    # J

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/gateway/GatewayController;->openGate(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/superstamina/gateway/GatewayController;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/superstamina/gateway/GatewayController;

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mTimeClosed:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/sonymobile/superstamina/gateway/GatewayController;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/gateway/GatewayController;
    .param p1, "x1"    # J

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/gateway/GatewayController;->setAlarm(J)V

    return-void
.end method

.method private checkGate()V
    .locals 2

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/sonymobile/superstamina/gateway/GatewayController;->updatePolledFeatures()V

    .line 323
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mEnabled:Z

    if-nez v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mState:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    const-wide/16 v0, 0xa

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/superstamina/gateway/GatewayController;->openGate(J)V

    goto :goto_0

    .line 329
    :cond_1
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/superstamina/gateway/GatewayController;->openGate(J)V

    goto :goto_0
.end method

.method private getDefaultStates()V
    .locals 7

    .prologue
    .line 251
    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 252
    .local v2, "simState":I
    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    .line 253
    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mState:Ljava/util/EnumSet;

    sget-object v5, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->NO_SIM:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 259
    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mState:Ljava/util/EnumSet;

    sget-object v5, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->FLIGHT_MODE:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 264
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 265
    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mState:Ljava/util/EnumSet;

    sget-object v5, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->BT_CONNECTED:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 270
    .local v1, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 271
    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mState:Ljava/util/EnumSet;

    sget-object v5, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->SCREEN_ON:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 278
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 279
    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mState:Ljava/util/EnumSet;

    sget-object v5, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->WIFI_TETHERING:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v4}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 283
    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mState:Ljava/util/EnumSet;

    sget-object v5, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->RESTRICT_BACKGROUND_DATA:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_5
    return-void
.end method

.method private logIddGateStatus(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 610
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

    move-result-object v2

    if-eqz p1, :cond_0

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;->ENABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;

    :goto_0
    invoke-virtual {v2, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->setState(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

    move-result-object v0

    .line 618
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;
    :try_start_0
    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/idd/api/Idd;->addEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_1
    return-void

    .line 610
    .end local v0    # "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;
    :cond_0
    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;

    goto :goto_0

    .line 619
    .restart local v0    # "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private openGate(J)V
    .locals 7
    .param p1, "keepOpenForTime"    # J

    .prologue
    const/4 v6, 0x0

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mTimeOpened:J

    .line 406
    iget-wide v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mTimeOpened:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mTimeClosed:J

    .line 408
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 409
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    new-instance v1, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    const-string v2, "socket_connect"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "open"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v6, v2, v3}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->execute(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)V

    .line 410
    return-void
.end method

.method private registerReceivers()V
    .locals 5

    .prologue
    .line 206
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mNativeConnector:Lcom/sonymobile/superstamina/gateway/NativeConnector;

    iget-object v2, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mDataListener:Lcom/sonymobile/superstamina/gateway/GatewayController$DataListener;

    invoke-virtual {v1, v2}, Lcom/sonymobile/superstamina/gateway/NativeConnector;->addListener(Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;)V

    .line 208
    invoke-direct {p0}, Lcom/sonymobile/superstamina/gateway/GatewayController;->getDefaultStates()V

    .line 211
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mAlarmReceiver:Lcom/sonymobile/superstamina/gateway/GatewayController$AlarmBroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.sonymobile.superstamina.gateway.GatewayController"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mConnectionListener:Lcom/sonymobile/superstamina/gateway/GatewayController$ConnectionListener;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 218
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mWifiTetheringReceiver:Lcom/sonymobile/superstamina/gateway/GatewayController$WifiTetheringChangedReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    .local v0, "generalIntents":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mGeneralReceiver:Lcom/sonymobile/superstamina/gateway/GatewayController$GeneralIntentsReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v2, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v1, v2}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 234
    return-void
.end method

.method private setAlarm(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 370
    return-void
.end method

.method private setState(Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V
    .locals 1
    .param p1, "state"    # Lcom/sonymobile/superstamina/gateway/GatewayController$State;
    .param p2, "enabled"    # Z

    .prologue
    .line 352
    if-eqz p2, :cond_0

    .line 353
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mState:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 359
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/superstamina/gateway/GatewayController;->checkGate()V

    .line 360
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mState:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private unregisterReceivers()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mNativeConnector:Lcom/sonymobile/superstamina/gateway/NativeConnector;

    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mDataListener:Lcom/sonymobile/superstamina/gateway/GatewayController$DataListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/superstamina/gateway/NativeConnector;->removeListener(Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;)V

    .line 238
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mAlarmReceiver:Lcom/sonymobile/superstamina/gateway/GatewayController$AlarmBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mConnectionListener:Lcom/sonymobile/superstamina/gateway/GatewayController$ConnectionListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 240
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mWifiTetheringReceiver:Lcom/sonymobile/superstamina/gateway/GatewayController$WifiTetheringChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 241
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mGeneralReceiver:Lcom/sonymobile/superstamina/gateway/GatewayController$GeneralIntentsReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 242
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 243
    return-void
.end method

.method private updatePolledFeatures()V
    .locals 2

    .prologue
    .line 337
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mState:Ljava/util/EnumSet;

    sget-object v1, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->STREAMING_MUSIC:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mState:Ljava/util/EnumSet;

    sget-object v1, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->STREAMING_MUSIC:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public debug([Ljava/lang/String;)I
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 379
    array-length v2, p1

    if-ne v2, v6, :cond_3

    .line 380
    const-string v2, "enable"

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    invoke-virtual {p0, v5}, Lcom/sonymobile/superstamina/gateway/GatewayController;->enableGate(Z)V

    .line 392
    :goto_0
    return v4

    .line 383
    :cond_0
    const-string v2, "disable"

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    invoke-virtual {p0, v4}, Lcom/sonymobile/superstamina/gateway/GatewayController;->enableGate(Z)V

    goto :goto_0

    .line 386
    :cond_1
    const-string v2, "always_open"

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    const-wide/16 v2, -0x1

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/superstamina/gateway/GatewayController;->openGate(J)V

    goto :goto_0

    .line 389
    :cond_2
    const-string v2, "open"

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 390
    aget-object v2, p1, v6

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 391
    .local v0, "time":J
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/superstamina/gateway/GatewayController;->openGate(J)V

    goto :goto_0

    .line 395
    .end local v0    # "time":J
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Usage: gateway enable|disable|always_open|open <time_in_seconds>"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public enableGate(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mEnabled:Z

    if-eq p1, v0, :cond_0

    .line 589
    if-eqz p1, :cond_1

    .line 590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mEnabled:Z

    .line 591
    invoke-direct {p0}, Lcom/sonymobile/superstamina/gateway/GatewayController;->registerReceivers()V

    .line 599
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/gateway/GatewayController;->logIddGateStatus(Z)V

    .line 601
    :cond_0
    return-void

    .line 593
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mEnabled:Z

    .line 594
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 595
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/superstamina/gateway/GatewayController;->openGate(J)V

    .line 596
    invoke-direct {p0}, Lcom/sonymobile/superstamina/gateway/GatewayController;->unregisterReceivers()V

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mEnabled:Z

    return v0
.end method

.method public onBatteryChanged(IZ)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "plugged"    # Z

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/GatewayController;->mState:Ljava/util/EnumSet;

    sget-object v1, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->PLUGGED:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    sget-object v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->PLUGGED:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    invoke-direct {p0, v0, p2}, Lcom/sonymobile/superstamina/gateway/GatewayController;->setState(Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V

    goto :goto_0
.end method

.method public onScreenOn(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 309
    sget-object v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->SCREEN_ON:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/superstamina/gateway/GatewayController;->setState(Lcom/sonymobile/superstamina/gateway/GatewayController$State;Z)V

    .line 310
    return-void
.end method
