.class Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;
.super Landroid/os/Handler;
.source "FmRadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/FmRadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallStateHandler"
.end annotation


# static fields
.field static final MSG_PAUSE:I = 0x1

.field static final MSG_RESUME:I = 0x0

.field static final RESUME_DELAY:I = 0x1f4


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 1353
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 1354
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->onCallStateChanged(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Z)V

    .line 1358
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->getReceiverState()Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$2400(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mStateContext:Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$1900(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;->onCallStateChanged(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;Z)V

    goto :goto_0
.end method

.method public removeMessages()V
    .locals 1

    .prologue
    .line 1361
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1362
    return-void
.end method
