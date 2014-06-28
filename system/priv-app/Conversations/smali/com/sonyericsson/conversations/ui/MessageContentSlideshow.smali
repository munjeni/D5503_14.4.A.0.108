.class public Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;
.super Lcom/sonyericsson/conversations/ui/MessageItemView;
.source "MessageContentSlideshow.java"


# instance fields
.field private mBigAttachmentLayout:Landroid/widget/LinearLayout;

.field private mButtonAttachmentLayout:Landroid/widget/LinearLayout;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mSlideshowLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageItemView;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method private clearContent()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mBigAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mBigAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void
.end method

.method private isDuplicateContent(Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "isDuplicate":Z
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 81
    :cond_0
    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->onFinishInflate()V

    .line 57
    const v0, 0x7f0a00a5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mBigAttachmentLayout:Landroid/widget/LinearLayout;

    .line 58
    const v0, 0x7f0a00a6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    .line 59
    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    .line 60
    const v0, 0x7f0a00a4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mErrorTextView:Landroid/widget/TextView;

    .line 61
    return-void
.end method

.method protected onSlideshowCreated(Z)V
    .locals 2
    .param p1, "result"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mErrorTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mErrorTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_0
    return-void
.end method

.method public onThumbnailReady(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 197
    return-void
.end method

.method public onViewProduced(Landroid/view/View;Lcom/android/mms/model/SlideModel;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "slide"    # Lcom/android/mms/model/SlideModel;

    .prologue
    const/4 v6, 0x0

    .line 179
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    .line 180
    .local v0, "image":Lcom/android/mms/model/ImageModel;
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v3

    .line 182
    .local v3, "video":Lcom/android/mms/model/VideoModel;
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 184
    :cond_0
    const v4, 0x7f0a0084

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 185
    .local v2, "textContainer":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 186
    .local v1, "margin":I
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 187
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mBigAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mBigAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 193
    .end local v1    # "margin":I
    .end local v2    # "textContainer":Landroid/view/View;
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;J)V
    .locals 21
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "threadId"    # J

    .prologue
    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 94
    .local v4, "context":Landroid/content/Context;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    if-eqz v4, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->isDuplicateContent(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 99
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonyericsson/conversations/ui/MessageItemView;->mThreadId:J

    .line 100
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->clearContent()V

    move-object/from16 v7, p1

    .line 101
    check-cast v7, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 102
    .local v7, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {v7}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v13

    .line 105
    .local v13, "subject":Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {v13}, Lcom/sonyericsson/conversations/ui/Composer;->isUserDefinedSubject(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 108
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isSendEmptyMessageEnabled()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 109
    const v16, 0x7f07009c

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 115
    :cond_2
    :try_start_0
    invoke-virtual {v7}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 122
    .local v12, "slideshow":Lcom/android/mms/model/SlideshowModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 123
    .local v10, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->hasBigContent()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 124
    const/16 v16, 0x12

    const v17, 0x7f0a00a5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 125
    const/16 v16, 0x13

    const v17, 0x7f0a00a5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0d0004

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 127
    .local v6, "margin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 133
    .end local v6    # "margin":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sonyericsson/conversations/ui/MessageItemView;->createSlideshowSync(Lcom/sonyericsson/conversations/model/MmsMessage;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v12, v1}, Lcom/sonyericsson/conversations/ui/MessageItemView;->createAttachmentViews(Lcom/android/mms/model/SlideshowModel;Landroid/view/ViewGroup;)V

    .line 140
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mBigAttachmentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 143
    .local v3, "bigAttachmentCount":I
    if-lez v3, :cond_5

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mBigAttachmentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    add-int/lit8 v17, v3, -0x1

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 157
    .local v11, "slide":Landroid/view/View;
    :goto_2
    if-eqz v11, :cond_0

    .line 160
    const v16, 0x7f0a0085

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 161
    .local v8, "mmsSubject":Landroid/widget/TextView;
    const v16, 0x7f0a0084

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 162
    .local v9, "mmsTextContainer":Landroid/view/View;
    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    .line 163
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 164
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 165
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const v15, 0x7f0c0008

    .line 168
    .local v15, "textColorId":I
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/conversations/model/Message;->getDirection()I

    move-result v16

    if-nez v16, :cond_3

    .line 169
    const v15, 0x7f0c000a

    .line 171
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 172
    .local v14, "textColor":I
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 116
    .end local v3    # "bigAttachmentCount":I
    .end local v8    # "mmsSubject":Landroid/widget/TextView;
    .end local v9    # "mmsTextContainer":Landroid/view/View;
    .end local v10    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "slide":Landroid/view/View;
    .end local v12    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    .end local v14    # "textColor":I
    .end local v15    # "textColorId":I
    :catch_0
    move-exception v5

    .line 118
    .local v5, "e":Lcom/google/android/mms/MmsException;
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->onSlideshowCreated(Z)V

    goto/16 :goto_0

    .line 129
    .end local v5    # "e":Lcom/google/android/mms/MmsException;
    .restart local v10    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v12    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_4
    const/16 v16, 0x12

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 130
    const/16 v16, 0x13

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto/16 :goto_1

    .line 146
    .restart local v3    # "bigAttachmentCount":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v16

    if-lez v16, :cond_6

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .restart local v11    # "slide":Landroid/view/View;
    goto/16 :goto_2

    .line 149
    .end local v11    # "slide":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v16

    if-lez v16, :cond_7

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mButtonAttachmentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .restart local v11    # "slide":Landroid/view/View;
    goto/16 :goto_2

    .line 154
    .end local v11    # "slide":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    const v17, 0x7f03001e

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 155
    .restart local v11    # "slide":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->mSlideshowLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2
.end method
