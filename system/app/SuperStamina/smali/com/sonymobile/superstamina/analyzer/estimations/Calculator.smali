.class Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;
.super Ljava/lang/Object;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;
    }
.end annotation


# static fields
.field private static final HOURS:J = 0x36ee80L


# instance fields
.field private mBatteryCapacity:D

.field private mMinimumDrain:D

.field private mScreenOnPower:D

.field private mTotalLevelChange:I

.field private mTotalScreenOnCount:I

.field private mTotalScreenOnTimeNoLevelChange:J

.field private mTotalStandbyLevelChange:I

.field private mTotalStandbyTime:J

.field private mTotalTime:J


# direct methods
.method public constructor <init>(DDD)V
    .locals 3
    .param p1, "batteryCapacity"    # D
    .param p3, "screenOnPower"    # D
    .param p5, "minimumDrain"    # D

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalStandbyTime:J

    .line 19
    iput-wide v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalTime:J

    .line 22
    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalStandbyLevelChange:I

    .line 25
    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalLevelChange:I

    .line 28
    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalScreenOnCount:I

    .line 34
    iput-wide v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalScreenOnTimeNoLevelChange:J

    .line 60
    iput-wide p1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mBatteryCapacity:D

    .line 61
    iput-wide p3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mScreenOnPower:D

    .line 62
    iput-wide p5, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mMinimumDrain:D

    .line 63
    return-void
.end method

