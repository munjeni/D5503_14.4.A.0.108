.class public Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;
.super Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
.source "PowerSaveReminder.java"


# static fields
.field private static final HOURS:J = 0x36ee80L

.field private static final LEVEL_LIMIT:J = 0x55L

.field private static final TIME_LIMIT:J = 0x5L


# instance fields
.field private mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

.field private mPlugged:Z

.field private mPowerSaverEnabled:Z

.field private mUnpluggedLevel:I

.field private mUnpluggedTime:J


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/analyzer/Analyzer;)V
    .locals 1
    .param p1, "analyzer"    # Lcom/sonymobile/superstamina/analyzer/Analyzer;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mPlugged:Z

    .line 25
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    .line 26
    return-void
.end method


# virtual methods
.method public onBatteryChanged(IZ)V
    .locals 10
    .param p1, "level"    # I
    .param p2, "plugged"    # Z

    .prologue
    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    .line 40
    iget-boolean v3, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mPowerSaverEnabled:Z

    if-eqz v3, :cond_1

    .line 43
    iput-boolean p2, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mPlugged:Z

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-boolean v3, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mPlugged:Z

    if-eqz v3, :cond_2

    if-nez p2, :cond_2

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mUnpluggedTime:J

    .line 51
    iput p1, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mUnpluggedLevel:I

    .line 53
    :cond_2
    iget-boolean v3, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mPlugged:Z

    if-nez v3, :cond_3

    if-eqz p2, :cond_3

    .line 55
    iput-wide v7, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mUnpluggedTime:J

    .line 56
    iput v9, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mUnpluggedLevel:I

    .line 58
    :cond_3
    iput-boolean p2, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mPlugged:Z

    .line 61
    iget-boolean v3, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mPlugged:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mUnpluggedLevel:I

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mUnpluggedTime:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mUnpluggedTime:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x36ee80

    div-long v1, v3, v5

    .line 63
    .local v1, "deltaTimeH":J
    iget v3, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mUnpluggedLevel:I

    sub-int v0, v3, p1

    .line 64
    .local v0, "deltaLevel":I
    const-wide/16 v3, 0x5

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    int-to-long v3, v0

    const-wide/16 v5, 0x55

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 65
    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->triggerReminder(I)V

    .line 67
    iput-wide v7, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mUnpluggedTime:J

    .line 68
    iput v9, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mUnpluggedLevel:I

    goto :goto_0
.end method

.method public onPowerSaverEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mPowerSaverEnabled:Z

    .line 31
    if-eqz p1, :cond_0

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mUnpluggedLevel:I

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/superstamina/analyzer/PowerSaveReminder;->mUnpluggedTime:J

    .line 36
    :cond_0
    return-void
.end method
