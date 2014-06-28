.class public Lcom/android/phone/EnableIccPinScreen;
.super Landroid/app/Activity;
.source "EnableIccPinScreen.java"


# instance fields
.field private mClicked:Landroid/view/View$OnClickListener;

.field private mEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinField:Landroid/widget/EditText;

.field private mPinFieldContainer:Landroid/widget/LinearLayout;

.field private mStatusField:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Lcom/android/phone/EnableIccPinScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EnableIccPinScreen$1;-><init>(Lcom/android/phone/EnableIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/android/phone/EnableIccPinScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/EnableIccPinScreen$3;-><init>(Lcom/android/phone/EnableIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EnableIccPinScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/EnableIccPinScreen;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/EnableIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/EnableIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/EnableIccPinScreen;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EnableIccPinScreen;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/EnableIccPinScreen;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/EnableIccPinScreen;->showStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/EnableIccPinScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/EnableIccPinScreen;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/EnableIccPinScreen;->enableIccPin()V

    return-void
.end method

.method private enableIccPin()V
    .locals 4

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/phone/EnableIccPinScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 107
    .local v0, "callback":Landroid/os/Message;
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "enableIccPin:"

    invoke-direct {p0, v1}, Lcom/android/phone/EnableIccPinScreen;->log(Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/phone/EnableIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/EnableIccPinScreen;->mEnable:Z

    invoke-direct {p0}, Lcom/android/phone/EnableIccPinScreen;->getPin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 109
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_1

    const-string v1, "enableIccPin: please wait..."

    invoke-direct {p0, v1}, Lcom/android/phone/EnableIccPinScreen;->log(Ljava/lang/String;)V

    .line 110
    :cond_1
    return-void
.end method

.method private getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleResult(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 113
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    .line 114
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "handleResult: success!"

    invoke-direct {p0, v0}, Lcom/android/phone/EnableIccPinScreen;->log(Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/phone/EnableIccPinScreen;->mEnable:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0b0351

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EnableIccPinScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 125
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EnableIccPinScreen$2;

    invoke-direct {v1, p0}, Lcom/android/phone/EnableIccPinScreen$2;-><init>(Lcom/android/phone/EnableIccPinScreen;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    return-void

    .line 115
    :cond_2
    const v0, 0x7f0b0352

    goto :goto_0

    .line 117
    :cond_3
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_1

    .line 120
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_4

    const-string v0, "handleResult: failed!"

    invoke-direct {p0, v0}, Lcom/android/phone/EnableIccPinScreen;->log(Ljava/lang/String;)V

    .line 121
    :cond_4
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0353

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EnableIccPinScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 146
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EnableIccPin] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 81
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    .line 82
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 84
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EnableIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    .line 87
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    .line 88
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "statusMsg"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 71
    invoke-direct {p0}, Lcom/android/phone/EnableIccPinScreen;->setupView()V

    .line 73
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EnableIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 74
    iget-object v1, p0, Lcom/android/phone/EnableIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/EnableIccPinScreen;->mEnable:Z

    .line 76
    iget-boolean v1, p0, Lcom/android/phone/EnableIccPinScreen;->mEnable:Z

    if-eqz v1, :cond_1

    const v0, 0x7f0b034f

    .line 77
    .local v0, "id":I
    :goto_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    return-void

    .line 74
    .end local v0    # "id":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 76
    :cond_1
    const v0, 0x7f0b034e

    goto :goto_1
.end method
