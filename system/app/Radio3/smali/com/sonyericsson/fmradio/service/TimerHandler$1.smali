.class Lcom/sonyericsson/fmradio/service/TimerHandler$1;
.super Landroid/os/Handler;
.source "TimerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/TimerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/TimerHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/service/TimerHandler;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/TimerHandler$1;->this$0:Lcom/sonyericsson/fmradio/service/TimerHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 54
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    .line 55
    .local v0, "type":Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/TimerHandler$1;->this$0:Lcom/sonyericsson/fmradio/service/TimerHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/TimerHandler;->mListener:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerListener;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/TimerHandler;->access$000(Lcom/sonyericsson/fmradio/service/TimerHandler;)Lcom/sonyericsson/fmradio/service/TimerHandler$TimerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/TimerHandler$1;->this$0:Lcom/sonyericsson/fmradio/service/TimerHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/TimerHandler;->mListener:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerListener;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/TimerHandler;->access$000(Lcom/sonyericsson/fmradio/service/TimerHandler;)Lcom/sonyericsson/fmradio/service/TimerHandler$TimerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerListener;->onTimeout(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V

    .line 58
    :cond_0
    return-void
.end method