.method private static adjustStaminaOffValues([I)V
    .locals 6
    .param p0, "values"    # [I

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    aget v0, p0, v3

    aget v1, p0, v2

    if-gt v0, v1, :cond_0

    .line 96
    aget v0, p0, v2

    mul-int/lit8 v0, v0, 0x3

    const/16 v1, 0x7d

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, p0, v3

    .line 103
    :cond_0
    aget v0, p0, v5

    aget v1, p0, v4

    if-gt v0, v1, :cond_1

    .line 106
    aget v0, p0, v4

    mul-int/lit8 v0, v0, 0x3

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, p0, v5

    .line 111
    :cond_1
    return-void
.end method

.method private adjustStaminaOnValues([I)V
    .locals 6
    .param p1, "values"    # [I

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 120
    aget v0, p1, v3

    aget v1, p1, v2

    if-lt v0, v1, :cond_0

    .line 122
    aget v0, p1, v2

    div-int/lit8 v0, v0, 0x3

    iget-wide v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mMinimumDrain:D

    double-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v3

    .line 129
    :cond_0
    aget v0, p1, v4

    aget v1, p1, v5

    if-lt v0, v1, :cond_1

    .line 131
    aget v0, p1, v5

    div-int/lit8 v0, v0, 0x3

    iget-wide v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mMinimumDrain:D

    double-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v4

    .line 136
    :cond_1
    return-void
.end method

.method private adjustStandbyOnValue([I)V
    .locals 5
    .param p1, "values"    # [I

    .prologue
    const/4 v2, 0x6

    const/4 v4, 0x0

    .line 157
    aget v0, p1, v4

    aget v1, p1, v2

    if-le v0, v1, :cond_0

    .line 159
    aget v0, p1, v2

    int-to-double v0, v0

    const-wide v2, 0x3ff3333333333333L

    div-double/2addr v0, v2

    double-to-int v0, v0

    iget-wide v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mMinimumDrain:D

    double-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v4

    .line 164
    :cond_0
    return-void
.end method

.method private adjustUsageOffValue([I)V
    .locals 5
    .param p1, "values"    # [I

    .prologue
    const/4 v4, 0x7

    const/4 v2, 0x1

    .line 143
    aget v0, p1, v4

    aget v1, p1, v2

    if-ge v0, v1, :cond_0

    .line 145
    const-wide v0, 0x3ff3333333333333L

    aget v2, p1, v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, p1, v4

    .line 150
    :cond_0
    return-void
.end method

.method private applyStandbyFilters(D)I
    .locals 2
    .param p1, "drain"    # D

    .prologue
    .line 271
    iget-wide v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mMinimumDrain:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 272
    iget-wide v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mMinimumDrain:D

    double-to-int v0, v0

    .line 276
    :goto_0
    return v0

    .line 273
    :cond_0
    const-wide v0, 0x405f400000000000L

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 274
    const/16 v0, 0x7d

    goto :goto_0

    .line 276
    :cond_1
    double-to-int v0, p1

    goto :goto_0
.end method

.method private applyUsageFilters(D)I
    .locals 2
    .param p1, "drain"    # D

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mMinimumDrain:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 288
    iget-wide v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mMinimumDrain:D

    double-to-int v0, v0

    .line 292
    :goto_0
    return v0

    .line 289
    :cond_0
    const-wide v0, 0x408f400000000000L

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 290
    const/16 v0, 0x3e8

    goto :goto_0

    .line 292
    :cond_1
    double-to-int v0, p1

    goto :goto_0
.end method

.method private calculate()Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;
    .locals 22

    .prologue
    .line 235
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalStandbyTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x414b774000000000L

    div-double v10, v16, v18

    .line 238
    .local v10, "standbyTime":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mBatteryCapacity:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalStandbyLevelChange:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v18, v10, v18

    const-wide/high16 v20, 0x4059000000000000L

    mul-double v18, v18, v20

    div-double v8, v16, v18

    .line 241
    .local v8, "standbyDrain":D
    const-wide/high16 v16, 0x3fe0000000000000L

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalScreenOnCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    div-double v6, v16, v10

    .line 245
    .local v6, "screenOnAdditions":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mScreenOnPower:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalScreenOnTimeNoLevelChange:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalStandbyTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v4, v16, v18

    .line 251
    .local v4, "noLevelChangeAdditions":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x414b774000000000L

    div-double v14, v16, v18

    .line 254
    .local v14, "usageTime":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mBatteryCapacity:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalLevelChange:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v18, v14, v18

    const-wide/high16 v20, 0x4059000000000000L

    mul-double v18, v18, v20

    div-double v12, v16, v18

    .line 256
    .local v12, "usageDrain":D
    new-instance v3, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;

    invoke-direct {v3}, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;-><init>()V

    .line 257
    .local v3, "drain":Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;
    sub-double v16, v8, v6

    sub-double v16, v16, v4

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->applyStandbyFilters(D)I

    move-result v16

    move/from16 v0, v16

    iput v0, v3, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;->standby:I

    .line 259
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->applyUsageFilters(D)I

    move-result v16

    move/from16 v0, v16

    iput v0, v3, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;->usage:I

    .line 261
    return-object v3
.end method


# virtual methods
.method public addStandbyValues(Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;)V
    .locals 4
    .param p1, "node"    # Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalTime:J

    invoke-virtual {p1}, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->getTotalTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalTime:J

    .line 72
    iget-wide v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalStandbyTime:J

    invoke-virtual {p1}, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->getStandbyTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalStandbyTime:J

    .line 73
    iget v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalLevelChange:I

    invoke-virtual {p1}, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->getLevelChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalLevelChange:I

    .line 74
    iget v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalStandbyLevelChange:I

    invoke-virtual {p1}, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->getStandbyLevelChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalStandbyLevelChange:I

    .line 75
    iget v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalScreenOnCount:I

    iget v1, p1, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalScreenOnCount:I

    .line 76
    iget-wide v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalScreenOnTimeNoLevelChange:J

    iget-wide v2, p1, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnTimeNoLevelChange:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->mTotalScreenOnTimeNoLevelChange:J

    .line 77
    return-void
.end method

.method public calculateDrain()Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->calculate()Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;

    move-result-object v0

    return-object v0
.end method

.method public calculateEstimate(Z[I)Z
    .locals 7
    .param p1, "xssmActive"    # Z
    .param p2, "values"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 175
    if-eqz p1, :cond_0

    move v1, v3

    .line 179
    .local v1, "standbyType":I
    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x6

    .line 184
    .local v2, "usageType":I
    :goto_1
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->calculate()Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;

    move-result-object v0

    .line 185
    .local v0, "estimation":Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;
    aget v5, p2, v1

    iget v6, v0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;->standby:I

    if-ne v5, v6, :cond_2

    aget v5, p2, v2

    iget v6, v0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;->usage:I

    if-ne v5, v6, :cond_2

    .line 210
    :goto_2
    return v3

    .end local v0    # "estimation":Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;
    .end local v1    # "standbyType":I
    .end local v2    # "usageType":I
    :cond_0
    move v1, v4

    .line 175
    goto :goto_0

    .line 179
    .restart local v1    # "standbyType":I
    :cond_1
    const/4 v2, 0x7

    goto :goto_1

    .line 190
    .restart local v0    # "estimation":Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;
    .restart local v2    # "usageType":I
    :cond_2
    iget v3, v0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;->standby:I

    aput v3, p2, v1

    .line 191
    iget v3, v0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;->usage:I

    aput v3, p2, v2

    .line 194
    if-eqz p1, :cond_3

    .line 197
    invoke-static {p2}, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->adjustStaminaOffValues([I)V

    .line 200
    invoke-direct {p0, p2}, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->adjustUsageOffValue([I)V

    :goto_3
    move v3, v4

    .line 210
    goto :goto_2

    .line 204
    :cond_3
    invoke-direct {p0, p2}, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->adjustStaminaOnValues([I)V

    .line 207
    invoke-direct {p0, p2}, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->adjustStandbyOnValue([I)V

    goto :goto_3
.end method
