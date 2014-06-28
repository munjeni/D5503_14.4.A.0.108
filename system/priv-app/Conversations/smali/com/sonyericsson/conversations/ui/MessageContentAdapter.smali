.class public Lcom/sonyericsson/conversations/ui/MessageContentAdapter;
.super Landroid/widget/BaseAdapter;
.source "MessageContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/MessageContentAdapter$OnContentDeletedListener;,
        Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;
    }
.end annotation


# instance fields
.field private mAttachmentItemHeight:I

.field private mAttachmentItemWidth:I

.field private mComposer:Lcom/sonyericsson/conversations/ui/Composer;

.field private mContext:Landroid/content/Context;

.field private mDeleteButtonsEnabled:Z

.field private mOnContentDeletedListener:Lcom/sonyericsson/conversations/ui/MessageContentAdapter$OnContentDeletedListener;

.field private mTextLabelsEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 56
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mTextLabelsEnabled:Z

    .line 58
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mDeleteButtonsEnabled:Z

    .line 65
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mContext:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mAttachmentItemWidth:I

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mAttachmentItemHeight:I

    .line 70
    return-void
.end method

.method private convertToDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 255
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 256
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 257
    return-object v0
.end method

.method private getFileName(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lcom/android/mms/model/MediaModel;

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getItemType(I)I
    .locals 5
    .param p1, "pos"    # I

    .prologue
    .line 227
    const/16 v2, 0x32

    .line 228
    .local v2, "type":I
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getSupportedMediaItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 230
    .local v1, "media":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/4 v0, 0x0

    .line 231
    .local v0, "item":Lcom/android/mms/model/MediaModel;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p1, :cond_0

    .line 232
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/android/mms/model/MediaModel;
    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 233
    .restart local v0    # "item":Lcom/android/mms/model/MediaModel;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    const/16 v2, 0xa

    .line 251
    .end local v0    # "item":Lcom/android/mms/model/MediaModel;
    .end local v1    # "media":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    :cond_0
    :goto_0
    return v2

    .line 236
    .restart local v0    # "item":Lcom/android/mms/model/MediaModel;
    .restart local v1    # "media":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 237
    const/16 v2, 0x14

    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 239
    const/16 v2, 0x28

    goto :goto_0

    .line 240
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isAttachment()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    check-cast v0, Lcom/sonyericsson/conversations/model/AttachmentModel;

    .end local v0    # "item":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/x-vCard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 243
    const/16 v2, 0x1e

    goto :goto_0

    .line 245
    :cond_4
    const/16 v2, 0x32

    goto :goto_0
.end method


# virtual methods
.method public deleteItem(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->deleteAllSlides()V

    .line 188
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mOnContentDeletedListener:Lcom/sonyericsson/conversations/ui/MessageContentAdapter$OnContentDeletedListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$OnContentDeletedListener;->onContentDeleted()V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/Composer;->deleteMedia(I)V

    .line 193
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mOnContentDeletedListener:Lcom/sonyericsson/conversations/ui/MessageContentAdapter$OnContentDeletedListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$OnContentDeletedListener;->onContentDeleted()V

    goto :goto_0
.end method

.method public deleteItem(Lcom/android/mms/model/MediaModel;)V
    .locals 1
    .param p1, "model"    # Lcom/android/mms/model/MediaModel;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->deleteAllSlides()V

    .line 204
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mOnContentDeletedListener:Lcom/sonyericsson/conversations/ui/MessageContentAdapter$OnContentDeletedListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$OnContentDeletedListener;->onContentDeleted()V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/Composer;->deleteMedia(Lcom/android/mms/model/MediaModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mOnContentDeletedListener:Lcom/sonyericsson/conversations/ui/MessageContentAdapter$OnContentDeletedListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$OnContentDeletedListener;->onContentDeleted()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "count":I
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    const/4 v0, 0x1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getCurrentMediaItemNbr()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 16
    .param p1, "pos"    # I

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v1, :cond_0

    .line 86
    const/4 v1, 0x0

    .line 157
    :goto_0
    return-object v1

    .line 89
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3c

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILcom/android/mms/model/MediaModel;)V

    goto :goto_0

    .line 93
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getSupportedMediaItems()Ljava/util/ArrayList;

    move-result-object v13

    .line 94
    .local v13, "media":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, p1

    if-gt v1, v0, :cond_3

    .line 95
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 98
    :cond_3
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/model/MediaModel;

    .line 99
    .local v11, "item":Lcom/android/mms/model/MediaModel;
    if-nez v11, :cond_4

    .line 100
    const/4 v1, 0x0

    goto :goto_0

    .line 103
    :cond_4
    const/4 v8, 0x0

    .line 104
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 105
    .local v9, "caption":Ljava/lang/String;
    const/16 v10, 0x32

    .line 106
    .local v10, "type":I
    invoke-virtual {v11}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/MediaUtil;->dp2px(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v15, v1, 0x2

    .local v15, "pileViewThumbBoundsLimit":I
    move-object v1, v11

    .line 111
    check-cast v1, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v1, v15}, Lcom/android/mms/model/ImageModel;->getBitmapForPileView(I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 113
    .local v12, "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v12}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->convertToDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 115
    const/16 v10, 0xa

    .line 157
    .end local v12    # "bmp":Landroid/graphics/Bitmap;
    .end local v15    # "pileViewThumbBoundsLimit":I
    :cond_5
    :goto_1
    new-instance v6, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mContext:Landroid/content/Context;

    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILcom/android/mms/model/MediaModel;)V

    move-object v1, v6

    goto/16 :goto_0

    .line 116
    :cond_6
    invoke-virtual {v11}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v14

    .line 119
    .local v14, "msg":Lcom/sonyericsson/conversations/model/Message;
    if-nez v14, :cond_b

    const-wide/16 v4, -0x1

    .line 120
    .local v4, "key":J
    :goto_2
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v2

    move-object v1, v11

    check-cast v1, Lcom/android/mms/model/VideoModel;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v1, v6, v7}, Lcom/sonyericsson/conversations/model/ModelCache;->getVideoThumbnail(Landroid/net/Uri;J)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 123
    .restart local v12    # "bmp":Landroid/graphics/Bitmap;
    if-nez v12, :cond_7

    .line 124
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mContext:Landroid/content/Context;

    move-object v3, v11

    check-cast v3, Lcom/android/mms/model/VideoModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mAttachmentItemWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mAttachmentItemHeight:I

    invoke-virtual/range {v1 .. v7}, Lcom/sonyericsson/conversations/model/ModelCache;->getVideoThumbnailSync(Landroid/content/Context;Landroid/net/Uri;JII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 128
    :cond_7
    if-nez v12, :cond_8

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008c

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 133
    :cond_8
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mAttachmentItemHeight:I

    if-ne v1, v2, :cond_9

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mAttachmentItemWidth:I

    if-eq v1, v2, :cond_a

    .line 135
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mAttachmentItemWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mAttachmentItemHeight:I

    invoke-static {v12, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 138
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v12}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->convertToDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 140
    const/16 v10, 0x14

    .line 141
    goto/16 :goto_1

    .line 119
    .end local v4    # "key":J
    .end local v12    # "bmp":Landroid/graphics/Bitmap;
    :cond_b
    invoke-virtual {v14}, Lcom/sonyericsson/conversations/model/Message;->getKey()J

    move-result-wide v4

    goto :goto_2

    .line 141
    .end local v14    # "msg":Lcom/sonyericsson/conversations/model/Message;
    :cond_c
    invoke-virtual {v11}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 143
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->getFileName(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;

    move-result-object v9

    .line 144
    const/16 v10, 0x28

    goto/16 :goto_1

    .line 145
    :cond_d
    invoke-virtual {v11}, Lcom/android/mms/model/MediaModel;->isAttachment()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 146
    const-string v1, "text/x-vCard"

    invoke-virtual {v11}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/VCardUtil;->getVCardContactPhoto(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/VCardUtil;->getVCardContactName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 149
    const/16 v10, 0x1e

    goto/16 :goto_1

    .line 153
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->getFileName(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;

    move-result-object v9

    .line 154
    const/16 v10, 0x32

    goto/16 :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 161
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 168
    const/4 v0, -0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 173
    .local v1, "pvi":Lcom/sonyericsson/conversations/ui/PileViewItem;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;

    .line 174
    .local v0, "object":Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;
    if-eqz v0, :cond_0

    .line 175
    new-instance v1, Lcom/sonyericsson/conversations/ui/PileViewItem;

    .end local v1    # "pvi":Lcom/sonyericsson/conversations/ui/PileViewItem;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;->getType()I

    move-result v3

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/PileViewItem;-><init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)V

    .line 176
    .restart local v1    # "pvi":Lcom/sonyericsson/conversations/ui/PileViewItem;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/PileViewItem;->setTextLabel(Ljava/lang/String;)V

    .line 177
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mTextLabelsEnabled:Z

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/PileViewItem;->setTextLabelVisible(Z)V

    .line 178
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mDeleteButtonsEnabled:Z

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/PileViewItem;->setRemoveButtonActive(Z)V

    .line 179
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter$MessageContentObject;->getMediaModel()Lcom/android/mms/model/MediaModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 181
    :cond_0
    return-object v1
.end method

.method public setComposer(Lcom/sonyericsson/conversations/ui/Composer;)V
    .locals 0
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 62
    return-void
.end method

.method public setDeleteButtonEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mDeleteButtonsEnabled:Z

    .line 223
    return-void
.end method

.method public setOnContentDeletedListener(Lcom/sonyericsson/conversations/ui/MessageContentAdapter$OnContentDeletedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/MessageContentAdapter$OnContentDeletedListener;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mOnContentDeletedListener:Lcom/sonyericsson/conversations/ui/MessageContentAdapter$OnContentDeletedListener;

    .line 319
    return-void
.end method

.method public setTextLabelEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->mTextLabelsEnabled:Z

    .line 219
    return-void
.end method
