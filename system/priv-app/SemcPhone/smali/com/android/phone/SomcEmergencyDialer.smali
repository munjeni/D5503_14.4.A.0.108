.class public Lcom/android/phone/SomcEmergencyDialer;
.super Landroid/app/Activity;
.source "SomcEmergencyDialer.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final DIALER_KEYS:[I


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDigits:Lcom/android/phone/SomcEditText;

.field private mGreen:Landroid/view/View;

.field private mLastNumber:Ljava/lang/String;

.field private mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

.field private mVibrateOn:Z

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/SomcEmergencyDialer;->DIALER_KEYS:[I

    return-void

    :array_0
    .array-data 4
        0x7f070063
        0x7f070064
        0x7f070065
        0x7f070066
        0x7f070067
        0x7f070068
        0x7f070069
        0x7f07006a
        0x7f07006b
        0x7f07006c
        0x7f07006e
        0x7f070070
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    new-instance v0, Lcom/android/phone/SomcEmergencyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcEmergencyDialer$1;-><init>(Lcom/android/phone/SomcEmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private checkVibrationSettings()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 672
    iput-boolean v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibrateOn:Z

    .line 673
    iget-object v5, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibratePattern:[J

    if-nez v5, :cond_4

    .line 674
    const/4 v2, 0x0

    .line 676
    .local v2, "pattern":[I
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 684
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    array-length v5, v2

    if-nez v5, :cond_3

    .line 685
    :cond_1
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_2

    .line 686
    const-string v4, "emergency_dialer"

    const-string v5, "Vibrate pattern is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .end local v2    # "pattern":[I
    :cond_2
    :goto_1
    return-void

    .line 678
    .restart local v2    # "pattern":[I
    :catch_0
    move-exception v1

    .line 679
    .local v1, "nfe":Landroid/content/res/Resources$NotFoundException;
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_0

    .line 680
    const-string v5, "emergency_dialer"

    const-string v6, "Vibrate pattern missing!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 692
    .end local v1    # "nfe":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    array-length v5, v2

    new-array v5, v5, [J

    iput-object v5, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibratePattern:[J

    .line 693
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v5, v2

    if-ge v0, v5, :cond_4

    .line 694
    iget-object v5, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibratePattern:[J

    aget v6, v2, v0

    int-to-long v6, v6

    aput-wide v6, v5, v0

    .line 693
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 699
    .end local v0    # "i":I
    .end local v2    # "pattern":[I
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "haptic_feedback_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 701
    .local v3, "val":I
    if-eqz v3, :cond_5

    const/4 v4, 0x1

    :cond_5
    iput-boolean v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibrateOn:Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 702
    .end local v3    # "val":I
    :catch_1
    move-exception v1

    .line 703
    .restart local v1    # "nfe":Landroid/content/res/Resources$NotFoundException;
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_2

    .line 704
    const-string v4, "emergency_dialer"

    const-string v5, "Fail to retrieve system setting HAPTIC_FEEDBACK_ENABLED."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 625
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    const v0, 0x7f0b0055

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 628
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private releaseSomcTonePlayer()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/SomcTonePlayer;->release()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    .line 252
    :cond_0
    return-void
.end method

.method private setupKeypad()V
    .locals 7

    .prologue
    .line 308
    sget-object v0, Lcom/android/phone/SomcEmergencyDialer;->DIALER_KEYS:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget v2, v0, v1

    .line 309
    .local v2, "id":I
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 310
    .local v3, "key":Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v2    # "id":I
    .end local v3    # "key":Landroid/view/View;
    :cond_0
    const v6, 0x7f07006e

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 315
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 317
    iget-object v6, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    return-void
.end method

.method private declared-synchronized vibrate()V
    .locals 3

    .prologue
    .line 661
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibrateOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 669
    :goto_0
    monitor-exit p0

    return-void

    .line 664
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 665
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibrator:Landroid/os/Vibrator;

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibratePattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected addChar(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 479
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 480
    .local v1, "pos":I
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 481
    .local v2, "st":Ljava/lang/StringBuffer;
    invoke-virtual {v2, v1, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v0

    .line 490
    .local v0, "isEmpty":I
    if-lez v0, :cond_0

    .line 491
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 493
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SomcEmergencyDialer;->vibrate()V

    .line 494
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "input"    # Landroid/text/Editable;

    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleCharsForLockedDevice(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 116
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 435
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 436
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 437
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 438
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 441
    :cond_1
    return-void

    .line 353
    :pswitch_1
    const/16 v3, 0x31

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 354
    const-string v3, "1"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :pswitch_2
    const/16 v3, 0x32

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 359
    const-string v3, "2"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :pswitch_3
    const/16 v3, 0x33

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 364
    const-string v3, "3"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :pswitch_4
    const/16 v3, 0x34

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 369
    const-string v3, "4"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :pswitch_5
    const/16 v3, 0x35

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 374
    const-string v3, "5"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :pswitch_6
    const/16 v3, 0x36

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 379
    const-string v3, "6"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :pswitch_7
    const/16 v3, 0x37

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 384
    const-string v3, "7"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :pswitch_8
    const/16 v3, 0x38

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 389
    const-string v3, "8"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :pswitch_9
    const/16 v3, 0x39

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 394
    const-string v3, "9"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :pswitch_a
    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 399
    const-string v3, "0"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    :pswitch_b
    const/16 v3, 0x23

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 404
    const-string v3, "#"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    :pswitch_c
    const/16 v3, 0x2a

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 409
    const-string v3, "*"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 413
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/phone/SomcEmergencyDialer;->placeCall()V

    goto/16 :goto_0

    .line 417
    :pswitch_e
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 418
    .local v2, "start":I
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 420
    .local v0, "end":I
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 422
    .local v1, "st":Ljava/lang/StringBuffer;
    add-int/lit8 v3, v2, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 423
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    add-int/lit8 v4, v2, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 426
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 427
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 429
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x7f070063
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    const-string v4, "accessibility"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 163
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 164
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->proximitySensorModeEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 166
    const-wide/16 v4, 0x3a98

    iput-wide v4, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 170
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->updateRequestedOrientation(Landroid/app/Activity;)V

    .line 172
    const v4, 0x7f03001b

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 174
    const v4, 0x7f070075

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/phone/SomcEditText;

    iput-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    .line 175
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 176
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 177
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v4, p0}, Lcom/android/phone/SomcEditText;->setSomcEmergencyDialer(Lcom/android/phone/SomcEmergencyDialer;)V

    .line 178
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 179
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    const v5, 0x7f0b0056

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(I)V

    .line 180
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 181
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 182
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 183
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v4, v6}, Landroid/view/View;->setLongClickable(Z)V

    .line 184
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 189
    :cond_1
    const v4, 0x7f070077

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    .line 190
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 194
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v8, v4, :cond_2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->keyboard:I

    if-eq v8, v4, :cond_6

    .line 196
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/SomcEmergencyDialer;->setupKeypad()V

    .line 197
    const v4, 0x7f070074

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    .line 198
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 200
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 211
    :goto_0
    const/4 v3, 0x0

    .line 213
    .local v3, "number":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 214
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 216
    const-string v4, "displayNumber"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    :cond_3
    if-nez v3, :cond_4

    .line 222
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 223
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_4

    const-string v4, "tel"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 225
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 226
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tel:#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 227
    const-string v3, "#"

    .line 234
    .end local v0    # "data":Landroid/net/Uri;
    :cond_4
    if-eqz v3, :cond_5

    .line 235
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 239
    :cond_5
    new-instance v4, Lcom/android/phone/SomcTonePlayer;

    const/16 v5, 0x32

    invoke-direct {v4, v9, v5}, Lcom/android/phone/SomcTonePlayer;-><init>(II)V

    iput-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    .line 240
    invoke-virtual {p0, v9}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 242
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 243
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    return-void

    .line 203
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v3    # "number":Ljava/lang/String;
    :cond_6
    const v4, 0x7f070074

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 204
    const v4, 0x7f070076

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b013e

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 208
    iget-object v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-nez p1, :cond_0

    .line 637
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d0005

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0b0056

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SomcEmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00a0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 643
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 645
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 257
    invoke-direct {p0}, Lcom/android/phone/SomcEmergencyDialer;->releaseSomcTonePlayer()V

    .line 258
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 263
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 264
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    :cond_2
    const v1, 0x7f070063

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 275
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 276
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    const v1, 0x7f070064

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const v1, 0x7f070065

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    const v1, 0x7f070066

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    const v1, 0x7f070067

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    const v1, 0x7f070068

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    const v1, 0x7f070069

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v1, 0x7f07006b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    const v1, 0x7f07006c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    const v1, 0x7f070070

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    const v1, 0x7f07006e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 288
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 292
    :cond_3
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 452
    iget-object v6, p0, Lcom/android/phone/SomcEmergencyDialer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/SomcEmergencyDialer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 455
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 475
    :cond_0
    :goto_0
    return v8

    .line 458
    :pswitch_0
    invoke-virtual {p1, v8}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 461
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 462
    .local v1, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int v2, v6, v7

    .line 463
    .local v2, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 464
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 465
    .local v0, "bottom":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 466
    .local v4, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 467
    .local v5, "y":I
    if-le v4, v1, :cond_1

    if-ge v4, v2, :cond_1

    if-le v5, v3, :cond_1

    if-ge v5, v0, :cond_1

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 470
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 334
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 327
    :pswitch_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/phone/SomcEmergencyDialer;->placeCall()V

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x7f070075
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 500
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 501
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    move v1, v2

    .line 513
    :goto_0
    return v1

    .line 503
    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 509
    :sswitch_1
    const-string v2, "+"

    invoke-virtual {p0, v2}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :sswitch_data_0
    .sparse-switch
        0x7f07006e -> :sswitch_1
        0x7f070074 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 547
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    .line 548
    const-string v1, "emergency_dialer"

    const-string v2, "turning keyguard back on and closing the dialer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 550
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 551
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 553
    invoke-direct {p0}, Lcom/android/phone/SomcEmergencyDialer;->releaseSomcTonePlayer()V

    .line 554
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 650
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 651
    if-nez p1, :cond_0

    move-object v0, p2

    .line 652
    check-cast v0, Landroid/app/AlertDialog;

    .line 653
    .local v0, "alert":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 655
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 296
    const-string v0, "lastNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 297
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 521
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 523
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDTMFToneEnabled:Z

    .line 526
    invoke-direct {p0}, Lcom/android/phone/SomcEmergencyDialer;->checkVibrationSettings()V

    .line 528
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-nez v1, :cond_0

    .line 529
    new-instance v1, Lcom/android/phone/SomcTonePlayer;

    const/4 v2, 0x2

    const/16 v3, 0x32

    invoke-direct {v1, v2, v3}, Lcom/android/phone/SomcTonePlayer;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    .line 534
    :cond_0
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_1

    .line 535
    const-string v1, "emergency_dialer"

    const-string v2, "turning keyguard off, set to long timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 537
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 539
    return-void

    .line 523
    .end local v0    # "app":Lcom/android/phone/PhoneGlobals;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 301
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 302
    const-string v0, "lastNumber"

    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "displayNumber"

    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "changeCount"    # I

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 121
    .local v0, "inputLength":I
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "emergency_dialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTextChanged: inputLength= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " changeCount= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    if-gtz v0, :cond_2

    .line 126
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_3
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method placeCall()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 560
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 564
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    sget-object v2, Lcom/android/phone/Constants;->sTaiwanEmergencyNumberConversionInfo:Lcom/android/phone/Constants$NumberConversionInfo;

    invoke-static {p0, v5, v1, v2}, Lcom/android/phone/SomcPhoneUtils;->convertNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/phone/Constants$NumberConversionInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->filterNumberPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 570
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_1

    .line 571
    const-string v1, "emergency_dialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placing call to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 594
    :cond_2
    :goto_0
    return-void

    .line 577
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v1, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 579
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 580
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 581
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 583
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_5

    .line 584
    const-string v1, "emergency_dialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejecting bad requested number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_5
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    invoke-virtual {p0, v4}, Landroid/app/Activity;->showDialog(I)V

    .line 589
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 590
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 591
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method playTone(C)V
    .locals 4
    .param p1, "tone"    # C

    .prologue
    .line 603
    iget-boolean v2, p0, Lcom/android/phone/SomcEmergencyDialer;->mDTMFToneEnabled:Z

    if-nez v2, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 613
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 614
    .local v1, "ringerMode":I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 619
    iget-object v2, p0, Lcom/android/phone/SomcEmergencyDialer;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v2, :cond_0

    .line 620
    iget-object v2, p0, Lcom/android/phone/SomcEmergencyDialer;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    const/16 v3, 0x96

    invoke-virtual {v2, p1, v3}, Lcom/android/phone/SomcTonePlayer;->playToneByChar(CI)V

    goto :goto_0
.end method
