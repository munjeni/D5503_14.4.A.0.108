.class public Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils;
.super Ljava/lang/Object;
.source "MediaSetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils$NameComparator;
    }
.end annotation


# static fields
.field public static final CAMERA_BUCKET_ID:I

.field private static final CAMERA_PATHS:[Lcom/sonymobile/china/photoeditor/crop/data/Path;

.field public static final DOWNLOAD_BUCKET_ID:I

.field public static final NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils$NameComparator;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils$NameComparator;-><init>()V

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils;->NAME_COMPARATOR:Ljava/util/Comparator;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/china/photoeditor/crop/data/Path;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->fromString(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/image/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->fromString(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/video/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->fromString(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/sonymobile/china/photoeditor/crop/data/Path;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static isCameraSource(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Z
    .locals 4
    .param p0, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 48
    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/sonymobile/china/photoeditor/crop/data/Path;

    aget-object v2, v2, v0

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/sonymobile/china/photoeditor/crop/data/Path;

    aget-object v2, v2, v1

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/sonymobile/china/photoeditor/crop/data/Path;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-ne v2, p0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method
