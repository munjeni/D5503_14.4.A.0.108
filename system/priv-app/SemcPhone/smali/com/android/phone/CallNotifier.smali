.class public Lcom/android/phone/CallNotifier;
.super Landroid/os/Handler;
.source "CallNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/SomcCallRecorder$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;,
        Lcom/android/phone/CallNotifier$InCallTonePlayer;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/CallNotifier;


# instance fields
.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallLogger:Lcom/android/phone/CallLogger;

.field private mCallWaitingTimeOut:Z

.field private mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mCallerInfoQueryState:I

.field private mCallerInfoQueryStateGuard:Ljava/lang/Object;

.field private mCurrentEmergencyToneState:I

.field private mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

.field private mHasBeenConferenced:Z

.field private mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mIsCdmaRedialCall:Z

.field private mIsEmergencyToneOn:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private mRinger:Lcom/android/phone/Ringer;

.field private mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

.field private mSilentRingerRequested:Z

.field private mVoicePrivacyState:Z


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)V
    .locals 6
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "ringer"    # Lcom/android/phone/Ringer;
    .param p4, "callLogger"    # Lcom/android/phone/CallLogger;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 122
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 132
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    .line 171
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 181
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 182
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 183
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mHasBeenConferenced:Z

    .line 187
    iput v4, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    .line 378
    new-instance v2, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v2, p0}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2159
    new-instance v2, Lcom/android/phone/CallNotifier$2;

    invoke-direct {v2, p0}, Lcom/android/phone/CallNotifier$2;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 217
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 218
    iget-object v2, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 219
    iput-object p4, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    .line 221
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    .line 223
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 229
    new-instance v2, Lcom/android/phone/SomcTonePlayer;

    const/16 v3, 0x50

    invoke-direct {v2, v4, v3}, Lcom/android/phone/SomcTonePlayer;-><init>(II)V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    .line 232
    iput-object p3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 233
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 234
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 235
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v2, v3, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 240
    :cond_0
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 242
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 246
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v2, p0}, Lcom/android/phone/SomcCallRecorder;->setEventListener(Lcom/android/phone/SomcCallRecorder$EventListener;)V

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallNotifier;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallNotifier;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onCfiChanged(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/CallNotifier;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/CallNotifier;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    return v0
.end method

.method private checkCallRecording()V
    .locals 3

    .prologue
    .line 2239
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->isSecureMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2250
    :cond_0
    :goto_0
    return-void

    .line 2246
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v1, 0x7f0b0126

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2249
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->stop()V

    goto :goto_0
.end method

.method private ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 535
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v3, :cond_0

    .line 539
    const-string v2, "CallNotifier"

    const-string v3, "Got onNewRingingConnection() on non-voice-capable device! Ignoring..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :goto_0
    return v1

    .line 546
    :cond_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 547
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "Incoming call while in ECM: always allow..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_1
    move v1, v2

    .line 548
    goto :goto_0

    .line 552
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 554
    .local v0, "provisioned":Z
    :goto_1
    if-nez v0, :cond_4

    .line 555
    const-string v2, "CallNotifier"

    const-string v3, "Ignoring incoming call: not provisioned"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "provisioned":Z
    :cond_3
    move v0, v2

    .line 552
    goto :goto_1

    .restart local v0    # "provisioned":Z
    :cond_4
    move v1, v2

    .line 583
    goto :goto_0
.end method

.method static init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)Lcom/android/phone/CallNotifier;
    .locals 4

    .prologue
    .line 205
    const-class v1, Lcom/android/phone/CallNotifier;

    monitor-enter v1

    .line 206
    :try_start_0
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/android/phone/CallNotifier;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)V

    sput-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 211
    :goto_0
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    monitor-exit v1

    return-object v0

    .line 209
    :cond_0
    const-string v0, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2253
    const-string v0, "CallNotifier"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    return-void
.end method

.method private onBatteryLow()V
    .locals 1

    .prologue
    .line 1510
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onBatteryLow()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1514
    :cond_0
    return-void
.end method

.method private onCdmaCallWaiting(Landroid/os/AsyncResult;)V
    .locals 5

    .prologue
    const/16 v4, 0x18

    const/16 v3, 0x17

    const/4 v2, 0x0

    .line 1872
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1873
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1877
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 1882
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1883
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- showing incoming call (CDMA call waiting)..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1884
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 1888
    :cond_1
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 1889
    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1893
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 1896
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1900
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 1901
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 1902
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCdmaCallWaiting: isPresent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1903
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 1904
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 1905
    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 1906
    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 1907
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_3

    .line 1908
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCdmaCallWaiting: uSignalType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uAlertPitch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uSignal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1912
    :cond_3
    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v0

    .line 1916
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v1, :cond_4

    .line 1917
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    invoke-virtual {v1, v0}, Lcom/android/phone/SomcTonePlayer;->playTone(I)V

    .line 1920
    :cond_4
    return-void
.end method

