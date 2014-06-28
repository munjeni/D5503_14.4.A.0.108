.class public Lcom/android/phone/OutgoingCallBroadcaster;
.super Landroid/app/Activity;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mWaitingSpinner:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 113
    new-instance v0, Lcom/android/phone/OutgoingCallBroadcaster$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OutgoingCallBroadcaster$1;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    iput-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/OutgoingCallBroadcaster;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mWaitingSpinner:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/OutgoingCallBroadcaster;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/OutgoingCallBroadcaster;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # Landroid/net/Uri;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private handleNonVoiceCapable(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 672
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNonVoiceCapable: handling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on non-voice-capable device..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 679
    return-void
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 28
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 362
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_0

    .line 363
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processIntent() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", thread: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v4, :cond_1

    .line 368
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "This device is detected as non-voice-capable device."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/OutgoingCallBroadcaster;->handleNonVoiceCapable(Landroid/content/Intent;)V

    .line 645
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 376
    .local v13, "action":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 379
    .local v11, "number":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v27

    .line 381
    .local v27, "uri":Landroid/net/Uri;
    if-nez v27, :cond_3

    const/16 v25, 0x0

    .line 382
    .local v25, "schema":Ljava/lang/String;
    :goto_1
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "sip"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 383
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 384
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 390
    .end local v25    # "schema":Ljava/lang/String;
    .end local v27    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_2
    const-string v4, "appops"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager;

    .line 394
    .local v14, "appOps":Landroid/app/AppOpsManager;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v4, v6}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v24

    .line 396
    .local v24, "launchedFromUid":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v4, v6}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 402
    .local v23, "launchedFromPackage":Ljava/lang/String;
    :goto_3
    const/16 v4, 0xd

    move/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v14, v4, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 404
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rejecting call from uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 381
    .end local v14    # "appOps":Landroid/app/AppOpsManager;
    .end local v23    # "launchedFromPackage":Ljava/lang/String;
    .end local v24    # "launchedFromUid":I
    .restart local v27    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v25

    goto :goto_1

    .line 387
    .end local v27    # "uri":Landroid/net/Uri;
    :cond_4
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "The number obtained from Intent is null."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 398
    .restart local v14    # "appOps":Landroid/app/AppOpsManager;
    :catch_0
    move-exception v18

    .line 399
    .local v18, "e":Landroid/os/RemoteException;
    const/16 v24, -0x1

    .line 400
    .restart local v24    # "launchedFromUid":I
    const/16 v23, 0x0

    .restart local v23    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_3

    .line 416
    .end local v18    # "e":Landroid/os/RemoteException;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 420
    const-string v4, "android.intent.action.CALL"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 421
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "Attempt to deliver non-CALL action; forcing to CALL"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v4, "android.intent.action.CALL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f08002d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-eqz v4, :cond_7

    .line 431
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v27

    .line 432
    .restart local v27    # "uri":Landroid/net/Uri;
    if-nez v27, :cond_c

    const/16 v25, 0x0

    .line 433
    .restart local v25    # "schema":Ljava/lang/String;
    :goto_4
    sget-object v4, Lcom/android/phone/Constants;->sTaiwanEmergencyNumberConversionInfo:Lcom/android/phone/Constants$NumberConversionInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1, v11, v4}, Lcom/android/phone/SomcPhoneUtils;->convertNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/phone/Constants$NumberConversionInfo;)Ljava/lang/String;

    move-result-object v17

    .line 436
    .local v17, "convertedNumber":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 437
    const-string v13, "android.intent.action.CALL_EMERGENCY"

    .line 438
    move-object/from16 v11, v17

    .line 439
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v4, "tel"

    const/4 v6, 0x0

    invoke-static {v4, v11, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 455
    .end local v17    # "convertedNumber":Ljava/lang/String;
    .end local v25    # "schema":Ljava/lang/String;
    .end local v27    # "uri":Landroid/net/Uri;
    :cond_7
    invoke-static {v11}, Lcom/android/phone/SomcPhoneUtils;->filterNumberPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 456
    .local v19, "filteredNumber":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v21

    .line 458
    .local v21, "isExactEmergencyNumber":Z
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v22

    .line 460
    .local v22, "isPotentialEmergencyNumber":Z
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_8

    .line 461
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - Checking restrictions for number \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\':"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "     isExactEmergencyNumber     = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "     isPotentialEmergencyNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_8
    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 474
    if-eqz v22, :cond_d

    .line 475
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "ACTION_CALL_PRIVILEGED is used while the number is a potential emergency number. Use ACTION_CALL_EMERGENCY as an action instead."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v13, "android.intent.action.CALL_EMERGENCY"

    .line 481
    :goto_5
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_9

    .line 482
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - updating action from CALL_PRIVILEGED to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    :cond_a
    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 488
    if-eqz v22, :cond_e

    .line 489
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot call potential emergency number \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' with CALL Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "Launching default dialer instead..."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 496
    .local v20, "invokeFrameworkDialer":Landroid/content/Intent;
    const-string v4, "com.sonyericsson.android.socialphonebook"

    const-string v6, "com.sonyericsson.android.socialphonebook.DialerEntryActivity"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    const-string v4, "android.intent.action.DIAL"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 501
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_b

    .line 502
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate(): calling startActivity for Dialer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 507
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 432
    .end local v19    # "filteredNumber":Ljava/lang/String;
    .end local v20    # "invokeFrameworkDialer":Landroid/content/Intent;
    .end local v21    # "isExactEmergencyNumber":Z
    .end local v22    # "isPotentialEmergencyNumber":Z
    .restart local v27    # "uri":Landroid/net/Uri;
    :cond_c
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_4

    .line 479
    .end local v27    # "uri":Landroid/net/Uri;
    .restart local v19    # "filteredNumber":Ljava/lang/String;
    .restart local v21    # "isExactEmergencyNumber":Z
    .restart local v22    # "isPotentialEmergencyNumber":Z
    :cond_d
    const-string v13, "android.intent.action.CALL"

    goto/16 :goto_5

    .line 510
    :cond_e
    const/4 v15, 0x0

    .line 537
    .local v15, "callNow":Z
    :goto_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isScreenOn()Z

    move-result v6

    iput-boolean v6, v4, Lcom/android/phone/InCallUiState;->isScreenOnBeforeCalling:Z

    .line 548
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    .line 553
    if-eqz v11, :cond_f

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 554
    :cond_f
    const-string v4, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 555
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "onCreate: SEND_EMPTY_FLASH..."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V

    .line 557
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 511
    .end local v15    # "callNow":Z
    :cond_10
    const-string v4, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 519
    if-nez v22, :cond_11

    .line 520
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot call non-potential-emergency number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with EMERGENCY_CALL Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Finish the Activity immediately."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 526
    :cond_11
    const/4 v15, 0x1

    .restart local v15    # "callNow":Z
    goto :goto_6

    .line 528
    .end local v15    # "callNow":Z
    :cond_12
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Finish the Activity immediately."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 560
    .restart local v15    # "callNow":Z
    :cond_13
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "onCreate: null or empty number, setting callNow=true..."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v15, 0x1

    .line 565
    :cond_14
    if-eqz v15, :cond_15

    .line 570
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate(): callNow case! Calling placeCall(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 587
    :cond_15
    const-string v4, "com.android.phone.CALL_ORIGIN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 588
    .local v16, "callOrigin":Ljava/lang/String;
    if-eqz v16, :cond_18

    .line 589
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_16

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - Call origin is passed ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_16
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/phone/PhoneGlobals;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 606
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v27

    .line 607
    .restart local v27    # "uri":Landroid/net/Uri;
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v26

    .line 608
    .local v26, "scheme":Ljava/lang/String;
    const-string v4, "sip"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 609
    :cond_17
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "The requested number was detected as SIP call."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 592
    .end local v26    # "scheme":Ljava/lang/String;
    .end local v27    # "uri":Landroid/net/Uri;
    :cond_18
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_19

    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, " - Call origin is not passed. Reset current one."

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_19
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->resetLatestActiveCallOrigin()V

    goto :goto_7

    .line 619
    .restart local v26    # "scheme":Ljava/lang/String;
    .restart local v27    # "uri":Landroid/net/Uri;
    :cond_1a
    new-instance v5, Landroid/content/Intent;

    const-string v4, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v5, "broadcastIntent":Landroid/content/Intent;
    if-eqz v11, :cond_1b

    .line 621
    const-string v4, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v5, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    :cond_1b
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 624
    const-string v4, "android.phone.extra.ALREADY_CALLED"

    invoke-virtual {v5, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 625
    const-string v4, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    const-string v4, "com.android.phone.extra.DIAL_CONFERENCE_URI"

    const-string v6, "com.android.phone.extra.DIAL_CONFERENCE_URI"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 630
    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 631
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_1c

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcasting intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x65

    const-wide/16 v7, 0x7d0

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 639
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v7, "android.permission.PROCESS_OUTGOING_CALLS"

    new-instance v8, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v12, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v12}, Landroid/content/ContextWrapper;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 235
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "startSipCallOptionHandler..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 247
    const-string v1, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-static {p2, v0}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 250
    invoke-static {p2, v0}, Lcom/android/phone/PhoneUtils;->copyIMSExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 256
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.SIP_SELECT_PHONE"

    invoke-direct {v1, v2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 257
    const-class v2, Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 258
    const-string v2, "android.phone.extra.NEW_CALL_INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 259
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    .line 260
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSipCallOptionHandler(): calling startActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 265
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 714
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 715
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 706
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 707
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 724
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 725
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 276
    const v2, 0x7f03000b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 277
    const v2, 0x7f070031

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mWaitingSpinner:Landroid/widget/ProgressBar;

    .line 280
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->updateRequestedOrientation(Landroid/app/Activity;)V

    .line 282
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 283
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 285
    .local v0, "configuration":Landroid/content/res/Configuration;
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    .line 286
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", icicle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - getIntent() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - configuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    if-eqz p1, :cond_2

    .line 305
    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "onCreate: non-null icicle!  Bailing out, not sending NEW_OUTGOING_CALL broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_1
    :goto_0
    return-void

    .line 318
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->processIntent(Landroid/content/Intent;)V

    .line 323
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_1

    .line 324
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "At the end of onCreate(). isFinishing(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 684
    packed-switch p1, :pswitch_data_0

    .line 694
    const-string v1, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog: unexpected ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v0, 0x0

    .line 698
    .local v0, "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 686
    .end local v0    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0451

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 692
    .restart local v0    # "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 684
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 660
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 661
    return-void
.end method
