.class public Lcom/sonymobile/superstamina/analyzer/WifiReminder;
.super Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
.source "WifiReminder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/analyzer/WifiReminder$1;,
        Lcom/sonymobile/superstamina/analyzer/WifiReminder$LBWReceiver;,
        Lcom/sonymobile/superstamina/analyzer/WifiReminder$WifiReceiver;
    }
.end annotation


# static fields
.field private static final CONTENT_URI_LBW_SETTINGS_STATE:Landroid/net/Uri;

.field private static final INTENT_LBW_DISABLED:Ljava/lang/String; = "com.sonyericsson.android.locationbasedwifi.ACTION_DISABLE"

.field private static final INTENT_LBW_ENABLED:Ljava/lang/String; = "com.sonyericsson.android.locationbasedwifi.ACTION_ENABLE"

.field private static final INTENT_SHOW_NOTIFICATION:Ljava/lang/String; = "com.sonymobile.LBW_SHOW_NOTIFICATION"

.field private static final LBW_ENABLED_COLUMN_NAME:Ljava/lang/String; = "lbw_enabled"

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-WifiAnalyzer"

.field private static final NOT_CONNECTED_TIME:J = 0x1499700L


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

.field mContext:Landroid/content/Context;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mWifiIntentFilter:Landroid/content/IntentFilter;

.field private mWifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "content://com.sonyericsson.android.locationbasedwifi.settingsprovider/lbw_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->CONTENT_URI_LBW_SETTINGS_STATE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/superstamina/analyzer/Analyzer;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "analyzer"    # Lcom/sonymobile/superstamina/analyzer/Analyzer;

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;-><init>()V

    .line 54
    new-instance v2, Lcom/sonymobile/superstamina/analyzer/WifiReminder$WifiReceiver;

    invoke-direct {v2, p0, v4}, Lcom/sonymobile/superstamina/analyzer/WifiReminder$WifiReceiver;-><init>(Lcom/sonymobile/superstamina/analyzer/WifiReminder;Lcom/sonymobile/superstamina/analyzer/WifiReminder$1;)V

    iput-object v2, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sonymobile.LBW_SHOW_NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "alarmIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 69
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mAlarmManager:Landroid/app/AlarmManager;

    .line 71
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mWifiIntentFilter:Landroid/content/IntentFilter;

    .line 72
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mWifiIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mWifiIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mWifiIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.sonymobile.LBW_SHOW_NOTIFICATION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v1, "lbwIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.sonyericsson.android.locationbasedwifi.ACTION_ENABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v2, "com.sonyericsson.android.locationbasedwifi.ACTION_DISABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    new-instance v2, Lcom/sonymobile/superstamina/analyzer/WifiReminder$LBWReceiver;

    invoke-direct {v2, p0, v4}, Lcom/sonymobile/superstamina/analyzer/WifiReminder$LBWReceiver;-><init>(Lcom/sonymobile/superstamina/analyzer/WifiReminder;Lcom/sonymobile/superstamina/analyzer/WifiReminder$1;)V

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->initWifiAnalyzer()V

    .line 83
    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/superstamina/analyzer/WifiReminder;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/analyzer/WifiReminder;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->wifiConnected()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/superstamina/analyzer/WifiReminder;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/analyzer/WifiReminder;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->wifiDisconnected()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/superstamina/analyzer/WifiReminder;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/analyzer/WifiReminder;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->wifiEnabled()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/superstamina/analyzer/WifiReminder;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/analyzer/WifiReminder;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->wifiDisabled()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/superstamina/analyzer/WifiReminder;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/analyzer/WifiReminder;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->showNotification()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/superstamina/analyzer/WifiReminder;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/analyzer/WifiReminder;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->lbwEnabled()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/superstamina/analyzer/WifiReminder;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/analyzer/WifiReminder;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->lbwDisabled()V

    return-void
.end method

.method private initWifiAnalyzer()V
    .locals 8

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->isLBWEnabled()Z

    move-result v1

    .line 127
    .local v1, "lbwEnabled":Z
    if-nez v1, :cond_0

    .line 128
    iget-object v5, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mWifiIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    iget-object v5, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 130
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    .line 131
    .local v3, "wifiEnabled":Z
    if-eqz v3, :cond_0

    .line 132
    iget-object v5, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 134
    .local v2, "manager":Landroid/net/ConnectivityManager;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 135
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-nez v5, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->startTimer()V

    .line 142
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "manager":Landroid/net/ConnectivityManager;
    .end local v3    # "wifiEnabled":Z
    .end local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method private isLBWEnabled()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->CONTENT_URI_LBW_SETTINGS_STATE:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 147
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 148
    .local v8, "result":Z
    if-eqz v6, :cond_1

    .line 150
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "lbw_enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 152
    .local v7, "isEnabled":I
    if-eqz v7, :cond_2

    const/4 v8, 0x1

    .line 155
    .end local v7    # "isEnabled":I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_1
    return v8

    .line 152
    .restart local v7    # "isEnabled":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 155
    .end local v7    # "isEnabled":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private lbwDisabled()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->initWifiAnalyzer()V

    .line 121
    return-void
.end method

.method private lbwEnabled()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->removeTimer()V

    .line 117
    return-void
.end method

.method private removeTimer()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 92
    return-void
.end method

.method private showNotification()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->triggerReminder(I)V

    .line 112
    return-void
.end method

.method private startTimer()V
    .locals 6

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x1499700

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 88
    return-void
.end method

.method private wifiConnected()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->removeTimer()V

    .line 104
    return-void
.end method

.method private wifiDisabled()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->removeTimer()V

    .line 100
    return-void
.end method

.method private wifiDisconnected()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->startTimer()V

    .line 108
    return-void
.end method

.method private wifiEnabled()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;->startTimer()V

    .line 96
    return-void
.end method
