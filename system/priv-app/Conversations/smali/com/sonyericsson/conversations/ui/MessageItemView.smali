.class public abstract Lcom/sonyericsson/conversations/ui/MessageItemView;
.super Landroid/widget/LinearLayout;
.source "MessageItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;
.implements Lcom/sonyericsson/conversations/ui/MessageContent;
.implements Lcom/sonyericsson/conversations/ui/MessageContentClickable;
.implements Lcom/sonyericsson/conversations/ui/OnViewProducedListener;
.implements Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;


# static fields
.field private static final ATTACHMENT_MIMETYPE:I = 0x7f0a007f

.field protected static final ATTACHMENT_URI:I = 0x7f0a007e

.field private static final TEXT_VIEW_CHARACTER_LIMIT:I = 0xfa0


# instance fields
.field private mHighlightPattern:Ljava/util/regex/Pattern;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mMessage:Lcom/sonyericsson/conversations/model/Message;

.field private mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

.field private mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

.field protected mThreadId:J

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method private createAttachmentListItem(ILjava/lang/String;Landroid/net/Uri;)Landroid/view/View;
    .locals 6
    .param p1, "iconId"    # I
    .param p2, "caption"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 334
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 335
    .local v0, "attachmentView":Landroid/view/View;
    const v3, 0x7f0a007e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 336
    .local v2, "iconView":Landroid/widget/ImageView;
    const v3, 0x7f0a007f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 338
    .local v1, "captionView":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 339
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    return-object v0
.end method

