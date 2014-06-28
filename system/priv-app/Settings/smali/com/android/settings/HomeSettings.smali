.class public Lcom/android/settings/HomeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/HomeSettings$HomeAppPreference;
    }
.end annotation


# instance fields
.field mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

.field mDeleteClickListener:Landroid/view/View$OnClickListener;

.field mHomeClickListener:Landroid/view/View$OnClickListener;

.field mHomeComponentSet:[Landroid/content/ComponentName;

.field final mHomeFilter:Landroid/content/IntentFilter;

.field mPm:Landroid/content/pm/PackageManager;

.field mPrefGroup:Landroid/preference/PreferenceGroup;

.field mPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/HomeSettings$HomeAppPreference;",
            ">;"
        }
    .end annotation
.end field

.field mShowNotice:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

    .line 77
    new-instance v0, Lcom/android/settings/HomeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/HomeSettings$1;-><init>(Lcom/android/settings/HomeSettings;)V

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->mHomeClickListener:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/android/settings/HomeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/HomeSettings$2;-><init>(Lcom/android/settings/HomeSettings;)V

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    .line 73
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method buildHomeActivitiesList()V
    .locals 15

    .prologue
    .line 160
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v12, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v12}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v10

    .line 163
    .local v10, "currentDefaultHome":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 164
    .local v2, "context":Landroid/content/Context;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/HomeSettings;->mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

    .line 165
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    .line 167
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/settings/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    .line 168
    const/4 v4, 0x0

    .line 169
    .local v4, "prefIndex":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_1

    .line 170
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 171
    .local v9, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v8, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 172
    .local v8, "info":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v1, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v3, "activityName":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    aput-object v3, v1, v13

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 176
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 177
    .local v6, "name":Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/settings/HomeSettings$HomeAppPreference;

    move-object v1, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/HomeSettings$HomeAppPreference;-><init>(Lcom/android/settings/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/HomeSettings;Landroid/content/pm/ActivityInfo;)V

    .line 179
    .local v0, "pref":Lcom/android/settings/HomeSettings$HomeAppPreference;
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 182
    invoke-virtual {v3, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iput-object v0, p0, Lcom/android/settings/HomeSettings;->mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 169
    .end local v0    # "pref":Lcom/android/settings/HomeSettings$HomeAppPreference;
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "name":Ljava/lang/CharSequence;
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 186
    :catch_0
    move-exception v11

    .line 187
    .local v11, "e":Ljava/lang/Exception;
    const-string v1, "HomeSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Problem dealing with activity "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 191
    .end local v3    # "activityName":Landroid/content/ComponentName;
    .end local v8    # "info":Landroid/content/pm/ActivityInfo;
    .end local v9    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

    if-eqz v1, :cond_2

    .line 192
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/settings/HomeSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings/HomeSettings$3;-><init>(Lcom/android/settings/HomeSettings;)V

    invoke-virtual {v1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    :cond_2
    return-void
.end method

.method makeCurrentHome(Lcom/android/settings/HomeSettings$HomeAppPreference;)V
    .locals 6
    .param p1, "newHome"    # Lcom/android/settings/HomeSettings$HomeAppPreference;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/HomeSettings$HomeAppPreference;->setChecked(Z)V

    .line 100
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/settings/HomeSettings$HomeAppPreference;->setChecked(Z)V

    .line 101
    iput-object p1, p0, Lcom/android/settings/HomeSettings;->mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

    .line 103
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const/high16 v3, 0x100000

    iget-object v4, p0, Lcom/android/settings/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    iget-object v5, p1, Lcom/android/settings/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->buildHomeActivitiesList()V

    .line 131
    const/16 v2, 0xa

    if-le p1, v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/settings/HomeSettings;->mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

    if-nez v2, :cond_0

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/settings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/HomeSettings$HomeAppPreference;

    .line 139
    .local v1, "pref":Lcom/android/settings/HomeSettings$HomeAppPreference;
    iget-boolean v2, v1, Lcom/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z

    if-eqz v2, :cond_3

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/settings/HomeSettings;->makeCurrentHome(Lcom/android/settings/HomeSettings$HomeAppPreference;)V

    .line 150
    .end local v0    # "i":I
    .end local v1    # "pref":Lcom/android/settings/HomeSettings$HomeAppPreference;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 151
    iget-boolean v2, p0, Lcom/android/settings/HomeSettings;->mShowNotice:Z

    if-eqz v2, :cond_1

    .line 152
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/HomeSettings;->mShowNotice:Z

    .line 153
    invoke-static {}, Lcom/android/settings/Settings;->requestHomeNotice()V

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    .line 157
    :cond_2
    return-void

    .line 137
    .restart local v0    # "i":I
    .restart local v1    # "pref":Lcom/android/settings/HomeSettings$HomeAppPreference;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 203
    const v1, 0x7f050016

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 206
    const-string v1, "home"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings/HomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    .line 208
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 209
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "show"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/HomeSettings;->mShowNotice:Z

    .line 210
    return-void

    :cond_0
    move v1, v2

    .line 209
    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onResume()V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->buildHomeActivitiesList()V

    .line 216
    return-void
.end method

.method uninstallApp(Lcom/android/settings/HomeSettings$HomeAppPreference;)V
    .locals 6
    .param p1, "pref"    # Lcom/android/settings/HomeSettings$HomeAppPreference;

    .prologue
    const/4 v3, 0x0

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/settings/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 117
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 118
    .local v2, "uninstallIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    iget-boolean v4, p1, Lcom/android/settings/HomeSettings$HomeAppPreference;->isChecked:Z

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v1, v3, 0xa

    .line 120
    .local v1, "requestCode":I
    invoke-virtual {p0, v2, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 121
    return-void
.end method
