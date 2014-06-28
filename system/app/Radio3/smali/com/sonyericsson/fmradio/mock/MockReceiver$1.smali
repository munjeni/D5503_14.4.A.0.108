.class Lcom/sonyericsson/fmradio/mock/MockReceiver$1;
.super Ljava/lang/Object;
.source "MockReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/mock/MockReceiver;->startAsync(Lcom/stericsson/hardware/fm/FmBand;)V
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
    .line 211
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$1;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 214
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$1;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    const/4 v3, 0x0

    # setter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mAsyncStart:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$002(Lcom/sonyericsson/fmradio/mock/MockReceiver;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 216
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$1;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mState:I
    invoke-static {v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$100(Lcom/sonyericsson/fmradio/mock/MockReceiver;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 217
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state modified during startAsync "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$1;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mState:I
    invoke-static {v4}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$100(Lcom/sonyericsson/fmradio/mock/MockReceiver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$1;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    const/4 v3, 0x2

    # invokes: Lcom/sonyericsson/fmradio/mock/MockReceiver;->changeState(I)V
    invoke-static {v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$200(Lcom/sonyericsson/fmradio/mock/MockReceiver;I)V

    .line 221
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$1;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mStartedListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$300(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;

    .line 222
    .local v1, "l":Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;
    invoke-interface {v1}, Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;->onStarted()V

    goto :goto_0

    .line 225
    .end local v1    # "l":Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;
    :cond_1
    return-void
.end method
