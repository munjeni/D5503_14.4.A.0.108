.class Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;
.super Ljava/lang/Object;
.source "FmRadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/FmRadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateContext"
.end annotation


# instance fields
.field private mApplyFrequency:Z

.field private mAutoScan:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->mAutoScan:Z

    .line 964
    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->mApplyFrequency:Z

    .line 965
    return-void
.end method


# virtual methods
.method public applyFrequency()Z
    .locals 1

    .prologue
    .line 976
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->mApplyFrequency:Z

    return v0
.end method

.method public doAutoScan()Z
    .locals 1

    .prologue
    .line 968
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->mAutoScan:Z

    return v0
.end method

.method public setApplyFrequency(Z)V
    .locals 0
    .param p1, "apply"    # Z

    .prologue
    .line 980
    iput-boolean p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->mApplyFrequency:Z

    .line 981
    return-void
.end method

.method public setAutoScan(Z)V
    .locals 0
    .param p1, "autoScan"    # Z

    .prologue
    .line 972
    iput-boolean p1, p0, Lcom/sonyericsson/fmradio/service/FmRadioTuner$StateContext;->mAutoScan:Z

    .line 973
    return-void
.end method
