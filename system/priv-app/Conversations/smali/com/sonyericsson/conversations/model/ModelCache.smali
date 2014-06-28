.class public Lcom/sonyericsson/conversations/model/ModelCache;
.super Ljava/lang/Object;
.source "ModelCache.java"

# interfaces
.implements Lcom/sonyericsson/conversations/memory/LowMemoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/model/ModelCache$5;,
        Lcom/sonyericsson/conversations/model/ModelCache$ModelCacheHolder;,
        Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;,
        Lcom/sonyericsson/conversations/model/ModelCache$InUseBitmap;
    }
.end annotation


# static fields
.field public static final IGNORE_KEY:I = -0x1

.field private static final KILO_BYTE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "ModelCache"


# instance fields
.field private mBriefSlideshowCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/mms/model/SlideshowModel;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsObserver:Landroid/database/ContentObserver;

.field private mImageThumbnailCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/conversations/model/ModelCache$InUseBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageMap:Lcom/sonyericsson/conversations/util/SoftHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/conversations/util/SoftHashMap",
            "<",
            "Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;",
            "Lcom/sonyericsson/conversations/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/database/ContentObserver;

.field private mPersonPhotoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSlideshowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/mms/model/SlideshowModel;",
            ">;"
        }
    .end annotation
.end field

.field private mVCardContactNameMap:Lcom/sonyericsson/conversations/util/SoftHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/conversations/util/SoftHashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoThumbnailMap:Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/sonyericsson/conversations/util/SoftHashMap;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/util/SoftHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMessageMap:Lcom/sonyericsson/conversations/util/SoftHashMap;

    .line 56
    new-instance v0, Lcom/sonyericsson/conversations/util/SoftHashMap;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/util/SoftHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mSlideshowMap:Ljava/util/Map;

    .line 62
    new-instance v0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mVideoThumbnailMap:Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;

    .line 64
    new-instance v0, Lcom/sonyericsson/conversations/util/SoftHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/util/SoftHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mVCardContactNameMap:Lcom/sonyericsson/conversations/util/SoftHashMap;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mPersonPhotoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 69
    new-instance v0, Lcom/sonyericsson/conversations/model/ModelCache$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/model/ModelCache$1;-><init>(Lcom/sonyericsson/conversations/model/ModelCache;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mObserver:Landroid/database/ContentObserver;

    .line 94
    new-instance v0, Lcom/sonyericsson/conversations/model/ModelCache$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/model/ModelCache$2;-><init>(Lcom/sonyericsson/conversations/model/ModelCache;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mContactsObserver:Landroid/database/ContentObserver;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/model/ModelCache;)Lcom/sonyericsson/conversations/util/SoftHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/model/ModelCache;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMessageMap:Lcom/sonyericsson/conversations/util/SoftHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/model/ModelCache;)Lcom/sonyericsson/conversations/util/SoftHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/model/ModelCache;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mVCardContactNameMap:Lcom/sonyericsson/conversations/util/SoftHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/model/ModelCache;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/model/ModelCache;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mPersonPhotoMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private clearCache()V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMessageMap:Lcom/sonyericsson/conversations/util/SoftHashMap;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->clear()V

    .line 643
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mSlideshowMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 644
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mPersonPhotoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 645
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mVideoThumbnailMap:Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->clear()V

    .line 646
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mVCardContactNameMap:Lcom/sonyericsson/conversations/util/SoftHashMap;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->clear()V

    .line 647
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mBriefSlideshowCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 648
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mImageThumbnailCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 649
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sonyericsson/conversations/model/ModelCache;
    .locals 2

    .prologue
    .line 202
    const-class v0, Lcom/sonyericsson/conversations/model/ModelCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/model/ModelCache$ModelCacheHolder;->INSTANCE:Lcom/sonyericsson/conversations/model/ModelCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getKeyForImageThumbnail(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "orientation"    # I

    .prologue
    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPhoto(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/16 v9, 0x140

    .line 593
    const/4 v0, 0x0

    .line 595
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, p2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 598
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v2, :cond_2

    .line 600
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 604
    .local v4, "option":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 608
    const/4 v8, 0x0

    invoke-static {v2, v8, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 609
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 610
    .local v6, "outWidth":I
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 611
    .local v5, "outHeight":I
    const/4 v7, 0x1

    .line 613
    .local v7, "scale":I
    :goto_0
    div-int v8, v6, v7

    if-gt v8, v9, :cond_0

    div-int v8, v5, v7

    if-le v8, v9, :cond_1

    .line 614
    :cond_0
    mul-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 617
    :cond_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 622
    .local v3, "opt":Landroid/graphics/BitmapFactory$Options;
    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 625
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 626
    const/4 v8, 0x0

    invoke-static {v2, v8, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 632
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 638
    .end local v3    # "opt":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "option":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "outHeight":I
    .end local v6    # "outWidth":I
    .end local v7    # "scale":I
    :cond_2
    :goto_1
    return-object v0

    .line 627
    :catch_0
    move-exception v1

    .line 628
    .local v1, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 629
    :try_start_2
    const-string v8, "ModelCache"

    const-string v9, "reset inputstream of personal photo failed"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 632
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 633
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    goto :goto_1

    .line 631
    :catchall_0
    move-exception v8

    .line 632
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 631
    :goto_2
    throw v8

    .line 633
    :catch_2
    move-exception v9

    goto :goto_2
.end method


# virtual methods
.method public cacheMessageSlideshow(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 362
    if-eqz p2, :cond_0

    .line 363
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mSlideshowMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_0
    return-void
.end method

.method public declared-synchronized cleanup(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearMessageMap()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMessageMap:Lcom/sonyericsson/conversations/util/SoftHashMap;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->clear()V

    .line 134
    return-void
.end method

.method public clearVideoThumbnailCache()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mVideoThumbnailMap:Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->clear()V

    .line 496
    return-void
.end method

.method public getBriefSlideshow(Landroid/content/Context;Landroid/net/Uri;J)Lcom/android/mms/model/SlideshowModel;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "tag"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mBriefSlideshowCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    .line 275
    .local v0, "briefSlideshow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getTag()J

    move-result-wide v1

    cmp-long v1, v1, p3

    if-eqz v1, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 285
    :cond_0
    if-nez v0, :cond_1

    .line 286
    invoke-static {p1, p2}, Lcom/android/mms/model/SlideshowModel;->createBriefFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 287
    invoke-virtual {v0, p3, p4}, Lcom/android/mms/model/SlideshowModel;->setTag(J)V

    .line 293
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mBriefSlideshowCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_1
    return-object v0
.end method

.method public getImageThumbnail(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "orientation"    # I

    .prologue
    .line 483
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mImageThumbnailCache:Landroid/util/LruCache;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/model/ModelCache;->getKeyForImageThumbnail(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/ModelCache$InUseBitmap;

    .line 484
    .local v0, "vb":Lcom/sonyericsson/conversations/model/ModelCache$InUseBitmap;
    if-eqz v0, :cond_0

    .line 485
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonyericsson/conversations/model/ModelCache$InUseBitmap;->inUse:Z

    .line 486
    iget-object v1, v0, Lcom/sonyericsson/conversations/model/ModelCache$InUseBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 488
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessage(JLandroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;
    .locals 6
    .param p1, "messageThread"    # J
    .param p3, "messageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 245
    if-nez p3, :cond_0

    .line 262
    :goto_0
    return-object v4

    .line 249
    :cond_0
    const-wide/16 v1, -0x1

    .line 251
    .local v1, "messageKey":J
    :try_start_0
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 257
    invoke-static {p3}, Lcom/sonyericsson/conversations/model/Message;->getType(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 258
    neg-long v1, v1

    .line 260
    :cond_1
    new-instance v0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;-><init>(JJ)V

    .line 262
    .local v0, "messageCacheKey":Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;
    iget-object v4, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMessageMap:Lcom/sonyericsson/conversations/util/SoftHashMap;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/model/Message;

    goto :goto_0

    .line 252
    .end local v0    # "messageCacheKey":Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;
    :catch_0
    move-exception v3

    .line 255
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getMessage(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;J)Lcom/sonyericsson/conversations/model/Message;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "projection"    # Lcom/sonyericsson/conversations/model/MessageProjection;
    .param p4, "messageThread"    # J

    .prologue
    .line 220
    invoke-static {p2, p3}, Lcom/sonyericsson/conversations/model/Message;->createKey(Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)J

    move-result-wide v2

    .line 221
    .local v2, "messageKey":J
    new-instance v1, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;

    invoke-direct {v1, v2, v3, p4, p5}, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;-><init>(JJ)V

    .line 222
    .local v1, "messageCacheKey":Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;
    iget-object v4, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMessageMap:Lcom/sonyericsson/conversations/util/SoftHashMap;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/Message;

    .line 225
    .local v0, "message":Lcom/sonyericsson/conversations/model/Message;
    if-eqz v0, :cond_0

    iget v4, v0, Lcom/sonyericsson/conversations/model/Message;->box:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 226
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/conversations/model/Message;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    .line 231
    iget-object v4, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMessageMap:Lcom/sonyericsson/conversations/util/SoftHashMap;

    invoke-virtual {v4, v1, v0}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_1
    return-object v0
.end method

.method public declared-synchronized getPersonPhoto(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 546
    monitor-enter p0

    const/4 v1, 0x0

    .line 547
    .local v1, "photo":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mPersonPhotoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 548
    .local v2, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v2, :cond_0

    .line 549
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 550
    if-nez v1, :cond_0

    .line 551
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mPersonPhotoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    :cond_0
    if-nez v1, :cond_1

    .line 560
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/model/ModelCache;->getPhoto(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 561
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mPersonPhotoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    :cond_1
    monitor-exit p0

    return-object v1

    .line 546
    .end local v2    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method getPhotoMapSize()I
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mPersonPhotoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getSlideshow(Landroid/content/Context;Landroid/net/Uri;J)Lcom/android/mms/model/SlideshowModel;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "tag"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mSlideshowMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    .line 319
    .local v0, "slideshow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getTag()J

    move-result-wide v1

    cmp-long v1, v1, p3

    if-eqz v1, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 329
    :cond_0
    if-nez v0, :cond_1

    .line 330
    invoke-static {p1, p2}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 331
    invoke-virtual {v0, p3, p4}, Lcom/android/mms/model/SlideshowModel;->setTag(J)V

    .line 337
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mSlideshowMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_1
    return-object v0
.end method

.method public getVCardContactName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vCardUri"    # Landroid/net/Uri;

    .prologue
    .line 522
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mVCardContactNameMap:Lcom/sonyericsson/conversations/util/SoftHashMap;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 524
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 528
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/util/VCardUtil;->getVCardContactName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_0

    .line 531
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mVCardContactNameMap:Lcom/sonyericsson/conversations/util/SoftHashMap;

    invoke-virtual {v1, p2, v0}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_0
    return-object v0
.end method

.method public getVideoThumbnail(Landroid/net/Uri;J)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "videoUri"    # Landroid/net/Uri;
    .param p2, "uniqueId"    # J

    .prologue
    .line 458
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mVideoThumbnailMap:Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 460
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 461
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mVideoThumbnailMap:Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->getExtra(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 463
    .local v1, "cacheUid":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_2

    .line 472
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "cacheUid":Ljava/lang/Long;
    :cond_1
    :goto_0
    return-object v0

    .line 468
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "cacheUid":Ljava/lang/Long;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mVideoThumbnailMap:Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .end local v1    # "cacheUid":Ljava/lang/Long;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoThumbnailAsync(Landroid/content/Context;Landroid/net/Uri;JLcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoUri"    # Landroid/net/Uri;
    .param p3, "uniqueId"    # J
    .param p5, "softCallback"    # Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;

    .prologue
    .line 510
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchVideoThumbnailTask;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/sonyericsson/conversations/ui/util/tasks/FetchVideoThumbnailTask;-><init>(Landroid/net/Uri;JLcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;)V

    .line 511
    .local v0, "f":Lcom/sonyericsson/conversations/ui/util/tasks/FetchVideoThumbnailTask;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 512
    return-void
.end method

.method public getVideoThumbnailSync(Landroid/content/Context;Landroid/net/Uri;JII)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoUri"    # Landroid/net/Uri;
    .param p3, "uniqueId"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 396
    invoke-virtual {p0, p2, p3, p4}, Lcom/sonyericsson/conversations/model/ModelCache;->getVideoThumbnail(Landroid/net/Uri;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 397
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 402
    :try_start_0
    invoke-static {p1, p2, p5, p6}, Lcom/sonyericsson/conversations/util/MediaUtil;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 408
    :goto_0
    if-eqz v0, :cond_0

    .line 409
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mVideoThumbnailMap:Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p2, v0, v3}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->putWithExtra(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_0
    return-object v0

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Conversations"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create cached video thumbnail (URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 162
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Lcom/sonyericsson/conversations/model/ModelCache$3;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    mul-int/lit16 v2, v2, 0x400

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/conversations/model/ModelCache$3;-><init>(Lcom/sonyericsson/conversations/model/ModelCache;I)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mImageThumbnailCache:Landroid/util/LruCache;

    .line 169
    new-instance v1, Lcom/sonyericsson/conversations/model/ModelCache$4;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    mul-int/lit16 v2, v2, 0x400

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/conversations/model/ModelCache$4;-><init>(Lcom/sonyericsson/conversations/model/ModelCache;I)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mBriefSlideshowCache:Landroid/util/LruCache;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 180
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getLowMemoryManager()Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->register(Lcom/sonyericsson/conversations/memory/LowMemoryListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 160
    .end local v0    # "am":Landroid/app/ActivityManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isCachedPersonPhoto(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mPersonPhotoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public modifySlideshowTag(Landroid/net/Uri;J)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "tag"    # J

    .prologue
    .line 374
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mSlideshowMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    .line 376
    .local v0, "slideshow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0, p2, p3}, Lcom/android/mms/model/SlideshowModel;->setTag(J)V

    .line 379
    :cond_0
    return-void
.end method

.method public onTrimMemory(Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;)V
    .locals 2
    .param p1, "level"    # Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    .prologue
    .line 652
    sget-object v0, Lcom/sonyericsson/conversations/model/ModelCache$5;->$SwitchMap$com$sonyericsson$conversations$memory$LowMemoryManager$OnTrimMemoryLevel:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 657
    :goto_0
    return-void

    .line 655
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/ModelCache;->clearCache()V

    goto :goto_0

    .line 652
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public removeMessage(JJ)Lcom/sonyericsson/conversations/model/Message;
    .locals 3
    .param p1, "messageThread"    # J
    .param p3, "messageId"    # J

    .prologue
    .line 206
    new-instance v1, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;

    invoke-direct {v1, p3, p4, p1, p2}, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;-><init>(JJ)V

    .line 207
    .local v1, "messageCacheKey":Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMessageMap:Lcom/sonyericsson/conversations/util/SoftHashMap;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/Message;

    .line 208
    .local v0, "message":Lcom/sonyericsson/conversations/model/Message;
    return-object v0
.end method

.method public removeSlideshow(Landroid/net/Uri;)V
    .locals 3
    .param p1, "messageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 344
    if-eqz p1, :cond_1

    .line 345
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mSlideshowMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    .line 346
    .local v1, "slideshow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v1, :cond_0

    .line 347
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mSlideshowMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mBriefSlideshowCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    .line 350
    .local v0, "briefSlideshow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v0, :cond_1

    .line 351
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mBriefSlideshowCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .end local v0    # "briefSlideshow":Lcom/android/mms/model/SlideshowModel;
    .end local v1    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_1
    return-void
.end method

.method public setImageThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p3, "orientation"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mImageThumbnailCache:Landroid/util/LruCache;

    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/conversations/model/ModelCache;->getKeyForImageThumbnail(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/conversations/model/ModelCache$InUseBitmap;

    invoke-direct {v2, p2}, Lcom/sonyericsson/conversations/model/ModelCache$InUseBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    return-void
.end method

.method public setThumbnailAsNotInUse(Landroid/net/Uri;I)Z
    .locals 4
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mImageThumbnailCache:Landroid/util/LruCache;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/model/ModelCache;->getKeyForImageThumbnail(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/ModelCache$InUseBitmap;

    .line 146
    .local v0, "vb":Lcom/sonyericsson/conversations/model/ModelCache$InUseBitmap;
    if-eqz v0, :cond_0

    .line 147
    iput-boolean v1, v0, Lcom/sonyericsson/conversations/model/ModelCache$InUseBitmap;->inUse:Z

    .line 148
    const/4 v1, 0x1

    .line 150
    :cond_0
    return v1
.end method

.method public setVideoThumbnail(Landroid/net/Uri;JLandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "videoUri"    # Landroid/net/Uri;
    .param p2, "uniqueId"    # J
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mVideoThumbnailMap:Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p4, v1}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->putWithExtra(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    return-void
.end method
