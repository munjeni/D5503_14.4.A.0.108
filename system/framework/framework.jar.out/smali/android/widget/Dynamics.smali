.class abstract Landroid/widget/Dynamics;
.super Ljava/lang/Object;
.source "Dynamics.java"


# static fields
.field private static final MAX_TIMESTEP:I = 0x1f4

.field private static final TIMESTEP:I = 0xa


# instance fields
.field protected mLastTime:J

.field protected mMaxPosition:F

.field protected mMinPosition:F

.field protected mPosition:F

.field protected mVelocity:F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const v0, 0x7f7fffff

    iput v0, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    .line 34
    const v0, -0x800001

    iput v0, p0, Landroid/widget/Dynamics;->mMinPosition:F

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/Dynamics;->mLastTime:J

    return-void
.end method


# virtual methods
.method adjustPositionAndVelocity()V
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Dynamics;->mVelocity:F

    .line 112
    iget v0, p0, Landroid/widget/Dynamics;->mPosition:F

    iget v1, p0, Landroid/widget/Dynamics;->mMinPosition:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 113
    iget v0, p0, Landroid/widget/Dynamics;->mMinPosition:F

    iput v0, p0, Landroid/widget/Dynamics;->mPosition:F

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget v0, p0, Landroid/widget/Dynamics;->mPosition:F

    iget v1, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 115
    iget v0, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    iput v0, p0, Landroid/widget/Dynamics;->mPosition:F

    goto :goto_0
.end method

.method protected getDistanceToLimit()F
    .locals 3

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, "distanceToLimit":F
    iget v1, p0, Landroid/widget/Dynamics;->mPosition:F

    iget v2, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 179
    iget v1, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    iget v2, p0, Landroid/widget/Dynamics;->mPosition:F

    sub-float v0, v1, v2

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    iget v1, p0, Landroid/widget/Dynamics;->mPosition:F

    iget v2, p0, Landroid/widget/Dynamics;->mMinPosition:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 181
    iget v1, p0, Landroid/widget/Dynamics;->mMinPosition:F

    iget v2, p0, Landroid/widget/Dynamics;->mPosition:F

    sub-float v0, v1, v2

    goto :goto_0
.end method

.method getPosition()F
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Landroid/widget/Dynamics;->mPosition:F

    return v0
.end method

.method getVelocity()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Landroid/widget/Dynamics;->mVelocity:F

    return v0
.end method

.method isAtRest(FF)Z
    .locals 6
    .param p1, "velocityTolerance"    # F
    .param p2, "positionTolerance"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    iget v4, p0, Landroid/widget/Dynamics;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_0

    move v0, v2

    .line 95
    .local v0, "standingStill":Z
    :goto_0
    iget v4, p0, Landroid/widget/Dynamics;->mPosition:F

    sub-float/2addr v4, p2

    iget v5, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    iget v4, p0, Landroid/widget/Dynamics;->mPosition:F

    add-float/2addr v4, p2

    iget v5, p0, Landroid/widget/Dynamics;->mMinPosition:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v1, v2

    .line 97
    .local v1, "withinLimits":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v2

    .end local v0    # "standingStill":Z
    .end local v1    # "withinLimits":Z
    :cond_0
    move v0, v3

    .line 94
    goto :goto_0

    .restart local v0    # "standingStill":Z
    :cond_1
    move v1, v3

    .line 95
    goto :goto_1

    .restart local v1    # "withinLimits":Z
    :cond_2
    move v2, v3

    .line 97
    goto :goto_2
.end method

.method protected abstract onUpdate(I)V
.end method

.method setLastTime(J)V
    .locals 0
    .param p1, "now"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Landroid/widget/Dynamics;->mLastTime:J

    .line 60
    return-void
.end method

.method setMaxPosition(F)V
    .locals 0
    .param p1, "maxPosition"    # F

    .prologue
    .line 125
    iput p1, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    .line 126
    return-void
.end method

.method setMinMaxPosition(F)V
    .locals 0
    .param p1, "minMaxPosition"    # F

    .prologue
    .line 143
    iput p1, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    .line 144
    iput p1, p0, Landroid/widget/Dynamics;->mMinPosition:F

    .line 145
    return-void
.end method

.method setMinPosition(F)V
    .locals 0
    .param p1, "minPosition"    # F

    .prologue
    .line 134
    iput p1, p0, Landroid/widget/Dynamics;->mMinPosition:F

    .line 135
    return-void
.end method

.method setState(FFJ)V
    .locals 0
    .param p1, "position"    # F
    .param p2, "velocity"    # F
    .param p3, "now"    # J

    .prologue
    .line 48
    iput p2, p0, Landroid/widget/Dynamics;->mVelocity:F

    .line 49
    iput p1, p0, Landroid/widget/Dynamics;->mPosition:F

    .line 50
    iput-wide p3, p0, Landroid/widget/Dynamics;->mLastTime:J

    .line 51
    return-void
.end method

.method update(J)V
    .locals 4
    .param p1, "now"    # J

    .prologue
    .line 153
    iget-wide v2, p0, Landroid/widget/Dynamics;->mLastTime:J

    sub-long v2, p1, v2

    long-to-int v0, v2

    .line 155
    .local v0, "deltaMs":I
    const/16 v2, 0x1f4

    if-le v0, v2, :cond_0

    .line 156
    const/16 v0, 0x1f4

    .line 159
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 160
    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 161
    .local v1, "step":I
    invoke-virtual {p0, v1}, Landroid/widget/Dynamics;->onUpdate(I)V

    .line 162
    add-int/lit8 v0, v0, -0xa

    .line 163
    goto :goto_0

    .line 165
    .end local v1    # "step":I
    :cond_1
    iput-wide p1, p0, Landroid/widget/Dynamics;->mLastTime:J

    .line 166
    return-void
.end method
