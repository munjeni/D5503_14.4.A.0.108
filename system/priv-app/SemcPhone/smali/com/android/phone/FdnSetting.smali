.class public Lcom/android/phone/FdnSetting;
.super Landroid/preference/PreferenceActivity;
.source "FdnSetting.java"

# interfaces
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/FdnSetting$6;
    }
.end annotation


# instance fields
.field private mButtonChangePin2:Lcom/android/phone/EditPinPreference;

.field private mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

.field private mButtonFdnList:Landroid/preference/PreferenceScreen;

.field private mFDNHandler:Landroid/os/Handler;

.field private mIsPuk2Locked:Z

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinChangeState:I

.field private mPuk2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 281
    new-instance v0, Lcom/android/phone/FdnSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/FdnSetting$1;-><init>(Lcom/android/phone/FdnSetting;)V

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/FdnSetting;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/FdnSetting;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/FdnSetting;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/FdnSetting;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/FdnSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/FdnSetting;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/FdnSetting;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/FdnSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->toggleFDNEnable(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/FdnSetting;Lcom/android/phone/EditPinPreference;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/FdnSetting;
    .param p1, "x1"    # Lcom/android/phone/EditPinPreference;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/FdnSetting;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->toggleDataConnection()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/FdnSetting;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/FdnSetting;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/FdnSetting;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/FdnSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/FdnSetting;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/FdnSetting;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/FdnSetting;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/FdnSetting;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/FdnSetting;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    return-void
.end method

.method private checkPin2StatusAndUpdateFdnScreen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 664
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPuk2Blocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PUK2 is Blocked.Disabling Enable FDN,Change PIN2"

    invoke-direct {p0, v0}, Lcom/android/phone/FdnSetting;->log(Ljava/lang/String;)V

    .line 666
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 667
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 668
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 677
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin2Blocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 670
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "PIN2 is Blocked"

    invoke-direct {p0, v0}, Lcom/android/phone/FdnSetting;->log(Ljava/lang/String;)V

    .line 671
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    goto :goto_0

    .line 673
    :cond_3
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "PUK2/PIN2 is not Blocked"

    invoke-direct {p0, v0}, Lcom/android/phone/FdnSetting;->log(Ljava/lang/String;)V

    .line 674
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    goto :goto_0
.end method

.method private final displayMessage(I)V
    .locals 4
    .param p1, "strId"    # I

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "msg":Ljava/lang/String;
    const v2, 0x7f0b035b

    if-eq p1, v2, :cond_0

    const v2, 0x7f0b035a

    if-eq p1, v2, :cond_0

    const v2, 0x7f0b033d

    if-ne p1, v2, :cond_1

    .line 390
    :cond_0
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccPin2RetryCount()I

    move-result v0

    .line 392
    .local v0, "attemptsRemaining":I
    if-ltz v0, :cond_1

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b00e0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    .end local v0    # "attemptsRemaining":I
    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 401
    return-void
.end method

.method private final displayPinChangeDialog(Lcom/android/phone/EditPinPreference;)V
    .locals 2
    .param p1, "button"    # Lcom/android/phone/EditPinPreference;

    .prologue
    .line 407
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    .line 408
    return-void
.end method

.method private final displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V
    .locals 3
    .param p1, "button"    # Lcom/android/phone/EditPinPreference;
    .param p2, "strId"    # I
    .param p3, "shouldDisplay"    # Z

    .prologue
    .line 413
    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    packed-switch v1, :pswitch_data_0

    .line 431
    :pswitch_0
    const v0, 0x7f0b0360

    .line 436
    .local v0, "msgId":I
    :goto_0
    if-eqz p2, :cond_2

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 443
    :goto_1
    if-eqz p3, :cond_0

    .line 444
    invoke-virtual {p1}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    .line 446
    :cond_0
    return-void

    .line 415
    .end local v0    # "msgId":I
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-ne p1, v1, :cond_1

    .line 416
    const v0, 0x7f0b0356

    .restart local v0    # "msgId":I
    goto :goto_0

    .line 418
    .end local v0    # "msgId":I
    :cond_1
    const v0, 0x7f0b0357

    .line 420
    .restart local v0    # "msgId":I
    goto :goto_0

    .line 423
    .end local v0    # "msgId":I
    :pswitch_2
    const v0, 0x7f0b0358

    .line 424
    .restart local v0    # "msgId":I
    goto :goto_0

    .line 427
    .end local v0    # "msgId":I
    :pswitch_3
    const v0, 0x7f0b0359

    .line 428
    .restart local v0    # "msgId":I
    goto :goto_0

    .line 439
    :cond_2
    invoke-virtual {p1, v0}, Landroid/preference/DialogPreference;->setDialogMessage(I)V

    goto :goto_1

    .line 413
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isDialogShown()Z
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 658
    const-string v0, "FdnSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FdnSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-void
.end method

.method private final resetPinChangeState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 452
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "resetPinChangeState"

    invoke-direct {p0, v0}, Lcom/android/phone/FdnSetting;->log(Ljava/lang/String;)V

    .line 453
    :cond_0
    iput v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 454
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    .line 455
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    .line 456
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 457
    iput-boolean v1, p0, Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z

    .line 458
    return-void
.end method

.method private final resetPinChangeStateForPUK2()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 464
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "resetPinChangeStateForPUK2"

    invoke-direct {p0, v0}, Lcom/android/phone/FdnSetting;->log(Ljava/lang/String;)V

    .line 465
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 466
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    .line 467
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    .line 468
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z

    .line 470
    return-void
.end method

.method private toggleDataConnection()V
    .locals 2

    .prologue
    .line 520
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccFdnAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Sending intent to toggle data connection"

    invoke-direct {p0, v1}, Lcom/android/phone/FdnSetting;->log(Ljava/lang/String;)V

    .line 522
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.intent.telephony.DATA_TOGGLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 526
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private toggleFDNEnable(Z)V
    .locals 6
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x0

    .line 126
    if-nez p1, :cond_1

    .line 128
    iget-boolean v3, p0, Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z

    if-nez v3, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 151
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "password":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 140
    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    .line 141
    .local v0, "isEnabled":Z
    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 144
    .local v1, "onComplete":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    if-nez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-interface {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 150
    .end local v0    # "isEnabled":Z
    .end local v1    # "onComplete":Landroid/os/Message;
    :goto_1
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_3
    const v3, 0x7f0b035d

    invoke-direct {p0, v3}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    goto :goto_1
.end method

.method private updateEnableFDN()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 498
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0b031e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 501
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0b0319

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 502
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0b031c

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 509
    :goto_0
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonFdnList:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 517
    :goto_1
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0b031f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 505
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0b031a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 506
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0b031b

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    goto :goto_0

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 512
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 513
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonFdnList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 514
    const v0, 0x7f0b0320

    invoke-direct {p0, v0}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    goto :goto_1
.end method

.method private updatePINChangeState(Lcom/android/phone/EditPinPreference;Z)V
    .locals 8
    .param p1, "button"    # Lcom/android/phone/EditPinPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    const/16 v7, 0xc8

    const/4 v6, 0x4

    const v5, 0x7f0b035d

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 157
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePINChangeState positive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPinChangeState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsPuk2Locked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/FdnSetting;->log(Ljava/lang/String;)V

    .line 160
    :cond_0
    if-nez p2, :cond_2

    .line 162
    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z

    if-nez v1, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 276
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    goto :goto_0

    .line 179
    :cond_2
    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 181
    :pswitch_0
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 182
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    iput v3, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 186
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;)V

    goto :goto_0

    .line 188
    :cond_3
    invoke-direct {p0, p1, v5, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    goto :goto_0

    .line 192
    :pswitch_1
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 193
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 196
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 197
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;)V

    goto :goto_0

    .line 199
    :cond_4
    invoke-direct {p0, p1, v5, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    goto :goto_0

    .line 203
    :pswitch_2
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 205
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 206
    iput v3, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 207
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 208
    const v1, 0x7f0b035c

    invoke-direct {p0, p1, v1, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    goto :goto_0

    .line 212
    :cond_5
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 215
    .local v0, "onComplete":Landroid/os/Message;
    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z

    if-nez v1, :cond_6

    .line 216
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 219
    :cond_6
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 224
    .end local v0    # "onComplete":Landroid/os/Message;
    :cond_7
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, p1, v5, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    goto/16 :goto_0

    .line 231
    :pswitch_3
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    .line 232
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 236
    iput v6, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 237
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;)V

    goto/16 :goto_0

    .line 239
    :cond_8
    const v1, 0x7f0b035e

    invoke-direct {p0, p1, v1, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    goto/16 :goto_0

    .line 244
    :pswitch_4
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 245
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 249
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 250
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;)V

    goto/16 :goto_0

    .line 252
    :cond_9
    invoke-direct {p0, p1, v5, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    goto/16 :goto_0

    .line 258
    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 259
    iput v6, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 260
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 261
    const v1, 0x7f0b035c

    invoke-direct {p0, p1, v1, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(Lcom/android/phone/EditPinPreference;IZ)V

    goto/16 :goto_0

    .line 264
    :cond_a
    const/4 v0, 0x0

    .line 265
    .restart local v0    # "onComplete":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    if-ne p1, v1, :cond_b

    .line 266
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 272
    :goto_1
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 269
    :cond_b
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_1

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "isPUK"    # Z

    .prologue
    const/16 v1, 0x8

    .line 482
    if-eqz p2, :cond_1

    move v0, v1

    .line 485
    .local v0, "pinMinimum":I
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 486
    :cond_0
    const/4 v1, 0x0

    .line 488
    :goto_1
    return v1

    .line 482
    .end local v0    # "pinMinimum":I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 488
    .restart local v0    # "pinMinimum":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 530
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 532
    const v2, 0x7f050008

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 534
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 537
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 538
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v2, "button_fdn_enable_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    .line 539
    const-string v2, "button_change_pin2_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    .line 540
    const-string v2, "button_fdn_list_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonFdnList:Landroid/preference/PreferenceScreen;

    .line 543
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 545
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 548
    if-eqz p1, :cond_0

    .line 549
    const-string v2, "skip_old_pin_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z

    .line 550
    const-string v2, "pin_change_state_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 551
    const-string v2, "old_pin_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 552
    const-string v2, "new_pin_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 553
    const-string v2, "puk_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    .line 554
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, "dialog_message_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, "dialog_pin_entry_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 556
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v3, "fdn_dialog_message_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v3, "fdn_dialog_pin_entry_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 560
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 561
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 563
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 565
    :cond_1
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const v7, 0x7f0b01fd

    const/16 v3, 0xc

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x3

    .line 612
    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    .line 613
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b00e1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/FdnSetting$2;

    invoke-direct {v3, p0}, Lcom/android/phone/FdnSetting$2;-><init>(Lcom/android/phone/FdnSetting;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 619
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    .line 620
    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/phone/FdnSetting$3;

    invoke-direct {v3, p0}, Lcom/android/phone/FdnSetting$3;-><init>(Lcom/android/phone/FdnSetting;)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 654
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :goto_0
    return-object v0

    .line 629
    :cond_0
    if-eq p1, v3, :cond_1

    const/16 v2, 0xb

    if-ne p1, v2, :cond_3

    .line 631
    :cond_1
    if-ne p1, v3, :cond_2

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    .line 633
    .local v1, "button":Lcom/android/phone/EditPinPreference;
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0362

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/FdnSetting$4;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/FdnSetting$4;-><init>(Lcom/android/phone/FdnSetting;Lcom/android/phone/EditPinPreference;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 642
    .restart local v0    # "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    .line 643
    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/phone/FdnSetting$5;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/FdnSetting$5;-><init>(Lcom/android/phone/FdnSetting;Lcom/android/phone/EditPinPreference;)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 631
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "button":Lcom/android/phone/EditPinPreference;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    goto :goto_1

    .line 654
    :cond_3
    const/4 v2, 0x0

    invoke-super {p0, p1, v2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 681
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 682
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 683
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 684
    const/4 v1, 0x1

    .line 686
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 1
    .param p1, "preference"    # Lcom/android/phone/EditPinPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 116
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/phone/FdnSetting;->toggleFDNEnable(Z)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/phone/FdnSetting;->updatePINChangeState(Lcom/android/phone/EditPinPreference;Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 569
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 570
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 572
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->isDialogShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    .line 575
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->checkPin2StatusAndUpdateFdnScreen()V

    .line 576
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 588
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 589
    const-string v1, "skip_old_pin_key"

    iget-boolean v2, p0, Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 590
    const-string v1, "pin_change_state_key"

    iget v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 591
    const-string v1, "old_pin_key"

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v1, "new_pin_key"

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v1, "puk_key"

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 595
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Landroid/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 596
    .local v0, "dialogMsg":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 597
    const-string v1, "dialog_message_key"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_0
    const-string v1, "dialog_pin_entry_key"

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .end local v0    # "dialogMsg":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 602
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Landroid/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 603
    .restart local v0    # "dialogMsg":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 604
    const-string v1, "fdn_dialog_message_key"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_2
    const-string v1, "fdn_dialog_pin_entry_key"

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    .end local v0    # "dialogMsg":Ljava/lang/CharSequence;
    :cond_3
    return-void
.end method
