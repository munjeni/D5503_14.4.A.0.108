.class public Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateActivity;
.super Landroid/app/Activity;
.source "TextTemplateActivity.java"


# instance fields
.field private mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateActivity;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    return-void
.end method


# virtual methods
.method public getActionMenuForTest()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateActivity;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateActivity;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getActionMenuForTest()Landroid/view/Menu;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCustomViewForTest()Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateActivity;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateActivity;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getCustomViewForTest()Landroid/view/View;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a002f

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateActivity;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    .line 24
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateActivity;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    .line 29
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 30
    return-void
.end method
