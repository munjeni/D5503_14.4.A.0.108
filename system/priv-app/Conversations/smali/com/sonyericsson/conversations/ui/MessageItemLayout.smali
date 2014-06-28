.class public Lcom/sonyericsson/conversations/ui/MessageItemLayout;
.super Landroid/widget/LinearLayout;
.source "MessageItemLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field public static final NO_POSITION:I = -0x1


# instance fields
.field private mDateSeparator:Landroid/widget/TextView;

.field private mDeleteCheckbox:Landroid/widget/CheckedTextView;

.field private mIsChecked:Z

.field private mIsInMarkMode:Z

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mIsChecked:Z

    .line 35
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mIsInMarkMode:Z

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mPosition:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mIsChecked:Z

    .line 35
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mIsInMarkMode:Z

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mPosition:I

    .line 48
    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mPosition:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mIsChecked:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 53
    const v0, 0x7f0a00ad

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mDeleteCheckbox:Landroid/widget/CheckedTextView;

    .line 54
    const v0, 0x7f0a00aa

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mDateSeparator:Landroid/widget/TextView;

    .line 55
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mIsInMarkMode:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mIsChecked:Z

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mDeleteCheckbox:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 61
    return-void
.end method

.method public setMarkMode(Z)V
    .locals 2
    .param p1, "isInMarkMode"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mIsInMarkMode:Z

    .line 87
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mIsInMarkMode:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mDeleteCheckbox:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mDeleteCheckbox:Landroid/widget/CheckedTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mPosition:I

    .line 117
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mIsChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->setChecked(Z)V

    .line 71
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDateSeparator(Ljava/lang/CharSequence;IZ)V
    .locals 2
    .param p1, "dateInfo"    # Ljava/lang/CharSequence;
    .param p2, "textColor"    # I
    .param p3, "show"    # Z

    .prologue
    .line 102
    if-eqz p3, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mDateSeparator:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mDateSeparator:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mDateSeparator:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->mDateSeparator:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
