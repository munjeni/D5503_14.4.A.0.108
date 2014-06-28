.class public Lcom/sonymobile/superstamina/XperiaPowerService;
.super Landroid/app/Service;
.source "XperiaPowerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;,
        Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;,
        Lcom/sonymobile/superstamina/XperiaPowerService$XSSMCallbackReceiver;
    }
.end annotation


# static fields
.field public static final DBG_DRAIN_BATTERY_CHARGE_MONITOR:Ljava/lang/String; = "batterychargemonitor"

.field public static final DBG_GATEWAY:Ljava/lang/String; = "gateway"

.field public static final DBG_HARDWARE_RESTRICTION_MANAGER:Ljava/lang/String; = "hw-rest-mgr"

.field public static final DBG_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final DBG_POWERSAVER:Ljava/lang/String; = "powersaver"

.field public static final DBG_POWERSAVER_ACTIVATOR:Ljava/lang/String; = "powersaveractivator"

.field public static final DBG_XSSM:Ljava/lang/String; = "xssm"

.field public static final DBG_XSSM_ACTIVATOR:Ljava/lang/String; = "xssmactivator"

.field public static final DBG_XSSM_BLOCKER_DETECTOR:Ljava/lang/String; = "xssmbd"

.field public static final DBG_XSSM_FIREWALL:Ljava/lang/String; = "firewall"

.field public static final DBG_XSSM_WHITELIST:Ljava/lang/String; = "whitelist"

.field public static final ESTIMATES_VALUES_URI:Landroid/net/Uri;

.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-XperiaPowerService"

.field public static final PREFERENCE_NAME:Ljava/lang/String; = "service"

.field public static final SERVICE_NAME:Ljava/lang/String; = "xperia_power_service"

.field private static final STATUS_BAR_ICON_NAME:Ljava/lang/String; = "super_stamina"

.field public static final XSSM_SERVICE_STARTED:Ljava/lang/String; = "com.sonymobile.SUPER_STAMINA_SERVICE_STARTED"


# instance fields
.field private mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

.field private mBatteryChargeStateMonitor:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;

.field private mBatteryReceiver:Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;

.field private mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

.field private mGateActivator:Lcom/sonymobile/superstamina/gateway/GateActivator;

.field private mHardwareRestrictionManager:Lcom/sonymobile/superstamina/HardwareRestrictionManager;

.field private mIddHandler:Lcom/sonymobile/superstamina/xssm/IddHandler;

.field private mLeds:Lcom/sonymobile/superstamina/xssm/Leds;

.field private mPowerSaver:Lcom/sonymobile/superstamina/powersaver/PowerSaver;

.field private mPowerSaverActivator:Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenOnReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceImpl:Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;

.field mSocketSynchronizer:Lcom/sonymobile/superstamina/gateway/GatewayController;

.field private mThread:Ljava/lang/Thread;

.field private mWakelockHandler:Lcom/sonymobile/superstamina/gateway/WakelockHandler;

.field private mXssm:Lcom/sonymobile/superstamina/xssm/Xssm;

.field private mXssmActivator:Lcom/sonymobile/superstamina/xssm/XssmActivator;

