.class public Lcom/sonymobile/settings/preference/util/TwoStateUtil;
.super Ljava/lang/Object;
.source "TwoStateUtil.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private final mIsOrderedBroadcast:Z

.field private mObserver:Landroid/database/ContentObserver;

.field private mOrderedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mPreference:Landroid/preference/TwoStatePreference;

.field private final mValueOfSettingsSecure:Ljava/lang/String;

.field private final mValueOfSettingsSystem:Ljava/lang/String;

.field private final mValueOfSystemProperty:Ljava/lang/String;

.field private final mValueOnExtraStatusName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/preference/TwoStatePreference;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "preference"    # Landroid/preference/TwoStatePreference;

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    .line 48
    sget-object v2, Lcom/android/settings/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    .line 51
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    .line 52
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    .line 53
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIsOrderedBroadcast:Z

    .line 55
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "statusName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .end local v1    # "statusName":Ljava/lang/String;
    :goto_0
    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOnExtraStatusName:Ljava/lang/String;

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    invoke-virtual {p4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    return-void

    .line 56
    .restart local v1    # "statusName":Ljava/lang/String;
    :cond_0
    const-string v1, "android.intent.extra.RETURN_RESULT"

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOnExtraStatusName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)Landroid/preference/TwoStatePreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->updateCheckBox()V

    return-void
.end method

.method private createOrderedBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;-><init>(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)V

    return-object v0
.end method

.method private onChecked(Z)V
    .locals 5
    .param p1, "newValue"    # Z

    .prologue
    .line 96
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    .line 98
    .local v1, "newValueInt":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 99
    if-eqz p1, :cond_4

    const-string v2, "1"

    .line 100
    .local v2, "newValueString":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .end local v2    # "newValueString":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 107
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    :cond_2
    return-void

    .line 97
    .end local v1    # "newValueInt":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 99
    .restart local v1    # "newValueInt":I
    :cond_4
    const-string v2, "0"

    goto :goto_1
.end method

.method private updateCheckBox()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 67
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    .line 70
    .local v1, "newValue":Z
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 71
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 83
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 89
    return-void

    .line 72
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v1, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 76
    .local v2, "value":I
    if-lez v2, :cond_3

    move v1, v4

    .line 77
    :goto_2
    goto :goto_0

    .end local v2    # "value":I
    :cond_2
    move v3, v5

    .line 73
    goto :goto_1

    .restart local v2    # "value":I
    :cond_3
    move v1, v5

    .line 76
    goto :goto_2

    .line 77
    .end local v2    # "value":I
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v1, :cond_5

    move v3, v4

    :goto_3
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 81
    .restart local v2    # "value":I
    if-lez v2, :cond_6

    move v1, v4

    :goto_4
    goto :goto_0

    .end local v2    # "value":I
    :cond_5
    move v3, v5

    .line 78
    goto :goto_3

    .restart local v2    # "value":I
    :cond_6
    move v1, v5

    .line 81
    goto :goto_4
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hasResumeActions()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 154
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 215
    const/4 v8, 0x1

    .local v8, "doUpdate":Z
    move-object v9, p2

    .line 216
    check-cast v9, Ljava/lang/Boolean;

    .line 217
    .local v9, "newValueBool":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 219
    const/4 v8, 0x0

    .line 220
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 221
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v10, 0x1

    .line 222
    .local v10, "newValueInt":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOnExtraStatusName:Ljava/lang/String;

    invoke-virtual {v1, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    iget-boolean v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIsOrderedBroadcast:Z

    if-eqz v1, :cond_2

    .line 225
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mOrderedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->createOrderedBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mOrderedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    :cond_0
    new-instance v7, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v7, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 231
    .local v7, "initialExtras":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOnExtraStatusName:Ljava/lang/String;

    invoke-virtual {v7, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mOrderedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    iget-object v4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    move-object v4, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 242
    .end local v0    # "context":Landroid/content/Context;
    .end local v7    # "initialExtras":Landroid/os/Bundle;
    .end local v10    # "newValueInt":I
    :goto_1
    return v8

    .line 221
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 236
    .restart local v10    # "newValueInt":I
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 240
    .end local v0    # "context":Landroid/content/Context;
    .end local v10    # "newValueInt":I
    :cond_3
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->onChecked(Z)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 160
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 161
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 163
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->updateCheckBox()V

    .line 164
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 167
    :cond_0
    if-eqz v1, :cond_2

    .line 168
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_1

    .line 169
    new-instance v2, Lcom/sonymobile/settings/preference/util/TwoStateUtil$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/settings/preference/util/TwoStateUtil$2;-><init>(Lcom/sonymobile/settings/preference/util/TwoStateUtil;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    .line 183
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 190
    :cond_2
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    .line 206
    return-void
.end method
