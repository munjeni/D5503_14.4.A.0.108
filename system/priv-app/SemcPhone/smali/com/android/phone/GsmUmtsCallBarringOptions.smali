.class public Lcom/android/phone/GsmUmtsCallBarringOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsCallBarringOptions.java"

# interfaces
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# instance fields
.field private mButtonBAIC:Lcom/android/phone/CallBarringEditPreference;

.field private mButtonBAICr:Lcom/android/phone/CallBarringEditPreference;

.field private mButtonBAOC:Lcom/android/phone/CallBarringEditPreference;

.field private mButtonBAOIC:Lcom/android/phone/CallBarringEditPreference;

.field private mButtonBAOICxH:Lcom/android/phone/CallBarringEditPreference;

.field private mButtonChangePW:Lcom/android/phone/EditPinPreference;

.field private mButtonDeaAll:Lcom/android/phone/EditPinPreference;

.field private mFirstResume:Z

.field private mIcicle:Landroid/os/Bundle;

.field private mInitIndex:I

.field private mNewPassword:Ljava/lang/String;

.field private mOldPassword:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallBarringEditPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mPwChangeState:I

.field private myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mInitIndex:I

    .line 190
    new-instance v0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsCallBarringOptions$1;-><init>(Lcom/android/phone/GsmUmtsCallBarringOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method private DeactivateAllBarring(Z)V
    .locals 6
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v2, 0x0

    .line 110
    if-nez p1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "password":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 119
    const v0, 0x7f0b00fd

    invoke-direct {p0, v0}, Lcom/android/phone/GsmUmtsCallBarringOptions;->displayMessage(I)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->myHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 125
    .local v5, "onComplete":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "AB"

    move v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 127
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/GsmUmtsCallBarringOptions;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/GsmUmtsCallBarringOptions;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/GsmUmtsCallBarringOptions;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/GsmUmtsCallBarringOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/GsmUmtsCallBarringOptions;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsCallBarringOptions;->resetPwChangeState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/GsmUmtsCallBarringOptions;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/GsmUmtsCallBarringOptions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/GsmUmtsCallBarringOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->resetCallBarringPrefState(Z)V

    return-void
.end method

.method private final displayMessage(I)V
    .locals 2
    .param p1, "strId"    # I

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    return-void
.end method

.method private final displayPwChangeDialog()V
    .locals 2

    .prologue
    .line 247
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->displayPwChangeDialog(IZ)V

    .line 248
    return-void
.end method

.method private final displayPwChangeDialog(IZ)V
    .locals 4
    .param p1, "strId"    # I
    .param p2, "shouldDisplay"    # Z

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "msgId":I
    iget v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPwChangeState:I

    packed-switch v1, :pswitch_data_0

    .line 265
    :goto_0
    if-eqz p1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 272
    :goto_1
    if-eqz p2, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    .line 275
    :cond_0
    return-void

    .line 254
    :pswitch_0
    const v0, 0x7f0b0101

    .line 255
    goto :goto_0

    .line 257
    :pswitch_1
    const v0, 0x7f0b0102

    .line 258
    goto :goto_0

    .line 260
    :pswitch_2
    const v0, 0x7f0b0103

    goto :goto_0

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v0}, Landroid/preference/DialogPreference;->setDialogMessage(I)V

    goto :goto_1

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final resetCallBarringPrefState(Z)V
    .locals 3
    .param p1, "bEnable"    # Z

    .prologue
    .line 291
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallBarringEditPreference;

    .line 292
    .local v1, "pref":Lcom/android/phone/CallBarringEditPreference;
    iput-boolean p1, v1, Lcom/android/phone/CallBarringEditPreference;->isActivated:Z

    .line 293
    invoke-virtual {v1}, Lcom/android/phone/CallBarringEditPreference;->updateSummaryText()V

    goto :goto_0

    .line 295
    .end local v1    # "pref":Lcom/android/phone/CallBarringEditPreference;
    :cond_0
    return-void
.end method

.method private final resetPwChangeState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 281
    iput v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPwChangeState:I

    .line 282
    invoke-direct {p0, v0, v0}, Lcom/android/phone/GsmUmtsCallBarringOptions;->displayPwChangeDialog(IZ)V

    .line 283
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mOldPassword:Ljava/lang/String;

    .line 284
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mNewPassword:Ljava/lang/String;

    .line 285
    return-void
.end method

