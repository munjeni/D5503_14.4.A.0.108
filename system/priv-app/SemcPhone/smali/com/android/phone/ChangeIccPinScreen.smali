.class public Lcom/android/phone/ChangeIccPinScreen;
.super Landroid/app/Activity;
.source "ChangeIccPinScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ChangeIccPinScreen$EntryState;
    }
.end annotation


# instance fields
.field private mBadPinError:Landroid/widget/TextView;

.field private mButton:Landroid/widget/Button;

.field private mChangePin2:Z

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mIccPUKPanel:Landroid/widget/LinearLayout;

.field private mMismatchError:Landroid/widget/TextView;

.field private mNewPin1:Landroid/widget/EditText;

.field private mNewPin2:Landroid/widget/EditText;

.field private mOldPin:Landroid/widget/EditText;

.field private mPUKAlert:Landroid/app/AlertDialog;

.field private mPUKCode:Landroid/widget/EditText;

.field private mPUKSubmit:Landroid/widget/Button;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    new-instance v0, Lcom/android/phone/ChangeIccPinScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ChangeIccPinScreen$1;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    .line 171
    new-instance v0, Lcom/android/phone/ChangeIccPinScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/ChangeIccPinScreen$2;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ChangeIccPinScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/phone/ChangeIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/ChangeIccPinScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->reset()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/ChangeIccPinScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/ChangeIccPinScreen;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/ChangeIccPinScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/ChangeIccPinScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/ChangeIccPinScreen;->validateNewPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/ChangeIccPinScreen;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/ChangeIccPinScreen;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ChangeIccPinScreen;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method private displayPUKAlert()V
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/ChangeIccPinScreen$4;

    invoke-direct {v1, p0}, Lcom/android/phone/ChangeIccPinScreen$4;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private handleResult(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 237
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 238
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "handleResult: success!"

    invoke-direct {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_1

    .line 241
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 245
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->showConfirmation()V

    .line 247
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/ChangeIccPinScreen$3;

    invoke-direct {v2, p0}, Lcom/android/phone/ChangeIccPinScreen$3;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    :cond_2
    :goto_0
    return-void

    .line 253
    :cond_3
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_6

    .line 257
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_4

    const-string v1, "handleResult: pin failed!"

    invoke-direct {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    .line 258
    :cond_4
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 259
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 261
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_2

    .line 262
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_5

    const-string v1, "handleResult: puk requested!"

    invoke-direct {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    .line 263
    :cond_5
    sget-object v1, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 264
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->displayPUKAlert()V

    .line 265
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 269
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_6
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_2

    .line 271
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_7

    const-string v1, "handleResult: puk2 failed!"

    invoke-direct {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    .line 272
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->displayPUKAlert()V

    .line 273
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 274
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_0

    const-string v0, "[ChgPin2]"

    .line 306
    .local v0, "prefix":Ljava/lang/String;
    :goto_0
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void

    .line 305
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_0
    const-string v0, "[ChgPin]"

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 149
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    return-void
.end method

.method private resolveIntent()V
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pin2"

    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    .line 145
    return-void
.end method

.method private showConfirmation()V
    .locals 2

    .prologue
    .line 300
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0b035f

    .line 301
    .local v0, "id":I
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 302
    return-void

    .line 300
    .end local v0    # "id":I
    :cond_0
    const v0, 0x7f0b0354

    goto :goto_0
.end method

.method private validateNewPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "p1"    # Ljava/lang/String;
    .param p3, "p2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 154
    if-nez p2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v1

    .line 158
    :cond_1
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_3

    .line 159
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 164
    .local v0, "len1":I
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 168
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 99
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->resolveIntent()V

    .line 101
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 103
    const v1, 0x7f07001d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    .line 104
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 105
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 106
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v1, 0x7f07001f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    .line 109
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 110
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 111
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v1, 0x7f070020

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    .line 114
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 115
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 116
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v1, 0x7f07001e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    .line 119
    const v1, 0x7f070021

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    .line 121
    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    .line 122
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v1, 0x7f07001c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    .line 126
    const v1, 0x7f070024

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    .line 127
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 128
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 129
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v1, 0x7f070025

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;

    .line 132
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    .line 136
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0b031d

    .line 137
    .local v0, "id":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    sget-object v1, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 140
    return-void

    .line 136
    .end local v0    # "id":I
    :cond_0
    const v0, 0x7f0b0346

    goto :goto_0
.end method
