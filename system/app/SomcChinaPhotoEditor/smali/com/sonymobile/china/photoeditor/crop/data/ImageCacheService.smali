.class public Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;
.super Ljava/lang/Object;
.source "ImageCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService$ImageData;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_FILE:Ljava/lang/String; = "imgcache"

.field private static final IMAGE_CACHE_MAX_BYTES:I = 0xc800000

.field private static final IMAGE_CACHE_MAX_ENTRIES:I = 0x1388

.field private static final IMAGE_CACHE_VERSION:I = 0x3


# instance fields
.field private mCache:Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "imgcache"

    const/16 v1, 0x1388

    const/high16 v2, 0xc800000

    const/4 v3, 0x3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;->mCache:Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;

    .line 43
    return-void
.end method

.method private static isSameKey([B[B)Z
    .locals 5
    .param p0, "key"    # [B
    .param p1, "buffer"    # [B

    .prologue
    const/4 v2, 0x0

    .line 96
    array-length v1, p0

    .line 97
    .local v1, "n":I
    array-length v3, p1

    if-ge v3, v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v2

    .line 100
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 101
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static makeKey(Lcom/sonymobile/china/photoeditor/crop/data/Path;I)[B
    .locals 2
    .param p0, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p1, "type"    # I

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/util/GalleryUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getImageData(Lcom/sonymobile/china/photoeditor/crop/data/Path;I)Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService$ImageData;
    .locals 8
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p2, "type"    # I

    .prologue
    const/4 v5, 0x0

    .line 57
    invoke-static {p1, p2}, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;->makeKey(Lcom/sonymobile/china/photoeditor/crop/data/Path;I)[B

    move-result-object v2

    .line 58
    .local v2, "key":[B
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->crc64Long([B)J

    move-result-wide v0

    .line 60
    .local v0, "cacheKey":J
    const/4 v4, 0x0

    .line 61
    .local v4, "value":[B
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;->mCache:Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :try_start_1
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;->mCache:Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;

    invoke-virtual {v6, v0, v1}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->lookup(J)[B

    move-result-object v4

    .line 63
    monitor-exit v7

    .line 64
    if-nez v4, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-object v5

    .line 63
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6

    .line 70
    :catch_0
    move-exception v6

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {v2, v4}, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;->isSameKey([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    array-length v3, v2

    .line 68
    .local v3, "offset":I
    new-instance v6, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService$ImageData;

    invoke-direct {v6, v4, v3}, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService$ImageData;-><init>([BI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    goto :goto_0
.end method

.method public putImageData(Lcom/sonymobile/china/photoeditor/crop/data/Path;I[B)V
    .locals 7
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p2, "type"    # I
    .param p3, "value"    # [B

    .prologue
    .line 77
    invoke-static {p1, p2}, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;->makeKey(Lcom/sonymobile/china/photoeditor/crop/data/Path;I)[B

    move-result-object v3

    .line 78
    .local v3, "key":[B
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->crc64Long([B)J

    move-result-wide v1

    .line 79
    .local v1, "cacheKey":J
    array-length v4, v3

    array-length v5, p3

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 80
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 82
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;->mCache:Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;

    monitor-enter v5

    .line 84
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;->mCache:Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4, v1, v2, v6}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->insert(J[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :goto_0
    :try_start_1
    monitor-exit v5

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 85
    :catch_0
    move-exception v4

    goto :goto_0
.end method
