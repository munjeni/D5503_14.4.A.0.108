.class Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;
.super Ljava/lang/Object;
.source "StateIdle.java"

# interfaces
.implements Lcom/sonymobile/superstamina/analyzer/estimations/State;


# instance fields
.field private mBatteryChanged:Z

.field private mBatteryLevel:I

.field private mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

.field private mOwner:Lcom/sonymobile/superstamina/analyzer/estimations/Controller;

.field private mPlugged:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/analyzer/estimations/Controller;Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;)V
    .locals 1
    .param p1, "owner"    # Lcom/sonymobile/superstamina/analyzer/estimations/Controller;
    .param p2, "currentData"    # Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mPlugged:Z

    .line 38
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mOwner:Lcom/sonymobile/superstamina/analyzer/estimations/Controller;

    .line 39
    iput-object p2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    .line 40
    return-void
.end method

.method private tryStartMeasure()V
    .locals 4

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mBatteryChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-wide v0, v0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->lastScreenEventTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mPlugged:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mBatteryLevel:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mBatteryLevel:I

    const/16 v1, 0x63

    if-gt v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mBatteryLevel:I

    iput v1, v0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->startLevel:I

    .line 78
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mBatteryLevel:I

    iput v1, v0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->stopLevel:I

    .line 79
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mOwner:Lcom/sonymobile/superstamina/analyzer/estimations/Controller;

    invoke-interface {v1}, Lcom/sonymobile/superstamina/analyzer/estimations/Controller;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->startTime:J

    .line 80
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mOwner:Lcom/sonymobile/superstamina/analyzer/estimations/Controller;

    invoke-interface {v0}, Lcom/sonymobile/superstamina/analyzer/estimations/Controller;->startMeasure()V

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public onBatteryChanged(IZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "plugged"    # Z

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mBatteryChanged:Z

    .line 52
    iput p1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mBatteryLevel:I

    .line 53
    iput-boolean p2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mPlugged:Z

    .line 55
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->tryStartMeasure()V

    .line 56
    return-void
.end method

.method public onScreenOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iput-boolean p1, v0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->lastScreenOnState:Z

    .line 61
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mOwner:Lcom/sonymobile/superstamina/analyzer/estimations/Controller;

    invoke-interface {v1}, Lcom/sonymobile/superstamina/analyzer/estimations/Controller;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->lastScreenEventTime:J

    .line 63
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->tryStartMeasure()V

    .line 64
    return-void
.end method

.method public onXssmActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iput-boolean p1, v0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->xssmActive:Z

    .line 46
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;->tryStartMeasure()V

    .line 47
    return-void
.end method
