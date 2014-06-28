.class public Lcom/sonymobile/settings/preference/IntentPreference;
.super Landroid/preference/Preference;
.source "IntentPreference.java"

# interfaces
.implements Lcom/sonymobile/settings/preference/util/DependOn;


# instance fields
.field private final mChooserTitle:Ljava/lang/String;

.field private final mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/settings/preference/IntentPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v1, Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-direct {v1, p1, p2, p3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    .line 49
    sget-object v1, Lcom/android/settings/R$styleable;->IntentPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mChooserTitle:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void
.end method


# virtual methods
.method canRecycleLayout()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public dependOn()Z
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, p0, v2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->dependOn(Landroid/content/Context;Landroid/preference/Preference;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public getAfter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getAfter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getBefore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasResumeActions()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 5

    .prologue
    .line 105
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 106
    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 107
    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    .line 108
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mChooserTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mChooserTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 112
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 113
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SomcPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException on preference "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method
