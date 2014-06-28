.class public Lcom/android/phone/CallForwardEditPreference;
.super Lcom/android/phone/EditPhoneNumberPreference;
.source "CallForwardEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallForwardEditPreference$1;,
        Lcom/android/phone/CallForwardEditPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

.field private mButtonClicked:I

.field private mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

.field private mServiceClass:I

.field private mSummaryOnTemplate:Ljava/lang/CharSequence;

.field phone:Lcom/android/internal/telephony/Phone;

.field reason:I

.field tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "{0}"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallForwardEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v1, Lcom/android/phone/CallForwardEditPreference$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CallForwardEditPreference$MyHandler;-><init>(Lcom/android/phone/CallForwardEditPreference;Lcom/android/phone/CallForwardEditPreference$1;)V

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    .line 50
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 51
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mSummaryOnTemplate:Ljava/lang/CharSequence;

    .line 53
    sget-object v1, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    const v2, 0x7f0d0013

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    .line 57
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mServiceClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallForwardEditPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallForwardEditPreference;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallForwardEditPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallForwardEditPreference;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/phone/CallForwardEditPreference;->updateSummaryText()V

    return-void
.end method

.method private updateSummaryText()V
    .locals 6

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getRawPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "number":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 165
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u202a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u202c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 166
    .local v2, "values":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mSummaryOnTemplate:Ljava/lang/CharSequence;

    sget-object v4, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 170
    .end local v2    # "values":[Ljava/lang/String;
    .local v1, "summaryOn":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 173
    .end local v0    # "number":Ljava/lang/String;
    .end local v1    # "summaryOn":Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 168
    .restart local v0    # "number":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0263

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "summaryOn":Ljava/lang/CharSequence;
    goto :goto_0
.end method


# virtual methods
.method handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 4
    .param p1, "cf"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    const/4 v0, 0x1

    .line 147
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 148
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    .line 149
    const-string v1, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCFResponse done, callForwardInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v0, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 153
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 158
    :goto_1
    return-void

    .line 152
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_1
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 5
    .param p1, "listener"    # Lcom/android/phone/TimeConsumingPreferenceListener;
    .param p2, "skipReading"    # Z

    .prologue
    const/4 v4, 0x0

    .line 71
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 72
    if-nez p2, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 78
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 82
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 87
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    .line 88
    invoke-super {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 94
    iput p2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    .line 95
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 9
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v0, 0x3

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->onDialogClosed(Z)V

    .line 101
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "CallForwardEditPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mButtonClicked="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", positiveResult="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    const/4 v5, -0x2

    if-eq v2, v5, :cond_3

    .line 106
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_4

    :cond_1
    move v1, v0

    .line 109
    .local v1, "action":I
    :goto_0
    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_5

    move v4, v6

    .line 110
    .local v4, "time":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "number":Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_2

    const-string v2, "CallForwardEditPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callForwardInfo="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_2
    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v0, v8, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_3

    const-string v0, "CallForwardEditPreference"

    const-string v2, "no change, do nothing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v1    # "action":I
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "time":I
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v1, v6

    .line 106
    goto :goto_0

    .line 109
    .restart local v1    # "action":I
    :cond_5
    const/16 v4, 0x14

    goto :goto_1

    .line 122
    .restart local v3    # "number":Ljava/lang/String;
    .restart local v4    # "time":I
    :cond_6
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_7

    const-string v0, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reason="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", action="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", number="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_7
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 131
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v5, v8, v1, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 139
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_2
.end method
