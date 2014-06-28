.class Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;
.super Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
.source "FmRadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/FmRadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateIdle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 1

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;
    .param p2, "x1"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;

    .prologue
    .line 1044
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    return-void
.end method


# virtual methods
.method public autoStart(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    iget-boolean v0, v0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhoneCallInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAllowAutoStart:Z
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->startTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3000(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 1082
    :cond_0
    return-void
.end method

.method public isIdle(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1072
    const/4 v0, 0x1

    return v0
.end method

.method public onEnter(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 2
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1048
    invoke-super {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->onEnter(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 1050
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/AudioHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->release()V

    .line 1053
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/AudioHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->setSpeakerAudio(Z)V

    .line 1054
    return-void
.end method

.method public onMediaButtonPress(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;I)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    .param p2, "nbrOfPresses"    # I

    .prologue
    .line 1086
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1087
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;->togglePower(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 1089
    :cond_0
    return-void
.end method

.method public phfStatusChanged(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Z)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    .param p2, "connected"    # Z

    .prologue
    .line 1065
    if-eqz p2, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->startTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3000(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 1068
    :cond_0
    return-void
.end method

.method public togglePower(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    iget-boolean v0, v0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhoneCallInProgress:Z

    if-nez v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateIdle;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->startTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3000(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 1061
    :cond_0
    return-void
.end method
