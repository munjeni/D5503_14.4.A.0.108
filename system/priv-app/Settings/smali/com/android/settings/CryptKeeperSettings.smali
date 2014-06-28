.class public Lcom/android/settings/CryptKeeperSettings;
.super Landroid/app/Fragment;
.source "CryptKeeperSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mBatteryWarning:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mEncryptSdCard:Z

.field private mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerWarning:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 67
    new-instance v0, Lcom/android/settings/CryptKeeperSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeperSettings$1;-><init>(Lcom/android/settings/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    new-instance v0, Lcom/android/settings/CryptKeeperSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeperSettings$2;-><init>(Lcom/android/settings/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeperSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeperSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeperSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/CryptKeeperSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeperSettings;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/CryptKeeperSettings;->checkEncryptionRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/CryptKeeperSettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeperSettings;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeperSettings;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method private checkEncryptionRequired()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 94
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 100
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v3

    .line 102
    .local v1, "internalStorageUnencrypted":Z
    :goto_0
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getSdcardEncryptionStatus()I

    move-result v5

    if-ne v5, v3, :cond_3

    move v2, v3

    .line 105
    .local v2, "sdcardUnencrypted":Z
    :goto_1
    if-nez v1, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    return v4

    .end local v1    # "internalStorageUnencrypted":Z
    .end local v2    # "sdcardUnencrypted":Z
    :cond_2
    move v1, v4

    .line 100
    goto :goto_0

    .restart local v1    # "internalStorageUnencrypted":Z
    :cond_3
    move v2, v4

    .line 102
    goto :goto_1
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 6
    .param p1, "request"    # I

    .prologue
    .line 230
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 231
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v1

    .line 232
    .local v1, "quality":I
    const v3, 0x8000

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 238
    :cond_0
    const/high16 v3, 0x20000

    if-ge v1, v3, :cond_1

    .line 239
    const/4 v3, 0x0

    .line 243
    :goto_0
    return v3

    .line 242
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 243
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v3, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v4, 0x7f0b0436

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f0b0437

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_0
.end method

.method private showFinalConfirmation(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 268
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 269
    const-class v0, Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 270
    const v0, 0x7f0b01d9

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 271
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "password"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "sdcard"

    iget-boolean v3, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 273
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 274
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 203
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 205
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 206
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android.app.action.START_ENCRYPTION"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 207
    const-string v5, "device_policy"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 209
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v4

    .line 211
    .local v4, "status":I
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getSdcardEncryptionStatus()I

    move-result v3

    .line 213
    .local v3, "sdStatus":I
    if-eq v4, v7, :cond_0

    if-eq v3, v7, :cond_0

    .line 216
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 220
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "sdStatus":I
    .end local v4    # "status":I
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 251
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 253
    const/16 v1, 0x37

    if-eq p1, v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 260
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeperSettings;->showFinalConfirmation(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 139
    iput-boolean p2, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    .line 140
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 144
    const v1, 0x7f040020

    invoke-virtual {p1, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    .line 146
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 147
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iput-boolean v3, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    .line 150
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

    .line 152
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 155
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getSdcardEncryptionStatus()I

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->isMountingExternalStorageDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    .line 162
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 172
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 173
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 175
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f08004a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    .line 176
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 179
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f080049

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;

    .line 180
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f080048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;

    .line 182
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    return-object v1

    .line 163
    :cond_2
    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getSdcardEncryption(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    iput-boolean v5, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    .line 167
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 194
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 188
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    return-void
.end method
