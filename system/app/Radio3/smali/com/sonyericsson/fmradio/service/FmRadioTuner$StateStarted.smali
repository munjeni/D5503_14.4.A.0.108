.class Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;
.super Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
.source "FmRadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/FmRadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateStarted"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 1

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;
    .param p2, "x1"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;

    .prologue
    .line 1142
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    return-void
.end method


# virtual methods
.method public audioBecomingNoisy(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->pauseTuner()V
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3300(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    .line 1248
    return-void
.end method

.method public nextStation(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->scanUp()V
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3500(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    .line 1187
    return-void
.end method

.method public onCallStateChanged(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Z)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    .param p2, "idle"    # Z

    .prologue
    .line 1252
    if-nez p2, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->pauseTuner()V
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3300(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    .line 1255
    :cond_0
    return-void
.end method

.method public onEnter(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    const/4 v3, 0x0

    .line 1145
    invoke-virtual {p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->applyFrequency()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1151
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFrequency:I
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->setFrequency(I)V

    .line 1152
    invoke-virtual {p1, v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->setApplyFrequency(Z)V

    .line 1155
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/PhfHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/PhfHandler;->isPhfConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1157
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->pauseTuner()V
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3300(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    .line 1158
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/TimerHandler;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->PHF_REMOVED:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/fmradio/service/TimerHandler;->startTimer(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V

    .line 1173
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # setter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPreventNextPlayback:Z
    invoke-static {v1, v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1802(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Z)Z

    .line 1174
    invoke-virtual {p1, v3}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->setAutoScan(Z)V

    .line 1175
    return-void

    .line 1159
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mRadioStationHandler:Lcom/sonyericsson/fmradio/service/RadioStationHandler;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1100(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->getStations()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->doAutoScan()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1161
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->scanAll(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    goto :goto_0

    .line 1162
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPreventNextPlayback:Z
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1800(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1163
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhfHandler:Lcom/sonyericsson/fmradio/service/PhfHandler;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3200(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/PhfHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/PhfHandler;->isBtConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/AudioHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->isPlayingBt()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1164
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/AudioHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/fmradio/service/AudioHandler;->playBt(Z)V

    goto :goto_0

    .line 1167
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/AudioHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/AudioHandler;->play()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->resetTuner()V
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2600(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    goto :goto_0
.end method

.method public onMediaButtonPress(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;I)V
    .locals 3
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    .param p2, "nbrOfPresses"    # I

    .prologue
    .line 1219
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getFavorites()Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getFrequency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1220
    .local v0, "isOnFavorite":Z
    packed-switch p2, :pswitch_data_0

    .line 1243
    :cond_0
    :goto_0
    return-void

    .line 1222
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->togglePower(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    goto :goto_0

    .line 1225
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->skipToNextFavorite()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1226
    if-eqz v0, :cond_1

    .line 1227
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;->requestAddFavorite()V

    goto :goto_0

    .line 1229
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->scanUp()V
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3500(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    goto :goto_0

    .line 1234
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->skipToPreviousFavorite()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1235
    if-eqz v0, :cond_2

    .line 1236
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mFeedbackProvider:Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;->requestAddFavorite()V

    goto :goto_0

    .line 1238
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->scanDown()V
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3600(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    goto :goto_0

    .line 1220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public phfStatusChanged(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Z)V
    .locals 2
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    .param p2, "connected"    # Z

    .prologue
    .line 1196
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 1197
    if-nez p2, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/AudioHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->isPlayingBt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/AudioHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->stopBt()V

    .line 1203
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->pauseTuner()V
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3300(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    .line 1204
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/TimerHandler;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->PHF_REMOVED:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/TimerHandler;->startTimer(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V

    .line 1206
    :cond_0
    return-void

    .line 1201
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/AudioHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->stop()V

    goto :goto_0
.end method

.method public previousStation(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->scanDown()V
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3600(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    .line 1192
    return-void
.end method

.method public scanAll(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1211
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->startFullScan()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    :goto_0
    return-void

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Ignored illegal state exception"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public togglePower(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 2
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mAudioHandler:Lcom/sonyericsson/fmradio/service/AudioHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1700(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/AudioHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/AudioHandler;->stopBt()V

    .line 1180
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->pauseTuner()V
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3300(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    .line 1181
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarted;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/TimerHandler;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->POWER_OFF:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/TimerHandler;->startTimer(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V

    .line 1182
    return-void
.end method
