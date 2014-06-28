.class public Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;
.super Lcom/sonyericsson/conversations/ui/controller/ActionBarController;
.source "ConversationListActionBarController.java"


# instance fields
.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;-><init>(Landroid/app/Activity;)V

    .line 22
    return-void
.end method


# virtual methods
.method public initActionBar()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->initActionBar()V

    .line 27
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;->updateActionBar()V

    .line 28
    return-void
.end method

.method public updateActionBar()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 32
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->updateActionBar()V

    .line 33
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 35
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 36
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 37
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;->mTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;->mTitleView:Landroid/widget/TextView;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;->mTitleView:Landroid/widget/TextView;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 49
    :cond_1
    return-void
.end method

.method public updateSearchMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 57
    :cond_0
    return-void
.end method