.method private onCdmaCallWaitingReject()V
    .locals 8

    .prologue
    const/4 v5, 0x3

    .line 1941
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 1944
    .local v4, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_1

    .line 1946
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1948
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 1949
    iget-boolean v6, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    if-eqz v6, :cond_2

    move v1, v5

    .line 1955
    .local v1, "callLogType":I
    :goto_0
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual {v6, v0, v1}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/Connection;I)V

    .line 1957
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    .line 1958
    .local v2, "date":J
    if-ne v1, v5, :cond_3

    .line 1960
    invoke-direct {p0, v0, v2, v3}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 1967
    :goto_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 1971
    .end local v1    # "callLogType":I
    .end local v2    # "date":J
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 1973
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    :cond_1
    return-void

    .line 1949
    .restart local v0    # "c":Lcom/android/internal/telephony/Connection;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1963
    .restart local v1    # "callLogType":I
    .restart local v2    # "date":J
    :cond_3
    const/16 v5, 0x17

    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method

.method private onCfiChanged(Z)V
    .locals 2

    .prologue
    .line 1467
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCfiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1471
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v0, :cond_1

    .line 1477
    const-string v0, "CallNotifier"

    const-string v1, "Got onCfiChanged() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :goto_0
    return-void

    .line 1480
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateCfi(Z)V

    goto :goto_0
.end method

.method private onCustomRingQueryComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 671
    const/4 v0, 0x0

    .line 672
    .local v0, "isQueryExecutionTimeExpired":Z
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 673
    :try_start_0
    iget v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 674
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 675
    const/4 v0, 0x1

    .line 677
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    if-eqz v0, :cond_1

    .line 681
    const-string v1, "CallNotifier"

    const-string v2, "CallerInfo query took too long; falling back to default ringtone"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_2

    .line 700
    const-string v1, "CallNotifier"

    const-string v2, "onCustomRingQueryComplete: No incoming call! Bailing out..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :goto_0
    return-void

    .line 677
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 707
    :cond_2
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "RINGING... (onCustomRingQueryComplete)"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 708
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->ring()V

    .line 709
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 712
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "- showing incoming call (custom ring query complete)..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 713
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_0
.end method

