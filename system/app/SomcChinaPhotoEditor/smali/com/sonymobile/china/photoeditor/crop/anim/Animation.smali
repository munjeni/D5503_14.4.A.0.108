.class public abstract Lcom/sonymobile/china/photoeditor/crop/anim/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# static fields
.field private static final ANIMATION_START:J = -0x1L

.field private static final NO_ANIMATION:J = -0x2L


# instance fields
.field private mDuration:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/anim/Animation;->mStartTime:J

    return-void
.end method


# virtual methods
.method public calculate(J)Z
    .locals 10
    .param p1, "currentTimeMillis"    # J

    .prologue
    const/4 v3, 0x0

    const-wide/16 v8, -0x2

    .line 84
    iget-wide v4, p0, Lcom/sonymobile/china/photoeditor/crop/anim/Animation;->mStartTime:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v3

    .line 86
    :cond_1
    iget-wide v4, p0, Lcom/sonymobile/china/photoeditor/crop/anim/Animation;->mStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 87
    iput-wide p1, p0, Lcom/sonymobile/china/photoeditor/crop/anim/Animation;->mStartTime:J

    .line 88
    :cond_2
    iget-wide v4, p0, Lcom/sonymobile/china/photoeditor/crop/anim/Animation;->mStartTime:J

    sub-long v4, p1, v4

    long-to-int v0, v4

    .line 89
    .local v0, "elapse":I
    int-to-float v4, v0

    iget v5, p0, Lcom/sonymobile/china/photoeditor/crop/anim/Animation;->mDuration:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000

    invoke-static {v4, v5, v6}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->clamp(FFF)F

    move-result v2

    .line 90
    .local v2, "x":F
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/anim/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 91
    .local v1, "i":Landroid/view/animation/Interpolator;
    if-eqz v1, :cond_3

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .end local v2    # "x":F
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/crop/anim/Animation;->onCalculate(F)V

    .line 92
    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/anim/Animation;->mDuration:I

    if-lt v0, v4, :cond_4

    .line 93
    iput-wide v8, p0, Lcom/sonymobile/china/photoeditor/crop/anim/Animation;->mStartTime:J

    .line 94
    :cond_4
    iget-wide v4, p0, Lcom/sonymobile/china/photoeditor/crop/anim/Animation;->mStartTime:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public forceStop()V
    .locals 2

    .prologue
    .line 80
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/anim/Animation;->mStartTime:J

    .line 81
    return-void
.end method

.method public isActive()Z
    .locals 4

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/anim/Animation;->mStartTime:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onCalculate(F)V
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/anim/Animation;->mDuration:I

    .line 65
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/anim/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 61
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/sonymobile/china/photoeditor/crop/anim/Animation;->mStartTime:J

    .line 73
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/anim/Animation;->mStartTime:J

    .line 69
    return-void
.end method
