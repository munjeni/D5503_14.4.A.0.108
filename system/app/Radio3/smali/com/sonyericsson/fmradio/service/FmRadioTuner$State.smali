.class abstract Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
.super Ljava/lang/Object;
.source "FmRadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/FmRadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "State"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;
    .param p2, "x1"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;

    .prologue
    .line 984
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    return-void
.end method


# virtual methods
.method public audioBecomingNoisy(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1026
    return-void
.end method

.method public audioFocusLost(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1019
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    :goto_0
    return-void

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Resetting Chip failed"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public autoStart(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1003
    return-void
.end method

.method public isIdle(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 999
    const/4 v0, 0x0

    return v0
.end method

.method public nextStation(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 990
    return-void
.end method

.method public onCallStateChanged(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Z)V
    .locals 0
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    .param p2, "idle"    # Z

    .prologue
    .line 1041
    return-void
.end method

.method public onEnter(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/AudioHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->stop()V

    .line 1009
    return-void
.end method

.method public onExit(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1012
    return-void
.end method

.method public onHeadsetConnectionChanged(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Z)V
    .locals 2
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    .param p2, "connected"    # Z

    .prologue
    .line 1032
    if-eqz p2, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/AudioHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->setSpeakerAudio(Z)V

    .line 1035
    :cond_0
    return-void
.end method

.method public onMediaButtonPress(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;I)V
    .locals 0
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    .param p2, "nbrOfPresses"    # I

    .prologue
    .line 1038
    return-void
.end method

.method public onTimeout(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V
    .locals 0
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    .param p2, "type"    # Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    .prologue
    .line 996
    return-void
.end method

.method public phfStatusChanged(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Z)V
    .locals 0
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    .param p2, "connected"    # Z

    .prologue
    .line 1029
    return-void
.end method

.method public previousStation(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 993
    return-void
.end method

.method public scanAll(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1015
    return-void
.end method

.method public togglePower(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 987
    return-void
.end method
