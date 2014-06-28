.class public Lcom/sonyericsson/conversations/ui/GifController;
.super Ljava/lang/Object;
.source "GifController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/GifController$GifListener;
    }
.end annotation


# static fields
.field private static final GIFPLAYER_MSG_TAG:Ljava/lang/String; = "GIF"

.field public static final GIFPLAYER_STATUS_PAUSE:I = 0x3

.field public static final GIFPLAYER_STATUS_START:I = 0x1

.field public static final GIFPLAYER_STATUS_STOP:I = 0x2

.field public static final GIFPLAYER_STATUS_UPDATE:I = 0x5

.field private static final INTERVAL_BETWEEN_GIF_FRAME:I = 0x1e

.field private static final PAUSE_MESSAGE:I = 0x3

.field private static final START_MESSAGE:I = 0x1

.field private static final STOP_MESSAGE:I = 0x2

.field private static final UPDATE_FRAME:I = 0x5


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurSystemTime:J

.field private mDur:I

.field private mGifListener:Lcom/sonyericsson/conversations/ui/GifController$GifListener;

.field private mGifPlayerTime:I

.field private mIsAnimation:Z

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieStart:J

.field private mRefreshInterval:I

.field private mStatus:I

.field private redrawHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const/16 v0, 0x1e

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/GifController;-><init>(Landroid/content/Context;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delay"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v1, p0, Lcom/sonyericsson/conversations/ui/GifController;->mGifPlayerTime:I

    .line 43
    iput-wide v2, p0, Lcom/sonyericsson/conversations/ui/GifController;->mCurSystemTime:J

    .line 45
    iput-wide v2, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovieStart:J

    .line 47
    iput v1, p0, Lcom/sonyericsson/conversations/ui/GifController;->mDur:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mGifListener:Lcom/sonyericsson/conversations/ui/GifController$GifListener;

    .line 63
    iput v1, p0, Lcom/sonyericsson/conversations/ui/GifController;->mStatus:I

    .line 76
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/GifController;->mIsAnimation:Z

    .line 100
    new-instance v0, Lcom/sonyericsson/conversations/ui/GifController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/GifController$1;-><init>(Lcom/sonyericsson/conversations/ui/GifController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->redrawHandler:Landroid/os/Handler;

    .line 156
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/GifController;->mContext:Landroid/content/Context;

    .line 157
    iput p2, p0, Lcom/sonyericsson/conversations/ui/GifController;->mRefreshInterval:I

    .line 158
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/GifController;->mIsAnimation:Z

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->redrawHandler:Landroid/os/Handler;

    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/conversations/ui/GifController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/GifController;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/sonyericsson/conversations/ui/GifController;->mStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/GifController;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/GifController;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovieStart:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/conversations/ui/GifController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/GifController;
    .param p1, "x1"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovieStart:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/GifController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/GifController;

    .prologue
    .line 35
    iget v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mGifPlayerTime:I

    return v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/conversations/ui/GifController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/GifController;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/sonyericsson/conversations/ui/GifController;->mGifPlayerTime:I

    return p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/GifController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/GifController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->redrawHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/conversations/ui/GifController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/GifController;

    .prologue
    .line 35
    iget v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mRefreshInterval:I

    return v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/conversations/ui/GifController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/GifController;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/GifController;->updateMovie()V

    return-void
.end method

.method private getImageSize(Landroid/net/Uri;)J
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const-wide/16 v3, 0x0

    .line 196
    .local v3, "size":J
    const/4 v1, 0x0

    .line 197
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "scheme":Ljava/lang/String;
    const-string v5, "content"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 200
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/GifController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    int-to-long v3, v5

    .line 204
    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 211
    :cond_0
    :goto_0
    return-wide v3

    .line 202
    :catch_0
    move-exception v5

    .line 204
    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v5

    .line 207
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 208
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_0
.end method

.method private resetMovie()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    iput v2, p0, Lcom/sonyericsson/conversations/ui/GifController;->mStatus:I

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovie:Landroid/graphics/Movie;

    .line 260
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovieStart:J

    .line 261
    iput v2, p0, Lcom/sonyericsson/conversations/ui/GifController;->mGifPlayerTime:I

    .line 262
    iput v2, p0, Lcom/sonyericsson/conversations/ui/GifController;->mDur:I

    .line 263
    const/16 v0, 0x1e

    iput v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mRefreshInterval:I

    .line 264
    return-void
.end method

.method private streamToBytes(Ljava/io/InputStream;J)[B
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "size"    # J

    .prologue
    .line 88
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    long-to-int v3, p2

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 89
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 92
    .local v0, "buffer":[B
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-ltz v1, :cond_0

    .line 93
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v1    # "len":I
    :catch_0
    move-exception v3

    .line 97
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private updateMovie()V
    .locals 4

    .prologue
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mCurSystemTime:J

    .line 143
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovieStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mCurSystemTime:J

    :goto_0
    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovieStart:J

    .line 144
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mCurSystemTime:J

    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovieStart:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/sonyericsson/conversations/ui/GifController;->mDur:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mGifPlayerTime:I

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovie:Landroid/graphics/Movie;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/GifController;->mGifPlayerTime:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mGifListener:Lcom/sonyericsson/conversations/ui/GifController$GifListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mGifListener:Lcom/sonyericsson/conversations/ui/GifController$GifListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/GifController$GifListener;->onFrameChanged()V

    .line 149
    :cond_0
    return-void

    .line 143
    :cond_1
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovieStart:J

    goto :goto_0
.end method


# virtual methods
.method public decodeGifImage(I)Z
    .locals 3
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, "is":Ljava/io/InputStream;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/GifController;->resetMovie()V

    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/GifController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 167
    invoke-static {v1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/GifController;->setMovie(Landroid/graphics/Movie;)Z

    move-result v2

    :cond_1
    :goto_0
    return v2

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 171
    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 172
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v2
.end method

.method public decodeGifImage(Landroid/net/Uri;)Z
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 215
    const-wide/16 v3, 0x0

    .line 216
    .local v3, "imageSize":J
    const/4 v5, 0x0

    .line 217
    .local v5, "is":Ljava/io/InputStream;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/GifController;->resetMovie()V

    .line 219
    :try_start_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/GifController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/io/FileInputStream;

    move-object v5, v0

    .line 220
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/GifController;->getImageSize(Landroid/net/Uri;)J

    move-result-wide v3

    .line 221
    invoke-direct {p0, v5, v3, v4}, Lcom/sonyericsson/conversations/ui/GifController;->streamToBytes(Ljava/io/InputStream;J)[B

    move-result-object v1

    .line 222
    .local v1, "array":[B
    const/4 v6, 0x0

    array-length v8, v1

    invoke-static {v1, v6, v8}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    if-eqz v5, :cond_0

    .line 230
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 232
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {p0, v6}, Lcom/sonyericsson/conversations/ui/GifController;->setMovie(Landroid/graphics/Movie;)Z

    move-result v6

    .end local v1    # "array":[B
    :goto_0
    return v6

    .line 224
    :catch_0
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/RuntimeException;
    if-eqz v5, :cond_1

    .line 230
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_1
    move v6, v7

    goto :goto_0

    .line 226
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 229
    .local v2, "e":Ljava/io/IOException;
    if-eqz v5, :cond_2

    .line 230
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_2
    move v6, v7

    goto :goto_0

    .line 229
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_3

    .line 230
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_3
    throw v6
.end method

.method public drawImage(Landroid/graphics/Canvas;II)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovie:Landroid/graphics/Movie;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 298
    return-void
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mStatus:I

    return v0
.end method

.method public pauseAnimation()V
    .locals 4

    .prologue
    .line 290
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/GifController;->mIsAnimation:Z

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController;->redrawHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-string v3, "GIF"

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 292
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController;->redrawHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 294
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public registerGifListener(Lcom/sonyericsson/conversations/ui/GifController$GifListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/GifController$GifListener;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/GifController;->mGifListener:Lcom/sonyericsson/conversations/ui/GifController$GifListener;

    .line 249
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/GifController;->resetMovie()V

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mIsAnimation:Z

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->redrawHandler:Landroid/os/Handler;

    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method public resumeAnimation()V
    .locals 0

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/GifController;->startAnimation()V

    .line 287
    return-void
.end method

.method public setDelay(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 268
    iput p1, p0, Lcom/sonyericsson/conversations/ui/GifController;->mRefreshInterval:I

    .line 269
    return-void
.end method

.method public setMovie(Landroid/graphics/Movie;)Z
    .locals 1
    .param p1, "movie"    # Landroid/graphics/Movie;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mIsAnimation:Z

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mDur:I

    .line 182
    iget v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mDur:I

    if-nez v0, :cond_0

    .line 185
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mDur:I

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/GifController;->startAnimation()V

    .line 191
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mIsAnimation:Z

    return v0

    .line 189
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/GifController;->mIsAnimation:Z

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 4

    .prologue
    .line 272
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/GifController;->mIsAnimation:Z

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController;->redrawHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-string v3, "GIF"

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 274
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController;->redrawHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 276
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 4

    .prologue
    .line 279
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/GifController;->mIsAnimation:Z

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController;->redrawHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const-string v3, "GIF"

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 281
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GifController;->redrawHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 283
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
