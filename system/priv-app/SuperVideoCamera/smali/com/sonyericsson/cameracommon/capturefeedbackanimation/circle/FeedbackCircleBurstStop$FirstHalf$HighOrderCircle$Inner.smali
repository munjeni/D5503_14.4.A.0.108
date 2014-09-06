.class Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop$FirstHalf$HighOrderCircle$Inner;
.super Ljava/lang/Object;
.source "FeedbackCircleBurstStop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop$FirstHalf$HighOrderCircle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Inner"
.end annotation


# static fields
.field private static final START_RADIUS:F = 0.2f

.field private static final STOP_RADIUS:F = 0.2f


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getRadius(F)F
    .locals 1
    .param p0, "progress"    # F

    .prologue
    const v0, 0x3e4ccccd

    .line 72
    invoke-static {v0, v0, p0}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->linearInterpolator(FFF)F

    move-result v0

    return v0
.end method
