.class Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;
.super Ljava/lang/Object;
.source "ReferenceClock.java"


# static fields
.field private static final INVALID:J


# instance fields
.field private mEndTimeNs:J

.field private mStartTimeNs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;->mStartTimeNs:J

    .line 26
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;->mEndTimeNs:J

    .line 27
    return-void
.end method

.method private now()J
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public isRunning()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 49
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;->mStartTimeNs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;->mEndTimeNs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public presentationTime()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 39
    iget-wide v2, p0, Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;->mStartTimeNs:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 44
    :goto_0
    return-wide v0

    .line 41
    :cond_0
    iget-wide v2, p0, Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;->mEndTimeNs:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;->mStartTimeNs:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 44
    :cond_1
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;->mEndTimeNs:J

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;->mStartTimeNs:J

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;->mEndTimeNs:J

    .line 32
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;->mEndTimeNs:J

    .line 36
    return-void
.end method
