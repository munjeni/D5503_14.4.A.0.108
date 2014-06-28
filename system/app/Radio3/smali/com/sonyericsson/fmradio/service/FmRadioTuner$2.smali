.class Lcom/sonyericsson/fmradio/service/FmRadioTuner$2;
.super Ljava/lang/Object;
.source "FmRadioTuner.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/service/RadioStationHandler$FrequencyFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/service/FmRadioTuner;->load(I)V
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
    .line 248
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$2;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid(I)Z
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$2;->this$0:Lcom/sonyericsson/fmradio/service/FmRadioTuner;

    # getter for: Lcom/sonyericsson/fmradio/service/FmRadioTuner;->mBand:Lcom/stericsson/hardware/fm/FmBand;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmRadioTuner;->access$600(Lcom/sonyericsson/fmradio/service/FmRadioTuner;)Lcom/stericsson/hardware/fm/FmBand;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stericsson/hardware/fm/FmBand;->isFrequencyValid(I)Z

    move-result v0

    return v0
.end method
