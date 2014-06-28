.class public Lcom/android/settings/SecuritySettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

.field private mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 31

    .prologue
    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 144
    .local v17, "root":Landroid/preference/PreferenceScreen;
    if-eqz v17, :cond_0

    .line 145
    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 147
    :cond_0
    const v25, 0x7f050025

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 151
    const/16 v16, 0x0

    .line 152
    .local v16, "resid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v25

    if-nez v25, :cond_8

    .line 154
    const-string v25, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    .line 155
    .local v10, "mUm":Landroid/os/UserManager;
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v24

    .line 156
    .local v24, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    const/16 v19, 0x1

    .line 158
    .local v19, "singleUser":Z
    :goto_0
    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 159
    const v16, 0x7f050029

    .line 181
    .end local v10    # "mUm":Landroid/os/UserManager;
    .end local v19    # "singleUser":Z
    .end local v24    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 185
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    if-nez v25, :cond_a

    const/16 v25, 0x1

    :goto_2
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    .line 187
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 189
    const-string v25, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 190
    .local v13, "ownerInfoPref":Landroid/preference/Preference;
    if-eqz v13, :cond_1

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v25

    if-eqz v25, :cond_b

    .line 192
    const v25, 0x7f0b01c9

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 199
    .end local v13    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v25

    packed-switch v25, :pswitch_data_0

    .line 219
    :cond_2
    :goto_4
    :pswitch_0
    const-string v25, "lock_after_timeout"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 221
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->setupLockAfterPreference()V

    .line 222
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 226
    :cond_3
    const-string v25, "biometric_weak_liveliness"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 230
    const-string v25, "visiblepattern"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 233
    const-string v25, "power_button_instantly_locks"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 237
    const v25, 0x7f050026

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v25

    const/high16 v26, 0x10000

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_4

    .line 240
    const-string v25, "security_category"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceGroup;

    .line 242
    .local v18, "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 243
    const-string v25, "visiblepattern"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    .end local v18    # "securityCategory":Landroid/preference/PreferenceGroup;
    :cond_4
    const v25, 0x7f05002a

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 250
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v25

    if-eqz v25, :cond_16

    .line 251
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v21

    .line 252
    .local v21, "tm":Landroid/telephony/MSimTelephonyManager;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v12

    .line 253
    .local v12, "numPhones":I
    const/4 v5, 0x1

    .line 254
    .local v5, "disableLock":Z
    const/4 v15, 0x1

    .line 255
    .local v15, "removeLock":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v12, :cond_d

    .line 257
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 259
    const/4 v15, 0x0

    .line 260
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v25

    if-eqz v25, :cond_5

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v25

    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    .line 263
    const/4 v5, 0x0

    .line 255
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 156
    .end local v5    # "disableLock":Z
    .end local v7    # "i":I
    .end local v12    # "numPhones":I
    .end local v15    # "removeLock":Z
    .end local v21    # "tm":Landroid/telephony/MSimTelephonyManager;
    .restart local v10    # "mUm":Landroid/os/UserManager;
    .restart local v24    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 161
    .restart local v19    # "singleUser":Z
    :cond_7
    const v16, 0x7f050027

    goto/16 :goto_1

    .line 163
    .end local v10    # "mUm":Landroid/os/UserManager;
    .end local v19    # "singleUser":Z
    .end local v24    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v25

    if-eqz v25, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 165
    const v16, 0x7f050026

    goto/16 :goto_1

    .line 167
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v25

    sparse-switch v25, :sswitch_data_0

    goto/16 :goto_1

    .line 169
    :sswitch_0
    const v16, 0x7f05002c

    .line 170
    goto/16 :goto_1

    .line 172
    :sswitch_1
    const v16, 0x7f05002e

    .line 173
    goto/16 :goto_1

    .line 177
    :sswitch_2
    const v16, 0x7f05002b

    goto/16 :goto_1

    .line 185
    :cond_a
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 194
    .restart local v13    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_b
    const v25, 0x7f0b01c7

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_3

    .line 204
    .end local v13    # "ownerInfoPref":Landroid/preference/Preference;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/admin/DevicePolicyManager;->getSdcardEncryptionStatus()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    .line 206
    const v25, 0x7f05002f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    .line 208
    :cond_c
    const v25, 0x7f050028

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    .line 213
    :pswitch_2
    const v25, 0x7f05002f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    .line 267
    .restart local v5    # "disableLock":Z
    .restart local v7    # "i":I
    .restart local v12    # "numPhones":I
    .restart local v15    # "removeLock":Z
    .restart local v21    # "tm":Landroid/telephony/MSimTelephonyManager;
    :cond_d
    if-eqz v15, :cond_15

    .line 268
    const-string v25, "sim_lock"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 291
    .end local v5    # "disableLock":Z
    .end local v7    # "i":I
    .end local v12    # "numPhones":I
    .end local v15    # "removeLock":Z
    .end local v21    # "tm":Landroid/telephony/MSimTelephonyManager;
    :cond_e
    :goto_6
    const-string v25, "keyguard_enable_widgets"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10

    .line 293
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v25

    if-nez v25, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 296
    :cond_f
    const-string v25, "security_category"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceGroup;

    .line 298
    .restart local v18    # "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v18, :cond_10

    .line 299
    const-string v25, "keyguard_enable_widgets"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 300
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    .line 316
    .end local v18    # "securityCategory":Landroid/preference/PreferenceGroup;
    :cond_10
    :goto_7
    const-string v25, "show_password"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 317
    const-string v25, "reset_credentials"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 319
    const-string v25, "sim_lock"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    if-eqz v25, :cond_11

    .line 321
    const-string v25, "sim_lock_settings"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 323
    .local v8, "iccLock":Landroid/preference/Preference;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 324
    .local v9, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v25

    if-eqz v25, :cond_1e

    .line 325
    const-string v25, "com.android.settings"

    const-string v26, "com.android.settings.SelectSubscription"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v25, "PACKAGE"

    const-string v26, "com.android.settings"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v25, "TARGET_CLASS"

    const-string v26, "com.android.settings.IccLockSettings"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    :goto_8
    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 337
    .end local v8    # "iccLock":Landroid/preference/Preference;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string v26, "user"

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/UserManager;

    .line 338
    .local v23, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 339
    const-string v25, "no_config_credentials"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_20

    .line 340
    const-string v25, "credential_storage_type"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 342
    .local v3, "credentialStorageType":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v25

    if-eqz v25, :cond_1f

    const v20, 0x7f0b06d6

    .line 345
    .local v20, "storageSummaryRes":I
    :goto_9
    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 352
    .end local v3    # "credentialStorageType":Landroid/preference/Preference;
    .end local v20    # "storageSummaryRes":I
    :goto_a
    const-string v25, "device_admin_category"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 354
    .local v4, "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    const-string v25, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 362
    const-string v25, "toggle_verify_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    .line 363
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v25, v0

    if-eqz v25, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->showVerifierSetting()Z

    move-result v25

    if-eqz v25, :cond_22

    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isVerifierInstalled()Z

    move-result v25

    if-eqz v25, :cond_21

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isVerifyAppsEnabled()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 378
    :goto_b
    const-string v25, "manage_notification_access"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/settings/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v22

    .line 381
    .local v22, "total":I
    if-nez v22, :cond_24

    .line 382
    if-eqz v4, :cond_12

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 400
    .end local v22    # "total":I
    :cond_12
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v25, v0

    if-eqz v25, :cond_13

    invoke-virtual/range {v17 .. v17}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/wifi/WapiUtils;->isWapiEnabled(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_13

    .line 401
    const-string v25, "credentials_management"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceGroup;

    .line 402
    .local v14, "p":Landroid/preference/PreferenceGroup;
    const-string v25, "install_wapi_cert"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 405
    .end local v14    # "p":Landroid/preference/PreferenceGroup;
    :cond_13
    const-string v25, "restrictions_pin_set"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->shouldBePinProtected(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 409
    const-string v25, "credentials_install"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 413
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->customizePreferences()V

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->customizeOnResume()V

    .line 416
    return-object v17

    .line 270
    .end local v4    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    .end local v23    # "um":Landroid/os/UserManager;
    .restart local v5    # "disableLock":Z
    .restart local v7    # "i":I
    .restart local v12    # "numPhones":I
    .restart local v15    # "removeLock":Z
    .restart local v21    # "tm":Landroid/telephony/MSimTelephonyManager;
    :cond_15
    if-eqz v5, :cond_e

    .line 271
    const-string v25, "sim_lock"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 276
    .end local v5    # "disableLock":Z
    .end local v7    # "i":I
    .end local v12    # "numPhones":I
    .end local v15    # "removeLock":Z
    .end local v21    # "tm":Landroid/telephony/MSimTelephonyManager;
    :cond_16
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    .line 277
    .local v21, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v25, v0

    if-eqz v25, :cond_17

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v25

    if-nez v25, :cond_18

    .line 278
    :cond_17
    const-string v25, "sim_lock"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 281
    :cond_18
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_19

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v25

    if-nez v25, :cond_e

    .line 285
    :cond_19
    const-string v25, "sim_lock"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 303
    .end local v21    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v25

    and-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_1b

    const/4 v6, 0x1

    .line 305
    .local v6, "disabled":Z
    :goto_d
    if-eqz v6, :cond_1c

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0b01c3

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 311
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    move-object/from16 v26, v0

    if-nez v6, :cond_1d

    const/16 v25, 0x1

    :goto_f
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_7

    .line 303
    .end local v6    # "disabled":Z
    :cond_1b
    const/4 v6, 0x0

    goto :goto_d

    .line 309
    .restart local v6    # "disabled":Z
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 311
    :cond_1d
    const/16 v25, 0x0

    goto :goto_f

    .line 331
    .end local v6    # "disabled":Z
    .restart local v8    # "iccLock":Landroid/preference/Preference;
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_1e
    const-string v25, "com.android.settings"

    const-string v26, "com.android.settings.IccLockSettings"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_8

    .line 342
    .end local v8    # "iccLock":Landroid/preference/Preference;
    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v3    # "credentialStorageType":Landroid/preference/Preference;
    .restart local v23    # "um":Landroid/os/UserManager;
    :cond_1f
    const v20, 0x7f0b06d7

    goto/16 :goto_9

    .line 348
    .end local v3    # "credentialStorageType":Landroid/preference/Preference;
    :cond_20
    const-string v25, "credentials_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 367
    .restart local v4    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_b

    .line 371
    :cond_22
    if-eqz v4, :cond_23

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_b

    .line 374
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_b

    .line 386
    .restart local v22    # "total":I
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getNumEnabledNotificationListeners()I

    move-result v11

    .line 387
    .local v11, "n":I
    if-nez v11, :cond_25

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0b0219

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 391
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0e0009

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v11, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 167
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 10
    .param p1, "maxTimeout"    # J

    .prologue
    .line 524
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 525
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 526
    .local v7, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 529
    aget-object v8, v7, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 530
    .local v4, "timeout":J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 531
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    .end local v4    # "timeout":J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 536
    :cond_2
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 538
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 540
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 541
    .local v6, "userPreference":I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 542
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 549
    .end local v6    # "userPreference":I
    :cond_3
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 550
    return-void

    .line 549
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private getNumEnabledNotificationListeners()I
    .locals 4

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_notification_listeners"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "flat":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 424
    :goto_0
    return v2

    .line 423
    :cond_1
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "components":[Ljava/lang/String;
    array-length v2, v0

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 660
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private isVerifierInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 449
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .local v2, "verification":Landroid/content/Intent;
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 452
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 453
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isVerifyAppsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "package_verifier_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 433
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 434
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    :goto_0
    return-void

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 494
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 495
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 496
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 497
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 499
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 503
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 505
    :cond_0
    return-void

    .end local v0    # "adminTimeout":J
    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 496
    goto :goto_0
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 13

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 511
    .local v1, "currentTimeout":J
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 512
    .local v3, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 513
    .local v7, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 514
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_1

    .line 515
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 516
    .local v5, "timeout":J
    cmp-long v8, v1, v5

    if-ltz v8, :cond_0

    .line 517
    move v0, v4

    .line 514
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 520
    .end local v5    # "timeout":J
    :cond_1
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v9, 0x7f0b01bf

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v3, v0

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 521
    return-void
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 463
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0423

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 470
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 702
    const v0, 0x7f0b086e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 668
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 669
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->startBiometricWeakImprove()V

    .line 683
    :goto_0
    return-void

    .line 673
    :cond_0
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 675
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 676
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 682
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 474
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 475
    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 476
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 480
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 136
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    .line 137
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 139
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 140
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 484
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 485
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 488
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 687
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 688
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 690
    .local v1, "timeout":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 697
    .end local v1    # "timeout":I
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 692
    .restart local v1    # "timeout":I
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "SecuritySettings"

    const-string v3, "could not persist lockAfter timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 590
    invoke-virtual {p0, p2}, Lcom/android/settings/RestrictedSettingsFragment;->ensurePinRestrictedPreference(Landroid/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 656
    :cond_0
    :goto_0
    return v4

    .line 593
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 596
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v5, "unlock_set_or_change"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 597
    const-string v3, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v5, 0x7b

    invoke-virtual {p0, p0, v3, v5, v6}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 599
    :cond_2
    const-string v5, "biometric_weak_improve_matching"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 600
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 602
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v3, 0x7c

    invoke-virtual {v0, v3, v6, v6}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 610
    .end local v0    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_3
    const-string v5, "biometric_weak_liveliness"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 611
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 612
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 617
    :cond_4
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 618
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 620
    .restart local v0    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v5, 0x7d

    invoke-virtual {v0, v5, v6, v6}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 626
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 627
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 630
    .end local v0    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_5
    const-string v5, "lockenabled"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 631
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 632
    :cond_6
    const-string v5, "visiblepattern"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 633
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto/16 :goto_0

    .line 634
    :cond_7
    const-string v5, "power_button_instantly_locks"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 635
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_0

    .line 636
    :cond_8
    const-string v5, "keyguard_enable_widgets"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 637
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setWidgetsEnabled(Z)V

    goto/16 :goto_0

    .line 638
    :cond_9
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_b

    .line 639
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "show_password"

    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_a

    move v3, v4

    :cond_a
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 641
    :cond_b
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_d

    .line 642
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 643
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 644
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->warnAppInstallation()V

    goto/16 :goto_0

    .line 646
    :cond_c
    invoke-direct {p0, v3}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_0

    .line 648
    :cond_d
    const-string v5, "toggle_verify_applications"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 649
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "package_verifier_enable"

    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_e

    move v3, v4

    :cond_e
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 653
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 554
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 558
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 560
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 561
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 562
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 565
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 566
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 568
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 569
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 572
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 573
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "show_password"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 577
    :cond_3
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v2, :cond_6

    .line 578
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    const-string v5, ""

    const/16 v6, 0x3f2

    invoke-virtual {v2, v5, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "wifiCerts":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v5}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_5

    array-length v5, v1

    if-lez v5, :cond_5

    :cond_4
    move v4, v3

    :cond_5
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 583
    .end local v1    # "wifiCerts":[Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_7

    .line 584
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 586
    :cond_7
    return-void

    :cond_8
    move v2, v4

    .line 573
    goto :goto_0
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 706
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 707
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 709
    return-void
.end method
