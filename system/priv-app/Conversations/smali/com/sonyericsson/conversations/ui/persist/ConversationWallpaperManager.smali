.class public Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
.super Ljava/lang/Object;
.source "ConversationWallpaperManager.java"

# interfaces
.implements Lcom/sonyericsson/conversations/memory/LowMemoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$3;,
        Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$WallpaperManagerInstanceHolder;
    }
.end annotation


# static fields
.field private static final CACHE_MEMORY_FRACTION:I = 0xa

.field private static final CORE_THREADS:I = 0x2

.field private static final MAX_TASKS:I = 0x10

.field private static final MAX_THREADS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ConversationWallpaperManager"

.field private static final THREAD_KEEP_ALIVE_SEC:I = 0xa

.field private static final TIMEOUT_SEC:J = 0xfL

.field private static final WALLPAPER_DIRECTORY:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_FILE_TYPE:Ljava/lang/String; = ".png"

.field private static final WALLPAPER_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field private static final WALLPAPER_QUALITY:I = 0x64

.field private static sWallpaperDir:Ljava/io/File;


# instance fields
.field private final mExecutor:Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mWallpaperCache:Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->WALLPAPER_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;

    const/4 v1, 0x2

    const/4 v2, 0x4

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v7, 0x10

    invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mExecutor:Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;

    .line 73
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;->create(I)Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperCache:Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    .line 74
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getLowMemoryManager()Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->register(Lcom/sonyericsson/conversations/memory/LowMemoryListener;)V

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;Landroid/graphics/Bitmap;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->storeInFile(Landroid/content/Context;Landroid/graphics/Bitmap;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->loadFromFile(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private cacheWallpaper(Landroid/graphics/Bitmap;J)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "threadId"    # J

    .prologue
    .line 314
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperCache:Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    monitor-enter v2

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperCache:Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 316
    .local v0, "old":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 319
    :cond_0
    monitor-exit v2

    .line 320
    return-void

    .line 319
    .end local v0    # "old":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearCache()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperCache:Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 453
    return-void
.end method

.method private deleteCachedWallpaper(J)V
    .locals 4
    .param p1, "threadId"    # J

    .prologue
    .line 298
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperCache:Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    monitor-enter v2

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperCache:Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 300
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 303
    :cond_0
    monitor-exit v2

    .line 304
    return-void

    .line 303
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private executeIoTask(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "ioTask"    # Ljava/lang/Runnable;
    .param p2, "threadId"    # J

    .prologue
    .line 439
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->waitForIoTask(J)V

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mExecutor:Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 441
    return-void
.end method

.method private getCachedWallpaper(J)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "threadId"    # J

    .prologue
    .line 285
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperCache:Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    monitor-enter v2

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperCache:Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 287
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    monitor-exit v2

    .line 288
    return-object v0

    .line 287
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getFilename(Landroid/content/Context;J)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J

    .prologue
    .line 404
    sget-object v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->sWallpaperDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 405
    const-string v0, "wallpaper"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->sWallpaperDir:Ljava/io/File;

    .line 407
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->sWallpaperDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    .locals 1

    .prologue
    .line 83
    # getter for: Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$WallpaperManagerInstanceHolder;->INSTANCE:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$WallpaperManagerInstanceHolder;->access$100()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method private loadFromFile(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getFilename(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v1

    .line 387
    .local v1, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 388
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 389
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create Bitmap from wallpaper file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 392
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->cacheWallpaper(Landroid/graphics/Bitmap;J)V

    .line 393
    return-object v0
.end method

.method private loadFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallpaper"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 97
    .local v1, "is":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 98
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not open input stream to load wallpaper."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_0
    :try_start_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 103
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 105
    if-nez v0, :cond_1

    .line 106
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No image data read from stream."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2

    .line 108
    :cond_1
    return-object v0
.end method

.method private storeInFile(Landroid/content/Context;Landroid/graphics/Bitmap;J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-direct {p0, p1, p3, p4}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getFilename(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v2

    .line 358
    .local v2, "wallpaperFile":Ljava/io/File;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 360
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v3, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->WALLPAPER_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    .line 361
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 362
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to store "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    .end local v1    # "success":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 368
    .restart local v1    # "success":Z
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 372
    return-void
.end method

.method private waitForIoTask(J)V
    .locals 5
    .param p1, "threadId"    # J

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mExecutor:Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->isTaskExecuting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mExecutor:Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->await(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public deleteWallpaper(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->deleteCachedWallpaper(J)V

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getFilename(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 181
    .local v0, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_0
    return-void
.end method

.method public hasWallpaper(Landroid/content/Context;J)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J

    .prologue
    .line 262
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getFilename(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 263
    .local v0, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public onTrimMemory(Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;)V
    .locals 2
    .param p1, "level"    # Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    .prologue
    .line 444
    sget-object v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$3;->$SwitchMap$com$sonyericsson$conversations$memory$LowMemoryManager$OnTrimMemoryLevel:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 449
    :goto_0
    return-void

    .line 447
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->clearCache()V

    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public preLoad(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J

    .prologue
    .line 331
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->hasWallpaper(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->wallpaperIsCached(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    new-instance v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;-><init>(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;J)V

    .line 344
    .local v0, "loadTask":Ljava/lang/Runnable;
    invoke-direct {p0, v0, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->executeIoTask(Ljava/lang/Runnable;J)V

    .line 346
    .end local v0    # "loadTask":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public setWallpaper(Landroid/content/Context;Landroid/view/View;J)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 205
    .local v3, "oldWallpaper":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p3, p4}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->wallpaperIsCached(J)Z

    move-result v6

    if-nez v6, :cond_1

    .line 208
    invoke-direct {p0, p3, p4}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->waitForIoTask(J)V

    .line 210
    invoke-virtual {p0, p1, p3, p4}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->hasWallpaper(Landroid/content/Context;J)Z

    move-result v6

    if-nez v6, :cond_1

    .line 215
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 252
    .end local v3    # "oldWallpaper":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 220
    .restart local v3    # "oldWallpaper":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getCachedWallpaper(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 226
    invoke-direct {p0, p1, p3, p4}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->loadFromFile(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 230
    .local v4, "res":Landroid/content/res/Resources;
    const/4 v6, 0x0

    invoke-static {p2, v0, v6}, Lcom/sonyericsson/conversations/util/MediaUtil;->getDisplayStationaryBitmap(Landroid/view/View;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 231
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 238
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 239
    .local v5, "wallpaper":Landroid/graphics/drawable/BitmapDrawable;
    const v6, 0x7f0c0006

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 241
    invoke-virtual {p2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 246
    if-eqz v3, :cond_0

    instance-of v6, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    .line 247
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "oldWallpaper":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 248
    .local v2, "old":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public storeWallpaper(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallpaper"    # Landroid/net/Uri;
    .param p3, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 125
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/util/ExifUtil;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v8

    .line 128
    .local v8, "orientation":I
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 129
    .local v10, "wm":Landroid/view/WindowManager;
    if-nez v10, :cond_0

    .line 130
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Window service is null"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_0
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v7

    .line 135
    .local v7, "displaySize":Landroid/graphics/Point;
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->loadFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 136
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget v1, v7, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    invoke-static {v6, v1, v2, v8, v4}, Lcom/sonyericsson/conversations/util/MediaUtil;->scaleAndRotate(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 137
    .local v9, "scaledBitmap":Landroid/graphics/Bitmap;
    iget v1, v7, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    invoke-static {v9, v1, v2, v4}, Lcom/sonyericsson/conversations/util/MediaUtil;->cropCenterBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 140
    .local v3, "croppedBitmap":Landroid/graphics/Bitmap;
    if-eq v9, v6, :cond_1

    .line 141
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    :cond_1
    if-eq v3, v9, :cond_2

    .line 144
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    :cond_2
    invoke-direct {p0, v3, p3, p4}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->cacheWallpaper(Landroid/graphics/Bitmap;J)V

    .line 152
    new-instance v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;-><init>(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;Landroid/graphics/Bitmap;J)V

    .line 167
    .local v0, "storeTask":Ljava/lang/Runnable;
    invoke-direct {p0, v0, p3, p4}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->executeIoTask(Ljava/lang/Runnable;J)V

    .line 168
    return-void
.end method

.method public wallpaperIsCached(J)Z
    .locals 1
    .param p1, "threadId"    # J

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getCachedWallpaper(J)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
