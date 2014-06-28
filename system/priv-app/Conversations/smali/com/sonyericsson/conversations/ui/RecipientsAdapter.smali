.class public Lcom/sonyericsson/conversations/ui/RecipientsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "RecipientsAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecipientsAdapter"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mFilterPattern:Ljava/util/regex/Pattern;

.field protected mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/RecipientBubble;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "span"    # Lcom/sonyericsson/conversations/ui/RecipientBubble;

    .prologue
    .line 66
    const v0, 0x7f030004

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 67
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/RecipientBubble;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "span"    # Lcom/sonyericsson/conversations/ui/RecipientBubble;
    .param p3, "layout"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 73
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;

    .line 75
    return-void
.end method

.method private getLabelText(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 191
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private themeHighlightMatchingText(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;)Landroid/text/Spannable;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "filterPattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 118
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 119
    .local v3, "sb":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getThemeTextColorHighlight()I

    move-result v1

    .line 120
    .local v1, "color":I
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 121
    .local v0, "background":Landroid/text/style/BackgroundColorSpan;
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 122
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 125
    :cond_0
    return-object v3
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v11, 0x0

    .line 131
    const/4 v9, 0x5

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "recipientName":Ljava/lang/String;
    const/4 v9, 0x3

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "recipientAddress":Ljava/lang/String;
    if-eqz v8, :cond_0

    if-nez v7, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-static {v8}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 145
    invoke-static {v8}, Lcom/sonyericsson/conversations/util/AddressUtil;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 148
    :cond_2
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mFilterPattern:Ljava/util/regex/Pattern;

    invoke-direct {p0, v8, v9}, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->themeHighlightMatchingText(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;)Landroid/text/Spannable;

    move-result-object v5

    .line 150
    .local v5, "name":Landroid/text/Spannable;
    const v9, 0x7f0a0007

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 151
    .local v6, "nameView":Landroid/widget/TextView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const v9, 0x7f0a0002

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 155
    .local v3, "label":Landroid/widget/TextView;
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->getLabelText(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 161
    .local v4, "labelText":Ljava/lang/CharSequence;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    invoke-interface {v4, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa0

    if-ne v9, v10, :cond_4

    .line 162
    :cond_3
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :goto_1
    invoke-static {v7}, Lcom/sonyericsson/conversations/util/AddressUtil;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "formattedAddress":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mFilterPattern:Ljava/util/regex/Pattern;

    invoke-direct {p0, v2, v9}, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->themeHighlightMatchingText(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;)Landroid/text/Spannable;

    move-result-object v0

    .line 170
    .local v0, "address":Landroid/text/Spannable;
    const v9, 0x7f0a0009

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 171
    .local v1, "addressView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 164
    .end local v0    # "address":Landroid/text/Spannable;
    .end local v1    # "addressView":Landroid/widget/TextView;
    .end local v2    # "formattedAddress":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 79
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "number":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 81
    const-string v2, ""

    .line 107
    :goto_0
    return-object v2

    .line 83
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 85
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 88
    const-string v0, ""

    .line 102
    :goto_1
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 104
    .local v2, "sb":Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v1, v4}, Lcom/sonyericsson/conversations/ui/RecipientBubble;->buildRecipientBubble(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 105
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 97
    .end local v2    # "sb":Landroid/text/SpannableStringBuilder;
    :cond_1
    const-string v3, ", "

    const-string v4, " "

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "filter":Ljava/lang/String;
    const/16 v1, 0x12

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mFilterPattern:Ljava/util/regex/Pattern;

    .line 179
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->getSpecifyContactData(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 181
    .end local v0    # "filter":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
