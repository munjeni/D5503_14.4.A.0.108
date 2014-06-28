.class Lcom/sonyericsson/fmradio/mock/MockReceiver$2;
.super Ljava/lang/Object;
.source "MockReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/mock/MockReceiver;->scheduleDelayedUpdates(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

.field final synthetic val$newFrequency:I

.field final synthetic val$newSignalStrength:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/mock/MockReceiver;II)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$2;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    iput p2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$2;->val$newFrequency:I

    iput p3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$2;->val$newSignalStrength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 280
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$2;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    const/4 v3, 0x0

    # setter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mSignalQualityUpdate:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$402(Lcom/sonyericsson/fmradio/mock/MockReceiver;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 282
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$2;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFrequency:I
    invoke-static {v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$500(Lcom/sonyericsson/fmradio/mock/MockReceiver;)I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$2;->val$newFrequency:I

    if-eq v2, v3, :cond_1

    .line 293
    :cond_0
    return-void

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$2;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mSignalStrengthListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$600(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;

    .line 286
    .local v1, "l":Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;
    iget v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$2;->val$newSignalStrength:I

    invoke-interface {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;->onSignalStrengthChanged(I)V

    goto :goto_0

    .line 289
    .end local v1    # "l":Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$2;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mStereoListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$700(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;

    .line 290
    .local v1, "l":Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$2;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mForcedMonoPlayback:Z
    invoke-static {v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$800(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$2;->val$newSignalStrength:I

    iget-object v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$2;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mTunerThreshold:I
    invoke-static {v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$900(Lcom/sonyericsson/fmradio/mock/MockReceiver;)I

    move-result v3

    if-lt v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-interface {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;->onPlayingInStereo(Z)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method
