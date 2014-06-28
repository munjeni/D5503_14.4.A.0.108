.class Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;
.super Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
.source "FmRadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/FmRadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatePaused"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 1

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;
    .param p2, "x1"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;

    .prologue
    .line 1258
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    return-void
.end method


# virtual methods
.method public isIdle(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)Z
    .locals 2
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/TimerHandler;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->POWER_OFF:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/TimerHandler;->hasTimer(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
    const/4 v0, 0x1

    .line 1299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCallStateChanged(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Z)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    .param p2, "idle"    # Z

    .prologue
    .line 1330
    if-eqz p2, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->resumeTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3800(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 1333
    :cond_0
    return-void
.end method

.method public onExit(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 2
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/TimerHandler;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->POWER_OFF:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/TimerHandler;->cancelTimer(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V

    .line 1325
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/TimerHandler;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->PHF_REMOVED:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/TimerHandler;->cancelTimer(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V

    .line 1326
    return-void
.end method

.method public onMediaButtonPress(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;I)V
    .locals 0
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    .param p2, "nbrOfPresses"    # I

    .prologue
    .line 1319
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->togglePower(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 1320
    return-void
.end method

.method public onTimeout(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V
    .locals 4
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    .param p2, "type"    # Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    .prologue
    .line 1305
    sget-object v1, Lcom/sonyericsson/fmradio/service/FmRadioTuner$3;->$SwitchMap$com$sonyericsson$fmradio$service$TimerHandler$TimerType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1315
    :goto_0
    return-void

    .line 1309
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Resetting Chip failed"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0

    .line 1305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public phfStatusChanged(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Z)V
    .locals 2
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    .param p2, "connected"    # Z

    .prologue
    .line 1267
    if-eqz p2, :cond_1

    .line 1269
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    iget-boolean v0, v0, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhoneCallInProgress:Z

    if-nez v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->resumeTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3800(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 1279
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mTimerHandler:Lcom/sonyericsson/fmradio/service/TimerHandler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/TimerHandler;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->PHF_REMOVED:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/TimerHandler;->startTimer(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V

    goto :goto_0
.end method

.method public togglePower(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StatePaused;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->resumeTuner(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$3800(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V

    .line 1263
    return-void
.end method
