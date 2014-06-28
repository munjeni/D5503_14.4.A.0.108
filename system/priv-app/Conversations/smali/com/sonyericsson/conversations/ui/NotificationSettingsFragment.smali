.class public Lcom/sonyericsson/conversations/ui/NotificationSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "NotificationSettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private updateReadReportInfo()V
    .locals 7

    .prologue
    .line 45
    const-string v5, "pref_key_mms_read_reports"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 46
    .local v2, "p":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, "pref_key_mms_read_reports"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 50
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "pref_key_delivery_reports"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 52
    .local v0, "deliveryReportEnabled":Z
    const-string v5, "pref_key_mms_read_reports"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 53
    .local v3, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 54
    const v5, 0x7f0700a8

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 59
    .end local v0    # "deliveryReportEnabled":Z
    .end local v3    # "pref":Landroid/preference/Preference;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 56
    .restart local v0    # "deliveryReportEnabled":Z
    .restart local v3    # "pref":Landroid/preference/Preference;
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    const v5, 0x7f0700a9

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v2, 0x7f050004

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 30
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v1

    .line 31
    .local v1, "settings":Lcom/sonyericsson/conversations/settings/Settings;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 33
    .local v0, "ps":Landroid/preference/PreferenceScreen;
    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/conversations/ui/util/SettingsUtil;->removeInvisiblePreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "pref_key_enable_notifications"

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "pref_key_enable_notifications"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/sonyericsson/conversations/ui/util/SettingsUtil;->updateNotificationEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/PreferenceScreen;Z)V

    .line 41
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/NotificationSettingsFragment;->updateReadReportInfo()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, "pref_key_enable_notifications"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v3

    .line 70
    .local v3, "settings":Lcom/sonyericsson/conversations/settings/Settings;
    if-eqz v3, :cond_0

    .line 71
    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 72
    .local v2, "notificationEnabled":Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1, p1, v2}, Lcom/sonyericsson/conversations/ui/util/SettingsUtil;->updateNotificationEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/PreferenceScreen;Z)V

    .line 78
    .end local v2    # "notificationEnabled":Z
    .end local v3    # "settings":Lcom/sonyericsson/conversations/settings/Settings;
    :cond_0
    const-string v4, "pref_key_delivery_reports"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v3

    .line 80
    .restart local v3    # "settings":Lcom/sonyericsson/conversations/settings/Settings;
    if-eqz v3, :cond_1

    .line 81
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 82
    .local v0, "deliveryReportEnabled":Z
    if-eqz v0, :cond_2

    .line 83
    const-string v4, "pref_key_mms_read_reports"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const v5, 0x7f0700a8

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    .end local v0    # "deliveryReportEnabled":Z
    .end local v3    # "settings":Lcom/sonyericsson/conversations/settings/Settings;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    .line 87
    .restart local v0    # "deliveryReportEnabled":Z
    .restart local v3    # "settings":Lcom/sonyericsson/conversations/settings/Settings;
    :cond_2
    const-string v4, "pref_key_mms_read_reports"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const v5, 0x7f0700a9

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
