.class public Lcom/android/phone/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneUtils$5;,
        Lcom/android/phone/PhoneUtils$CallerInfoToken;,
        Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;,
        Lcom/android/phone/PhoneUtils$ConnectionHandler;
    }
.end annotation


# static fields
.field private static mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

.field private static sAudioBehaviourState:I

.field static sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field private static sConnectionMuteTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsNoiseSuppressionEnabled:Z

.field private static sIsSpeakerEnabled:Z

.field private static sVoipSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    sput v1, Lcom/android/phone/PhoneUtils;->sAudioBehaviourState:I

    .line 122
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 125
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    .line 138
    sput-boolean v0, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    .line 1846
    new-instance v2, Lcom/android/phone/PhoneUtils$4;

    invoke-direct {v2}, Lcom/android/phone/PhoneUtils$4;-><init>()V

    sput-object v2, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 2896
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->sVoipSupported:Z

    .line 2898
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    .line 2899
    invoke-static {v2}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/PhoneUtils;->sVoipSupported:Z

    .line 2902
    return-void

    :cond_0
    move v0, v1

    .line 2899
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/Phone;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/Phone;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Dialog;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Dialog;

    .prologue
    .line 94
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->dismissUSSDUserInputDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private static activateSpeakerIfCarMode(Lcom/android/internal/telephony/Phone;)Z
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v3, 0x1

    .line 2794
    const/4 v0, 0x0

    .line 2795
    .local v0, "activated":Z
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isCarMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2796
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 2798
    .local v1, "app":Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2799
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2800
    const/4 v0, 0x1

    .line 2803
    .end local v1    # "app":Lcom/android/phone/PhoneGlobals;
    :cond_0
    return v0
.end method

