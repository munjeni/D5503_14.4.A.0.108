.class Lcom/sonyericsson/fmradio/mock/MockReceiver$6;
.super Ljava/lang/Object;
.source "MockReceiver.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/mock/MockReceiver;->scanHelper(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

.field final synthetic val$scanDirection:I

.field final synthetic val$targetFrequency:I

.field final synthetic val$targetSignalStrength:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/mock/MockReceiver;III)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    iput p2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->val$targetFrequency:I

    iput p3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->val$targetSignalStrength:I

    iput p4, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->val$scanDirection:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 480
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x4

    aput v5, v3, v4

    # invokes: Lcom/sonyericsson/fmradio/mock/MockReceiver;->throwIfNotIn([I)V
    invoke-static {v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1500(Lcom/sonyericsson/fmradio/mock/MockReceiver;[I)V

    .line 482
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    const/4 v3, 0x2

    # invokes: Lcom/sonyericsson/fmradio/mock/MockReceiver;->changeState(I)V
    invoke-static {v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$200(Lcom/sonyericsson/fmradio/mock/MockReceiver;I)V

    .line 484
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mScanListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1900(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

    .line 486
    .local v1, "l":Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFrequency:I
    invoke-static {v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$500(Lcom/sonyericsson/fmradio/mock/MockReceiver;)I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->getSignalStrength()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->val$scanDirection:I

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;->onScan(IIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v2

    goto :goto_0

    .line 491
    .end local v1    # "l":Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;
    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 461
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    const/4 v3, 0x0

    # setter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mOngoingScan:Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;
    invoke-static {v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1402(Lcom/sonyericsson/fmradio/mock/MockReceiver;Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;)Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;

    .line 463
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x4

    aput v4, v3, v5

    # invokes: Lcom/sonyericsson/fmradio/mock/MockReceiver;->throwIfNotIn([I)V
    invoke-static {v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1500(Lcom/sonyericsson/fmradio/mock/MockReceiver;[I)V

    .line 465
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    iget v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->val$targetFrequency:I

    # setter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFrequency:I
    invoke-static {v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$502(Lcom/sonyericsson/fmradio/mock/MockReceiver;I)I

    .line 466
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    iget v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->val$targetFrequency:I

    # invokes: Lcom/sonyericsson/fmradio/mock/MockReceiver;->updateLowFiPlayer(I)V
    invoke-static {v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1600(Lcom/sonyericsson/fmradio/mock/MockReceiver;I)V

    .line 468
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # invokes: Lcom/sonyericsson/fmradio/mock/MockReceiver;->cancelDelayedUpdates()V
    invoke-static {v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1700(Lcom/sonyericsson/fmradio/mock/MockReceiver;)V

    .line 469
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    iget v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->val$targetFrequency:I

    # invokes: Lcom/sonyericsson/fmradio/mock/MockReceiver;->scheduleDelayedUpdates(I)V
    invoke-static {v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1800(Lcom/sonyericsson/fmradio/mock/MockReceiver;I)V

    .line 471
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    const/4 v3, 0x2

    # invokes: Lcom/sonyericsson/fmradio/mock/MockReceiver;->changeState(I)V
    invoke-static {v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$200(Lcom/sonyericsson/fmradio/mock/MockReceiver;I)V

    .line 473
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mScanListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1900(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

    .line 474
    .local v1, "l":Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;
    iget v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->val$targetFrequency:I

    iget v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->val$targetSignalStrength:I

    iget v4, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$6;->val$scanDirection:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;->onScan(IIIZ)V

    goto :goto_0

    .line 476
    .end local v1    # "l":Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;
    :cond_0
    return-void
.end method
