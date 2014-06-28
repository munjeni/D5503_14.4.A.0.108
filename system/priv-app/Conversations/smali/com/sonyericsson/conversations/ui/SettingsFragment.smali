.class public Lcom/sonyericsson/conversations/ui/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/sonyericsson/conversations/ui/SmscEditTextPreference$OnSmscPreferenceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/SettingsFragment$1;,
        Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;,
        Lcom/sonyericsson/conversations/ui/SettingsFragment$PreferencesChangedListener;,
        Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;,
        Lcom/sonyericsson/conversations/ui/SettingsFragment$SettingsFragmentCallback;
    }
.end annotation


# static fields
.field public static final NOTIFICATION_PANE:Ljava/lang/String; = "NotificationPane"

.field public static final SIM_PANE:Ljava/lang/String; = "SimPane"

.field public static final SMSC_EDITABLE_HIDE:I = 0x0

.field public static final SMSC_EDITABLE_SHOW_EDIT:I = 0x2

.field public static final SMSC_EDITABLE_SHOW_ONLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SettingsFragment"

.field public static final TEMPLATE_PANE:Ljava/lang/String; = "TemplatePane"


# instance fields
.field private mCallback:Lcom/sonyericsson/conversations/ui/SettingsFragment$SettingsFragmentCallback;

.field mHighlightKey:Ljava/lang/String;

.field mListView:Landroid/widget/ListView;

.field private mQueryAsyncTask:Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;

.field private mSmscEditableValue:I

.field private volatile mSmscNumber:Ljava/lang/String;

.field private mUpdateAsyncTask:Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;