.method private onCustomRingtoneQueryTimeout(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1057
    const-string v0, "CallNotifier"

    const-string v1, "CallerInfo query took too long; look up local fallback cache."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallerInfoCache;->getCacheEntry(Ljava/lang/String;)Lcom/android/phone/CallerInfoCache$CacheEntry;

    move-result-object v0

    .line 1064
    if-eqz v0, :cond_2

    .line 1065
    iget-boolean v1, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->sendToVoicemail:Z

    if-eqz v1, :cond_0

    .line 1066
    const-string v0, "send to voicemail flag detected (in fallback cache). hanging up."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 1085
    :goto_0
    return-void

    .line 1071
    :cond_0
    iget-object v1, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom ringtone found (in fallback cache), setting up ringer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1074
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1084
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_0

    .line 1081
    :cond_2
    const-string v0, "Failed to find fallback cache. Use default ringer tone."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 12

    .prologue
    .line 1088
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnect()...  CallManager state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1090
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 1092
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 1093
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    if-eqz v6, :cond_1

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onDisconnect: cause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", incoming = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", date = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1100
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 1101
    const/4 v0, 0x0

    .line 1102
    if-eqz v6, :cond_3e

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3e

    .line 1103
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_auto_retry"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v5, v0

    .line 1107
    :goto_0
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1109
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1112
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 1115
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1116
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1132
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1133
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    .line 1134
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1137
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "cancelCallInProgressNotification()... (onDisconnect)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1138
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 1149
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_5

    .line 1150
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_5

    .line 1151
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "- stop call waiting tone"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1152
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1157
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v7

    .line 1162
    invoke-virtual {v7}, Lcom/android/phone/am/SomcAmManager;->isAmPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v7, v6}, Lcom/android/phone/am/SomcAmManager;->isThisAnsweringMachineCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1163
    invoke-virtual {v7}, Lcom/android/phone/am/SomcAmManager;->stopGreeting()V

    .line 1168
    :cond_6
    const/4 v0, 0x0

    .line 1171
    if-eqz v6, :cond_8

    .line 1172
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1173
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_21

    .line 1174
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "- need to play BUSY tone!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1175
    :cond_7
    const/4 v0, 0x2

    .line 1209
    :cond_8
    :goto_2
    if-nez v0, :cond_b

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_b

    if-eqz v6, :cond_b

    .line 1212
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1213
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v2, :cond_9

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_b

    .line 1215
    :cond_9
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_a

    const-string v0, "- need to play CALL_ENDED tone!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1216
    :cond_a
    const/4 v0, 0x5

    .line 1217
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1221
    :cond_b
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_e

    .line 1224
    if-nez v0, :cond_c

    .line 1225
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 1228
    :cond_c
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 1235
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1236
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_d

    const-string v1, "onDisconnect: force InCallScreen to finish()"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1237
    :cond_d
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->dismissCallScreen()V

    .line 1238
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isBluetoothConnected()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isEndOrRejectBtPressed()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v1, v1, Lcom/android/phone/InCallUiState;->isScreenOnBeforeCalling:Z

    if-nez v1, :cond_e

    .line 1242
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->goToSleep()V

    .line 1247
    :cond_e
    if-eqz v6, :cond_1b

    .line 1248
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v8

    .line 1251
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1252
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v2

    .line 1254
    invoke-virtual {v2}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v1

    .line 1255
    if-eqz v1, :cond_33

    .line 1256
    invoke-virtual {v2, v6}, Lcom/android/phone/am/SomcAmManager;->isThisAnsweringMachineCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1259
    const/4 v1, 0x3

    .line 1260
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/am/SomcAmManager;->setHangupCallByDeviceSelf(Z)V

    :goto_3
    move v3, v1

    .line 1284
    :goto_4
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_f

    .line 1285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- callLogType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", UserData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1287
    :cond_f
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual {v1, v6, v3}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/Connection;I)V

    .line 1289
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1290
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1291
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2, v4}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    .line 1294
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v10, 0x2

    if-ne v4, v10, :cond_10

    .line 1295
    if-eqz v9, :cond_10

    iget v4, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v4, :cond_10

    .line 1297
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v4, :cond_10

    .line 1298
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    # invokes: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v4}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$300(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1304
    :cond_10
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f08001e

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 1308
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v11, 0x2

    if-ne v4, v11, :cond_36

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    const/4 v4, 0x1

    .line 1313
    :goto_5
    if-nez v9, :cond_11

    if-eqz v4, :cond_12

    :cond_11
    if-eqz v10, :cond_13

    .line 1315
    :cond_12
    invoke-virtual {v7, v6}, Lcom/android/phone/am/SomcAmManager;->isThisAnsweringMachineCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1316
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual {v4, v6}, Lcom/android/phone/CallLogger;->setAmContentValues(Lcom/android/internal/telephony/Connection;)V

    .line 1320
    :cond_13
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v9

    .line 1321
    const/4 v4, 0x3

    if-ne v3, v4, :cond_14

    .line 1325
    invoke-direct {p0, v6, v9, v10}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 1327
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->updateBadgeIcon()V

    .line 1334
    :cond_14
    if-eqz v0, :cond_16

    .line 1335
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v3, :cond_15

    .line 1336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- starting post-disconnect tone ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1338
    :cond_15
    new-instance v3, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1350
    :cond_16
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v3, :cond_38

    .line 1355
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1358
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 1360
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_17

    .line 1361
    const-string v0, "- NOT showing in-call screen; releasing wake locks!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1363
    :cond_17
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v3, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 1371
    :cond_18
    :goto_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getUssdUserInputDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1372
    if-eqz v0, :cond_19

    .line 1373
    const-string v3, "- show ussdInputDialog."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1380
    :cond_19
    :goto_7
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_1a

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_1b

    :cond_1a
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v8, v0, :cond_1b

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v8, v0, :cond_1b

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v8, v0, :cond_1b

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v8, v0, :cond_1b

    .line 1387
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-nez v0, :cond_3a

    .line 1388
    const/4 v0, 0x1

    if-ne v5, v0, :cond_39

    .line 1391
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    .line 1392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1402
    :cond_1b
    :goto_8
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->checkCallRecording()V

    .line 1405
    invoke-virtual {v7}, Lcom/android/phone/am/SomcAmManager;->getAmConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 1406
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v7, v0}, Lcom/android/phone/am/SomcAmManager;->notifyPhoneStateChangeToAm(Lcom/android/internal/telephony/Call$State;)V

    .line 1420
    :cond_1c
    :goto_9
    return-void

    .line 1140
    :cond_1d
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1e

    const-string v0, "stopRing()... (onDisconnect)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1141
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_1

    .line 1144
    :cond_1f
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_20

    const-string v0, "stopRing()... (onDisconnect)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1145
    :cond_20
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_1

    .line 1176
    :cond_21
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_23

    .line 1177
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_22

    const-string v0, "- need to play CONGESTION tone!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1178
    :cond_22
    const/4 v0, 0x3

    goto/16 :goto_2

    .line 1179
    :cond_23
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_25

    .line 1180
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_24

    const-string v0, "- need to play CDMA_REORDER tone!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1181
    :cond_24
    const/4 v0, 0x7

    goto/16 :goto_2

    .line 1182
    :cond_25
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_27

    .line 1183
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_26

    const-string v0, "- need to play CDMA_INTERCEPT tone!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1184
    :cond_26
    const/16 v0, 0x8

    goto/16 :goto_2

    .line 1185
    :cond_27
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_29

    .line 1186
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_28

    const-string v0, "- need to play CDMA_DROP tone!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1187
    :cond_28
    const/16 v0, 0x9

    goto/16 :goto_2

    .line 1188
    :cond_29
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_2b

    .line 1189
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2a

    const-string v0, "- need to play OUT OF SERVICE tone!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1190
    :cond_2a
    const/16 v0, 0xa

    goto/16 :goto_2

    .line 1191
    :cond_2b
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_2d

    .line 1192
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2c

    const-string v0, "- need to play TONE_UNOBTAINABLE_NUMBER tone!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1193
    :cond_2c
    const/16 v0, 0xe

    goto/16 :goto_2

    .line 1194
    :cond_2d
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_8

    .line 1195
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2e

    .line 1196
    const-string v0, "- DisconnectCause is ERROR_UNSPECIFIED: play TONE_CALL_ENDED!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1198
    :cond_2e
    const/4 v0, 0x5

    goto/16 :goto_2

    .line 1262
    :cond_2f
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v8, v1, :cond_30

    invoke-virtual {v2}, Lcom/android/phone/am/SomcAmManager;->isAmHangupCallByDeviceSelf()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1271
    :cond_30
    const/4 v1, 0x3

    goto/16 :goto_3

    .line 1273
    :cond_31
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v8, v1, :cond_32

    const/4 v1, 0x3

    goto/16 :goto_3

    :cond_32
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 1278
    :cond_33
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v8, v1, :cond_34

    const/4 v1, 0x3

    goto/16 :goto_3

    :cond_34
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 1282
    :cond_35
    const/4 v1, 0x2

    move v3, v1

    goto/16 :goto_4

    .line 1308
    :cond_36
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 1365
    :cond_37
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_18

    .line 1366
    const-string v0, "- still showing in-call screen; not releasing wake locks."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1377
    :cond_38
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_19

    const-string v0, "- phone still in use; not releasing wake locks."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1394
    :cond_39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_8

    .line 1397
    :cond_3a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_8

    .line 1407
    :cond_3b
    invoke-virtual {v7, v6}, Lcom/android/phone/am/SomcAmManager;->isThisAnsweringMachineCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1408
    invoke-virtual {v7}, Lcom/android/phone/am/SomcAmManager;->isAmRecording()Z

    move-result v0

    .line 1409
    invoke-virtual {v7}, Lcom/android/phone/am/SomcAmManager;->isAmSaving()Z

    move-result v1

    .line 1410
    invoke-virtual {v7}, Lcom/android/phone/am/SomcAmManager;->isAmRecordEndByPickupCall()Z

    move-result v2

    .line 1414
    if-nez v0, :cond_3c

    if-nez v1, :cond_3c

    if-eqz v2, :cond_3d

    .line 1415
    :cond_3c
    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->showAnsweringMachineNotification(Lcom/android/internal/telephony/Connection;)V

    .line 1417
    :cond_3d
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v7, v0}, Lcom/android/phone/am/SomcAmManager;->notifyPhoneStateChangeToAm(Lcom/android/internal/telephony/Call$State;)V

    .line 1418
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/phone/am/SomcAmManager;->setAmConnection(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_9

    :cond_3e
    move v5, v0

    goto/16 :goto_0
.end method

.method private onDisplayInfo(Landroid/os/AsyncResult;)V
    .locals 3

    .prologue
    .line 1800
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    .line 1802
    if-eqz v0, :cond_1

    .line 1803
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    .line 1804
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayInfo: displayInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1805
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v1, v0}, Lcom/android/phone/CdmaDisplayInfo;->displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 1808
    const/16 v0, 0x19

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1811
    :cond_1
    return-void
