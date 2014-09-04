.class public Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalLargeImageRequest;
.super Ljava/lang/Object;
.source "LocalImage.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalLargeImageRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field mIsDrm:Z

.field mLocalFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "localFilePath"    # Ljava/lang/String;
    .param p2, "isDrm"    # Z

    .prologue
    .line 241
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalLargeImageRequest;->mLocalFilePath:Ljava/lang/String;

    .line 243
    iput-boolean p2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalLargeImageRequest;->mIsDrm:Z

    .line 244
    return-void
.end method


# virtual methods
.method public run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 4
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalLargeImageRequest;->mIsDrm:Z

    if-eqz v2, :cond_0

    .line 250
    :try_start_0
    new-instance v1, Lcom/sonyericsson/drm/drmstream/DrmStream;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalLargeImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/sonyericsson/drm/drmstream/DrmStream;-><init>(Ljava/lang/String;)V

    .line 251
    .local v1, "stream":Lcom/sonyericsson/drm/drmstream/DrmStream;
    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->requestCreateBitmapRegionDecoder(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 259
    .end local v1    # "stream":Lcom/sonyericsson/drm/drmstream/DrmStream;
    :goto_0
    return-object v2

    .line 252
    :catch_0
    move-exception v0

    .line 256
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 259
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalLargeImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->requestCreateBitmapRegionDecoder(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalLargeImageRequest;->run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
