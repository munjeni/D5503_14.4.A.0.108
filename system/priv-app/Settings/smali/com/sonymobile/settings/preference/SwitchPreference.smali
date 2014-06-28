.class public Lcom/sonymobile/settings/preference/SwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "SwitchPreference.java"

# interfaces
.implements Lcom/sonymobile/settings/preference/util/DependOn;


# instance fields
.field private final mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

.field private final mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/settings/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    .line 45
    new-instance v0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/preference/TwoStatePreference;)V

    iput-object v0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    .line 46
    return-void
.end method


# virtual methods
.method canRecycleLayout()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public dependOn()Z
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-virtual {p0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->setIntent(Landroid/content/Intent;)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-virtual {v2}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->dependOn(Landroid/content/Context;Landroid/preference/Preference;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public getAfter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getAfter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getBefore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasResumeActions()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->hasResumeActions()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->onPause()V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/settings/preference/SwitchPreference;->mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->onResume()V

    .line 90
    return-void
.end method
