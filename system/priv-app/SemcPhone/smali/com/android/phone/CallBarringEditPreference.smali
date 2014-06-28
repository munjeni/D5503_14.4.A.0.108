.class public Lcom/android/phone/CallBarringEditPreference;
.super Lcom/android/phone/EditPinPreference;
.source "CallBarringEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallBarringEditPreference$1;,
        Lcom/android/phone/CallBarringEditPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final Arr_facility:[Ljava/lang/String;


# instance fields
.field facilityId:I

.field isActivated:Z

.field private mButtonClicked:I

.field private mDisableText:Ljava/lang/CharSequence;

.field private mEnableText:Ljava/lang/CharSequence;

.field private mHandler:Lcom/android/phone/CallBarringEditPreference$MyHandler;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

.field mcontext:Landroid/content/Context;

.field private password:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AO"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OI"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "OX"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IR"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallBarringEditPreference;->Arr_facility:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallBarringEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditPinPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-boolean v3, p0, Lcom/android/phone/CallBarringEditPreference;->isActivated:Z

    .line 61
    new-instance v1, Lcom/android/phone/CallBarringEditPreference$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CallBarringEditPreference$MyHandler;-><init>(Lcom/android/phone/CallBarringEditPreference;Lcom/android/phone/CallBarringEditPreference$1;)V

    iput-object v1, p0, Lcom/android/phone/CallBarringEditPreference;->mHandler:Lcom/android/phone/CallBarringEditPreference$MyHandler;

    .line 70
    iput-object p1, p0, Lcom/android/phone/CallBarringEditPreference;->mcontext:Landroid/content/Context;

    .line 72
    sget-object v1, Landroid/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallBarringEditPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallBarringEditPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 76
    const v1, 0x7f0b027f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallBarringEditPreference;->mDisableText:Ljava/lang/CharSequence;

    .line 77
    const v1, 0x7f0b027e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallBarringEditPreference;->mEnableText:Ljava/lang/CharSequence;

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallBarringEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 83
    sget-object v1, Lcom/android/phone/R$styleable;->CallBarringEditPreference:[I

    const v2, 0x7f0d0013

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallBarringEditPreference;->facilityId:I

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/phone/CallBarringEditPreference;->Arr_facility:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method handleCallBarringResult(Z)V
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/android/phone/CallBarringEditPreference;->isActivated:Z

    .line 203
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "CallBarringEditPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCBResponse done, isActivated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    return-void
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 5
    .param p1, "listener"    # Lcom/android/phone/TimeConsumingPreferenceListener;
    .param p2, "skipReading"    # Z

    .prologue
    const/4 v4, 0x0

    .line 94
    iput-object p1, p0, Lcom/android/phone/CallBarringEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 95
    if-nez p2, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/phone/CallBarringEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/phone/CallBarringEditPreference;->Arr_facility:[Ljava/lang/String;

    iget v2, p0, Lcom/android/phone/CallBarringEditPreference;->facilityId:I

    aget-object v1, v1, v2

    const-string v2, ""

    iget-object v3, p0, Lcom/android/phone/CallBarringEditPreference;->mHandler:Lcom/android/phone/CallBarringEditPreference$MyHandler;

    invoke-virtual {v3, v4, v4, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 100
    iget-object v0, p0, Lcom/android/phone/CallBarringEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/phone/CallBarringEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 104
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/android/phone/EditPinPreference;->onBindDialogView(Landroid/view/View;)V

    .line 163
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/phone/CallBarringEditPreference;->mButtonClicked:I

    .line 164
    const v1, 0x1020003

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 166
    .local v0, "editText":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 167
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 168
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 169
    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 171
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 121
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 122
    .local v1, "summaryView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 127
    iget-boolean v3, p0, Lcom/android/phone/CallBarringEditPreference;->isActivated:Z

    if-eqz v3, :cond_2

    .line 128
    iget-object v3, p0, Lcom/android/phone/CallBarringEditPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 133
    .local v0, "sum":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_4

    .line 134
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const/4 v2, 0x0

    .line 140
    .local v2, "vis":I
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 141
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .end local v0    # "sum":Ljava/lang/CharSequence;
    .end local v2    # "vis":I
    :cond_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallBarringEditPreference;->mSummaryOn:Ljava/lang/CharSequence;

    goto :goto_0

    .line 130
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallBarringEditPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "sum":Ljava/lang/CharSequence;
    :goto_2
    goto :goto_0

    .end local v0    # "sum":Ljava/lang/CharSequence;
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallBarringEditPreference;->mSummaryOff:Ljava/lang/CharSequence;

    goto :goto_2

    .line 137
    .restart local v0    # "sum":Ljava/lang/CharSequence;
    :cond_4
    const/16 v2, 0x8

    .restart local v2    # "vis":I
    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 109
    iput p2, p0, Lcom/android/phone/CallBarringEditPreference;->mButtonClicked:I

    .line 110
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 8
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    invoke-super {p0, p1}, Lcom/android/phone/EditPinPreference;->onDialogClosed(Z)V

    .line 176
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "CallBarringEditPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mButtonClicked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallBarringEditPreference;->mButtonClicked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", positiveResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    iget v0, p0, Lcom/android/phone/CallBarringEditPreference;->mButtonClicked:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    .line 180
    iget-boolean v6, p0, Lcom/android/phone/CallBarringEditPreference;->isActivated:Z

    .line 181
    .local v6, "lockState":Z
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringEditPreference;->password:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/android/phone/CallBarringEditPreference;->password:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallBarringEditPreference;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallBarringEditPreference;->mcontext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/CallBarringEditPreference;->mcontext:Landroid/content/Context;

    const v2, 0x7f0b00fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 199
    .end local v6    # "lockState":Z
    :cond_2
    :goto_0
    return-void

    .line 190
    .restart local v6    # "lockState":Z
    :cond_3
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_4

    .line 191
    const-string v0, "CallBarringEditPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed: password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallBarringEditPreference;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallBarringEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/phone/CallBarringEditPreference;->Arr_facility:[Ljava/lang/String;

    iget v2, p0, Lcom/android/phone/CallBarringEditPreference;->facilityId:I

    aget-object v1, v1, v2

    if-nez v6, :cond_5

    move v2, v5

    :goto_1
    iget-object v3, p0, Lcom/android/phone/CallBarringEditPreference;->password:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/CallBarringEditPreference;->mHandler:Lcom/android/phone/CallBarringEditPreference$MyHandler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 195
    iget-object v0, p0, Lcom/android/phone/CallBarringEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/android/phone/CallBarringEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_0

    :cond_5
    move v2, v4

    .line 193
    goto :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    iget-boolean v0, p0, Lcom/android/phone/CallBarringEditPreference;->isActivated:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/phone/CallBarringEditPreference;->mDisableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    :goto_0
    const v0, 0x7f0200ef

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 157
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallBarringEditPreference;->mEnableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/phone/CallBarringEditPreference;->isActivated:Z

    .line 221
    .local v0, "shouldDisable":Z
    return v0
.end method

.method updateSummaryText()V
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 209
    invoke-virtual {p0}, Lcom/android/phone/CallBarringEditPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 210
    return-void
.end method
