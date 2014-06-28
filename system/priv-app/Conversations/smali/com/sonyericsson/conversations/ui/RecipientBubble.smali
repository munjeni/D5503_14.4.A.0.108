.class public Lcom/sonyericsson/conversations/ui/RecipientBubble;
.super Ljava/lang/Object;
.source "RecipientBubble.java"


# instance fields
.field private mParentView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    .line 29
    return-void
.end method


# virtual methods
.method public buildRecipientBubble(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/16 v11, 0x21

    const/4 v10, 0x0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/RecipientBubble;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "nameAndNumber":Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 34
    .local v5, "ss":Landroid/text/SpannableString;
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v2

    .line 36
    .local v2, "len":I
    new-instance v8, Landroid/text/Annotation;

    const-string v9, "name"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, p2

    :goto_0
    invoke-direct {v8, v9, v7}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8, v10, v2, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v4, p2

    .line 40
    .local v4, "nameString":Ljava/lang/String;
    :goto_1
    new-instance v7, Landroid/text/Annotation;

    const-string v8, "number"

    invoke-direct {v7, v8, p2}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7, v10, v2, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 42
    new-instance v6, Lcom/sonyericsson/conversations/ui/RecipientDrawable;

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;-><init>(Landroid/text/TextPaint;F)V

    .line 45
    .local v6, "textDrawable":Lcom/sonyericsson/conversations/ui/RecipientDrawable;
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0015

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0016

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->setPadding(II)V

    .line 48
    invoke-virtual {v6, v4}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->setText(Ljava/lang/String;)V

    .line 49
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    if-lez v7, :cond_0

    .line 50
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTotalPaddingStart()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientBubble;->mParentView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTotalPaddingEnd()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->setMaxDrawableWidth(I)V

    .line 55
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor()I

    move-result v0

    .line 56
    .local v0, "color":I
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02009f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->setBackground(Landroid/graphics/drawable/Drawable;I)V

    .line 58
    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v6, v10, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v6, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 62
    .local v1, "imageSpan":Landroid/text/style/ImageSpan;
    invoke-virtual {v5, v1, v10, v2, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 64
    return-object v5

    .end local v0    # "color":I
    .end local v1    # "imageSpan":Landroid/text/style/ImageSpan;
    .end local v4    # "nameString":Ljava/lang/String;
    .end local v6    # "textDrawable":Lcom/sonyericsson/conversations/ui/RecipientDrawable;
    :cond_1
    move-object v7, p1

    .line 36
    goto/16 :goto_0

    :cond_2
    move-object v4, p1

    .line 38
    goto :goto_1
.end method

.method public formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 77
    move-object v0, p2

    .line 78
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v1

    .line 79
    .local v1, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    invoke-interface {v1, p2}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .end local v0    # "formattedNumber":Ljava/lang/String;
    :cond_1
    return-object v0
.end method
