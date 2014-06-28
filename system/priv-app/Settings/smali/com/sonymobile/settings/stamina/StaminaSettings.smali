.class public Lcom/sonymobile/settings/stamina/StaminaSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StaminaSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/StaminaSettings$PowersaveEnableObserver;,
        Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;
    }
.end annotation


# static fields
.field private static final CONTENT_URI_LBW_SETTINGS_STATE:Landroid/net/Uri;

.field private static final LBW_DISABLE_INTENT:Landroid/content/Intent;

.field private static final LBW_ENABLE_INTENT:Landroid/content/Intent;


# instance fields
.field private mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

.field private mLBWEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mLBWPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

.field private mPowerSavePreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

.field private mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$PowersaveEnableObserver;

.field private mPowersaverEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mQueueBgData:Landroid/preference/CheckBoxPreference;

.field private mQueueBgDataListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mStaminaSwitchPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

.field private mXssmEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mXssmEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "content://com.sonyericsson.android.locationbasedwifi.settingsprovider/lbw_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaSettings;->CONTENT_URI_LBW_SETTINGS_STATE:Landroid/net/Uri;

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.locationbasedwifi.ACTION_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaSettings;->LBW_ENABLE_INTENT:Landroid/content/Intent;

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.locationbasedwifi.ACTION_DISABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaSettings;->LBW_DISABLE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$1;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mXssmEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 65
    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaSettings$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$2;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowersaverEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 72
    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaSettings$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$3;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mLBWEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 80
    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaSettings$4;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$4;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgDataListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/StaminaSettings;)Lcom/sonymobile/settings/stamina/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mLBWPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaSettings;->LBW_ENABLE_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaSettings;->LBW_DISABLE_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/settings/stamina/StaminaSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/settings/stamina/StaminaSettings;)Lcom/sonymobile/settings/stamina/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaSwitchPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/settings/stamina/StaminaSettings;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mXssmEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/settings/stamina/StaminaSettings;)Lcom/sonymobile/settings/stamina/EstimationPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/settings/stamina/StaminaSettings;)Lcom/sonymobile/settings/stamina/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowerSavePreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    return-object v0
.end method

.method private initLBWifiHeader(Lcom/sonymobile/settings/stamina/SwitchPreference;)V
    .locals 8
    .param p1, "preference"    # Lcom/sonymobile/settings/stamina/SwitchPreference;

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaSettings;->CONTENT_URI_LBW_SETTINGS_STATE:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 167
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 169
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "lbw_enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 171
    .local v7, "isEnabled":I
    if-eqz v7, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setChecked(Z)V

    .line 173
    .end local v7    # "isEnabled":I
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mLBWEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 181
    :goto_1
    return-void

    .line 171
    .restart local v7    # "isEnabled":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 175
    .end local v7    # "isEnabled":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 179
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mLBWPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private isQueueBgDataUiEnabled()Z
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    .line 185
    .local v0, "policyManager":Landroid/net/NetworkPolicyManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 161
    const v0, 0x7f0b0871

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v1, 0x7f05004b

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 95
    const-string v1, "stamina"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/SwitchPreference;

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaSwitchPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    .line 96
    const-string v1, "estimation"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/EstimationPreference;

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    .line 97
    const-string v1, "lbw"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/SwitchPreference;

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mLBWPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    .line 98
    const-string v1, "powersave"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/SwitchPreference;

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowerSavePreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    .line 100
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isQueuingAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "queue_bg_data"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/CheckBoxPreference;

    .line 102
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->isQueueBgDataUiEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 108
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 109
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mXssmEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;

    .line 110
    new-instance v1, Lcom/sonymobile/settings/stamina/StaminaSettings$PowersaveEnableObserver;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/settings/stamina/StaminaSettings$PowersaveEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$PowersaveEnableObserver;

    .line 111
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mXssmEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;

    invoke-static {v1, v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerXssmEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 112
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$PowersaveEnableObserver;

    invoke-static {v1, v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerPowersaveEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 114
    return-void

    .line 104
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    const-string v1, "queue_bg_data"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/CheckBoxPreference;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mXssmEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 154
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$PowersaveEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unRegisterPowersaveEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 156
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 157
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaSwitchPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 143
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowerSavePreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 144
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mLBWPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    :cond_0
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onPause()V

    .line 149
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaSwitchPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowerSavePreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isPowerSaverEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setChecked(Z)V

    .line 123
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->isQueueBgDataUiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgDataListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isQueuingEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 127
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 135
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaSwitchPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mXssmEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowerSavePreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowersaverEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mLBWPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->initLBWifiHeader(Lcom/sonymobile/settings/stamina/SwitchPreference;)V

    .line 138
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 131
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
