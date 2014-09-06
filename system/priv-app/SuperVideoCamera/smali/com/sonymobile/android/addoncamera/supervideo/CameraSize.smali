.class public Lcom/sonymobile/android/addoncamera/supervideo/CameraSize;
.super Ljava/lang/Object;
.source "CameraSize.java"


# static fields
.field public static final MIN_RECORDING_DURATION:I = 0x1

.field private static final UNIT_SEC_IN_MIN:I = 0x3c

.field public static final VIDEO_MAX_SIZE:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeSize(III)J
    .locals 4
    .param p0, "audioBitRate"    # I
    .param p1, "bitRate"    # I
    .param p2, "second"    # I

    .prologue
    .line 59
    add-int v0, p0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getAverageFileSize(II)J
    .locals 2
    .param p0, "audioBitRate"    # I
    .param p1, "bitRate"    # I

    .prologue
    .line 36
    const/16 v0, 0x3c

    invoke-static {p0, p1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/CameraSize;->computeSize(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMinFileSize(II)J
    .locals 2
    .param p0, "audioBitRate"    # I
    .param p1, "bitRate"    # I

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/CameraSize;->computeSize(III)J

    move-result-wide v0

    return-wide v0
.end method
