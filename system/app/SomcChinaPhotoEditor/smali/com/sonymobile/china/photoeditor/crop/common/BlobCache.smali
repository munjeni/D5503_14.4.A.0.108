.class public Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;
.super Ljava/lang/Object;
.source "BlobCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;
    }
.end annotation


# static fields
.field private static final BH_CHECKSUM:I = 0x8

.field private static final BH_KEY:I = 0x0

.field private static final BH_LENGTH:I = 0x10

.field private static final BH_OFFSET:I = 0xc

.field private static final BLOB_HEADER_SIZE:I = 0x14

.field private static final DATA_HEADER_SIZE:I = 0x4

.field private static final IH_ACTIVE_BYTES:I = 0x14

.field private static final IH_ACTIVE_ENTRIES:I = 0x10

.field private static final IH_ACTIVE_REGION:I = 0xc

.field private static final IH_CHECKSUM:I = 0x1c

.field private static final IH_MAGIC:I = 0x0

.field private static final IH_MAX_BYTES:I = 0x8

.field private static final IH_MAX_ENTRIES:I = 0x4

.field private static final IH_VERSION:I = 0x18

.field private static final INDEX_HEADER_SIZE:I = 0x20

.field private static final MAGIC_DATA_FILE:I = -0x42db7af0

.field private static final MAGIC_INDEX_FILE:I = -0x4cd8cfd0


# instance fields
.field private mActiveBytes:I

.field private mActiveDataFile:Ljava/io/RandomAccessFile;

.field private mActiveEntries:I

.field private mActiveHashStart:I

.field private mActiveRegion:I

.field private mAdler32:Ljava/util/zip/Adler32;

