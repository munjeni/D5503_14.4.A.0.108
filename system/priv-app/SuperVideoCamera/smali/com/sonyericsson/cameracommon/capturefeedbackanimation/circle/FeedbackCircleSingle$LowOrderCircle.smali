.class Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle$LowOrderCircle;
.super Ljava/lang/Object;
.source "FeedbackCircleSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LowOrderCircle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle$LowOrderCircle$Inner;,
        Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle$LowOrderCircle$Outer;
    }
.end annotation


# static fields
.field private static final ALPHA:F = 0.2f

.field private static final DURATION_MILLI_SEC:J = 0x15eL


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method
