.class public Lcom/sonymobile/settings/preference/ListPreference;
.super Landroid/preference/ListPreference;
.source "ListPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/sonymobile/settings/preference/util/DependOn;


# instance fields
.field private final mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

.field private mObserver:Landroid/database/ContentObserver;

.field private final mValueOfSettingsSecure:Ljava/lang/String;

.field private final mValueOfSettingsSystem:Ljava/lang/String;

.field private final mValueOfSystemProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/settings/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v1, Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-direct {v1, p1, p2, v2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    .line 57
    sget-object v1, Lcom/android/settings/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSystemProperty:Ljava/lang/String;

    .line 59
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    invoke-virtual {p0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/preference/ListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/preference/ListPreference;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonymobile/settings/preference/ListPreference;->updateListPreference()V

    return-void
.end method

.method private persistValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSystemProperty:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSystemProperty:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private updateListPreference()V
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 93
    .local v1, "newValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSystemProperty:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSystemProperty:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 96
    const/4 v1, 0x0

    .line 106
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 108
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 110
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 115
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    return-void

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 101
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public dependOn()Z
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 129
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p0, v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->dependOn(Landroid/content/Context;Landroid/preference/Preference;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public getAfter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getAfter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getBefore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasResumeActions()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSystemProperty:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

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
    .line 184
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 187
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 191
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/preference/ListPreference;->persistValue(Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 152
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0}, Lcom/sonymobile/settings/preference/ListPreference;->updateListPreference()V

    .line 153
    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 154
    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 158
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 159
    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_1

    .line 160
    new-instance v2, Lcom/sonymobile/settings/preference/ListPreference$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/settings/preference/ListPreference$1;-><init>(Lcom/sonymobile/settings/preference/ListPreference;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mObserver:Landroid/database/ContentObserver;

    .line 174
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/settings/preference/ListPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    :cond_2
    return-void

    .line 155
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method
