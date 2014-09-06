.class abstract Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;
.super Ljava/lang/Object;
.source "TransitionControllerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TimeControlBase"
.end annotation


# instance fields
.field protected mDifX:F

.field protected mDifY:F

.field protected mDifZ:F

.field protected mFromX:F

.field protected mFromY:F

.field protected mFromZ:F

.field protected mTarget:Lcom/sonymobile/cameracommon/opengl/RenderBase;

.field protected mToX:F

.field protected mToY:F

.field protected mToZ:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 2
    .param p1, "fromX"    # F
    .param p2, "fromY"    # F
    .param p3, "fromZ"    # F
    .param p4, "toX"    # F
    .param p5, "toY"    # F
    .param p6, "toZ"    # F

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mTarget:Lcom/sonymobile/cameracommon/opengl/RenderBase;

    .line 49
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mFromX:F

    .line 50
    iput p2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mFromY:F

    .line 51
    iput p3, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mFromZ:F

    .line 52
    iput p4, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mToX:F

    .line 53
    iput p5, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mToY:F

    .line 54
    iput p6, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mToZ:F

    .line 56
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mToX:F

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mFromX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mDifX:F

    .line 57
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mToY:F

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mFromY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mDifY:F

    .line 58
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mToZ:F

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mFromZ:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mDifZ:F

    .line 59
    return-void
.end method


# virtual methods
.method public setFromCondition(FFF)V
    .locals 2
    .param p1, "fromX"    # F
    .param p2, "fromY"    # F
    .param p3, "fromZ"    # F

    .prologue
    .line 66
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mFromX:F

    .line 67
    iput p2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mFromY:F

    .line 68
    iput p3, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mFromZ:F

    .line 70
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mToX:F

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mFromX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mDifX:F

    .line 71
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mToY:F

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mFromY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mDifY:F

    .line 72
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mToZ:F

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mFromZ:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mDifZ:F

    .line 73
    return-void
.end method

.method public setTargetRenderBase(Lcom/sonymobile/cameracommon/opengl/RenderBase;)V
    .locals 0
    .param p1, "target"    # Lcom/sonymobile/cameracommon/opengl/RenderBase;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mTarget:Lcom/sonymobile/cameracommon/opengl/RenderBase;

    .line 63
    return-void
.end method

.method public setToCondition(FFF)V
    .locals 2
    .param p1, "toX"    # F
    .param p2, "toY"    # F
    .param p3, "toZ"    # F

    .prologue
    .line 76
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mToX:F

    .line 77
    iput p2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mToY:F

    .line 78
    iput p3, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mToZ:F

    .line 80
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mToX:F

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mFromX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mDifX:F

    .line 81
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mToY:F

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mFromY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mDifY:F

    .line 82
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mToZ:F

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mFromZ:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$TimeControlBase;->mDifZ:F

    .line 83
    return-void
.end method

.method abstract update(F)V
.end method
