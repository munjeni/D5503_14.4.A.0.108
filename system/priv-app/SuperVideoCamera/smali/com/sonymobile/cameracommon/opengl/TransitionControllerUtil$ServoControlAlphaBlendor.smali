.class public Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;
.super Ljava/lang/Object;
.source "TransitionControllerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServoControlAlphaBlendor"
.end annotation


# instance fields
.field private mActualAlpha:F

.field private final mGainP:F

.field private final mInitialAlpha:F

.field private mTarget:Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;

.field private mTargetAlpha:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .param p1, "initialAlpha"    # F
    .param p2, "gainP"    # F

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mTarget:Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;

    .line 463
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mInitialAlpha:F

    .line 464
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->resetActualAlpha()V

    .line 465
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mInitialAlpha:F

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mTargetAlpha:F

    .line 467
    iput p2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mGainP:F

    .line 468
    return-void
.end method


# virtual methods
.method public resetActualAlpha()V
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mInitialAlpha:F

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mActualAlpha:F

    .line 479
    return-void
.end method

.method public setTargetElement(Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;)V
    .locals 0
    .param p1, "target"    # Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mTarget:Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;

    .line 472
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 497
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mTargetAlpha:F

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mActualAlpha:F

    sub-float v0, v1, v2

    .line 498
    .local v0, "dif":F
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mActualAlpha:F

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mGainP:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mActualAlpha:F

    .line 500
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mTarget:Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mActualAlpha:F

    invoke-interface {v1, v2}, Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;->setAlpha(F)V

    .line 501
    return-void
.end method

.method public updateTargetAlpha(F)V
    .locals 0
    .param p1, "targetAlpha"    # F

    .prologue
    .line 487
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlAlphaBlendor;->mTargetAlpha:F

    .line 488
    return-void
.end method
