.class public Lcom/sonyericsson/fmradio/service/PhfHandler;
.super Landroid/content/BroadcastReceiver;
.source "PhfHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;
    }
.end annotation


# static fields
.field public static final CLICK_TIME_SEPARATOR:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "PhfHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsBtConnected:Z

.field private mListener:Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;

.field private mMediaButtonEventSender:Ljava/lang/Runnable;

.field private mNbrOfPresses:I

.field private mOldState:I

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    iput-boolean v5, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mIsBtConnected:Z

    .line 189
    new-instance v3, Lcom/sonyericsson/fmradio/service/PhfHandler$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/fmradio/service/PhfHandler$1;-><init>(Lcom/sonyericsson/fmradio/service/PhfHandler;)V

    iput-object v3, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mMediaButtonEventSender:Ljava/lang/Runnable;

    .line 52
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mContext:Landroid/content/Context;

    .line 56
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 62
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 63
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 65
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mIsBtConnected:Z

    .line 68
    :cond_0
    if-eqz v2, :cond_1

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    const-string v3, "state"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mOldState:I

    .line 71
    :cond_1
    invoke-direct {p0, v2}, Lcom/sonyericsson/fmradio/service/PhfHandler;->handleIntent(Landroid/content/Intent;)V

    .line 73
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/fmradio/service/PhfHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/service/PhfHandler;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/PhfHandler;->callMediaButtonListener()V

    return-void
.end method

.method private callMediaButtonListener()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mListener:Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mListener:Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;

    iget v1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mNbrOfPresses:I

    invoke-interface {v0, v1}, Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;->onMediaButtonPress(I)V

    .line 201
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mNbrOfPresses:I

    .line 202
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 96
    if-eqz p1, :cond_2

    .line 97
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    const-string v3, "state"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mState:I

    .line 107
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mListener:Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mOldState:I

    iget v4, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mState:I

    if-eq v3, v4, :cond_1

    .line 109
    iget-object v3, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mListener:Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;

    iget v4, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mState:I

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-interface {v3, v2}, Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;->onPhfConnected(Z)V

    .line 111
    :cond_1
    iget v2, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mState:I

    iput v2, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mOldState:I

    .line 128
    :cond_2
    :goto_0
    return-void

    .line 112
    :cond_3
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 116
    .local v1, "state":I
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mIsBtConnected:Z

    .line 117
    .local v0, "newState":Z
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 118
    const/4 v0, 0x1

    .line 122
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mListener:Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mIsBtConnected:Z

    if-eq v0, v2, :cond_2

    .line 123
    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mIsBtConnected:Z

    .line 124
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mListener:Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;

    iget-boolean v3, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mIsBtConnected:Z

    invoke-interface {v2, v3}, Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;->onHeadsetConnectionChanged(Z)V

    goto :goto_0

    .line 119
    :cond_5
    if-nez v1, :cond_4

    .line 120
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleMediaButton()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x12c

    .line 168
    iget v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mNbrOfPresses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mNbrOfPresses:I

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mMediaButtonEventSender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    iget v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mNbrOfPresses:I

    packed-switch v0, :pswitch_data_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected number of Media Button Presses"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mMediaButtonEventSender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    :goto_0
    return-void

    .line 179
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mMediaButtonEventSender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/PhfHandler;->callMediaButtonListener()V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mMediaButtonEventSender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mListener:Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;

    .line 80
    return-void
.end method

.method public isBtConnected()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mIsBtConnected:Z

    return v0
.end method

.method public isPhfConnected()Z
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMediaButtonKeyDownEvent()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/service/PhfHandler;->handleMediaButton()V

    .line 93
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    invoke-direct {p0, p2}, Lcom/sonyericsson/fmradio/service/PhfHandler;->handleIntent(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public setPhfListener(Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler;->mListener:Lcom/sonyericsson/fmradio/service/PhfHandler$PhfListener;

    .line 132
    return-void
.end method
