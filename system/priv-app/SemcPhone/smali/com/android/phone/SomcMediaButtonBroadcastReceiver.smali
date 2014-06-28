.class public Lcom/android/phone/SomcMediaButtonBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SomcMediaButtonBroadcastReceiver.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlingShortPress:Z

.field private mLongPressDetected:Z

.field private shortPressTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mHandler:Landroid/os/Handler;

    .line 42
    iput-boolean v1, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mHandlingShortPress:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mLongPressDetected:Z

    .line 48
    new-instance v0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcMediaButtonBroadcastReceiver$1;-><init>(Lcom/android/phone/SomcMediaButtonBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->shortPressTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SomcMediaButtonBroadcastReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcMediaButtonBroadcastReceiver;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->updateUi()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/SomcMediaButtonBroadcastReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcMediaButtonBroadcastReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mHandlingShortPress:Z

    return p1
.end method

.method private updateUi()V
    .locals 2

    .prologue
    .line 219
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 220
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method public handleHeadsetHook(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 101
    const-string v7, "SomcMediaButtonBroadcastReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleHeadsetHook()..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v0, v7, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 105
    .local v0, "cm":Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_0

    move v3, v5

    .line 106
    .local v3, "hasRingingCall":Z
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_1

    move v1, v5

    .line 107
    .local v1, "hasActiveCall":Z
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_2

    move v2, v5

    .line 108
    .local v2, "hasHoldingCall":Z
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    .line 109
    .local v4, "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    const-string v7, "SomcMediaButtonBroadcastReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasRingingCall:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v7, "SomcMediaButtonBroadcastReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasActiveCall:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v7, "SomcMediaButtonBroadcastReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasHoldingCall:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v7, "SomcMediaButtonBroadcastReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "phoneState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v7, :cond_3

    .line 183
    :goto_3
    return v6

    .end local v1    # "hasActiveCall":Z
    .end local v2    # "hasHoldingCall":Z
    .end local v3    # "hasRingingCall":Z
    .end local v4    # "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_0
    move v3, v6

    .line 105
    goto :goto_0

    .restart local v3    # "hasRingingCall":Z
    :cond_1
    move v1, v6

    .line 106
    goto :goto_1

    .restart local v1    # "hasActiveCall":Z
    :cond_2
    move v2, v6

    .line 107
    goto :goto_2

    .line 131
    .restart local v2    # "hasHoldingCall":Z
    .restart local v4    # "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_5

    .line 134
    iput-boolean v6, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mLongPressDetected:Z

    :cond_4
    :goto_4
    move v6, v5

    .line 183
    goto :goto_3

    .line 135
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-ne v7, v5, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_6

    .line 138
    const-string v6, "SomcMediaButtonBroadcastReceiver"

    const-string v7, "handleHeadsetHook: longpress -> hangup"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput-boolean v5, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mLongPressDetected:Z

    .line 140
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 141
    invoke-direct {p0}, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->updateUi()V

    goto :goto_4

    .line 143
    :cond_6
    iget-boolean v7, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mLongPressDetected:Z

    if-nez v7, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-ne v7, v5, :cond_4

    .line 148
    const-string v7, "SomcMediaButtonBroadcastReceiver"

    const-string v8, "handleHeadsetHook: short press"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-boolean v7, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mHandlingShortPress:Z

    if-eqz v7, :cond_8

    .line 153
    const-string v7, "SomcMediaButtonBroadcastReceiver"

    const-string v8, "handleHeadsetHook: double press"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v7, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->shortPressTask:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    iput-boolean v6, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mHandlingShortPress:Z

    .line 156
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 158
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v6, :cond_7

    const-string v6, "SomcMediaButtonBroadcastReceiver"

    const-string v7, "switch calls"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 160
    invoke-direct {p0}, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->updateUi()V

    goto :goto_4

    .line 164
    :cond_8
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v6, :cond_9

    const-string v6, "SomcMediaButtonBroadcastReceiver"

    const-string v7, "post short press task"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_9
    iget-object v6, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->shortPressTask:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    iput-boolean v5, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mHandlingShortPress:Z

    goto :goto_4
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 188
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 189
    .local v2, "event":Landroid/view/KeyEvent;
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "SomcMediaButtonBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaButtonBroadcastReceiver.onReceive()...  event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x4f

    if-ne v3, v4, :cond_4

    .line 193
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v3, :cond_1

    const-string v3, "SomcMediaButtonBroadcastReceiver"

    const-string v4, "MediaButtonBroadcastReceiver: HEADSETHOOK"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->handleHeadsetHook(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 195
    .local v1, "consumed":Z
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v3, :cond_2

    .line 196
    const-string v3, "SomcMediaButtonBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> handleHeadsetHook(): consumed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_2
    if-eqz v1, :cond_3

    .line 199
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    .line 212
    .end local v1    # "consumed":Z
    :cond_3
    :goto_0
    return-void

    .line 202
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 203
    .local v0, "cm":Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_3

    .line 208
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v3, :cond_5

    const-string v3, "SomcMediaButtonBroadcastReceiver"

    const-string v4, "MediaButtonBroadcastReceiver: consumed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_5
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    goto :goto_0
.end method
