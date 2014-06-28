.class public Lcom/sonyericsson/conversations/ui/MessageListView;
.super Lcom/sonyericsson/conversations/ui/SafeListView;
.source "MessageListView.java"


# instance fields
.field mBodyText:Landroid/widget/EditText;

.field mSubjectText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/SafeListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListView;->mBodyText:Landroid/widget/EditText;

    .line 17
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListView;->mSubjectText:Landroid/widget/EditText;

    .line 22
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 41
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListView;->mBodyText:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 42
    const v1, 0x7f0a0068

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListView;->mBodyText:Landroid/widget/EditText;

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListView;->mSubjectText:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 45
    const v1, 0x7f0a0067

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListView;->mSubjectText:Landroid/widget/EditText;

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 49
    .local v0, "focusedView":Landroid/view/View;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListView;->mBodyText:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListView;->mBodyText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListView;->mBodyText:Landroid/widget/EditText;

    .line 56
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 58
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsListView;->onLayout(ZIIII)V

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 63
    :goto_1
    return-void

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListView;->mSubjectText:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListView;->mSubjectText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListView;->mSubjectText:Landroid/widget/EditText;

    goto :goto_0

    .line 61
    :cond_4
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsListView;->onLayout(ZIIII)V

    goto :goto_1
.end method
