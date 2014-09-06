.class public Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;
.super Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;
.source "FeedbackCircle.java"


# static fields
.field protected static final ALPHA:F = 0.2f


# instance fields
.field protected mIsVisibleHighOrderCircle:Z

.field protected mIsVisibleLowOrderCircle:Z

.field protected mIsVisibleMiddleOrderCircle:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->mIsVisibleLowOrderCircle:Z

    .line 19
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->mIsVisibleMiddleOrderCircle:Z

    .line 20
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->mIsVisibleHighOrderCircle:Z

    return-void
.end method


# virtual methods
.method protected drawHighOrderCircle(Ljavax/microedition/khronos/opengles/GL10;FF)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "radius"    # F
    .param p3, "alpha"    # F

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->mIsVisibleHighOrderCircle:Z

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_1

    .line 48
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->drawTransparentCircle(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->drawWhiteCircle(Ljavax/microedition/khronos/opengles/GL10;FF)V

    goto :goto_0
.end method

.method protected drawLowOrderCircle(Ljavax/microedition/khronos/opengles/GL10;FF)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "radius"    # F
    .param p3, "alpha"    # F

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->mIsVisibleLowOrderCircle:Z

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_1

    .line 36
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->drawTransparentCircle(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto :goto_0

    .line 38
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->drawWhiteCircle(Ljavax/microedition/khronos/opengles/GL10;FF)V

    goto :goto_0
.end method

.method protected start()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 24
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->start()V

    .line 26
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->mIsVisibleLowOrderCircle:Z

    .line 27
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->mIsVisibleHighOrderCircle:Z

    .line 28
    return-void
.end method
