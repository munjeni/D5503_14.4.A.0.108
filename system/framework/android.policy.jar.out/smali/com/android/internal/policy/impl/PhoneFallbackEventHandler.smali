.class public Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field mSearchManager:Landroid/app/SearchManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "PhoneFallbackEventHandler"

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 380
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 382
    .local v0, "audioService":Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 384
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 389
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "Unable to find IAudioService for media key event."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 70
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 72
    .local v1, "keyCode":I
    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 75
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 15
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v12

    .line 86
    .local v12, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    sparse-switch p1, :sswitch_data_0

    .line 225
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 90
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    const/high16 v3, -0x80000000

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v3}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    .line 91
    const/4 v1, 0x1

    goto :goto_1

    .line 100
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const/4 v1, 0x1

    goto :goto_1

    .line 112
    :cond_1
    :sswitch_2
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 113
    const/4 v1, 0x1

    goto :goto_1

    .line 117
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v12, :cond_0

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 121
    move-object/from16 v0, p2

    invoke-virtual {v12, v0, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 136
    :cond_2
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 124
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 126
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 131
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 132
    :catch_0
    move-exception v13

    .line 133
    .local v13, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_2

    .line 140
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v13    # "e":Landroid/content/ActivityNotFoundException;
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v12, :cond_0

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 144
    move-object/from16 v0, p2

    invoke-virtual {v12, v0, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 156
    :cond_4
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 145
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 146
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 147
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 150
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.CAMERA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 151
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    const-string v1, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    .line 160
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v12, :cond_0

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_6

    .line 164
    move-object/from16 v0, p2

    invoke-virtual {v12, v0, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 165
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    .line 167
    .local v11, "config":Landroid/content/res/Configuration;
    iget v1, v11, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    iget v1, v11, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 170
    :cond_7
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 172
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/SearchManager;->stopSearch()V

    .line 177
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 181
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 193
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v11    # "config":Landroid/content/res/Configuration;
    :sswitch_6
    new-instance v10, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/4 v3, 0x4

    invoke-direct {v10, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 194
    .local v10, "backEvent":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_1

    .line 198
    .end local v10    # "backEvent":Landroid/view/KeyEvent;
    :sswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_9

    .line 199
    move-object/from16 v0, p2

    invoke-virtual {v12, v0, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 215
    :cond_8
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 200
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 201
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 208
    new-instance v2, Landroid/content/Intent;

    const-string v1, "com.sonymobile.action.PROG_RED_KEYEVENT_FOR_USER"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v1, "com.sonymobile.extra.PROG_RED_KEYACTION__FOR_USER_DOWN"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4

    .line 220
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_8
    new-instance v14, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v3, 0x52

    invoke-direct {v14, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 221
    .local v14, "menuEvent":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v1, v14}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_1

    .line 183
    .end local v14    # "menuEvent":Landroid/view/KeyEvent;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v11    # "config":Landroid/content/res/Configuration;
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_3
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_4
        0x4f -> :sswitch_2
        0x54 -> :sswitch_5
        0x55 -> :sswitch_1
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xb7 -> :sswitch_7
        0xb8 -> :sswitch_8
        0xba -> :sswitch_6
        0xde -> :sswitch_2
    .end sparse-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v8, 0x10000000

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 232
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    .line 233
    .local v2, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {v2, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 237
    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    move v5, v6

    .line 331
    :cond_2
    :goto_0
    return v5

    .line 241
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 242
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 244
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v6

    const/high16 v7, -0x80000000

    invoke-virtual {v6, p2, v7}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    goto :goto_0

    .line 263
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 268
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-nez v7, :cond_1

    .line 271
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 278
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-nez v7, :cond_1

    .line 281
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_0

    .line 289
    :sswitch_4
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x4

    invoke-direct {v1, v5, v6}, Landroid/view/KeyEvent;-><init>(II)V

    .line 290
    .local v1, "backEvent":Landroid/view/KeyEvent;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_0

    .line 294
    .end local v1    # "backEvent":Landroid/view/KeyEvent;
    :sswitch_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 301
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.sonymobile.action.PROG_RED_KEYEVENT_FOR_USER"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "com.sonymobile.extra.PROG_RED_KEYACTION__FOR_USER_DOWN"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 305
    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 306
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 318
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_6
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.sonymobile.action.PROG_YELLOW_KEYEVENT_FOR_USER"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v7, "com.sonymobile.extra.PROG_YELLOW_KEYACTION__FOR_USER_DOWN"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 320
    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 321
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 327
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_7
    new-instance v4, Landroid/view/KeyEvent;

    const/16 v6, 0x52

    invoke-direct {v4, v5, v6}, Landroid/view/KeyEvent;-><init>(II)V

    .line 328
    .local v4, "menuEvent":Landroid/view/KeyEvent;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 237
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_3
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_2
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xb7 -> :sswitch_5
        0xb8 -> :sswitch_7
        0xb9 -> :sswitch_6
        0xba -> :sswitch_4
        0xde -> :sswitch_1
    .end sparse-switch
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;I)V

    .line 65
    return-void
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    .line 61
    return-void
.end method

.method startCallActivity()V
    .locals 4

    .prologue
    const/high16 v3, 0x10000000

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 336
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 338
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "No activity found for android.intent.action.CALL_BUTTON."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
