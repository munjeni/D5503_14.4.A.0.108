.class public Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalImageRequest;
.super Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalImageRequest"
.end annotation


# instance fields
.field private mIsDrm:Z

.field private mLocalFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;Lcom/sonymobile/china/photoeditor/crop/data/Path;ILjava/lang/String;Z)V
    .locals 1
    .param p1, "application"    # Lcom/sonymobile/china/photoeditor/crop/GalleryApp;
    .param p2, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p3, "type"    # I
    .param p4, "localFilePath"    # Ljava/lang/String;
    .param p5, "isDrm"    # Z

    .prologue
    .line 184
    invoke-static {p3}, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->getTargetSize(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;-><init>(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;Lcom/sonymobile/china/photoeditor/crop/data/Path;II)V

    .line 185
    iput-object p4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    .line 186
    iput-boolean p5, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalImageRequest;->mIsDrm:Z

    .line 187
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p2, "type"    # I

    .prologue
    .line 191
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 192
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 195
    const/4 v5, 0x2

    if-ne p2, v5, :cond_1

    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, "exif":Landroid/media/ExifInterface;
    const/4 v4, 0x0

    .line 199
    .local v4, "thumbData":[B
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .local v2, "exif":Landroid/media/ExifInterface;
    if-eqz v2, :cond_0

    .line 201
    :try_start_1
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :cond_0
    move-object v1, v2

    .line 208
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v4, :cond_1

    .line 209
    invoke-static {p2}, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->getTargetSize(I)I

    move-result v5

    invoke-static {p1, v4, v3, v5}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->requestDecodeIfBigEnough(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 211
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 215
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v4    # "thumbData":[B
    :goto_1
    return-object v0

    :cond_1
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p2}, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->getTargetSize(I)I

    move-result v6

    iget-boolean v7, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalImageRequest;->mIsDrm:Z

    invoke-static {p1, v5, v3, v6, v7}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->requestDecode(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 203
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    .restart local v4    # "thumbData":[B
    :catch_0
    move-exception v5

    goto :goto_0

    .end local v1    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;->run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
