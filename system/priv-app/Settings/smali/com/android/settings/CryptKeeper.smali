.class public Lcom/android/settings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptKeeper$ValidationTask;,
        Lcom/android/settings/CryptKeeper$DecryptTask;,
        Lcom/android/settings/CryptKeeper$FadeToBlack;,
        Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCooldown:I

.field private mEncryptionGoneBad:Z

.field private mFactoryResetNeeded:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreBack:Z

.field private mNotificationCountdown:I

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mFactoryResetNeeded:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mIgnoreBack:Z

    .line 122
    iput v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 219
    new-instance v0, Lcom/android/settings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$1;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/CryptKeeper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->notifyUser()V

    return-void
.end method

.method private cooldown()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 521
    const v2, 0x7f080016

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 523
    .local v0, "status":Landroid/widget/TextView;
    iget v2, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    if-gtz v2, :cond_0

    .line 525
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 526
    invoke-direct {p0, v3}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 527
    const v2, 0x7f0b0751

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 536
    :goto_0
    return-void

    .line 529
    :cond_0
    const v2, 0x7f0b01dd

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 530
    .local v1, "template":Ljava/lang/CharSequence;
    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget v2, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    .line 533
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 534
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private delayAudioNotification()V
    .locals 1

    .prologue
    .line 795
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 796
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 3

    .prologue
    .line 418
    const-string v1, "CryptKeeper"

    const-string v2, "Encryption progress screen initializing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 420
    const-string v1, "CryptKeeper"

    const-string v2, "Acquiring wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 422
    .local v0, "pm":Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 423
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 426
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    const v1, 0x7f080043

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 428
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 431
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    .line 432
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 660
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 661
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 662
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 664
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 620
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 623
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 625
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 627
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 653
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 628
    .restart local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 631
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 632
    add-int/lit8 v2, v2, 0x1

    .line 633
    goto :goto_0

    .line 636
    :cond_2
    const/4 v0, 0x0

    .line 637
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 638
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 639
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 642
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 647
    .local v6, "nonAuxCount":I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 648
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 649
    goto :goto_0

    .line 653
    .end local v0    # "auxCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "nonAuxCount":I
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private isDebugView()Z
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 762
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 785
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 786
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 788
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 789
    return-void
.end method

