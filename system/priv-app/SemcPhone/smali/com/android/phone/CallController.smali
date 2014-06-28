.class public Lcom/android/phone/CallController;
.super Landroid/os/Handler;
.source "CallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallController$1;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static sInstance:Lcom/android/phone/CallController;


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallLogger:Lcom/android/phone/CallLogger;

.field private mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    sput-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;)V
    .locals 2
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "callLogger"    # Lcom/android/phone/CallLogger;

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 130
    sget-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallController constructor: app = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 131
    :cond_0
    iput-object p1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 132
    iget-object v0, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 133
    iput-object p2, p0, Lcom/android/phone/CallController;->mCallLogger:Lcom/android/phone/CallLogger;

    .line 134
    return-void
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 632
    packed-switch p1, :pswitch_data_0

    .line 656
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :pswitch_0
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    .line 653
    :goto_0
    return-object v0

    .line 642
    :pswitch_1
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 653
    :pswitch_2
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 632
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V
    .locals 4
    .param p1, "status"    # Lcom/android/phone/Constants$CallStatusCode;

    .prologue
    .line 673
    sget-boolean v1, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOutgoingCallError(): status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 682
    .local v0, "inCallUiState":Lcom/android/phone/InCallUiState;
    sget-object v1, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 761
    :pswitch_0
    const-string v1, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOutgoingCallError: unexpected status code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 766
    :cond_1
    :goto_0
    return-void

    .line 686
    :pswitch_1
    const-string v1, "CallController"

    const-string v2, "handleOutgoingCallError: SUCCESS isn\'t an error"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 697
    :pswitch_2
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 709
    :pswitch_3
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 716
    :pswitch_4
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 721
    :pswitch_5
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 728
    :pswitch_6
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 744
    :pswitch_7
    iget-object v1, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    .line 745
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMmiDialogEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 746
    iget-object v1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    const v2, 0x7f0b0391

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 757
    :pswitch_8
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 682
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static init(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;)Lcom/android/phone/CallController;
    .locals 4

    .prologue
    .line 115
    const-class v1, Lcom/android/phone/CallController;

    monitor-enter v1

    .line 116
    :try_start_0
    sget-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/android/phone/CallController;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/CallController;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;)V

    sput-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    .line 121
    :goto_0
    sget-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    monitor-exit v1

    return-object v0

    .line 119
    :cond_0
    const-string v0, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 773
    const-string v0, "CallController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-void
.end method

