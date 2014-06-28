.class Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;
.super Landroid/telephony/PhoneStateListener;
.source "FmRadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/FmRadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 158
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # invokes: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->isDestroyed()Z
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$500(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    iget-boolean v1, v2, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhoneCallInProgress:Z

    .line 163
    .local v1, "wasCallInProgress":Z
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    if-eqz p1, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, v5, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhoneCallInProgress:Z

    .line 164
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    iget-object v2, v2, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mCallStateHandler:Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;->removeMessages()V

    .line 166
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    iget-boolean v2, v2, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhoneCallInProgress:Z

    if-nez v2, :cond_3

    .line 172
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    iget-object v2, v2, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mCallStateHandler:Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 173
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    iget-object v2, v2, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mCallStateHandler:Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    move v2, v4

    .line 163
    goto :goto_1

    .line 174
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    iget-boolean v2, v2, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mPhoneCallInProgress:Z

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    iget-object v2, v2, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mCallStateHandler:Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 176
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    iget-object v2, v2, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mCallStateHandler:Lcom/sonyericsson/fmradio/service/FmRadioTuner$CallStateHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
