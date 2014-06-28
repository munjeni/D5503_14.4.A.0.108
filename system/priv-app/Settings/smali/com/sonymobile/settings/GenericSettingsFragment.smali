.class public Lcom/sonymobile/settings/GenericSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "GenericSettingsFragment.java"


# instance fields
.field private mHelpResource:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/sonymobile/settings/GenericSettingsFragment;->mHelpResource:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 31
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, "extras":Landroid/os/Bundle;
    const-string v5, "extra_fragment_preference_xml"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "preferenceResource":Ljava/lang/String;
    const-string v5, "xml"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 38
    .local v4, "xmlRes":I
    const-string v5, "extra_fragment_help_resource"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "help":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, "string"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :goto_0
    iput v5, p0, Lcom/sonymobile/settings/GenericSettingsFragment;->mHelpResource:I

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    if-eqz v4, :cond_1

    .line 44
    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 45
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->customizePreferences()V

    .line 49
    :goto_1
    return-void

    .line 39
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 47
    :cond_1
    const-string v5, "GenericSettingsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing valid extra_fragment_preference_xml="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
