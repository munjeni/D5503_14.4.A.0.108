.class public Lcom/sonyericsson/conversations/ui/Composer;
.super Ljava/lang/Object;
.source "Composer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;,
        Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;,
        Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;
    }
.end annotation


# static fields
.field private static final AUTO_GENERATED_SUBJECT_IDENTIFIER:Ljava/lang/String; = " \t"

.field private static final NO_SUBJECT_TEXT:Ljava/lang/String; = ""

.field public static final SUBJECT_MAX_LENGTH:I = 0x28

.field private static final TAG:Ljava/lang/String; = "Composer"


# instance fields
.field private mAllowEmptyMessage:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/sonyericsson/conversations/model/Conversation;

.field private mDirty:Z

.field private mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

.field private mForcedMessageType:I

.field private mHasSlideshowAttachment:Z

.field private mHoldsUnhandlableContent:Z

.field private mIsDraftStored:Z

.field private mListener:Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;

.field private mMaxSmsSegments:I

.field private mMessage:Lcom/sonyericsson/conversations/model/Message;

.field private mMessagePriority:I

.field private mMmsMaxSizeInBytes:I

.field private mNbrMediaObjects:I

.field private mObsoleteMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mOldSmsCounterInfo:Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

.field private mPduPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;

.field private mRecipientsDirty:Z

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

.field private mSubject:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTriggerRecipients:I

.field mTriggerSmsPduBytes:I

.field private mTriggerSmsSegments:I

.field private mUseCharacterConversion:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Conversation;Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/sonyericsson/conversations/model/Conversation;
    .param p3, "encodingListener"    # Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

    .prologue
    const/4 v0, 0x0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mNbrMediaObjects:I

    .line 314
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHoldsUnhandlableContent:Z

    .line 316
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHasSlideshowAttachment:Z

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForcedMessageType:I

    .line 336
    new-instance v0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    .line 338
    new-instance v0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mOldSmsCounterInfo:Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mObsoleteMessages:Ljava/util/ArrayList;

    .line 359
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessagePriority:I

    .line 370
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    .line 371
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    .line 372
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

    .line 374
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContentResolver:Landroid/content/ContentResolver;

    .line 375
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mPduPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;

    .line 377
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsTriggerRecipients()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mTriggerRecipients:I

    .line 378
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsTriggerSmsSegments()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mTriggerSmsSegments:I

    .line 379
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsTriggerSmsPduBytes()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mTriggerSmsPduBytes:I

    .line 380
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSmsSegments()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMaxSmsSegments:I

    .line 381
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMmsMaxSizeInBytes:I

    .line 382
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCharacterConversionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mUseCharacterConversion:Z

    .line 383
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/Composer;Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/Composer;
    .param p1, "x1"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/Composer;->deleteDraft(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/Composer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/Composer;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->deleteObsoleteMessages()Z

    move-result v0

    return v0
.end method

.method private addAttachment(Lcom/android/mms/model/MediaModel;Z)V
    .locals 2
    .param p1, "attachment"    # Lcom/android/mms/model/MediaModel;
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 696
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 700
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getOrAddSlideForMedia(Lcom/android/mms/model/SlideshowModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 702
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    instance-of v1, p1, Lcom/android/mms/model/AudioModel;

    if-eqz v1, :cond_1

    .line 703
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    .line 705
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 707
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->moveLocationToLastSlide()V

    .line 708
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->moveTextToLastSlide()V

    .line 710
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 711
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/Composer;->refreshMessage(Z)V

    .line 712
    if-eqz p2, :cond_2

    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mNbrMediaObjects:I

    if-lez v1, :cond_2

    .line 717
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mListener:Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;->mediaAddedOrRemoved()V

    .line 719
    :cond_2
    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mNbrMediaObjects:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mNbrMediaObjects:I

    .line 720
    return-void
.end method

.method private addCurrentImage(Landroid/net/Uri;IZZ)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "imageSize"    # I
    .param p3, "isLocation"    # Z
    .param p4, "showToast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v3

    const/4 v4, 0x1

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/sonyericsson/conversations/util/MediaUtil;->resizeImageWithMemoryChecking(Landroid/content/Context;Landroid/net/Uri;IIZIZ)Landroid/net/Uri;

    move-result-object v7

    .line 484
    .local v7, "resizedUri":Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 486
    new-instance v0, Lcom/android/mms/model/ImageModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v7, v8, p3}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V

    invoke-direct {p0, v0, p4}, Lcom/sonyericsson/conversations/ui/Composer;->addMedia(Lcom/android/mms/model/RegionMediaModel;Z)V

    .line 491
    :goto_0
    return-void

    .line 489
    :cond_0
    new-instance v0, Lcom/android/mms/model/ImageModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v8, p3}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V

    invoke-direct {p0, v0, p4}, Lcom/sonyericsson/conversations/ui/Composer;->addMedia(Lcom/android/mms/model/RegionMediaModel;Z)V

    goto :goto_0
.end method

