.class public Lcom/android/phone/EmergencyCallHelper;
.super Landroid/os/Handler;
.source "EmergencyCallHelper.java"


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallController:Lcom/android/phone/CallController;

.field private mNumRetriesSoFar:I

.field private mNumber:Ljava/lang/String;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallController;)V
    .locals 1
    .param p1, "callController"    # Lcom/android/phone/CallController;

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 82
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EmergencyCallHelper constructor..."

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/android/phone/EmergencyCallHelper;->mCallController:Lcom/android/phone/CallController;

    .line 84
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 85
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 86
    return-void
.end method

.method private cancelRetryTimer()V
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 523
    return-void
.end method

.method private cleanup()V
    .locals 1

    .prologue
    .line 493
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cleanup()..."

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 498
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    .line 499
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForDisconnect()V

    .line 500
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cancelRetryTimer()V

    .line 503
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    .line 504
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- releasing wake lock"

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 508
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 513
    :cond_3
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    .line 514
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 559
    const-string v0, "EmergencyCallHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-void
.end method

.method private onDisconnect(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 260
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 261
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 262
    .local v0, "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect: connection \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 265
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->IMSI_UNKNOWN_IN_VLR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->IMEI_NOT_ACCEPTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v2, :cond_3

    .line 270
    :cond_1
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- onDisconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", need to retry..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 271
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    .line 286
    :goto_0
    return-void

    .line 278
    :cond_3
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "==> Disconnect event; clean up..."

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 279
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    goto :goto_0
.end method

.method private onRetryTimeout()V
    .locals 4

    .prologue
    .line 292
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 293
    .local v0, "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 294
    .local v1, "serviceState":I
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRetryTimeout():  phone state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNumRetriesSoFar = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 306
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v2, :cond_2

    .line 307
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "- onRetryTimeout: Call is active!  Cleaning up..."

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 308
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 340
    :goto_0
    return-void

    .line 312
    :cond_2
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 317
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    .line 320
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v2}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 322
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->placeEmergencyCall()V

    .line 339
    :goto_1
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->displayCallScreen()V

    goto :goto_0

    .line 328
    :cond_3
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "- Trying (again) to turn on the radio..."

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 329
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->powerOnRadio()V

    .line 334
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    goto :goto_1
.end method

.method private onServiceStateChanged(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 206
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ServiceState;

    .line 207
    .local v1, "state":Landroid/telephony/ServiceState;
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged()...  new state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 218
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 221
    .local v0, "okToCall":Z
    :goto_0
    if-eqz v0, :cond_5

    .line 223
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "onServiceStateChanged: ok to call!"

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 226
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    .line 229
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v2}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 231
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->placeEmergencyCall()V

    .line 235
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->displayCallScreen()V

    .line 250
    :cond_3
    :goto_1
    return-void

    .line 218
    .end local v0    # "okToCall":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 246
    .restart local v0    # "okToCall":Z
    :cond_5
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_3

    .line 247
    const-string v2, "onServiceStateChanged: not ready to call yet, keep waiting..."

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private placeEmergencyCall()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 391
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "placeEmergencyCall()..."

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->registerForDisconnect()V

    .line 401
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    rsub-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->setEmergencyCallRetryCount(I)V

    .line 403
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- placing call to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    move-result v6

    .line 411
    .local v6, "callStatus":I
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- PhoneUtils.placeCall() returned status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 416
    :cond_2
    packed-switch v6, :pswitch_data_0

    .line 425
    const-string v0, "EmergencyCallHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeEmergencyCall(): placeCall() failed: callStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v7, 0x0

    .line 430
    .local v7, "success":Z
    :goto_0
    if-eqz v7, :cond_4

    .line 431
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "==> Success from PhoneUtils.placeCall()!"

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 444
    :cond_3
    :goto_1
    return-void

    .line 418
    .end local v7    # "success":Z
    :pswitch_0
    const/4 v7, 0x1

    .line 419
    .restart local v7    # "success":Z
    goto :goto_0

    .line 439
    :cond_4
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "==> Failure."

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 442
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    goto :goto_1

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private powerOnRadio()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 351
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "- powerOnRadio()..."

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->registerForServiceStateChanged()V

    .line 359
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    .line 361
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "==> Turning off airplane mode..."

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 368
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 370
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContextWrapper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 381
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 376
    :cond_2
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_3

    .line 377
    const-string v1, "==> (Apparently) not in airplane mode; manually powering radio on..."

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 379
    :cond_3
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0
.end method

.method private registerForDisconnect()V
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 546
    return-void
.end method

.method private registerForServiceStateChanged()V
    .locals 3

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 530
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 531
    return-void
.end method

.method private scheduleRetryOrBailOut()V
    .locals 2

    .prologue
    .line 453
    iget v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    .line 454
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleRetryOrBailOut()...  mNumRetriesSoFar is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 458
    :cond_0
    iget v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    .line 459
    const-string v0, "EmergencyCallHelper"

    const-string v1, "scheduleRetryOrBailOut: hit MAX_NUM_RETRIES; giving up..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 463
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 469
    :goto_0
    return-void

    .line 465
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "- Scheduling another retry..."

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 466
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->startRetryTimer()V

    .line 467
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->RETRYING:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V

    goto :goto_0
.end method

.method private startRetryTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 517
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 518
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 519
    return-void
.end method

.method private startSequenceInternal(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 148
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSequenceInternal(): msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 157
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    .line 158
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- startSequenceInternal: Got mNumber: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 160
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    .line 163
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 167
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 168
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "EmergencyCallHelper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 172
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "- startSequenceInternal: acquiring wake lock"

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 181
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->powerOnRadio()V

    .line 189
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->startRetryTimer()V

    .line 193
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v2, Lcom/android/phone/InCallUiState$ProgressIndicationType;->TURNING_ON_RADIO:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallUiState;->setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V

    .line 196
    return-void
.end method

.method private unregisterForDisconnect()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 550
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 551
    return-void
.end method

.method private unregisterForServiceStateChanged()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 538
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 539
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 104
    const-string v0, "EmergencyCallHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 92
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->startSequenceInternal(Landroid/os/Message;)V

    goto :goto_0

    .line 95
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onServiceStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 98
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onDisconnect(Landroid/os/Message;)V

    goto :goto_0

    .line 101
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->onRetryTimeout()V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 135
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startEmergencyCallFromAirplaneModeSequence(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 138
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 139
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    return-void
.end method
