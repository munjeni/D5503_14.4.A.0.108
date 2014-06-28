.class final Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;
.super Landroid/os/Handler;
.source "AutoRegulatoryDomain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/AutoRegulatoryDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateLogic"
.end annotation


# static fields
.field private static final ACTION_HYSTERESIS_TIMER:Ljava/lang/String; = "com.sonyericsson.intent.action.HYSTERESIS_TIMER"

.field public static final EVENT_HYSTERESIS_ALARM:I = 0x0

.field public static final EVENT_UPDATE:I = 0x1

.field private static final LOCAL_LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "AutoRegulatoryDomain"

.field private static final UPDATE_HYSTERESIS_TIME:I = 0x1b7740


# instance fields
.field private final mDefaultCountryCode:Ljava/lang/String;

.field private final mHysteresisAlarmManager:Landroid/app/AlarmManager;

.field private final mHysteresisIntent:Landroid/app/PendingIntent;

.field private mHysteresisTimerStarted:Z

.field private mLastSetCountryCode:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUseIw:Z

.field private final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiStateMachine"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 60
    iput-boolean v4, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisTimerStarted:Z

    .line 61
    const-string v2, "00"

    iput-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mLastSetCountryCode:Ljava/lang/String;

    .line 64
    new-instance v2, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic$1;

    invoke-direct {v2, p0}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic$1;-><init>(Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;)V

    iput-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    iput-object p2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 94
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 96
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisAlarmManager:Landroid/app/AlarmManager;

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.intent.action.HYSTERESIS_TIMER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 99
    .local v0, "hysteresisIntent":Landroid/content/Intent;
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisIntent:Landroid/app/PendingIntent;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mUseIw:Z

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mDefaultCountryCode:Ljava/lang/String;

    .line 105
    iget-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mDefaultCountryCode:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->setCountryCode(Ljava/lang/String;)V

    .line 107
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.sonyericsson.intent.action.HYSTERESIS_TIMER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    return-void
.end method

.method private getCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    iget-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 143
    .local v1, "simState":I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 144
    iget-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "countryCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .end local v0    # "countryCode":Ljava/lang/String;
    .end local v1    # "simState":I
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mDefaultCountryCode:Ljava/lang/String;

    goto :goto_0
.end method

.method private setCountryCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-boolean v0, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mUseIw:Z

    if-eqz v0, :cond_1

    .line 155
    const-string v0, "ctl.start"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iw_command:reg set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    invoke-direct {p0}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->stopHysteresisTimer()V

    .line 160
    iget-object v0, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mLastSetCountryCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const-string v0, "AutoRegulatoryDomain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Regulatory domain changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iput-object p1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mLastSetCountryCode:Ljava/lang/String;

    .line 164
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private startHysteresisTimer()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 167
    iget-boolean v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisTimerStarted:Z

    if-nez v2, :cond_0

    .line 168
    iget-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 169
    const-string v2, "AutoRegulatoryDomain"

    const-string v3, "Starting hysteresis timer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long v0, v2, v4

    .line 171
    .local v0, "timeout":J
    iget-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v0, v1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 172
    iput-boolean v6, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisTimerStarted:Z

    .line 174
    .end local v0    # "timeout":J
    :cond_0
    return-void
.end method

.method private stopHysteresisTimer()V
    .locals 2

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisTimerStarted:Z

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "AutoRegulatoryDomain"

    const-string v1, "Stopping hysteresis timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisTimerStarted:Z

    .line 182
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 117
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 135
    const-string v1, "AutoRegulatoryDomain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    return-void

    .line 119
    :pswitch_0
    invoke-direct {p0}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "countryCode":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mDefaultCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-direct {p0, v0}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->setCountryCode(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->startHysteresisTimer()V

    goto :goto_0

    .line 132
    .end local v0    # "countryCode":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->setCountryCode(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