.method private addMedia(Lcom/android/mms/model/RegionMediaModel;Z)V
    .locals 2
    .param p1, "media"    # Lcom/android/mms/model/RegionMediaModel;
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 668
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getOrAddSlideForMedia(Lcom/android/mms/model/SlideshowModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 674
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    instance-of v1, p1, Lcom/android/mms/model/VideoModel;

    if-eqz v1, :cond_1

    .line 675
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    .line 677
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/mms/model/RegionMediaModel;->setRegion(Lcom/android/mms/model/RegionModel;)V

    .line 678
    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 680
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->moveLocationToLastSlide()V

    .line 681
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->moveTextToLastSlide()V

    .line 683
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 684
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/Composer;->refreshMessage(Z)V

    .line 685
    if-eqz p2, :cond_2

    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mNbrMediaObjects:I

    if-lez v1, :cond_2

    .line 690
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mListener:Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;->mediaAddedOrRemoved()V

    .line 692
    :cond_2
    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mNbrMediaObjects:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mNbrMediaObjects:I

    .line 693
    return-void
.end method

.method private bodyIsHandlable(Lcom/google/android/mms/pdu/PduBody;)Z
    .locals 9
    .param p1, "body"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 2381
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v6

    .line 2382
    .local v6, "nbrOfPduParts":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxNbrMmsObjects()I

    move-result v3

    .line 2383
    .local v3, "maxNbrOfMediaItems":I
    add-int/lit8 v8, v3, 0x2

    if-gt v6, v8, :cond_2

    const/4 v2, 0x1

    .line 2385
    .local v2, "isHandlable":Z
    :goto_0
    if-eqz v2, :cond_6

    .line 2389
    const/4 v7, 0x0

    .line 2390
    .local v7, "part":Lcom/google/android/mms/pdu/PduPart;
    const/4 v1, 0x0

    .line 2391
    .local v1, "index":I
    const/4 v4, 0x0

    .line 2392
    .local v4, "nbrOfHandlableMediaobjects":I
    const/4 v5, 0x0

    .line 2394
    .local v5, "nbrOfHandlableNonMediaItems":I
    :goto_1
    if-eqz v2, :cond_6

    if-ge v1, v6, :cond_6

    .line 2395
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 2396
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    .line 2398
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isSupportedImageType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isSupportedVideoType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isSupportedAudioType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "application/ogg"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "text/x-vCard"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2403
    :cond_0
    add-int/lit8 v4, v4, 0x1

    if-le v4, v3, :cond_1

    .line 2404
    const/4 v2, 0x0

    .line 2416
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 2417
    goto :goto_1

    .line 2383
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v2    # "isHandlable":Z
    .end local v4    # "nbrOfHandlableMediaobjects":I
    .end local v5    # "nbrOfHandlableNonMediaItems":I
    .end local v7    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 2406
    .restart local v0    # "contentType":Ljava/lang/String;
    .restart local v1    # "index":I
    .restart local v2    # "isHandlable":Z
    .restart local v4    # "nbrOfHandlableMediaobjects":I
    .restart local v5    # "nbrOfHandlableNonMediaItems":I
    .restart local v7    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_3
    const-string v8, "application/smil"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "text/plain"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2408
    :cond_4
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x2

    if-le v5, v8, :cond_1

    .line 2409
    const/4 v2, 0x0

    goto :goto_2

    .line 2412
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 2419
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v4    # "nbrOfHandlableMediaobjects":I
    .end local v5    # "nbrOfHandlableNonMediaItems":I
    .end local v7    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_6
    return v2
.end method

.method private calculateImageSize(Landroid/net/Uri;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 408
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 409
    .local v0, "imageToBeAddedSize":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v1

    .line 411
    .local v1, "maxMessageSize":I
    if-ge v0, v1, :cond_0

    .end local v0    # "imageToBeAddedSize":I
    :goto_0
    return v0

    .restart local v0    # "imageToBeAddedSize":I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private checkforUnhandlableContent(Lcom/sonyericsson/conversations/model/Message;)V
    .locals 8
    .param p1, "msg"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2327
    instance-of v6, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v6, :cond_6

    .line 2328
    const/4 v1, 0x1

    .line 2329
    .local v1, "isHandlable":Z
    const/4 v3, 0x0

    .line 2332
    .local v3, "slideshow":Lcom/android/mms/model/SlideshowModel;
    :try_start_0
    check-cast p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local p1    # "msg":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2336
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->holdsSlideshow()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2337
    const/4 v1, 0x0

    .line 2371
    :cond_0
    :goto_1
    if-nez v1, :cond_5

    :goto_2
    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHoldsUnhandlableContent:Z

    .line 2376
    .end local v1    # "isHandlable":Z
    .end local v3    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :goto_3
    return-void

    .line 2339
    .restart local v1    # "isHandlable":Z
    .restart local v3    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_1
    if-eqz v3, :cond_0

    .line 2342
    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxNbrMmsObjects()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 2343
    const/4 v1, 0x0

    .line 2348
    :cond_2
    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    .line 2349
    .local v2, "nbrSlides":I
    if-eqz v1, :cond_3

    if-le v2, v4, :cond_3

    .line 2351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    add-int/lit8 v6, v2, -0x1

    if-ge v0, v6, :cond_3

    .line 2352
    invoke-virtual {v3, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2353
    const/4 v1, 0x0

    .line 2359
    .end local v0    # "i":I
    :cond_3
    if-eqz v1, :cond_0

    .line 2360
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sonyericsson/conversations/ui/Composer;->bodyIsHandlable(Lcom/google/android/mms/pdu/PduBody;)Z

    move-result v1

    goto :goto_1

    .line 2351
    .restart local v0    # "i":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0    # "i":I
    .end local v2    # "nbrSlides":I
    :cond_5
    move v4, v5

    .line 2371
    goto :goto_2

    .line 2374
    .end local v1    # "isHandlable":Z
    .end local v3    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    .restart local p1    # "msg":Lcom/sonyericsson/conversations/model/Message;
    :cond_6
    iput-boolean v5, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHoldsUnhandlableContent:Z

    goto :goto_3

    .line 2333
    .end local p1    # "msg":Lcom/sonyericsson/conversations/model/Message;
    .restart local v1    # "isHandlable":Z
    .restart local v3    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private convertToMms()V
    .locals 6

    .prologue
    .line 977
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v2, v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-nez v2, :cond_1

    .line 979
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v2, :cond_0

    .line 980
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 982
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->createDraft(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 983
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 986
    :cond_1
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_3

    .line 987
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getOrAddSlideForText(Lcom/android/mms/model/SlideshowModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 989
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    .line 991
    .local v1, "text":Lcom/android/mms/model/TextModel;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 993
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeText()Z

    .line 994
    new-instance v1, Lcom/android/mms/model/TextModel;

    .end local v1    # "text":Lcom/android/mms/model/TextModel;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    const-string v3, "text/plain"

    const-string v4, "text_0.txt"

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 996
    .restart local v1    # "text":Lcom/android/mms/model/TextModel;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 997
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 1000
    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v1    # "text":Lcom/android/mms/model/TextModel;
    :cond_3
    return-void
.end method

.method private convertToSms()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1003
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1005
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1007
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v1, v1, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-nez v1, :cond_0

    .line 1009
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/conversations/model/SmsMessage;->createDraft(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/SmsMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 1010
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 1013
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    if-eqz v1, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v0, Lcom/sonyericsson/conversations/model/SmsMessage;

    .line 1016
    .local v0, "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    .line 1022
    .end local v0    # "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    :cond_1
    :goto_0
    return-void

    .line 1020
    :cond_2
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    goto :goto_0
.end method

.method private createAddress()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1738
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    .line 1739
    .local v2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1741
    .local v1, "nrDests":I
    if-lez v1, :cond_0

    .line 1742
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1745
    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1749
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private createMmsSubjectText(Lcom/sonyericsson/conversations/model/MmsMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/MmsMessage;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1817
    const/4 v1, 0x0

    .line 1819
    .local v1, "subject":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1820
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 1821
    .local v0, "slideshow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v0, :cond_0

    .line 1824
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->getTextBasedSubject(Lcom/android/mms/model/SlideshowModel;)Ljava/lang/String;

    move-result-object v1

    .line 1825
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1827
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->getContentBasedSubject(Lcom/android/mms/model/SlideshowModel;)Ljava/lang/String;

    move-result-object v1

    .line 1832
    .end local v0    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1833
    if-eqz p2, :cond_1

    .line 1835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1840
    :cond_1
    :goto_0
    return-object v1

    .line 1838
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method private declared-synchronized deleteDraft(Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v1, 0x0

    .line 1659
    monitor-enter p0

    const/4 v0, 0x0

    .line 1660
    .local v0, "needDeleteObsoleteThreads":Z
    if-eqz p1, :cond_0

    .line 1661
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsDraftStored:Z

    .line 1662
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isStored()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1663
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->delete()V

    .line 1664
    const/4 v0, 0x1

    .line 1669
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->deleteObsoleteMessages()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    monitor-exit p0

    return v1

    .line 1659
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized deleteObsoleteMessages()Z
    .locals 4

    .prologue
    .line 1103
    monitor-enter p0

    const/4 v2, 0x0

    .line 1104
    .local v2, "needDeleteObsoleteThreads":Z
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mObsoleteMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Message;

    .line 1105
    .local v1, "msg":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->delete()V

    .line 1106
    const/4 v2, 0x1

    goto :goto_0

    .line 1109
    .end local v1    # "msg":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mObsoleteMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    monitor-exit p0

    return v2

    .line 1103
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private determineIfNeedsMms()Z
    .locals 3

    .prologue
    .line 928
    const/4 v0, 0x0

    .line 931
    .local v0, "needsMms":Z
    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForcedMessageType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 932
    const/4 v0, 0x1

    .line 972
    :cond_0
    :goto_0
    return v0

    .line 933
    :cond_1
    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForcedMessageType:I

    if-nez v1, :cond_2

    .line 934
    const/4 v0, 0x0

    goto :goto_0

    .line 940
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->isFirstSlideMedia()Z

    move-result v0

    .line 945
    if-nez v0, :cond_3

    .line 946
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasMultipleSlides()Z

    move-result v0

    .line 950
    :cond_3
    if-nez v0, :cond_4

    .line 951
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasMultipleRecipients()Z

    move-result v0

    .line 955
    :cond_4
    if-nez v0, :cond_5

    .line 956
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasEmailRecipient()Z

    move-result v0

    .line 961
    :cond_5
    if-nez v0, :cond_6

    .line 962
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasSubject()Z

    move-result v0

    .line 967
    :cond_6
    if-nez v0, :cond_0

    .line 968
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->exceedsSmsCapability()Z

    move-result v0

    goto :goto_0
.end method

.method private exceedsSmsCapability()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 911
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 924
    :cond_0
    :goto_0
    return v0

    .line 915
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->fillSmsCounterInfo(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;)V

    .line 917
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    iget v1, v1, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    iget v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mTriggerSmsSegments:I

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    iget v1, v1, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    iget v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMaxSmsSegments:I

    if-gt v1, v2, :cond_2

    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mTriggerSmsPduBytes:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getNbrOfUsedBytesInPdus(Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;)I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mTriggerSmsPduBytes:I

    if-lt v1, v2, :cond_0

    .line 921
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private fillSmsCounterInfo(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "smsCounterInfo"    # Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    .prologue
    .line 217
    iget v1, p2, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->encoding:I

    .line 218
    .local v1, "oldEncoding":I
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mUseCharacterConversion:Z

    iget v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mTriggerSmsPduBytes:I

    invoke-static {p1, p2, v2, v3}, Lcom/sonyericsson/conversations/ui/Composer;->fillSmsCounterInfo(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;ZI)V

    .line 219
    iget v0, p2, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->encoding:I

    .line 220
    .local v0, "newEncoding":I
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->getSegmentSize()I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/sonyericsson/conversations/ui/Composer;->reportEncodingChange(III)V

    .line 221
    return-void
.end method

.method private static fillSmsCounterInfo(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;ZI)V
    .locals 10
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "smsCounterInfo"    # Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;
    .param p2, "useCharacterConversion"    # Z
    .param p3, "triggerSmsPduBytes"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 235
    if-eqz p2, :cond_0

    .line 236
    invoke-static {p0, v9, v9}, Lcom/sonyericsson/conversations/util/TextUtil;->convertForCostSaving(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    .line 239
    :cond_0
    invoke-static {p0, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    .line 241
    .local v0, "calc":[I
    aget v4, v0, v6

    .line 242
    .local v4, "msgCount":I
    aget v1, v0, v9

    .line 243
    .local v1, "codeUnitCount":I
    const/4 v7, 0x2

    aget v3, v0, v7

    .line 244
    .local v3, "codeUnitsRemaining":I
    const/4 v7, 0x3

    aget v2, v0, v7

    .line 246
    .local v2, "codeUnitSize":I
    iput v4, p1, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    .line 248
    iput v2, p1, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->encoding:I

    .line 250
    array-length v7, v0

    const/4 v8, 0x5

    if-lt v7, v8, :cond_1

    .line 251
    const/4 v6, 0x4

    aget v6, v0, v6

    iput v6, p1, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrUsedCharsInSegment:I

    .line 271
    :goto_0
    if-lez p3, :cond_5

    add-int/lit8 v6, p3, -0x1

    const/16 v7, 0x8c

    if-gt v6, v7, :cond_5

    .line 272
    iget v6, p1, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->encoding:I

    packed-switch v6, :pswitch_data_0

    .line 282
    :pswitch_0
    add-int/lit8 v6, p3, -0x1

    rsub-int v6, v6, 0x8c

    sub-int v6, v3, v6

    iput v6, p1, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrRemainingCharsInSegment:I

    .line 290
    :goto_1
    return-void

    .line 253
    :cond_1
    const/4 v5, 0x0

    .line 254
    .local v5, "usedCharCount":I
    iget v7, p1, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->encoding:I

    packed-switch v7, :pswitch_data_1

    .line 269
    :goto_2
    if-gez v5, :cond_2

    move v5, v6

    .end local v5    # "usedCharCount":I
    :cond_2
    iput v5, p1, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrUsedCharsInSegment:I

    goto :goto_0

    .line 256
    .restart local v5    # "usedCharCount":I
    :pswitch_1
    add-int v7, v1, v3

    div-int/2addr v7, v4

    sub-int v5, v7, v3

    .line 258
    goto :goto_2

    .line 260
    :pswitch_2
    if-le v4, v9, :cond_3

    rsub-int/lit8 v5, v3, 0x43

    .line 262
    :goto_3
    goto :goto_2

    .line 260
    :cond_3
    rsub-int/lit8 v5, v3, 0x46

    goto :goto_3

    .line 264
    :pswitch_3
    if-le v4, v9, :cond_4

    rsub-int v5, v3, 0x86

    :goto_4
    goto :goto_2

    :cond_4
    rsub-int v5, v3, 0x8c

    goto :goto_4

    .line 274
    .end local v5    # "usedCharCount":I
    :pswitch_4
    add-int/lit8 v6, p3, -0x1

    rsub-int v6, v6, 0x8c

    mul-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x6

    div-int/lit8 v6, v6, 0x7

    sub-int v6, v3, v6

    iput v6, p1, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrRemainingCharsInSegment:I

    goto :goto_1

    .line 278
    :pswitch_5
    add-int/lit8 v6, p3, -0x1

    rsub-int v6, v6, 0x8c

    mul-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x8

    div-int/lit8 v6, v6, 0x10

    sub-int v6, v3, v6

    iput v6, p1, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrRemainingCharsInSegment:I

    goto :goto_1

    .line 287
    :cond_5
    iput v3, p1, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrRemainingCharsInSegment:I

    goto :goto_1

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 254
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private findSlideForMedia(Lcom/android/mms/model/MediaModel;)Lcom/android/mms/model/SlideModel;
    .locals 5
    .param p1, "mediaModel"    # Lcom/android/mms/model/MediaModel;

    .prologue
    .line 1302
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_2

    .line 1303
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1305
    .local v3, "slideIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/mms/model/SlideModel;>;"
    const/4 v2, 0x0

    .line 1306
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    const/4 v0, 0x0

    .line 1307
    .local v0, "media":Lcom/android/mms/model/MediaModel;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1308
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 1309
    .restart local v2    # "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1310
    .local v1, "mediaIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/mms/model/MediaModel;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1311
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "media":Lcom/android/mms/model/MediaModel;
    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 1312
    .restart local v0    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1318
    .end local v0    # "media":Lcom/android/mms/model/MediaModel;
    .end local v1    # "mediaIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/mms/model/MediaModel;>;"
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v3    # "slideIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/mms/model/SlideModel;>;"
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private generateSubject(Lcom/sonyericsson/conversations/model/MmsMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mmsMessage"    # Lcom/sonyericsson/conversations/model/MmsMessage;
    .param p2, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1590
    const/4 v0, 0x0

    .line 1591
    .local v0, "mmsSubject":Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1593
    move-object v0, p2

    .line 1608
    :cond_0
    :goto_0
    return-object v0

    .line 1595
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v0

    .line 1596
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->subjectIsFixed()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAutoCreateSubjectEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1598
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/conversations/ui/Composer;->createMmsSubjectText(Lcom/sonyericsson/conversations/model/MmsMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1599
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " \t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1604
    const-string v1, " \t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getContentBasedSubject(Lcom/android/mms/model/SlideshowModel;)Ljava/lang/String;
    .locals 10
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 1873
    const/4 v6, 0x0

    .line 1874
    .local v6, "subject":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1875
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    .line 1876
    .local v4, "nbrSlides":I
    const/4 v5, 0x0

    .line 1877
    .local v5, "slide":Lcom/android/mms/model/SlideModel;
    const/4 v7, 0x0

    .line 1878
    .local v7, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1879
    invoke-virtual {p1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    .line 1880
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1881
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    .line 1882
    .local v3, "image":Lcom/android/mms/model/ImageModel;
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 1883
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/conversations/ui/Composer;->getSubjectFromContentUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1884
    if-eqz v6, :cond_1

    .line 1914
    .end local v2    # "i":I
    .end local v3    # "image":Lcom/android/mms/model/ImageModel;
    .end local v4    # "nbrSlides":I
    .end local v5    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_0
    return-object v6

    .line 1888
    .restart local v2    # "i":I
    .restart local v4    # "nbrSlides":I
    .restart local v5    # "slide":Lcom/android/mms/model/SlideModel;
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1889
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v1

    .line 1890
    .local v1, "audio":Lcom/android/mms/model/AudioModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 1891
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/conversations/ui/Composer;->getSubjectFromContentUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1892
    if-nez v6, :cond_0

    .line 1896
    .end local v1    # "audio":Lcom/android/mms/model/AudioModel;
    :cond_2
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1897
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v8

    .line 1898
    .local v8, "video":Lcom/android/mms/model/VideoModel;
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 1899
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/conversations/ui/Composer;->getSubjectFromContentUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1900
    if-nez v6, :cond_0

    .line 1904
    .end local v8    # "video":Lcom/android/mms/model/VideoModel;
    :cond_3
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAttachment()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1905
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getAttachment()Lcom/sonyericsson/conversations/model/AttachmentModel;

    move-result-object v0

    .line 1906
    .local v0, "attachment":Lcom/sonyericsson/conversations/model/AttachmentModel;
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 1907
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/conversations/ui/Composer;->getSubjectFromContentUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1908
    if-nez v6, :cond_0

    .line 1878
    .end local v0    # "attachment":Lcom/sonyericsson/conversations/model/AttachmentModel;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getMmsDraftMessage(J)Lcom/sonyericsson/conversations/model/MmsMessage;
    .locals 8
    .param p1, "threadId"    # J

    .prologue
    const/4 v4, 0x0

    .line 1523
    const/4 v7, 0x0

    .line 1525
    .local v7, "mmsDraftMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    .line 1526
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/sonyericsson/conversations/model/MessageProjection;->MMS_PROJECTION:[Ljava/lang/String;

    .line 1527
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1528
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1530
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1532
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/sonyericsson/conversations/model/MessageProjection;

    const/4 v5, 0x2

    invoke-direct {v4, v6, v5}, Lcom/sonyericsson/conversations/model/MessageProjection;-><init>(Landroid/database/Cursor;I)V

    invoke-static {v0, v6, v4}, Lcom/sonyericsson/conversations/model/MmsMessage;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)Lcom/sonyericsson/conversations/model/MmsMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1537
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1541
    :cond_1
    return-object v7

    .line 1537
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getNbrOfUsedBytesInPdus(Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;)I
    .locals 2
    .param p0, "smsCounterInfo"    # Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    .prologue
    .line 1085
    const/4 v0, 0x0

    .line 1087
    .local v0, "nbrUsedBytesInLastPdu":I
    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->encoding:I

    packed-switch v1, :pswitch_data_0

    .line 1095
    :pswitch_0
    iget v0, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrUsedCharsInSegment:I

    .line 1099
    :goto_0
    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit16 v1, v1, 0x8c

    add-int/2addr v1, v0

    return v1

    .line 1089
    :pswitch_1
    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrUsedCharsInSegment:I

    mul-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v0, v1, 0x8

    .line 1090
    goto :goto_0

    .line 1092
    :pswitch_2
    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrUsedCharsInSegment:I

    mul-int/lit8 v0, v1, 0x2

    .line 1093
    goto :goto_0

    .line 1087
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getOrAddSlideForMedia(Lcom/android/mms/model/SlideshowModel;)Lcom/android/mms/model/SlideModel;
    .locals 4
    .param p0, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 194
    .local v1, "s":Lcom/android/mms/model/SlideModel;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/Composer;->slideHasMedia(Lcom/android/mms/model/SlideModel;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    .end local v1    # "s":Lcom/android/mms/model/SlideModel;
    :goto_0
    return-object v1

    .line 201
    :cond_1
    new-instance v2, Lcom/android/mms/model/SlideModel;

    invoke-direct {v2, p0}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 202
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    move-object v1, v2

    .line 204
    goto :goto_0
.end method

.method private static getOrAddSlideForText(Lcom/android/mms/model/SlideshowModel;)Lcom/android/mms/model/SlideModel;
    .locals 3
    .param p0, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    new-instance v1, Lcom/android/mms/model/SlideModel;

    invoke-direct {v1, p0}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 174
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 179
    :goto_0
    return-object v1

    .line 176
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 177
    .local v0, "nbrSlides":I
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .restart local v1    # "slide":Lcom/android/mms/model/SlideModel;
    goto :goto_0
.end method

.method private getSmsDraftMessage(J)Lcom/sonyericsson/conversations/model/SmsMessage;
    .locals 8
    .param p1, "threadId"    # J

    .prologue
    const/4 v4, 0x0

    .line 1502
    const/4 v7, 0x0

    .line 1503
    .local v7, "smsDraftMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    sget-object v1, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    .line 1504
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/sonyericsson/conversations/model/MessageProjection;->SMS_PROJECTION:[Ljava/lang/String;

    .line 1505
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1506
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1508
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1510
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/sonyericsson/conversations/model/MessageProjection;

    const/4 v5, 0x1

    invoke-direct {v4, v6, v5}, Lcom/sonyericsson/conversations/model/MessageProjection;-><init>(Landroid/database/Cursor;I)V

    invoke-static {v0, v6, v4}, Lcom/sonyericsson/conversations/model/SmsMessage;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)Lcom/sonyericsson/conversations/model/SmsMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1515
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1519
    :cond_1
    return-object v7

    .line 1515
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSubjectFromContentUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1954
    if-nez p1, :cond_1

    .line 2002
    :cond_0
    :goto_0
    return-object v3

    .line 1958
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 1959
    .local v9, "scheme":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 1963
    const/4 v11, 0x0

    .line 1964
    .local v11, "subject":Ljava/lang/String;
    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1967
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 1968
    .local v7, "filename":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/sonyericsson/conversations/ui/Composer;->getSubjectFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .end local v7    # "filename":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v3, v11

    .line 2002
    goto :goto_0

    .line 1969
    :cond_3
    const-string v0, "content"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1972
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 1973
    .local v10, "ssp":Ljava/lang/String;
    if-eqz v10, :cond_4

    const-string v0, "//mms/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1977
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/Composer;->getSubjectFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 1979
    :cond_4
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_display_name"

    aput-object v0, v2, v1

    .line 1983
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1985
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1987
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1988
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1989
    .restart local v7    # "filename":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x28

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1991
    const/16 v0, 0x2e

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 1992
    .local v8, "index":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_5

    .line 1993
    const/4 v0, 0x0

    invoke-virtual {v11, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 1997
    .end local v7    # "filename":Ljava/lang/String;
    .end local v8    # "index":I
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSubjectFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2008
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2009
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2010
    .local v1, "subject":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2011
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 2012
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2018
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return-object v1

    .line 2015
    .end local v1    # "subject":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    .restart local v1    # "subject":Ljava/lang/String;
    goto :goto_0
.end method

.method private getSubjectFromMediaUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1919
    const/4 v9, 0x0

    .line 1920
    .local v9, "subject":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_display_name"

    aput-object v0, v2, v1

    .line 1924
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1926
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1928
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1929
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1930
    .local v7, "filename":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x28

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1932
    const/16 v0, 0x2e

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 1933
    .local v8, "index":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    .line 1934
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1938
    .end local v7    # "filename":Ljava/lang/String;
    .end local v8    # "index":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1941
    :cond_1
    return-object v9

    .line 1938
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getTextBasedSubject(Lcom/android/mms/model/SlideshowModel;)Ljava/lang/String;
    .locals 8
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 1845
    const/4 v3, 0x0

    .line 1846
    .local v3, "subject":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1847
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 1848
    .local v1, "nbrSlides":I
    const/4 v2, 0x0

    .line 1849
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    const/4 v4, 0x0

    .line 1852
    .local v4, "text":Ljava/lang/String;
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1853
    invoke-virtual {p1, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 1854
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1855
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    .line 1856
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1858
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x28

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1860
    const-string v5, "\\r\\n|\\r|\\n"

    const-string v6, " "

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1861
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1867
    .end local v0    # "i":I
    .end local v1    # "nbrSlides":I
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v4    # "text":Ljava/lang/String;
    :cond_0
    return-object v3

    .line 1852
    .restart local v0    # "i":I
    .restart local v1    # "nbrSlides":I
    .restart local v2    # "slide":Lcom/android/mms/model/SlideModel;
    .restart local v4    # "text":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private hasEmailRecipient()Z
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->hasEmailParticipants()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->isMessageEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasMultipleRecipients()Z
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mTriggerRecipients:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasMultipleSlides()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 894
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasSlideshow()Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasSubject()Z
    .locals 1

    .prologue
    .line 906
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFirstSlideMedia()Z
    .locals 4

    .prologue
    .line 881
    const/4 v0, 0x0

    .line 883
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 884
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 885
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/Composer;->slideHasMedia(Lcom/android/mms/model/SlideModel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 886
    const/4 v0, 0x1

    .line 890
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    return v0
.end method

.method public static isTextTooLong(Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;)Z
    .locals 4
    .param p0, "smsCounterInfo"    # Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    .prologue
    .line 2304
    const/4 v0, 0x0

    .line 2305
    .local v0, "isTooLong":Z
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getNbrOfUsedBytesInPdus(Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;)I

    move-result v1

    .line 2307
    .local v1, "nbrOfBytesUsedInPdus":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTriggerSmsPduBytes()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTriggerSmsPduBytes()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 2309
    const/4 v0, 0x1

    .line 2312
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSmsSegments()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    if-ge v2, v3, :cond_1

    .line 2313
    const/4 v0, 0x1

    .line 2316
    :cond_1
    return v0
.end method

.method public static isTextTooLong(Ljava/lang/String;)Z
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2282
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2296
    :cond_0
    :goto_0
    return v2

    .line 2288
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2289
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0x2710

    if-le v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 2291
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCharacterConversionEnabled()Z

    move-result v1

    .line 2292
    .local v1, "useCharacterConversion":Z
    new-instance v0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;-><init>()V

    .line 2293
    .local v0, "smsCounterInfo":Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTriggerSmsPduBytes()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->fillSmsCounterInfo(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;ZI)V

    .line 2296
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isTextTooLong(Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isUserDefinedSubject(Ljava/lang/String;)Z
    .locals 1
    .param p0, "subject"    # Ljava/lang/String;

    .prologue
    .line 2119
    if-eqz p0, :cond_0

    const-string v0, " \t"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveLocationToLastSlide()V
    .locals 4

    .prologue
    .line 723
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_0

    .line 725
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 726
    .local v1, "nbrSlides":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    .line 727
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 728
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/ImageModel;->isLocation()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 729
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v0}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 730
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 735
    .end local v0    # "i":I
    .end local v1    # "nbrSlides":I
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void

    .line 726
    .restart local v0    # "i":I
    .restart local v1    # "nbrSlides":I
    .restart local v2    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private moveTextToLastSlide()V
    .locals 6

    .prologue
    .line 758
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_0

    .line 760
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 761
    .local v1, "nbrSlides":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_0

    .line 762
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 763
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 764
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    .line 765
    .local v3, "text":Lcom/android/mms/model/TextModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->removeText()Z

    .line 767
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 768
    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 774
    .end local v0    # "i":I
    .end local v1    # "nbrSlides":I
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v3    # "text":Lcom/android/mms/model/TextModel;
    :cond_0
    return-void

    .line 761
    .restart local v0    # "i":I
    .restart local v1    # "nbrSlides":I
    .restart local v2    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private notifyTheListener(Lcom/sonyericsson/conversations/model/Message;)V
    .locals 5
    .param p1, "oldMessage"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v2, -0x1

    .line 1025
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eq p1, v3, :cond_3

    .line 1027
    if-eqz p1, :cond_1

    iget v1, p1, Lcom/sonyericsson/conversations/model/Message;->type:I

    .line 1028
    .local v1, "oldType":I
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget v0, v2, Lcom/sonyericsson/conversations/model/Message;->type:I

    .line 1030
    .local v0, "newType":I
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mListener:Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;

    invoke-interface {v2, v1, v0}, Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;->messageTypeChanged(II)V

    .line 1041
    .end local v0    # "newType":I
    .end local v1    # "oldType":I
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 1027
    goto :goto_0

    .restart local v1    # "oldType":I
    :cond_2
    move v0, v2

    .line 1028
    goto :goto_1

    .line 1031
    .end local v1    # "oldType":I
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v2, v2, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mOldSmsCounterInfo:Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1039
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mListener:Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mOldSmsCounterInfo:Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    invoke-interface {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;->smsCounterInfoChanged(Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;)V

    goto :goto_2
.end method

.method private reCalculateImageSize(I)I
    .locals 8
    .param p1, "imageSize"    # I

    .prologue
    .line 416
    const/4 v5, 0x0

    .line 417
    .local v5, "totalImageSize":I
    const/4 v3, 0x0

    .line 418
    .local v3, "nbrOfExistingImages":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v2

    .line 422
    .local v2, "maxMessageSize":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 423
    .local v4, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 424
    add-int/lit8 v3, v3, 0x1

    .line 425
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_0

    .line 435
    .end local v4    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v6

    sub-int v0, v6, v5

    .line 445
    .local v0, "currentUnResizeableSize":I
    sub-int v6, v2, v0

    add-int/lit8 v7, v3, 0x1

    div-int p1, v6, v7

    .line 449
    return p1
.end method

.method private refreshMessage(Z)V
    .locals 4
    .param p1, "notifyListener"    # Z

    .prologue
    .line 1049
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 1050
    .local v1, "oldMessage":Lcom/sonyericsson/conversations/model/Message;
    const/4 v0, 0x0

    .line 1052
    .local v0, "needsMms":Z
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mOldSmsCounterInfo:Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->copyTo(Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;)V

    .line 1053
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    # invokes: Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->clear()V
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->access$000(Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;)V

    .line 1056
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1057
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->determineIfNeedsMms()Z

    move-result v0

    .line 1064
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 1065
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->convertToMms()V

    .line 1070
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->isStored()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1075
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mObsoleteMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mListener:Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;

    if-eqz v2, :cond_2

    .line 1079
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->notifyTheListener(Lcom/sonyericsson/conversations/model/Message;)V

    .line 1081
    :cond_2
    return-void

    .line 1058
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1061
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/conversations/ui/Composer;->fillSmsCounterInfo(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;)V

    goto :goto_0

    .line 1067
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->convertToSms()V

    goto :goto_1
.end method

.method private reportEncodingChange(III)V
    .locals 1
    .param p1, "oldEncoding"    # I
    .param p2, "newEncoding"    # I
    .param p3, "newSmsSize"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

    if-nez v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    if-eq p1, p2, :cond_0

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;->onEncodingChanged(III)V

    goto :goto_0
.end method

.method private declared-synchronized resetMessage()V
    .locals 2

    .prologue
    .line 2056
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v0, :cond_0

    .line 2057
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sonyericsson/conversations/model/Message;->type:I

    .line 2058
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/Message;->setPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2060
    :cond_0
    monitor-exit p0

    return-void

    .line 2056
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resizeAllAddedImages(I)V
    .locals 10
    .param p1, "imageSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/model/SlideModel;

    .line 460
    .local v9, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 462
    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->isLocation()Z

    move-result v6

    .line 463
    .local v6, "isLoc":Z
    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 464
    .local v1, "tmpUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v3

    const/4 v4, 0x1

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/sonyericsson/conversations/util/MediaUtil;->resizeImageWithMemoryChecking(Landroid/content/Context;Landroid/net/Uri;IIZIZ)Landroid/net/Uri;

    move-result-object v8

    .line 467
    .local v8, "resizedUri":Landroid/net/Uri;
    if-eqz v8, :cond_0

    .line 468
    new-instance v0, Lcom/android/mms/model/ImageModel;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v8, v3, v6}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V

    invoke-virtual {v9, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_0

    .line 472
    .end local v1    # "tmpUri":Landroid/net/Uri;
    .end local v6    # "isLoc":Z
    .end local v8    # "resizedUri":Landroid/net/Uri;
    .end local v9    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    return-void
.end method

.method private saveDraft(Lcom/sonyericsson/conversations/model/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1782
    instance-of v0, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v0, :cond_0

    .line 1783
    check-cast p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/Composer;->saveMmsDraft(Lcom/sonyericsson/conversations/model/MmsMessage;)V

    .line 1793
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->deleteObsoleteMessages()Z

    .line 1794
    return-void

    .line 1784
    .restart local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    instance-of v0, p1, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v0, :cond_1

    .line 1785
    check-cast p1, Lcom/sonyericsson/conversations/model/SmsMessage;

    .end local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/Composer;->saveSmsDraft(Lcom/sonyericsson/conversations/model/SmsMessage;)V

    goto :goto_0

    .line 1787
    .restart local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsDraftStored:Z

    goto :goto_0
.end method

.method private saveMmsDraft(Lcom/sonyericsson/conversations/model/MmsMessage;)V
    .locals 9
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/MmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1697
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 1698
    .local v0, "messageUri":Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    .line 1699
    .local v3, "slideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1700
    .local v1, "pb":Lcom/google/android/mms/pdu/PduBody;
    new-instance v2, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1702
    .local v2, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/Composer;->setRecipients(Lcom/google/android/mms/pdu/SendReq;)V

    .line 1704
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v2, v5, v6}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 1705
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1706
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getRawPriority()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V

    .line 1708
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/conversations/ui/Composer;->generateSubject(Lcom/sonyericsson/conversations/model/MmsMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1711
    .local v4, "subject":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1712
    new-instance v5, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v5, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1715
    :cond_0
    if-eqz v0, :cond_1

    .line 1716
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/Composer;->mPduPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;

    sget-object v6, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v2, v6}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1717
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/Composer;->deleteDraft(Lcom/sonyericsson/conversations/model/Message;)Z

    .line 1718
    invoke-virtual {p1, v0}, Lcom/sonyericsson/conversations/model/Message;->setUri(Landroid/net/Uri;)V

    .line 1724
    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1731
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sonyericsson/conversations/util/MediaUtil;->clearResizedImages(Landroid/content/Context;)V

    .line 1732
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsDraftStored:Z

    .line 1733
    return-void

    .line 1721
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/Composer;->mPduPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;

    sget-object v6, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v2, v6}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1722
    invoke-virtual {p1, v0}, Lcom/sonyericsson/conversations/model/Message;->setUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private saveSmsDraft(Lcom/sonyericsson/conversations/model/SmsMessage;)V
    .locals 13
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/SmsMessage;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1753
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    move v11, v7

    .line 1754
    .local v11, "draftExists":Z
    :goto_0
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v0

    .line 1756
    .local v0, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->createAddress()Ljava/lang/String;

    move-result-object v3

    .line 1761
    .local v3, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v1, v1, v4

    if-nez v1, :cond_0

    .line 1762
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(Landroid/content/Context;Ljava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    .line 1765
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sonyericsson/provider/TelephonyExtra$SmsExtra;->MULTIPLE_DRAFTS_URI:Landroid/net/Uri;

    iget-object v4, p1, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v9

    invoke-interface/range {v0 .. v10}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v12

    .line 1769
    .local v12, "newMessageUri":Landroid/net/Uri;
    if-eqz v11, :cond_1

    .line 1772
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->delete()V

    .line 1776
    :cond_1
    invoke-virtual {p1, v12}, Lcom/sonyericsson/conversations/model/Message;->setUri(Landroid/net/Uri;)V

    .line 1777
    invoke-direct {p0, v12}, Lcom/sonyericsson/conversations/ui/Composer;->updateSmsPriority(Landroid/net/Uri;)V

    .line 1778
    iput-boolean v7, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsDraftStored:Z

    .line 1779
    return-void

    .end local v0    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    .end local v3    # "address":Ljava/lang/String;
    .end local v11    # "draftExists":Z
    .end local v12    # "newMessageUri":Landroid/net/Uri;
    :cond_2
    move v11, v8

    .line 1753
    goto :goto_0
.end method

.method private setRecipients(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 8
    .param p1, "sendReq"    # Lcom/google/android/mms/pdu/SendReq;

    .prologue
    .line 1673
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v5

    .line 1674
    .local v5, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 1676
    .local v3, "nrDests":I
    if-lez v3, :cond_2

    .line 1677
    new-array v1, v3, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1681
    .local v1, "encodedAddresses":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1684
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/model/Participant;

    .line 1685
    .local v4, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1686
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1687
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/TextUtil;->removeRedundantChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1689
    :cond_0
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v6, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v6, v1, v2

    .line 1681
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1692
    .end local v0    # "address":Ljava/lang/String;
    .end local v4    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1694
    .end local v1    # "encodedAddresses":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private static slideHasMedia(Lcom/android/mms/model/SlideModel;)Z
    .locals 1
    .param p0, "slide"    # Lcom/android/mms/model/SlideModel;

    .prologue
    .line 208
    if-eqz p0, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static slideshowIsEmpty(Lcom/android/mms/model/SlideshowModel;)Z
    .locals 5
    .param p0, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1379
    if-nez p0, :cond_1

    .line 1399
    :cond_0
    :goto_0
    return v2

    .line 1383
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1387
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1388
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/Composer;->slideHasMedia(Lcom/android/mms/model/SlideModel;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 1390
    goto :goto_0

    .line 1391
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1392
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 1394
    goto :goto_0
.end method

.method private updateSmsPriority(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 1801
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1802
    .local v1, "priorityValues":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getRawPriority()I

    move-result v0

    .line 1803
    .local v0, "priority":I
    const-string v2, "semc_message_priority"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1804
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1805
    return-void
.end method


# virtual methods
.method public declared-synchronized addAttachment(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 588
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/Composer;->addAttachment(Landroid/net/Uri;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    monitor-exit p0

    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAttachment(Landroid/net/Uri;Z)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "showToast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 603
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/sonyericsson/conversations/model/AttachmentModel;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/sonyericsson/conversations/model/AttachmentModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/conversations/ui/Composer;->addAttachment(Lcom/android/mms/model/MediaModel;Z)V
    :try_end_0
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    monitor-exit p0

    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "cr":Lcom/android/mms/ContentRestrictionException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 606
    new-instance v1, Lcom/google/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content restrictions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    .end local v0    # "cr":Lcom/android/mms/ContentRestrictionException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addAudio(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 619
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/Composer;->addAudio(Landroid/net/Uri;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    monitor-exit p0

    return-void

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAudio(Landroid/net/Uri;Z)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "showToast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 635
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sonyericsson/conversations/util/DrmUtil;->isForwardable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 636
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Content must not be sent"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    :catch_0
    move-exception v2

    .line 641
    .local v2, "uct":Lcom/android/mms/UnsupportContentTypeException;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 642
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, "mimeType":Ljava/lang/String;
    new-instance v3, Lcom/google/android/mms/MmsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported audio type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "uct":Lcom/android/mms/UnsupportContentTypeException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 639
    :cond_0
    :try_start_2
    new-instance v3, Lcom/android/mms/model/AudioModel;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p1}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p0, v3, p2}, Lcom/sonyericsson/conversations/ui/Composer;->addAttachment(Lcom/android/mms/model/MediaModel;Z)V
    :try_end_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 648
    monitor-exit p0

    return-void

    .line 644
    :catch_1
    move-exception v0

    .line 645
    .local v0, "cr":Lcom/android/mms/ContentRestrictionException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 646
    new-instance v3, Lcom/google/android/mms/MmsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Audio content restrictions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized addImage(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 399
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/Composer;->addImage(Landroid/net/Uri;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addImage(Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "showToast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 404
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/conversations/ui/Composer;->addImage(Landroid/net/Uri;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    monitor-exit p0

    return-void

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addImage(Landroid/net/Uri;ZZ)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "showToast"    # Z
    .param p3, "isLocation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 506
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/sonyericsson/conversations/util/DrmUtil;->isForwardable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 507
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Content must not be sent"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 513
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/Composer;->calculateImageSize(Landroid/net/Uri;)I

    move-result v1

    .line 516
    .local v1, "imageSize":I
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasSlideshow()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 517
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->reCalculateImageSize(I)I

    move-result v1

    .line 518
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->resizeAllAddedImages(I)V

    .line 522
    :cond_1
    invoke-direct {p0, p1, v1, p3, p2}, Lcom/sonyericsson/conversations/ui/Composer;->addCurrentImage(Landroid/net/Uri;IZZ)V
    :try_end_1
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    monitor-exit p0

    return-void

    .line 523
    .end local v1    # "imageSize":I
    :catch_0
    move-exception v4

    .line 524
    .local v4, "re":Lcom/sonyericsson/conversations/util/ResizeException;
    :try_start_2
    const-string v6, "Composer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resize error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/util/ResizeException;->getResizeError()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    throw v4

    .line 526
    .end local v4    # "re":Lcom/sonyericsson/conversations/util/ResizeException;
    :catch_1
    move-exception v2

    .line 527
    .local v2, "io":Ljava/io/IOException;
    new-instance v6, Lcom/google/android/mms/MmsException;

    const-string v7, "Could not add image"

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 528
    .end local v2    # "io":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 529
    .local v5, "uct":Lcom/android/mms/UnsupportContentTypeException;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 530
    .local v3, "mimeType":Ljava/lang/String;
    new-instance v6, Lcom/google/android/mms/MmsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported image type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 531
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v5    # "uct":Lcom/android/mms/UnsupportContentTypeException;
    :catch_3
    move-exception v0

    .line 532
    .local v0, "cr":Lcom/android/mms/ContentRestrictionException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 533
    new-instance v6, Lcom/google/android/mms/MmsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Image content restrictions: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized addSlideshowModel(Lcom/sonyericsson/conversations/model/Message;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 652
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHasSlideshowAttachment:Z

    .line 653
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/conversations/ui/Composer;->loadSlideshowModelFromMessageUri(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;)V

    .line 654
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 656
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v0, v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->setSlideshow(Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    :cond_0
    monitor-exit p0

    return-void

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addTextOnlySlide(Lcom/android/mms/model/SlideshowModel;Lcom/sonyericsson/conversations/model/Message;)V
    .locals 1
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 662
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHasSlideshowAttachment:Z

    .line 663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHoldsUnhandlableContent:Z

    .line 664
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2}, Lcom/sonyericsson/conversations/ui/Composer;->loadSlideshowModelFromMessageUri(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    monitor-exit p0

    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addVideo(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 546
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/Composer;->addVideo(Landroid/net/Uri;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    monitor-exit p0

    return-void

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addVideo(Landroid/net/Uri;Z)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "showToast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 562
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sonyericsson/conversations/util/DrmUtil;->isForwardable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 563
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Content must not be sent"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    :catch_0
    move-exception v2

    .line 571
    .local v2, "uct":Lcom/android/mms/UnsupportContentTypeException;
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "mimeType":Ljava/lang/String;
    new-instance v3, Lcom/google/android/mms/MmsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported video type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "uct":Lcom/android/mms/UnsupportContentTypeException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 568
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/ModelCache;->clearVideoThumbnailCache()V

    .line 569
    new-instance v3, Lcom/android/mms/model/VideoModel;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    invoke-direct {p0, v3, p2}, Lcom/sonyericsson/conversations/ui/Composer;->addMedia(Lcom/android/mms/model/RegionMediaModel;Z)V
    :try_end_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 577
    monitor-exit p0

    return-void

    .line 573
    :catch_1
    move-exception v0

    .line 574
    .local v0, "cr":Lcom/android/mms/ContentRestrictionException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 575
    new-instance v3, Lcom/google/android/mms/MmsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video content restrictions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized allowEmptyMessage(Z)V
    .locals 1
    .param p1, "allowEmptyMessages"    # Z

    .prologue
    .line 873
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mAllowEmptyMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    monitor-exit p0

    return-void

    .line 873
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 1562
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->onExternalTaskStart()V

    .line 1565
    new-instance v0, Lcom/sonyericsson/conversations/ui/Composer$1;

    const-string v1, "ComposerClearThread"

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/Composer$1;-><init>(Lcom/sonyericsson/conversations/ui/Composer;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1577
    monitor-exit p0

    return-void

    .line 1562
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteAllMedia()V
    .locals 3

    .prologue
    .line 1150
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1153
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 1155
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 1156
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 1157
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 1158
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeAttachment()Z

    .line 1152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1160
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mNbrMediaObjects:I

    .line 1161
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 1162
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/Composer;->refreshMessage(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    return-void

    .line 1150
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized deleteAllSlides()V
    .locals 1

    .prologue
    .line 1274
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->clear()V

    .line 1276
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mNbrMediaObjects:I

    .line 1277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHoldsUnhandlableContent:Z

    .line 1278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHasSlideshowAttachment:Z

    .line 1279
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForcedMessageType:I

    .line 1280
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    .line 1282
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 1289
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->forceMessageType(I)V

    .line 1290
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->deleteDraft(Lcom/sonyericsson/conversations/model/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    :cond_0
    monitor-exit p0

    return-void

    .line 1285
    :cond_1
    :try_start_1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->setSubject(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteMedia(I)V
    .locals 5
    .param p1, "slideNumber"    # I

    .prologue
    const/4 v4, 0x1

    .line 1174
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 1175
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 1177
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 1178
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 1179
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 1180
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeAttachment()Z

    .line 1182
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 1183
    .local v0, "nbrSlides":I
    add-int/lit8 v3, v0, -0x1

    if-ne p1, v3, :cond_3

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1187
    if-le v0, v4, :cond_0

    .line 1196
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    .line 1197
    .local v2, "text":Lcom/android/mms/model/TextModel;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 1199
    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 1200
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 1208
    .end local v2    # "text":Lcom/android/mms/model/TextModel;
    :cond_0
    :goto_0
    iget v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mNbrMediaObjects:I

    if-lez v3, :cond_4

    .line 1209
    iget v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mNbrMediaObjects:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mNbrMediaObjects:I

    .line 1216
    :cond_1
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 1217
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/Composer;->refreshMessage(Z)V

    .line 1219
    iget v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mNbrMediaObjects:I

    if-eqz v3, :cond_2

    .line 1224
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mListener:Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;

    invoke-interface {v3}, Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;->mediaAddedOrRemoved()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1227
    .end local v0    # "nbrSlides":I
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_2
    monitor-exit p0

    return-void

    .line 1205
    .restart local v0    # "nbrSlides":I
    .restart local v1    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1174
    .end local v0    # "nbrSlides":I
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1210
    .restart local v0    # "nbrSlides":I
    .restart local v1    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/Composer;->isUserDefinedSubject(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1213
    const-string v3, ""

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized deleteMedia(Lcom/android/mms/model/MediaModel;)Z
    .locals 3
    .param p1, "mediaModel"    # Lcom/android/mms/model/MediaModel;

    .prologue
    const/4 v1, 0x1

    .line 1232
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1233
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/Composer;->findSlideForMedia(Lcom/android/mms/model/MediaModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 1234
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_4

    .line 1235
    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1236
    iget v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mNbrMediaObjects:I

    if-lez v2, :cond_3

    .line 1237
    iget v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mNbrMediaObjects:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mNbrMediaObjects:I

    .line 1245
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1246
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->remove(Ljava/lang/Object;)Z

    .line 1249
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 1250
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/Composer;->refreshMessage(Z)V

    .line 1252
    iget v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mNbrMediaObjects:I

    if-eqz v2, :cond_2

    .line 1257
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mListener:Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;

    invoke-interface {v2}, Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;->mediaAddedOrRemoved()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1264
    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_2
    :goto_1
    monitor-exit p0

    return v1

    .line 1238
    .restart local v0    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/Composer;->isUserDefinedSubject(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1241
    const-string v2, ""

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1232
    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1264
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public declared-synchronized discardDraftMessages()V
    .locals 6

    .prologue
    .line 1115
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mObsoleteMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/model/Message;

    .line 1116
    .local v3, "msg":Lcom/sonyericsson/conversations/model/Message;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/sonyericsson/conversations/model/MmsMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 1118
    :try_start_1
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v4

    check-cast v3, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local v3    # "msg":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/model/ModelCache;->removeSlideshow(Landroid/net/Uri;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    .local v0, "e":Lcom/google/android/mms/MmsException;
    :try_start_2
    const-string v4, "Composer"

    const-string v5, "Could not remove Slideshow cache "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1115
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1127
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mObsoleteMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1128
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mObsoleteMessages:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1132
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getSaveDraftMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    .line 1133
    .local v2, "message":Lcom/sonyericsson/conversations/model/Message;
    if-eqz v2, :cond_3

    instance-of v4, v2, Lcom/sonyericsson/conversations/model/MmsMessage;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_3

    .line 1135
    :try_start_4
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v4

    check-cast v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local v2    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/model/ModelCache;->removeSlideshow(Landroid/net/Uri;)V
    :try_end_4
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1141
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 1136
    :catch_1
    move-exception v0

    .line 1137
    .restart local v0    # "e":Lcom/google/android/mms/MmsException;
    :try_start_5
    const-string v4, "Composer"

    const-string v5, "Could not remove Slideshow cache "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized forceMessageType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 868
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForcedMessageType:I

    .line 869
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->refreshMessage(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    monitor-exit p0

    return-void

    .line 868
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConversation()Lcom/sonyericsson/conversations/model/Conversation;
    .locals 1

    .prologue
    .line 2447
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentMediaItemNbr()I
    .locals 1

    .prologue
    .line 2262
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getSupportedMediaItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessage()Lcom/sonyericsson/conversations/model/Message;
    .locals 1

    .prologue
    .line 857
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessagePriority()I
    .locals 1

    .prologue
    .line 2434
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessagePriority:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessageType()I
    .locals 1

    .prologue
    .line 2212
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget v0, v0, Lcom/sonyericsson/conversations/model/Message;->type:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSaveDraftMessage()Lcom/sonyericsson/conversations/model/Message;
    .locals 2

    .prologue
    .line 1545
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    .line 1546
    .local v0, "message":Lcom/sonyericsson/conversations/model/Message;
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    if-eqz v1, :cond_1

    .line 1547
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->isMessageEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1548
    const/4 v0, 0x0

    .line 1552
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1556
    :goto_1
    monitor-exit p0

    return-object v0

    .line 1550
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsDraftStored:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1545
    .end local v0    # "message":Lcom/sonyericsson/conversations/model/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1554
    .restart local v0    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getSaveDraftSubject()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1580
    monitor-enter p0

    const/4 v3, 0x0

    .line 1581
    .local v3, "subject":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    .line 1582
    .local v1, "message":Lcom/sonyericsson/conversations/model/Message;
    instance-of v4, v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v4, :cond_0

    .line 1583
    move-object v0, v1

    check-cast v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    move-object v2, v0

    .line 1584
    .local v2, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/conversations/ui/Composer;->generateSubject(Lcom/sonyericsson/conversations/model/MmsMessage;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1586
    .end local v2    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    :cond_0
    monitor-exit p0

    return-object v3

    .line 1580
    .end local v1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 1408
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSmsCounterInfo()Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;
    .locals 1

    .prologue
    .line 2223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSupportedMediaItems()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2233
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2234
    .local v1, "media":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2236
    const/4 v3, 0x0

    .local v3, "s":I
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 2237
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 2238
    .local v4, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v4, :cond_3

    .line 2239
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2240
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2242
    :cond_0
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2243
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2245
    :cond_1
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2246
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2248
    :cond_2
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasAttachment()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2249
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getAttachment()Lcom/sonyericsson/conversations/model/AttachmentModel;

    move-result-object v0

    .line 2250
    .local v0, "attachment":Lcom/sonyericsson/conversations/model/AttachmentModel;
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 2251
    .local v2, "mimeType":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v5, "text/x-vCard"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2252
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getAttachment()Lcom/sonyericsson/conversations/model/AttachmentModel;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2236
    .end local v0    # "attachment":Lcom/sonyericsson/conversations/model/AttachmentModel;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2258
    .end local v3    # "s":I
    .end local v4    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_4
    monitor-exit p0

    return-object v1

    .line 2233
    .end local v1    # "media":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1417
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleEmptySlideshow()V
    .locals 1

    .prologue
    .line 1322
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->allowEmptyMessage(Z)V

    .line 1323
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->hasSlideshowAttachment(Z)V

    .line 1324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHoldsUnhandlableContent:Z

    .line 1325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsDraftStored:Z

    .line 1326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1327
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;)V

    .line 1328
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->setSubject(Ljava/lang/String;)V

    .line 1329
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->forceMessageType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1330
    monitor-exit p0

    return-void

    .line 1322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleNonEmptySlideshow(Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;)V
    .locals 8
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1334
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    .line 1338
    .local v4, "nbrSlides":I
    const/4 v0, 0x0

    .line 1339
    .local v0, "hasMedia":Z
    const/4 v1, 0x0

    .line 1340
    .local v1, "hasText":Z
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/SlideModel;

    .line 1341
    .local v5, "slide":Lcom/android/mms/model/SlideModel;
    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/Composer;->slideHasMedia(Lcom/android/mms/model/SlideModel;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1342
    const/4 v0, 0x1

    .line 1348
    .end local v5    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v6, p2}, Lcom/sonyericsson/conversations/model/Message;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v3

    .line 1349
    .local v3, "message":Lcom/sonyericsson/conversations/model/Message;
    if-eqz v0, :cond_4

    .line 1351
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1352
    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/Composer;->addSlideshowModel(Lcom/sonyericsson/conversations/model/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1373
    :goto_1
    monitor-exit p0

    return-void

    .line 1344
    .end local v3    # "message":Lcom/sonyericsson/conversations/model/Message;
    .restart local v5    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1345
    const/4 v1, 0x1

    goto :goto_0

    .line 1354
    .end local v5    # "slide":Lcom/android/mms/model/SlideModel;
    .restart local v3    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_3
    const-string v6, "Composer"

    const-string v7, "Attempted to add slideshow to incorrect message"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1334
    .end local v0    # "hasMedia":Z
    .end local v1    # "hasText":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "message":Lcom/sonyericsson/conversations/model/Message;
    .end local v4    # "nbrSlides":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1356
    .restart local v0    # "hasMedia":Z
    .restart local v1    # "hasText":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "message":Lcom/sonyericsson/conversations/model/Message;
    .restart local v4    # "nbrSlides":I
    :cond_4
    if-eqz v1, :cond_7

    .line 1357
    const/4 v6, 0x1

    if-le v4, v6, :cond_6

    .line 1359
    :try_start_2
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1360
    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/Composer;->addSlideshowModel(Lcom/sonyericsson/conversations/model/Message;)V

    goto :goto_1

    .line 1362
    :cond_5
    const-string v6, "Composer"

    const-string v7, "Attempted to add slideshow to incorrect message"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1366
    :cond_6
    invoke-virtual {p0, p1, v3}, Lcom/sonyericsson/conversations/ui/Composer;->addTextOnlySlide(Lcom/android/mms/model/SlideshowModel;Lcom/sonyericsson/conversations/model/Message;)V

    goto :goto_1

    .line 1370
    :cond_7
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sonyericsson/conversations/ui/Composer;->hasSlideshowAttachment(Z)V

    .line 1371
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->handleEmptySlideshow()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized hasLocationImage()Z
    .locals 5

    .prologue
    .line 739
    monitor-enter p0

    const/4 v1, 0x0

    .line 740
    .local v1, "isFound":Z
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_0

    .line 742
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    .line 743
    .local v2, "nbrSlides":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 744
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 745
    .local v3, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->isLocation()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 746
    const/4 v1, 0x1

    .line 751
    .end local v0    # "i":I
    .end local v2    # "nbrSlides":I
    .end local v3    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    monitor-exit p0

    return v1

    .line 743
    .restart local v0    # "i":I
    .restart local v2    # "nbrSlides":I
    .restart local v3    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 739
    .end local v0    # "i":I
    .end local v2    # "nbrSlides":I
    .end local v3    # "slide":Lcom/android/mms/model/SlideModel;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized hasMedia()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2191
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    .line 2192
    .local v5, "slideshow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v5, :cond_0

    .line 2195
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/android/mms/model/SlideModel;

    invoke-virtual {v5, v7}, Lcom/android/mms/model/SlideshowModel;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/mms/model/SlideModel;

    .line 2196
    .local v4, "slideModelArray":[Lcom/android/mms/model/SlideModel;
    move-object v0, v4

    .local v0, "arr$":[Lcom/android/mms/model/SlideModel;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2197
    .local v3, "slide":Lcom/android/mms/model/SlideModel;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/Composer;->slideHasMedia(Lcom/android/mms/model/SlideModel;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 2198
    const/4 v6, 0x1

    .line 2202
    .end local v0    # "arr$":[Lcom/android/mms/model/SlideModel;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v4    # "slideModelArray":[Lcom/android/mms/model/SlideModel;
    :cond_0
    monitor-exit p0

    return v6

    .line 2196
    .restart local v0    # "arr$":[Lcom/android/mms/model/SlideModel;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "slide":Lcom/android/mms/model/SlideModel;
    .restart local v4    # "slideModelArray":[Lcom/android/mms/model/SlideModel;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2191
    .end local v0    # "arr$":[Lcom/android/mms/model/SlideModel;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v4    # "slideModelArray":[Lcom/android/mms/model/SlideModel;
    .end local v5    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized hasSlideshowAttachment(Z)V
    .locals 1
    .param p1, "hasSlideshowAttachment"    # Z

    .prologue
    .line 877
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHasSlideshowAttachment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    monitor-exit p0

    return-void

    .line 877
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized holdsAlienContent()Z
    .locals 1

    .prologue
    .line 838
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHoldsUnhandlableContent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized holdsSlideshow()Z
    .locals 1

    .prologue
    .line 842
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSlideshowEditorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHasSlideshowAttachment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 842
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isContentEmpty()Z
    .locals 5

    .prologue
    .line 2159
    monitor-enter p0

    const/4 v0, 0x0

    .line 2161
    .local v0, "empty":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2162
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    .line 2163
    .local v3, "slideshow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v3, :cond_3

    .line 2164
    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 2165
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2166
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 2167
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 2168
    const/4 v0, 0x0

    .line 2182
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v3    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_0
    :goto_1
    monitor-exit p0

    return v0

    .line 2170
    .restart local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    .restart local v2    # "slide":Lcom/android/mms/model/SlideModel;
    .restart local v3    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/Composer;->slideHasMedia(Lcom/android/mms/model/SlideModel;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 2171
    const/4 v0, 0x0

    .line 2172
    goto :goto_1

    .line 2174
    :cond_2
    const/4 v0, 0x1

    .line 2176
    goto :goto_0

    .line 2178
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 2159
    .end local v3    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized isDirty()Z
    .locals 1

    .prologue
    .line 2423
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDraftStored()Z
    .locals 1

    .prologue
    .line 1655
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsDraftStored:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 2128
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isMessageEmpty()Z
    .locals 1

    .prologue
    .line 2137
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2138
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->isContentEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->isSubjectEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2140
    :goto_0
    monitor-exit p0

    return v0

    .line 2138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2140
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->isContentEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRecipientsDirty()Z
    .locals 1

    .prologue
    .line 2427
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mRecipientsDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSubjectEmpty()Z
    .locals 1

    .prologue
    .line 2150
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadDraft()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 1425
    monitor-enter p0

    :try_start_0
    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v12}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v10

    .line 1430
    .local v10, "threadId":J
    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-nez v12, :cond_0

    .line 1431
    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v13}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(Landroid/content/Context;Ljava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v12

    iput-object v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    .line 1432
    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v12}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v10

    .line 1437
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->deleteObsoleteMessages()Z

    .line 1441
    invoke-direct {p0, v10, v11}, Lcom/sonyericsson/conversations/ui/Composer;->getSmsDraftMessage(J)Lcom/sonyericsson/conversations/model/SmsMessage;

    move-result-object v8

    .line 1442
    .local v8, "smsDraftMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    invoke-direct {p0, v10, v11}, Lcom/sonyericsson/conversations/ui/Composer;->getMmsDraftMessage(J)Lcom/sonyericsson/conversations/model/MmsMessage;

    move-result-object v2

    .line 1445
    .local v2, "mmsDraftMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    if-eqz v8, :cond_4

    iget-wide v6, v8, Lcom/sonyericsson/conversations/model/Message;->date:J

    .line 1446
    .local v6, "smsDraftDate":J
    :goto_0
    if-eqz v2, :cond_1

    iget-wide v0, v2, Lcom/sonyericsson/conversations/model/Message;->date:J

    .line 1448
    .local v0, "mmsDraftDate":J
    :cond_1
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 1449
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    .line 1450
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    .line 1451
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1452
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsDraftStored:Z

    .line 1454
    cmp-long v12, v6, v0

    if-lez v12, :cond_5

    .line 1456
    if-eqz v8, :cond_2

    .line 1457
    iput-object v8, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 1458
    iget-object v12, v8, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    iput-object v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    .line 1489
    :cond_2
    :goto_1
    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v12, :cond_3

    .line 1490
    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v12}, Lcom/sonyericsson/conversations/model/Message;->getPriority()I

    move-result v12

    iput v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessagePriority:I

    .line 1493
    :cond_3
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 1494
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mRecipientsDirty:Z

    .line 1495
    const/4 v12, -0x1

    iput v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForcedMessageType:I

    .line 1496
    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-direct {p0, v12}, Lcom/sonyericsson/conversations/ui/Composer;->checkforUnhandlableContent(Lcom/sonyericsson/conversations/model/Message;)V

    .line 1498
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/sonyericsson/conversations/ui/Composer;->refreshMessage(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1499
    monitor-exit p0

    return-void

    .end local v0    # "mmsDraftDate":J
    .end local v6    # "smsDraftDate":J
    :cond_4
    move-wide v6, v0

    .line 1445
    goto :goto_0

    .line 1462
    .restart local v0    # "mmsDraftDate":J
    .restart local v6    # "smsDraftDate":J
    :cond_5
    if-eqz v2, :cond_2

    .line 1464
    :try_start_1
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v12

    iput-object v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1466
    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 1467
    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    .line 1468
    .local v4, "nbrSlides":I
    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v12, v13}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    .line 1470
    .local v5, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v5, :cond_6

    .line 1471
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v9

    .line 1472
    .local v9, "text":Lcom/android/mms/model/TextModel;
    if-eqz v9, :cond_6

    .line 1473
    invoke-virtual {v9}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    .line 1477
    .end local v4    # "nbrSlides":I
    .end local v5    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v9    # "text":Lcom/android/mms/model/TextModel;
    :cond_6
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 1478
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getCurrentMediaItemNbr()I

    move-result v12

    iput v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mNbrMediaObjects:I

    .line 1479
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v3

    .line 1480
    .local v3, "mmsDraftSubject":Ljava/lang/String;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/Composer;->isUserDefinedSubject(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1481
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1425
    .end local v0    # "mmsDraftDate":J
    .end local v2    # "mmsDraftMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    .end local v3    # "mmsDraftSubject":Ljava/lang/String;
    .end local v6    # "smsDraftDate":J
    .end local v8    # "smsDraftMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    .end local v10    # "threadId":J
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 1484
    .restart local v0    # "mmsDraftDate":J
    .restart local v2    # "mmsDraftMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    .restart local v3    # "mmsDraftSubject":Ljava/lang/String;
    .restart local v6    # "smsDraftDate":J
    .restart local v8    # "smsDraftMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    .restart local v10    # "threadId":J
    :cond_7
    :try_start_2
    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v12, Lcom/sonyericsson/conversations/model/MmsMessage;

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Lcom/sonyericsson/conversations/model/MmsMessage;->setSubject(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized loadSlideshowModelFromMessageUri(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 787
    monitor-enter p0

    if-nez p2, :cond_1

    .line 829
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 791
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    .line 792
    .local v5, "originalSlideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v6

    iget v7, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMmsMaxSizeInBytes:I

    if-gt v6, v7, :cond_5

    .line 793
    invoke-static {p1}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 795
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    .line 796
    const/4 v1, 0x0

    .local v1, "location":I
    :goto_1
    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 797
    invoke-virtual {v5, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 798
    .local v4, "originalSlide":Lcom/android/mms/model/SlideModel;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v4}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 800
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v6}, Lcom/android/mms/model/SlideModel;->setParent(Lcom/android/mms/model/SlideshowModel;)V

    .line 796
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 803
    .end local v4    # "originalSlide":Lcom/android/mms/model/SlideModel;
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sonyericsson/conversations/ui/Composer;->forceMessageType(I)V

    .line 804
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/Composer;->checkforUnhandlableContent(Lcom/sonyericsson/conversations/model/Message;)V

    .line 807
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    instance-of v6, p2, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v6, :cond_3

    .line 808
    move-object v0, p2

    check-cast v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    move-object v2, v0

    .line 810
    .local v2, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 811
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    .line 816
    .end local v2    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    :cond_3
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    .line 817
    .local v3, "mmsText":Lcom/android/mms/model/TextModel;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v3, :cond_4

    .line 818
    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    .line 821
    :cond_4
    iget-boolean v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHoldsUnhandlableContent:Z

    if-nez v6, :cond_0

    .line 822
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/sonyericsson/conversations/ui/Composer;->forceMessageType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 787
    .end local v1    # "location":I
    .end local v3    # "mmsText":Lcom/android/mms/model/TextModel;
    .end local v5    # "originalSlideshow":Lcom/android/mms/model/SlideshowModel;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 827
    .restart local v5    # "originalSlideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_5
    :try_start_1
    const-string v6, "Composer"

    const-string v7, "loadSlideshowModelFromMessageUri: message too large to be forwarded"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized refresh()V
    .locals 2

    .prologue
    .line 2270
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCharacterConversionEnabled()Z

    move-result v0

    .line 2272
    .local v0, "useCharacterConversion":Z
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mUseCharacterConversion:Z

    if-eq v1, v0, :cond_0

    .line 2273
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mUseCharacterConversion:Z

    .line 2274
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->refreshMessage(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2276
    :cond_0
    monitor-exit p0

    return-void

    .line 2270
    .end local v0    # "useCharacterConversion":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized resetConversation()V
    .locals 3

    .prologue
    .line 2045
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2046
    .local v0, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/Participant;>;"
    const-wide/16 v1, -0x1

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(JLjava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    .line 2047
    const/4 v1, 0x1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessagePriority:I

    .line 2048
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->resetMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2049
    monitor-exit p0

    return-void

    .line 2045
    .end local v0    # "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/Participant;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized saveDraft()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1630
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    .line 1632
    .local v0, "message":Lcom/sonyericsson/conversations/model/Message;
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    if-eqz v1, :cond_0

    .line 1633
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mAllowEmptyMessage:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->isMessageEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1634
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->deleteDraft(Lcom/sonyericsson/conversations/model/Message;)Z

    .line 1642
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 1643
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mRecipientsDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1645
    :cond_0
    monitor-exit p0

    return-void

    .line 1636
    :cond_1
    if-eqz v0, :cond_2

    .line 1637
    :try_start_1
    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessagePriority:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/Message;->setPriority(I)V

    .line 1639
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->saveDraft(Lcom/sonyericsson/conversations/model/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1630
    .end local v0    # "message":Lcom/sonyericsson/conversations/model/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized saveDraft(Z)V
    .locals 1
    .param p1, "discardIfUnhandlable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1620
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHoldsUnhandlableContent:Z

    if-nez v0, :cond_1

    .line 1621
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->saveDraft()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1623
    :cond_1
    monitor-exit p0

    return-void

    .line 1620
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setComposerListener(Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;)V
    .locals 1
    .param p1, "composerListener"    # Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mListener:Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    monitor-exit p0

    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConversation(Lcom/sonyericsson/conversations/model/Conversation;)V
    .locals 1
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/model/Conversation;

    .prologue
    .line 2029
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2030
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    .line 2034
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->refreshMessage(Z)V

    .line 2036
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 2037
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mRecipientsDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2039
    :cond_0
    monitor-exit p0

    return-void

    .line 2029
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDirty(Z)V
    .locals 1
    .param p1, "isDirty"    # Z

    .prologue
    .line 2443
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2444
    monitor-exit p0

    return-void

    .line 2443
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMessagePriority(I)V
    .locals 1
    .param p1, "messagePriority"    # I

    .prologue
    .line 2438
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 2439
    iput p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessagePriority:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2440
    monitor-exit p0

    return-void

    .line 2438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSubject(Ljava/lang/String;)V
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x28

    .line 2081
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 2100
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 2086
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 2087
    const/4 v0, 0x0

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2089
    :cond_3
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    .line 2090
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2092
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v0, v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v0, :cond_4

    .line 2093
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->setSubject(Ljava/lang/String;Z)V

    .line 2098
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 2099
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->refreshMessage(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2081
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2068
    monitor-enter p0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2069
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    .line 2070
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 2071
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->refreshMessage(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2073
    :cond_1
    monitor-exit p0

    return-void

    .line 2068
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
