.class Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop$FirstHalf;
.super Ljava/lang/Object;
.source "FeedbackCircleBurstStop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstHalf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop$FirstHalf$HighOrderCircle;,
        Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop$FirstHalf$LowOrderCircle;
    }
.end annotation


# static fields
.field private static final ALPHA:F = 0.2f

.field private static final DURATION_MILLI_SEC:J = 0x5aL


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method
