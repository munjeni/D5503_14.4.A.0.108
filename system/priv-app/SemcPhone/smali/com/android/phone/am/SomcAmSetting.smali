.class public Lcom/android/phone/am/SomcAmSetting;
.super Landroid/preference/PreferenceActivity;
.source "SomcAmSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAlertCheckBox:Landroid/widget/CheckBox;

.field private mCurrentDialogId:I

.field private mPrefActivationTime:Landroid/preference/Preference;

.field private mPrefAmEnabled:Landroid/preference/CheckBoxPreference;

.field private mPrefGreetings:Landroid/preference/PreferenceScreen;

.field private mPrefIncomingMessage:Landroid/preference/PreferenceScreen;

.field private mPrefWhileRoaming:Landroid/preference/CheckBoxPreference;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/am/SomcAmSetting;->mCurrentDialogId:I

    .line 43
    iput-object v1, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefAmEnabled:Landroid/preference/CheckBoxPreference;

    .line 44
    iput-object v1, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefWhileRoaming:Landroid/preference/CheckBoxPreference;

    .line 45
    iput-object v1, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefActivationTime:Landroid/preference/Preference;

    .line 46
    iput-object v1, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefGreetings:Landroid/preference/PreferenceScreen;

    .line 47
    iput-object v1, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefIncomingMessage:Landroid/preference/PreferenceScreen;

    .line 48
    iput-object v1, p0, Lcom/android/phone/am/SomcAmSetting;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/am/SomcAmSetting;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmSetting;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/phone/am/SomcAmSetting;->setAutomaticAnswerTime(I)V

    return-void
.end method