.field private mXssmBlockerDetector:Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "xssm/estimates/values"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/XperiaPowerService;->ESTIMATES_VALUES_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 119
    new-instance v0, Lcom/sonymobile/superstamina/xssm/IddHandler;

    invoke-direct {v0}, Lcom/sonymobile/superstamina/xssm/IddHandler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mIddHandler:Lcom/sonymobile/superstamina/xssm/IddHandler;

    .line 122
    new-instance v0, Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;-><init>(Lcom/sonymobile/superstamina/XperiaPowerService;Lcom/sonymobile/superstamina/XperiaPowerService$1;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mBatteryReceiver:Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;

    .line 131
    new-instance v0, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;

    invoke-direct {v0, p0}, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;-><init>(Lcom/sonymobile/superstamina/XperiaPowerService;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mServiceImpl:Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;

    .line 161
    new-instance v0, Lcom/sonymobile/superstamina/XperiaPowerService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/superstamina/XperiaPowerService$1;-><init>(Lcom/sonymobile/superstamina/XperiaPowerService;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    new-instance v0, Lcom/sonymobile/superstamina/XperiaPowerService$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/superstamina/XperiaPowerService$2;-><init>(Lcom/sonymobile/superstamina/XperiaPowerService;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 428
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/analyzer/Analyzer;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/XperiaPowerService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/xssm/IddHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/XperiaPowerService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mIddHandler:Lcom/sonymobile/superstamina/xssm/IddHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/xssm/XssmActivator;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/XperiaPowerService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mXssmActivator:Lcom/sonymobile/superstamina/xssm/XssmActivator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/xssm/Xssm;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/XperiaPowerService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mXssm:Lcom/sonymobile/superstamina/xssm/Xssm;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/XperiaPowerService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mPowerSaverActivator:Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/superstamina/XperiaPowerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/XperiaPowerService;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sonymobile/superstamina/XperiaPowerService;->updateEstimationsInContentProvider()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/HardwareRestrictionManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/XperiaPowerService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mHardwareRestrictionManager:Lcom/sonymobile/superstamina/HardwareRestrictionManager;

    return-object v0
.end method

.method private isLBWInstalled()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 262
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 263
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 265
    .local v2, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 266
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.sonyericsson.android.locationbasedwifi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 267
    const/4 v4, 0x1

    .line 270
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    return v4
.end method

.method private updateEstimationsInContentProvider()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 487
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/XperiaPowerService;->ESTIMATES_VALUES_URI:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 488
    return-void
.end method

.method private updateStatusbarIcon()V
    .locals 6

    .prologue
    .line 325
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 326
    .local v0, "manager":Landroid/app/StatusBarManager;
    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mPowerSaverActivator:Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;

    invoke-virtual {v2}, Lcom/sonymobile/superstamina/BaseActivator;->isActivated()Z

    move-result v1

    .line 329
    .local v1, "power":Z
    if-eqz v1, :cond_0

    .line 330
    const-string v2, "super_stamina"

    const v3, 0x7f02000b

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    const-string v2, "super_stamina"

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method debug(Ljava/lang/String;)I
    .locals 5
    .param p1, "cmdline"    # Ljava/lang/String;

    .prologue
    .line 364
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "args":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 366
    .local v1, "cmd":Ljava/lang/String;
    const-string v2, "notification"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    invoke-virtual {v2, v0}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->debug([Ljava/lang/String;)I

    move-result v2

    .line 383
    :goto_0
    return v2

    .line 368
    :cond_0
    const-string v2, "powersaver"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mPowerSaver:Lcom/sonymobile/superstamina/powersaver/PowerSaver;

    invoke-virtual {v2, v0}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->debug([Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 370
    :cond_1
    const-string v2, "xssm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mXssm:Lcom/sonymobile/superstamina/xssm/Xssm;

    invoke-virtual {v2, v0}, Lcom/sonymobile/superstamina/xssm/Xssm;->debug([Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 372
    :cond_2
    const-string v2, "xssmbd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 373
    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mXssmBlockerDetector:Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;

    invoke-virtual {v2, v0}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;->debug([Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 374
    :cond_3
    const-string v2, "xssmactivator"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 375
    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mXssmActivator:Lcom/sonymobile/superstamina/xssm/XssmActivator;

    invoke-virtual {v2, v0}, Lcom/sonymobile/superstamina/xssm/XssmActivator;->debug([Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 376
    :cond_4
    const-string v2, "powersaveractivator"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 377
    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mPowerSaverActivator:Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;

    invoke-virtual {v2, v0}, Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;->debug([Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 378
    :cond_5
    const-string v2, "gateway"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 379
    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mSocketSynchronizer:Lcom/sonymobile/superstamina/gateway/GatewayController;

    invoke-virtual {v2, v0}, Lcom/sonymobile/superstamina/gateway/GatewayController;->debug([Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 380
    :cond_6
    const-string v2, "hw-rest-mgr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 381
    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mHardwareRestrictionManager:Lcom/sonymobile/superstamina/HardwareRestrictionManager;

    invoke-virtual {v2, v0}, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->debug([Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 382
    :cond_7
    const-string v2, "batterychargemonitor"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 383
    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mBatteryChargeStateMonitor:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;

    invoke-virtual {v2, v0}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->debug([Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 385
    :cond_8
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognised debug command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 339
    const-string v0, "android.permission.DUMP"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump XperiaPowerService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    :goto_0
    return-void

    .line 346
    :cond_0
    const-string v0, "Xperia power Service is running"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mXssmActivator:Lcom/sonymobile/superstamina/xssm/XssmActivator;

    invoke-virtual {v0, p2}, Lcom/sonymobile/superstamina/BaseActivator;->dump(Ljava/io/PrintWriter;)V

    .line 348
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mXssm:Lcom/sonymobile/superstamina/xssm/Xssm;

    invoke-virtual {v0, p2}, Lcom/sonymobile/superstamina/xssm/Xssm;->dump(Ljava/io/PrintWriter;)V

    .line 349
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mPowerSaverActivator:Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;

    invoke-virtual {v0, p2}, Lcom/sonymobile/superstamina/BaseActivator;->dump(Ljava/io/PrintWriter;)V

    .line 350
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mPowerSaver:Lcom/sonymobile/superstamina/powersaver/PowerSaver;

    invoke-virtual {v0, p2}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;->dump(Ljava/io/PrintWriter;)V

    .line 351
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    invoke-virtual {v0, p2}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->dump(Ljava/io/PrintWriter;)V

    .line 353
    const-string v0, "State of DaemonConnector:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableGamma(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mLeds:Lcom/sonymobile/superstamina/xssm/Leds;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/xssm/Leds;->enableGamma(Z)V

    .line 287
    return-void
.end method

.method public enableLedsOverride(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mLeds:Lcom/sonymobile/superstamina/xssm/Leds;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/xssm/Leds;->enableOverride(Z)V

    .line 291
    return-void
.end method

.method public getConnector()Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    return-object v0
.end method

.method public getIddHandler()Lcom/sonymobile/superstamina/xssm/IddHandler;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mIddHandler:Lcom/sonymobile/superstamina/xssm/IddHandler;

    return-object v0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public initLedsOverride(IIIII)V
    .locals 6
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "onTime"    # I
    .param p5, "offTime"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mLeds:Lcom/sonymobile/superstamina/xssm/Leds;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/superstamina/xssm/Leds;->initOverride(IIIII)V

    .line 295
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 203
    const-string v1, "service"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mPreferences:Landroid/content/SharedPreferences;

    .line 205
    new-instance v1, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    new-instance v2, Lcom/sonymobile/superstamina/XperiaPowerService$XSSMCallbackReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/superstamina/XperiaPowerService$XSSMCallbackReceiver;-><init>(Lcom/sonymobile/superstamina/XperiaPowerService;Lcom/sonymobile/superstamina/XperiaPowerService$1;)V

    const-string v3, "xssm"

    const/16 v4, 0xa0

    invoke-direct {v1, v2, v3, v4}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;-><init>(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Callbacks;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    .line 206
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    const-string v3, "SuperStamina-XperiaPowerService"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mThread:Ljava/lang/Thread;

    .line 207
    new-instance v1, Lcom/sonymobile/superstamina/xssm/Leds;

    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    invoke-direct {v1, v2}, Lcom/sonymobile/superstamina/xssm/Leds;-><init>(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mLeds:Lcom/sonymobile/superstamina/xssm/Leds;

    .line 210
    new-instance v0, Lcom/sonymobile/superstamina/gateway/NativeConnector;

    invoke-direct {v0}, Lcom/sonymobile/superstamina/gateway/NativeConnector;-><init>()V

    .line 211
    .local v0, "nativeConnector":Lcom/sonymobile/superstamina/gateway/NativeConnector;
    invoke-virtual {v0}, Lcom/sonymobile/superstamina/gateway/NativeConnector;->start()V

    .line 212
    new-instance v1, Lcom/sonymobile/superstamina/gateway/GatewayController;

    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mConnector:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;

    invoke-direct {v1, p0, v2, v0}, Lcom/sonymobile/superstamina/gateway/GatewayController;-><init>(Landroid/content/Context;Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;Lcom/sonymobile/superstamina/gateway/NativeConnector;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mSocketSynchronizer:Lcom/sonymobile/superstamina/gateway/GatewayController;

    .line 213
    new-instance v1, Lcom/sonymobile/superstamina/gateway/WakelockHandler;

    invoke-direct {v1, v0}, Lcom/sonymobile/superstamina/gateway/WakelockHandler;-><init>(Lcom/sonymobile/superstamina/gateway/NativeConnector;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mWakelockHandler:Lcom/sonymobile/superstamina/gateway/WakelockHandler;

    .line 214
    new-instance v1, Lcom/sonymobile/superstamina/gateway/GateActivator;

    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mSocketSynchronizer:Lcom/sonymobile/superstamina/gateway/GatewayController;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/superstamina/gateway/GateActivator;-><init>(Lcom/sonymobile/superstamina/XperiaPowerService;Lcom/sonymobile/superstamina/gateway/GatewayController;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mGateActivator:Lcom/sonymobile/superstamina/gateway/GateActivator;

    .line 217
    new-instance v1, Lcom/sonymobile/superstamina/analyzer/Analyzer;

    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/superstamina/analyzer/Analyzer;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    .line 218
    new-instance v1, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;

    invoke-direct {v1, p0}, Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;-><init>(Lcom/sonymobile/superstamina/XperiaPowerService;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mXssmBlockerDetector:Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    new-instance v2, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;

    iget-object v3, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->add(Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mXssmBlockerDetector:Lcom/sonymobile/superstamina/analyzer/XssmBlockerDetector;

    invoke-virtual {v1, v2}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->add(Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;)V

    .line 225
    iget-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    new-instance v2, Lcom/sonymobile/superstamina/analyzer/XssmReminder;

    iget-object v3, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    invoke-direct {v2, v3}, Lcom/sonymobile/superstamina/analyzer/XssmReminder;-><init>(Lcom/sonymobile/superstamina/analyzer/Analyzer;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->add(Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;)V

    .line 226
    iget-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    new-instance v2, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;

    iget-object v3, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    invoke-direct {v2, v3}, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;-><init>(Lcom/sonymobile/superstamina/analyzer/Analyzer;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->add(Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;)V

    .line 227
    new-instance v1, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;

    invoke-direct {v1, p0}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mBatteryChargeStateMonitor:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;

    .line 228
    iget-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mBatteryChargeStateMonitor:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;

    invoke-virtual {v1, v2}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->add(Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;)V

    .line 229
    invoke-direct {p0}, Lcom/sonymobile/superstamina/XperiaPowerService;->isLBWInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    new-instance v2, Lcom/sonymobile/superstamina/analyzer/WifiReminder;

    iget-object v3, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/superstamina/analyzer/WifiReminder;-><init>(Landroid/content/Context;Lcom/sonymobile/superstamina/analyzer/Analyzer;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->add(Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;)V

    .line 234
    :cond_0
    new-instance v1, Lcom/sonymobile/superstamina/xssm/Xssm;

    invoke-direct {v1, p0}, Lcom/sonymobile/superstamina/xssm/Xssm;-><init>(Lcom/sonymobile/superstamina/XperiaPowerService;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mXssm:Lcom/sonymobile/superstamina/xssm/Xssm;

    .line 235
    new-instance v1, Lcom/sonymobile/superstamina/xssm/XssmActivator;

    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mXssm:Lcom/sonymobile/superstamina/xssm/Xssm;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/superstamina/xssm/XssmActivator;-><init>(Lcom/sonymobile/superstamina/XperiaPowerService;Lcom/sonymobile/superstamina/xssm/Xssm;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mXssmActivator:Lcom/sonymobile/superstamina/xssm/XssmActivator;

    .line 238
    new-instance v1, Lcom/sonymobile/superstamina/powersaver/PowerSaver;

    invoke-direct {v1, p0}, Lcom/sonymobile/superstamina/powersaver/PowerSaver;-><init>(Lcom/sonymobile/superstamina/XperiaPowerService;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mPowerSaver:Lcom/sonymobile/superstamina/powersaver/PowerSaver;

    .line 239
    new-instance v1, Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;

    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mPowerSaver:Lcom/sonymobile/superstamina/powersaver/PowerSaver;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;-><init>(Lcom/sonymobile/superstamina/XperiaPowerService;Lcom/sonymobile/superstamina/powersaver/PowerSaver;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mPowerSaverActivator:Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;

    .line 242
    new-instance v1, Lcom/sonymobile/superstamina/HardwareRestrictionManager;

    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/superstamina/HardwareRestrictionManager;-><init>(Lcom/sonymobile/superstamina/XperiaPowerService;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mHardwareRestrictionManager:Lcom/sonymobile/superstamina/HardwareRestrictionManager;

    .line 245
    iget-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    iget-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mBatteryReceiver:Lcom/sonymobile/superstamina/XperiaPowerService$BatteryChangedReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mXssmActivator:Lcom/sonymobile/superstamina/xssm/XssmActivator;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/xssm/XssmActivator;->init()V

    .line 251
    iget-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mPowerSaverActivator:Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/powersaver/PowerSaverActivator;->init()V

    .line 252
    iget-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mGateActivator:Lcom/sonymobile/superstamina/gateway/GateActivator;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/BaseActivator;->init()V

    .line 255
    iget-object v1, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 258
    const-string v1, "xperia_power_service"

    iget-object v2, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mServiceImpl:Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 259
    return-void

    .line 221
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public onPowerSaverActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->onPowerSaverActivated(Z)V

    .line 321
    invoke-direct {p0}, Lcom/sonymobile/superstamina/XperiaPowerService;->updateStatusbarIcon()V

    .line 322
    return-void
.end method

.method public onPowerSaverEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->onPowerSaverEnabled(Z)V

    .line 317
    return-void
.end method

.method public onPowerSaverHwRestrictionActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mHardwareRestrictionManager:Lcom/sonymobile/superstamina/HardwareRestrictionManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->onPowerSaverHwRestrictionActivated(Z)V

    .line 304
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.SUPER_STAMINA_SERVICE_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public onXssmActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->onXssmActivated(Z)V

    .line 312
    invoke-direct {p0}, Lcom/sonymobile/superstamina/XperiaPowerService;->updateStatusbarIcon()V

    .line 313
    return-void
.end method

.method public onXssmEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->onXssmEnabled(Z)V

    .line 308
    return-void
.end method

.method public onXssmStateChanged(Lcom/sonymobile/superstamina/xssm/PowerState;)V
    .locals 1
    .param p1, "powerState"    # Lcom/sonymobile/superstamina/xssm/PowerState;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->onXssmStateChanged(Lcom/sonymobile/superstamina/xssm/PowerState;)V

    .line 299
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService;->mIddHandler:Lcom/sonymobile/superstamina/xssm/IddHandler;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/xssm/IddHandler;->onXssmStateChanged(Lcom/sonymobile/superstamina/xssm/PowerState;)V

    .line 300
    return-void
.end method
