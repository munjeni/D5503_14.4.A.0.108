.class Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;
.super Ljava/lang/Object;
.source "StateMeasuring.java"

# interfaces
.implements Lcom/sonymobile/superstamina/analyzer/estimations/State;


# instance fields
.field private mLevelChangedScreenOn:Z

.field private mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

.field mOwner:Lcom/sonymobile/superstamina/analyzer/estimations/Controller;


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/analyzer/estimations/Controller;Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;)V
    .locals 0
    .param p1, "owner"    # Lcom/sonymobile/superstamina/analyzer/estimations/Controller;
    .param p2, "currentData"    # Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mOwner:Lcom/sonymobile/superstamina/analyzer/estimations/Controller;

    .line 33
    iput-object p2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    .line 34
    return-void
.end method

.method private abort()V
    .locals 8

    .prologue
    .line 94
    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-boolean v3, v3, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->lastScreenOnState:Z

    if-eqz v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mOwner:Lcom/sonymobile/superstamina/analyzer/estimations/Controller;

    invoke-interface {v3}, Lcom/sonymobile/superstamina/analyzer/estimations/Controller;->getTime()J

    move-result-wide v1

    .line 96
    .local v1, "now":J
    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-wide v4, v3, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnTime:J

    iget-object v6, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-wide v6, v6, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->lastScreenEventTime:J

    sub-long v6, v1, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnTime:J

    .line 97
    iget-boolean v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mLevelChangedScreenOn:Z

    if-nez v3, :cond_0

    .line 98
    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-wide v4, v3, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnTimeNoLevelChange:J

    iget-object v6, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-wide v6, v6, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->lastScreenEventTime:J

    sub-long v6, v1, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnTimeNoLevelChange:J

    .line 103
    .end local v1    # "now":J
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-object v4, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mOwner:Lcom/sonymobile/superstamina/analyzer/estimations/Controller;

    invoke-interface {v4}, Lcom/sonymobile/superstamina/analyzer/estimations/Controller;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->isValid(J)Z

    move-result v0

    .line 104
    .local v0, "isValid":Z
    if-eqz v0, :cond_1

    .line 105
    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mOwner:Lcom/sonymobile/superstamina/analyzer/estimations/Controller;

    invoke-interface {v3}, Lcom/sonymobile/superstamina/analyzer/estimations/Controller;->updateEstimations()V

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mOwner:Lcom/sonymobile/superstamina/analyzer/estimations/Controller;

    invoke-interface {v3, v0}, Lcom/sonymobile/superstamina/analyzer/estimations/Controller;->stopMeasure(Z)V

    .line 109
    return-void
.end method


# virtual methods
.method public onBatteryChanged(IZ)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "plugged"    # Z

    .prologue
    const/4 v0, 0x1

    .line 45
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-boolean v1, v1, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->lastScreenOnState:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget v1, v1, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->stopLevel:I

    if-eq v1, p1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget v2, v1, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnLevelChange:I

    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget v3, v3, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->stopLevel:I

    sub-int/2addr v3, p1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnLevelChange:I

    .line 47
    iput-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mLevelChangedScreenOn:Z

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iput p1, v1, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->stopLevel:I

    .line 52
    const/16 v1, 0xf

    if-lt p1, v1, :cond_1

    const/16 v1, 0x63

    if-le p1, v1, :cond_4

    .line 56
    .local v0, "isOutsideRange":Z
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    if-eqz v0, :cond_3

    .line 58
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->abort()V

    .line 60
    :cond_3
    return-void

    .line 52
    .end local v0    # "isOutsideRange":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScreenOn(Z)V
    .locals 7
    .param p1, "on"    # Z

    .prologue
    .line 64
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mOwner:Lcom/sonymobile/superstamina/analyzer/estimations/Controller;

    invoke-interface {v2}, Lcom/sonymobile/superstamina/analyzer/estimations/Controller;->getTime()J

    move-result-wide v0

    .line 66
    .local v0, "now":J
    if-eqz p1, :cond_1

    .line 68
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget v3, v2, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnCount:I

    .line 70
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mLevelChangedScreenOn:Z

    .line 73
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mOwner:Lcom/sonymobile/superstamina/analyzer/estimations/Controller;

    invoke-interface {v3}, Lcom/sonymobile/superstamina/analyzer/estimations/Controller;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->isValid(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mOwner:Lcom/sonymobile/superstamina/analyzer/estimations/Controller;

    invoke-interface {v2}, Lcom/sonymobile/superstamina/analyzer/estimations/Controller;->updateEstimations()V

    .line 85
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iput-wide v0, v2, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->lastScreenEventTime:J

    .line 86
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iput-boolean p1, v2, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->lastScreenOnState:Z

    .line 87
    return-void

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-wide v3, v2, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnTime:J

    iget-object v5, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-wide v5, v5, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->lastScreenEventTime:J

    sub-long v5, v0, v5

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnTime:J

    .line 80
    iget-boolean v2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mLevelChangedScreenOn:Z

    if-nez v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-wide v3, v2, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnTimeNoLevelChange:J

    iget-object v5, p0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->mNode:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-wide v5, v5, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->lastScreenEventTime:J

    sub-long v5, v0, v5

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnTimeNoLevelChange:J

    goto :goto_0
.end method

.method public onXssmActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;->abort()V

    .line 40
    return-void
.end method
