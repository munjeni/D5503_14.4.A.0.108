.class public Lcom/android/settings/accounts/ManageAccountsSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;
    }
.end annotation


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mAccountVisibilityFilter:Lcom/android/settings/accounts/AccountVisibilityFilter;

.field private mAuthorities:[Ljava/lang/String;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mFirstAccount:Landroid/accounts/Account;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountVisibilityFilter:Lcom/android/settings/accounts/AccountVisibilityFilter;

    .line 377
    return-void
.end method

.method private addAuthenticatorSettings()V
    .locals 4

    .prologue
    .line 362
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 363
    .local v0, "prefs":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 364
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V

    .line 370
    :cond_0
    new-instance v1, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V

    .line 373
    .local v1, "proxyAdapter":Lcom/sonymobile/settings/preference/ProxyPreferenceRootAdapter;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 374
    return-void
.end method

.method private requestOrCancelSyncForAccounts(Z)V
    .locals 10
    .param p1, "sync"    # Z

    .prologue
    .line 198
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v7

    .line 199
    .local v7, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v2, "extras":Landroid/os/Bundle;
    const-string v8, "force"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 203
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 204
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 205
    .local v5, "pref":Landroid/preference/Preference;
    instance-of v8, v5, Lcom/android/settings/AccountPreference;

    if-eqz v8, :cond_2

    .line 206
    check-cast v5, Lcom/android/settings/AccountPreference;

    .end local v5    # "pref":Landroid/preference/Preference;
    invoke-virtual {v5}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 208
    .local v0, "account":Landroid/accounts/Account;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v8, v7

    if-ge v4, v8, :cond_2

    .line 209
    aget-object v6, v7, v4

    .line 210
    .local v6, "sa":Landroid/content/SyncAdapterType;
    aget-object v8, v7, v4

    iget-object v8, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 212
    if-eqz p1, :cond_1

    .line 213
    iget-object v8, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v8, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 208
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 215
    :cond_1
    iget-object v8, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_2

    .line 203
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v4    # "j":I
    .end local v6    # "sa":Landroid/content/SyncAdapterType;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    :cond_3
    return-void
.end method

.method private startAccountSettings(Lcom/android/settings/AccountPreference;)V
    .locals 7

    .prologue
    .line 157
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 158
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 159
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b072b

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 163
    return-void
.end method

.method private updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V
    .locals 6

    .prologue
    .line 413
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 414
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 415
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 416
    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 417
    if-eqz v3, :cond_0

    .line 432
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 436
    new-instance v3, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;

    const-class v4, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0b01ca

    invoke-direct {v3, p0, v4, v5}, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 450
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 451
    goto :goto_0

    .line 440
    :cond_1
    const/high16 v4, 0x10000

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 441
    if-nez v4, :cond_2

    .line 442
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 445
    :cond_2
    const-string v2, "account"

    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 446
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v4, 0x10000000

    or-int/2addr v2, v4

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 452
    :cond_3
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 14
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 359
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 316
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    .line 317
    const v1, 0x7f05001b

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 318
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v10, p1

    .local v10, "n":I
    :goto_1
    if-ge v7, v10, :cond_5

    .line 319
    aget-object v2, p1, v7

    .line 321
    .local v2, "account":Landroid/accounts/Account;
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 318
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountVisibilityFilter:Lcom/android/settings/accounts/AccountVisibilityFilter;

    iget-object v5, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/settings/accounts/AccountVisibilityFilter;->isAccountVisibleInManagerList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 328
    .local v4, "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 329
    .local v13, "showAccount":Z
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    .line 330
    const/4 v13, 0x0

    .line 331
    iget-object v6, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .local v6, "arr$":[Ljava/lang/String;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3
    if-ge v8, v9, :cond_3

    aget-object v11, v6, v8

    .line 332
    .local v11, "requestedAuthority":Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 333
    const/4 v13, 0x1

    .line 339
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "requestedAuthority":Ljava/lang/String;
    :cond_3
    if-eqz v13, :cond_1

    .line 340
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 341
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/settings/AccountPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .line 343
    .local v0, "preference":Lcom/android/settings/AccountPreference;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 344
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-nez v1, :cond_1

    .line 345
    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    .line 346
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_2

    .line 331
    .end local v0    # "preference":Lcom/android/settings/AccountPreference;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v11    # "requestedAuthority":Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 350
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v4    # "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "requestedAuthority":Ljava/lang/String;
    .end local v13    # "showAccount":Z
    :cond_5
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_6

    .line 351
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->addAuthenticatorSettings()V

    .line 358
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    goto/16 :goto_0

    .line 354
    :cond_6
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v12, "settingsTop":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 356
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 123
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 125
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f080003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 126
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 128
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 131
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v3, "account_label"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "account_label"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    .line 135
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 457
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 458
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 459
    .local v2, "pref":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/AccountPreference;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 460
    check-cast v0, Lcom/android/settings/AccountPreference;

    .line 461
    .local v0, "accPref":Lcom/android/settings/AccountPreference;
    invoke-virtual {v0}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/AccountPreferenceBase;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 457
    .end local v0    # "accPref":Lcom/android/settings/AccountPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    .line 97
    :cond_0
    new-instance v1, Lcom/android/settings/accounts/AccountVisibilityFilter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/accounts/AccountVisibilityFilter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountVisibilityFilter:Lcom/android/settings/accounts/AccountVisibilityFilter;

    .line 98
    const v1, 0x7f05001b

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 99
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x0

    .line 167
    const/4 v2, 0x1

    const v3, 0x7f0b073a

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02005e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 170
    .local v1, "syncNow":Landroid/view/MenuItem;
    const/4 v2, 0x2

    const v3, 0x7f0b073b

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x1080038

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 173
    .local v0, "syncCancel":Landroid/view/MenuItem;
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 174
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 112
    const v2, 0x7f040042

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 114
    .local v0, "list":Landroid/widget/ListView;
    invoke-static {p2, v1, v0, v3}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 115
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 194
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 188
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    goto :goto_0

    .line 191
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferences"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 148
    instance-of v0, p2, Lcom/android/settings/AccountPreference;

    if-eqz v0, :cond_0

    .line 149
    check-cast p2, Lcom/android/settings/AccountPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-direct {p0, p2}, Lcom/android/settings/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/settings/AccountPreference;)V

    .line 153
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 151
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 178
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 179
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 180
    .local v0, "syncActive":Z
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 181
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-eqz v4, :cond_2

    :goto_2
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 182
    return-void

    .end local v0    # "syncActive":Z
    :cond_0
    move v0, v2

    .line 179
    goto :goto_0

    .restart local v0    # "syncActive":Z
    :cond_1
    move v3, v2

    .line 180
    goto :goto_1

    :cond_2
    move v1, v2

    .line 181
    goto :goto_2
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 104
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 105
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 106
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 107
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 139
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 140
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 141
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 142
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 143
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 144
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 33

    .prologue
    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    if-nez v29, :cond_0

    .line 310
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v10

    .line 231
    .local v10, "currentSync":Landroid/content/SyncInfo;
    const/4 v5, 0x0

    .line 232
    .local v5, "anySyncFailed":Z
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 235
    .local v11, "date":Ljava/util/Date;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v22

    .line 236
    .local v22, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v28, Ljava/util/HashSet;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    .line 237
    .local v28, "userFacing":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, "k":I
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v18, v0

    .local v18, "n":I
    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_2

    .line 238
    aget-object v20, v22, v14

    .line 239
    .local v20, "sa":Landroid/content/SyncAdapterType;
    invoke-virtual/range {v20 .. v20}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 240
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 243
    .end local v20    # "sa":Landroid/content/SyncAdapterType;
    :cond_2
    const/4 v12, 0x0

    .local v12, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v9

    .local v9, "count":I
    :goto_2
    if-ge v12, v9, :cond_11

    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v19

    .line 245
    .local v19, "pref":Landroid/preference/Preference;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/settings/AccountPreference;

    move/from16 v29, v0

    if-nez v29, :cond_4

    .line 243
    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v3, v19

    .line 249
    check-cast v3, Lcom/android/settings/AccountPreference;

    .line 250
    .local v3, "accountPref":Lcom/android/settings/AccountPreference;
    invoke-virtual {v3}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 251
    .local v2, "account":Landroid/accounts/Account;
    const/16 v23, 0x0

    .line 252
    .local v23, "syncCount":I
    const-wide/16 v15, 0x0

    .line 253
    .local v15, "lastSuccessTime":J
    const/16 v25, 0x0

    .line 254
    .local v25, "syncIsFailing":Z
    invoke-virtual {v3}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v6

    .line 255
    .local v6, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .line 256
    .local v26, "syncingNow":Z
    if-eqz v6, :cond_b

    .line 257
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 258
    .local v7, "authority":Ljava/lang/String;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v21

    .line 259
    .local v21, "status":Landroid/content/SyncStatusInfo;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v29

    if-eqz v29, :cond_7

    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v29

    if-lez v29, :cond_7

    const/16 v24, 0x1

    .line 262
    .local v24, "syncEnabled":Z
    :goto_5
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    .line 263
    .local v8, "authorityIsPending":Z
    if-eqz v10, :cond_8

    iget-object v0, v10, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    new-instance v29, Landroid/accounts/Account;

    iget-object v0, v10, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    iget-object v0, v10, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-direct/range {v29 .. v31}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    const/4 v4, 0x1

    .line 267
    .local v4, "activelySyncing":Z
    :goto_6
    if-eqz v21, :cond_9

    if-eqz v24, :cond_9

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-eqz v29, :cond_9

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_9

    const/16 v17, 0x1

    .line 272
    .local v17, "lastSyncFailed":Z
    :goto_7
    if-eqz v17, :cond_5

    if-nez v4, :cond_5

    if-nez v8, :cond_5

    .line 273
    const/16 v25, 0x1

    .line 274
    const/4 v5, 0x1

    .line 276
    :cond_5
    or-int v26, v26, v4

    .line 277
    if-eqz v21, :cond_6

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v29, v0

    cmp-long v29, v15, v29

    if-gez v29, :cond_6

    .line 278
    move-object/from16 v0, v21

    iget-wide v15, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 280
    :cond_6
    if-eqz v24, :cond_a

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    const/16 v29, 0x1

    :goto_8
    add-int v23, v23, v29

    .line 281
    goto/16 :goto_4

    .line 259
    .end local v4    # "activelySyncing":Z
    .end local v8    # "authorityIsPending":Z
    .end local v17    # "lastSyncFailed":Z
    .end local v24    # "syncEnabled":Z
    :cond_7
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 263
    .restart local v8    # "authorityIsPending":Z
    .restart local v24    # "syncEnabled":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .line 267
    .restart local v4    # "activelySyncing":Z
    :cond_9
    const/16 v17, 0x0

    goto :goto_7

    .line 280
    .restart local v17    # "lastSyncFailed":Z
    :cond_a
    const/16 v29, 0x0

    goto :goto_8

    .line 283
    .end local v4    # "activelySyncing":Z
    .end local v7    # "authority":Ljava/lang/String;
    .end local v8    # "authorityIsPending":Z
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v17    # "lastSyncFailed":Z
    .end local v21    # "status":Landroid/content/SyncStatusInfo;
    .end local v24    # "syncEnabled":Z
    :cond_b
    const-string v29, "AccountSettings"

    const/16 v30, 0x2

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 284
    const-string v29, "AccountSettings"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "no syncadapters found for "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_c
    if-eqz v25, :cond_d

    .line 288
    const/16 v29, 0x2

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 289
    :cond_d
    if-nez v23, :cond_e

    .line 290
    const/16 v29, 0x1

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 291
    :cond_e
    if-lez v23, :cond_10

    .line 292
    if-eqz v26, :cond_f

    .line 293
    const/16 v29, 0x3

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 295
    :cond_f
    const/16 v29, 0x0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    .line 296
    const-wide/16 v29, 0x0

    cmp-long v29, v15, v29

    if-lez v29, :cond_3

    .line 297
    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    .line 298
    move-wide v0, v15

    invoke-virtual {v11, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 299
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/accounts/AccountPreferenceBase;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    .line 300
    .local v27, "timeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0b0736

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v27, v31, v32

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 305
    .end local v27    # "timeString":Ljava/lang/String;
    :cond_10
    const/16 v29, 0x1

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 309
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "accountPref":Lcom/android/settings/AccountPreference;
    .end local v6    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "lastSuccessTime":J
    .end local v19    # "pref":Landroid/preference/Preference;
    .end local v23    # "syncCount":I
    .end local v25    # "syncIsFailing":Z
    .end local v26    # "syncingNow":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v30, v0

    if-eqz v5, :cond_12

    const/16 v29, 0x0

    :goto_9
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_12
    const/16 v29, 0x8

    goto :goto_9
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
