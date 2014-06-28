.class final enum Lcom/android/phone/SomcCallRecorder$RecordingMode$1;
.super Lcom/android/phone/SomcCallRecorder$RecordingMode;
.source "SomcCallRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcCallRecorder$RecordingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/SomcCallRecorder$RecordingMode;-><init>(Ljava/lang/String;ILcom/android/phone/SomcCallRecorder$1;)V

    return-void
.end method


# virtual methods
.method protected getAudioSourceType()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x4

    return v0
.end method