.method private updatePWChangeState(Z)V
    .locals 5
    .param p1, "positiveResult"    # Z

    .prologue
    const v4, 0x7f0b00fd

    const/4 v3, 0x1

    .line 134
    if-nez p1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsCallBarringOptions;->resetPwChangeState()V

    .line 185
    :goto_0
    return-void

    .line 146
    :cond_0
    iget v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPwChangeState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 148
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mOldPassword:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mOldPassword:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->validatePassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    iput v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPwChangeState:I

    .line 152
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsCallBarringOptions;->displayPwChangeDialog()V

    goto :goto_0

    .line 154
    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/android/phone/GsmUmtsCallBarringOptions;->displayPwChangeDialog(IZ)V

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mNewPassword:Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mNewPassword:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->validatePassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPwChangeState:I

    .line 162
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsCallBarringOptions;->displayPwChangeDialog()V

    goto :goto_0

    .line 164
    :cond_2
    invoke-direct {p0, v4, v3}, Lcom/android/phone/GsmUmtsCallBarringOptions;->displayPwChangeDialog(IZ)V

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mNewPassword:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 171
    iput v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPwChangeState:I

    .line 172
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 173
    const v1, 0x7f0b00fb

    invoke-direct {p0, v1, v3}, Lcom/android/phone/GsmUmtsCallBarringOptions;->displayPwChangeDialog(IZ)V

    goto :goto_0

    .line 177
    :cond_3
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->myHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 179
    .local v0, "onComplete":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v2, "AB"

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mOldPassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mNewPassword:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/telephony/Phone;->changeCallBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 181
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onStarted(Landroid/preference/Preference;Z)V

    goto/16 :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private validatePassword(Ljava/lang/String;)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 304
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 305
    :cond_0
    const/4 v0, 0x0

    .line 307
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 313
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 314
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    .line 315
    const-string v2, "GsmUmtsCallBarringOptions"

    const-string v3, "onCreate, reading callbarring_options.xml file"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 318
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 319
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_1

    .line 320
    const-string v2, "GsmUmtsCallBarringOptions"

    const-string v3, "onCreate, reading callbarring_options.xml file finished!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 324
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v2, "button_baoc_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallBarringEditPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAOC:Lcom/android/phone/CallBarringEditPreference;

    .line 325
    const-string v2, "button_baoic_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallBarringEditPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAOIC:Lcom/android/phone/CallBarringEditPreference;

    .line 326
    const-string v2, "button_baoicxh_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallBarringEditPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAOICxH:Lcom/android/phone/CallBarringEditPreference;

    .line 327
    const-string v2, "button_baic_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallBarringEditPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAIC:Lcom/android/phone/CallBarringEditPreference;

    .line 328
    const-string v2, "button_baicr_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallBarringEditPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAICr:Lcom/android/phone/CallBarringEditPreference;

    .line 329
    const-string v2, "button_ba_all_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    .line 330
    const-string v2, "button_change_pw_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    .line 333
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAOC:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 334
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAOIC:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 335
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAOICxH:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 336
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAIC:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 337
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAICr:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 338
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 339
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 341
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAOC:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAOIC:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAOICxH:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAIC:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonBAICr:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 349
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 350
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 359
    :goto_0
    iput-boolean v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mFirstResume:Z

    .line 360
    iput-object p1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mIcicle:Landroid/os/Bundle;

    .line 362
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 363
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 365
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 367
    :cond_2
    return-void

    .line 352
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_3
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 353
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "reading"    # Z

    .prologue
    .line 417
    iget v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mInitIndex:I

    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mInitIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mInitIndex:I

    .line 419
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mInitIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallBarringEditPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/phone/CallBarringEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 421
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 422
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 426
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 427
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 428
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 429
    const/4 v1, 0x1

    .line 431
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
    .line 92
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_1

    .line 93
    invoke-direct {p0, p2}, Lcom/android/phone/GsmUmtsCallBarringOptions;->updatePWChangeState(Z)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_0

    .line 95
    invoke-direct {p0, p2}, Lcom/android/phone/GsmUmtsCallBarringOptions;->DeactivateAllBarring(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 371
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 373
    iget-boolean v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mFirstResume:Z

    if-eqz v3, :cond_1

    .line 374
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mIcicle:Landroid/os/Bundle;

    if-nez v3, :cond_2

    .line 375
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_0

    .line 376
    const-string v3, "GsmUmtsCallBarringOptions"

    const-string v4, "start to init "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsCallBarringOptions;->resetPwChangeState()V

    .line 378
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mInitIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v3, p0, v6}, Lcom/android/phone/CallBarringEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 395
    :goto_0
    iput-boolean v6, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mFirstResume:Z

    .line 396
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mIcicle:Landroid/os/Bundle;

    .line 398
    :cond_1
    return-void

    .line 380
    :cond_2
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_3

    .line 381
    const-string v3, "GsmUmtsCallBarringOptions"

    const-string v4, "restore stored states"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_3
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mInitIndex:I

    .line 384
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallBarringEditPreference;

    .line 385
    .local v2, "pref":Lcom/android/phone/CallBarringEditPreference;
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 386
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "toggle"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/phone/CallBarringEditPreference;->handleCallBarringResult(Z)V

    .line 387
    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CallBarringEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_1

    .line 389
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "pref":Lcom/android/phone/CallBarringEditPreference;
    :cond_4
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mIcicle:Landroid/os/Bundle;

    const-string v4, "pin_change_state_key"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPwChangeState:I

    .line 390
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mIcicle:Landroid/os/Bundle;

    const-string v4, "OLD_PW_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mOldPassword:Ljava/lang/String;

    .line 391
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mIcicle:Landroid/os/Bundle;

    const-string v4, "NEW_PW_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mNewPassword:Ljava/lang/String;

    .line 392
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mIcicle:Landroid/os/Bundle;

    const-string v5, "dialog_message_key"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mIcicle:Landroid/os/Bundle;

    const-string v5, "DIALOG_PW_ENTRY_KEY"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 402
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 404
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallBarringEditPreference;

    .line 405
    .local v2, "pref":Lcom/android/phone/CallBarringEditPreference;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "toggle"

    iget-boolean v4, v2, Lcom/android/phone/CallBarringEditPreference;->isActivated:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 407
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 409
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "pref":Lcom/android/phone/CallBarringEditPreference;
    :cond_0
    const-string v3, "pin_change_state_key"

    iget v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mPwChangeState:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 410
    const-string v3, "OLD_PW_KEY"

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mOldPassword:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v3, "NEW_PW_KEY"

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mNewPassword:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v3, "dialog_message_key"

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v4}, Landroid/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v3, "DIALOG_PW_ENTRY_KEY"

    iget-object v4, p0, Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return-void
.end method
