.class public Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "SomcPreferenceActivity.java"

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
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPause()V
    .locals 3

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 38
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;->mResumeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;->mResumeListeners:Ljava/util/ArrayList;

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

    .line 40
    .local v0, "dependOn":Lcom/sonymobile/settings/preference/util/DependOn;
    invoke-interface {v0}, Lcom/sonymobile/settings/preference/util/DependOn;->onPause()V

    goto :goto_0

    .line 43
    .end local v0    # "dependOn":Lcom/sonymobile/settings/preference/util/DependOn;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 23
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;->mResumeListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;->mResumeListeners:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;->mResumeListeners:Ljava/util/ArrayList;

    invoke-static {p0, v2, p0, v3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->addPreferencesFromResource(Landroid/content/Context;Landroid/preference/PreferenceScreen;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;->mResumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 31
    .local v0, "dependOn":Lcom/sonymobile/settings/preference/util/DependOn;
    invoke-interface {v0}, Lcom/sonymobile/settings/preference/util/DependOn;->onResume()V

    goto :goto_0

    .line 33
    .end local v0    # "dependOn":Lcom/sonymobile/settings/preference/util/DependOn;
    :cond_1
    return-void
.end method
