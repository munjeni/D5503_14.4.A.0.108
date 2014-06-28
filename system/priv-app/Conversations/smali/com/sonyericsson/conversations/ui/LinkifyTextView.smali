.class public Lcom/sonyericsson/conversations/ui/LinkifyTextView;
.super Landroid/widget/TextView;
.source "LinkifyTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/LinkifyTextView$1;,
        Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;,
        Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkHandler;
    }
.end annotation


# instance fields
.field private mHighlightPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method private getDecoratedText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "bodyText"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 64
    .local v0, "buf":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->getInstance()Lcom/sonyericsson/conversations/ui/util/SmileyParser;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 66
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mHighlightPattern:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 68
    .local v1, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 72
    .end local v1    # "m":Ljava/util/regex/Matcher;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public linkify(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;)V
    .locals 5
    .param p1, "bodyText"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->getDecoratedText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 95
    .local v2, "text":Ljava/lang/CharSequence;
    const/16 v0, 0x10

    .line 96
    .local v0, "extensionCTAddressMask":I
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getConversationsLinkifyEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    const/16 v4, 0xf

    invoke-static {p0, v4}, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify;->addLinks(Landroid/widget/TextView;I)V

    .line 108
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v3

    .line 109
    .local v3, "urls":[Landroid/text/style/URLSpan;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    .line 110
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    .line 111
    .local v1, "mm":Landroid/text/method/MovementMethod;
    instance-of v4, v1, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkHandler;

    if-nez v4, :cond_1

    .line 112
    invoke-virtual {p0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    invoke-static {}, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkHandler;->getInstance()Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkHandler;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 116
    .end local v1    # "mm":Landroid/text/method/MovementMethod;
    :cond_1
    return-void

    .line 103
    .end local v3    # "urls":[Landroid/text/style/URLSpan;
    :cond_2
    const/16 v4, 0x1f

    invoke-static {p0, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    goto :goto_0
.end method

.method public setHighlightPattern(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "highlightPattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 82
    return-void
.end method
