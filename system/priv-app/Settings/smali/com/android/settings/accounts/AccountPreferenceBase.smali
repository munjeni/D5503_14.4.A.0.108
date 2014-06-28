.class Lcom/android/settings/accounts/AccountPreferenceBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccountPreferenceBase.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mHandler:Landroid/os/Handler;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mTimeFormat:Ljava/text/DateFormat;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 59
    new-instance v0, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 112
    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AccountPreferenceBase$1;-><init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/AccountPreferenceBase;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountPreferenceBase;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 7
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 150
    const/4 v3, 0x0

    .line 151
    .local v3, "prefs":Landroid/preference/PreferenceScreen;
    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v4, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->containsAccountType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    const/4 v1, 0x0

    .line 154
    .local v1, "desc":Landroid/accounts/AuthenticatorDescription;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v4, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_0

    iget v4, v1, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz v4, :cond_0

    .line 156
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 157
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    invoke-virtual {v4, v0, v5, p2}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 166
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 160
    .restart local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 163
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected formatSyncDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 124
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 125
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 126
    .local v4, "syncAdapters":[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v4

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 127
    aget-object v3, v4, v1

    .line 128
    .local v3, "sa":Landroid/content/SyncAdapterType;
    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 129
    .local v0, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .restart local v0    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    const-string v5, "AccountSettings"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    const-string v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "sa":Landroid/content/SyncAdapterType;
    .end local v4    # "syncAdapters":[Landroid/content/SyncAdapterType;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    return-object v5
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 68
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 90
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    .line 91
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    .line 92
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onPause()V

    .line 109
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onResume()V

    .line 97
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onSyncStateUpdated()V

    .line 104
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public updateAuthDescriptions()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 172
    return-void
.end method
