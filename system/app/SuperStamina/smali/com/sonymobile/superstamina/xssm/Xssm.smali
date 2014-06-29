.class public final Lcom/sonymobile/superstamina/xssm/Xssm;
.super Ljava/lang/Object;
.source "Xssm.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/xssm/Xssm$3;,
        Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateTimeoutReceiver;,
        Lcom/sonymobile/superstamina/xssm/Xssm$PowerEventObserver;,
        Lcom/sonymobile/superstamina/xssm/Xssm$XssmEmgSmsCbReceiver;,
        Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangedReceiver;,
        Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangeHandler;
    }
.end annotation


# static fields
.field public static final ACTION_POWER_STATE_CHANGED:Ljava/lang/String; = "com.sonymobile.SUPER_STAMINA_POWER_STATE_CHANGED"

.field private static final ACTION_POWER_STATE_TIMEOUT:Ljava/lang/String; = "com.sonymobile.SUPER_STAMINA_POWER_STATE_TIMEOUT"

.field private static final ALARM_WINDOW_LENGTH:J = 0xea60L

.field public static final EXTRA_POWER_STATE:Ljava/lang/String; = "power_state"

.field private static final LED_OVERRIDE_DISABLE:Z = false

.field private static final LED_OVERRIDE_ENABLE:Z = true

.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-Xssm"

.field private static final MSG_ACTIVATE:I = 0x3

.field private static final MSG_INIT:I = 0x1

.field private static final MSG_INIT_NATIVE_SERVICE:I = 0x2

.field private static final MSG_LATE_RESUME:I = 0x5

.field private static final MSG_POWER_STATE_TIMEOUT:I = 0x6

.field private static final MSG_PREPARE_SUSPEND:I = 0x4

.field private static final MSG_RELEASE_WAKELOCK:I = 0x7

.field private static final SSM_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/platform/sony_ssm"

.field private static final WAKELOCK_TIMEOUT:J = 0x7530L


# instance fields
.field private mAlarmManager:Landroid/app/IAlarmManager;

.field private mAlarmTimeSmsCbShutdown:J

.field private mBlueLedIntensity:I

.field private mFirewall:Lcom/sonymobile/superstamina/xssm/Firewall;

.field private mGreenLedIntensity:I

.field private mHandler:Landroid/os/Handler;

.field private mNotifyLedOffTime:I

.field private mNotifyLedOnTime:I

.field private mPowerEventObserver:Lcom/sonymobile/superstamina/xssm/Xssm$PowerEventObserver;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerState:Lcom/sonymobile/superstamina/xssm/PowerState;

.field private mPowerStateTimeoutDuration:J

.field private mPowerStateTimeoutPendingIntent:Landroid/app/PendingIntent;

.field private mPowerStateTimeoutReceiver:Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateTimeoutReceiver;

.field private mReadyForPowerState2:Z

.field private mRedLedIntensity:I

.field private mSSMDriver:Lcom/sonymobile/superstamina/xssm/SSMDriver;

.field private mService:Lcom/sonymobile/superstamina/XperiaPowerService;

.field private mThread:Landroid/os/HandlerThread;

.field mWhiteListGroups:Lcom/sonymobile/superstamina/xssm/WhiteListGroups;

.field private mWhitelistController:Lcom/sonymobile/superstamina/xssm/WhitelistController;

.field mXssmEmgSmsCbReceiver:Lcom/sonymobile/superstamina/xssm/Xssm$XssmEmgSmsCbReceiver;