.method private placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;
    .locals 34
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 329
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeCallInternal()...  intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 334
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v24, v0

    .line 337
    .local v24, "inCallUiState":Lcom/android/phone/InCallUiState;
    const/16 v25, 0x0

    .line 338
    .local v25, "isConferenceUri":Z
    const/16 v21, 0x0

    .line 339
    .local v21, "extras":[Ljava/lang/String;
    const/16 v30, 0x0

    .line 343
    .local v30, "phone":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v29

    .line 354
    .local v29, "okToCallStatus":Lcom/android/phone/Constants$CallStatusCode;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "number":Ljava/lang/String;
    const-string v2, "android.phone.extra.CALL_TYPE"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 358
    .local v8, "callType":I
    const-string v2, "com.android.phone.extra.DIAL_CONFERENCE_URI"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    .line 360
    if-eqz v25, :cond_1

    .line 361
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v22

    .line 362
    .local v22, "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "isConferenceUri"

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v21

    .line 372
    .end local v22    # "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v33

    .line 373
    .local v33, "uri":Landroid/net/Uri;
    if-eqz v33, :cond_2

    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v31

    .line 374
    .local v31, "scheme":Ljava/lang/String;
    :goto_0
    const-string v2, "android.phone.extra.SIP_PHONE_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 376
    .local v32, "sipPhoneUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v2, v0, v4, v1}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v30

    .line 380
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v29

    .line 396
    if-nez v4, :cond_6

    .line 397
    const-string v2, "CallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    .line 616
    .end local v4    # "number":Ljava/lang/String;
    .end local v8    # "callType":I
    .end local v31    # "scheme":Ljava/lang/String;
    .end local v32    # "sipPhoneUri":Ljava/lang/String;
    .end local v33    # "uri":Landroid/net/Uri;
    :goto_1
    return-object v2

    .line 373
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v8    # "callType":I
    .restart local v33    # "uri":Landroid/net/Uri;
    :cond_2
    const/16 v31, 0x0

    goto :goto_0

    .line 383
    .end local v4    # "number":Ljava/lang/String;
    .end local v8    # "callType":I
    .end local v33    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v19

    .line 388
    .local v19, "ex":Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_4

    .line 389
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "Voicemail number not reachable in current SIM card state."

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v2, v29

    .line 390
    goto :goto_1

    .line 392
    :cond_4
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 393
    :cond_5
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 406
    .end local v19    # "ex":Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v8    # "callType":I
    .restart local v31    # "scheme":Ljava/lang/String;
    .restart local v32    # "sipPhoneUri":Ljava/lang/String;
    .restart local v33    # "uri":Landroid/net/Uri;
    :cond_6
    invoke-static {v4}, Lcom/android/phone/SomcPhoneUtils;->filterNumberPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 407
    .local v23, "filteredNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v27

    .line 408
    .local v27, "isEmergencyNumber":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v28

    .line 410
    .local v28, "isPotentialEmergencyNumber":Z
    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    .line 412
    .local v26, "isEmergencyIntent":Z
    if-eqz v28, :cond_7

    if-nez v26, :cond_7

    .line 413
    const-string v2, "CallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non-CALL_EMERGENCY Intent "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " attempted to call potential emergency number "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 417
    :cond_7
    if-nez v28, :cond_8

    if-eqz v26, :cond_8

    .line 418
    const-string v2, "CallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received CALL_EMERGENCY Intent "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " with non-potential-emergency number "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " -- failing call."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 433
    :cond_8
    if-eqz v27, :cond_b

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_9

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_b

    .line 436
    :cond_9
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeCall: Emergency number detected with status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 437
    :cond_a
    sget-object v29, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    .line 438
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> UPDATING status to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 441
    :cond_b
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_f

    .line 444
    if-eqz v27, :cond_d

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_d

    .line 445
    const-string v2, "CallController"

    const-string v3, "placeCall: Trying to make emergency call while POWER_OFF!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    monitor-enter p0

    .line 449
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    if-nez v2, :cond_c

    .line 450
    new-instance v2, Lcom/android/phone/EmergencyCallHelper;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/phone/EmergencyCallHelper;-><init>(Lcom/android/phone/CallController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    .line 452
    :cond_c
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    invoke-virtual {v2, v4}, Lcom/android/phone/EmergencyCallHelper;->startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;)V

    .line 464
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 452
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 468
    :cond_d
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> placeCallInternal(): non-success status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 477
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCallLogger:Lcom/android/phone/CallLogger;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    move-object/from16 v2, v29

    .line 480
    goto/16 :goto_1

    .line 488
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, v24

    iput-boolean v2, v0, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    .line 489
    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 495
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 501
    .local v5, "contactUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    if-nez v27, :cond_10

    if-eqz v26, :cond_11

    :cond_10
    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    move-object/from16 v3, v30

    move-object/from16 v9, v21

    invoke-static/range {v2 .. v9}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;I[Ljava/lang/String;)I

    move-result v18

    .line 510
    .local v18, "callStatus":I
    packed-switch v18, :pswitch_data_0

    .line 614
    const-string v2, "CallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: unknown callStatus "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\'."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 501
    .end local v18    # "callStatus":I
    :cond_11
    const/4 v6, 0x0

    goto :goto_2

    .line 531
    .restart local v18    # "callStatus":I
    :pswitch_0
    const/4 v2, 0x0

    move-object/from16 v0, v24

    iput-boolean v2, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 543
    const/4 v2, 0x0

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/android/phone/InCallUiState;->dialpadDigits:Ljava/lang/String;

    .line 550
    const/16 v20, 0x0

    .line 551
    .local v20, "exitedEcm":Z
    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-nez v27, :cond_12

    .line 552
    const-string v2, "CallController"

    const-string v3, "About to exit ECM because of an outgoing non-emergency call"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/16 v20, 0x1

    .line 556
    :cond_12
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_13

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_13

    .line 561
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 576
    const/4 v2, 0x1

    const-wide/16 v6, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 582
    :cond_13
    if-eqz v20, :cond_14

    .line 583
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 585
    :cond_14
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 589
    .end local v20    # "exitedEcm":Z
    :pswitch_1
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeCall: specified number was an MMI code: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 599
    :cond_15
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 602
    :pswitch_2
    const-string v2, "CallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\'."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/phone/CallController;->mCallLogger:Lcom/android/phone/CallLogger;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    move-object v11, v4

    invoke-virtual/range {v9 .. v17}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    .line 611
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 510
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 155
    const-string v0, "CallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unexpected code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 142
    :pswitch_0
    sget-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "THREEWAY_CALLERINFO_DISPLAY_DONE..."

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public placeCall(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "placeCall()...  intent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 200
    iget-object v6, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v6, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 206
    .local v1, "inCallUiState":Lcom/android/phone/InCallUiState;
    if-nez p1, :cond_0

    .line 207
    const-string v6, "CallController"

    const-string v7, "placeCall: called with null intent"

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "placeCall: called with null intent"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 211
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 213
    .local v5, "uri":Landroid/net/Uri;
    if-nez v5, :cond_1

    .line 214
    const-string v6, "CallController"

    const-string v7, "placeCall: intent had no data"

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "placeCall: intent had no data"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 218
    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "scheme":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {p1, v6}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "number":Ljava/lang/String;
    const-string v6, "android.intent.action.CALL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 233
    const-string v6, "CallController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "placeCall: unexpected intent action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 245
    :cond_2
    iget-object v6, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneGlobals;->setRestoreMuteOnInCallResume(Z)V

    .line 250
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 251
    invoke-virtual {v1, p1}, Lcom/android/phone/InCallUiState;->setProviderOverlayInfo(Landroid/content/Intent;)V

    .line 256
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallController;->placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v4

    .line 258
    .local v4, "status":Lcom/android/phone/Constants$CallStatusCode;
    sget-object v6, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==> placeCall(): failure code from placeCallInternal(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 287
    invoke-direct {p0, v4}, Lcom/android/phone/CallController;->handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 312
    :goto_1
    iget-object v6, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->displayCallScreen()V

    .line 313
    return-void

    .line 253
    .end local v4    # "status":Lcom/android/phone/Constants$CallStatusCode;
    :cond_3
    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->clearProviderOverlayInfo()V

    goto :goto_0

    .line 262
    .restart local v4    # "status":Lcom/android/phone/Constants$CallStatusCode;
    :pswitch_0
    sget-boolean v6, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==> placeCall(): success from placeCallInternal(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 264
    :cond_4
    sget-object v6, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    if-ne v4, v6, :cond_5

    .line 267
    sget-object v6, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1, v6}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 277
    :goto_2
    iget-object v6, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneGlobals;->setBeginningCall(Z)V

    goto :goto_1

    .line 272
    :cond_5
    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    goto :goto_2

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
