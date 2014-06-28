.class public Lcom/sonymobile/settings/preference/RemovePreference;
.super Landroid/preference/Preference;
.source "RemovePreference.java"

# interfaces
.implements Lcom/sonymobile/settings/preference/util/DependOn;


# instance fields
.field private final mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

.field private final mTargetKey:Ljava/lang/String;

.field private final mTargetParentKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/settings/preference/RemovePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v1, Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-direct {v1, p1, p2, p3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/sonymobile/settings/preference/RemovePreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    .line 42
    sget-object v1, Lcom/android/settings/R$styleable;->RemovePreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/RemovePreference;->mTargetKey:Ljava/lang/String;

    .line 45
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/RemovePreference;->mTargetParentKey:Ljava/lang/String;

    .line 47
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    return-void
.end method


# virtual methods
.method public dependOn()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getAfter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/settings/preference/RemovePreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getAfter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/settings/preference/RemovePreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getBefore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonymobile/settings/preference/RemovePreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->dependOn(Landroid/content/Context;Landroid/preference/Preference;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/RemovePreference;->mTargetKey:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTargetParentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonymobile/settings/preference/RemovePreference;->mTargetParentKey:Ljava/lang/String;

    return-object v0
.end method

.method public hasResumeActions()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
