.class public Lcom/sonyericsson/conversations/ui/MessageItemMmsView;
.super Lcom/sonyericsson/conversations/ui/MessageItemView;
.source "MessageItemMmsView.java"


# instance fields
.field private mCommonSlideView:Landroid/widget/LinearLayout;

.field private mSlideView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageItemView;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->onFinishInflate()V

    .line 45
    const v0, 0x7f0a007b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->mCommonSlideView:Landroid/widget/LinearLayout;

    .line 46
    const v0, 0x7f0a007c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->mSlideView:Landroid/widget/LinearLayout;

    .line 47
    return-void
.end method

.method protected onSlideshowCreated(Z)V
    .locals 3
    .param p1, "result"    # Z

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 90
    .local v0, "errorTextView":Landroid/widget/TextView;
    const v1, 0x7f070098

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 92
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->mCommonSlideView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    .end local v0    # "errorTextView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public onThumbnailReady(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 98
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->mSlideView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 99
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->mSlideView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, "child":Landroid/view/View;
    const v4, 0x7f0a0082

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 101
    .local v2, "imageView":Landroid/widget/ImageView;
    const v4, 0x7f0a0083

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 103
    .local v3, "videoIndicatorView":Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const v4, 0x7f0a007e

    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "videoIndicatorView":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method public onViewProduced(Landroid/view/View;Lcom/android/mms/model/SlideModel;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "slide"    # Lcom/android/mms/model/SlideModel;

    .prologue
    .line 69
    const v6, 0x7f0a0086

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    .local v1, "contextText":Landroid/widget/TextView;
    const v6, 0x7f0a0085

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 72
    .local v3, "subjectText":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    .local v0, "context":Landroid/content/Context;
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 75
    .local v5, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1010036

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 78
    .local v4, "textColor":I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 79
    .local v2, "linkTextColor":I
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 81
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "linkTextColor":I
    .end local v4    # "textColor":I
    .end local v5    # "typedValue":Landroid/util/TypedValue;
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->mSlideView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;J)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # J

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 52
    iput-wide p2, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mThreadId:J

    .line 54
    instance-of v2, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 55
    check-cast v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 56
    .local v1, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/MessageItemView;->createSlideshowSync(Lcom/sonyericsson/conversations/model/MmsMessage;)V

    .line 57
    const v2, 0x7f0a007d

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 60
    .local v0, "attachmentList":Landroid/widget/LinearLayout;
    :try_start_0
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->createAttachmentViews(Lcom/android/mms/model/SlideshowModel;Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "attachmentList":Landroid/widget/LinearLayout;
    .end local v1    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local v0    # "attachmentList":Landroid/widget/LinearLayout;
    .restart local v1    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
