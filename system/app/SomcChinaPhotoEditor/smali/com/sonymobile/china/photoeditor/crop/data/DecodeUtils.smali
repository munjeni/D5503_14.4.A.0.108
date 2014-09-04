.class public Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;
.super Ljava/lang/Object;
.source "DecodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils$DecodeCanceller;
    }
.end annotation


# static fields
.field private static final BYTE_BUFFER_SIZE:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 218
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p0

    .line 222
    :goto_0
    return-object v0

    .line 220
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static requestCreateBitmapRegionDecoder(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 3
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "shareable"    # Z

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v2, "r"

    invoke-virtual {p2, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2, p3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 292
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    :goto_0
    return-object v2

    .line 286
    :catch_0
    move-exception v1

    .line 290
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 292
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v2
.end method

.method public static requestCreateBitmapRegionDecoder(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "shareable"    # Z

    .prologue
    .line 257
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 262
    :goto_0
    return-object v1

    .line 258
    :catch_0
    move-exception v0

    .line 262
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestCreateBitmapRegionDecoder(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "shareable"    # Z

    .prologue
    .line 269
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 276
    :goto_0
    return-object v1

    .line 270
    :catch_0
    move-exception v0

    .line 276
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestCreateBitmapRegionDecoder(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "shareable"    # Z

    .prologue
    .line 245
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 250
    :goto_0
    return-object v1

    .line 246
    :catch_0
    move-exception v0

    .line 250
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestCreateBitmapRegionDecoder(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;[BIIZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 6
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "shareable"    # Z

    .prologue
    .line 227
    if-ltz p2, :cond_0

    if-lez p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 228
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "offset = %s, length = %s, bytes = %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_1
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 238
    :goto_0
    return-object v1

    .line 234
    :catch_0
    move-exception v0

    .line 238
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestDecode(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 67
    if-nez p2, :cond_0

    .line 68
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 69
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p2}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V

    .line 70
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static requestDecode(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "targetSize"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 125
    if-nez p2, :cond_0

    .line 126
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 128
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    new-instance v2, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v2, p2}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v2}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V

    .line 130
    iput-boolean v4, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 131
    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 132
    invoke-interface {p0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    :goto_0
    return-object v1

    .line 135
    :cond_1
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3, p3}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v2

    iput v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 137
    const/4 v2, 0x0

    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 139
    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    .local v0, "result":Landroid/graphics/Bitmap;
    invoke-static {v0, p3, v4}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->resizeDownIfTooBig(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static requestDecode(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p2, "paddings"    # Landroid/graphics/Rect;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 207
    if-nez p3, :cond_0

    .line 208
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    .end local p3    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 209
    .restart local p3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p3}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V

    .line 210
    invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static requestDecode(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "targetSize"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 148
    if-nez p2, :cond_0

    .line 149
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 150
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    new-instance v4, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v4, p2}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v4}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V

    .line 152
    iput-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "data":[B
    :try_start_0
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    array-length v4, v0

    invoke-static {v0, v5, v4, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 164
    invoke-interface {p0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 175
    :goto_0
    return-object v3

    .line 157
    :catch_0
    move-exception v2

    .line 161
    .local v2, "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 167
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4, p3}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v3

    iput v3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 169
    iput-boolean v5, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 171
    array-length v3, v0

    invoke-static {v0, v5, v3, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 174
    .local v1, "result":Landroid/graphics/Bitmap;
    invoke-static {v1, p3, v6}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->resizeDownIfTooBig(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 175
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method public static requestDecode(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 60
    if-nez p2, :cond_0

    .line 61
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 62
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p2}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V

    .line 63
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static requestDecode(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "targetSize"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->requestDecode(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static requestDecode(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "targetSize"    # I
    .param p4, "isDrm"    # Z

    .prologue
    const/4 v6, 0x0

    .line 93
    if-eqz p4, :cond_0

    .line 94
    const/4 v4, 0x0

    .line 96
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Lcom/sonyericsson/drm/drmstream/DrmStream;

    invoke-direct {v5, p1}, Lcom/sonyericsson/drm/drmstream/DrmStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {p0, v5, p2, p3}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->requestDecode(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v6

    .line 104
    invoke-static {v5}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 118
    .end local v5    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v6

    .line 98
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .line 107
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_0
    const/4 v2, 0x0

    .line 109
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 111
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-static {p0, v1, p2, p3}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->requestDecode(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v6

    .line 118
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 112
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 118
    .restart local v0    # "ex":Ljava/lang/Exception;
    :goto_3
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    :goto_4
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 112
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 104
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_3
    move-exception v6

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 98
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v0

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static requestDecode(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 79
    if-nez p4, :cond_0

    .line 80
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 81
    .restart local p4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p4}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V

    .line 82
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static requestDecode(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "bytes"    # [B
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 74
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->requestDecode(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static requestDecodeIfBigEnough(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "data"    # [B
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "targetSize"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 187
    if-nez p2, :cond_0

    .line 188
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 189
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    new-instance v1, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v1, p2}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 192
    array-length v1, p1

    invoke-static {p1, v2, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 193
    invoke-interface {p0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    :cond_1
    :goto_0
    return-object v0

    .line 195
    :cond_2
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v1, p3, :cond_1

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt v1, p3, :cond_1

    .line 198
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v1, p3}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v0

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 200
    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 201
    array-length v0, p1

    invoke-static {p1, v2, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 302
    if-nez p0, :cond_0

    .line 303
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "is == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 306
    :cond_0
    const/4 v0, 0x0

    .line 308
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 310
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 311
    .local v3, "nRead":I
    const/16 v4, 0x2000

    :try_start_1
    new-array v2, v4, [B

    .line 313
    .local v2, "data":[B
    :goto_0
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {p0, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 314
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 317
    .end local v2    # "data":[B
    :catchall_0
    move-exception v4

    move-object v0, v1

    .end local v1    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "nRead":I
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":[B
    .restart local v3    # "nRead":I
    :cond_1
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 319
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 317
    .end local v1    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v3    # "nRead":I
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v4

    goto :goto_1
.end method
