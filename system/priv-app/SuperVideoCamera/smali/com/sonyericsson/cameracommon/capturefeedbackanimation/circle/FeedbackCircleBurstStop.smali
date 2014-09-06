.class public Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop;
.super Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;
.source "FeedbackCircleBurstStop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop$LastHalf;,
        Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop$FirstHalf;
    }
.end annotation


# static fields
.field private static final ALPHA:F = 0.2f

.field private static final DURATION_MILLI_SEC:J = 0x258L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isVisibleFristHalf:Z

.field private isVisibleLastHalf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop;->isVisibleFristHalf:Z

    .line 22
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop;->isVisibleLastHalf:Z

    .line 79
    return-void
.end method

.method private drawFirstHalfFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const-wide/16 v10, 0x5a

    const v9, 0x3e4ccccd

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000

    .line 169
    invoke-virtual {p0, v10, v11}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->calculateProgress(J)F

    move-result v5

    .line 170
    .local v5, "lowOrderProgress":F
    cmpg-float v6, v7, v5

    if-gtz v6, :cond_0

    .line 171
    const/high16 v5, 0x3f800000

    .line 173
    :cond_0
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop$FirstHalf$LowOrderCircle$Outer;->getRadius(F)F

    move-result v4

    .line 175
    .local v4, "lowOrderOuterCircleRadius":F
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop$FirstHalf$LowOrderCircle$Inner;->getRadius(F)F

    move-result v3

    .line 178
    .local v3, "lowOrderInnerCircleRadius":F
    invoke-virtual {p0, v10, v11}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->calculateProgress(J)F

    move-result v2

    .line 179
    .local v2, "highOrderProgress":F
    cmpg-float v6, v7, v2

    if-gtz v6, :cond_1

    .line 180
    const/high16 v2, 0x3f800000

    .line 182
    :cond_1
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop$FirstHalf$HighOrderCircle$Outer;->getRadius(F)F

    move-result v1

    .line 184
    .local v1, "highOrderOuterCircleRadius":F
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop$FirstHalf$HighOrderCircle$Inner;->getRadius(F)F

    move-result v0

    .line 189
    .local v0, "highOrderInnerCircleRadius":F
    invoke-virtual {p0, p1, v4, v9}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->drawLowOrderCircle(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 191
    invoke-virtual {p0, p1, v0, v8}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->drawHighOrderCircle(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 193
    invoke-virtual {p0, p1, v1, v9}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->drawHighOrderCircle(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 195
    invoke-virtual {p0, p1, v3, v8}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->drawLowOrderCircle(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 199
    cmpl-float v6, v5, v7

    if-nez v6, :cond_2

    .line 200
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop;->isVisibleFristHalf:Z

    .line 201
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop;->isVisibleLastHalf:Z

    .line 202
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->mBaseMilliSec:J

    .line 204
    :cond_2
    return-void
.end method

.method private drawLastHalfFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000

    .line 209
    const-wide/16 v7, 0x1fe

    invoke-virtual {p0, v7, v8}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->calculateProgress(J)F

    move-result v6

    .line 210
    .local v6, "lowOrderProgress":F
    cmpg-float v7, v9, v6

    if-gtz v7, :cond_0

    .line 211
    const/high16 v6, 0x3f800000

    .line 213
    :cond_0
    invoke-static {v6}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop$LastHalf$LowOrderCircle$Outer;->getRadius(F)F

    move-result v5

    .line 215
    .local v5, "lowOrderOuterCircleRadius":F
    invoke-static {v6}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop$LastHalf$LowOrderCircle$Inner;->getRadius(F)F

    move-result v3

    .line 217
    .local v3, "lowOrderInnerCircleRadius":F
    invoke-static {v6}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop$LastHalf$LowOrderCircle$Outer;->getAlpha(F)F

    move-result v4

    .line 221
    .local v4, "lowOrderOuterCircleAlpha":F
    const-wide/16 v7, 0x66

    invoke-virtual {p0, v7, v8}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->calculateProgress(J)F

    move-result v2

    .line 222
    .local v2, "highOrderProgress":F
    cmpg-float v7, v9, v2

    if-gtz v7, :cond_1

    .line 223
    const/high16 v2, 0x3f800000

    .line 225
    :cond_1
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop$LastHalf$HighOrderCircle$Outer;->getRadius(F)F

    move-result v1

    .line 227
    .local v1, "highOrderOuterCircleRadius":F
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop$LastHalf$HighOrderCircle$Inner;->getRadius(F)F

    move-result v0

    .line 232
    .local v0, "highOrderInnerCircleRadius":F
    invoke-virtual {p0, p1, v5, v4}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->drawLowOrderCircle(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 234
    invoke-virtual {p0, p1, v3, v11}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->drawLowOrderCircle(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 236
    const v7, 0x3e4ccccd

    invoke-virtual {p0, p1, v1, v7}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->drawHighOrderCircle(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 238
    invoke-virtual {p0, p1, v0, v11}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->drawHighOrderCircle(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 242
    cmpl-float v7, v6, v9

    if-nez v7, :cond_2

    .line 243
    iput-boolean v10, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->mIsVisibleLowOrderCircle:Z

    .line 244
    iput-boolean v12, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop;->isVisibleLastHalf:Z

    .line 245
    iput-boolean v10, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->mIsVisible:Z

    .line 247
    :cond_2
    cmpl-float v7, v6, v9

    if-nez v7, :cond_3

    .line 248
    iput-boolean v10, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->mIsVisibleHighOrderCircle:Z

    .line 249
    iput-boolean v12, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop;->isVisibleLastHalf:Z

    .line 251
    :cond_3
    return-void
.end method


# virtual methods
.method protected onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->mIsVisible:Z

    if-eqz v0, :cond_2

    .line 152
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop;->isVisibleFristHalf:Z

    if-eqz v0, :cond_1

    .line 154
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop;->drawFirstHalfFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop;->isVisibleLastHalf:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop;->drawLastHalfFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->mListener:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase$FeedbackListener;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->mListener:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase$FeedbackListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase$FeedbackListener;->onFeedbackEnd(Z)V

    goto :goto_0
.end method

.method protected start()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircle;->start()V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop;->isVisibleFristHalf:Z

    .line 146
    return-void
.end method
