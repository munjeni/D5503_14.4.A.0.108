.class abstract Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;
.super Ljava/lang/Object;
.source "ImageCacheRequest.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field protected mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

.field private mPath:Lcom/sonymobile/china/photoeditor/crop/data/Path;

.field private mTargetSize:I

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;Lcom/sonymobile/china/photoeditor/crop/data/Path;II)V
    .locals 0
    .param p1, "application"    # Lcom/sonymobile/china/photoeditor/crop/GalleryApp;
    .param p2, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p3, "type"    # I
    .param p4, "targetSize"    # I

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    .line 42
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;->mPath:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .line 43
    iput p3, p0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;->mType:I

    .line 44
    iput p4, p0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;->mTargetSize:I

    .line 45
    return-void
.end method


# virtual methods
.method public abstract onDecodeOriginal(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.end method

.method public run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 55
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-interface {v6}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getImageCacheService()Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;

    move-result-object v2

    .line 57
    .local v2, "cacheService":Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;->mPath:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    iget v7, p0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;->mType:I

    invoke-virtual {v2, v6, v7}, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;->getImageData(Lcom/sonymobile/china/photoeditor/crop/data/Path;I)Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService$ImageData;

    move-result-object v3

    .line 58
    .local v3, "data":Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService$ImageData;
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v5

    .line 97
    :cond_0
    :goto_0
    return-object v1

    .line 61
    :cond_1
    if-eqz v3, :cond_2

    .line 62
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 63
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 64
    iget-object v5, v3, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService$ImageData;->mData:[B

    iget v6, v3, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService$ImageData;->mOffset:I

    iget-object v7, v3, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService$ImageData;->mData:[B

    array-length v7, v7

    iget v8, v3, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService$ImageData;->mOffset:I

    sub-int/2addr v7, v8

    invoke-static {p1, v5, v6, v7, v4}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->requestDecode(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 66
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 73
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    iget v6, p0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;->mType:I

    invoke-virtual {p0, p1, v6}, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;->onDecodeOriginal(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 74
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v1, v5

    .line 75
    goto :goto_0

    .line 77
    :cond_3
    if-nez v1, :cond_4

    move-object v1, v5

    .line 81
    goto :goto_0

    .line 84
    :cond_4
    iget v6, p0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;->mType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 85
    iget v6, p0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;->mTargetSize:I

    invoke-static {v1, v6, v8}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 89
    :goto_1
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v1, v5

    .line 90
    goto :goto_0

    .line 87
    :cond_5
    iget v6, p0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;->mTargetSize:I

    invoke-static {v1, v6, v8}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 92
    :cond_6
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 93
    .local v0, "array":[B
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v1, v5

    .line 94
    goto :goto_0

    .line 96
    :cond_7
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;->mPath:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    iget v6, p0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;->mType:I

    invoke-virtual {v2, v5, v6, v0}, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;->putImageData(Lcom/sonymobile/china/photoeditor/crop/data/Path;I[B)V

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;->run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
