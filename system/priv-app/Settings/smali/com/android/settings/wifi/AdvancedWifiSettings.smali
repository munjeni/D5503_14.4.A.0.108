.class public Lcom/android/settings/wifi/AdvancedWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreferences()V
    .locals 14

    .prologue
    .line 81
    const-string v11, "notify_open_networks"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 83
    .local v2, "notifyOpenNetworks":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_networks_available_notification_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    const/4 v11, 0x1

    :goto_0
    invoke-virtual {v2, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 85
    iget-object v11, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v11

    invoke-virtual {v2, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 87
    const-string v11, "wifi_poor_network_detection"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 89
    .local v3, "poorNetworkDetection":Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 91
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    :cond_0
    :goto_1
    const-string v11, "wifi_scan_always_available"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 102
    .local v5, "scanAlwaysAvailable":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_scan_always_enabled"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v5, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-string v11, "android.credentials.INSTALL_AS_USER"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "intent":Landroid/content/Intent;
    const-string v11, "com.android.certinstaller"

    const-string v12, "com.android.certinstaller.CertInstallerMain"

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v11, "install_as_uid"

    const/16 v12, 0x3f2

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string v11, "install_credentials"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 110
    .local v4, "pref":Landroid/preference/Preference;
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 112
    const-string v11, "suspend_optimizations"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    .line 114
    .local v8, "suspendOptimizations":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_suspend_optimizations_enabled"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v8, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 117
    const-string v11, "frequency_band"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 119
    .local v0, "frequencyPref":Landroid/preference/ListPreference;
    iget-object v11, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 120
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    iget-object v11, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v9

    .line 122
    .local v9, "value":I
    const/4 v11, -0x1

    if-eq v9, v11, :cond_a

    .line 123
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, v0, v9}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V

    .line 135
    .end local v9    # "value":I
    :cond_1
    :goto_4
    const-string v11, "sleep_policy"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    .line 136
    .local v6, "sleepPolicyPref":Landroid/preference/ListPreference;
    if-eqz v6, :cond_3

    .line 137
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 138
    const v11, 0x7f07001b

    invoke-virtual {v6, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 140
    :cond_2
    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_sleep_policy"

    const/4 v13, 0x2

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 144
    .restart local v9    # "value":I
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, "stringValue":Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 149
    .end local v7    # "stringValue":Ljava/lang/String;
    .end local v9    # "value":I
    :cond_3
    const-string v11, "wifi_hs2_auto_connection"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    .line 151
    .local v10, "wifiHs2AutoConnection":Landroid/preference/CheckBoxPreference;
    if-eqz v10, :cond_4

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_hs2_auto_connection"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v10, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 154
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 155
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v11, "com.sonymobile.settings.wifi.hotspot2"

    const-string v12, "com.sonymobile.settings.wifi.hotspot2.RoamingInfoDialogActivity"

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 160
    :cond_4
    return-void

    .line 83
    .end local v0    # "frequencyPref":Landroid/preference/ListPreference;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "poorNetworkDetection":Landroid/preference/CheckBoxPreference;
    .end local v4    # "pref":Landroid/preference/Preference;
    .end local v5    # "scanAlwaysAvailable":Landroid/preference/CheckBoxPreference;
    .end local v6    # "sleepPolicyPref":Landroid/preference/ListPreference;
    .end local v8    # "suspendOptimizations":Landroid/preference/CheckBoxPreference;
    .end local v10    # "wifiHs2AutoConnection":Landroid/preference/CheckBoxPreference;
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 93
    .restart local v3    # "poorNetworkDetection":Landroid/preference/CheckBoxPreference;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_watchdog_poor_network_test_enabled"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {v3, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_7
    const/4 v11, 0x0

    goto :goto_6

    .line 102
    .restart local v5    # "scanAlwaysAvailable":Landroid/preference/CheckBoxPreference;
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 114
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v4    # "pref":Landroid/preference/Preference;
    .restart local v8    # "suspendOptimizations":Landroid/preference/CheckBoxPreference;
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 126
    .restart local v0    # "frequencyPref":Landroid/preference/ListPreference;
    .restart local v9    # "value":I
    :cond_a
    const-string v11, "AdvancedWifiSettings"

    const-string v12, "Failed to fetch frequency band"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 129
    .end local v9    # "value":I
    :cond_b
    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 152
    .restart local v6    # "sleepPolicyPref":Landroid/preference/ListPreference;
    .restart local v10    # "wifiHs2AutoConnection":Landroid/preference/CheckBoxPreference;
    :cond_c
    const/4 v11, 0x0

    goto :goto_5
.end method

.method private refreshWifiInfo()V
    .locals 7

    .prologue
    const v6, 0x7f0b03d4

    .line 249
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 251
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v5, "mac_address"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 252
    .local v4, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 253
    .local v1, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .end local v1    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 256
    const-string v5, "current_ip_address"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 257
    .local v3, "wifiIpAddressPref":Landroid/preference/Preference;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "ipAddress":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "ipAddress":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 260
    return-void

    .line 252
    .end local v3    # "wifiIpAddressPref":Landroid/preference/Preference;
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 253
    .restart local v1    # "macAddress":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    .locals 3
    .param p1, "frequencyBandPref"    # Landroid/preference/Preference;
    .param p2, "index"    # I

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "summaries":[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 185
    return-void
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .param p1, "sleepPolicyPref"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 163
    if-eqz p2, :cond_2

    .line 164
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f07001b

    .line 167
    .local v2, "summaryArrayResId":I
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "summaries":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 169
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 171
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :goto_2
    return-void

    .line 165
    .restart local v3    # "values":[Ljava/lang/String;
    :cond_0
    const v2, 0x7f07001a

    goto :goto_0

    .line 168
    .restart local v0    # "i":I
    .restart local v1    # "summaries":[Ljava/lang/String;
    .restart local v2    # "summaryArrayResId":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 71
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f05005b

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 65
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 218
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "key":Ljava/lang/String;
    const-string v5, "frequency_band"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 222
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 223
    .local v4, "value":I
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v8, 0x1

    invoke-virtual {v5, v4, v8}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 224
    invoke-direct {p0, p1, v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v4    # "value":I
    :cond_0
    const-string v5, "sleep_policy"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 234
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 235
    .local v3, "stringValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "wifi_sleep_policy"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    invoke-direct {p0, p1, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3    # "stringValue":Ljava/lang/String;
    :cond_1
    move v5, v7

    .line 245
    :goto_0
    return v5

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f0b0304

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move v5, v6

    .line 228
    goto :goto_0

    .line 238
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 239
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f0b02a6

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move v5, v6

    .line 241
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 189
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "key":Ljava/lang/String;
    const-string v3, "notify_open_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    move v1, v2

    .line 213
    :goto_1
    return v1

    .line 195
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    const-string v3, "wifi_poor_network_detection"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_watchdog_poor_network_test_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 199
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_3
    const-string v3, "suspend_optimizations"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_suspend_optimizations_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 203
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_5
    const-string v3, "wifi_scan_always_available"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_always_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 207
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_7
    const-string v2, "wifi_hs2_auto_connection"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 208
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 211
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onResume()V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 77
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 78
    return-void
.end method