.method private createExtraTextViews(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/LinkifyTextView;Landroid/view/View;)V
    .locals 17
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "initialTextView"    # Lcom/sonyericsson/conversations/ui/LinkifyTextView;
    .param p3, "slideView"    # Landroid/view/View;

    .prologue
    .line 529
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_1

    .line 600
    :cond_0
    return-void

    .line 532
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    .line 535
    .local v11, "textLength":I
    div-int/lit16 v15, v11, 0xfa0

    rem-int/lit16 v14, v11, 0xfa0

    if-nez v14, :cond_5

    const/4 v14, 0x0

    :goto_0
    add-int/2addr v14, v15

    add-int/lit8 v6, v14, -0x1

    .line 542
    .local v6, "nbrExtraTextViews":I
    const/16 v2, 0xfa0

    .line 543
    .local v2, "breakIndex":I
    move-object/from16 v12, p1

    .line 544
    .local v12, "tmp":Ljava/lang/String;
    const-string v14, " "

    const/16 v15, 0xfa0

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v5

    .line 545
    .local v5, "idx":I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_2

    const/16 v14, 0xf3c

    if-le v5, v14, :cond_2

    .line 546
    move v2, v5

    .line 549
    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 550
    .local v9, "substr":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 553
    .local v7, "remainder":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mHighlightPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 555
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v14, v1}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->linkify(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;)V

    .line 559
    const v14, 0x7f0a0087

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 561
    .local v8, "slideTextExtra":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 562
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v15, 0x7f03001f

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 563
    .local v3, "extraView":Landroid/view/View;
    const v14, 0x7f0a0087

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    .line 565
    .local v13, "tv":Lcom/sonyericsson/conversations/ui/LinkifyTextView;
    add-int/lit8 v14, v6, -0x1

    if-eq v4, v14, :cond_6

    .line 566
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 567
    const/16 v14, 0xfa0

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 568
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 569
    const-string v14, " "

    invoke-virtual {v12, v14, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v5

    .line 570
    const/4 v14, -0x1

    if-eq v5, v14, :cond_3

    add-int/lit8 v14, v2, -0x64

    if-le v5, v14, :cond_3

    .line 571
    move v2, v5

    .line 573
    :cond_3
    const/4 v14, 0x0

    invoke-interface {v7, v14, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 574
    invoke-interface {v7, v2, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 580
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v14}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 582
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->linkify(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v14}, Lcom/sonyericsson/conversations/model/Message;->getDirection()I

    move-result v14

    if-nez v14, :cond_7

    .line 586
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c000a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 588
    .local v10, "textColor":I
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 589
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 597
    .end local v10    # "textColor":I
    :cond_4
    :goto_3
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    .line 598
    invoke-virtual {v8, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 561
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 535
    .end local v2    # "breakIndex":I
    .end local v3    # "extraView":Landroid/view/View;
    .end local v4    # "i":I
    .end local v5    # "idx":I
    .end local v6    # "nbrExtraTextViews":I
    .end local v7    # "remainder":Ljava/lang/CharSequence;
    .end local v8    # "slideTextExtra":Landroid/widget/LinearLayout;
    .end local v9    # "substr":Ljava/lang/CharSequence;
    .end local v12    # "tmp":Ljava/lang/String;
    .end local v13    # "tv":Lcom/sonyericsson/conversations/ui/LinkifyTextView;
    :cond_5
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 577
    .restart local v2    # "breakIndex":I
    .restart local v3    # "extraView":Landroid/view/View;
    .restart local v4    # "i":I
    .restart local v5    # "idx":I
    .restart local v6    # "nbrExtraTextViews":I
    .restart local v7    # "remainder":Ljava/lang/CharSequence;
    .restart local v8    # "slideTextExtra":Landroid/widget/LinearLayout;
    .restart local v9    # "substr":Ljava/lang/CharSequence;
    .restart local v12    # "tmp":Ljava/lang/String;
    .restart local v13    # "tv":Lcom/sonyericsson/conversations/ui/LinkifyTextView;
    :cond_6
    move-object v9, v7

    goto :goto_2

    .line 590
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v14}, Lcom/sonyericsson/conversations/model/Message;->getDirection()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 591
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0008

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 593
    .restart local v10    # "textColor":I
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 594
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setLinkTextColor(I)V

    goto :goto_3
.end method

.method private getCaptionForAttachment(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 8
    .param p1, "bodyPart"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    const v7, 0x7f0700c7

    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, "caption":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 395
    .local v2, "contentType":Ljava/lang/String;
    const-string v4, "text/x-vCard"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 396
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/conversations/model/ModelCache;->getVCardContactName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_0

    const-string v4, "\ufffd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 410
    const/4 v0, 0x0

    .line 414
    :cond_0
    if-eqz v0, :cond_1

    .line 415
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    :cond_1
    if-nez v0, :cond_5

    .line 420
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v3

    .line 421
    .local v3, "nameBytes":[B
    if-nez v3, :cond_2

    .line 422
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v3

    .line 424
    :cond_2
    if-nez v3, :cond_3

    .line 425
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v3

    .line 427
    :cond_3
    if-eqz v3, :cond_4

    .line 428
    new-instance v0, Ljava/lang/String;

    .end local v0    # "caption":Ljava/lang/String;
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 430
    .restart local v0    # "caption":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {v3}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "caption":Ljava/lang/String;
    .local v1, "caption":Ljava/lang/String;
    move-object v0, v1

    .line 437
    .end local v1    # "caption":Ljava/lang/String;
    .restart local v0    # "caption":Ljava/lang/String;
    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    const-string v4, "=?"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 442
    const-string v4, "text/x-vCard"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 443
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 452
    .end local v3    # "nameBytes":[B
    :cond_5
    :goto_1
    if-nez v0, :cond_6

    .line 453
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 457
    :cond_6
    return-object v0

    .line 446
    .restart local v3    # "nameBytes":[B
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 431
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getIconForAttachment(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 3
    .param p1, "bodyPart"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    .line 379
    const v1, 0x7f02000f

    .line 380
    .local v1, "icon":I
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 382
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/ogg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    :cond_0
    const v1, 0x7f020035

    .line 388
    :cond_1
    :goto_0
    return v1

    .line 385
    :cond_2
    const-string v2, "text/x-vCard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    const v1, 0x7f020096

    goto :goto_0
.end method

.method private getInlinedItemsSrc(Lcom/android/mms/model/SlideshowModel;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/SlideshowModel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 362
    .local v5, "src":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 363
    .local v4, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 366
    .local v2, "item":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 367
    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    .line 368
    const-string v6, "cid:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 369
    const-string v6, "cid:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 371
    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/android/mms/model/MediaModel;
    .end local v4    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_4
    return-object v3
.end method

.method private getInlinedItemsUri(Lcom/android/mms/model/SlideshowModel;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/SlideshowModel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 348
    .local v4, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 351
    .local v2, "item":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 352
    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/android/mms/model/MediaModel;
    .end local v4    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_3
    return-object v3
.end method


# virtual methods
.method protected createAttachmentViews(Lcom/android/mms/model/SlideshowModel;Landroid/view/ViewGroup;)V
    .locals 15
    .param p1, "slideShow"    # Lcom/android/mms/model/SlideshowModel;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 495
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    .line 496
    .local v2, "body":Lcom/google/android/mms/pdu/PduBody;
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getInlinedItemsUri(Lcom/android/mms/model/SlideshowModel;)Ljava/util/ArrayList;

    move-result-object v9

    .line 497
    .local v9, "inlined":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getInlinedItemsSrc(Lcom/android/mms/model/SlideshowModel;)Ljava/util/ArrayList;

    move-result-object v10

    .line 498
    .local v10, "inlinedSrc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 499
    .local v3, "bodyCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_1

    .line 500
    invoke-virtual {v2, v7}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 501
    .local v4, "bodyPart":Lcom/google/android/mms/pdu/PduPart;
    if-eqz v4, :cond_0

    .line 502
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/lang/String;-><init>([B)V

    .line 503
    .local v6, "contentType":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v11

    .line 504
    .local v11, "uri":Landroid/net/Uri;
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {p0, v6}, Lcom/sonyericsson/conversations/ui/MessageItemView;->ignoreAttachment(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {p0, v4, v10}, Lcom/sonyericsson/conversations/ui/MessageItemView;->isSlideShowingContent(Lcom/google/android/mms/pdu/PduPart;Ljava/util/ArrayList;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 507
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getIconForAttachment(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v8

    .line 508
    .local v8, "icon":I
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/MessageItemView;->getCaptionForAttachment(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, "caption":Ljava/lang/String;
    invoke-direct {p0, v8, v5, v11}, Lcom/sonyericsson/conversations/ui/MessageItemView;->createAttachmentListItem(ILjava/lang/String;Landroid/net/Uri;)Landroid/view/View;

    move-result-object v1

    .line 512
    .local v1, "attachmentRow":Landroid/view/View;
    const v12, 0x7f0a007e

    invoke-virtual {v1, v12, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 513
    const v12, 0x7f0a007f

    new-instance v13, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v12, v13}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 515
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v12}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 517
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 518
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 499
    .end local v1    # "attachmentRow":Landroid/view/View;
    .end local v5    # "caption":Ljava/lang/String;
    .end local v6    # "contentType":Ljava/lang/String;
    .end local v8    # "icon":I
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 522
    .end local v4    # "bodyPart":Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    return-void
.end method

.method protected createSlideView(Lcom/android/mms/model/SlideModel;)Landroid/view/View;
    .locals 25
    .param p1, "slide"    # Lcom/android/mms/model/SlideModel;

    .prologue
    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v22, v0

    const v23, 0x7f03001e

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 147
    .local v11, "slideView":Landroid/view/View;
    const v22, 0x7f0a0082

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;

    .line 149
    .local v10, "imageView":Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;
    const v22, 0x7f0a0085

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 150
    .local v12, "subjectView":Landroid/widget/TextView;
    const v22, 0x7f0a0086

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    .line 151
    .local v17, "textView":Lcom/sonyericsson/conversations/ui/LinkifyTextView;
    const v22, 0x7f0a0084

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 153
    .local v16, "textContainer":Landroid/widget/LinearLayout;
    const v22, 0x7f0a0083

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 156
    .local v19, "videoIndicatorView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v7

    .line 160
    .local v7, "image":Lcom/android/mms/model/ImageModel;
    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v9

    .line 163
    .local v9, "imageUri":Landroid/net/Uri;
    invoke-virtual {v10, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 164
    const v22, 0x7f0a007e

    move/from16 v0, v22

    invoke-virtual {v10, v0, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 165
    const v22, 0x7f0a007f

    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 166
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 171
    :cond_0
    const v22, 0x7f02008b

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setImageNotFoundDrawable(I)V

    .line 172
    invoke-virtual {v10, v9}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setImageURI(Landroid/net/Uri;)V

    .line 221
    .end local v7    # "image":Lcom/android/mms/model/ImageModel;
    .end local v9    # "imageUri":Landroid/net/Uri;
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 222
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 224
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v13

    .line 228
    .local v13, "text":Ljava/lang/String;
    const-string v22, "\r"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 229
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0xfa0

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_8

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mHighlightPattern:Ljava/util/regex/Pattern;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 232
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v13, v1}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->linkify(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;)V

    .line 240
    :goto_1
    const v15, 0x7f0c0008

    .line 241
    .local v15, "textColorId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/conversations/model/Message;->getDirection()I

    move-result v22

    if-nez v22, :cond_2

    .line 242
    const v15, 0x7f0c000a

    .line 244
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 245
    .local v14, "textColor":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 252
    .end local v13    # "text":Ljava/lang/String;
    .end local v14    # "textColor":I
    .end local v15    # "textColorId":I
    :goto_2
    return-object v11

    .line 173
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v18

    .line 175
    .local v18, "video":Lcom/android/mms/model/VideoModel;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v21

    .line 177
    .local v21, "videoUri":Landroid/net/Uri;
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v5

    .line 182
    .local v5, "cache":Lcom/sonyericsson/conversations/model/ModelCache;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/conversations/model/Message;->getKey()J

    move-result-wide v22

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v5, v0, v1, v2}, Lcom/sonyericsson/conversations/model/ModelCache;->getVideoThumbnail(Landroid/net/Uri;J)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 185
    .local v20, "videoThumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 186
    const v22, 0x7f0a007e

    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 187
    const v22, 0x7f0a007f

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 188
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 190
    const v22, 0x7f02008c

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setImageNotFoundDrawable(I)V

    .line 192
    if-nez v20, :cond_5

    .line 195
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 196
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/conversations/model/Message;->getKey()J

    move-result-wide v23

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-wide/from16 v2, v23

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/model/ModelCache;->setVideoThumbnail(Landroid/net/Uri;JLandroid/graphics/Bitmap;)V

    .line 198
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    if-nez v20, :cond_1

    .line 205
    :goto_3
    invoke-virtual {v10}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setErrorDrawable()V

    goto/16 :goto_0

    .line 199
    :catch_0
    move-exception v6

    .line 200
    .local v6, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v10}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setErrorDrawable()V

    .line 204
    if-nez v20, :cond_1

    goto :goto_3

    .line 201
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 202
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setErrorDrawable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    if-nez v20, :cond_1

    goto :goto_3

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v22

    if-nez v20, :cond_4

    .line 205
    invoke-virtual {v10}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setErrorDrawable()V

    .line 204
    :cond_4
    throw v22

    .line 209
    :cond_5
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 213
    .end local v5    # "cache":Lcom/sonyericsson/conversations/model/ModelCache;
    .end local v18    # "video":Lcom/android/mms/model/VideoModel;
    .end local v20    # "videoThumbnail":Landroid/graphics/Bitmap;
    .end local v21    # "videoUri":Landroid/net/Uri;
    :cond_6
    const v22, 0x7f0a0081

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 214
    .local v8, "imageContainer":Landroid/view/View;
    if-eqz v8, :cond_7

    .line 215
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_7
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 237
    .end local v8    # "imageContainer":Landroid/view/View;
    .restart local v13    # "text":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v13, v1, v11}, Lcom/sonyericsson/conversations/ui/MessageItemView;->createExtraTextViews(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/LinkifyTextView;Landroid/view/View;)V

    goto/16 :goto_1

    .line 248
    .end local v13    # "text":Ljava/lang/String;
    :cond_9
    const/16 v22, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 250
    const/16 v22, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method protected createSlideshow(Lcom/sonyericsson/conversations/model/MmsMessage;Lcom/sonyericsson/conversations/ui/OnViewProducedListener;)Z
    .locals 6
    .param p1, "mmsMessage"    # Lcom/sonyericsson/conversations/model/MmsMessage;
    .param p2, "onViewProducedListener"    # Lcom/sonyericsson/conversations/ui/OnViewProducedListener;

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    .line 124
    .local v3, "slideShow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 125
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/MessageItemView;->createSlideView(Lcom/android/mms/model/SlideModel;)Landroid/view/View;

    move-result-object v4

    .line 126
    .local v4, "slideView":Landroid/view/View;
    invoke-interface {p2, v4, v2}, Lcom/sonyericsson/conversations/ui/OnViewProducedListener;->onViewProduced(Landroid/view/View;Lcom/android/mms/model/SlideModel;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v3    # "slideShow":Lcom/android/mms/model/SlideshowModel;
    .end local v4    # "slideView":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const/4 v5, 0x0

    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :goto_1
    return v5

    .line 128
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "slideShow":Lcom/android/mms/model/SlideshowModel;
    :cond_0
    const/4 v5, 0x1

    goto :goto_1
.end method

.method protected createSlideshowSync(Lcom/sonyericsson/conversations/model/MmsMessage;)V
    .locals 1
    .param p1, "mmsMessage"    # Lcom/sonyericsson/conversations/model/MmsMessage;

    .prologue
    .line 141
    invoke-virtual {p0, p1, p0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->createSlideshow(Lcom/sonyericsson/conversations/model/MmsMessage;Lcom/sonyericsson/conversations/ui/OnViewProducedListener;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->onSlideshowCreated(Z)V

    .line 142
    return-void
.end method

.method ignoreAttachment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 461
    const-string v0, "application/smil"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/plain"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSlideShowingContent(Lcom/google/android/mms/pdu/PduPart;Ljava/util/ArrayList;)Z
    .locals 12
    .param p1, "bodyPart"    # Lcom/google/android/mms/pdu/PduPart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPart;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "srcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x1

    .line 466
    const/4 v9, 0x0

    .line 467
    .local v9, "value":Z
    move-object v5, p2

    .line 468
    .local v5, "inlinedSrc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v8

    .line 469
    .local v8, "name":[B
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v3

    .line 470
    .local v3, "fName":[B
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    .line 471
    .local v1, "contentId":[B
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    .line 472
    .local v0, "cLoc":[B
    if-eqz v0, :cond_0

    .line 473
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 474
    .local v2, "contentLocation":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 476
    .end local v2    # "contentLocation":Ljava/lang/String;
    :cond_0
    if-eq v9, v11, :cond_1

    if-eqz v1, :cond_1

    .line 477
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    .line 479
    .local v7, "mSrc":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 480
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 482
    .end local v7    # "mSrc":Ljava/lang/String;
    :cond_1
    if-eq v9, v11, :cond_2

    if-eqz v8, :cond_2

    .line 483
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    .line 484
    .local v6, "mName":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 486
    .end local v6    # "mName":Ljava/lang/String;
    :cond_2
    if-eq v9, v11, :cond_3

    if-eqz v3, :cond_3

    .line 487
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 488
    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 490
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_3
    return v9
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const v5, 0x7f0a007f

    const v4, 0x7f0a007e

    .line 270
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/net/Uri;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object v1, v2

    .line 275
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "mimeType":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    if-eqz v2, :cond_3

    .line 278
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    invoke-interface {v2, p1, v1, v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V

    .line 299
    .end local v0    # "mimeType":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object v1, v3

    .line 272
    goto :goto_0

    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_2
    move-object v0, v3

    .line 275
    goto :goto_1

    .line 281
    .restart local v0    # "mimeType":Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/sonyericsson/conversations/ui/MessageItemView$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/MessageItemView$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageItemView;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    .line 296
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    invoke-interface {v2, p1, v1, v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 308
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 309
    return-void
.end method

.method public onLinkClicked(Landroid/widget/TextView;Landroid/net/Uri;)V
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 115
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method protected abstract onSlideshowCreated(Z)V
.end method

.method public abstract onThumbnailReady(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
.end method

.method public setHighlightPattern(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "highlightPattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 323
    return-void
.end method

.method public abstract setMessage(Lcom/sonyericsson/conversations/model/Message;J)V
.end method

.method public setOnObjectLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 101
    return-void
.end method

.method public setOnShortClickListener(Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    .line 111
    return-void
.end method

.method public setOnTextLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 106
    return-void
.end method

.method public setTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 303
    return-void
.end method
