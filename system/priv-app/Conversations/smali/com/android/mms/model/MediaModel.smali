.class public abstract Lcom/android/mms/model/MediaModel;
.super Lcom/android/mms/model/Model;
.source "MediaModel.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/model/MediaModel$MediaAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaModel"


# instance fields
.field protected mBegin:I

.field protected mContentType:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mData:[B

.field protected mDuration:I

.field protected mFill:S

.field private final mMediaActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel$MediaAction;",
            ">;"
        }
    .end annotation
.end field

.field protected mSeekTo:I

.field protected mSize:I

.field protected mSrc:Ljava/lang/String;

.field protected mTag:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "src"    # Ljava/lang/String;
    .param p5, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 76
    if-nez p5, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uri may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 85
    invoke-direct {p0}, Lcom/android/mms/model/MediaModel;->initMediaSize()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "src"    # Ljava/lang/String;
    .param p5, "data"    # [B

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 91
    if-nez p5, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 99
    iput-object p5, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    .line 100
    array-length v0, p5

    iput v0, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    .line 102
    return-void
.end method

.method private initMediaSize()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v6, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 246
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 247
    .local v5, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 249
    .local v4, "fileChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 251
    if-eqz v5, :cond_0

    .line 252
    instance-of v6, v5, Ljava/io/FileInputStream;

    if-eqz v6, :cond_3

    .line 254
    move-object v0, v5

    check-cast v0, Ljava/io/FileInputStream;

    move-object v3, v0

    .line 255
    .local v3, "f":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 256
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, p0, Lcom/android/mms/model/MediaModel;->mSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .end local v3    # "f":Ljava/io/FileInputStream;
    :cond_0
    if-eqz v5, :cond_1

    .line 273
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 279
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 281
    :try_start_2
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 290
    :cond_2
    :goto_1
    return-void

    .line 258
    :cond_3
    :goto_2
    const/4 v6, -0x1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 259
    iget v6, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/mms/model/MediaModel;->mSize:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 264
    :catch_0
    move-exception v2

    .line 266
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    const-string v6, "MediaModel"

    const-string v7, "IOException caught while opening or reading stream"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    instance-of v6, v2, Ljava/io/FileNotFoundException;

    if-eqz v6, :cond_6

    .line 268
    new-instance v6, Lcom/google/android/mms/MmsException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 271
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_4

    .line 273
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 279
    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 281
    :try_start_6
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 271
    :cond_5
    :goto_4
    throw v6

    .line 274
    :catch_1
    move-exception v2

    .line 276
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "MediaModel"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 282
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 284
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "MediaModel"

    const-string v8, "IOException caught while closing fileChannel"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 271
    :cond_6
    if-eqz v5, :cond_7

    .line 273
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 279
    :cond_7
    :goto_5
    if-eqz v4, :cond_2

    .line 281
    :try_start_8
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 282
    :catch_3
    move-exception v2

    .line 284
    const-string v6, "MediaModel"

    const-string v7, "IOException caught while closing fileChannel"

    :goto_6
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 274
    :catch_4
    move-exception v2

    .line 276
    const-string v6, "MediaModel"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 274
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 276
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "MediaModel"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 284
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "MediaModel"

    const-string v7, "IOException caught while closing fileChannel"

    goto :goto_6
.end method

.method public static isDownloadsUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 303
    if-eqz p0, :cond_0

    .line 304
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 306
    const-string v1, "downloads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 309
    .end local v0    # "authority":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMmsUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 293
    if-eqz p0, :cond_0

    .line 294
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 296
    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 299
    .end local v0    # "authority":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V
    .locals 1
    .param p1, "action"    # Lcom/android/mms/model/MediaModel$MediaAction;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    return-void
.end method

.method public getBegin()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mBegin:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 322
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 324
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel$MediaAction;

    goto :goto_0
.end method

.method public getData()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 154
    .local v0, "data":[B
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    .end local v0    # "data":[B
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    return v0
.end method

.method public getFill()S
    .locals 1

    .prologue
    .line 181
    iget-short v0, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    return v0
.end method

.method public getMediaSize()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    return v0
.end method

.method public getSeekTo()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mSeekTo:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected initMediaDuration()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 221
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 222
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "duration":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 225
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "Could not get duration."

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .end local v0    # "duration":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v3, "MediaModel"

    const-string v4, "Uri is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v3

    .line 228
    .restart local v0    # "duration":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/mms/model/MediaModel;->mDuration:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 242
    return-void

    .line 233
    .end local v0    # "duration":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_3
    const-string v3, "MediaModel"

    const-string v4, "Not allowed to access Uri"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 236
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "MediaModel"

    const-string v4, "File not supported by device"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected initModelFromFileUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "path":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 334
    invoke-static {p2}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeTypeFromFileUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public isAttachment()Z
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string v1, "ref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAudio()Z
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isImage()Z
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string v1, "img"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPlayable()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public isText()Z
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVideo()Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setBegin(I)V
    .locals 1
    .param p1, "begin"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/android/mms/model/MediaModel;->mBegin:I

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 111
    return-void
.end method

.method public setDuration(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->isPlayable()Z

    move-result v1

    if-eqz v1, :cond_0

    if-gez p1, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->initMediaDuration()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 131
    :goto_1
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v1, "MediaModel"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 128
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :cond_0
    iput p1, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    goto :goto_0
.end method

.method public setFill(S)V
    .locals 1
    .param p1, "fill"    # S

    .prologue
    .line 188
    iput-short p1, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 190
    return-void
.end method

.method setUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uri may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 168
    return-void
.end method
