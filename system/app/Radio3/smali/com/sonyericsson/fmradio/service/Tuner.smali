.class public abstract Lcom/sonyericsson/fmradio/service/Tuner;
.super Ljava/util/Observable;
.source "Tuner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;,
        Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;,
        Lcom/sonyericsson/fmradio/service/Tuner$TunerState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 117
    return-void
.end method


# virtual methods
.method public abstract addFavorite(ILjava/lang/String;I)V
.end method

.method public abstract addSignalQualityListener(Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;)V
.end method

.method public abstract canNavigateFavorites()Z
.end method

.method public abstract changeFmBand(Lcom/stericsson/hardware/fm/FmBand;)V
.end method

.method public abstract getDisplayName(I)Ljava/lang/String;
.end method

.method public abstract getFavorites()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFmBand()Lcom/stericsson/hardware/fm/FmBand;
.end method

.method public abstract getFrequency()I
.end method

.method public abstract getState()Lcom/sonyericsson/fmradio/service/Tuner$TunerState;
.end method

.method public abstract getStations()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/RadioStation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isFavorite(I)Z
.end method

.method public abstract isForcedMonoPlayback()Z
.end method

.method public abstract isPhfMissing()Z
.end method

.method public abstract isSpeakerAudio()Z
.end method

.method public abstract loadRegion()I
.end method

.method public abstract nextFavorite()V
.end method

.method public abstract nextStation()V
.end method

.method public abstract previousFavorite()V
.end method

.method public abstract previousStation()V
.end method

.method public abstract removeFavorite(I)V
.end method

.method public abstract removeSignalQualityListener(Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;)V
.end method

.method public abstract reset()V
.end method

.method public abstract saveRegion(I)V
.end method

.method public abstract searchForStations()V
.end method

.method public abstract setForcedMonoPlayback(Z)V
.end method

.method public abstract setFrequency(I)V
.end method

.method public abstract togglePower()V
.end method

.method public abstract toggleSpeakerAudio()V
.end method