.end method

.method private onMwiChanged(Z)V
    .locals 2

    .prologue
    .line 1440
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMwiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1444
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v0, :cond_1

    .line 1450
    const-string v0, "CallNotifier"

    const-string v1, "Got onMwiChanged() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :goto_0
    return-void

    .line 1454
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateMwi(Z)V

    goto :goto_0
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v8, 0x1

    .line 394
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 395
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNewRingingConnection(): state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", conn = { "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " }"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 397
    if-nez v1, :cond_1

    .line 398
    const-string v6, "CallNotifier"

    const-string v7, "CallNotifier.onNewRingingConnection(): null connection!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 404
    .local v4, "ringing":Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 407
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 412
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 416
    :cond_2
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    .line 420
    .local v0, "amManager":Lcom/android/phone/am/SomcAmManager;
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 421
    invoke-virtual {v0, v8}, Lcom/android/phone/am/SomcAmManager;->setHangupCallByDeviceSelf(Z)V

    .line 422
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 426
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v6

    if-nez v6, :cond_4

    .line 427
    const-string v6, "CallNotifier"

    const-string v7, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    :cond_4
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 438
    .local v2, "fgPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 439
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 442
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 444
    .local v5, "state":Lcom/android/internal/telephony/Call$State;
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- connection is ringing!  state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 473
    :cond_6
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v6, :cond_7

    const-string v6, "Holding wake lock on new incoming connection."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 474
    :cond_7
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v7, Lcom/android/phone/PhoneGlobals$WakeState;->PARTIAL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 477
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 478
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/phone/CallNotifier;->setHasBeenConferenced(Z)V

    .line 483
    :cond_8
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_b

    .line 485
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 509
    :goto_1
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->getAmAvailability()Lcom/android/phone/am/SomcAmManager$AmAvailability;

    move-result-object v6

    sget-object v7, Lcom/android/phone/am/SomcAmManager$AmAvailability;->AVAILABLE:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    if-ne v6, v7, :cond_a

    .line 510
    sget-object v6, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v6}, Lcom/android/phone/am/SomcAmManager;->notifyPhoneStateChangeToAm(Lcom/android/internal/telephony/Call$State;)V

    .line 511
    invoke-virtual {v0, v1}, Lcom/android/phone/am/SomcAmManager;->setAmConnection(Lcom/android/internal/telephony/Connection;)V

    .line 514
    :cond_a
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v6, :cond_0

    const-string v6, "- onNewRingingConnection() done."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 487
    :cond_b
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v6, :cond_c

    const-string v6, "- starting call waiting tone..."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 488
    :cond_c
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v6, :cond_d

    .line 489
    new-instance v6, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v6, p0, v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v6, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 490
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 494
    :cond_d
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v6, :cond_e

    const-string v6, "- showing incoming call (this is a WAITING call)..."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 495
    :cond_e
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_1
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 790
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    .line 791
    .local v8, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPhoneStateChanged: state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 793
    :cond_0
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 794
    .local v6, "fgPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 795
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v11, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_3

    .line 798
    :cond_1
    iget-boolean v10, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-eqz v10, :cond_2

    .line 799
    const/16 v9, 0xb

    .line 800
    .local v9, "toneToPlay":I
    new-instance v10, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v10, p0, v9}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 803
    .end local v9    # "toneToPlay":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 805
    :cond_3
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    .line 811
    :cond_4
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 812
    .local v1, "activeFgCall":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 813
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/phone/CallNotifier;->setHasBeenConferenced(Z)V

    .line 821
    :cond_5
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/PhoneGlobals;->updateBluetoothIndication(Z)V

    .line 824
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v10, v8}, Lcom/android/phone/PhoneGlobals;->updatePhoneState(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 826
    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v10, :cond_b

    .line 828
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v10, :cond_6

    .line 829
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v10}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 830
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 833
    :cond_6
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v10, :cond_7

    const-string v10, "onPhoneStateChanged: OFF HOOK"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 835
    :cond_7
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 839
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v10

    if-nez v10, :cond_8

    .line 840
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v11, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v10, v11}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 849
    :cond_8
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v10, :cond_9

    const-string v10, "stopRing()... (OFFHOOK state)"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 850
    :cond_9
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v10}, Lcom/android/phone/Ringer;->stopRing()V

    .line 865
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v10, :cond_a

    const-string v10, "- posting UPDATE_IN_CALL_NOTIFICATION request..."

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 867
    :cond_a
    const/16 v10, 0x1c

    invoke-virtual {p0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 868
    const/16 v0, 0x3e8

    .line 869
    .local v0, "IN_CALL_NOTIFICATION_UPDATE_DELAY":I
    const/16 v10, 0x1c

    const-wide/16 v11, 0x3e8

    invoke-virtual {p0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 873
    .end local v0    # "IN_CALL_NOTIFICATION_UPDATE_DELAY":I
    :cond_b
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    .line 874
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 875
    .local v3, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 876
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v10, :cond_c

    const-string v10, "onPhoneStateChanged: it is an emergency call."

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 877
    :cond_c
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 878
    .local v4, "callState":Lcom/android/internal/telephony/Call$State;
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-nez v10, :cond_d

    .line 879
    new-instance v10, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-direct {v10, p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    .line 882
    :cond_d
    sget-object v10, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v10, :cond_e

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v10, :cond_13

    .line 883
    :cond_e
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "emergency_tone"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    .line 886
    iget v10, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    if-eqz v10, :cond_f

    iget v10, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-nez v10, :cond_f

    .line 888
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v10, :cond_f

    .line 889
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    # invokes: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->start()V
    invoke-static {v10}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$200(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 902
    .end local v3    # "c":Lcom/android/internal/telephony/Connection;
    .end local v4    # "callState":Lcom/android/internal/telephony/Call$State;
    :cond_f
    :goto_0
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_10

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_10

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_11

    .line 905
    :cond_10
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 906
    .restart local v4    # "callState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v10

    if-nez v10, :cond_11

    .line 909
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v10, :cond_11

    .line 910
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v10}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 911
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 916
    .end local v4    # "callState":Lcom/android/internal/telephony/Call$State;
    :cond_11
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->checkCallRecording()V

    .line 918
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 919
    .restart local v4    # "callState":Lcom/android/internal/telephony/Call$State;
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v2

    .line 921
    .local v2, "amManager":Lcom/android/phone/am/SomcAmManager;
    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v10, :cond_12

    invoke-virtual {v2}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 922
    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v10}, Lcom/android/phone/am/SomcAmManager;->notifyPhoneStateChangeToAm(Lcom/android/internal/telephony/Call$State;)V

    .line 923
    invoke-virtual {v2}, Lcom/android/phone/am/SomcAmManager;->getAmConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    if-nez v10, :cond_12

    .line 924
    const/4 v5, 0x0

    .line 925
    .local v5, "conn":Lcom/android/internal/telephony/Connection;
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 926
    .local v7, "phoneType":I
    const/4 v10, 0x2

    if-ne v7, v10, :cond_14

    .line 927
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 933
    :goto_1
    invoke-virtual {v2, v5}, Lcom/android/phone/am/SomcAmManager;->setAmConnection(Lcom/android/internal/telephony/Connection;)V

    .line 936
    .end local v5    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v7    # "phoneType":I
    :cond_12
    return-void

    .line 892
    .end local v2    # "amManager":Lcom/android/phone/am/SomcAmManager;
    .restart local v3    # "c":Lcom/android/internal/telephony/Connection;
    :cond_13
    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v10, :cond_f

    .line 893
    iget v10, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v10, :cond_f

    .line 894
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v10, :cond_f

    .line 895
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    # invokes: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v10}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$300(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    goto :goto_0

    .line 928
    .end local v3    # "c":Lcom/android/internal/telephony/Connection;
    .restart local v2    # "amManager":Lcom/android/phone/am/SomcAmManager;
    .restart local v5    # "conn":Lcom/android/internal/telephony/Connection;
    .restart local v7    # "phoneType":I
    :cond_14
    const/4 v10, 0x1

    if-ne v7, v10, :cond_12

    .line 929
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    goto :goto_1
.end method

.method private onResendMute()V
    .locals 2

    .prologue
    .line 2196
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .line 2197
    .local v0, "muteState":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2198
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2199
    return-void

    .line 2197
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onRingbackTone(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 2172
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2174
    .local v0, "playTone":Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2179
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v1, :cond_0

    .line 2181
    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2182
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2190
    :cond_0
    :goto_0
    return-void

    .line 2185
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v1, :cond_0

    .line 2186
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 2187
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto :goto_0
.end method

.method private onSignalInfo(Landroid/os/AsyncResult;)V
    .locals 5

    .prologue
    .line 1818
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v0, :cond_1

    .line 1819
    const-string v0, "CallNotifier"

    const-string v1, "Got onSignalInfo() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :cond_0
    :goto_0
    return-void

    .line 1823
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1826
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    goto :goto_0

    .line 1829
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 1831
    if-eqz v0, :cond_0

    .line 1832
    iget-boolean v1, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    .line 1833
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSignalInfo: isPresent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1834
    :cond_3
    if-eqz v1, :cond_0

    .line 1835
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    .line 1836
    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    .line 1837
    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 1839
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSignalInfo: uSignalType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uAlertPitch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uSignal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1842
    :cond_4
    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v0

    .line 1846
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v1, :cond_0

    .line 1847
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    invoke-virtual {v1, v0}, Lcom/android/phone/SomcTonePlayer;->playTone(I)V

    goto :goto_0
.end method

.method private onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 717
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 719
    .local v0, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 721
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 722
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "- showing incoming call (unknown connection appeared)..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 723
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 727
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->displayCallScreen()V

    .line 729
    :cond_1
    return-void
.end method

.method private registerForNotifications()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 977
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 978
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 979
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 980
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 981
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 982
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 983
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 984
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 985
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 986
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 987
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 988
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 989
    return-void
.end method

.method private resetAudioStateAfterDisconnect()V
    .locals 3

    .prologue
    .line 1426
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "resetAudioStateAfterDisconnect()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1428
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 1429
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    .line 1434
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1436
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1437
    return-void
.end method

.method private showAnsweringMachineNotification(Lcom/android/internal/telephony/Connection;)V
    .locals 5

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, p1, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 2063
    if-eqz v0, :cond_4

    .line 2064
    iget-boolean v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v1, :cond_0

    .line 2067
    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    .line 2072
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget v1, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v2, v1}, Lcom/android/phone/SomcPhoneUtils;->getNameFromCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;I)Ljava/lang/String;

    move-result-object v1

    .line 2074
    iget-object v0, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2075
    iget v3, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v3, v4, :cond_1

    .line 2076
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v2, 0x7f0b01c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2085
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/android/phone/NotificationMgr;->notifyAnsweringMachine(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2094
    :cond_0
    :goto_1
    return-void

    .line 2077
    :cond_1
    iget v3, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v3, v4, :cond_2

    .line 2078
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v2, 0x7f0b01c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2079
    :cond_2
    invoke-virtual {v2}, Lcom/android/phone/SomcCallerInfo;->isVoiceMailNumber()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2080
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2082
    :cond_3
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget v4, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v3, v2, v0, v4}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2091
    :cond_4
    const-string v0, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAnsweringMachineNotification: got null CallerInfo for Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showIncomingCall()V
    .locals 3

    .prologue
    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showIncomingCall()...  phone state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 756
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "call"

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getUssdUserInputDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 762
    .local v0, "ussdInputDialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 763
    const-string v1, "- HIDING ussdInputDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 770
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v2, Lcom/android/phone/PhoneGlobals$WakeState;->FULL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 777
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "- updating notification from showIncomingCall()..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 778
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->updateNotificationAndLaunchIncomingCallUi()V

    .line 779
    return-void

    .line 757
    .end local v0    # "ussdInputDialog":Landroid/app/AlertDialog;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V
    .locals 8

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, p1, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 2019
    if-eqz v0, :cond_5

    .line 2022
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    .line 2023
    const-string v1, "showMissedCallNotification: Querying for CallerInfo on missed call..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2025
    :cond_0
    iget-boolean v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v1, :cond_1

    .line 2028
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    .line 2033
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget v1, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v5, v1}, Lcom/android/phone/SomcPhoneUtils;->getNameFromCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;I)Ljava/lang/String;

    move-result-object v1

    .line 2035
    iget-object v2, v5, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2036
    iget v0, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v0, v3, :cond_2

    .line 2037
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v1, 0x7f0b01c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2046
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v3, v5, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, v5, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, v5, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    move-wide v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    .line 2054
    :cond_1
    :goto_1
    return-void

    .line 2038
    :cond_2
    iget v0, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v0, v3, :cond_3

    .line 2039
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v1, 0x7f0b01c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2040
    :cond_3
    invoke-virtual {v5}, Lcom/android/phone/SomcCallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2041
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2043
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget v3, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v5, v2, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2052
    :cond_5
    const-string v0, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMissedCallNotification: got null CallerInfo for Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V
    .locals 5
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 601
    const/4 v1, 0x0

    .line 602
    .local v1, "shouldStartQuery":Z
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 603
    :try_start_0
    iget v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v2, :cond_0

    .line 604
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 605
    const/4 v1, 0x1

    .line 607
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    if-eqz v1, :cond_4

    .line 610
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 613
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2, p1, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 618
    .local v0, "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_2

    .line 619
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_1

    const-string v2, "- CallerInfo already up to date, using available data"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 620
    :cond_1
    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-virtual {p0, v2, p0, v3}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 651
    .end local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :goto_0
    return-void

    .line 607
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 622
    .restart local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_2
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_3

    const-string v2, "- Starting query, posting timeout message."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 626
    :cond_3
    const/16 v2, 0x64

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 641
    .end local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_4
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_5

    .line 642
    const-string v2, "RINGING... (request to ring arrived while query is running)"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 644
    :cond_5
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->ring()V

    .line 648
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "- showing incoming call (couldn\'t start query)..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 649
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_0
.end method


