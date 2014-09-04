.class public Lcom/sonyericsson/drm/drmstream/DrmStream;
.super Ljava/io/InputStream;
.source "DrmStream.java"


# static fields
.field private static final DECRYPT_API_CONTAINER_BASED:I = 0x2

.field private static final LIB_NAME:Ljava/lang/String; = "drmstream"

.field private static TAG:Ljava/lang/String; = null

.field private static final sSEEK_CUR:I = 0x1

.field private static final sSEEK_END:I = 0x2

.field private static final sSEEK_SET:I


# instance fields
.field private mDecryptHandle:Lcom/sonyericsson/drm/drmstream/DecryptHandle;

.field private mFd:I

.field private final mFilepath:Ljava/lang/String;

.field private mMarkPos:I

.field private mMarkReadLimit:I

.field private mMarkReadLimitCount:I

.field private mNativeDrmClient:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 21
    const-string v2, "DrmStream"

    sput-object v2, Lcom/sonyericsson/drm/drmstream/DrmStream;->TAG:Ljava/lang/String;

    .line 55
    const-string v0, "drmstream"

    .line 57
    .local v0, "libname":Ljava/lang/String;
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "jb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 66
    :goto_1
    return-void

    .line 60
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ics"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "ule":Ljava/lang/UnsatisfiedLinkError;
    sget-object v2, Lcom/sonyericsson/drm/drmstream/DrmStream;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load library "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 68
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 38
    iput-wide v2, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    .line 41
    iput v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mFd:I

    .line 46
    iput v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mMarkPos:I

    .line 48
    iput v1, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mMarkReadLimit:I

    .line 50
    iput v1, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mMarkReadLimitCount:I

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mFilepath:Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Lcom/sonyericsson/drm/drmstream/DrmStream;->nativeOpen(Ljava/lang/String;)V

    .line 72
    iget-wide v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mDecryptHandle:Lcom/sonyericsson/drm/drmstream/DecryptHandle;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mFd:I

    if-gez v0, :cond_1

    .line 73
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", for DRM plaintext stream reading."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mDecryptHandle:Lcom/sonyericsson/drm/drmstream/DecryptHandle;

    iget v0, v0, Lcom/sonyericsson/drm/drmstream/DecryptHandle;->mDecryptApiType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is a DRM content not suiteable for streamed reading."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nUnsupported decryption api."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_2
    return-void
.end method

.method private native nativeAvailible(J)I
.end method

.method private native nativeClose(IJ)V
.end method

.method private native nativeConsume(JI)V
.end method

.method private native nativeOpen(Ljava/lang/String;)V
.end method

.method private native nativeRead([BIJ)I
.end method

.method private native nativeSeek(JIJ)I
.end method

.method private native nativeSkip(JJ)I
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mDecryptHandle:Lcom/sonyericsson/drm/drmstream/DecryptHandle;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mFd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 91
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 93
    :cond_1
    iget-wide v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/drm/drmstream/DrmStream;->nativeAvailible(J)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    .line 101
    iget-wide v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mDecryptHandle:Lcom/sonyericsson/drm/drmstream/DecryptHandle;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mFd:I

    if-ne v0, v3, :cond_1

    .line 102
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 104
    :cond_1
    iget v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mFd:I

    iget-wide v1, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/drm/drmstream/DrmStream;->nativeClose(IJ)V

    .line 105
    iput-wide v4, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mDecryptHandle:Lcom/sonyericsson/drm/drmstream/DecryptHandle;

    .line 107
    iput v3, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mFd:I

    .line 108
    return-void
.end method

.method public consumeRights(I)V
    .locals 4
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mDecryptHandle:Lcom/sonyericsson/drm/drmstream/DecryptHandle;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mFd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 233
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 235
    :cond_1
    iget-wide v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/drm/drmstream/DrmStream;->nativeConsume(JI)V

    .line 236
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 6
    .param p1, "readlimit"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 115
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mDecryptHandle:Lcom/sonyericsson/drm/drmstream/DecryptHandle;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mFd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mMarkReadLimit:I

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mMarkReadLimitCount:I

    .line 120
    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/drm/drmstream/DrmStream;->nativeSeek(JIJ)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mMarkPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-wide v2, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mDecryptHandle:Lcom/sonyericsson/drm/drmstream/DecryptHandle;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mFd:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 158
    :cond_0
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 160
    :cond_1
    const/4 v2, 0x1

    new-array v0, v2, [B

    .line 161
    .local v0, "b":[B
    array-length v2, v0

    iget-wide v3, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/sonyericsson/drm/drmstream/DrmStream;->nativeRead([BIJ)I

    move-result v1

    .line 162
    .local v1, "result":I
    if-lez v1, :cond_2

    .line 163
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v1, v2, 0xff

    .line 164
    iget v2, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mMarkReadLimitCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mMarkReadLimitCount:I

    .line 166
    :cond_2
    return v1
.end method

.method public read([B)I
    .locals 5
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-wide v1, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mDecryptHandle:Lcom/sonyericsson/drm/drmstream/DecryptHandle;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mFd:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 137
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 140
    :cond_1
    if-nez p1, :cond_2

    .line 141
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "parameter 0 (byte[] b) is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_2
    array-length v1, p1

    iget-wide v2, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/sonyericsson/drm/drmstream/DrmStream;->nativeRead([BIJ)I

    move-result v0

    .line 145
    .local v0, "result":I
    if-lez v0, :cond_3

    .line 146
    iget v1, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mMarkReadLimitCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mMarkReadLimitCount:I

    .line 148
    :cond_3
    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "parameter 0 (byte[] b) is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_0
    iget-wide v2, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mDecryptHandle:Lcom/sonyericsson/drm/drmstream/DecryptHandle;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mFd:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 181
    :cond_1
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 184
    :cond_2
    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_4

    .line 185
    :cond_3
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 188
    :cond_4
    new-array v0, p3, [B

    .line 189
    .local v0, "b":[B
    array-length v2, v0

    iget-wide v3, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/sonyericsson/drm/drmstream/DrmStream;->nativeRead([BIJ)I

    move-result v1

    .line 190
    .local v1, "result":I
    if-lez v1, :cond_5

    .line 191
    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget v2, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mMarkReadLimitCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mMarkReadLimitCount:I

    .line 194
    :cond_5
    return v1
.end method

.method public declared-synchronized reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 202
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mDecryptHandle:Lcom/sonyericsson/drm/drmstream/DecryptHandle;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mFd:I

    if-ne v0, v4, :cond_1

    .line 203
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 206
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mMarkReadLimitCount:I

    iget v1, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mMarkReadLimit:I

    if-le v0, v1, :cond_2

    .line 207
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 210
    :cond_2
    iget v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mMarkPos:I

    int-to-long v1, v0

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/drm/drmstream/DrmStream;->nativeSeek(JIJ)I

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mMarkReadLimit:I

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mMarkReadLimitCount:I

    .line 213
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mMarkPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .locals 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 221
    iget-wide v2, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mDecryptHandle:Lcom/sonyericsson/drm/drmstream/DecryptHandle;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mFd:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 222
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 225
    :cond_1
    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 226
    iget-wide v0, p0, Lcom/sonyericsson/drm/drmstream/DrmStream;->mNativeDrmClient:J

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonyericsson/drm/drmstream/DrmStream;->nativeSkip(JJ)I

    move-result v0

    int-to-long v0, v0

    .line 228
    :cond_2
    return-wide v0
.end method
