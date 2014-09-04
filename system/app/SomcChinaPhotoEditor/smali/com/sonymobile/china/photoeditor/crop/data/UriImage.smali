.class public Lcom/sonymobile/china/photoeditor/crop/data/UriImage;
.super Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
.source "UriImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/data/UriImage$BitmapJob;,
        Lcom/sonymobile/china/photoeditor/crop/data/UriImage$RegionDecoderJob;
    }
.end annotation


# static fields
.field private static final STATE_DOWNLOADED:I = 0x2

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_INIT:I


# instance fields
.field private mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

.field private mCacheEntry:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;

.field private final mContentType:Ljava/lang/String;

.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mRotation:I

.field private mState:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;Lcom/sonymobile/china/photoeditor/crop/data/Path;Landroid/net/Uri;)V
    .locals 2
    .param p1, "application"    # Lcom/sonymobile/china/photoeditor/crop/GalleryApp;
    .param p2, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 77
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;J)V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mState:I

    .line 78
    iput-object p3, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mUri:Landroid/net/Uri;

    .line 79
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    .line 80
    invoke-direct {p0, p3}, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mContentType:Ljava/lang/String;

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/china/photoeditor/crop/data/UriImage;Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/data/UriImage;
    .param p1, "x1"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->prepareInputFile(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/china/photoeditor/crop/data/UriImage;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/data/UriImage;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method private getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 84
    const-string v2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "type":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 91
    .end local v0    # "extension":Ljava/lang/String;
    .end local v1    # "type":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-interface {v2}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isSharable()Z
    .locals 2

    .prologue
    .line 259
    const-string v0, "file"

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private openFileOrDownloadTempFile(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)V
    .locals 3
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->openOrDownloadInner(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)I

    move-result v0

    .line 106
    .local v0, "state":I
    monitor-enter p0

    .line 107
    :try_start_0
    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mState:I

    .line 108
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 109
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 114
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 115
    monitor-exit p0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private openOrDownloadInner(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)I
    .locals 11
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 119
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "scheme":Ljava/lang/String;
    const-string v8, "content"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.resource"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "file"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 124
    :cond_0
    :try_start_0
    const-string v8, "image/jpeg"

    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 125
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-interface {v8}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 126
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v8

    iput v8, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mRotation:I

    .line 127
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 129
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_1
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-interface {v8}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mUri:Landroid/net/Uri;

    const-string v10, "r"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 130
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    .line 164
    :cond_2
    :goto_0
    return v5

    :cond_3
    move v5, v7

    .line 132
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    move v5, v6

    .line 137
    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :try_start_1
    new-instance v8, Ljava/net/URI;

    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    .line 142
    .local v4, "url":Ljava/net/URL;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-interface {v8}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getDownloadCache()Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    move-result-object v8

    invoke-virtual {v8, p1, v4}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->download(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/net/URL;)Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mCacheEntry:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;

    .line 143
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 146
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mCacheEntry:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;

    if-nez v5, :cond_5

    move v5, v6

    .line 150
    goto :goto_0

    .line 152
    :cond_5
    const-string v5, "image/jpeg"

    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 153
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mCacheEntry:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;

    iget-object v5, v5, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 154
    .restart local v1    # "is":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v5

    iput v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mRotation:I

    .line 155
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 157
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_6
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mCacheEntry:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;

    iget-object v5, v5, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    const/high16 v8, 0x10000000

    invoke-static {v5, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v7

    .line 159
    goto :goto_0

    .line 160
    .end local v4    # "url":Ljava/net/URL;
    :catch_1
    move-exception v3

    .local v3, "t":Ljava/lang/Throwable;
    move v5, v6

    .line 164
    goto :goto_0
.end method

.method private prepareInputFile(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Z
    .locals 4
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 170
    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mState:I

    .line 171
    new-instance v2, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$1;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/UriImage;)V

    invoke-interface {p1, v2}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V

    .line 180
    :goto_0
    monitor-enter p0

    .line 181
    :try_start_0
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    monitor-exit p0

    .line 189
    :goto_1
    return v0

    .line 183
    :cond_0
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mState:I

    if-nez v2, :cond_1

    .line 184
    const/4 v2, 0x1

    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mState:I

    .line 198
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->openFileOrDownloadTempFile(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)V

    goto :goto_0

    .line 186
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 187
    monitor-exit p0

    goto :goto_1

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 188
    :cond_2
    :try_start_2
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 189
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_1

    .line 192
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 286
    return-void

    .line 284
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mRotation:I

    return v0
.end method

.method public getSupportedOperations()I
    .locals 2

    .prologue
    .line 245
    const/16 v0, 0x220

    .line 246
    .local v0, "supported":I
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->isSharable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    or-int/lit8 v0, v0, 0x4

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    or-int/lit8 v0, v0, 0x40

    .line 251
    :cond_1
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$BitmapJob;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/UriImage;I)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$RegionDecoderJob;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$RegionDecoderJob;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/UriImage;Lcom/sonymobile/china/photoeditor/crop/data/UriImage$1;)V

    return-object v0
.end method