.field private mUpdateChecker:Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscNumber:Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscEditableValue:I

    .line 79
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mUpdateChecker:Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;

    .line 81
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mCallback:Lcom/sonyericsson/conversations/ui/SettingsFragment$SettingsFragmentCallback;

    .line 593
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/SettingsFragment;)Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SettingsFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mUpdateChecker:Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/SettingsFragment;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SettingsFragment;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateHighlightStatus(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/conversations/ui/SettingsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SettingsFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/conversations/ui/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SettingsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscNumber:Ljava/lang/String;

    return-object p1
.end method

.method private highlightFocusPreference()V
    .locals 2

    .prologue
    .line 269
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mCallback:Lcom/sonyericsson/conversations/ui/SettingsFragment$SettingsFragmentCallback;

    if-nez v1, :cond_1

    .line 270
    const-string v1, "pref_key_notifications_settings"

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->setHighlightKey(Ljava/lang/String;)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mCallback:Lcom/sonyericsson/conversations/ui/SettingsFragment$SettingsFragmentCallback;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment$SettingsFragmentCallback;->getRightPaneType()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "rightPane":Ljava/lang/String;
    const-string v1, "NotificationPane"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    const-string v1, "pref_key_notifications_settings"

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->setHighlightKey(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_2
    const-string v1, "TemplatePane"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    const-string v1, "pref_key_text_template"

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->setHighlightKey(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_3
    const-string v1, "SimPane"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    const-string v1, "pref_key_sim_messages"

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->setHighlightKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initSmscNumber()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 541
    new-instance v0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/SettingsFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mQueryAsyncTask:Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;

    .line 542
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mQueryAsyncTask:Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;

    new-array v1, v3, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 543
    return-void
.end method

.method private removeInvisiblePreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pg"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 176
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    .line 177
    .local v4, "nrPreferences":I
    const/4 v1, 0x0

    .line 179
    .local v1, "idx":I
    :goto_0
    if-ge v1, v4, :cond_f

    .line 180
    invoke-virtual {p2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 181
    .local v5, "p":Landroid/preference/Preference;
    instance-of v10, v5, Landroid/preference/PreferenceGroup;

    if-eqz v10, :cond_2

    move-object v10, v5

    .line 182
    check-cast v10, Landroid/preference/PreferenceGroup;

    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v5

    .line 183
    check-cast v10, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, p1, v10}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->removeInvisiblePreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V

    :cond_0
    move-object v10, v5

    .line 187
    check-cast v10, Landroid/preference/PreferenceGroup;

    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v10

    if-nez v10, :cond_1

    instance-of v10, v5, Landroid/preference/PreferenceCategory;

    if-eqz v10, :cond_1

    .line 189
    invoke-virtual {p2, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 190
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 192
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "key":Ljava/lang/String;
    invoke-static {p1}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v8

    .line 197
    .local v8, "settings":Lcom/sonyericsson/conversations/settings/Settings;
    if-eqz v3, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_visibility"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 200
    .local v9, "visible":Z
    :goto_1
    if-eqz v3, :cond_4

    const-string v10, "semc_pref_key_cellbroadcast-enabled"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v11, "userdebug"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v11, "user"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v11, "docomo"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 208
    :cond_3
    const/4 v9, 0x0

    .line 211
    :cond_4
    if-eqz v9, :cond_6

    if-eqz v3, :cond_6

    const-string v10, "pref_key_mms_auto_retrieval"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 214
    :cond_5
    const-string v10, "semc_pref_key_disable_mms"

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 215
    .local v2, "isMmsDisabled":Z
    if-eqz v2, :cond_6

    .line 216
    const/4 v9, 0x0

    .line 220
    .end local v2    # "isMmsDisabled":Z
    :cond_6
    if-eqz v3, :cond_b

    const-string v10, "pref_key_smsc_number"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 222
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmscEditableValue()I

    move-result v10

    iput v10, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscEditableValue:I

    .line 223
    iget v10, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscEditableValue:I

    if-eqz v10, :cond_a

    .line 225
    const-string v10, "pref_key_smsc_number"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0700b1

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 228
    iget v10, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscEditableValue:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 229
    const-string v10, "pref_key_smsc_number"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 230
    const-string v10, "pref_key_smsc_number"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/conversations/ui/SmscEditTextPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sonyericsson/conversations/ui/SmscEditTextPreference;->setSmscEditable(Z)V

    .line 259
    :cond_7
    :goto_2
    if-nez v9, :cond_e

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 260
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    .line 197
    .end local v9    # "visible":Z
    :cond_8
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 233
    .restart local v9    # "visible":Z
    :cond_9
    const-string v10, "pref_key_smsc_number"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 234
    const-string v10, "pref_key_smsc_number"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/conversations/ui/SmscEditTextPreference;

    invoke-virtual {v10, p0}, Lcom/sonyericsson/conversations/ui/SmscEditTextPreference;->setOnSmscPreferenceListener(Lcom/sonyericsson/conversations/ui/SmscEditTextPreference$OnSmscPreferenceListener;)V

    .line 235
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_2

    .line 239
    :cond_a
    const-string v10, "pref_key_smsc_number"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 241
    :cond_b
    if-eqz v9, :cond_7

    if-eqz v3, :cond_7

    const-string v10, "pref_key_mms_read_reports"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 242
    const-string v10, "semc_pref_key_disable_mms"

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 243
    .restart local v2    # "isMmsDisabled":Z
    if-eqz v2, :cond_c

    .line 244
    const/4 v9, 0x0

    goto :goto_2

    .line 246
    :cond_c
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 248
    .local v7, "prefs":Landroid/content/SharedPreferences;
    const-string v10, "pref_key_delivery_reports"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 250
    .local v0, "deliveryReportEnabled":Z
    const-string v10, "pref_key_mms_read_reports"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 251
    .local v6, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_d

    .line 252
    const v10, 0x7f0700a8

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 254
    :cond_d
    const v10, 0x7f0700a9

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 262
    .end local v0    # "deliveryReportEnabled":Z
    .end local v2    # "isMmsDisabled":Z
    .end local v6    # "pref":Landroid/preference/Preference;
    .end local v7    # "prefs":Landroid/content/SharedPreferences;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 266
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "p":Landroid/preference/Preference;
    .end local v8    # "settings":Lcom/sonyericsson/conversations/settings/Settings;
    .end local v9    # "visible":Z
    :cond_f
    return-void
.end method

.method private setHighlightKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mHighlightKey:Ljava/lang/String;

    .line 475
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mUpdateChecker:Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->reset()V

    .line 476
    return-void
.end method

.method private setListViewPaddinginViewGroup(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 574
    if-nez p1, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 579
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 580
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 581
    .local v1, "childView":Landroid/view/View;
    instance-of v4, v1, Landroid/widget/ListView;

    if-eqz v4, :cond_2

    .line 582
    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 584
    check-cast v1, Landroid/widget/ListView;

    .end local v1    # "childView":Landroid/view/View;
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mListView:Landroid/widget/ListView;

    goto :goto_0

    .line 586
    .restart local v1    # "childView":Landroid/view/View;
    :cond_2
    instance-of v4, v1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    move-object v0, v1

    .line 587
    check-cast v0, Landroid/view/ViewGroup;

    .line 588
    .local v0, "childGroup":Landroid/view/ViewGroup;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->setListViewPaddinginViewGroup(Landroid/view/ViewGroup;)V

    .line 579
    .end local v0    # "childGroup":Landroid/view/ViewGroup;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private setPreferenceBackground(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "draw"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 510
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 511
    .local v6, "view":Landroid/view/View;
    const/high16 v7, 0x7f0a0000

    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 512
    .local v5, "tag":Ljava/lang/Object;
    if-eqz v5, :cond_1

    check-cast v5, Ljava/lang/String;

    .end local v5    # "tag":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 513
    invoke-virtual {v6}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    .line 514
    .local v3, "paddingStart":I
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 515
    .local v4, "paddingTop":I
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 516
    .local v1, "paddingBottom":I
    invoke-virtual {v6}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 517
    .local v2, "paddingEnd":I
    invoke-virtual {v6, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 518
    invoke-virtual {v6, v3, v4, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 520
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mUpdateChecker:Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;

    invoke-virtual {v7, p2}, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->updateByKey(Ljava/lang/String;)V

    .line 525
    .end local v1    # "paddingBottom":I
    .end local v2    # "paddingEnd":I
    .end local v3    # "paddingStart":I
    .end local v4    # "paddingTop":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 509
    .restart local v6    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateEmergencyAlertsEnabled()V
    .locals 5

    .prologue
    .line 364
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 365
    .local v3, "ps":Landroid/preference/PreferenceScreen;
    const-string v4, "semc_pref_key_emergency_alerts_enabled"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 366
    .local v0, "emergencyAlertsPref":Landroid/preference/Preference;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyAlertsEnabled()Z

    move-result v1

    .line 368
    .local v1, "isEnabled":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 369
    const-string v4, "pref_key_category_alerts"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 370
    .local v2, "pc":Landroid/preference/PreferenceCategory;
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 372
    .end local v2    # "pc":Landroid/preference/PreferenceCategory;
    :cond_0
    return-void
.end method

.method private updateHighlightStatus(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 479
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mHighlightKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mUpdateChecker:Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->isAllUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mUpdateChecker:Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->isNotificationUpdate()Z

    move-result v0

    if-nez v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mHighlightKey:Ljava/lang/String;

    const-string v1, "pref_key_notifications_settings"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 485
    const-string v0, "pref_key_notifications_settings"

    invoke-direct {p0, p1, v0, v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->setPreferenceBackground(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 491
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mUpdateChecker:Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->isTemplateUpdate()Z

    move-result v0

    if-nez v0, :cond_3

    .line 492
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mHighlightKey:Ljava/lang/String;

    const-string v1, "pref_key_text_template"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 493
    const-string v0, "pref_key_text_template"

    invoke-direct {p0, p1, v0, v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->setPreferenceBackground(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 499
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mUpdateChecker:Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->isSimUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mHighlightKey:Ljava/lang/String;

    const-string v1, "pref_key_sim_messages"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 501
    const-string v0, "pref_key_sim_messages"

    invoke-direct {p0, p1, v0, v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->setPreferenceBackground(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 487
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mHighlightKey:Ljava/lang/String;

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getListItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->setPreferenceBackground(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 495
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mHighlightKey:Ljava/lang/String;

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getListItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->setPreferenceBackground(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 503
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mHighlightKey:Ljava/lang/String;

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getListItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->setPreferenceBackground(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateNotificationSettings()V
    .locals 9

    .prologue
    .line 313
    const-string v4, "pref_key_category_notification"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 314
    .local v1, "pc":Landroid/preference/PreferenceCategory;
    if-nez v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 320
    const-string v4, "pref_key_enable_notifications"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 321
    .local v2, "preference":Landroid/preference/Preference;
    if-eqz v2, :cond_2

    .line 322
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 324
    :cond_2
    const-string v4, "pref_key_vibrate"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 325
    if-eqz v2, :cond_3

    .line 326
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 328
    :cond_3
    const-string v4, "semc_pref_key_notification_led_enabled"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 329
    if-eqz v2, :cond_4

    .line 330
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 332
    :cond_4
    const-string v4, "pref_key_delivery_reports"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 333
    if-eqz v2, :cond_5

    .line 334
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 336
    :cond_5
    const-string v4, "pref_key_mms_read_reports"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 337
    if-eqz v2, :cond_0

    .line 338
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 342
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_6
    const-string v4, "pref_key_notifications_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 343
    .local v0, "notificationSettings":Landroid/preference/Preference;
    if-eqz v0, :cond_7

    .line 344
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 346
    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v3

    .line 347
    .local v3, "settings":Lcom/sonyericsson/conversations/settings/Settings;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "pref_key_enable_notifications"

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "pref_key_enable_notifications"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/sonyericsson/conversations/ui/util/SettingsUtil;->updateNotificationEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/PreferenceScreen;Z)V

    goto :goto_0
.end method

.method private updateRoamingEnabled(Ljava/lang/String;Landroid/preference/PreferenceScreen;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p3, "updateValue"    # Z

    .prologue
    .line 355
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 358
    .local v0, "mmsRoaming":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 361
    :cond_0
    return-void
.end method

.method private updateSmscNumber()V
    .locals 5

    .prologue
    .line 546
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 547
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 548
    new-instance v1, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/SettingsFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mUpdateAsyncTask:Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;

    .line 549
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mUpdateAsyncTask:Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 551
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const v2, 0x7f050003

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 158
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v1

    .line 159
    .local v1, "settings":Lcom/sonyericsson/conversations/settings/Settings;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 161
    .local v0, "ps":Landroid/preference/PreferenceScreen;
    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->removeInvisiblePreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V

    .line 167
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateNotificationSettings()V

    .line 169
    const-string v2, "pref_key_mms_retrieval_during_roaming"

    const-string v3, "pref_key_mms_auto_retrieval"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateRoamingEnabled(Ljava/lang/String;Landroid/preference/PreferenceScreen;Z)V

    .line 172
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateEmergencyAlertsEnabled()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 555
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 556
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 557
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    .line 560
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 561
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 563
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->setListViewPaddinginViewGroup(Landroid/view/ViewGroup;)V

    .line 565
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/sonyericsson/conversations/ui/SettingsFragment$PreferencesChangedListener;

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/conversations/ui/SettingsFragment$PreferencesChangedListener;-><init>(Lcom/sonyericsson/conversations/ui/SettingsFragment;Lcom/sonyericsson/conversations/ui/SettingsFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 566
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mUpdateChecker:Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;

    if-nez v1, :cond_2

    .line 567
    new-instance v1, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;

    invoke-direct {v1, p0, v3}, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;-><init>(Lcom/sonyericsson/conversations/ui/SettingsFragment;Lcom/sonyericsson/conversations/ui/SettingsFragment$1;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mUpdateChecker:Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;

    .line 570
    :cond_2
    return-object v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 377
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, "key":Ljava/lang/String;
    const-string v7, "pref_key_enable_notifications"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 382
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v6

    .line 383
    .local v6, "settings":Lcom/sonyericsson/conversations/settings/Settings;
    if-eqz v6, :cond_0

    .line 384
    invoke-virtual {v6, v4, v11}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 385
    .local v5, "notificationEnabled":Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v4, p1, v5}, Lcom/sonyericsson/conversations/ui/util/SettingsUtil;->updateNotificationEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/PreferenceScreen;Z)V

    .line 392
    .end local v5    # "notificationEnabled":Z
    .end local v6    # "settings":Lcom/sonyericsson/conversations/settings/Settings;
    :cond_0
    const-string v7, "pref_key_mms_auto_retrieval"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 393
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v6

    .line 394
    .restart local v6    # "settings":Lcom/sonyericsson/conversations/settings/Settings;
    if-eqz v6, :cond_1

    .line 395
    invoke-virtual {v6, v4, v11}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 396
    .local v0, "autoRetrievalEnabled":Z
    const-string v7, "pref_key_mms_retrieval_during_roaming"

    invoke-direct {p0, v7, p1, v0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateRoamingEnabled(Ljava/lang/String;Landroid/preference/PreferenceScreen;Z)V

    .line 401
    .end local v0    # "autoRetrievalEnabled":Z
    .end local v6    # "settings":Lcom/sonyericsson/conversations/settings/Settings;
    :cond_1
    const-string v7, "pref_key_notifications_settings"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 402
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/sonyericsson/conversations/ui/SettingsActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "extra"

    const-string v8, "com.sonyericsson.conversations.ui.DISPLAY_NOTIFICATION_SETTINGS"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 407
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 408
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->setHighlightKey(Ljava/lang/String;)V

    .line 412
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v7, "pref_key_text_template"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 413
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 414
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/sonyericsson/conversations/ui/SettingsActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string v7, "extra"

    const-string v8, "com.sonyericsson.conversations.ui.DISPLAY_TEMPLATE_MESSAGE_SETTINGS"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 418
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->setHighlightKey(Ljava/lang/String;)V

    .line 424
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_0
    const-string v7, "pref_key_sim_messages"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 425
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 426
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/sonyericsson/conversations/ui/SettingsActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 427
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v7, "extra"

    const-string v8, "com.sonyericsson.conversations.ui.DISPLAY_SIM_MESSAGE_SETTINGS"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 430
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->setHighlightKey(Ljava/lang/String;)V

    .line 436
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    const-string v7, "pref_key_smsc_number"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 437
    iget v7, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscEditableValue:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 438
    const-string v7, "pref_key_smsc_number"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700b1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 440
    const-string v7, "pref_key_smsc_number"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 442
    const-string v7, "pref_key_smsc_number"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/conversations/ui/SmscEditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    :cond_5
    const-string v7, "pref_key_delivery_reports"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 450
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v6

    .line 451
    .restart local v6    # "settings":Lcom/sonyericsson/conversations/settings/Settings;
    if-eqz v6, :cond_6

    .line 452
    const-string v7, "semc_pref_key_disable_mms"

    invoke-virtual {v6, v7, v12}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 453
    .local v3, "isMmsDisabled":Z
    if-nez v3, :cond_6

    .line 454
    invoke-virtual {v6, v4, v12}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 455
    .local v1, "deliveryReportEnabled":Z
    if-eqz v1, :cond_a

    .line 456
    const-string v7, "pref_key_mms_read_reports"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    const v8, 0x7f0700a8

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 468
    .end local v1    # "deliveryReportEnabled":Z
    .end local v3    # "isMmsDisabled":Z
    .end local v6    # "settings":Lcom/sonyericsson/conversations/settings/Settings;
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mListView:Landroid/widget/ListView;

    if-eqz v7, :cond_7

    .line 469
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v7}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateHighlightStatus(Landroid/view/ViewGroup;)V

    .line 470
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    return v7

    .line 420
    :cond_8
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-class v10, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateActivity;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 432
    :cond_9
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-class v10, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 460
    .restart local v1    # "deliveryReportEnabled":Z
    .restart local v3    # "isMmsDisabled":Z
    .restart local v6    # "settings":Lcom/sonyericsson/conversations/settings/Settings;
    :cond_a
    const-string v7, "pref_key_mms_read_reports"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    const v8, 0x7f0700a9

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 529
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 531
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscEditableValue:I

    if-eqz v0, :cond_0

    .line 532
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->initSmscNumber()V

    .line 535
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->highlightFocusPreference()V

    .line 538
    :cond_1
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 681
    const-string v1, "pref_key_smsc_number"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    const-string v1, "pref_key_smsc_number"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 683
    .local v0, "etp":Landroid/preference/EditTextPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 684
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscNumber:Ljava/lang/String;

    .line 685
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateSmscNumber()V

    .line 688
    .end local v0    # "etp":Landroid/preference/EditTextPreference;
    :cond_0
    return-void
.end method

.method public onSmscPreference(Lcom/sonyericsson/conversations/ui/SmscEditTextPreference;Z)V
    .locals 1
    .param p1, "preference"    # Lcom/sonyericsson/conversations/ui/SmscEditTextPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    .line 672
    if-eqz p2, :cond_0

    .line 673
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscNumber:Ljava/lang/String;

    .line 674
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateSmscNumber()V

    .line 676
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->initSmscNumber()V

    .line 677
    return-void
.end method

.method public setCallback(Lcom/sonyericsson/conversations/ui/SettingsFragment$SettingsFragmentCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonyericsson/conversations/ui/SettingsFragment$SettingsFragmentCallback;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mCallback:Lcom/sonyericsson/conversations/ui/SettingsFragment$SettingsFragmentCallback;

    .line 285
    return-void
.end method
