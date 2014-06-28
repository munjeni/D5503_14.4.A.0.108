.class Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateScanning;
.super Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;
.source "FmRadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/FmRadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateScanning"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V
    .locals 1

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateScanning;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$State;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner;
    .param p2, "x1"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$1;

    .prologue
    .line 1336
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateScanning;-><init>(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)V

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;

    .prologue
    .line 1341
    return-void
.end method
