.class public Lcom/sonymobile/settings/preference/PreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "PreferenceCategory.java"

# interfaces
.implements Lcom/sonymobile/settings/preference/util/DependOn;


# instance fields
.field private final mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const v0, 0x101008c

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/settings/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v0, Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sonymobile/settings/preference/PreferenceCategory;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    .line 49
    return-void
.end method


# virtual methods
.method canRecycleLayout()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public dependOn()Z
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/settings/preference/PreferenceCategory;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->dependOn(Landroid/content/Context;Landroid/preference/Preference;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public getAfter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/settings/preference/PreferenceCategory;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getAfter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonymobile/settings/preference/PreferenceCategory;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getBefore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasResumeActions()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
