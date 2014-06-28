.class Lcom/sonyericsson/fmradio/mock/MockReceiver$7;
.super Ljava/lang/Object;
.source "MockReceiver.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/mock/MockReceiver;->startFullScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/mock/MockReceiver;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$7;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 550
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$7;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    new-array v3, v6, [I

    const/4 v4, 0x4

    aput v4, v3, v5

    # invokes: Lcom/sonyericsson/fmradio/mock/MockReceiver;->throwIfNotIn([I)V
    invoke-static {v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1500(Lcom/sonyericsson/fmradio/mock/MockReceiver;[I)V

    .line 552
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$7;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    const/4 v3, 0x2

    # invokes: Lcom/sonyericsson/fmradio/mock/MockReceiver;->changeState(I)V
    invoke-static {v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$200(Lcom/sonyericsson/fmradio/mock/MockReceiver;I)V

    .line 554
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$7;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

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

    .line 555
    .local v1, "l":Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;
    new-array v2, v5, [I

    new-array v3, v5, [I

    invoke-interface {v1, v2, v3, v6}, Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;->onFullScan([I[IZ)V

    goto :goto_0

    .line 557
    .end local v1    # "l":Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;
    :cond_0
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 523
    iget-object v7, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$7;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    const/4 v8, 0x0

    # setter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mOngoingScan:Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;
    invoke-static {v7, v8}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1402(Lcom/sonyericsson/fmradio/mock/MockReceiver;Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;)Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;

    .line 525
    iget-object v7, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$7;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x4

    aput v9, v8, v10

    # invokes: Lcom/sonyericsson/fmradio/mock/MockReceiver;->throwIfNotIn([I)V
    invoke-static {v7, v8}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1500(Lcom/sonyericsson/fmradio/mock/MockReceiver;[I)V

    .line 527
    iget-object v7, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$7;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    iget-object v8, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$7;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFrequency:I
    invoke-static {v8}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$500(Lcom/sonyericsson/fmradio/mock/MockReceiver;)I

    move-result v8

    # invokes: Lcom/sonyericsson/fmradio/mock/MockReceiver;->updateLowFiPlayer(I)V
    invoke-static {v7, v8}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1600(Lcom/sonyericsson/fmradio/mock/MockReceiver;I)V

    .line 529
    iget-object v7, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$7;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    const/4 v8, 0x2

    # invokes: Lcom/sonyericsson/fmradio/mock/MockReceiver;->changeState(I)V
    invoke-static {v7, v8}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$200(Lcom/sonyericsson/fmradio/mock/MockReceiver;I)V

    .line 532
    iget-object v7, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$7;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # invokes: Lcom/sonyericsson/fmradio/mock/MockReceiver;->getValidScanTargets()Ljava/util/Collection;
    invoke-static {v7}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$2000(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Ljava/util/Collection;

    move-result-object v6

    .line 533
    .local v6, "results":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v7

    new-array v1, v7, [I

    .line 534
    .local v1, "freq":[I
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 536
    .local v5, "level":[I
    const/4 v2, 0x0

    .line 537
    .local v2, "i":I
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 538
    .local v0, "f":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v1, v2

    .line 539
    iget-object v7, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$7;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mChannels:Ljava/util/Map;
    invoke-static {v7}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1200(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;

    iget v7, v7, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;->signalStrength:I

    aput v7, v5, v2

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    .end local v0    # "f":Ljava/lang/Integer;
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$7;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mScanListeners:Ljava/util/List;
    invoke-static {v7}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1900(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

    .line 544
    .local v4, "l":Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;
    invoke-interface {v4, v1, v5, v10}, Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;->onFullScan([I[IZ)V

    goto :goto_1

    .line 546
    .end local v4    # "l":Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;
    :cond_1
    return-void
.end method
