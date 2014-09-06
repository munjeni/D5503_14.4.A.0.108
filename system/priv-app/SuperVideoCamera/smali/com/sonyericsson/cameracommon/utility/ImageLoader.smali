.class public Lcom/sonyericsson/cameracommon/utility/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static final FIRST_REDUCE_RATIO_FULL_IMG:I = 0x2

.field private static final FULL_SIZE_MAX_LENGTH:I = 0x401

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOption:Landroid/graphics/BitmapFactory$Options;

.field private final mOrientation:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "orientation"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mUri:Landroid/net/Uri;

    .line 74
    iput p3, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOrientation:I

    .line 75
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    .line 76
    return-void
.end method

.method private calcBounds(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .param p1, "st"    # Ljava/io/InputStream;
    .param p2, "opt"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 151
    const/4 v1, 0x2

    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 153
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .local v0, "temp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 160
    :cond_0
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v1, v2, :cond_1

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v1, v2, :cond_2

    .line 161
    :cond_1
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->TAG:Ljava/lang/String;

    const-string v2, "Bitmap read error"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Failed to calculate bounds of bitmap"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_2
    return-void
.end method

.method private calcRatio(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .param p1, "opt"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "firstRatio"    # I
    .param p3, "limit"    # I

    .prologue
    const/4 v5, 0x1

    .line 260
    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int v4, v6, p2

    .line 261
    .local v4, "w":I
    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v0, v6, p2

    .line 263
    .local v0, "h":I
    add-int v6, v4, p3

    add-int/lit8 v6, v6, -0x1

    div-int v3, v6, p3

    .line 264
    .local v3, "ratioW":I
    add-int v6, v0, p3

    add-int/lit8 v6, v6, -0x1

    div-int v2, v6, p3

    .line 265
    .local v2, "ratioH":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 267
    .local v1, "ratio":I
    if-nez v1, :cond_0

    .line 279
    :goto_0
    return v5

    .line 272
    :cond_0
    if-le v1, v5, :cond_2

    .line 273
    div-int v5, v4, v1

    if-gt v5, p3, :cond_1

    div-int v5, v0, v1

    if-le v5, p3, :cond_2

    .line 274
    :cond_1
    add-int/lit8 v1, v1, -0x1

    :cond_2
    move v5, v1

    .line 279
    goto :goto_0
.end method

.method private decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "st"    # Ljava/io/InputStream;
    .param p2, "opt"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 235
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 240
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    .local v0, "fullbmp":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private loadFullSize(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "st"    # Ljava/io/InputStream;
    .param p2, "opt"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    const/high16 v6, 0x40000000

    const/4 v1, 0x0

    .line 193
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 194
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 195
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 198
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-nez v7, :cond_0

    .line 199
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->TAG:Ljava/lang/String;

    const-string v2, "loadFullSize: Decode read error"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Failed to decode full size image"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_0
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->TAG:Ljava/lang/String;

    const-string v3, "loadFullSize: mOrientation"

    iget v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOrientation:I

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->showOrientation(Ljava/lang/String;Ljava/lang/String;I)V

    .line 205
    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOrientation:I

    if-eqz v2, :cond_1

    .line 206
    move-object v0, v7

    .line 207
    .local v0, "temp":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 208
    .local v5, "rotate":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v2, v6

    .line 209
    .local v8, "centerX":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v2, v6

    .line 210
    .local v9, "centerY":F
    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOrientation:I

    int-to-float v2, v2

    invoke-virtual {v5, v2, v8, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 211
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 212
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    move-object v0, v7

    .line 215
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 216
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    .end local v0    # "temp":Landroid/graphics/Bitmap;
    .end local v5    # "rotate":Landroid/graphics/Matrix;
    .end local v8    # "centerX":F
    .end local v9    # "centerY":F
    :cond_1
    return-object v7
.end method


# virtual methods
.method public load()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, "st":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 91
    .local v1, "result":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil;->crOpenInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 92
    if-eqz v2, :cond_0

    .line 94
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->calcBounds(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)V

    .line 97
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v6, 0x401

    invoke-direct {p0, v4, v5, v6}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->calcRatio(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 100
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 103
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil;->crOpenInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_1

    .line 106
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->loadFullSize(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 108
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/InvalidObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_1
    if-eqz v2, :cond_2

    .line 122
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :goto_0
    const/4 v2, 0x0

    .line 129
    :cond_2
    :goto_1
    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Close stream failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/InvalidObjectException;
    :try_start_2
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load full size error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    if-eqz v2, :cond_2

    .line 122
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 126
    .end local v0    # "e":Ljava/io/InvalidObjectException;
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 123
    .restart local v0    # "e":Ljava/io/InvalidObjectException;
    :catch_2
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Close stream failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File not found:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    if-eqz v2, :cond_2

    .line 122
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 126
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v2, 0x0

    goto :goto_1

    .line 123
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Close stream failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Close failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 120
    if-eqz v2, :cond_2

    .line 122
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 126
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 123
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Close stream failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_8
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->TAG:Ljava/lang/String;

    const-string v4, "Maybe File access error."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 120
    if-eqz v2, :cond_2

    .line 122
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 126
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 123
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Close stream failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 122
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 126
    :goto_6
    const/4 v2, 0x0

    :cond_3
    throw v3

    .line 123
    :catch_9
    move-exception v0

    .line 124
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close stream failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method