# virtual methods
.method getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method getVoicePrivacyState()Z
    .locals 1

    .prologue
    .line 1986
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 251
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 253
    :sswitch_0
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "RINGING... (new)"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 254
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    .line 255
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isScreenOn()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/phone/InCallUiState;->isScreenOnBeforeCalling:Z

    goto :goto_0

    .line 261
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 264
    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v2, :cond_3

    .line 266
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "RINGING... (PHONE_INCOMING_RING event)"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 267
    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_0

    .line 269
    :cond_3
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "RING before NEW_RING, skipping"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    .end local v0    # "pb":Lcom/android/internal/telephony/PhoneBase;
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 279
    :sswitch_3
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "DISCONNECT"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 280
    :cond_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 284
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 288
    :sswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onCustomRingtoneQueryTimeout(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :sswitch_6
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    goto/16 :goto_0

    .line 296
    :sswitch_7
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onBatteryLow()V

    goto/16 :goto_0

    .line 300
    :sswitch_8
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "Received PHONE_CDMA_CALL_WAITING event"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 301
    :cond_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onCdmaCallWaiting(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 305
    :sswitch_9
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "Received CDMA_CALL_WAITING_REJECT event"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 306
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 310
    :sswitch_a
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "Received CALLWAITING_CALLERINFO_DISPLAY_DONE event"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 311
    :cond_7
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 312
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 316
    :sswitch_b
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "Received CALLWAITING_ADDCALL_DISABLE_TIMEOUT event ..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 318
    :cond_8
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 319
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    goto/16 :goto_0

    .line 323
    :sswitch_c
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_9

    const-string v2, "Received PHONE_STATE_DISPLAYINFO event"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 324
    :cond_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onDisplayInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 328
    :sswitch_d
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_a

    const-string v2, "Received PHONE_STATE_SIGNALINFO event"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 329
    :cond_a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onSignalInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 333
    :sswitch_e
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "Received Display Info notification done event ..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 334
    :cond_b
    invoke-static {}, Lcom/android/phone/CdmaDisplayInfo;->dismissDisplayInfoRecord()V

    goto/16 :goto_0

    .line 338
    :sswitch_f
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_c

    const-string v2, "PHONE_ENHANCED_VP_ON..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 339
    :cond_c
    iget-boolean v2, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-nez v2, :cond_0

    .line 340
    const/4 v1, 0x6

    .line 341
    .local v1, "toneToPlay":I
    new-instance v2, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v2, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 342
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 344
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_d

    const-string v2, "- updating notification for VP state..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 345
    :cond_d
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 350
    .end local v1    # "toneToPlay":I
    :sswitch_10
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_e

    const-string v2, "PHONE_ENHANCED_VP_OFF..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 351
    :cond_e
    iget-boolean v2, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-eqz v2, :cond_0

    .line 352
    const/4 v1, 0x6

    .line 353
    .restart local v1    # "toneToPlay":I
    new-instance v2, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v2, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 354
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 356
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_f

    const-string v2, "- updating notification for VP state..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 357
    :cond_f
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 362
    .end local v1    # "toneToPlay":I
    :sswitch_11
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 366
    :sswitch_12
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onResendMute()V

    goto/16 :goto_0

    .line 370
    :sswitch_13
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 251
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_1
        0x6 -> :sswitch_c
        0x7 -> :sswitch_d
        0x8 -> :sswitch_8
        0x9 -> :sswitch_f
        0xa -> :sswitch_10
        0xb -> :sswitch_11
        0xc -> :sswitch_12
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
        0x17 -> :sswitch_a
        0x18 -> :sswitch_b
        0x19 -> :sswitch_e
        0x1b -> :sswitch_9
        0x1c -> :sswitch_13
        0x64 -> :sswitch_5
    .end sparse-switch
.end method

.method hasBeenConferenced()Z
    .locals 1

    .prologue
    .line 2001
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mHasBeenConferenced:Z

    return v0
.end method

.method isRinging()Z
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    return v0
.end method

.method public onNotEnoughStorage()V
    .locals 2

    .prologue
    .line 2208
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2209
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 999
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 1000
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1001
    const-string v0, "CallerInfo query complete, posting missed call notification"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    .line 1041
    :cond_1
    :goto_0
    return-void

    .line 1007
    :cond_2
    instance-of v1, p2, Lcom/android/phone/CallNotifier;

    if-eqz v1, :cond_1

    .line 1008
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "CallerInfo query complete (for CallNotifier), updating state for incoming call.."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1012
    :cond_3
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1015
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 1016
    :try_start_0
    iget v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 1017
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 1018
    const/4 v0, 0x1

    .line 1020
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    if-eqz v0, :cond_1

    .line 1025
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v0, :cond_6

    .line 1026
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "send to voicemail flag detected. hanging up."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1027
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 1020
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1032
    :cond_6
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_8

    .line 1033
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "custom ringtone found, setting up ringer."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1034
    :cond_7
    check-cast p2, Lcom/android/phone/CallNotifier;

    iget-object v0, p2, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 1035
    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1038
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_0
.end method

.method public onRecorderStart()V
    .locals 0

    .prologue
    .line 2216
    return-void
.end method

.method public onRecorderStop()V
    .locals 0

    .prologue
    .line 2223
    return-void
.end method

.method public onResourceOccupied()V
    .locals 0

    .prologue
    .line 2230
    return-void
.end method

.method sendBatteryLow()V
    .locals 2

    .prologue
    .line 1505
    const/16 v1, 0x16

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1506
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1507
    return-void
.end method

.method sendCdmaCallWaitingReject()V
    .locals 1

    .prologue
    .line 1930
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1931
    return-void
.end method

.method sendMwiChangedDelayed(J)V
    .locals 2
    .param p1, "delayMillis"    # J

    .prologue
    .line 1462
    const/16 v1, 0x15

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1463
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1464
    return-void
.end method

.method setHasBeenConferenced(Z)V
    .locals 0
    .param p1, "isConferenced"    # Z

    .prologue
    .line 2010
    iput-boolean p1, p0, Lcom/android/phone/CallNotifier;->mHasBeenConferenced:Z

    .line 2011
    return-void
.end method

.method silenceRinger()V
    .locals 1

    .prologue
    .line 1495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 1496
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "stopRing()... (silenceRinger)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1497
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1498
    return-void
.end method

.method stopSignalInfoTone()V
    .locals 2

    .prologue
    .line 1861
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "stopSignalInfoTone: Stopping SignalInfo tone player"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1862
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v0, :cond_1

    .line 1863
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcTonePlayer;->playTone(I)V

    .line 1865
    :cond_1
    return-void
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 939
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 940
    const-string v0, "CallNotifier"

    const-string v1, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 944
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 945
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 946
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 947
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 948
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 949
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 950
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 951
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 952
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 953
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 956
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/SomcTonePlayer;->release()V

    .line 958
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    .line 962
    :cond_1
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 965
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 967
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 968
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 971
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 972
    new-instance v0, Lcom/android/phone/SomcTonePlayer;

    const/4 v1, 0x0

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lcom/android/phone/SomcTonePlayer;-><init>(II)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    .line 974
    return-void
.end method
