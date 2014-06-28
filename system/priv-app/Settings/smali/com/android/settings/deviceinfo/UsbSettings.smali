.class public Lcom/android/settings/deviceinfo/UsbSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UsbSettings.java"


# instance fields
.field private mMtp:Landroid/preference/CheckBoxPreference;

.field private mPtp:Landroid/preference/CheckBoxPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbAccessoryMode:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 50
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 63
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 66
    :cond_0
    const v2, 0x7f050055

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 67
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 69
    const-string v2, "usb_mtp"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    .line 70
    const-string v2, "usb_ptp"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    .line 72
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 73
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 75
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 78
    :cond_1
    return-object v0
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 5
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    const-string v1, "mtp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 109
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 117
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 118
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    const-string v1, "UsbSettings"

    const-string v2, "USB is locked down"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 132
    :goto_1
    return-void

    .line 110
    .end local v0    # "um":Landroid/os/UserManager;
    :cond_0
    const-string v1, "ptp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 112
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 122
    .restart local v0    # "um":Landroid/os/UserManager;
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v1, :cond_3

    .line 124
    const-string v1, "UsbSettings"

    const-string v2, "USB Normal Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 128
    :cond_3
    const-string v1, "UsbSettings"

    const-string v2, "USB Accessory Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 130
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 85
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onPause()V

    .line 90
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 139
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v4

    .line 144
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 145
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    const-string v0, "none"

    .line 150
    .local v0, "function":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    const-string v0, "mtp"

    .line 156
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v0, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 157
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    const-string v0, "ptp"

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 95
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onResume()V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 102
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    return-void
.end method
