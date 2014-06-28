.class public Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;
.super Landroid/widget/LinearLayout;
.source "ConversationListHeaderView.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mCheckBox:Landroid/widget/CheckedTextView;

.field private mIsCheckable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private updateCheckBoxStatus()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;->mCheckBox:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 56
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;->mIsCheckable:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 35
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;->mCheckBox:Landroid/widget/CheckedTextView;

    .line 36
    return-void
.end method

.method public setCheckableMode(Z)V
    .locals 4
    .param p1, "isCheckableMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;->mCheckBox:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getListItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 42
    .local v0, "selectedBgDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 43
    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 45
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :cond_0
    :goto_1
    return-void

    .line 39
    .end local v0    # "selectedBgDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    .line 47
    .restart local v0    # "selectedBgDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0076

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v2, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;->mIsCheckable:Z

    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;->updateCheckBoxStatus()V

    .line 62
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;->mIsCheckable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;->setChecked(Z)V

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
