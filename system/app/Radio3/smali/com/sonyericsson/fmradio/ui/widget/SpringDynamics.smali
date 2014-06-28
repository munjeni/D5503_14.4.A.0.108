.class public Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;
.super Lcom/sonyericsson/fmradio/ui/widget/Dynamics;
.source "SpringDynamics.java"


# instance fields
.field private mDamping:F

.field private mFriction:F

.field private mStiffness:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;-><init>()V

    return-void
.end method

.method private calculateAcceleration()F
    .locals 5

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->getDistanceToLimit()F

    move-result v1

    .line 62
    .local v1, "distanceFromLimit":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 63
    iget v2, p0, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;->mStiffness:F

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;->mDamping:F

    iget v4, p0, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->mVelocity:F

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 68
    .local v0, "acceleration":F
    :goto_0
    return v0

    .line 65
    .end local v0    # "acceleration":F
    :cond_0
    iget v2, p0, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;->mFriction:F

    neg-float v2, v2

    iget v3, p0, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->mVelocity:F

    mul-float v0, v2, v3

    .restart local v0    # "acceleration":F
    goto :goto_0
.end method


# virtual methods
.method protected onUpdate(I)V
    .locals 7
    .param p1, "dt"    # I

    .prologue
    const/high16 v6, 0x3f000000

    .line 76
    int-to-float v3, p1

    const/high16 v4, 0x447a0000

    div-float v2, v3, v4

    .line 79
    .local v2, "fdt":F
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;->calculateAcceleration()F

    move-result v0

    .line 82
    .local v0, "at":F
    iget v3, p0, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->mPosition:F

    iget v4, p0, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->mVelocity:F

    mul-float/2addr v4, v2

    mul-float v5, v6, v0

    mul-float/2addr v5, v2

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->mPosition:F

    .line 86
    iget v3, p0, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->mVelocity:F

    mul-float v4, v6, v0

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->mVelocity:F

    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;->calculateAcceleration()F

    move-result v1

    .line 94
    .local v1, "atdt":F
    iget v3, p0, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->mVelocity:F

    mul-float v4, v6, v1

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->mVelocity:F

    .line 95
    return-void
.end method

.method public setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 38
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;->mFriction:F

    .line 39
    return-void
.end method

.method public setSpring(FF)V
    .locals 3
    .param p1, "stiffness"    # F
    .param p2, "dampingRatio"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;->mStiffness:F

    .line 50
    const/high16 v0, 0x40000000

    mul-float/2addr v0, p2

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;->mDamping:F

    .line 51
    return-void
.end method