.field private mXssmNoProcessSync:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/XperiaPowerService;)V
    .locals 2
    .param p1, "service"    # Lcom/sonymobile/superstamina/XperiaPowerService;

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mXssmNoProcessSync:Z

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mAlarmTimeSmsCbShutdown:J

    .line 161
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    .line 164
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SuperStamina-Xssm"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mThread:Landroid/os/HandlerThread;

    .line 165
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mHandler:Landroid/os/Handler;

    .line 167
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 168
    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/superstamina/xssm/Xssm;Lcom/sonymobile/superstamina/xssm/PowerState;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/Xssm;
    .param p1, "x1"    # Lcom/sonymobile/superstamina/xssm/PowerState;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/xssm/Xssm;->setPowerStateLocked(Lcom/sonymobile/superstamina/xssm/PowerState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/superstamina/xssm/Xssm;)Lcom/sonymobile/superstamina/xssm/WhitelistController;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/Xssm;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mWhitelistController:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/superstamina/xssm/Xssm;)Lcom/sonymobile/superstamina/xssm/Firewall;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/Xssm;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mFirewall:Lcom/sonymobile/superstamina/xssm/Firewall;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/superstamina/xssm/Xssm;)Landroid/app/IAlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/Xssm;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mAlarmManager:Landroid/app/IAlarmManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/superstamina/xssm/Xssm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/Xssm;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mXssmNoProcessSync:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sonymobile/superstamina/xssm/Xssm;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/Xssm;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mXssmNoProcessSync:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sonymobile/superstamina/xssm/Xssm;Lcom/sonymobile/superstamina/xssm/PowerState;Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/Xssm;
    .param p1, "x1"    # Lcom/sonymobile/superstamina/xssm/PowerState;
    .param p2, "x2"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/xssm/Xssm;->sendPowerStateChange(Lcom/sonymobile/superstamina/xssm/PowerState;Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/superstamina/xssm/Xssm;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/Xssm;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sonymobile/superstamina/xssm/Xssm;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/Xssm;
    .param p1, "x1"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mAlarmTimeSmsCbShutdown:J

    return-wide p1
.end method

.method private activateImpl(Z)V
    .locals 8
    .param p1, "activate"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 318
    if-eqz p1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mSSMDriver:Lcom/sonymobile/superstamina/xssm/SSMDriver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/superstamina/xssm/SSMDriver;->enableLateResumeEvents(Z)V

    .line 325
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mSSMDriver:Lcom/sonymobile/superstamina/xssm/SSMDriver;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/xssm/SSMDriver;->requestSuspendEvent()V

    .line 329
    new-instance v1, Lcom/sonymobile/superstamina/xssm/Xssm$XssmEmgSmsCbReceiver;

    invoke-direct {v1, p0, v5}, Lcom/sonymobile/superstamina/xssm/Xssm$XssmEmgSmsCbReceiver;-><init>(Lcom/sonymobile/superstamina/xssm/Xssm;Lcom/sonymobile/superstamina/xssm/Xssm$1;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mXssmEmgSmsCbReceiver:Lcom/sonymobile/superstamina/xssm/Xssm$XssmEmgSmsCbReceiver;

    .line 330
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 331
    .local v0, "filterEmg":Landroid/content/IntentFilter;
    const-string v1, "com.sonymobile.XSSM_SMS_EMERGENCY_CB"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mXssmEmgSmsCbReceiver:Lcom/sonymobile/superstamina/xssm/Xssm$XssmEmgSmsCbReceiver;

    const-string v3, "android.permission.BROADCAST_SMS"

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 335
    iput-boolean v4, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mXssmNoProcessSync:Z

    .line 336
    iput-wide v6, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mAlarmTimeSmsCbShutdown:J

    .line 338
    sget-object v1, Lcom/sonymobile/superstamina/xssm/PowerState;->POWER_STATE_0:Lcom/sonymobile/superstamina/xssm/PowerState;

    iput-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerState:Lcom/sonymobile/superstamina/xssm/PowerState;

    .line 340
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerStateTimeoutReceiver:Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateTimeoutReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.sonymobile.SUPER_STAMINA_POWER_STATE_TIMEOUT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 342
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerEventObserver:Lcom/sonymobile/superstamina/xssm/Xssm$PowerEventObserver;

    const-string v2, "DEVPATH=/devices/platform/sony_ssm"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 367
    .end local v0    # "filterEmg":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerState:Lcom/sonymobile/superstamina/xssm/PowerState;

    sget-object v2, Lcom/sonymobile/superstamina/xssm/PowerState;->POWER_STATE_0:Lcom/sonymobile/superstamina/xssm/PowerState;

    if-eq v1, v2, :cond_2

    .line 347
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mXssmEmgSmsCbReceiver:Lcom/sonymobile/superstamina/xssm/Xssm$XssmEmgSmsCbReceiver;

    if-eqz v1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mXssmEmgSmsCbReceiver:Lcom/sonymobile/superstamina/xssm/Xssm$XssmEmgSmsCbReceiver;

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    iput-boolean v4, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mXssmNoProcessSync:Z

    .line 350
    iput-wide v6, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mAlarmTimeSmsCbShutdown:J

    .line 351
    iput-object v5, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mXssmEmgSmsCbReceiver:Lcom/sonymobile/superstamina/xssm/Xssm$XssmEmgSmsCbReceiver;

    .line 354
    :cond_1
    sget-object v1, Lcom/sonymobile/superstamina/xssm/PowerState;->POWER_STATE_0:Lcom/sonymobile/superstamina/xssm/PowerState;

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/xssm/Xssm;->setPowerStateLocked(Lcom/sonymobile/superstamina/xssm/PowerState;)V

    .line 357
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerEventObserver:Lcom/sonymobile/superstamina/xssm/Xssm$PowerEventObserver;

    invoke-virtual {v1}, Landroid/os/UEventObserver;->stopObserving()V

    .line 358
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mSSMDriver:Lcom/sonymobile/superstamina/xssm/SSMDriver;

    invoke-virtual {v1, v4}, Lcom/sonymobile/superstamina/xssm/SSMDriver;->enableLateResumeEvents(Z)V

    .line 365
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerStateTimeoutReceiver:Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateTimeoutReceiver;

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private init()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x4

    .line 212
    new-instance v7, Lcom/sonymobile/superstamina/xssm/SSMDriver;

    iget-object v8, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v8}, Lcom/sonymobile/superstamina/XperiaPowerService;->getConnector()Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sonymobile/superstamina/xssm/SSMDriver;-><init>(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;)V

    iput-object v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mSSMDriver:Lcom/sonymobile/superstamina/xssm/SSMDriver;

    .line 213
    new-instance v7, Lcom/sonymobile/superstamina/xssm/Firewall;

    iget-object v8, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v8}, Lcom/sonymobile/superstamina/XperiaPowerService;->getConnector()Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sonymobile/superstamina/xssm/Firewall;-><init>(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;)V

    iput-object v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mFirewall:Lcom/sonymobile/superstamina/xssm/Firewall;

    .line 214
    iget-object v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mSSMDriver:Lcom/sonymobile/superstamina/xssm/SSMDriver;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sonymobile/superstamina/xssm/SSMDriver;->enable(Z)V

    .line 216
    iget-object v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerStateTimeoutDuration:J

    .line 218
    new-instance v7, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateTimeoutReceiver;

    invoke-direct {v7, p0, v9}, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateTimeoutReceiver;-><init>(Lcom/sonymobile/superstamina/xssm/Xssm;Lcom/sonymobile/superstamina/xssm/Xssm$1;)V

    iput-object v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerStateTimeoutReceiver:Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateTimeoutReceiver;

    .line 219
    new-instance v7, Lcom/sonymobile/superstamina/xssm/Xssm$PowerEventObserver;

    invoke-direct {v7, p0, v9}, Lcom/sonymobile/superstamina/xssm/Xssm$PowerEventObserver;-><init>(Lcom/sonymobile/superstamina/xssm/Xssm;Lcom/sonymobile/superstamina/xssm/Xssm$1;)V

    iput-object v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerEventObserver:Lcom/sonymobile/superstamina/xssm/Xssm$PowerEventObserver;

    .line 220
    iget-object v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.sonymobile.SUPER_STAMINA_POWER_STATE_TIMEOUT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v11, v8, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerStateTimeoutPendingIntent:Landroid/app/PendingIntent;

    .line 222
    const-string v7, "alarm"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mAlarmManager:Landroid/app/IAlarmManager;

    .line 224
    iget-object v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerManager:Landroid/os/PowerManager;

    .line 225
    new-instance v7, Lcom/sonymobile/superstamina/xssm/WhitelistController;

    iget-object v8, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    new-instance v9, Lcom/sonymobile/superstamina/xssm/Xssm$1;

    invoke-direct {v9, p0}, Lcom/sonymobile/superstamina/xssm/Xssm$1;-><init>(Lcom/sonymobile/superstamina/xssm/Xssm;)V

    invoke-direct {v7, v8, v9}, Lcom/sonymobile/superstamina/xssm/WhitelistController;-><init>(Landroid/content/Context;Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;)V

    iput-object v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mWhitelistController:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    .line 256
    new-instance v7, Lcom/sonymobile/superstamina/xssm/WhiteListGroups;

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/xssm/Xssm;->getService()Lcom/sonymobile/superstamina/XperiaPowerService;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mWhitelistController:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    invoke-direct {v7, v8, v9}, Lcom/sonymobile/superstamina/xssm/WhiteListGroups;-><init>(Landroid/content/Context;Lcom/sonymobile/superstamina/xssm/WhitelistController;)V

    iput-object v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mWhiteListGroups:Lcom/sonymobile/superstamina/xssm/WhiteListGroups;

    .line 259
    iget-object v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 262
    .local v5, "resources":Landroid/content/res/Resources;
    const v7, 0x106006f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 268
    .local v6, "rgbVal":I
    const/high16 v7, 0x7f080000

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 271
    .local v3, "minLedLevel":I
    const/high16 v7, 0xff0000

    and-int/2addr v7, v6

    shr-int/lit8 v4, v7, 0x10

    .line 272
    .local v4, "r":I
    const v7, 0xff00

    and-int/2addr v7, v6

    shr-int/lit8 v2, v7, 0x8

    .line 273
    .local v2, "g":I
    and-int/lit16 v0, v6, 0xff

    .line 277
    .local v0, "b":I
    :cond_0
    :goto_0
    if-gt v4, v3, :cond_1

    if-nez v4, :cond_3

    :cond_1
    if-gt v2, v3, :cond_2

    if-nez v2, :cond_3

    :cond_2
    if-gt v0, v3, :cond_4

    if-eqz v0, :cond_4

    .line 291
    :cond_3
    iput v4, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mRedLedIntensity:I

    .line 292
    iput v2, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mGreenLedIntensity:I

    .line 293
    iput v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mBlueLedIntensity:I

    .line 294
    const v7, 0x10e0021

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mNotifyLedOnTime:I

    .line 296
    const v7, 0x10e0022

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mNotifyLedOffTime:I

    .line 301
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mAlarmManager:Landroid/app/IAlarmManager;

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/xssm/Xssm;->getService()Lcom/sonymobile/superstamina/XperiaPowerService;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IAlarmManager;->setInternalWhitelist(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_1
    return-void

    .line 284
    :cond_4
    if-le v4, v10, :cond_5

    add-int/lit8 v4, v4, -0x4

    .line 285
    :cond_5
    if-le v0, v10, :cond_6

    add-int/lit8 v0, v0, -0x4

    .line 286
    :cond_6
    if-le v2, v10, :cond_0

    add-int/lit8 v2, v2, -0x4

    goto :goto_0

    .line 303
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Landroid/os/RemoteException;
    const-string v7, "SuperStamina-Xssm"

    const-string v8, "Failed to set internal whitelist"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initNativeService()V
    .locals 6

    .prologue
    .line 492
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mFirewall:Lcom/sonymobile/superstamina/xssm/Firewall;

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/xssm/Firewall;->init()V

    .line 493
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mWhitelistController:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->init()V

    .line 494
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mWhiteListGroups:Lcom/sonymobile/superstamina/xssm/WhiteListGroups;

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/xssm/WhiteListGroups;->init()V

    .line 495
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    iget v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mRedLedIntensity:I

    iget v2, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mGreenLedIntensity:I

    iget v3, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mBlueLedIntensity:I

    iget v4, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mNotifyLedOnTime:I

    iget v5, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mNotifyLedOffTime:I

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/superstamina/XperiaPowerService;->initLedsOverride(IIIII)V

    .line 497
    return-void
.end method

.method private onLateResume()V
    .locals 3

    .prologue
    .line 514
    sget-object v1, Lcom/sonymobile/superstamina/xssm/Xssm$3;->$SwitchMap$com$sonymobile$superstamina$xssm$PowerState:[I

    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerState:Lcom/sonymobile/superstamina/xssm/PowerState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 532
    :goto_0
    :pswitch_0
    return-void

    .line 523
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mAlarmManager:Landroid/app/IAlarmManager;

    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerStateTimeoutPendingIntent:Landroid/app/PendingIntent;

    invoke-interface {v1, v2}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mSSMDriver:Lcom/sonymobile/superstamina/xssm/SSMDriver;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/xssm/SSMDriver;->requestSuspendEvent()V

    .line 529
    sget-object v1, Lcom/sonymobile/superstamina/xssm/PowerState;->POWER_STATE_0:Lcom/sonymobile/superstamina/xssm/PowerState;

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/xssm/Xssm;->setPowerStateLocked(Lcom/sonymobile/superstamina/xssm/PowerState;)V

    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onPowerStateTimeout()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerState:Lcom/sonymobile/superstamina/xssm/PowerState;

    sget-object v1, Lcom/sonymobile/superstamina/xssm/PowerState;->POWER_STATE_1:Lcom/sonymobile/superstamina/xssm/PowerState;

    if-ne v0, v1, :cond_0

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mReadyForPowerState2:Z

    .line 580
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mSSMDriver:Lcom/sonymobile/superstamina/xssm/SSMDriver;

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/xssm/SSMDriver;->requestSuspendEvent()V

    .line 582
    :cond_0
    return-void
.end method

.method private onPrepareSuspend()V
    .locals 8

    .prologue
    .line 536
    sget-object v1, Lcom/sonymobile/superstamina/xssm/Xssm$3;->$SwitchMap$com$sonymobile$superstamina$xssm$PowerState:[I

    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerState:Lcom/sonymobile/superstamina/xssm/PowerState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 540
    :pswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mReadyForPowerState2:Z

    .line 541
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerStateTimeoutDuration:J

    add-long v2, v4, v6

    .line 543
    .local v2, "alarmTime":J
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 544
    .local v0, "mgr":Landroid/app/AlarmManager;
    const/4 v1, 0x3

    const-wide/32 v4, 0xea60

    iget-object v6, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerStateTimeoutPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    .line 547
    sget-object v1, Lcom/sonymobile/superstamina/xssm/PowerState;->POWER_STATE_1:Lcom/sonymobile/superstamina/xssm/PowerState;

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/xssm/Xssm;->setPowerStateLocked(Lcom/sonymobile/superstamina/xssm/PowerState;)V

    goto :goto_0

    .line 552
    .end local v0    # "mgr":Landroid/app/AlarmManager;
    .end local v2    # "alarmTime":J
    :pswitch_1
    iget-boolean v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mReadyForPowerState2:Z

    if-eqz v1, :cond_0

    .line 553
    sget-object v1, Lcom/sonymobile/superstamina/xssm/PowerState;->POWER_STATE_2:Lcom/sonymobile/superstamina/xssm/PowerState;

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/xssm/Xssm;->setPowerStateLocked(Lcom/sonymobile/superstamina/xssm/PowerState;)V

    goto :goto_0

    .line 536
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onReleaseWakelock(Landroid/os/PowerManager$WakeLock;)V
    .locals 2
    .param p1, "wakelock"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 589
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 594
    :goto_0
    return-void

    .line 592
    :cond_0
    const-string v0, "SuperStamina-Xssm"

    const-string v1, "Wake lock not held!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendPowerStateChange(Lcom/sonymobile/superstamina/xssm/PowerState;Landroid/os/PowerManager$WakeLock;)V
    .locals 9
    .param p1, "newPowerState"    # Lcom/sonymobile/superstamina/xssm/PowerState;
    .param p2, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    const/4 v3, 0x0

    .line 481
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.sonymobile.SUPER_STAMINA_POWER_STATE_CHANGED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .local v1, "onPowerStateChangedIntent":Landroid/content/Intent;
    const-string v0, "power_state"

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 484
    new-instance v4, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangedReceiver;

    invoke-direct {v4, p0, p2}, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangedReceiver;-><init>(Lcom/sonymobile/superstamina/xssm/Xssm;Landroid/os/PowerManager$WakeLock;)V

    .line 486
    .local v4, "powerStateChangedReceiver":Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangedReceiver;
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/ContextWrapper;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 488
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/XperiaPowerService;->onXssmStateChanged(Lcom/sonymobile/superstamina/xssm/PowerState;)V

    .line 489
    return-void
.end method

.method private setPowerStateLocked(Lcom/sonymobile/superstamina/xssm/PowerState;)V
    .locals 9
    .param p1, "powerState"    # Lcom/sonymobile/superstamina/xssm/PowerState;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 421
    iget-object v5, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerManager:Landroid/os/PowerManager;

    const-string v6, "SuperStamina-Xssm"

    invoke-virtual {v5, v8, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 423
    .local v4, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v5, 0x7530

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 425
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerState:Lcom/sonymobile/superstamina/xssm/PowerState;

    .line 426
    .local v2, "oldState":Lcom/sonymobile/superstamina/xssm/PowerState;
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mPowerState:Lcom/sonymobile/superstamina/xssm/PowerState;

    .line 434
    sget-object v5, Lcom/sonymobile/superstamina/xssm/Xssm$3;->$SwitchMap$com$sonymobile$superstamina$xssm$PowerState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 474
    :goto_0
    return-void

    .line 436
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 438
    .local v0, "currentTime":J
    iget-wide v5, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mAlarmTimeSmsCbShutdown:J

    cmp-long v5, v5, v0

    if-gtz v5, :cond_0

    .line 439
    iput-boolean v7, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mXssmNoProcessSync:Z

    .line 440
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mAlarmTimeSmsCbShutdown:J

    .line 450
    :cond_0
    sget-object v5, Lcom/sonymobile/superstamina/xssm/PowerState;->POWER_STATE_2:Lcom/sonymobile/superstamina/xssm/PowerState;

    if-ne v2, v5, :cond_1

    .line 451
    new-instance v3, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangeHandler;

    invoke-direct {v3, p0, v4, p1}, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangeHandler;-><init>(Lcom/sonymobile/superstamina/xssm/Xssm;Landroid/os/PowerManager$WakeLock;Lcom/sonymobile/superstamina/xssm/PowerState;)V

    .line 453
    .local v3, "psChangeHandler":Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangeHandler;
    iget-object v5, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mFirewall:Lcom/sonymobile/superstamina/xssm/Firewall;

    invoke-virtual {v5, v7, v3}, Lcom/sonymobile/superstamina/xssm/Firewall;->enable(ZLandroid/os/Handler;)V

    .line 460
    .end local v3    # "psChangeHandler":Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangeHandler;
    :goto_1
    iget-object v5, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v5, v7}, Lcom/sonymobile/superstamina/XperiaPowerService;->enableLedsOverride(Z)V

    goto :goto_0

    .line 458
    :cond_1
    sget-object v5, Lcom/sonymobile/superstamina/xssm/PowerState;->POWER_STATE_0:Lcom/sonymobile/superstamina/xssm/PowerState;

    invoke-direct {p0, v5, v4}, Lcom/sonymobile/superstamina/xssm/Xssm;->sendPowerStateChange(Lcom/sonymobile/superstamina/xssm/PowerState;Landroid/os/PowerManager$WakeLock;)V

    goto :goto_1

    .line 464
    .end local v0    # "currentTime":J
    :pswitch_1
    iget-object v5, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v5, v7}, Lcom/sonymobile/superstamina/XperiaPowerService;->enableLedsOverride(Z)V

    .line 465
    sget-object v5, Lcom/sonymobile/superstamina/xssm/PowerState;->POWER_STATE_1:Lcom/sonymobile/superstamina/xssm/PowerState;

    invoke-direct {p0, v5, v4}, Lcom/sonymobile/superstamina/xssm/Xssm;->sendPowerStateChange(Lcom/sonymobile/superstamina/xssm/PowerState;Landroid/os/PowerManager$WakeLock;)V

    goto :goto_0

    .line 469
    :pswitch_2
    iget-object v5, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mFirewall:Lcom/sonymobile/superstamina/xssm/Firewall;

    const/4 v6, 0x0

    invoke-virtual {v5, v8, v6}, Lcom/sonymobile/superstamina/xssm/Firewall;->enable(ZLandroid/os/Handler;)V

    .line 470
    sget-object v5, Lcom/sonymobile/superstamina/xssm/PowerState;->POWER_STATE_2:Lcom/sonymobile/superstamina/xssm/PowerState;

    invoke-direct {p0, v5, v4}, Lcom/sonymobile/superstamina/xssm/Xssm;->sendPowerStateChange(Lcom/sonymobile/superstamina/xssm/PowerState;Landroid/os/PowerManager$WakeLock;)V

    goto :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public activate(Z)V
    .locals 5
    .param p1, "activate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 313
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 314
    return-void

    :cond_0
    move v0, v1

    .line 313
    goto :goto_0
.end method

.method public addPackageToOperatorWhitelist(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mWhitelistController:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->addPackageToOperatorWhitelist(Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public debug([Ljava/lang/String;)I
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 692
    const-string v3, "xssm"

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 693
    const-string v3, "whitelist"

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 694
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mWhitelistController:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    invoke-virtual {v2, p1}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->debug([Ljava/lang/String;)I

    move-result v2

    .line 709
    :goto_0
    return v2

    .line 695
    :cond_0
    const-string v3, "firewall"

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 696
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mFirewall:Lcom/sonymobile/superstamina/xssm/Firewall;

    invoke-virtual {v2, p1}, Lcom/sonymobile/superstamina/xssm/Firewall;->debug([Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 697
    :cond_1
    const-string v3, "setpowerstate"

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 698
    array-length v3, p1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 699
    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 700
    .local v0, "powerState":I
    invoke-static {}, Lcom/sonymobile/superstamina/xssm/PowerState;->values()[Lcom/sonymobile/superstamina/xssm/PowerState;

    move-result-object v3

    aget-object v1, v3, v0

    .line 702
    .local v1, "state":Lcom/sonymobile/superstamina/xssm/PowerState;
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sonymobile/superstamina/xssm/Xssm$2;

    invoke-direct {v4, p0, v1}, Lcom/sonymobile/superstamina/xssm/Xssm$2;-><init>(Lcom/sonymobile/superstamina/xssm/Xssm;Lcom/sonymobile/superstamina/xssm/PowerState;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 713
    .end local v0    # "powerState":I
    .end local v1    # "state":Lcom/sonymobile/superstamina/xssm/PowerState;
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Usage: xssm setpowerstate <power state>\n"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mFirewall:Lcom/sonymobile/superstamina/xssm/Firewall;

    if-eqz v0, :cond_0

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Firewall enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mFirewall:Lcom/sonymobile/superstamina/xssm/Firewall;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/xssm/Firewall;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mWhitelistController:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mWhitelistController:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->dump(Ljava/io/PrintWriter;)V

    .line 724
    :cond_1
    return-void
.end method

.method getAlarmManager()Landroid/app/IAlarmManager;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mAlarmManager:Landroid/app/IAlarmManager;

    return-object v0
.end method

.method getFirewall()Lcom/sonymobile/superstamina/xssm/Firewall;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mFirewall:Lcom/sonymobile/superstamina/xssm/Firewall;

    return-object v0
.end method

.method public getService()Lcom/sonymobile/superstamina/XperiaPowerService;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 184
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 207
    :goto_0
    return v1

    .line 186
    :pswitch_0
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/Xssm;->init()V

    goto :goto_0

    .line 189
    :pswitch_1
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/Xssm;->initNativeService()V

    goto :goto_0

    .line 192
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/sonymobile/superstamina/xssm/Xssm;->activateImpl(Z)V

    goto :goto_0

    .line 195
    :pswitch_3
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/Xssm;->onLateResume()V

    goto :goto_0

    .line 198
    :pswitch_4
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/Xssm;->onPrepareSuspend()V

    goto :goto_0

    .line 201
    :pswitch_5
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/Xssm;->onPowerStateTimeout()V

    goto :goto_0

    .line 204
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v0}, Lcom/sonymobile/superstamina/xssm/Xssm;->onReleaseWakelock(Landroid/os/PowerManager$WakeLock;)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 310
    return-void
.end method
