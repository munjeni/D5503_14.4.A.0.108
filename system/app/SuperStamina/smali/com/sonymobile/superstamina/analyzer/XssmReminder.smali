.class public Lcom/sonymobile/superstamina/analyzer/XssmReminder;
.super Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
.source "XssmReminder.java"


# static fields
.field private static final HOURS:J = 0x36ee80L

.field private static final TIME_LIMIT:J = 0x6L


# instance fields
.field private mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

.field private mPlugged:Z

.field private mScreenOffTime:J

.field private mXssmOn:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/analyzer/Analyzer;)V
    .locals 0
    .param p1, "analyzer"    # Lcom/sonymobile/superstamina/analyzer/Analyzer;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/XssmReminder;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    .line 23
    return-void
.end method


# virtual methods
.method public onBatteryChanged(IZ)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "plugged"    # Z

    .prologue
    .line 36
    iput-boolean p2, p0, Lcom/sonymobile/superstamina/analyzer/XssmReminder;->mPlugged:Z

    .line 37
    if-eqz p2, :cond_0

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/superstamina/analyzer/XssmReminder;->mScreenOffTime:J

    .line 42
    :cond_0
    return-void
.end method

.method public onScreenOn(Z)V
    .locals 8
    .param p1, "on"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 46
    if-eqz p1, :cond_2

    .line 48
    iget-wide v2, p0, Lcom/sonymobile/superstamina/analyzer/XssmReminder;->mScreenOffTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sonymobile/superstamina/analyzer/XssmReminder;->mScreenOffTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    div-long v0, v2, v4

    .line 50
    .local v0, "delta":J
    const-wide/16 v2, 0x6

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/XssmReminder;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->triggerReminder(I)V

    .line 53
    :cond_0
    iput-wide v6, p0, Lcom/sonymobile/superstamina/analyzer/XssmReminder;->mScreenOffTime:J

    .line 61
    .end local v0    # "delta":J
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    iget-boolean v2, p0, Lcom/sonymobile/superstamina/analyzer/XssmReminder;->mXssmOn:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sonymobile/superstamina/analyzer/XssmReminder;->mPlugged:Z

    if-nez v2, :cond_1

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/superstamina/analyzer/XssmReminder;->mScreenOffTime:J

    goto :goto_0
.end method

.method public onXssmEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/sonymobile/superstamina/analyzer/XssmReminder;->mXssmOn:Z

    .line 28
    if-eqz p1, :cond_0

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/superstamina/analyzer/XssmReminder;->mScreenOffTime:J

    .line 32
    :cond_0
    return-void
.end method
