.class public Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;
.super Ljava/lang/Object;
.source "AlphaMaskedBlurredYuvFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlurIncrementalController"
.end annotation


# instance fields
.field private mActualBlurLevel:F

.field private final mInitialBlurLevel:F

.field private final mStep:F

.field private mTarget:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

.field private mTargetBlurLevel:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .param p1, "initialBlurLevel"    # F
    .param p2, "step"    # F

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mTarget:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    .line 404
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mInitialBlurLevel:F

    .line 405
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->resetActual()V

    .line 406
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mInitialBlurLevel:F

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mTargetBlurLevel:F

    .line 408
    iput p2, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mStep:F

    .line 409
    return-void
.end method


# virtual methods
.method public applyActual()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mTarget:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->setBlurLevel(F)V

    .line 436
    return-void
.end method

.method public resetActual()V
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mInitialBlurLevel:F

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    .line 420
    return-void
.end method

.method public setTargetElement(Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;)V
    .locals 0
    .param p1, "target"    # Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mTarget:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    .line 413
    return-void
.end method

.method public update()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    .line 445
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mTargetBlurLevel:F

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    sub-float v0, v1, v2

    .line 446
    .local v0, "dif":F
    cmpg-float v1, v3, v0

    if-gez v1, :cond_3

    .line 447
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mStep:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    .line 452
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    iput v3, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    .line 453
    :cond_1
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    cmpg-float v1, v4, v1

    if-gez v1, :cond_2

    iput v4, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    .line 455
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->applyActual()V

    .line 456
    return-void

    .line 448
    :cond_3
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 449
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mStep:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    goto :goto_0
.end method

.method public updateTarget(F)V
    .locals 0
    .param p1, "targetAlpha"    # F

    .prologue
    .line 428
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mTargetBlurLevel:F

    .line 429
    return-void
.end method
