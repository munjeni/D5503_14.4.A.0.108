.class Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy$1;
.super Ljava/lang/Object;
.source "AsyncSetFrequencyStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;-><init>(Lcom/stericsson/hardware/fm/FmReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy$1;->this$0:Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 50
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy$1;->this$0:Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;

    iget-object v2, v2, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .local v1, "frequency":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 52
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 53
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy$1;->this$0:Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;

    # getter for: Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;->access$000(Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;)Lcom/stericsson/hardware/fm/FmReceiver;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->setFrequency(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "setFrequency failed, incorrect state"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 63
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "frequency":I
    :catch_1
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/InterruptedException;
    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "frequencySetter was interrupted, shutting down"

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 66
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 56
    .restart local v1    # "frequency":I
    :catch_2
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x1

    :try_start_3
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFrequency failed, invalid argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "setFrequency failed"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "stopping"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
