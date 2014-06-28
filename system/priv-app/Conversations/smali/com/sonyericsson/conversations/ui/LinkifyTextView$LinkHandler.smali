.class Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkHandler;
.super Landroid/text/method/LinkMovementMethod;
.source "LinkifyTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/LinkifyTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkHandler$LinkHandlerHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/LinkifyTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/conversations/ui/LinkifyTextView$1;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkHandler;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkHandler$LinkHandlerHolder;->INSTANCE:Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkHandler;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 134
    .local v1, "action":I
    const/4 v13, 0x1

    if-eq v1, v13, :cond_0

    if-nez v1, :cond_6

    .line 135
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 136
    .local v11, "x":I
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 138
    .local v12, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingStart()I

    move-result v13

    sub-int/2addr v11, v13

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    add-int/2addr v11, v13

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v13

    add-int/2addr v12, v13

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 145
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {v2, v12}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    .line 146
    .local v3, "line":I
    int-to-float v13, v11

    invoke-virtual {v2, v3, v13}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v6

    .line 148
    .local v6, "off":I
    const/4 v5, 0x0

    .line 149
    .local v5, "listener":Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 150
    .local v7, "tag":Ljava/lang/Object;
    instance-of v13, v7, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;

    if-eqz v13, :cond_1

    move-object v5, v7

    .line 151
    check-cast v5, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;

    .line 154
    :cond_1
    const-class v13, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v6, v13}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ClickableSpan;

    .line 155
    .local v4, "link":[Landroid/text/style/ClickableSpan;
    array-length v13, v4

    if-eqz v13, :cond_5

    .line 156
    const/4 v13, 0x1

    if-ne v1, v13, :cond_4

    .line 157
    const/4 v13, 0x0

    aget-object v10, v4, v13

    check-cast v10, Landroid/text/style/URLSpan;

    .line 159
    .local v10, "urlspan":Landroid/text/style/URLSpan;
    if-eqz v5, :cond_3

    .line 160
    const/4 v8, 0x0

    .line 161
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, "url":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 163
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 165
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v5, v0, v8}, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;->onLinkClicked(Landroid/widget/TextView;Landroid/net/Uri;)V

    .line 171
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "url":Ljava/lang/String;
    .end local v10    # "urlspan":Landroid/text/style/URLSpan;
    :cond_3
    :goto_0
    const/4 v13, 0x1

    .line 183
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    .end local v4    # "link":[Landroid/text/style/ClickableSpan;
    .end local v5    # "listener":Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;
    .end local v6    # "off":I
    .end local v7    # "tag":Ljava/lang/Object;
    .end local v11    # "x":I
    .end local v12    # "y":I
    :goto_1
    return v13

    .line 167
    .restart local v2    # "layout":Landroid/text/Layout;
    .restart local v3    # "line":I
    .restart local v4    # "link":[Landroid/text/style/ClickableSpan;
    .restart local v5    # "listener":Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;
    .restart local v6    # "off":I
    .restart local v7    # "tag":Ljava/lang/Object;
    .restart local v11    # "x":I
    .restart local v12    # "y":I
    :cond_4
    if-nez v1, :cond_3

    .line 168
    const/4 v13, 0x0

    aget-object v13, v4, v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    const/4 v14, 0x0

    aget-object v14, v4, v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 173
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 174
    const/4 v13, 0x1

    if-ne v1, v13, :cond_6

    .line 176
    if-eqz v5, :cond_6

    .line 177
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v13}, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;->onLinkClicked(Landroid/widget/TextView;Landroid/net/Uri;)V

    .line 183
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    .end local v4    # "link":[Landroid/text/style/ClickableSpan;
    .end local v5    # "listener":Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;
    .end local v6    # "off":I
    .end local v7    # "tag":Ljava/lang/Object;
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_6
    invoke-super/range {p0 .. p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v13

    goto :goto_1
.end method
