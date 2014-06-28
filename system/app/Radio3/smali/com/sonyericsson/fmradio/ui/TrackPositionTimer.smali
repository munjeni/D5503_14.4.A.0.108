.class Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;
.super Ljava/lang/Object;
.source "TrackPositionTimer.java"


# instance fields
.field private mPlaybackPosition:J

.field private mStartPlayTime:J

.field private mStopped:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide v0, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mStartPlayTime:J

    .line 26
    iput-wide v0, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mPlaybackPosition:J

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mStopped:Z

    return-void
.end method


# virtual methods
.method getCurrentPosition()I
    .locals 4

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mStopped:Z

    if-eqz v0, :cond_0

    .line 84
    iget-wide v0, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mPlaybackPosition:J

    long-to-int v0, v0

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mStartPlayTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mPlaybackPosition:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mStartPlayTime:J

    .line 35
    iput-wide v0, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mPlaybackPosition:J

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mStopped:Z

    .line 37
    return-void
.end method

.method setPlaybackPosition(JZ)V
    .locals 0
    .param p1, "pos"    # J
    .param p3, "restart"    # Z

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->reset()V

    .line 70
    iput-wide p1, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mPlaybackPosition:J

    .line 72
    if-eqz p3, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->start()V

    .line 75
    :cond_0
    return-void
.end method

.method start()V
    .locals 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mStopped:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mStartPlayTime:J

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mStopped:Z

    .line 47
    :cond_0
    return-void
.end method

.method stop()V
    .locals 4

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mStopped:Z

    if-nez v0, :cond_0

    .line 54
    iget-wide v0, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mPlaybackPosition:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mStartPlayTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mPlaybackPosition:J

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mStartPlayTime:J

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;->mStopped:Z

    .line 58
    :cond_0
    return-void
.end method
