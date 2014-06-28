.class Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarting;
.super Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
.source "FmRadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/FmRadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateStarting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 1

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarting;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;
    .param p2, "x1"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;

    .prologue
    .line 1139
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateStarting;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    return-void
.end method