.field private mBlobHeader:[B

.field private mDataFile0:Ljava/io/RandomAccessFile;

.field private mDataFile1:Ljava/io/RandomAccessFile;

.field private mFileOffset:I

.field private mInactiveDataFile:Ljava/io/RandomAccessFile;

.field private mInactiveHashStart:I

.field private mIndexBuffer:Ljava/nio/MappedByteBuffer;

.field private mIndexChannel:Ljava/nio/channels/FileChannel;

.field private mIndexFile:Ljava/io/RandomAccessFile;

.field private mIndexHeader:[B

.field private mLookupRequest:Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;

.field private mMaxBytes:I

.field private mMaxEntries:I

.field private mSlotOffset:I

.field private mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "maxEntries"    # I
    .param p3, "maxBytes"    # I
    .param p4, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;-><init>(Ljava/lang/String;IIZI)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "maxEntries"    # I
    .param p3, "maxBytes"    # I
    .param p4, "reset"    # Z
    .param p5, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexHeader:[B

    .line 157
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mBlobHeader:[B

    .line 159
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    .line 473
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mLookupRequest:Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;

    .line 173
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    .line 174
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    .line 175
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    .line 176
    iput p5, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mVersion:I

    .line 178
    if-nez p4, :cond_1

    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->loadIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    return-void

    .line 182
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->resetCache(II)V

    .line 184
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->loadIndex()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->closeAll()V

    .line 186
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unable to load index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearHash(I)V
    .locals 6
    .param p1, "hashStart"    # I

    .prologue
    const/16 v5, 0x400

    .line 413
    new-array v2, v5, [B

    .line 414
    .local v2, "zero":[B
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 415
    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v0, v3, 0xc

    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_0

    .line 416
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 417
    .local v1, "todo":I
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 418
    sub-int/2addr v0, v1

    .line 419
    goto :goto_0

    .line 420
    .end local v1    # "todo":I
    :cond_0
    return-void
.end method

.method private closeAll()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 216
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 217
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 218
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 219
    return-void
.end method

.method static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 710
    if-nez p0, :cond_0

    .line 717
    :goto_0
    return-void

    .line 713
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 714
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static deleteFileSilently(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 200
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static deleteFiles(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method private flipRegion()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveRegion:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveRegion:I

    .line 391
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveEntries:I

    .line 392
    const/4 v0, 0x4

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveBytes:I

    .line 394
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0xc

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveRegion:I

    invoke-static {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 395
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 396
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x14

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveBytes:I

    invoke-static {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 397
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->updateIndexHeader()V

    .line 399
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->setActiveVariables()V

    .line 400
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->clearHash(I)V

    .line 401
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->syncIndex()V

    .line 402
    return-void
.end method

.method private getBlob(Ljava/io/RandomAccessFile;ILcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;)Z
    .locals 12
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "offset"    # I
    .param p3, "req"    # Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mBlobHeader:[B

    .line 545
    .local v4, "header":[B
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    .line 547
    .local v6, "oldPosition":J
    int-to-long v10, p2

    :try_start_0
    invoke-virtual {p1, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 548
    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    const/16 v11, 0x14

    if-eq v10, v11, :cond_0

    .line 552
    const/4 v10, 0x0

    .line 602
    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    return v10

    .line 554
    :cond_0
    const/4 v10, 0x0

    :try_start_1
    invoke-static {v4, v10}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->readLong([BI)J

    move-result-wide v1

    .line 555
    .local v1, "blobKey":J
    iget-wide v10, p3, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;->key:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v10, v1, v10

    if-eqz v10, :cond_1

    .line 559
    const/4 v10, 0x0

    .line 602
    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 561
    :cond_1
    const/16 v10, 0x8

    :try_start_2
    invoke-static {v4, v10}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->readInt([BI)I

    move-result v8

    .line 562
    .local v8, "sum":I
    const/16 v10, 0xc

    invoke-static {v4, v10}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->readInt([BI)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 563
    .local v3, "blobOffset":I
    if-eq v3, p2, :cond_2

    .line 567
    const/4 v10, 0x0

    .line 602
    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 569
    :cond_2
    const/16 v10, 0x10

    :try_start_3
    invoke-static {v4, v10}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->readInt([BI)I

    move-result v5

    .line 570
    .local v5, "length":I
    if-ltz v5, :cond_3

    iget v10, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxBytes:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v10, p2

    add-int/lit8 v10, v10, -0x14

    if-le v5, v10, :cond_4

    .line 574
    :cond_3
    const/4 v10, 0x0

    .line 602
    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 576
    :cond_4
    :try_start_4
    iget-object v10, p3, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;->buffer:[B

    if-eqz v10, :cond_5

    iget-object v10, p3, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;->buffer:[B

    array-length v10, v10

    if-ge v10, v5, :cond_6

    .line 577
    :cond_5
    new-array v10, v5, [B

    iput-object v10, p3, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;->buffer:[B

    .line 580
    :cond_6
    iget-object v0, p3, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;->buffer:[B

    .line 581
    .local v0, "blob":[B
    iput v5, p3, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;->length:I

    .line 583
    const/4 v10, 0x0

    invoke-virtual {p1, v0, v10, v5}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    if-eq v10, v5, :cond_7

    .line 587
    const/4 v10, 0x0

    .line 602
    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 589
    :cond_7
    const/4 v10, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v10, v5}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->checkSum([BII)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v10

    if-eq v10, v8, :cond_8

    .line 593
    const/4 v10, 0x0

    .line 602
    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 595
    :cond_8
    const/4 v10, 0x1

    .line 602
    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 596
    .end local v0    # "blob":[B
    .end local v1    # "blobKey":J
    .end local v3    # "blobOffset":I
    .end local v5    # "length":I
    .end local v8    # "sum":I
    :catch_0
    move-exception v9

    .line 600
    .local v9, "t":Ljava/lang/Throwable;
    const/4 v10, 0x0

    .line 602
    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .end local v9    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v10

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    throw v10
.end method

.method private insertInternal(J[BI)V
    .locals 5
    .param p1, "key"    # J
    .param p3, "data"    # [B
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 448
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mBlobHeader:[B

    .line 449
    .local v0, "header":[B
    invoke-virtual {p0, p3}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->checkSum([B)I

    move-result v1

    .line 450
    .local v1, "sum":I
    invoke-static {v0, v4, p1, p2}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeLong([BIJ)V

    .line 451
    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 452
    const/16 v2, 0xc

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveBytes:I

    invoke-static {v0, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 453
    const/16 v2, 0x10

    invoke-static {v0, v2, p4}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 454
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 455
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p3, v4, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 457
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mSlotOffset:I

    invoke-virtual {v2, v3, p1, p2}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 458
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mSlotOffset:I

    add-int/lit8 v3, v3, 0x8

    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveBytes:I

    invoke-virtual {v2, v3, v4}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 459
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveBytes:I

    add-int/lit8 v3, p4, 0x14

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveBytes:I

    .line 460
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexHeader:[B

    const/16 v3, 0x14

    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveBytes:I

    invoke-static {v2, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 461
    return-void
.end method

.method private loadIndex()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const v5, -0x42db7af0

    const/4 v4, 0x4

    const/4 v10, 0x0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 226
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 227
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 229
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexHeader:[B

    .line 230
    .local v6, "buf":[B
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    move v0, v10

    .line 342
    .end local v6    # "buf":[B
    :goto_0
    return v0

    .line 237
    .restart local v6    # "buf":[B
    :cond_0
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->readInt([BI)I

    move-result v0

    const v1, -0x4cd8cfd0

    if-eq v0, v1, :cond_1

    move v0, v10

    .line 241
    goto :goto_0

    .line 244
    :cond_1
    const/16 v0, 0x18

    invoke-static {v6, v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->readInt([BI)I

    move-result v0

    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mVersion:I

    if-eq v0, v1, :cond_2

    move v0, v10

    .line 248
    goto :goto_0

    .line 251
    :cond_2
    const/4 v0, 0x4

    invoke-static {v6, v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxEntries:I

    .line 252
    const/16 v0, 0x8

    invoke-static {v6, v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxBytes:I

    .line 253
    const/16 v0, 0xc

    invoke-static {v6, v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveRegion:I

    .line 254
    const/16 v0, 0x10

    invoke-static {v6, v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveEntries:I

    .line 255
    const/16 v0, 0x14

    invoke-static {v6, v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveBytes:I

    .line 257
    const/16 v0, 0x1c

    invoke-static {v6, v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->readInt([BI)I

    move-result v9

    .line 258
    .local v9, "sum":I
    const/4 v0, 0x0

    const/16 v1, 0x1c

    invoke-virtual {p0, v6, v0, v1}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->checkSum([BII)I

    move-result v0

    if-eq v0, v9, :cond_3

    move v0, v10

    .line 262
    goto :goto_0

    .line 266
    :cond_3
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxEntries:I

    if-gtz v0, :cond_4

    move v0, v10

    .line 270
    goto :goto_0

    .line 272
    :cond_4
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxBytes:I

    if-gtz v0, :cond_5

    move v0, v10

    .line 276
    goto :goto_0

    .line 278
    :cond_5
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveRegion:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveRegion:I

    if-eq v0, v11, :cond_6

    move v0, v10

    .line 282
    goto :goto_0

    .line 284
    :cond_6
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveEntries:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveEntries:I

    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxEntries:I

    if-le v0, v1, :cond_8

    :cond_7
    move v0, v10

    .line 288
    goto :goto_0

    .line 290
    :cond_8
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveBytes:I

    if-lt v0, v4, :cond_9

    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveBytes:I

    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_a

    :cond_9
    move v0, v10

    .line 294
    goto :goto_0

    .line 296
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v2, v2, 0xc

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    move v0, v10

    .line 300
    goto/16 :goto_0

    .line 304
    :cond_b
    const/4 v0, 0x4

    new-array v8, v0, [B

    .line 305
    .local v8, "magic":[B
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, v4, :cond_c

    move v0, v10

    .line 309
    goto/16 :goto_0

    .line 311
    :cond_c
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_d

    move v0, v10

    .line 315
    goto/16 :goto_0

    .line 317
    :cond_d
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, v4, :cond_e

    move v0, v10

    .line 321
    goto/16 :goto_0

    .line 323
    :cond_e
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_f

    move v0, v10

    .line 327
    goto/16 :goto_0

    .line 331
    :cond_f
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    .line 332
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    .line 334
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 336
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->setActiveVariables()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    .line 337
    goto/16 :goto_0

    .line 338
    .end local v6    # "buf":[B
    .end local v8    # "magic":[B
    .end local v9    # "sum":I
    :catch_0
    move-exception v7

    .local v7, "ex":Ljava/io/IOException;
    move v0, v10

    .line 342
    goto/16 :goto_0
.end method

.method private lookupInternal(JI)Z
    .locals 9
    .param p1, "key"    # J
    .param p3, "hashStart"    # I

    .prologue
    const/4 v6, 0x0

    .line 618
    iget v7, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxEntries:I

    int-to-long v7, v7

    rem-long v7, p1, v7

    long-to-int v4, v7

    .line 619
    .local v4, "slot":I
    if-gez v4, :cond_0

    .line 620
    iget v7, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxEntries:I

    add-int/2addr v4, v7

    .line 621
    :cond_0
    move v5, v4

    .line 623
    .local v5, "slotBegin":I
    :cond_1
    :goto_0
    mul-int/lit8 v7, v4, 0xc

    add-int v3, p3, v7

    .line 624
    .local v3, "offset":I
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v0

    .line 625
    .local v0, "candidateKey":J
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v8, v3, 0x8

    invoke-virtual {v7, v8}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v2

    .line 626
    .local v2, "candidateOffset":I
    if-nez v2, :cond_2

    .line 627
    iput v3, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mSlotOffset:I

    .line 632
    :goto_1
    return v6

    .line 629
    :cond_2
    cmp-long v7, v0, p1

    if-nez v7, :cond_3

    .line 630
    iput v3, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mSlotOffset:I

    .line 631
    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mFileOffset:I

    .line 632
    const/4 v6, 0x1

    goto :goto_1

    .line 634
    :cond_3
    add-int/lit8 v4, v4, 0x1

    iget v7, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxEntries:I

    if-lt v4, v7, :cond_4

    .line 635
    const/4 v4, 0x0

    .line 637
    :cond_4
    if-ne v4, v5, :cond_1

    .line 641
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v8, v4, 0xc

    add-int/2addr v8, p3

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v7, v8, v6}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method static readInt([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 720
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static readLong([BI)J
    .locals 7
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 725
    add-int/lit8 v3, p1, 0x7

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v1, v3

    .line 726
    .local v1, "result":J
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 727
    const/16 v3, 0x8

    shl-long v3, v1, v3

    add-int v5, p1, v0

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v1, v3, v5

    .line 726
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 729
    :cond_0
    return-wide v1
.end method

.method private resetCache(II)V
    .locals 9
    .param p1, "maxEntries"    # I
    .param p2, "maxBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x1c

    const/4 v7, 0x4

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 363
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 364
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    mul-int/lit8 v2, p1, 0xc

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 365
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 366
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexHeader:[B

    .line 367
    .local v0, "buf":[B
    const v1, -0x4cd8cfd0

    invoke-static {v0, v4, v1}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 368
    invoke-static {v0, v7, p1}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 369
    const/16 v1, 0x8

    invoke-static {v0, v1, p2}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 370
    const/16 v1, 0xc

    invoke-static {v0, v1, v4}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 371
    const/16 v1, 0x10

    invoke-static {v0, v1, v4}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 372
    const/16 v1, 0x14

    invoke-static {v0, v1, v7}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 373
    const/16 v1, 0x18

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mVersion:I

    invoke-static {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 374
    invoke-virtual {p0, v0, v4, v8}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v8, v1}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 375
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 379
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 380
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 381
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 382
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 383
    const v1, -0x42db7af0

    invoke-static {v0, v4, v1}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 384
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 385
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 386
    return-void
.end method

.method private setActiveVariables()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 347
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_0
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    .line 348
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveRegion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_1
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    .line 349
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 350
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 352
    iput v3, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveHashStart:I

    .line 353
    iput v3, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mInactiveHashStart:I

    .line 355
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_2

    .line 356
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mInactiveHashStart:I

    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mInactiveHashStart:I

    .line 360
    :goto_2
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_1

    .line 358
    :cond_2
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveHashStart:I

    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveHashStart:I

    goto :goto_2
.end method

.method private updateIndexHeader()V
    .locals 4

    .prologue
    const/16 v3, 0x1c

    const/4 v2, 0x0

    .line 406
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexHeader:[B

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexHeader:[B

    invoke-virtual {p0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 407
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 408
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexHeader:[B

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 409
    return-void
.end method

.method static writeInt([BII)V
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .prologue
    .line 733
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 734
    add-int v1, p1, v0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 735
    shr-int/lit8 p2, p2, 0x8

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 737
    :cond_0
    return-void
.end method

.method static writeLong([BIJ)V
    .locals 5
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .prologue
    const/16 v4, 0x8

    .line 740
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 741
    add-int v1, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 742
    shr-long/2addr p2, v4

    .line 740
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 744
    :cond_0
    return-void
.end method


# virtual methods
.method checkSum([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 698
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 699
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 700
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method checkSum([BII)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "nbytes"    # I

    .prologue
    .line 704
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 705
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 706
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->syncAll()V

    .line 211
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->closeAll()V

    .line 212
    return-void
.end method

.method getActiveCount()I
    .locals 6

    .prologue
    .line 680
    const/4 v1, 0x0

    .line 681
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxEntries:I

    if-ge v2, v4, :cond_1

    .line 682
    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveHashStart:I

    mul-int/lit8 v5, v2, 0xc

    add-int v3, v4, v5

    .line 683
    .local v3, "offset":I
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v5, v3, 0x8

    invoke-virtual {v4, v5}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v0

    .line 684
    .local v0, "candidateOffset":I
    if-eqz v0, :cond_0

    .line 685
    add-int/lit8 v1, v1, 0x1

    .line 681
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 687
    .end local v0    # "candidateOffset":I
    .end local v3    # "offset":I
    :cond_1
    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveEntries:I

    if-ne v1, v4, :cond_2

    .line 693
    .end local v1    # "count":I
    :goto_1
    return v1

    .restart local v1    # "count":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public insert(J[B)V
    .locals 3
    .param p1, "key"    # J
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_0

    .line 425
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "blob is too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveBytes:I

    add-int/lit8 v0, v0, 0x14

    array-length v1, p3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxBytes:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveEntries:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxEntries:I

    if-lt v0, v1, :cond_2

    .line 430
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->flipRegion()V

    .line 433
    :cond_2
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->lookupInternal(JI)Z

    move-result v0

    if-nez v0, :cond_3

    .line 436
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveEntries:I

    .line 437
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 440
    :cond_3
    array-length v0, p3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->insertInternal(J[BI)V

    .line 441
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->updateIndexHeader()V

    .line 442
    return-void
.end method

.method public lookup(Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;)Z
    .locals 6
    .param p1, "req"    # Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 497
    iget-wide v2, p1, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;->key:J

    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->lookupInternal(JI)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 498
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mFileOffset:I

    invoke-direct {p0, v2, v3, p1}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 533
    :cond_0
    :goto_0
    return v1

    .line 506
    :cond_1
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mSlotOffset:I

    .line 509
    .local v0, "insertOffset":I
    iget-wide v2, p1, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;->key:J

    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mInactiveHashStart:I

    invoke-direct {p0, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->lookupInternal(JI)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 510
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mFileOffset:I

    invoke-direct {p0, v2, v3, p1}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveBytes:I

    add-int/lit8 v2, v2, 0x14

    iget v3, p1, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;->length:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxBytes:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveEntries:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mMaxEntries:I

    if-ge v2, v3, :cond_0

    .line 518
    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mSlotOffset:I

    .line 520
    :try_start_0
    iget-wide v2, p1, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;->key:J

    iget-object v4, p1, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;->buffer:[B

    iget v5, p1, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;->length:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->insertInternal(J[BI)V

    .line 521
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveEntries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveEntries:I

    .line 522
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexHeader:[B

    const/16 v3, 0x10

    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mActiveEntries:I

    invoke-static {v2, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->writeInt([BII)V

    .line 523
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->updateIndexHeader()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 524
    :catch_0
    move-exception v2

    goto :goto_0

    .line 533
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lookup(J)[B
    .locals 2
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 476
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mLookupRequest:Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;

    iput-wide p1, v1, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;->key:J

    .line 477
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mLookupRequest:Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;->buffer:[B

    .line 478
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mLookupRequest:Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->lookup(Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mLookupRequest:Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache$LookupRequest;->buffer:[B

    .line 481
    :cond_0
    return-object v0
.end method

.method public syncAll()V
    .locals 1

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->syncIndex()V

    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 667
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 673
    :goto_1
    return-void

    .line 668
    :catch_0
    move-exception v0

    goto :goto_1

    .line 661
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public syncIndex()V
    .locals 1

    .prologue
    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v0

    goto :goto_0
.end method
