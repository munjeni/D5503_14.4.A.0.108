.class public Lcom/sonyericsson/conversations/ui/util/tasks/FetchImageThumbnailTask;
.super Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask;
.source "FetchImageThumbnailTask.java"


# instance fields
.field private mDimension:Lcom/sonyericsson/conversations/model/Dimension;

.field private mImageModel:Lcom/android/mms/model/ImageModel;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;Lcom/android/mms/model/ImageModel;Lcom/sonyericsson/conversations/model/Dimension;I)V
    .locals 1
    .param p1, "callback"    # Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;
    .param p2, "img"    # Lcom/android/mms/model/ImageModel;
    .param p3, "restrDim"    # Lcom/sonyericsson/conversations/model/Dimension;
    .param p4, "orientation"    # I

    .prologue
    .line 27
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask;-><init>(Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;)V

    .line 28
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchImageThumbnailTask;->mImageModel:Lcom/android/mms/model/ImageModel;

    .line 29
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchImageThumbnailTask;->mDimension:Lcom/sonyericsson/conversations/model/Dimension;

    .line 30
    iput p4, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchImageThumbnailTask;->mOrientation:I

    .line 31
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # [Landroid/content/Context;

    .prologue
    .line 37
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchImageThumbnailTask;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->isBrief()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchImageThumbnailTask;->mDimension:Lcom/sonyericsson/conversations/model/Dimension;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Dimension;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchImageThumbnailTask;->mDimension:Lcom/sonyericsson/conversations/model/Dimension;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Dimension;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchImageThumbnailTask;->mImageModel:Lcom/android/mms/model/ImageModel;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchImageThumbnailTask;->mDimension:Lcom/sonyericsson/conversations/model/Dimension;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Dimension;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchImageThumbnailTask;->mDimension:Lcom/sonyericsson/conversations/model/Dimension;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Dimension;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/model/ImageModel;->createThumbnail(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 43
    .local v1, "thumbnail":Landroid/graphics/Bitmap;
    :goto_0
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask;->setRoundedCorners(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    .local v0, "roundedThumbnail":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 47
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008b

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    .end local v0    # "roundedThumbnail":Landroid/graphics/Bitmap;
    :goto_1
    return-object v0

    .line 40
    .end local v1    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchImageThumbnailTask;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->createThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 50
    .restart local v0    # "roundedThumbnail":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask;->mUri:Landroid/net/Uri;

    iget v4, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchImageThumbnailTask;->mOrientation:I

    invoke-virtual {v2, v3, v0, v4}, Lcom/sonyericsson/conversations/model/ModelCache;->setImageThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, [Landroid/content/Context;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/tasks/FetchImageThumbnailTask;->doInBackground([Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
