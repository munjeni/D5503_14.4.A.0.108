.class Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop$FirstHalf$LowOrderCircle$Inner;
.super Ljava/lang/Object;
.source "FeedbackCircleBurstStop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop$FirstHalf$LowOrderCircle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Inner"
.end annotation


# static fields
.field private static final START_RADIUS:F = 0.0f

.field private static final STOP_RADIUS:F = 0.16000001f


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getRadius(F)F
    .locals 2
    .param p0, "progress"    # F

    .prologue
    .line 49
    const/4 v0, 0x0

    const v1, 0x3e23d70b

    invoke-static {v0, v1, p0}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackUtils;->linearInterpolator(FFF)F

    move-result v0

    return v0
.end method
