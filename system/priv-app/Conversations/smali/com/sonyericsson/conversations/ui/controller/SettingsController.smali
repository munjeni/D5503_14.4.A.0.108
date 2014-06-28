.class public Lcom/sonyericsson/conversations/ui/controller/SettingsController;
.super Ljava/lang/Object;
.source "SettingsController.java"


# instance fields
.field protected mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

.field protected mFragmentManager:Landroid/app/FragmentManager;

.field protected mSettingsDetailArea:Landroid/widget/RelativeLayout;

.field protected mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/SettingsActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/sonyericsson/conversations/ui/SettingsActivity;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 21
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    .line 23
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    .line 25
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsDetailArea:Landroid/widget/RelativeLayout;

    .line 28
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    .line 29
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 30
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 48
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 49
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 50
    const/16 v1, 0xf

    .line 52
    .local v1, "flag":I
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 54
    .end local v1    # "flag":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected initSettingsFragment()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->removeFragments()V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    const v1, 0x7f030010

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->initActionBar()V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->setSettingsFragmentVisibility(Z)V

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    const v1, 0x7f0a002e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsDetailArea:Landroid/widget/RelativeLayout;

    .line 41
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    return-void
.end method

.method protected removeFragments()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->setSettingsFragmentVisibility(Z)V

    .line 45
    return-void
.end method

.method protected setSettingsFragmentVisibility(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const v3, 0x7f0a002d

    .line 57
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    if-nez v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/SettingsFragment;

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    .line 62
    :cond_0
    if-eqz p1, :cond_3

    .line 63
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    if-nez v2, :cond_1

    .line 64
    new-instance v2, Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->initSettingsFragment()V

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 70
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 71
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 81
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_2
    :goto_0
    return-void

    .line 73
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 75
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 76
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 78
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 79
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    goto :goto_0
.end method
