.class public Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle;
.super Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;
.source "FeedbackCircleSingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle$HighOrderCircle;,
        Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle$LowOrderCircle;
    }
.end annotation


# static fields
.field protected static final ALPHA:F = 0.2f

.field private static final DURATION_MILLI_SEC:J = 0x15eL

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method protected onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const v11, 0x3e4ccccd

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000

    .line 78
    iget-boolean v6, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->mIsVisible:Z

    if-eqz v6, :cond_4

    .line 81
    const-wide/16 v6, 0x15e

    invoke-virtual {p0, v6, v7}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->calculateProgress(J)F

    move-result v5

    .line 82
    .local v5, "lowOrderProgress":F
    cmpg-float v6, v8, v5

    if-gtz v6, :cond_0

    .line 83
    const/high16 v5, 0x3f800000

    .line 85
    :cond_0
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle$LowOrderCircle$Outer;->getRadius(F)F

    move-result v4

    .line 86
    .local v4, "lowOrderOuterCircleRadius":F
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle$LowOrderCircle$Inner;->getRadius(F)F

    move-result v3

    .line 88
    .local v3, "lowOrderInnerCircleRadius":F
    const-wide/16 v6, 0xbd

    invoke-virtual {p0, v6, v7}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->calculateProgress(J)F

    move-result v2

    .line 89
    .local v2, "highOrderProgress":F
    cmpg-float v6, v8, v2

    if-gtz v6, :cond_1

    .line 90
    const/high16 v2, 0x3f800000

    .line 92
    :cond_1
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle$HighOrderCircle$Outer;->getRadius(F)F

    move-result v1

    .line 93
    .local v1, "highOrderOuterCircleRadius":F
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle$HighOrderCircle$Inner;->getRadius(F)F

    move-result v0

    .line 97
    .local v0, "highOrderInnerCircleRadius":F
    invoke-virtual {p0, p1, v4, v11}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->drawLowOrderCircle(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 99
    invoke-virtual {p0, p1, v0, v10}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->drawHighOrderCircle(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 101
    invoke-virtual {p0, p1, v1, v11}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->drawHighOrderCircle(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 103
    invoke-virtual {p0, p1, v3, v10}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->drawLowOrderCircle(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 107
    cmpl-float v6, v5, v8

    if-nez v6, :cond_2

    .line 108
    iput-boolean v9, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->mIsVisibleLowOrderCircle:Z

    .line 109
    iput-boolean v9, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->mIsVisible:Z

    .line 112
    :cond_2
    cmpl-float v6, v2, v8

    if-nez v6, :cond_3

    .line 113
    iput-boolean v9, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->mIsVisibleHighOrderCircle:Z

    .line 121
    .end local v0    # "highOrderInnerCircleRadius":F
    .end local v1    # "highOrderOuterCircleRadius":F
    .end local v2    # "highOrderProgress":F
    .end local v3    # "lowOrderInnerCircleRadius":F
    .end local v4    # "lowOrderOuterCircleRadius":F
    .end local v5    # "lowOrderProgress":F
    :cond_3
    :goto_0
    return-void

    .line 117
    :cond_4
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->mListener:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase$FeedbackListener;

    if-eqz v6, :cond_3

    .line 118
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->mListener:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase$FeedbackListener;

    invoke-interface {v6, v9}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase$FeedbackListener;->onFeedbackEnd(Z)V

    goto :goto_0
.end method

.method protected start()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->start()V

    .line 73
    return-void
.end method
