.class public Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;
.super Landroid/widget/LinearLayout;
.source "TextTemplateListItemView.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mCheckBox:Landroid/widget/CheckedTextView;

.field private mIsCheckable:Z

.field private mIsInMarked:Z

.field mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->mIsCheckable:Z

    .line 27
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->mIsInMarked:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->mIsCheckable:Z

    .line 27
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->mIsInMarked:Z

    .line 35
    return-void
.end method

.method private updateCheckBoxStatus()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->mCheckBox:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 55
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->mIsCheckable:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 40
    const v0, 0x7f0a008f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->mTextView:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0a0090

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->mCheckBox:Landroid/widget/CheckedTextView;

    .line 42
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->mIsInMarked:Z

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCheckableMode(Z)V
    .locals 2
    .param p1, "isCheckableMode"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->mIsInMarked:Z

    .line 50
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->mCheckBox:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    return-void

    .line 50
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->mIsCheckable:Z

    .line 59
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->updateCheckBoxStatus()V

    .line 60
    return-void
.end method

.method public setTemplateText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->mIsCheckable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->setChecked(Z)V

    .line 68
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
