.class Lcom/sonyericsson/fmradio/service/TimerHandler;
.super Ljava/lang/Object;
.source "TimerHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/service/TimerHandler$TimerListener;,
        Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;
    }
.end annotation


# static fields
.field private static final TIMER:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerListener;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerListener;)V
    .locals 1
    .param p1, "l"    # Lcom/sonyericsson/fmradio/service/TimerHandler$TimerListener;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/sonyericsson/fmradio/service/TimerHandler$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/service/TimerHandler$1;-><init>(Lcom/sonyericsson/fmradio/service/TimerHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/TimerHandler;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/TimerHandler;->mListener:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerListener;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/fmradio/service/TimerHandler;)Lcom/sonyericsson/fmradio/service/TimerHandler$TimerListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/TimerHandler;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/TimerHandler;->mListener:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerListener;

    return-object v0
.end method


# virtual methods
.method public cancelTimer(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/TimerHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method public destroy()V
    .locals 5

    .prologue
    .line 66
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sonyericsson/fmradio/service/TimerHandler;->mListener:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerListener;

    .line 67
    invoke-static {}, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->values()[Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 68
    .local v3, "t":Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;
    invoke-virtual {p0, v3}, Lcom/sonyericsson/fmradio/service/TimerHandler;->cancelTimer(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v3    # "t":Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;
    :cond_0
    return-void
.end method

.method public hasTimer(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)Z
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/TimerHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public startTimer(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V
    .locals 4
    .param p1, "type"    # Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/service/TimerHandler;->cancelTimer(Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;)V

    .line 78
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/TimerHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 79
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/TimerHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->getTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 80
    return-void
.end method
