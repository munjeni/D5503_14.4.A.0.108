.class public abstract Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
.super Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
.source "MediaItem.java"


# static fields
.field public static final CACHED_IMAGE_QUALITY:I = 0x5f

.field public static final IMAGE_ERROR:I = -0x1

.field public static final IMAGE_READY:I = 0x0

.field public static final IMAGE_WAIT:I = 0x1

.field public static final INVALID_LATLNG:D = 0.0

.field public static final MICROTHUMBNAIL_TARGET_SIZE:I = 0xc8

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final THUMBNAIL_TARGET_SIZE:I = 0x280

.field public static final TYPE_MICROTHUMBNAIL:I = 0x2

.field public static final TYPE_THUMBNAIL:I = 0x1


# instance fields
.field protected mIsDrm:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;J)V
    .locals 0
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p2, "version"    # J

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;J)V

    .line 59
    return-void
.end method


# virtual methods
.method public getDateInMs()J
    .locals 2

    .prologue
    .line 62
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFaces()[Landroid/media/FaceDetector$Face;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFullImageRotation()I
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;->getRotation()I

    move-result v0

    return v0
.end method

.method public abstract getHeight()I
.end method

.method public getLatLong([D)V
    .locals 3
    .param p1, "latLong"    # [D

    .prologue
    const-wide/16 v1, 0x0

    .line 70
    const/4 v0, 0x0

    aput-wide v1, p1, v0

    .line 71
    const/4 v0, 0x1

    aput-wide v1, p1, v0

    .line 72
    return-void
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 94
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getWidth()I
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;->mIsDrm:Z

    return v0
.end method

.method public abstract requestImage(I)Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestLargeImage()Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end method

.method public setIsDrm(Z)V
    .locals 0
    .param p1, "isDrm"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;->mIsDrm:Z

    .line 99
    return-void
.end method
