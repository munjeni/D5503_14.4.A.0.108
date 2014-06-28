.class public Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SomcSettingsPreferenceFragment.java"

# interfaces
.implements Lcom/sonymobile/settings/preference/util/PreferencesAdder;


# instance fields
.field private mResumeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected customizeOnResume()V
    .locals 3

    .prologue
    .line 49
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 50
    .local v0, "dependOn":Lcom/sonymobile/settings/preference/util/DependOn;
    invoke-interface {v0}, Lcom/sonymobile/settings/preference/util/DependOn;->onResume()V

    goto :goto_0

    .line 52
    .end local v0    # "dependOn":Lcom/sonymobile/settings/preference/util/DependOn;
    :cond_0
    return-void
.end method

.method protected customizePreferences()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    .line 41
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, v2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->addPreferencesFromResource(Landroid/content/Context;Landroid/preference/PreferenceScreen;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V

    .line 43
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 58
    .local v0, "list":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 59
    new-instance v1, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment$1;-><init>(Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 67
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 72
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 74
    .local v0, "dependOn":Lcom/sonymobile/settings/preference/util/DependOn;
    invoke-interface {v0}, Lcom/sonymobile/settings/preference/util/DependOn;->onPause()V

    goto :goto_0

    .line 77
    .end local v0    # "dependOn":Lcom/sonymobile/settings/preference/util/DependOn;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 25
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->customizePreferences()V

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->customizeOnResume()V

    .line 30
    return-void
.end method
