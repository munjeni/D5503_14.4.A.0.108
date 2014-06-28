.class Lcom/sonyericsson/fmradio/service/SystemStateHandler;
.super Landroid/content/BroadcastReceiver;
.source "SystemStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/SystemStateHandler;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/SystemStateHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 42
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/SystemStateHandler;->mListener:Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/SystemStateHandler;->mListener:Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;->onWake()V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/SystemStateHandler;->mListener:Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/SystemStateHandler;->mListener:Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;->onSleep()V

    goto :goto_0

    .line 54
    :cond_2
    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/SystemStateHandler;->mListener:Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/SystemStateHandler;->mListener:Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;->onAudioBecomingNoisy()V

    goto :goto_0
.end method

.method public setSystemStateListener(Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/SystemStateHandler;->mListener:Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;

    .line 63
    return-void
.end method