.method private notifyUser()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 265
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    if-lez v1, :cond_1

    .line 266
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 280
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 281
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 282
    return-void

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/high16 v3, 0x42c80000

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->playSoundEffect(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private passwordEntryInit()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x0

    .line 552
    const v5, 0x7f080040

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 553
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 554
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 556
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 557
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 558
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 561
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 562
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 563
    const v5, 0x7f08003d

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 564
    .local v0, "emergencyCall":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 565
    const-string v5, "CryptKeeper"

    const-string v6, "Removing the emergency Call button"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 570
    .end local v0    # "emergencyCall":Landroid/view/View;
    :cond_0
    const v5, 0x7f080041

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 571
    .local v1, "imeSwitcher":Landroid/view/View;
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 573
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    invoke-direct {p0, v2, v7}, Lcom/android/settings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 574
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 575
    new-instance v5, Lcom/android/settings/CryptKeeper$4;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/CryptKeeper$4;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    :cond_1
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v5, :cond_2

    .line 587
    const-string v5, "CryptKeeper"

    const-string v6, "Acquiring wakelock."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-string v5, "power"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 589
    .local v3, "pm":Landroid/os/PowerManager;
    if-eqz v3, :cond_2

    .line 590
    const/16 v5, 0x1a

    const-string v6, "CryptKeeper"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 591
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 596
    .end local v3    # "pm":Landroid/os/PowerManager;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings/CryptKeeper$5;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/CryptKeeper$5;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 602
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 604
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 605
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 608
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x400000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 609
    return-void
.end method

.method private resumeCall()V
    .locals 5

    .prologue
    .line 774
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 775
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 777
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling ITelephony service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 709
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 711
    .local v1, "isLteDevice":Z
    :goto_0
    if-nez v1, :cond_0

    .line 712
    const-string v3, "CryptKeeper"

    const-string v4, "Going into airplane mode."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 714
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 715
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 716
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Landroid/content/ContextWrapper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 718
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 709
    .end local v1    # "isLteDevice":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final setBackFunctionality(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 543
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mIgnoreBack:Z

    .line 544
    if-eqz p1, :cond_1

    .line 545
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 549
    :goto_1
    return-void

    .line 543
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_1
.end method

.method private setupUi()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f04001f

    .line 359
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:Z

    if-nez v2, :cond_0

    const-string v2, "error"

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 360
    :cond_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 361
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->showErrorDialog()V

    .line 377
    :cond_1
    :goto_0
    return-void

    .line 365
    :cond_2
    const-string v2, "vold.encrypt_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "progress":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "progress"

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 367
    :cond_3
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 368
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->encryptionProgressInit()V

    goto :goto_0

    .line 369
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    if-nez v2, :cond_5

    const-string v2, "password"

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 370
    :cond_5
    const v1, 0x7f04001d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 371
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->passwordEntryInit()V

    goto :goto_0

    .line 372
    :cond_6
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    if-nez v2, :cond_1

    .line 374
    new-instance v2, Lcom/android/settings/CryptKeeper$ValidationTask;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 375
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    goto :goto_0
.end method

.method private showErrorDialog()V
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mFactoryResetNeeded:Z

    if-eqz v0, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->showFactoryReset()V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->showReboot()V

    goto :goto_0
.end method

.method private showFactoryReset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 436
    const v2, 0x7f08003e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 439
    const v2, 0x7f080044

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 440
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 441
    new-instance v2, Lcom/android/settings/CryptKeeper$2;

    invoke-direct {v2, p0}, Lcom/android/settings/CryptKeeper$2;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    const v2, 0x7f080026

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b01df

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 451
    const v2, 0x7f080016

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b01e0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 453
    const v2, 0x7f080046

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 455
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 456
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 458
    :cond_0
    return-void
.end method

.method private showReboot()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 462
    const v2, 0x7f08003e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 465
    const v2, 0x7f080045

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 466
    .local v1, "rebootButton":Landroid/widget/Button;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 467
    new-instance v2, Lcom/android/settings/CryptKeeper$3;

    invoke-direct {v2, p0}, Lcom/android/settings/CryptKeeper$3;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    const v2, 0x7f080026

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b01df

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 477
    const v2, 0x7f080016

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b00a4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 479
    const v2, 0x7f080046

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 480
    .local v0, "divider":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 483
    :cond_0
    return-void
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .prologue
    .line 766
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 767
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->resumeCall()V

    .line 771
    :goto_0
    return-void

    .line 769
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 727
    const v5, 0x7f08003d

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 729
    .local v0, "emergencyCall":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 759
    :goto_0
    return-void

    .line 732
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 733
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 734
    new-instance v5, Lcom/android/settings/CryptKeeper$6;

    invoke-direct {v5, p0}, Lcom/android/settings/CryptKeeper$6;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 748
    .local v2, "newState":I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 750
    const v4, 0x7f0b07cd

    .line 751
    .local v4, "textId":I
    const v3, 0x7f0200f3

    .line 752
    .local v3, "phoneCallIcon":I
    const v5, 0x7f0200f3

    invoke-virtual {v0, v5, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 758
    .end local v3    # "phoneCallIcon":I
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 742
    .end local v2    # "newState":I
    .end local v4    # "textId":I
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 754
    .restart local v2    # "newState":I
    :cond_2
    const v4, 0x7f0b07cc

    .line 755
    .restart local v4    # "textId":I
    const v1, 0x7f020052

    .line 756
    .local v1, "emergencyIcon":I
    const v5, 0x7f020052

    invoke-virtual {v0, v5, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method private updateProgress()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 486
    const-string v5, "vold.encrypt_progress"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "state":Ljava/lang/String;
    const-string v5, "error_sd_partially_encrypted"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 489
    iput-boolean v9, p0, Lcom/android/settings/CryptKeeper;->mFactoryResetNeeded:Z

    .line 490
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->showReboot()V

    .line 517
    :goto_0
    return-void

    .line 494
    :cond_0
    const-string v5, "error_partially_encrypted"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 495
    iput-boolean v8, p0, Lcom/android/settings/CryptKeeper;->mFactoryResetNeeded:Z

    .line 496
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->showFactoryReset()V

    goto :goto_0

    .line 500
    :cond_1
    const/4 v1, 0x0

    .line 503
    .local v1, "progress":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    const/16 v1, 0x32

    .line 508
    :goto_1
    const v5, 0x7f0b01dc

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 509
    .local v3, "status":Ljava/lang/CharSequence;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encryption progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const v5, 0x7f080016

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 511
    .local v4, "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 512
    new-array v5, v8, [Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    :cond_2
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 516
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 503
    .end local v3    # "status":Ljava/lang/CharSequence;
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_3
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 822
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 812
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mIgnoreBack:Z

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 301
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 305
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/CryptKeeper;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 315
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 333
    :cond_1
    :goto_0
    return-void

    .line 321
    :cond_2
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    .line 322
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 324
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 325
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 327
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 328
    instance-of v1, v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v1, :cond_1

    .line 329
    check-cast v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    .line 330
    iget-object v0, v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 331
    const-string v0, "CryptKeeper"

    const-string v1, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 402
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 404
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 405
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 409
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 669
    if-eqz p2, :cond_0

    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 671
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 690
    .end local v0    # "password":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 678
    .restart local v0    # "password":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 683
    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 685
    const-string v3, "CryptKeeper"

    const-string v4, "Attempting to send command to decrypt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v3, Lcom/android/settings/CryptKeeper$DecryptTask;

    invoke-direct {v3, p0, v5}, Lcom/android/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v2

    .line 688
    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 801
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 394
    new-instance v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 395
    .local v0, "state":Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 397
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 342
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 343
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    .line 344
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 381
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 382
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 817
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 818
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 807
    const/4 v0, 0x0

    return v0
.end method
