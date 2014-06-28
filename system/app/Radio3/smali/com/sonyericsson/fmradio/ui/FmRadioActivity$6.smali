.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->onTunerAvailable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPendingActive:Z

.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrequencyChanged(I)V
    .locals 3
    .param p1, "frequency"    # I

    .prologue
    const/4 v2, 0x0

    .line 546
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$600(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/fmradio/service/Tuner;->setFrequency(I)V

    .line 547
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyDisplay:Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$1200(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$700(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->format(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->setFrequency(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # invokes: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->updateRdsInfo(I)V
    invoke-static {v0, p1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$1300(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;I)V

    .line 549
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->onSignalStrengthChanged(I)V

    .line 551
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->mPendingActive:Z

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyDisplay:Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$1200(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->setInteracting(Z)V

    .line 553
    iput-boolean v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->mPendingActive:Z

    .line 555
    :cond_0
    return-void
.end method

.method public onTouchState(Z)V
    .locals 1
    .param p1, "isActive"    # Z

    .prologue
    .line 559
    if-eqz p1, :cond_0

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->mPendingActive:Z

    .line 566
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyDisplay:Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$1200(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->setInteracting(Z)V

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->mPendingActive:Z

    goto :goto_0
.end method
