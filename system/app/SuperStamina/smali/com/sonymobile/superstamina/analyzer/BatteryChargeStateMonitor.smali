.class public Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;
.super Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
.source "BatteryChargeStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$1;,
        Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;,
        Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;
    }
.end annotation


# static fields
.field private static final FAST_TIME:J = 0x1d4c0L

.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-BatteryChargeStateMonitor"

.field private static final LOW_CAPACITY_LEVEL:J = 0x8L

.field private static final LOW_VOLTAGE:J = 0xea6L

.field private static final MIN_PERCENTAGE_DROP:J = 0x3L

.field private static final NORMAL_TIME:J = 0x927c0L

.field private static final RECOVERY_TIME:J = 0x493e0L

.field private static final START_PERCENTAGE:J = 0xaL


# instance fields
.field private mBatteryReceiver:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;

.field private mCanMeasure:Z

.field private mChargeStateDialog:Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;

.field private mContext:Landroid/content/Context;

.field private mCurrentData:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;

.field private mIsDialogDisabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mBatteryReceiver:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;

    .line 64
    new-instance v0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;

    invoke-direct {v0}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mCanMeasure:Z

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mIsDialogDisabled:Z

    .line 76
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;

    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mChargeStateDialog:Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;)Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mIsDialogDisabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mCanMeasure:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;)Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mChargeStateDialog:Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;

    return-object v0
.end method


# virtual methods
.method public debug([Ljava/lang/String;)I
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 363
    aget-object v0, p1, v4

    .line 364
    .local v0, "cmd":Ljava/lang/String;
    array-length v2, p1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 365
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Usage: batterychargemonitor dialog [enable|disable]"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 367
    :cond_0
    const/4 v2, 0x1

    aget-object v1, p1, v2

    .line 368
    .local v1, "dialog":Ljava/lang/String;
    const-string v2, "dialog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    const-string v2, "disable"

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mIsDialogDisabled:Z

    .line 373
    return v4

    .line 371
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Usage: batterychargemonitor dialog [enable|disable]"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public enableReceiver(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 103
    if-eqz p1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mBatteryReceiver:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mCanMeasure:Z

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;

    invoke-direct {v0}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;

    .line 106
    new-instance v0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;-><init>(Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$1;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mBatteryReceiver:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;

    .line 107
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mBatteryReceiver:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mBatteryReceiver:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mBatteryReceiver:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    iput-object v2, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mBatteryReceiver:Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChangedReceiver;

    goto :goto_0
.end method

.method public onBatteryChanged(IZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "plugged"    # Z

    .prologue
    .line 87
    if-nez p2, :cond_0

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->mCanMeasure:Z

    .line 93
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;->enableReceiver(Z)V

    .line 94
    return-void
.end method
