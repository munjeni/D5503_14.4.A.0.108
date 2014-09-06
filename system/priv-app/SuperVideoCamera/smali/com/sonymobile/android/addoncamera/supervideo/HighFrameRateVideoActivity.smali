.class public Lcom/sonymobile/android/addoncamera/supervideo/HighFrameRateVideoActivity;
.super Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;
.source "HighFrameRateVideoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCapturingMode()Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->HIGH_FRAME_RATE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    return-object v0
.end method
