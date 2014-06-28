.class public Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;
.super Landroid/widget/LinearLayout;
.source "MessageContentTextSimple.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;
.implements Lcom/sonyericsson/conversations/ui/MessageContent;
.implements Lcom/sonyericsson/conversations/ui/MessageContentClickable;


# instance fields
.field private mOnCreateContextListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

.field private mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 49
    const v0, 0x7f0a00a9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    .line 50
    return-void
.end method

.method public onLinkClicked(Landroid/widget/TextView;Landroid/net/Uri;)V
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 103
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public setHighlightPattern(Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "highlightPattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 55
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;J)V
    .locals 7
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "threadId"    # J

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 60
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    .local v0, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    instance-of v5, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v5, :cond_4

    .line 66
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    const v6, 0x7f070099

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    const v6, 0x7f0e0002

    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 68
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mOnCreateContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 77
    :cond_2
    :goto_1
    const v4, 0x7f0c000a

    .line 78
    .local v4, "textColorId":I
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 79
    const v4, 0x7f0c0008

    .line 81
    :cond_3
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 82
    .local v3, "textColor":I
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    goto :goto_0

    .line 69
    .end local v3    # "textColor":I
    .end local v4    # "textColorId":I
    :cond_4
    instance-of v5, p1, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v5, :cond_2

    move-object v2, p1

    .line 70
    check-cast v2, Lcom/sonyericsson/conversations/model/SmsMessage;

    .line 72
    .local v2, "sms":Lcom/sonyericsson/conversations/model/SmsMessage;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mOnCreateContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 73
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    iget-object v6, v2, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    invoke-virtual {v5, v6, p0}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->linkify(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;)V

    .line 74
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    const v6, 0x7f0e0001

    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public setOnObjectLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 89
    return-void
.end method

.method public setOnShortClickListener(Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    .line 99
    return-void
.end method

.method public setOnTextLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->mOnCreateContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 94
    return-void
.end method
