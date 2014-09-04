.class public Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo$LocalVideoRequest;
.super Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;
.source "LocalVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalVideoRequest"
.end annotation


# instance fields
.field private mLocalFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;Lcom/sonymobile/china/photoeditor/crop/data/Path;ILjava/lang/String;)V
    .locals 1
    .param p1, "application"    # Lcom/sonymobile/china/photoeditor/crop/GalleryApp;
    .param p2, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p3, "type"    # I
    .param p4, "localFilePath"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {p3}, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->getTargetSize(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;-><init>(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;Lcom/sonymobile/china/photoeditor/crop/data/Path;II)V

    .line 148
    iput-object p4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo$LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    .line 149
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p2, "type"    # I

    .prologue
    .line 153
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo$LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    const/4 v0, 0x0

    .line 156
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-object v0
.end method

.method public bridge synthetic run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheRequest;->run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
