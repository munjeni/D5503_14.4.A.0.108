.class public Lcom/sonyericsson/conversations/ui/SearchListItemView;
.super Landroid/widget/LinearLayout;
.source "SearchListItemView.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mIsCheckable:Z

.field private mIsSingleSelectedMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SearchListItemView;->mIsSingleSelectedMode:Z

    .line 20
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SearchListItemView;->mIsCheckable:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SearchListItemView;->mIsSingleSelectedMode:Z

    .line 20
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SearchListItemView;->mIsCheckable:Z

    .line 28
    return-void
.end method

.method private updateBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getListItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 41
    .local v0, "selectedBgDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 42
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/SearchListItemView;->mIsSingleSelectedMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SearchListItemView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v3, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 50
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SearchListItemView;->mIsCheckable:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 33
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/SearchListItemView;->mIsCheckable:Z

    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SearchListItemView;->updateBackground()V

    .line 59
    return-void
.end method

.method public setSingleSelectedMode(Z)V
    .locals 0
    .param p1, "isSingleSelectedMode"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/SearchListItemView;->mIsSingleSelectedMode:Z

    .line 37
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SearchListItemView;->mIsCheckable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/SearchListItemView;->setChecked(Z)V

    .line 69
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
