.class public Lcom/android/phone/BluetoothPhoneService;
.super Landroid/app/Service;
.source "BluetoothPhoneService.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothPhoneService$4;,
        Lcom/android/phone/BluetoothPhoneService$CallNumber;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBgndEarliestConnectionTime:J

.field private final mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCdmaCallsSwapped:Z

.field private mCdmaIsSecondCallActive:Z

.field mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field private mClccTimestamps:[J

.field private mClccUsed:[Z

.field private mForegroundCallState:Lcom/android/internal/telephony/Call$State;

.field private mHandler:Landroid/os/Handler;

.field mNumActive:I

.field mNumHeld:I

.field private mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

.field private mRingingCallState:Lcom/android/internal/telephony/Call$State;

.field private mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/BluetoothPhoneService;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 77
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 78
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    .line 96
    iput-boolean v2, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    .line 97
    iput-boolean v2, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 172
    new-instance v0, Lcom/android/phone/BluetoothPhoneService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothPhoneService$1;-><init>(Lcom/android/phone/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    .line 473
    new-instance v0, Lcom/android/phone/BluetoothPhoneService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothPhoneService$2;-><init>(Lcom/android/phone/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 725
    new-instance v0, Lcom/android/phone/BluetoothPhoneService$3;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothPhoneService$3;-><init>(Lcom/android/phone/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothPhoneService;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;
    .param p1, "x1"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->handlePreciseCallStateChange(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->updateBtPhoneStateAfterRadioTechnologyChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->handleListCurrentCalls()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->handleQueryPhoneState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->handleCdmaSwapSecondCallState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothPhoneService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->handleCdmaSetSecondCallState(Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/phone/BluetoothPhoneService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static convertCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 4
    .param p0, "callState"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 934
    const/4 v0, 0x6

    .line 936
    .local v0, "retval":I
    sget-object v1, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 963
    const-string v1, "BluetoothPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad call state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x6

    .line 972
    :goto_0
    return v0

    .line 938
    :pswitch_0
    const/4 v0, 0x6

    .line 939
    goto :goto_0

    .line 942
    :pswitch_1
    const/4 v0, 0x7

    .line 943
    goto :goto_0

    .line 945
    :pswitch_2
    const/4 v0, 0x0

    .line 946
    goto :goto_0

    .line 948
    :pswitch_3
    const/4 v0, 0x1

    .line 949
    goto :goto_0

    .line 951
    :pswitch_4
    const/4 v0, 0x2

    .line 952
    goto :goto_0

    .line 954
    :pswitch_5
    const/4 v0, 0x3

    .line 955
    goto :goto_0

    .line 957
    :pswitch_6
    const/4 v0, 0x4

    .line 958
    goto :goto_0

    .line 960
    :pswitch_7
    const/4 v0, 0x5

    .line 961
    goto :goto_0

    .line 936
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I
    .locals 2
    .param p0, "ringingState"    # Lcom/android/internal/telephony/Call$State;
    .param p1, "foregroundState"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 911
    const/4 v0, 0x6

    .line 913
    .local v0, "retval":I
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v1, :cond_1

    .line 915
    :cond_0
    const/4 v0, 0x4

    .line 930
    :goto_0
    return v0

    .line 916
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v1, :cond_2

    .line 917
    const/4 v0, 0x2

    goto :goto_0

    .line 918
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v1, :cond_3

    .line 919
    const/4 v0, 0x3

    goto :goto_0

    .line 920
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v1, :cond_5

    .line 922
    :cond_4
    const/4 v0, 0x7

    goto :goto_0

    .line 924
    :cond_5
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private getCallNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call;)Lcom/android/phone/BluetoothPhoneService$CallNumber;
    .locals 4
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;
    .param p2, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "number":Ljava/lang/String;
    const/16 v1, 0x80

    .line 434
    .local v1, "type":I
    if-nez p1, :cond_0

    .line 435
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p1

    .line 436
    if-nez p1, :cond_0

    .line 437
    const-string v2, "BluetoothPhoneService"

    const-string v3, "Could not get a handle on Connection object for the call"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    if-eqz p1, :cond_1

    .line 441
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_1

    .line 443
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v1

    .line 446
    :cond_1
    if-nez v0, :cond_2

    .line 447
    const-string v0, ""

    .line 449
    :cond_2
    new-instance v2, Lcom/android/phone/BluetoothPhoneService$CallNumber;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;-><init>(Lcom/android/phone/BluetoothPhoneService;Ljava/lang/String;ILcom/android/phone/BluetoothPhoneService$1;)V

    return-object v2
.end method

.method private getNumHeldCdma()I
    .locals 6

    .prologue
    .line 403
    const/4 v2, 0x0

    .line 404
    .local v2, "numHeld":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 405
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v4, :cond_0

    .line 406
    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    .line 408
    .local v1, "curr3WayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    .line 411
    .local v3, "prev3WayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA call state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prev state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 413
    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v4, :cond_2

    .line 414
    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_1

    .line 415
    const/4 v2, 0x0

    .line 427
    .end local v1    # "curr3WayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v3    # "prev3WayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_0
    :goto_0
    return v2

    .line 417
    .restart local v1    # "curr3WayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .restart local v3    # "prev3WayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 420
    :cond_2
    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v4, :cond_3

    .line 421
    const/4 v2, 0x1

    goto :goto_0

    .line 424
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getNumHeldUmts()I
    .locals 6

    .prologue
    .line 391
    const/4 v1, 0x0

    .line 392
    .local v1, "countHeld":I
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v2

    .line 394
    .local v2, "heldCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 395
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    return v1
.end method

.method private handleCdmaSetSecondCallState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 718
    iput-boolean p1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    .line 720
    iget-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_0

    .line 721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 723
    :cond_0
    return-void
.end method

.method private handleCdmaSwapSecondCallState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 712
    iget-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    .line 713
    iput-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 714
    return-void

    .line 712
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleListCurrentCalls()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 365
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 366
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    .line 370
    .local v9, "phoneType":I
    const/4 v0, 0x2

    if-ne v9, v0, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->listCurrentCallsCdma()V

    .line 379
    :goto_0
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const-string v6, ""

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 380
    return-void

    .line 372
    :cond_0
    const/4 v0, 0x1

    if-ne v9, v0, :cond_1

    .line 373
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->listCurrentCallsGsm()V

    goto :goto_0

    .line 375
    :cond_1
    const-string v0, "BluetoothPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handlePreciseCallStateChange(Lcom/android/internal/telephony/Connection;)V
    .locals 21
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 254
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 255
    .local v15, "oldNumActive":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move/from16 v16, v0

    .line 256
    .local v16, "oldNumHeld":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v18, v0

    .line 257
    .local v18, "oldRingingCallState":Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 258
    .local v14, "oldForegroundCallState":Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-object/from16 v17, v0

    .line 260
    .local v17, "oldRingNumber":Lcom/android/phone/BluetoothPhoneService$CallNumber;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    .line 267
    .local v13, "foregroundCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    .line 271
    const-string v3, "BluetoothPhoneService"

    const-string v4, "handlePreciseCallStateChange. Call disconnecting, wait before update"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v20

    .line 278
    .local v20, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothPhoneService;->getCallNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 282
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->getNumHeldCdma()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    .line 283
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    .line 284
    .local v9, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_4

    .line 285
    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v12

    .line 287
    .local v12, "currCdmaThreeWayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v19

    .line 290
    .local v19, "prevCdmaThreeWayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prev state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v3, v12, :cond_3

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA 3way call state change. mNumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IsThreeWayCallOrigStateDialing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 302
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v3, :cond_2

    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v6, v7}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$700(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v6, v7}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$700(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 321
    :cond_2
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v3, :cond_3

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_3

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA 3way conf call. mNumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v6, v7}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$700(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 332
    :cond_3
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 338
    .end local v9    # "app":Lcom/android/phone/PhoneGlobals;
    .end local v12    # "currCdmaThreeWayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v19    # "prevCdmaThreeWayCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_4
    :goto_2
    const/4 v11, 0x0

    .line 339
    .local v11, "callsSwitched":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_8

    .line 341
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 350
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    if-ne v3, v15, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move/from16 v0, v16

    if-ne v3, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    if-ne v3, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-object/from16 v0, v17

    # invokes: Lcom/android/phone/BluetoothPhoneService$CallNumber;->equalTo(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z
    invoke-static {v3, v0}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$800(Lcom/android/phone/BluetoothPhoneService$CallNumber;Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v11, :cond_0

    .line 355
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_0

    .line 356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v6, v7}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$700(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 359
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->sendMessageDisplayInfo()V

    goto/16 :goto_0

    .line 275
    .end local v11    # "callsSwitched":Z
    .end local v20    # "ringingCall":Lcom/android/internal/telephony/Call;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 335
    .restart local v20    # "ringingCall":Lcom/android/internal/telephony/Call;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->getNumHeldUmts()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    goto/16 :goto_2

    .line 343
    .restart local v11    # "callsSwitched":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 344
    .local v10, "backgroundCall":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    const/4 v11, 0x1

    .line 347
    :goto_4
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    goto/16 :goto_3

    .line 344
    :cond_9
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private handleQueryPhoneState()V
    .locals 6

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v1, p0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    iget v2, p0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v4}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$700(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 388
    :cond_0
    return-void
.end method

.method private declared-synchronized listCurrentCallsCdma()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 582
    monitor-enter p0

    const/4 v6, 0x2

    :try_start_0
    new-array v0, v6, [Lcom/android/internal/telephony/Connection;

    .line 583
    .local v0, "clccConnections":[Lcom/android/internal/telephony/Connection;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 584
    .local v1, "foregroundCall":Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 586
    .local v4, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 589
    .local v5, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    sget-object v6, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2

    .line 591
    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    .line 618
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v7, :cond_5

    .line 620
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 621
    .local v3, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 629
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v6, v0

    if-ge v2, v6, :cond_6

    aget-object v6, v0, v2

    if-eqz v6, :cond_6

    .line 630
    aget-object v6, v0, v2

    invoke-direct {p0, v2, v6}, Lcom/android/phone/BluetoothPhoneService;->sendClccResponseCdma(ILcom/android/internal/telephony/Connection;)V

    .line 629
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 592
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 594
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 596
    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    .line 597
    const/4 v6, 0x1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 582
    .end local v0    # "clccConnections":[Lcom/android/internal/telephony/Connection;
    .end local v1    # "foregroundCall":Lcom/android/internal/telephony/Call;
    .end local v4    # "ringingCall":Lcom/android/internal/telephony/Call;
    .end local v5    # "ringingCallState":Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 599
    .restart local v0    # "clccConnections":[Lcom/android/internal/telephony/Connection;
    .restart local v1    # "foregroundCall":Lcom/android/internal/telephony/Call;
    .restart local v4    # "ringingCall":Lcom/android/internal/telephony/Call;
    .restart local v5    # "ringingCallState":Lcom/android/internal/telephony/Call$State;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v7, :cond_4

    .line 604
    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    goto :goto_0

    .line 611
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    .line 612
    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    goto :goto_0

    .line 622
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v7, :cond_1

    .line 624
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x6

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 625
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 632
    .end local v3    # "msg":Landroid/os/Message;
    .restart local v2    # "i":I
    :cond_6
    monitor-exit p0

    return-void
.end method

.method private listCurrentCallsGsm()V
    .locals 21

    .prologue
    .line 486
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v4, v0, [Lcom/android/internal/telephony/Connection;

    .line 487
    .local v4, "clccConnections":[Lcom/android/internal/telephony/Connection;
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 488
    .local v15, "newConnections":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 490
    .local v6, "connections":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 491
    .local v10, "foregroundCall":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 492
    .local v2, "backgroundCall":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    .line 494
    .local v16, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 495
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 497
    :cond_0
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 498
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 500
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 501
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 505
    :cond_2
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v5, v0, [Z

    .line 506
    .local v5, "clccUsed":[Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ge v12, v0, :cond_3

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v19, v0

    aget-boolean v19, v19, v12

    aput-boolean v19, v5, v12

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-boolean v20, v19, v12

    .line 506
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 510
    :cond_3
    invoke-virtual {v6}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 511
    .local v3, "c":Lcom/android/internal/telephony/Connection;
    const/4 v11, 0x0

    .line 512
    .local v11, "found":Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v17

    .line 513
    .local v17, "timestamp":J
    const/4 v12, 0x0

    :goto_2
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ge v12, v0, :cond_5

    .line 514
    aget-boolean v19, v5, v12

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccTimestamps:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v12

    cmp-long v19, v17, v19

    if-nez v19, :cond_6

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aput-boolean v20, v19, v12

    .line 516
    const/4 v11, 0x1

    .line 517
    aput-object v3, v4, v12

    .line 521
    :cond_5
    if-nez v11, :cond_4

    .line 522
    invoke-virtual {v15, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 513
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 543
    .end local v3    # "c":Lcom/android/internal/telephony/Connection;
    .end local v11    # "found":Z
    .end local v17    # "timestamp":J
    .local v7, "earliestConnection":Lcom/android/internal/telephony/Connection;
    .local v8, "earliestTimestamp":J
    .local v14, "j":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aput-boolean v20, v19, v12

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccTimestamps:[J

    move-object/from16 v19, v0

    aput-wide v8, v19, v12

    .line 545
    aput-object v7, v4, v12

    .line 546
    invoke-virtual {v15, v7}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 527
    .end local v7    # "earliestConnection":Lcom/android/internal/telephony/Connection;
    .end local v8    # "earliestTimestamp":J
    .end local v14    # "j":I
    :cond_8
    invoke-virtual {v15}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_b

    .line 529
    const/4 v12, 0x0

    .line 530
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v19, v0

    aget-boolean v19, v19, v12

    if-eqz v19, :cond_9

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 532
    :cond_9
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/Connection;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v8

    .line 533
    .restart local v8    # "earliestTimestamp":J
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Connection;

    .line 534
    .restart local v7    # "earliestConnection":Lcom/android/internal/telephony/Connection;
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_4
    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v14, v0, :cond_7

    .line 535
    invoke-virtual {v15, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/Connection;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v17

    .line 536
    .restart local v17    # "timestamp":J
    cmp-long v19, v17, v8

    if-gez v19, :cond_a

    .line 537
    move-wide/from16 v8, v17

    .line 538
    invoke-virtual {v15, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "earliestConnection":Lcom/android/internal/telephony/Connection;
    check-cast v7, Lcom/android/internal/telephony/Connection;

    .line 534
    .restart local v7    # "earliestConnection":Lcom/android/internal/telephony/Connection;
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 550
    .end local v7    # "earliestConnection":Lcom/android/internal/telephony/Connection;
    .end local v8    # "earliestTimestamp":J
    .end local v14    # "j":I
    .end local v17    # "timestamp":J
    :cond_b
    const/4 v12, 0x0

    :goto_5
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_d

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v19, v0

    aget-boolean v19, v19, v12

    if-eqz v19, :cond_c

    .line 552
    aget-object v19, v4, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lcom/android/phone/BluetoothPhoneService;->sendClccResponseGsm(ILcom/android/internal/telephony/Connection;)V

    .line 550
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 555
    :cond_d
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 976
    const-string v0, "BluetoothPhoneService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return-void
.end method

.method private sendClccResponseCdma(ILcom/android/internal/telephony/Connection;)V
    .locals 13
    .param p1, "index"    # I
    .param p2, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 637
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    .line 638
    .local v8, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v1, v8, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    .line 640
    .local v10, "currCdmaCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v1, v8, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    .line 643
    .local v11, "prevCdmaCallState":Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v1, :cond_1

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v10, v1, :cond_1

    .line 647
    const/4 v3, 0x0

    .line 683
    .local v3, "state":I
    :goto_0
    const/4 v5, 0x0

    .line 684
    .local v5, "mpty":Z
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v10, v1, :cond_0

    .line 685
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v1, :cond_0

    .line 688
    const/4 v5, 0x1

    .line 697
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v0

    .line 699
    .local v2, "direction":I
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 700
    .local v6, "number":Ljava/lang/String;
    const/4 v7, -0x1

    .line 701
    .local v7, "type":I
    if-eqz v6, :cond_6

    .line 702
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v7

    .line 707
    :goto_2
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 708
    .end local v2    # "direction":I
    .end local v3    # "state":I
    .end local v5    # "mpty":Z
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "type":I
    :goto_3
    return-void

    .line 649
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    .line 650
    .local v9, "callState":Lcom/android/internal/telephony/Call$State;
    sget-object v1, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v1, v1, v12

    packed-switch v1, :pswitch_data_0

    .line 678
    const-string v0, "BluetoothPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad call state: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 656
    :pswitch_0
    if-nez p1, :cond_3

    .line 657
    iget-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-eqz v1, :cond_2

    move v3, v0

    .restart local v3    # "state":I
    :goto_4
    goto :goto_0

    .end local v3    # "state":I
    :cond_2
    move v3, v4

    goto :goto_4

    .line 659
    :cond_3
    iget-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-eqz v1, :cond_4

    move v3, v4

    .line 661
    .restart local v3    # "state":I
    :goto_5
    goto :goto_0

    .end local v3    # "state":I
    :cond_4
    move v3, v0

    .line 659
    goto :goto_5

    .line 663
    :pswitch_1
    const/4 v3, 0x1

    .line 664
    .restart local v3    # "state":I
    goto :goto_0

    .line 666
    .end local v3    # "state":I
    :pswitch_2
    const/4 v3, 0x2

    .line 667
    .restart local v3    # "state":I
    goto :goto_0

    .line 669
    .end local v3    # "state":I
    :pswitch_3
    const/4 v3, 0x3

    .line 670
    .restart local v3    # "state":I
    goto :goto_0

    .line 672
    .end local v3    # "state":I
    :pswitch_4
    const/4 v3, 0x4

    .line 673
    .restart local v3    # "state":I
    goto :goto_0

    .line 675
    .end local v3    # "state":I
    :pswitch_5
    const/4 v3, 0x5

    .line 676
    .restart local v3    # "state":I
    goto :goto_0

    .end local v9    # "callState":Lcom/android/internal/telephony/Call$State;
    .restart local v5    # "mpty":Z
    :cond_5
    move v2, v4

    .line 697
    goto :goto_1

    .line 704
    .restart local v2    # "direction":I
    .restart local v6    # "number":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_6
    const-string v6, ""

    goto :goto_2

    .line 650
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private sendClccResponseGsm(ILcom/android/internal/telephony/Connection;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v4, 0x0

    .line 559
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v3

    .line 560
    .local v3, "state":I
    const/4 v5, 0x0

    .line 561
    .local v5, "mpty":Z
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 562
    .local v8, "call":Lcom/android/internal/telephony/Call;
    if-eqz v8, :cond_0

    .line 563
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v5

    .line 566
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 568
    .local v2, "direction":I
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 569
    .local v6, "number":Ljava/lang/String;
    const/4 v7, -0x1

    .line 570
    .local v7, "type":I
    if-eqz v6, :cond_1

    .line 571
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v7

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 575
    return-void

    .end local v2    # "direction":I
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "type":I
    :cond_2
    move v2, v4

    .line 566
    goto :goto_0
.end method

.method private sendMessageDisplayInfo()V
    .locals 5

    .prologue
    .line 205
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 210
    .local v1, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v1, v3, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 214
    .local v0, "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_0

    .line 215
    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-static {v3, v1}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "displayInfo":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothHeadset;->updateDisplay(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateBtPhoneStateAfterRadioTechnologyChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 243
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 246
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 250
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 107
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 108
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 109
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 110
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 142
    :cond_0
    return-void

    .line 115
    :cond_1
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mPowerManager:Landroid/os/PowerManager;

    .line 116
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "BluetoothPhoneService:StartCall"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 118
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 120
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v1, p0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 122
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 123
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    .line 124
    iput v4, p0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 125
    iput v4, p0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    .line 126
    new-instance v1, Lcom/android/phone/BluetoothPhoneService$CallNumber;

    const-string v2, ""

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/phone/BluetoothPhoneService$CallNumber;-><init>(Lcom/android/phone/BluetoothPhoneService;Ljava/lang/String;ILcom/android/phone/BluetoothPhoneService$1;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .line 128
    invoke-direct {p0, v5}, Lcom/android/phone/BluetoothPhoneService;->handlePreciseCallStateChange(Lcom/android/internal/telephony/Connection;)V

    .line 132
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 133
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 134
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 137
    new-array v1, v6, [J

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mClccTimestamps:[J

    .line 138
    new-array v1, v6, [Z

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    aput-boolean v4, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 156
    sget-boolean v0, Lcom/android/phone/BluetoothPhoneService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Stopping Bluetooth BluetoothPhoneService Service"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 231
    if-ne p2, p0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->sendMessageDisplayInfo()V

    .line 236
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 147
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Stopping Bluetooth BluetoothPhoneService Service: device does not have BT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 151
    :cond_0
    return-void
.end method