.method private setAutomaticAnswerTime(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/phone/am/SomcAmSetting;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 204
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "key_am_activation_sec"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 205
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmSetting;->setAutomaticAnswerTimerSummary()V

    .line 207
    return-void
.end method

.method private setAutomaticAnswerTimerSummary()V
    .locals 7

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/phone/am/SomcAmSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "key_am_activation_sec"

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, "time":I
    iget-object v1, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefActivationTime:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0148

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method private setGreetingsSummary()V
    .locals 6

    .prologue
    .line 118
    iget-object v3, p0, Lcom/android/phone/am/SomcAmSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "key_am_greetings"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 121
    .local v0, "currentSelectedGreetingID":I
    new-instance v1, Lcom/android/phone/am/SomcAmGreetingDbAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;-><init>(Landroid/content/Context;)V

    .line 123
    .local v1, "dbAdapter":Lcom/android/phone/am/SomcAmGreetingDbAdapter;
    const/4 v2, 0x0

    .line 124
    .local v2, "messageName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->open()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {v1, v0}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->getSelectedGreetingName(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    :cond_0
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->close()V

    .line 128
    iget-object v3, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefGreetings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method private setIncomingTitle()V
    .locals 13

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/am/SomcAmContentHelper;->getSomcAmContentHelperInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmContentHelper;

    move-result-object v1

    .line 134
    .local v1, "contentHelper":Lcom/android/phone/am/SomcAmContentHelper;
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmContentHelper;->getIncomingMessages()[Lcom/android/phone/am/SomcAmMessage;

    move-result-object v6

    .line 135
    .local v6, "messages":[Lcom/android/phone/am/SomcAmMessage;
    const/4 v5, 0x0

    .line 137
    .local v5, "messageCount":I
    if-eqz v6, :cond_1

    .line 138
    move-object v0, v6

    .local v0, "arr$":[Lcom/android/phone/am/SomcAmMessage;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 139
    .local v4, "message":Lcom/android/phone/am/SomcAmMessage;
    iget-boolean v8, v4, Lcom/android/phone/am/SomcAmMessage;->mIsRead:Z

    if-nez v8, :cond_0

    .line 140
    add-int/lit8 v5, v5, 0x1

    .line 138
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "arr$":[Lcom/android/phone/am/SomcAmMessage;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "message":Lcom/android/phone/am/SomcAmMessage;
    :cond_1
    const/4 v7, 0x0

    .line 145
    .local v7, "title":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 146
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b014b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 152
    :goto_1
    iget-object v8, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefIncomingMessage:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    return-void

    .line 149
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b014c

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private showNumberPicker()V
    .locals 8

    .prologue
    .line 220
    new-instance v0, Lcom/android/phone/am/SomcAmNumberPickerDialog;

    iget-object v1, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefActivationTime:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/phone/am/SomcAmSetting$1;

    invoke-direct {v2, p0}, Lcom/android/phone/am/SomcAmSetting$1;-><init>(Lcom/android/phone/am/SomcAmSetting;)V

    iget-object v3, p0, Lcom/android/phone/am/SomcAmSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "key_am_activation_sec"

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b015a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/am/SomcAmNumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/phone/am/SomcAmNumberPickerDialog$OnNumberSetListener;IIILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 234
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 192
    if-ne p1, v2, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefAmEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefActivationTime:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefWhileRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 196
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "somc.answering_machine_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 277
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 278
    packed-switch p2, :pswitch_data_0

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 280
    :pswitch_0
    iget v0, p0, Lcom/android/phone/am/SomcAmSetting;->mCurrentDialogId:I

    if-ne v0, v3, :cond_1

    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 284
    :cond_1
    iget v0, p0, Lcom/android/phone/am/SomcAmSetting;->mCurrentDialogId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 285
    iget-object v0, p0, Lcom/android/phone/am/SomcAmSetting;->mAlertCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/am/SomcAmSetting;->mAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/android/phone/am/SomcAmSetting;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 287
    const-string v1, "auto_answer_dialog_disabled_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 290
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmSetting;->showNumberPicker()V

    goto :goto_0

    .line 291
    :cond_3
    iget v0, p0, Lcom/android/phone/am/SomcAmSetting;->mCurrentDialogId:I

    if-ne v0, v2, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefWhileRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 296
    :pswitch_1
    iget v0, p0, Lcom/android/phone/am/SomcAmSetting;->mCurrentDialogId:I

    if-eq v0, v3, :cond_0

    .line 298
    iget v0, p0, Lcom/android/phone/am/SomcAmSetting;->mCurrentDialogId:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f050013

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 54
    const-string v1, "key_am_enabled"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefAmEnabled:Landroid/preference/CheckBoxPreference;

    .line 55
    iget-object v1, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefAmEnabled:Landroid/preference/CheckBoxPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 57
    const-string v1, "key_am_activation_sec"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefActivationTime:Landroid/preference/Preference;

    .line 59
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.phone_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/am/SomcAmSetting;->mPreferences:Landroid/content/SharedPreferences;

    .line 62
    const-string v1, "key_am_greetings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefGreetings:Landroid/preference/PreferenceScreen;

    .line 64
    const-string v1, "key_am_incoming_msg"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefIncomingMessage:Landroid/preference/PreferenceScreen;

    .line 67
    const-string v1, "key_am_use_while_roaming"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefWhileRoaming:Landroid/preference/CheckBoxPreference;

    .line 69
    iget-object v1, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefWhileRoaming:Landroid/preference/CheckBoxPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 73
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 77
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x1040000

    const v5, 0x104000a

    .line 244
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 245
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b014f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 272
    :goto_0
    return-object v1

    .line 251
    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 252
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0182

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 256
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1090028

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 258
    .local v0, "checkboxView":Landroid/view/View;
    const v2, 0x1020285

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/phone/am/SomcAmSetting;->mAlertCheckBox:Landroid/widget/CheckBox;

    .line 260
    iget-object v2, p0, Lcom/android/phone/am/SomcAmSetting;->mAlertCheckBox:Landroid/widget/CheckBox;

    const v3, 0x7f0b0090

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object v2, p0, Lcom/android/phone/am/SomcAmSetting;->mAlertCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 262
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 264
    .end local v0    # "checkboxView":Landroid/view/View;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    .line 265
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0183

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 270
    .restart local v1    # "dialog":Landroid/app/AlertDialog;
    goto :goto_0

    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_2
    move-object v1, v2

    .line 272
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 101
    iput-object v0, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefAmEnabled:Landroid/preference/CheckBoxPreference;

    .line 102
    iput-object v0, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefActivationTime:Landroid/preference/Preference;

    .line 103
    iput-object v0, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefGreetings:Landroid/preference/PreferenceScreen;

    .line 104
    iput-object v0, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefIncomingMessage:Landroid/preference/PreferenceScreen;

    .line 105
    iput-object v0, p0, Lcom/android/phone/am/SomcAmSetting;->mPreferences:Landroid/content/SharedPreferences;

    .line 106
    iput-object v0, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefWhileRoaming:Landroid/preference/CheckBoxPreference;

    .line 107
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 212
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 213
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 214
    const/4 v1, 0x1

    .line 216
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 158
    iget-object v4, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefAmEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_3

    .line 159
    iget-object v4, p0, Lcom/android/phone/am/SomcAmSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "key_am_greetings"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, "currentSelectedGreetingID":I
    if-ne v0, v6, :cond_1

    .line 162
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 163
    iget-object v2, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefAmEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 187
    .end local v0    # "currentSelectedGreetingID":I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 165
    .restart local v0    # "currentSelectedGreetingID":I
    :cond_1
    iget-object v4, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefActivationTime:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefAmEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 166
    iget-object v4, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefWhileRoaming:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefAmEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 167
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "somc.answering_machine_enabled"

    iget-object v6, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefAmEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 172
    .end local v0    # "currentSelectedGreetingID":I
    :cond_3
    iget-object v2, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefActivationTime:Landroid/preference/Preference;

    if-ne p2, v2, :cond_5

    .line 173
    iget-object v2, p0, Lcom/android/phone/am/SomcAmSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "auto_answer_dialog_disabled_key"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 175
    .local v1, "dialogDisabled":Z
    if-eqz v1, :cond_4

    .line 176
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmSetting;->showNumberPicker()V

    goto :goto_0

    .line 178
    :cond_4
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 180
    .end local v1    # "dialogDisabled":Z
    :cond_5
    iget-object v2, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefWhileRoaming:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefWhileRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 183
    iget-object v2, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefWhileRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 238
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 239
    iput p1, p0, Lcom/android/phone/am/SomcAmSetting;->mCurrentDialogId:I

    .line 240
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    iget-object v2, p0, Lcom/android/phone/am/SomcAmSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "key_am_enabled"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    .local v0, "isEnabled":Z
    iget-object v2, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefAmEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 86
    iget-object v2, p0, Lcom/android/phone/am/SomcAmSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "key_am_use_while_roaming"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 88
    .local v1, "isUseWhileRoaming":Z
    iget-object v2, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefWhileRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 90
    iget-object v2, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefActivationTime:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefAmEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 91
    iget-object v2, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefWhileRoaming:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/am/SomcAmSetting;->mPrefAmEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 93
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmSetting;->setAutomaticAnswerTimerSummary()V

    .line 94
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmSetting;->setGreetingsSummary()V

    .line 95
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmSetting;->setIncomingTitle()V

    .line 96
    return-void
.end method
