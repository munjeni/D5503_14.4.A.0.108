.class Landroid/widget/SpringDynamics;
.super Landroid/widget/Dynamics;
.source "SpringDynamics.java"


# instance fields
.field protected mDamping:F

.field protected mFriction:F

.field protected mStiffness:F


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/widget/Dynamics;-><init>()V

    return-void
.end method

.method private calculateAcceleration()F
    .locals 5

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/widget/Dynamics;->getDistanceToLimit()F

    move-result v1

    .line 56
    .local v1, "distanceFromLimit":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 57
    iget v2, p0, Landroid/widget/SpringDynamics;->mStiffness:F

    mul-float/2addr v2, v1

    iget v3, p0, Landroid/widget/SpringDynamics;->mDamping:F

    iget v4, p0, Landroid/widget/Dynamics;->mVelocity:F

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 62
    .local v0, "acceleration":F
    :goto_0
    return v0

    .line 59
    .end local v0    # "acceleration":F
    :cond_0
    iget v2, p0, Landroid/widget/SpringDynamics;->mFriction:F

    neg-float v2, v2

    iget v3, p0, Landroid/widget/Dynamics;->mVelocity:F

    mul-float v0, v2, v3

    .restart local v0    # "acceleration":F
    goto :goto_0
.end method


# virtual methods
.method protected onUpdate(I)V
    .locals 6
    .param p1, "deltaMs"    # I

    .prologue
    const/high16 v5, 0x3f000000

    .line 70
    int-to-float v2, p1

    const/high16 v3, 0x447a0000

    div-float v1, v2, v3

    .line 73
    .local v1, "deltaSeconds":F
    invoke-direct {p0}, Landroid/widget/SpringDynamics;->calculateAcceleration()F

    move-result v0

    .line 76
    .local v0, "acceleration":F
    iget v2, p0, Landroid/widget/Dynamics;->mPosition:F

    iget v3, p0, Landroid/widget/Dynamics;->mVelocity:F

    mul-float/2addr v3, v1

    mul-float v4, v5, v0

    mul-float/2addr v4, v1

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Dynamics;->mPosition:F

    .line 80
    iget v2, p0, Landroid/widget/Dynamics;->mVelocity:F

    mul-float v3, v5, v0

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Dynamics;->mVelocity:F

    .line 83
    invoke-direct {p0}, Landroid/widget/SpringDynamics;->calculateAcceleration()F

    move-result v0

    .line 87
    iget v2, p0, Landroid/widget/Dynamics;->mVelocity:F

    mul-float v3, v5, v0

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Dynamics;->mVelocity:F

    .line 88
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 32
    iput p1, p0, Landroid/widget/SpringDynamics;->mFriction:F

    .line 33
    return-void
.end method

.method setSpring(FF)V
    .locals 3
    .param p1, "stiffness"    # F
    .param p2, "dampingRatio"    # F

    .prologue
    .line 43
    iput p1, p0, Landroid/widget/SpringDynamics;->mStiffness:F

    .line 44
    const/high16 v0, 0x40000000

    mul-float/2addr v0, p2

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/SpringDynamics;->mDamping:F

    .line 45
    return-void
.end method
