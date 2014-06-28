.class public Lcom/sonyericsson/conversations/ui/util/SettingsUtil;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeInvisiblePreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pg"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v8, 0x1

    .line 50
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 51
    .local v3, "nrPreferences":I
    const/4 v0, 0x0

    .line 53
    .local v0, "idx":I
    :goto_0
    if-ge v0, v3, :cond_9

    .line 54
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 55
    .local v4, "p":Landroid/preference/Preference;
    instance-of v7, v4, Landroid/preference/PreferenceGroup;

    if-eqz v7, :cond_2

    move-object v7, v4

    .line 56
    check-cast v7, Landroid/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v4

    .line 57
    check-cast v7, Landroid/preference/PreferenceGroup;

    invoke-static {p0, v7}, Lcom/sonyericsson/conversations/ui/util/SettingsUtil;->removeInvisiblePreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V

    :cond_0
    move-object v7, v4

    .line 61
    check-cast v7, Landroid/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    if-nez v7, :cond_1

    instance-of v7, v4, Landroid/preference/PreferenceCategory;

    if-eqz v7, :cond_1

    .line 63
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 64
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 66
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v5

    .line 71
    .local v5, "settings":Lcom/sonyericsson/conversations/settings/Settings;
    if-eqz v2, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "_visibility"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v8}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 74
    .local v6, "visible":Z
    :goto_1
    if-eqz v2, :cond_4

    const-string v7, "semc_pref_key_cellbroadcast-enabled"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v9, "userdebug"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v9, "user"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v9, "docomo"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 82
    :cond_3
    const/4 v6, 0x0

    .line 85
    :cond_4
    if-eqz v6, :cond_6

    if-eqz v2, :cond_6

    const-string v7, "pref_key_mms_auto_retrieval"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 88
    :cond_5
    const-string v7, "semc_pref_key_disable_mms"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 89
    .local v1, "isMmsDisabled":Z
    if-eqz v1, :cond_6

    .line 90
    const/4 v6, 0x0

    .line 93
    .end local v1    # "isMmsDisabled":Z
    :cond_6
    if-nez v6, :cond_8

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 94
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .end local v6    # "visible":Z
    :cond_7
    move v6, v8

    .line 71
    goto :goto_1

    .line 96
    .restart local v6    # "visible":Z
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 100
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "p":Landroid/preference/Preference;
    .end local v5    # "settings":Lcom/sonyericsson/conversations/settings/Settings;
    .end local v6    # "visible":Z
    :cond_9
    return-void
.end method

.method public static updateNotificationEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/PreferenceScreen;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p3, "updateValue"    # Z

    .prologue
    .line 23
    const-string v4, "pref_key_ringtone"

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 25
    .local v0, "notificationRingtone":Landroid/preference/Preference;
    const-string v4, "pref_key_vibrate"

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 27
    .local v1, "notificationVibrate":Landroid/preference/Preference;
    const-string v4, "semc_pref_key_notification_led_enabled"

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 30
    .local v2, "notificationled":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 33
    :cond_0
    if-eqz v2, :cond_1

    .line 36
    invoke-static {p0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->isNotificationProviderAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 37
    const-string v4, "pref_key_category_notification"

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 39
    .local v3, "pc":Landroid/preference/PreferenceCategory;
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 44
    .end local v3    # "pc":Landroid/preference/PreferenceCategory;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {v1, p3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 47
    :cond_2
    return-void

    .line 41
    :cond_3
    invoke-virtual {v2, p3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