.method private static activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2767
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "activateSpeakerIfDocked()..."

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2769
    :cond_0
    const/4 v1, 0x0

    .line 2770
    sget v2, Lcom/android/phone/PhoneGlobals;->mDockState:I

    if-eqz v2, :cond_2

    .line 2771
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_1

    .line 2772
    const-string v2, "activateSpeakerIfDocked(): In a dock -> may need to turn on speaker."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2774
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    .line 2776
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2777
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2781
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z
    .locals 4
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "ringing"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v3, 0x3

    .line 547
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "answerAndEndActive()..."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 550
    .local v0, "fgType":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 561
    .local v1, "ringType":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 562
    const-string v2, "PhoneUtils"

    const-string v3, "end active call failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v2, 0x0

    .line 575
    :goto_0
    return v2

    .line 569
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq v0, v3, :cond_2

    if-ne v1, v3, :cond_3

    .line 572
    :cond_2
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_0

    .line 575
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static answerCall(Lcom/android/internal/telephony/Call;)Z
    .locals 15
    .param p0, "ringing"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 251
    sget-boolean v13, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v13, :cond_0

    const-string v13, "answerCall()..."

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 252
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    .line 256
    .local v2, "app":Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/phone/Ringer;->stopRing()V

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "answered":Z
    if-nez p0, :cond_1

    move v1, v0

    .line 360
    .end local v0    # "answered":Z
    .local v1, "answered":I
    :goto_0
    return v1

    .line 262
    .end local v1    # "answered":I
    .restart local v0    # "answered":Z
    :cond_1
    invoke-static {v2}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-static {v2}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/phone/am/SomcAmManager;->isAmAnswerCallByDeviceSelf()Z

    move-result v13

    if-nez v13, :cond_2

    .line 264
    invoke-static {v2}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/phone/am/SomcAmManager;->pickUpCallByUser()V

    .line 267
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 268
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_7

    .line 269
    .local v9, "phoneIsCdma":Z
    :goto_1
    const/4 v3, 0x0

    .line 271
    .local v3, "btPhone":Landroid/bluetooth/IBluetoothHeadsetPhone;
    if-eqz v9, :cond_3

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_3

    .line 274
    iget-object v7, v2, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    .line 275
    .local v7, "notifier":Lcom/android/phone/CallNotifier;
    invoke-virtual {v7}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 279
    .end local v7    # "notifier":Lcom/android/phone/CallNotifier;
    :cond_3
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 280
    sget-boolean v12, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v12, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "answerCall: call state = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 282
    :cond_4
    if-eqz v9, :cond_5

    .line 283
    :try_start_0
    iget-object v12, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v12}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v12

    sget-object v13, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v13, :cond_8

    .line 287
    iget-object v12, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v13, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v12, v13}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 313
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v6

    .line 316
    .local v6, "isRealIncomingCall":Z
    iget-object v12, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12, p0}, Lcom/android/internal/telephony/CallManager;->acceptCall(Lcom/android/internal/telephony/Call;)V

    .line 317
    const/4 v0, 0x1

    .line 320
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 322
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 325
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    .line 327
    .local v10, "speakerActivated":Z
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfCarMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    .line 337
    .local v11, "speakerActivatedByCarMode":Z
    if-eqz v6, :cond_6

    if-nez v10, :cond_6

    if-nez v11, :cond_6

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v12

    if-nez v12, :cond_6

    .line 340
    const-string v12, "PhoneUtils"

    const-string v13, "Forcing speaker off due to new incoming call..."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v2, v12, v13}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .end local v6    # "isRealIncomingCall":Z
    .end local v10    # "speakerActivated":Z
    .end local v11    # "speakerActivatedByCarMode":Z
    :cond_6
    :goto_3
    move v1, v0

    .line 360
    .restart local v1    # "answered":I
    goto/16 :goto_0

    .end local v1    # "answered":I
    .end local v3    # "btPhone":Landroid/bluetooth/IBluetoothHeadsetPhone;
    .end local v9    # "phoneIsCdma":Z
    :cond_7
    move v9, v12

    .line 268
    goto/16 :goto_1

    .line 292
    .restart local v3    # "btPhone":Landroid/bluetooth/IBluetoothHeadsetPhone;
    .restart local v9    # "phoneIsCdma":Z
    :cond_8
    iget-object v12, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v13, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v12, v13}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 297
    iget-object v12, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 302
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 303
    if-eqz v3, :cond_5

    .line 305
    const/4 v12, 0x1

    :try_start_1
    invoke-interface {v3, v12}, Landroid/bluetooth/IBluetoothHeadsetPhone;->cdmaSetSecondCallState(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 306
    :catch_0
    move-exception v4

    .line 307
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v12, "PhoneUtils"

    new-instance v13, Ljava/lang/Throwable;

    invoke-direct {v13}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 343
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    .line 344
    .local v5, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v12, "PhoneUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "answerCall: caught "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    if-eqz v9, :cond_6

    .line 348
    iget-object v12, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    iget-object v13, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v13}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 350
    if-eqz v3, :cond_6

    .line 352
    const/4 v12, 0x0

    :try_start_3
    invoke-interface {v3, v12}, Landroid/bluetooth/IBluetoothHeadsetPhone;->cdmaSetSecondCallState(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 353
    :catch_2
    move-exception v4

    .line 354
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v12, "PhoneUtils"

    new-instance v13, Ljava/lang/Throwable;

    invoke-direct {v13}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static audioModeToString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2259
    packed-switch p0, :pswitch_data_0

    .line 2265
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2260
    :pswitch_0
    const-string v0, "MODE_INVALID"

    goto :goto_0

    .line 2261
    :pswitch_1
    const-string v0, "MODE_CURRENT"

    goto :goto_0

    .line 2262
    :pswitch_2
    const-string v0, "MODE_NORMAL"

    goto :goto_0

    .line 2263
    :pswitch_3
    const-string v0, "MODE_RINGTONE"

    goto :goto_0

    .line 2264
    :pswitch_4
    const-string v0, "MODE_IN_CALL"

    goto :goto_0

    .line 2259
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1337
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    .line 1338
    if-nez v0, :cond_0

    .line 1357
    :goto_0
    return v1

    .line 1341
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1342
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelMmiCode: num pending MMIs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1345
    :cond_1
    if-lez v2, :cond_2

    .line 1350
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 1351
    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1352
    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    .line 1353
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 1357
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 2660
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2661
    const-string v0, "PhoneUtils"

    const-string v1, "checkAndCopyPhoneProviderExtras: some or all extras are missing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    :goto_0
    return-void

    .line 2665
    :cond_0
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    const-string v1, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2667
    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    const-string v1, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static checkCnapSpecialCases(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 2537
    const-string v0, "PRIVATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "P"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2540
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCnapSpecialCases, PRIVATE string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2541
    :cond_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    .line 2550
    :goto_0
    return v0

    .line 2542
    :cond_2
    const-string v0, "UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "UNA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "U"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2546
    :cond_3
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCnapSpecialCases, UNKNOWN string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2547
    :cond_4
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    goto :goto_0

    .line 2549
    :cond_5
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCnapSpecialCases, normal str. number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2550
    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static convertCallToIMS(Landroid/content/Intent;I)V
    .locals 4

    .prologue
    .line 3123
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 3124
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 3125
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3126
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3128
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    .line 3129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent for IMS conversion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "extras"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3132
    :cond_0
    invoke-static {v0, p0}, Lcom/android/phone/PhoneUtils;->isIMSCallIntent(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3133
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "IMS Conversion not required "

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3155
    :cond_1
    :goto_0
    return-void

    .line 3136
    :cond_2
    const-string v0, "sip"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3137
    const-string v0, "android.phone.extra.CALL_TYPE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3146
    const-string v0, "com.android.phone.extra.DIAL_CONFERENCE_URI"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 3148
    const-string v2, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 3150
    const-string v0, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3153
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS Converted intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "extras"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static copyIMSExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2637
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2638
    :cond_0
    const-string v0, "PhoneUtils"

    const-string v1, "intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    :goto_0
    return-void

    .line 2642
    :cond_1
    const-string v0, "android.phone.extra.CALL_TYPE"

    const-string v1, "android.phone.extra.CALL_TYPE"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2644
    const-string v0, "android.phone.extra.CALL_DOMAIN"

    const-string v1, "android.phone.extra.CALL_DOMAIN"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2646
    const-string v0, "com.android.phone.extra.DIAL_CONFERENCE_URI"

    const-string v1, "com.android.phone.extra.DIAL_CONFERENCE_URI"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static dismissUSSDUserInputDialog(Landroid/app/Dialog;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1297
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 1298
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1299
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->setUssdUserInputDialog(Landroid/app/AlertDialog;)V

    .line 1300
    return-void
.end method

.method static displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v9, 0x7d8

    const/4 v8, 0x2

    const/4 v3, 0x0

    .line 1080
    .line 1081
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v5

    .line 1083
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayMMIComplete: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1085
    :cond_0
    if-eqz p4, :cond_1

    .line 1086
    invoke-virtual {p4}, Landroid/app/Dialog;->dismiss()V

    .line 1089
    :cond_1
    sget-object v0, Lcom/android/phone/PhoneUtils$5;->$SwitchMap$com$android$internal$telephony$MmiCode$State:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1114
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected MmiCode state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1092
    :pswitch_0
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1093
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- using text from PENDING MMI message: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v4, v0

    move v0, v3

    .line 1119
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    .line 1120
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v5, v1, :cond_5

    .line 1121
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_2

    const-string v1, "displaying PUK unblocking progress dialog."

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1125
    :cond_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1126
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 1127
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1128
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1129
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1130
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->setType(I)V

    .line 1131
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->addFlags(I)V

    .line 1134
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1138
    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneGlobals;->setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V

    .line 1294
    :cond_3
    :goto_1
    :pswitch_1
    return-void

    .line 1098
    :pswitch_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1101
    const v0, 0x1040070

    .line 1102
    const v1, 0x7f0b0214

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v4, v1

    .line 1103
    goto :goto_0

    .line 1110
    :cond_4
    :pswitch_3
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1111
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- using text from MMI message: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v4, v0

    move v0, v3

    goto :goto_0

    .line 1143
    :cond_5
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1144
    invoke-virtual {v2, v6}, Lcom/android/phone/PhoneGlobals;->setPukEntryActivity(Landroid/app/Activity;)V

    .line 1149
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v5, v0, :cond_a

    .line 1150
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_7

    const-string v0, "MMI code has finished running."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1152
    :cond_7
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1154
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->isNetworkInitiated()Z

    move-result v0

    .line 1155
    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMmiDialogEnable()Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v5, v1, :cond_3

    .line 1159
    :cond_8
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d0005

    invoke-direct {v1, p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01fd

    invoke-virtual {v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1166
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/Window;->setType(I)V

    .line 1168
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Window;->addFlags(I)V

    .line 1171
    if-eqz v0, :cond_9

    .line 1172
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->playSoundNotification(Landroid/content/Context;)V

    .line 1174
    :cond_9
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 1178
    :cond_a
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_b

    .line 1179
    const-string v0, "USSD code has requested user input. Constructing input dialog."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1205
    :cond_b
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1207
    const v1, 0x7f030018

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1210
    const v0, 0x7f070026

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1213
    const v0, 0x7f070060

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0d0005

    invoke-direct {v0, p1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1223
    const v0, 0x7f070061

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    .line 1224
    new-instance v0, Lcom/android/phone/PhoneUtils$1;

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/PhoneUtils$1;-><init>(Landroid/widget/EditText;Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/MmiCode;Lcom/android/internal/telephony/Phone;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1245
    const v0, 0x7f070062

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1246
    new-instance v3, Lcom/android/phone/PhoneUtils$2;

    invoke-direct {v3, p2, v5}, Lcom/android/phone/PhoneUtils$2;-><init>(Lcom/android/internal/telephony/MmiCode;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1257
    new-instance v0, Lcom/android/phone/PhoneUtils$3;

    invoke-direct {v0, p0, v1, v5}, Lcom/android/phone/PhoneUtils$3;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1277
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1280
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->setType(I)V

    .line 1282
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->addFlags(I)V

    .line 1285
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->isNetworkInitiated()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1286
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->playSoundNotification(Landroid/content/Context;)V

    .line 1290
    :cond_c
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1291
    invoke-virtual {v2, v5}, Lcom/android/phone/PhoneGlobals;->setUssdUserInputDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_1

    :cond_d
    move-object v4, v0

    move v0, v3

    goto/16 :goto_0

    .line 1089
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static dumpCallManager()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3008
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3009
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3011
    const-string v0, "PhoneUtils"

    const-string v3, "############### dumpCallManager() ##############"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    const-string v0, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3015
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3016
    const-string v0, " - FG call: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "YES "

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3017
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3018
    const-string v0, "  State: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3019
    const-string v0, "  Conn: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3020
    const-string v0, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3022
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3023
    const-string v0, " - BG call: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "YES "

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3024
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3025
    const-string v0, "  State: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3026
    const-string v0, "  Conn: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3027
    const-string v0, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3029
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3030
    const-string v0, " - RINGING call: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "YES "

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3031
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3032
    const-string v0, "  State: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3033
    const-string v0, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 3038
    if-eqz v0, :cond_0

    .line 3039
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3042
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3043
    const-string v4, " - FG call: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3044
    const-string v4, "  State: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3045
    const-string v4, "  Conn: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3046
    const-string v3, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3048
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3049
    const-string v4, " - BG call: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3050
    const-string v4, "  State: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3051
    const-string v4, "  Conn: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3052
    const-string v3, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3053
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3054
    const-string v3, " - RINGING call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3055
    const-string v3, "  State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3056
    const-string v3, "  Conn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3057
    const-string v0, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3016
    :cond_1
    const-string v0, "NO "

    goto/16 :goto_0

    .line 3023
    :cond_2
    const-string v0, "NO "

    goto/16 :goto_1

    .line 3030
    :cond_3
    const-string v0, "NO "

    goto/16 :goto_2

    .line 3061
    :cond_4
    const-string v0, "PhoneUtils"

    const-string v1, "############## END dumpCallManager() ###############"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    return-void
.end method

.method static dumpCallState(Lcom/android/internal/telephony/Phone;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2936
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    .line 2937
    const-string v0, "PhoneUtils"

    const-string v3, "dumpCallState():"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    const-string v0, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- Phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2943
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2944
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2945
    const-string v3, "  - FG call: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2946
    const-string v3, " isAlive "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2947
    const-string v3, " isRinging "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2948
    const-string v3, " isDialing "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2949
    const-string v3, " isIdle "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2950
    const-string v3, " hasConnections "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2951
    const-string v0, "PhoneUtils"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2954
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2955
    const-string v3, "  - BG call: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2956
    const-string v3, " isAlive "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2957
    const-string v3, " isRinging "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2958
    const-string v3, " isDialing "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2959
    const-string v3, " isIdle "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2960
    const-string v3, " hasConnections "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2961
    const-string v0, "PhoneUtils"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2964
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2965
    const-string v3, "  - RINGING call: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2966
    const-string v3, " isAlive "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2967
    const-string v3, " isRinging "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2968
    const-string v3, " isDialing "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2969
    const-string v3, " isIdle "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2970
    const-string v3, " hasConnections "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2971
    const-string v0, "PhoneUtils"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 2975
    :goto_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    .line 2976
    :goto_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v1

    .line 2977
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 2978
    :goto_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2979
    const-string v2, "  - hasRingingCall "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2980
    const-string v0, " hasActiveCall "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2981
    const-string v0, " hasHoldingCall "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2982
    const-string v0, " allLinesTaken "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2983
    const-string v0, "PhoneUtils"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2987
    iget-object v0, v5, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v0, :cond_5

    .line 2988
    const-string v0, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - CDMA call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    :cond_0
    :goto_4
    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    .line 2999
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - Ringer state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    return-void

    :cond_1
    move v0, v2

    .line 2974
    goto/16 :goto_0

    :cond_2
    move v3, v2

    .line 2975
    goto/16 :goto_1

    :cond_3
    move v4, v2

    .line 2976
    goto/16 :goto_2

    :cond_4
    move v1, v2

    .line 2977
    goto/16 :goto_3

    .line 2991
    :cond_5
    const-string v0, "PhoneUtils"

    const-string v1, "  - CDMA device, but null cdmaPhoneCallState!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method static formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2726
    if-eqz p0, :cond_1

    .line 2727
    const-string v0, "tel"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2728
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2733
    :goto_0
    return-object v0

    .line 2730
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2733
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 4

    .prologue
    .line 1483
    const/4 v0, 0x0

    .line 1485
    if-eqz p1, :cond_0

    .line 1489
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 1490
    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 1491
    check-cast v0, Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 1492
    if-eqz v0, :cond_0

    .line 1493
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1521
    :cond_0
    :goto_0
    return-object v0

    .line 1496
    :cond_1
    instance-of v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_3

    .line 1498
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    .line 1503
    :goto_1
    if-nez v0, :cond_0

    .line 1506
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1508
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_2

    .line 1509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallerInfo: number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1512
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1513
    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 1514
    if-eqz v0, :cond_0

    .line 1515
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_0

    .line 1501
    :cond_3
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1
.end method

.method static getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1952
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1913
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCompactNameFromCallerInfo: info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1915
    :cond_0
    const/4 v0, 0x0

    .line 1916
    if-eqz p0, :cond_1

    .line 1917
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1920
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p1, p0, v0, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1922
    if-eqz p2, :cond_1

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1930
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1934
    :cond_2
    if-eqz p0, :cond_6

    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v0, v1, :cond_6

    .line 1935
    const v0, 0x7f0b01c7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1942
    :cond_3
    :goto_1
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCompactNameFromCallerInfo: compactName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1943
    :cond_4
    return-object v0

    .line 1926
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 1936
    :cond_6
    if-eqz p0, :cond_7

    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    if-ne v0, v1, :cond_7

    .line 1937
    const v0, 0x7f0b01c8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1939
    :cond_7
    const v0, 0x7f0b01c6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3066
    .line 3068
    if-nez p0, :cond_0

    .line 3069
    const/4 v0, 0x0

    .line 3081
    :goto_0
    return-object v0

    .line 3073
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 3075
    if-eqz v2, :cond_1

    .line 3076
    const/4 v3, 0x0

    .line 3077
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 3081
    goto :goto_0
.end method

.method public static getIMSPhone(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;
    .locals 4

    .prologue
    .line 2876
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Find IMS phone:"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2877
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 2878
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 2879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found IMSPhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2884
    :goto_0
    return-object v0

    .line 2883
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "IMS phone not present"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2884
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 1395
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInitialNumber(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1397
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1398
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1399
    const/4 v0, 0x0

    .line 1415
    :cond_1
    :goto_0
    return-object v0

    .line 1405
    :cond_2
    const-string v0, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1406
    const-string v0, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1408
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    .line 1409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==> got EXTRA_ACTUAL_NUMBER_TO_DIAL; returning \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1415
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getMute()Z
    .locals 3

    .prologue
    .line 2219
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 2221
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 2223
    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 2225
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2227
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    .line 2229
    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getMute()Z

    move-result v0

    goto :goto_0
.end method

.method private static getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 1443
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1444
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1448
    const-string v2, "sip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1449
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1463
    :cond_0
    return-object v0

    .line 1455
    :cond_1
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1459
    const-string v2, "voicemail"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1461
    :cond_2
    new-instance v0, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;-><init>()V

    throw v0
.end method

.method public static getPresentationString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2912
    const v0, 0x7f0b01c6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2913
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 2914
    const v0, 0x7f0b0086

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2918
    :cond_0
    :goto_0
    return-object v0

    .line 2915
    :cond_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    .line 2916
    const v0, 0x7f0b01c8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 2714
    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2715
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 2698
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2699
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2702
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2704
    :goto_0
    return-object v0

    .line 2703
    :catch_0
    move-exception v0

    .line 2704
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 2679
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2680
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2683
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2685
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2687
    :goto_0
    return-object v0

    .line 2686
    :catch_0
    move-exception v0

    .line 2687
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .locals 4

    .prologue
    .line 2858
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 2859
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    move-object v1, v0

    .line 2860
    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v1

    .line 2861
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2862
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- pickPhoneBasedOnNumber:found SipPhone! obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2869
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static hangup(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p0, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 520
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmManager;->isAmHangupCallByDeviceSelf()Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmManager;->hangUpCallByUser()V

    .line 526
    :cond_0
    if-eqz p0, :cond_1

    .line 527
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :cond_1
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection hangup: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static hangup(Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 490
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/am/SomcAmManager;->isAmHangupCallByDeviceSelf()Z

    move-result v2

    if-nez v2, :cond_0

    .line 493
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/am/SomcAmManager;->hangUpCallByUser()V

    .line 496
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 498
    .local v0, "cm":Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_1

    const-string v2, "- hangup(Call): hangupForegroundResumeBackground..."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 501
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V

    .line 506
    :goto_0
    const/4 v2, 0x1

    .line 511
    .end local v0    # "cm":Lcom/android/internal/telephony/CallManager;
    :goto_1
    return v2

    .line 503
    .restart local v0    # "cm":Lcom/android/internal/telephony/CallManager;
    :cond_2
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_3

    const-string v2, "- hangup(Call): regular hangup()..."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 504
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 507
    .end local v0    # "cm":Lcom/android/internal/telephony/CallManager;
    :catch_0
    move-exception v1

    .line 508
    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call hangup: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static hangup(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 376
    const/4 v2, 0x0

    .line 377
    .local v2, "hungup":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 378
    .local v3, "ringing":Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 379
    .local v1, "fg":Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 381
    .local v0, "bg":Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_3

    .line 382
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_0

    const-string v4, "hangup(): hanging up ringing call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 383
    :cond_0
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 398
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> hungup = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 400
    :cond_2
    return v2

    .line 384
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_5

    .line 385
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_4

    const-string v4, "hangup(): hanging up foreground call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 386
    :cond_4
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_0

    .line 387
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_7

    .line 388
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_6

    const-string v4, "hangup(): hanging up background call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 389
    :cond_6
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_0

    .line 396
    :cond_7
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_1

    const-string v4, "hangup(): no active call to hang up"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static hangupActiveCall(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .param p0, "foreground"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 445
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "hangup active call"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 446
    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .param p0, "background"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 450
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "hangup holding call"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 451
    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z
    .locals 6
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 460
    const/4 v3, 0x0

    .line 461
    .local v3, "hungUpRingingCall":Z
    const/4 v2, 0x0

    .line 462
    .local v2, "hungUpFgCall":Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v0, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 463
    .local v0, "cm":Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 464
    .local v4, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 467
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_1

    .line 468
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v5, :cond_0

    const-string v5, "hangupRingingAndActive: Hang up Ringing Call"

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 469
    :cond_0
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 473
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3

    .line 474
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v5, :cond_2

    const-string v5, "hangupRingingAndActive: Hang up Foreground Call"

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 475
    :cond_2
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 478
    :cond_3
    if-nez v3, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static hangupRingingCall(Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .param p0, "ringing"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 404
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "hangup ringing call"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 406
    .local v1, "phoneType":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 408
    .local v2, "state":Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 410
    const-string v3, "hangupRingingCall(): regular incoming call: hangup()"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 411
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 440
    :goto_0
    return v3

    .line 412
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3

    .line 419
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 423
    const-string v3, "hangupRingingCall(): CDMA-specific call-waiting hangup"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    .line 425
    .local v0, "notifier":Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->sendCdmaCallWaitingReject()V

    .line 426
    const/4 v3, 0x1

    goto :goto_0

    .line 430
    .end local v0    # "notifier":Lcom/android/phone/CallNotifier;
    :cond_2
    const-string v3, "hangupRingingCall(): call-waiting call: hangup()"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 431
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_0

    .line 439
    :cond_3
    const-string v3, "PhoneUtils"

    const-string v4, "hangupRingingCall: no INCOMING or WAITING call"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static final hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 2387
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2388
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2389
    const/4 v2, 0x1

    .line 2392
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 2372
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static hasPhoneProviderExtras(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2621
    if-nez p0, :cond_1

    .line 2627
    :cond_0
    :goto_0
    return v0

    .line 2624
    :cond_1
    const-string v1, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2625
    const-string v2, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2627
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 224
    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>(Lcom/android/phone/PhoneUtils$1;)V

    sput-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    .line 229
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 230
    return-void
.end method

.method public static isCallOnImsEnabled()Z
    .locals 1

    .prologue
    .line 3088
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->isCallOnImsEnabled()Z

    move-result v0

    return v0
.end method

.method static isConferenceCall(Lcom/android/internal/telephony/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1978
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 1979
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 1980
    .local v1, "phoneType":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1981
    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    .line 1982
    .local v2, "state":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_2

    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1985
    :cond_0
    const/4 v3, 0x1

    .line 1990
    .end local v2    # "state":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :goto_0
    return v3

    .line 1988
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v3

    goto :goto_0

    .line 1990
    .restart local v2    # "state":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isIMSCallIntent(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3100
    const-string v2, "sip"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3113
    :cond_0
    :goto_0
    return v0

    .line 3106
    :cond_1
    const-string v2, "android.phone.extra.CALL_DOMAIN"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3108
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_2

    .line 3109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In isIMSCall, call domain:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3110
    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 3111
    goto :goto_0
.end method

.method static isMmiDialogEnable()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1053
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1056
    .local v1, "isDialogEnable":Z
    if-eqz v1, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return v2

    .line 1061
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1062
    .local v0, "cm":Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1063
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z
    .locals 2

    .prologue
    .line 2810
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2816
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2818
    if-eqz v0, :cond_0

    .line 2819
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2822
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z
    .locals 1
    .param p0, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 2892
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isRoutableViaGateway(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2748
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2756
    :cond_0
    :goto_0
    return v0

    .line 2751
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2752
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2755
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2756
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static isScreenOn()Z
    .locals 2

    .prologue
    .line 3159
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static isSpeakerOn(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 2103
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2104
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method static isVoipSupported()Z
    .locals 1

    .prologue
    .line 2908
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sVoipSupported:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 3003
    const-string v0, "PhoneUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    return-void
.end method

.method static mergeCalls()V
    .locals 1

    .prologue
    .line 933
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 934
    return-void
.end method

.method static mergeCalls(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 937
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 938
    .local v2, "phoneType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 939
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "mergeCalls"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 940
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 941
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_1

    .line 944
    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v3, v4}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 951
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 961
    .end local v0    # "app":Lcom/android/phone/PhoneGlobals;
    :cond_1
    :goto_0
    return-void

    .line 955
    :cond_2
    :try_start_0
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v3, :cond_3

    const-string v3, "mergeCalls"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 956
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CallManager;->conference(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 957
    :catch_0
    move-exception v1

    .line 958
    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mergeCalls: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    const v2, 0x7f0b01c6

    .line 2567
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2607
    :cond_0
    :goto_0
    return-object p2

    .line 2569
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyForSpecialCnapCases: initially, number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ci "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2576
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const v1, 0x7f0b03da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne p3, v0, :cond_3

    .line 2578
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2579
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    iput v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2587
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v0, v1, :cond_4

    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-eq v0, p3, :cond_7

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne p3, v0, :cond_7

    .line 2590
    :cond_4
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v0

    .line 2591
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 2593
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v0, v1, :cond_8

    .line 2594
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const v2, 0x7f0b01c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2598
    :cond_5
    :goto_1
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpecialCnap: number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; presentation now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2600
    :cond_6
    iput v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2603
    :cond_7
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    .line 2604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyForSpecialCnapCases: returning number string="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2595
    :cond_8
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne v0, v1, :cond_5

    .line 2596
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method static okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z
    .locals 7
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2432
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 2433
    .local v2, "phoneType":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2435
    .local v1, "bgPhoneType":I
    if-eq v2, v1, :cond_1

    move v3, v4

    .line 2451
    :cond_0
    :goto_0
    return v3

    .line 2440
    :cond_1
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 2442
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 2443
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v5, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v6, :cond_2

    iget-object v5, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .line 2451
    .end local v0    # "app":Lcom/android/phone/PhoneGlobals;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method public static pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 2835
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    .line 2836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pickPhoneBasedOnNumber: scheme "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sipUri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_2

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2842
    :cond_0
    if-eqz p3, :cond_3

    .line 2843
    invoke-static {p0, p3}, Lcom/android/phone/PhoneUtils;->getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2844
    if-eqz v0, :cond_3

    .line 2854
    :cond_1
    :goto_1
    return-object v0

    .line 2836
    :cond_2
    const-string v0, "null"

    goto :goto_0

    .line 2849
    :cond_3
    const-string v0, "sip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2850
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getIMSPhone(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2851
    if-nez v0, :cond_1

    .line 2854
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_1
.end method

.method public static placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "contactRef"    # Landroid/net/Uri;
    .param p4, "isEmergencyCall"    # Z
    .param p5, "gatewayUri"    # Landroid/net/Uri;

    .prologue
    .line 626
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placeCall()... number: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GW:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contactRef:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEmergencyCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 636
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;I[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 632
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placeCall()... number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p5, :cond_1

    const-string v0, "non-null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergency? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "null"

    goto :goto_1
.end method

.method public static placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;I[Ljava/lang/String;)I
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "contactRef"    # Landroid/net/Uri;
    .param p4, "isEmergencyCall"    # Z
    .param p5, "gatewayUri"    # Landroid/net/Uri;
    .param p6, "callType"    # I
    .param p7, "extras"    # [Ljava/lang/String;

    .prologue
    .line 666
    sget-boolean v17, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v17, :cond_0

    .line 667
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "placeCall \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' GW:\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " CallType:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 669
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    .line 674
    .local v4, "app":Lcom/android/phone/PhoneGlobals;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 676
    if-eqz p4, :cond_4

    .line 677
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/am/SomcAmManager;->hangupCallByDeviceSelf()V

    .line 685
    :cond_1
    if-eqz p5, :cond_5

    if-nez p4, :cond_5

    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isRoutableViaGateway(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/4 v15, 0x1

    .line 688
    .local v15, "useGateway":Z
    :goto_0
    const/4 v14, 0x0

    .line 691
    .local v14, "status":I
    if-eqz v15, :cond_a

    .line 694
    if-eqz p5, :cond_2

    const-string v17, "tel"

    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 695
    :cond_2
    const-string v17, "PhoneUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unsupported URL:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v14, 0x2

    .line 824
    .end local v14    # "status":I
    .end local v15    # "useGateway":Z
    :cond_3
    :goto_1
    return v14

    .line 680
    :cond_4
    const/4 v14, 0x2

    goto :goto_1

    .line 685
    :cond_5
    const/4 v15, 0x0

    goto :goto_0

    .line 704
    .restart local v14    # "status":I
    .restart local v15    # "useGateway":Z
    :cond_6
    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 711
    .local v10, "numberToDial":Ljava/lang/String;
    :goto_2
    iget-object v0, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_b

    const/4 v9, 0x1

    .line 714
    .local v9, "initiallyIdle":Z
    :goto_3
    :try_start_0
    iget-object v0, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p6

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 727
    .local v5, "connection":Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 732
    iget-object v0, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 733
    iget-object v0, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    .line 737
    :cond_7
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    .line 740
    .local v11, "phoneType":I
    if-nez v5, :cond_d

    .line 741
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_8

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v11, v0, :cond_c

    :cond_8
    if-nez p5, :cond_c

    .line 743
    sget-boolean v17, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v17, :cond_9

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "dialed MMI code: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 744
    :cond_9
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 706
    .end local v5    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v9    # "initiallyIdle":Z
    .end local v10    # "numberToDial":Ljava/lang/String;
    .end local v11    # "phoneType":I
    :cond_a
    move-object/from16 v10, p2

    .restart local v10    # "numberToDial":Ljava/lang/String;
    goto :goto_2

    .line 711
    :cond_b
    const/4 v9, 0x0

    goto :goto_3

    .line 715
    .restart local v9    # "initiallyIdle":Z
    :catch_0
    move-exception v7

    .line 719
    .local v7, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v17, "PhoneUtils"

    const-string v18, "Exception from app.mCM.dial()"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 720
    const/4 v14, 0x2

    goto/16 :goto_1

    .line 746
    .end local v7    # "ex":Lcom/android/internal/telephony/CallStateException;
    .restart local v5    # "connection":Lcom/android/internal/telephony/Connection;
    .restart local v11    # "phoneType":I
    :cond_c
    const/4 v14, 0x2

    goto/16 :goto_1

    .line 749
    :cond_d
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v11, v0, :cond_e

    .line 750
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneGlobals;)V

    .line 754
    :cond_e
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v11, v0, :cond_f

    .line 755
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 757
    :cond_f
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 758
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 759
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 761
    if-nez p5, :cond_15

    .line 767
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v6, "content"

    .line 768
    .local v6, "content":Ljava/lang/String;
    if-eqz p3, :cond_10

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 769
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v16

    .line 770
    .local v16, "userDataObject":Ljava/lang/Object;
    if-nez v16, :cond_13

    .line 771
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 803
    .end local v16    # "userDataObject":Ljava/lang/Object;
    :cond_10
    :goto_4
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 805
    sget-boolean v17, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v17, :cond_11

    const-string v17, "about to activate speaker"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 807
    :cond_11
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)Z

    move-result v12

    .line 809
    .local v12, "speakerActivated":Z
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfCarMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v13

    .line 812
    .local v13, "speakerActivatedByCarMode":Z
    if-eqz v9, :cond_12

    if-nez v12, :cond_12

    if-nez v13, :cond_12

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v17

    if-nez v17, :cond_12

    .line 815
    const-string v17, "PhoneUtils"

    const-string v18, "Forcing speaker off when initiating a new outgoing call..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 819
    :cond_12
    if-eqz v9, :cond_3

    .line 820
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/CallNotifier;->setHasBeenConferenced(Z)V

    goto/16 :goto_1

    .line 776
    .end local v12    # "speakerActivated":Z
    .end local v13    # "speakerActivatedByCarMode":Z
    .restart local v16    # "userDataObject":Ljava/lang/Object;
    :cond_13
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 777
    check-cast v16, Lcom/android/internal/telephony/CallerInfo;

    .end local v16    # "userDataObject":Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_4

    .line 779
    .restart local v16    # "userDataObject":Ljava/lang/Object;
    :cond_14
    check-cast v16, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v16    # "userDataObject":Ljava/lang/Object;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_4

    .line 788
    .end local v6    # "content":Ljava/lang/String;
    :cond_15
    const/4 v8, 0x0

    .line 789
    .local v8, "info":Lcom/android/internal/telephony/CallerInfo;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v6, "content"

    .line 790
    .restart local v6    # "content":Ljava/lang/String;
    if-eqz p3, :cond_16

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 791
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v8

    .line 797
    :cond_16
    if-nez v8, :cond_17

    .line 798
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v8

    .line 800
    :cond_17
    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 801
    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method static playSoundNotification(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1304
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1305
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 1307
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1309
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 1310
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 1313
    iget v0, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x3

    iput v0, v2, Landroid/app/Notification;->defaults:I

    .line 1323
    :cond_0
    :goto_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1325
    invoke-virtual {v0, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1326
    return-void

    .line 1316
    :cond_1
    iget v0, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v2, Landroid/app/Notification;->defaults:I

    goto :goto_0

    .line 1318
    :cond_2
    if-ne v1, v5, :cond_0

    .line 1320
    iget v0, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/app/Notification;->defaults:I

    goto :goto_0
.end method

.method static restoreMuteState()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 895
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 898
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 901
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_5

    .line 903
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 906
    .local v2, "phoneType":I
    const/4 v3, 0x0

    .line 912
    .local v3, "shouldMute":Ljava/lang/Boolean;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 913
    sget-object v4, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "shouldMute":Ljava/lang/Boolean;
    check-cast v3, Ljava/lang/Boolean;

    .line 920
    .restart local v3    # "shouldMute":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 921
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_1

    const-string v4, "problem retrieving mute value for this connection."

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 922
    :cond_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 926
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 929
    .end local v2    # "phoneType":I
    .end local v3    # "shouldMute":Ljava/lang/Boolean;
    :goto_1
    return-object v3

    .line 915
    .restart local v2    # "phoneType":I
    .restart local v3    # "shouldMute":Ljava/lang/Boolean;
    :cond_3
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    .line 918
    :cond_4
    sget-object v4, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "shouldMute":Ljava/lang/Boolean;
    check-cast v3, Ljava/lang/Boolean;

    .restart local v3    # "shouldMute":Ljava/lang/Boolean;
    goto :goto_0

    .line 929
    .end local v2    # "phoneType":I
    .end local v3    # "shouldMute":Ljava/lang/Boolean;
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1
.end method

.method static restoreSpeakerMode(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 2094
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreSpeakerMode, restoring to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2097
    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    if-eq v0, v1, :cond_1

    .line 2098
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2100
    :cond_1
    return-void
.end method

.method static sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 858
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 859
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 860
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 862
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    .line 863
    const-string v1, "PhoneUtils"

    const-string v2, "onReceive: (CDMA) sending empty flash to network"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 868
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_1
    return-void
.end method

.method public static sendViewNotificationAsync(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 2922
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2923
    const-string v0, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send view notification to Contacts (uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.VIEW_NOTIFICATION"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2926
    const-string v1, "com.sonyericsson.android.socialphonebook"

    const-string v2, "com.sonyericsson.android.socialphonebook.ViewNotificationService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2928
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2929
    return-void
.end method

.method static separateCall(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p0, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 965
    :try_start_0
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "separateCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 966
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    :goto_0
    return-void

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "separateCall: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static setAudioControlState(I)V
    .locals 0
    .param p0, "newState"    # I

    .prologue
    .line 238
    sput p0, Lcom/android/phone/PhoneUtils;->sAudioBehaviourState:I

    .line 239
    return-void
.end method

.method static setAudioMode()V
    .locals 1

    .prologue
    .line 2234
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 2235
    return-void
.end method

.method static setAudioMode(Lcom/android/internal/telephony/CallManager;)V
    .locals 4

    .prologue
    .line 2241
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioMode()..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 2244
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2246
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 2247
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->setAudioMode()V

    .line 2248
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 2250
    if-eq v1, v0, :cond_2

    .line 2257
    :cond_1
    :goto_0
    return-void

    .line 2254
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioMode() no change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->audioModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static setMute(Z)V
    .locals 5
    .param p0, "muted"    # Z

    .prologue
    .line 2174
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 2177
    .local v0, "cm":Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 2181
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2182
    .local v1, "cn":Lcom/android/internal/telephony/Connection;
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2183
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "problem retrieving mute value for this connection."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2185
    :cond_0
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2187
    .end local v1    # "cn":Lcom/android/internal/telephony/Connection;
    :cond_1
    return-void
.end method

.method private static setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V
    .locals 4

    .prologue
    .line 2193
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 2195
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMuteInternal: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2197
    :cond_0
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2199
    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 2200
    const-string v0, "audio"

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2202
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_1

    .line 2203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMuteInternal: using setMicrophoneMute("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2205
    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 2211
    :goto_0
    iget-object v0, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    .line 2212
    return-void

    .line 2207
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMuteInternal: using phone.setMute("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2208
    :cond_3
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    goto :goto_0
.end method

.method private static setRedirectingNumber(Lcom/android/phone/SomcCallerInfo;Ljava/lang/String;)V
    .locals 1
    .param p0, "callerInfo"    # Lcom/android/phone/SomcCallerInfo;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1837
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcCallerInfo;->redirectingName:Ljava/lang/String;

    .line 1838
    iput-object p1, p0, Lcom/android/phone/SomcCallerInfo;->redirectingNumber:Ljava/lang/String;

    .line 1839
    return-void
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .locals 4

    .prologue
    .line 1542
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    .line 1544
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1545
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1546
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1555
    :goto_0
    invoke-static {p0, v0, p2, p3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    return-object v0

    .line 1547
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1550
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 1552
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1566
    if-nez p1, :cond_1

    .line 1568
    new-instance v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1569
    iput-object v6, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1825
    :cond_0
    :goto_0
    return-object v1

    .line 1573
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 1609
    instance-of v0, v1, Landroid/net/Uri;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1613
    new-instance v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v2}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1614
    new-instance v0, Lcom/android/phone/SomcCallerInfo;

    invoke-direct {v0}, Lcom/android/phone/SomcCallerInfo;-><init>()V

    iput-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    move-object v0, v1

    .line 1615
    check-cast v0, Landroid/net/Uri;

    sget-object v3, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v4, p0, v0, v3, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v0

    iput-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1617
    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v0, v4, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1618
    iput-boolean v7, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 1620
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1622
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: query based on Uri: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 1623
    :cond_2
    instance-of v0, v1, Landroid/net/Uri;

    if-nez v0, :cond_3

    if-nez v1, :cond_b

    .line 1627
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1629
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_4

    .line 1630
    const-string v1, "PhoneUtils.startGetCallerInfo: new query for phone number..."

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- number (address): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- c: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- phone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1634
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 1635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- phoneType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1636
    packed-switch v1, :pswitch_data_0

    .line 1642
    const-string v1, "  ==> Unknown phone type"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1646
    :cond_4
    :goto_1
    new-instance v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1647
    new-instance v2, Lcom/android/phone/SomcCallerInfo;

    invoke-direct {v2}, Lcom/android/phone/SomcCallerInfo;-><init>()V

    iput-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    .line 1652
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-static {v2, v6}, Lcom/android/phone/PhoneUtils;->setRedirectingNumber(Lcom/android/phone/SomcCallerInfo;Ljava/lang/String;)V

    .line 1656
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1657
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1659
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1660
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1662
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_5

    .line 1663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: CNAP Info from FW(1): name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Name/Number Pres="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1670
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1673
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v2, v0, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1676
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iput-object v0, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1680
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget v2, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v2, v3, :cond_6

    .line 1681
    iput-boolean v5, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 1705
    :goto_2
    iget-boolean v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_a

    .line 1706
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1711
    :goto_3
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    .line 1712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: query based on number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1637
    :pswitch_0
    const-string v1, "  ==> PHONE_TYPE_NONE"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1638
    :pswitch_1
    const-string v1, "  ==> PHONE_TYPE_GSM"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1639
    :pswitch_2
    const-string v1, "  ==> PHONE_TYPE_CDMA"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1640
    :pswitch_3
    const-string v1, "  ==> PHONE_TYPE_SIP"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1641
    :pswitch_4
    const-string v1, "  ==> PHONE_TYPE_IMS"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1683
    :cond_6
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_7

    .line 1684
    const-string v2, "==> Actually starting CallerInfoAsyncQuery.startQuery()..."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1686
    :cond_7
    sget-object v2, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v4, p0, v0, v2, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1688
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v2, v4, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1689
    iput-boolean v7, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_2

    .line 1697
    :cond_8
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_9

    .line 1698
    const-string v2, "startGetCallerInfo: No query to start, send trivial reply."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1700
    :cond_9
    iput-boolean v5, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_2

    .line 1708
    :cond_a
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_3

    .line 1715
    :cond_b
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_18

    .line 1719
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .line 1722
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    if-eqz v0, :cond_d

    .line 1723
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v0, v4, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1725
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startGetCallerInfo: query already running, adding listener: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_c

    const-string v0, "null"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1731
    :cond_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1732
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_e

    .line 1733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: updatedNumber initially = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1736
    :cond_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1738
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1740
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1741
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1742
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1744
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v2, v0, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1747
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iput-object v0, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1748
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_f

    .line 1749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: updatedNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1751
    :cond_f
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_11

    .line 1752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: CNAP Info from FW(2): name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Name/Number Pres="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1761
    :cond_10
    :goto_5
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget v2, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v2, v3, :cond_12

    .line 1762
    iput-boolean v5, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_0

    .line 1755
    :cond_11
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_10

    .line 1756
    const-string v2, "startGetCallerInfo: CNAP Info from FW(2)"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 1764
    :cond_12
    sget-object v2, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v4, p0, v0, v2, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1766
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v0, v4, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1767
    iput-boolean v7, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_0

    .line 1770
    :cond_13
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_14

    .line 1771
    const-string v0, "startGetCallerInfo: No query to attach to, send trivial reply."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1773
    :cond_14
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    if-nez v0, :cond_15

    .line 1774
    new-instance v0, Lcom/android/phone/SomcCallerInfo;

    invoke-direct {v0}, Lcom/android/phone/SomcCallerInfo;-><init>()V

    iput-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    .line 1777
    :cond_15
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1779
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1780
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1781
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1783
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_17

    .line 1784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startGetCallerInfo: CNAP Info from FW(3): name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Name/Number Pres="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget v2, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1790
    :cond_16
    :goto_6
    iput-boolean v5, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_0

    .line 1787
    :cond_17
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_16

    .line 1788
    const-string v0, "startGetCallerInfo: CNAP Info from FW(3)"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 1793
    :cond_18
    instance-of v0, v1, Lcom/android/phone/SomcCallerInfo;

    if-eqz v0, :cond_19

    .line 1794
    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1795
    check-cast v1, Lcom/android/phone/SomcCallerInfo;

    iput-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    .line 1796
    iput-object v6, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1797
    iput-boolean v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 1799
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_1b

    .line 1800
    const-string v1, "startGetSomcCallerInfo: query already done, returning CallerInfo"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_0

    .line 1809
    :cond_19
    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1810
    new-instance v2, Lcom/android/phone/SomcCallerInfo;

    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2, v1}, Lcom/android/phone/SomcCallerInfo;-><init>(Lcom/android/internal/telephony/CallerInfo;)V

    iput-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    .line 1814
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-static {v1, v6}, Lcom/android/phone/PhoneUtils;->setRedirectingNumber(Lcom/android/phone/SomcCallerInfo;Ljava/lang/String;)V

    .line 1816
    iput-object v6, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1817
    iput-boolean v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 1819
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1821
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_1a

    .line 1822
    const-string v1, "startGetCallerInfo: query already done, returning CallerInfo"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    :cond_1a
    move-object v1, v0

    goto/16 :goto_0

    :cond_1b
    move-object v1, v0

    goto/16 :goto_0

    :cond_1c
    move-object v1, v2

    goto/16 :goto_0

    .line 1636
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    .locals 5
    .param p0, "heldCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 874
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "switchHoldingAndActive()..."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 876
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 877
    .local v0, "cm":Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 879
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 884
    :goto_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 888
    .end local v0    # "cm":Lcom/android/internal/telephony/CallManager;
    :goto_1
    return-void

    .line 882
    .restart local v0    # "cm":Lcom/android/internal/telephony/CallManager;
    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 885
    .end local v0    # "cm":Lcom/android/internal/telephony/CallManager;
    :catch_0
    move-exception v1

    .line 886
    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchHoldingAndActive: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 829
    if-nez p0, :cond_1

    .line 830
    const-string p0, ""

    .line 849
    .end local p0    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 833
    .restart local p0    # "number":Ljava/lang/String;
    :cond_1
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-nez v3, :cond_0

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 841
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 842
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 843
    .local v1, "c":C
    const/16 v3, 0x2d

    if-eq v1, v3, :cond_2

    const/16 v3, 0x40

    if-eq v1, v3, :cond_2

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_3

    .line 844
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 841
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 846
    :cond_3
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 849
    .end local v1    # "c":C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static turnOnSpeaker(Landroid/content/Context;ZZ)V
    .locals 2

    .prologue
    .line 2063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOnSpeaker(flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2064
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 2066
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2068
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 2070
    if-eqz p2, :cond_0

    .line 2071
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 2075
    :cond_0
    iget-object v0, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification(Z)V

    .line 2081
    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 2084
    iget-object v0, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 2086
    iget-object v0, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->setEchoSuppressionEnabled(Z)V

    .line 2087
    return-void
.end method

.method private static updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneGlobals;)V
    .locals 2
    .param p0, "app"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 600
    :goto_0
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    goto :goto_0
.end method
