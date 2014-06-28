.class public final Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;
.super Ljava/lang/Object;
.source "AsyncSetFrequencyStrategy.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/service/FmRadioTuner$SetFrequencyStrategy;


# static fields
.field protected static final QUIT:I = -0x1


# instance fields
.field private mDestroyed:Z

.field protected final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;


# direct methods
.method public constructor <init>(Lcom/stericsson/hardware/fm/FmReceiver;)V
    .locals 2
    .param p1, "receiver"    # Lcom/stericsson/hardware/fm/FmReceiver;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 42
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;->mDestroyed:Z

    .line 45
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy$1;-><init>(Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;)Lcom/stericsson/hardware/fm/FmReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;->mReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;->set(I)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;->mDestroyed:Z

    .line 89
    return-void
.end method

.method public set(I)V
    .locals 6
    .param p1, "frequency"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AsyncSetFrequencyStrategy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/InterruptedException;
    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to put frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method
