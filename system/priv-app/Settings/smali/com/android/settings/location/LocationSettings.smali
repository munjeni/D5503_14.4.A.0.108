.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mLocationMode:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 69
    return-void
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 179
    const-string v4, "location_services"

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 181
    .local v0, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    new-instance v2, Lcom/android/settings/location/SettingsInjector;

    invoke-direct {v2, p1}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    .line 182
    .local v2, "injector":Lcom/android/settings/location/SettingsInjector;
    invoke-virtual {v2}, Lcom/android/settings/location/SettingsInjector;->getInjectedSettings()Ljava/util/List;

    move-result-object v3

    .line 184
    .local v3, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v4, Lcom/android/settings/location/LocationSettings$3;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/location/LocationSettings$3;-><init>(Lcom/android/settings/location/LocationSettings;Lcom/android/settings/location/SettingsInjector;)V

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 195
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v4, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 200
    invoke-direct {p0, v3, v0}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/android/settings/location/LocationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/location/LocationSettings$1;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 101
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 103
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 11

    .prologue
    const/16 v9, 0x10

    const/4 v10, -0x2

    const/4 v8, 0x0

    .line 106
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 107
    .local v0, "activity":Landroid/preference/PreferenceActivity;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 108
    .local v5, "root":Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_0

    .line 109
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 111
    :cond_0
    const v6, 0x7f05001a

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 112
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 114
    const-string v6, "location_mode"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 115
    iget-object v6, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    new-instance v7, Lcom/android/settings/location/LocationSettings$2;

    invoke-direct {v7, p0, v0}, Lcom/android/settings/location/LocationSettings$2;-><init>(Lcom/android/settings/location/LocationSettings;Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 127
    const-string v6, "recent_location_requests"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 129
    new-instance v3, Lcom/android/settings/location/RecentLocationApps;

    invoke-direct {v3, v0}, Lcom/android/settings/location/RecentLocationApps;-><init>(Landroid/preference/PreferenceActivity;)V

    .line 130
    .local v3, "recentApps":Lcom/android/settings/location/RecentLocationApps;
    invoke-virtual {v3}, Lcom/android/settings/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v4

    .line 131
    .local v4, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 132
    iget-object v6, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v4, v6}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 142
    :goto_0
    invoke-direct {p0, v0, v5}, Lcom/android/settings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 146
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_2

    .line 147
    :cond_1
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 149
    .local v2, "padding":I
    iget-object v6, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v8, v8, v2, v8}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 150
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 152
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const v9, 0x800015

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 158
    .end local v2    # "padding":I
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->refreshLocationMode()V

    .line 163
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->customizePreferences()V

    .line 164
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->customizeOnResume()V

    .line 165
    return-object v5

    .line 135
    :cond_3
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 136
    .local v1, "banner":Landroid/preference/Preference;
    const v6, 0x7f040041

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 137
    const v6, 0x7f0b046a

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 138
    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 139
    iget-object v6, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 209
    const v0, 0x7f0b086d

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 256
    if-eqz p2, :cond_0

    .line 257
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettingsBase;->setLocationMode(I)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettingsBase;->setLocationMode(I)V

    goto :goto_0
.end method

.method public onModeChanged(IZ)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 214
    packed-switch p1, :pswitch_data_0

    .line 234
    :goto_0
    if-eqz p1, :cond_2

    move v0, v1

    .line 235
    .local v0, "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    if-nez p2, :cond_3

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 236
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    :goto_3
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 237
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 239
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 241
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 245
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 249
    :cond_1
    return-void

    .line 216
    .end local v0    # "enabled":Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0b0468

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0b0467

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 222
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0b0466

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 225
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0b0465

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 234
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_3
    move v3, v2

    .line 235
    goto :goto_2

    :cond_4
    move v1, v2

    .line 236
    goto :goto_3

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 83
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 89
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    return-void

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 74
    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 75
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 77
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 78
    return-void
.end method
