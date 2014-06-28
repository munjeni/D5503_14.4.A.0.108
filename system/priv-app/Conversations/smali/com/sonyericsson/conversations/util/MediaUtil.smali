.class public Lcom/sonyericsson/conversations/util/MediaUtil;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;
    }
.end annotation


# static fields
.field private static final DIR_TEMP:Ljava/lang/String; = "temp"

.field private static final QUALITY_MAX:I = 0x64

.field public static final RESOLUTION_HEIGHT_720P:I = 0x2d0

.field public static final RESOLUTION_NONE:Ljava/lang/String; = "unknown_resolution"

.field private static final SCALE_FACTOR:I = 0x2

.field private static final SIZE_CORRECTION_FACTOR:D = 3.3

.field private static final TAG:Ljava/lang/String; = "MediaUtil"

.field public static final TEMP_CAMERA_PICTURE_URI:Landroid/net/Uri;

.field private static resolutionMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sBitmapMimeTypes:[Ljava/lang/String;

.field private static sPrevQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "temporary.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->TEMP_CAMERA_PICTURE_URI:Landroid/net/Uri;

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image/x-ms-bmp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->sBitmapMimeTypes:[Ljava/lang/String;

    .line 81
    const/16 v0, 0x64

    sput v0, Lcom/sonyericsson/conversations/util/MediaUtil;->sPrevQuality:I

    .line 1011
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    .line 1013
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    const-string v1, "VGA"

    const/16 v2, 0x280

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    const-string v1, "SVGA"

    const/16 v2, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x258

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    const-string v1, "XGA"

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x300

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    const-string v1, "SXGA-"

    const/16 v2, 0x500

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x3c0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    const-string v1, "SXGA+"

    const/16 v2, 0x578

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x41a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    const-string v1, "UXGA"

    const/16 v2, 0x640

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x4b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    const-string v1, "QXGA"

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x600

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static clearResizedImages(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 891
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getTempDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 893
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 894
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 896
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 894
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 899
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 96
    if-eqz p0, :cond_0

    .line 98
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 109
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v2, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 110
    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 118
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 123
    :goto_0
    return-object v0

    .line 113
    :catch_0
    move-exception v1

    .line 115
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    .line 118
    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 117
    :goto_1
    throw v3

    .line 111
    :catch_1
    move-exception v3

    .line 118
    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 119
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public static createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 130
    const/4 v1, 0x2

    invoke-static {v0, p2, p3, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    :cond_0
    return-object v0
.end method

.method public static cropCenterBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "filter"    # Z

    .prologue
    .line 189
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not call method with null or negative values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 194
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    div-int/lit8 v2, v0, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static dp2px(Landroid/content/Context;F)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpVal"    # F

    .prologue
    .line 1079
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1080
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method private static getCompressFormat(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 555
    if-eqz p2, :cond_0

    .line 556
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "mimetype":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/png"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 562
    .end local v0    # "mimetype":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method public static getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 4
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    .line 208
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 209
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 212
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 221
    :pswitch_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 222
    .local v2, "width":I
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 225
    .local v1, "height":I
    :goto_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v3

    .line 215
    .end local v1    # "height":I
    .end local v2    # "width":I
    :pswitch_1
    iget v2, v0, Landroid/graphics/Point;->y:I

    .line 216
    .restart local v2    # "width":I
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 217
    .restart local v1    # "height":I
    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDisplayStationaryBitmap(Landroid/view/View;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 23
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "filter"    # Z

    .prologue
    .line 241
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 242
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can not call method with null values."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 245
    .local v9, "bitmapWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 246
    .local v8, "bitmapHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 247
    .local v19, "viewWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v18

    .line 248
    .local v18, "viewHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 249
    .local v11, "context":Landroid/content/Context;
    if-nez v11, :cond_2

    .line 253
    const/4 v1, 0x0

    .line 308
    :goto_0
    return-object v1

    .line 256
    :cond_2
    const-string v1, "window"

    invoke-virtual {v11, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManager;

    .line 257
    .local v20, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    .line 258
    .local v12, "display":Landroid/view/Display;
    invoke-virtual {v12}, Landroid/view/Display;->getRotation()I

    move-result v14

    .line 259
    .local v14, "orientation":I
    invoke-static {v12}, Lcom/sonyericsson/conversations/util/MediaUtil;->getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v13

    .line 260
    .local v13, "displaySize":Landroid/graphics/Point;
    iget v1, v13, Landroid/graphics/Point;->x:I

    if-lt v9, v1, :cond_3

    iget v1, v13, Landroid/graphics/Point;->y:I

    if-ge v8, v1, :cond_4

    .line 261
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bitmap ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is smaller than display ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v13, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_4
    const/4 v1, 0x2

    new-array v15, v1, [I

    .line 265
    .local v15, "position":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 266
    const/4 v1, 0x0

    aget v21, v15, v1

    .line 267
    .local v21, "x":I
    const/4 v1, 0x1

    aget v22, v15, v1

    .line 269
    .local v22, "y":I
    const/4 v2, 0x0

    .line 270
    .local v2, "left":I
    const/16 v16, 0x0

    .line 271
    .local v16, "right":I
    const/4 v3, 0x0

    .line 272
    .local v3, "top":I
    const/4 v10, 0x0

    .line 275
    .local v10, "bottom":I
    packed-switch v14, :pswitch_data_0

    .line 298
    const/16 v17, 0x0

    .line 299
    .local v17, "rotation":I
    move/from16 v2, v21

    .line 300
    sub-int v1, v9, v19

    sub-int v16, v1, v21

    .line 301
    move/from16 v3, v22

    .line 302
    sub-int v1, v8, v18

    sub-int v10, v1, v22

    .line 306
    :goto_1
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 307
    .local v6, "m":Landroid/graphics/Matrix;
    move/from16 v0, v17

    int-to-float v1, v0

    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 308
    add-int v1, v2, v16

    sub-int v4, v9, v1

    add-int v1, v3, v10

    sub-int v5, v8, v1

    move-object/from16 v1, p1

    move/from16 v7, p2

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    .line 277
    .end local v6    # "m":Landroid/graphics/Matrix;
    .end local v17    # "rotation":I
    :pswitch_0
    const/16 v17, 0x10e

    .line 278
    .restart local v17    # "rotation":I
    move/from16 v16, v22

    .line 279
    sub-int v1, v9, v18

    sub-int v2, v1, v22

    .line 280
    move/from16 v3, v21

    .line 281
    sub-int v1, v8, v19

    sub-int v10, v1, v21

    .line 282
    goto :goto_1

    .line 284
    .end local v17    # "rotation":I
    :pswitch_1
    const/16 v17, 0xb4

    .line 285
    .restart local v17    # "rotation":I
    move/from16 v16, v21

    .line 286
    sub-int v1, v9, v19

    sub-int v2, v1, v21

    .line 287
    move/from16 v10, v22

    .line 288
    sub-int v1, v8, v18

    sub-int v3, v1, v22

    .line 289
    goto :goto_1

    .line 291
    .end local v17    # "rotation":I
    :pswitch_2
    const/16 v17, 0x5a

    .line 292
    .restart local v17    # "rotation":I
    move/from16 v2, v22

    .line 293
    sub-int v1, v9, v18

    sub-int v16, v1, v22

    .line 294
    move/from16 v10, v21

    .line 295
    sub-int v1, v8, v19

    sub-int v3, v1, v21

    .line 296
    goto :goto_1

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getFileExtensionFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 965
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 966
    .local v9, "scheme":Ljava/lang/String;
    const/4 v7, 0x0

    .line 967
    .local v7, "extension":Ljava/lang/String;
    const/4 v10, 0x0

    .line 969
    .local v10, "uriStr":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 970
    const-string v1, "content"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 971
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 972
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 973
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 975
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 979
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 980
    const/4 v0, 0x0

    .line 987
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 988
    invoke-static {v10}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 989
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 992
    const/16 v1, 0x2e

    invoke-virtual {v10, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 993
    .local v8, "index":I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_2

    .line 994
    add-int/lit8 v1, v8, 0x1

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1000
    .end local v8    # "index":I
    :cond_2
    if-eqz v7, :cond_3

    .line 1001
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1003
    :cond_3
    return-object v2

    .line 979
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 980
    const/4 v0, 0x0

    .line 979
    throw v1

    .line 983
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_4
    const-string v1, "file"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method public static getFileNameByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 861
    const/4 v7, 0x0

    .line 862
    .local v7, "fileName":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 863
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 864
    .local v8, "scheme":Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 866
    const/4 v6, 0x0

    .line 868
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 870
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 874
    :cond_0
    if-eqz v6, :cond_1

    .line 875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 883
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "scheme":Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v7, :cond_4

    .line 884
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media file not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "scheme":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 874
    :cond_2
    throw v0

    .line 878
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    const-string v0, "file"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 887
    .end local v8    # "scheme":Ljava/lang/String;
    :cond_4
    return-object v7
.end method

.method public static getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 918
    const/4 v1, 0x0

    .line 919
    .local v1, "mimeType":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 920
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 921
    .local v2, "scheme":Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 922
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 923
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 930
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "scheme":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 926
    .restart local v2    # "scheme":Ljava/lang/String;
    :cond_1
    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 927
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeTypeFromFileUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMimeTypeFromFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 951
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 952
    .local v2, "mimeTypeMap":Landroid/webkit/MimeTypeMap;
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 956
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 957
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 958
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 961
    .end local v1    # "index":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getMimeTypeFromFileUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 934
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 937
    .local v2, "mimeTypeMap":Landroid/webkit/MimeTypeMap;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 938
    .local v3, "uriStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 942
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 943
    .local v1, "index":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 944
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 947
    .end local v1    # "index":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getNextQuality(IDDILcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;)I
    .locals 11
    .param p0, "maxFileSize"    # I
    .param p1, "sizeJpg"    # D
    .param p3, "sizeBmpFull"    # D
    .param p5, "quality"    # I
    .param p6, "cr"    # Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;

    .prologue
    .line 780
    if-eqz p5, :cond_0

    const-wide/16 v7, 0x0

    cmpg-double v7, p1, v7

    if-lez v7, :cond_0

    if-gtz p0, :cond_1

    .line 781
    :cond_0
    const/4 v7, -0x1

    .line 813
    :goto_0
    return v7

    .line 783
    :cond_1
    div-double v1, p3, p1

    .line 784
    .local v1, "currentComprRatio":D
    int-to-double v7, p0

    div-double v5, p3, v7

    .line 786
    .local v5, "wantedComprRatio":D
    const/16 v7, 0x64

    move/from16 v0, p5

    if-ge v0, v7, :cond_2

    .line 787
    sget v7, Lcom/sonyericsson/conversations/util/MediaUtil;->sPrevQuality:I

    move/from16 v0, p5

    if-ne v0, v7, :cond_3

    .line 791
    move-object/from16 v0, p6

    iput-wide v1, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mPrevComprRatio:D

    .line 801
    :cond_2
    :goto_1
    move-object/from16 v0, p6

    iget-wide v7, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mDirCoeff:D

    const-wide v9, 0x3fa999999999999aL

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    move-object/from16 v0, p6

    iput-wide v7, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mDirCoeff:D

    .line 803
    sub-double v7, v5, v1

    move-object/from16 v0, p6

    iget-wide v9, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mDirCoeff:D

    div-double v3, v7, v9

    .line 805
    .local v3, "decrease":D
    move/from16 v0, p5

    int-to-double v7, v0

    const-wide/high16 v9, 0x4000000000000000L

    div-double/2addr v7, v9

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 808
    const-wide/high16 v7, 0x4000000000000000L

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 810
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    sub-int p5, p5, v7

    .line 812
    const/4 v7, 0x0

    move/from16 v0, p5

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result p5

    move/from16 v7, p5

    .line 813
    goto :goto_0

    .line 794
    .end local v3    # "decrease":D
    :cond_3
    move-object/from16 v0, p6

    iget-wide v7, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mPrevComprRatio:D

    sub-double v7, v1, v7

    sget v9, Lcom/sonyericsson/conversations/util/MediaUtil;->sPrevQuality:I

    sub-int v9, v9, p5

    int-to-double v9, v9

    div-double/2addr v7, v9

    move-object/from16 v0, p6

    iput-wide v7, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mDirCoeff:D

    .line 795
    move-object/from16 v0, p6

    iput-wide v1, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mPrevComprRatio:D

    .line 796
    sput p5, Lcom/sonyericsson/conversations/util/MediaUtil;->sPrevQuality:I

    goto :goto_1
.end method

.method public static getResolution(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1092
    const-string v7, "unknown_resolution"

    .line 1093
    .local v7, "resolution":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 1094
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1095
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1097
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1098
    const-string v1, "resolution"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1102
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1106
    :cond_1
    return-object v7

    .line 1102
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getResolutionHeight(Ljava/lang/String;)I
    .locals 1
    .param p0, "resolution"    # Ljava/lang/String;

    .prologue
    .line 1062
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1063
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1065
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getResolutionList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1023
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static getResolutionWidth(Ljava/lang/String;)I
    .locals 1
    .param p0, "resolution"    # Ljava/lang/String;

    .prologue
    .line 1071
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1072
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1074
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getSmallerResolution(II)Ljava/lang/String;
    .locals 6
    .param p0, "height"    # I
    .param p1, "width"    # I

    .prologue
    .line 1040
    const/4 v3, 0x0

    .line 1042
    .local v3, "resolutionName":Ljava/lang/String;
    sget-object v5, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1045
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;>;"
    const/4 v0, 0x0

    .line 1046
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1048
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 1049
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1050
    .local v4, "resolutionWidth":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1052
    .local v2, "resolutionHeight":I
    if-ge v4, p1, :cond_0

    if-lt v2, p0, :cond_1

    .line 1058
    .end local v2    # "resolutionHeight":I
    .end local v4    # "resolutionWidth":I
    :cond_0
    return-object v3

    .line 1055
    .restart local v2    # "resolutionHeight":I
    .restart local v4    # "resolutionWidth":I
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "resolutionName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1057
    .restart local v3    # "resolutionName":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getStartQuality(IDDLcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;)I
    .locals 15
    .param p0, "maxFileSize"    # I
    .param p1, "sizeJpg100Scaled"    # D
    .param p3, "sizeBmpFull"    # D
    .param p5, "cr"    # Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;

    .prologue
    .line 740
    const-wide/16 v9, 0x0

    cmpg-double v9, p1, v9

    if-lez v9, :cond_0

    if-gtz p0, :cond_1

    .line 741
    :cond_0
    const/4 v9, -0x1

    .line 767
    :goto_0
    return v9

    .line 746
    :cond_1
    const-wide v9, 0x400a666666666666L

    mul-double v9, v9, p1

    div-double v1, p3, v9

    .line 747
    .local v1, "ComprRatio100":D
    int-to-double v9, p0

    div-double v7, p3, v9

    .line 750
    .local v7, "wantedComprRatio":D
    const-wide v9, -0x4089e1b089a02752L

    const-wide/high16 v11, 0x4008000000000000L

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double/2addr v9, v11

    const-wide v11, 0x3fc597f62b6ae7d5L

    const-wide/high16 v13, 0x4000000000000000L

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    const-wide v11, 0x3fed47ae147ae148L

    mul-double/2addr v11, v1

    sub-double/2addr v9, v11

    const-wide v11, 0x3ffd47ae147ae148L

    add-double/2addr v9, v11

    move-object/from16 v0, p5

    iput-wide v9, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mDirCoeff:D

    .line 752
    const-wide v9, 0x3f95cfaacd9e83e4L

    const-wide/high16 v11, 0x4000000000000000L

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double/2addr v9, v11

    const-wide v11, 0x3ff3ae147ae147aeL

    mul-double/2addr v11, v1

    add-double/2addr v9, v11

    const-wide v11, 0x3fdb020c49ba5e35L

    sub-double v3, v9, v11

    .line 755
    .local v3, "m":D
    move-object/from16 v0, p5

    iget-wide v9, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mDirCoeff:D

    const-wide v11, 0x3fa999999999999aL

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    move-object/from16 v0, p5

    iput-wide v9, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mDirCoeff:D

    .line 756
    const-wide/16 v9, 0x0

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 759
    const-wide/high16 v9, 0x4059000000000000L

    sub-double v11, v3, v7

    move-object/from16 v0, p5

    iget-wide v13, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mDirCoeff:D

    div-double/2addr v11, v13

    add-double v5, v9, v11

    .line 764
    .local v5, "quality":D
    const-wide/high16 v9, 0x4059000000000000L

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 765
    const-wide/high16 v9, 0x4024000000000000L

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 766
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    sput v9, Lcom/sonyericsson/conversations/util/MediaUtil;->sPrevQuality:I

    .line 767
    sget v9, Lcom/sonyericsson/conversations/util/MediaUtil;->sPrevQuality:I

    goto/16 :goto_0
.end method

.method public static getTempDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 826
    const-string v0, "temp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 837
    const-wide/16 v2, -0x1

    .line 838
    .local v2, "size":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 839
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 841
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v4, "r"

    invoke-virtual {v0, p1, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 842
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 844
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 850
    :goto_0
    return-wide v2

    .line 845
    :catch_0
    move-exception v4

    goto :goto_0

    .line 847
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private static isBmpImageType(Ljava/lang/String;)Z
    .locals 4
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 902
    const/4 v2, 0x0

    .line 903
    .local v2, "isBmp":Z
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, v0

    .line 904
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-nez v2, :cond_0

    sget-object v3, Lcom/sonyericsson/conversations/util/MediaUtil;->sBitmapMimeTypes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 905
    sget-object v3, Lcom/sonyericsson/conversations/util/MediaUtil;->sBitmapMimeTypes:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 907
    :cond_0
    return v2
.end method

.method public static isStorageLow(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1008
    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUriVideoContainerInvalid(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1115
    invoke-static {}, Lcom/android/mms/MmsConfig;->getVideoContainerFormat()Ljava/lang/String;

    move-result-object v0

    .line 1117
    .local v0, "videoContainer":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getFileExtensionFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1122
    const/4 v1, 0x1

    .line 1124
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static resizeImage(Landroid/content/Context;Landroid/net/Uri;IIZIZ)Landroid/net/Uri;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxHeight"    # I
    .param p3, "maxWidth"    # I
    .param p4, "adaptToOrientation"    # Z
    .param p5, "maxFileSize"    # I
    .param p6, "isLocation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Lcom/sonyericsson/conversations/util/ResizeException;
        }
    .end annotation

    .prologue
    .line 458
    const/16 v17, 0x0

    .line 459
    .local v17, "resizedUri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 462
    .local v12, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 463
    .local v9, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 465
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 466
    .local v16, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 467
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v12, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 469
    if-eqz p4, :cond_0

    .line 470
    move/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 471
    .local v13, "largeDimension":I
    move/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 473
    .local v18, "smallDimension":I
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v2, v4, :cond_4

    .line 475
    move/from16 p2, v13

    .line 476
    move/from16 p3, v18

    .line 484
    .end local v13    # "largeDimension":I
    .end local v18    # "smallDimension":I
    :cond_0
    :goto_0
    invoke-static/range {p0 .. p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v19

    .line 485
    .local v19, "srcFileSize":J
    move/from16 v0, p5

    int-to-long v6, v0

    cmp-long v2, v19, v6

    if-gtz v2, :cond_5

    const/4 v11, 0x1

    .line 486
    .local v11, "fileSizeOK":Z
    :goto_1
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_6

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p3

    if-gt v2, v0, :cond_6

    const/4 v10, 0x1

    .line 489
    .local v10, "dimensionsOK":Z
    :goto_2
    if-eqz v11, :cond_1

    if-nez v10, :cond_9

    .line 493
    :cond_1
    if-nez v10, :cond_7

    .line 495
    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v16

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/conversations/util/MediaUtil;->shrinkToDimension(Landroid/content/Context;Landroid/net/Uri;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 508
    .local v3, "bmp":Landroid/graphics/Bitmap;
    :goto_3
    if-eqz v3, :cond_8

    .line 509
    const-string v5, "mms_img"

    .line 510
    .local v5, "fileName":Ljava/lang/String;
    if-eqz p6, :cond_2

    .line 511
    const-string v5, "location_"

    :cond_2
    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p5

    move-wide/from16 v7, v19

    .line 513
    invoke-static/range {v2 .. v8}, Lcom/sonyericsson/conversations/util/MediaUtil;->writeBitmapToFile(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/String;IJ)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 545
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v5    # "fileName":Ljava/lang/String;
    :cond_3
    :goto_4
    invoke-static {v12}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    .line 548
    return-object v17

    .line 479
    .end local v10    # "dimensionsOK":Z
    .end local v11    # "fileSizeOK":Z
    .end local v19    # "srcFileSize":J
    .restart local v13    # "largeDimension":I
    .restart local v18    # "smallDimension":I
    :cond_4
    move/from16 p2, v18

    .line 480
    move/from16 p3, v13

    goto :goto_0

    .line 485
    .end local v13    # "largeDimension":I
    .end local v18    # "smallDimension":I
    .restart local v19    # "srcFileSize":J
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 486
    .restart local v11    # "fileSizeOK":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 500
    .restart local v10    # "dimensionsOK":Z
    :cond_7
    :try_start_1
    invoke-static {v12}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    .line 501
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 502
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 503
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v12, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3    # "bmp":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 516
    :cond_8
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Could not decode bitmap"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .end local v10    # "dimensionsOK":Z
    .end local v11    # "fileSizeOK":Z
    .end local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "srcFileSize":J
    :catch_0
    move-exception v15

    .line 543
    .local v15, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_2
    new-instance v2, Lcom/sonyericsson/conversations/util/ResizeException;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Lcom/sonyericsson/conversations/util/ResizeException;-><init>(I)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 545
    .end local v15    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    invoke-static {v12}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    throw v2

    .line 519
    .restart local v9    # "cr":Landroid/content/ContentResolver;
    .restart local v10    # "dimensionsOK":Z
    .restart local v11    # "fileSizeOK":Z
    .restart local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "srcFileSize":J
    :cond_9
    :try_start_3
    invoke-static/range {p0 .. p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v14

    .line 520
    .local v14, "mimeType":Ljava/lang/String;
    if-eqz v14, :cond_3

    invoke-static {v14}, Lcom/sonyericsson/conversations/util/MediaUtil;->isBmpImageType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 526
    invoke-static {v12}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    .line 527
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 528
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 529
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v12, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 530
    .restart local v3    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_b

    .line 531
    const-string v5, "mms_img"

    .line 532
    .restart local v5    # "fileName":Ljava/lang/String;
    if-eqz p6, :cond_a

    .line 533
    const-string v5, "location_"

    :cond_a
    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p5

    move-wide/from16 v7, v19

    .line 535
    invoke-static/range {v2 .. v8}, Lcom/sonyericsson/conversations/util/MediaUtil;->writeBitmapToFile(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v17

    .line 537
    goto :goto_4

    .line 538
    .end local v5    # "fileName":Ljava/lang/String;
    :cond_b
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Could not decode bitmap"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static resizeImageWithMemoryChecking(Landroid/content/Context;Landroid/net/Uri;IIZIZ)Landroid/net/Uri;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxHeight"    # I
    .param p3, "maxWidth"    # I
    .param p4, "adaptToOrientation"    # Z
    .param p5, "maxFileSize"    # I
    .param p6, "isLocation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Lcom/sonyericsson/conversations/util/ResizeException;
        }
    .end annotation

    .prologue
    .line 412
    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/sonyericsson/conversations/util/MediaUtil;->resizeImage(Landroid/content/Context;Landroid/net/Uri;IIZIZ)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 421
    :goto_0
    return-object v0

    .line 414
    :catch_0
    move-exception v7

    .line 415
    .local v7, "re":Lcom/sonyericsson/conversations/util/ResizeException;
    invoke-virtual {v7}, Lcom/sonyericsson/conversations/util/ResizeException;->getResizeError()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 416
    invoke-static {p2, p3}, Lcom/sonyericsson/conversations/util/MediaUtil;->getSmallerResolution(II)Ljava/lang/String;

    move-result-object v8

    .line 417
    .local v8, "tmpResolution":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 418
    const-string v0, "MediaUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out of memory, try smaller resolution:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-static {v8}, Lcom/sonyericsson/conversations/util/MediaUtil;->getResolutionHeight(Ljava/lang/String;)I

    move-result v2

    .line 420
    .local v2, "nextHeight":I
    invoke-static {v8}, Lcom/sonyericsson/conversations/util/MediaUtil;->getResolutionWidth(Ljava/lang/String;)I

    move-result v3

    .local v3, "nextWidth":I
    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    move v6, p6

    .line 421
    invoke-static/range {v0 .. v6}, Lcom/sonyericsson/conversations/util/MediaUtil;->resizeImageWithMemoryChecking(Landroid/content/Context;Landroid/net/Uri;IIZIZ)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 425
    .end local v2    # "nextHeight":I
    .end local v3    # "nextWidth":I
    .end local v8    # "tmpResolution":Ljava/lang/String;
    :cond_0
    const-string v0, "TAG"

    const-string v1, "There is no retry policy for the image resizing exception."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    throw v7
.end method

.method public static scaleAndRotate(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "orientation"    # I
    .param p4, "filter"    # Z

    .prologue
    const/4 v1, 0x0

    .line 151
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not call method with null or negative values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    packed-switch p3, :pswitch_data_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a valid orientation!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :pswitch_0
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 173
    .local v7, "scale_factor":F
    :goto_0
    invoke-static {p3}, Lcom/sonyericsson/conversations/util/ExifUtil;->getTransformationMatrix(I)Landroid/graphics/Matrix;

    move-result-object v5

    .line 174
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 175
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 168
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "scale_factor":F
    :pswitch_1
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 169
    .restart local v7    # "scale_factor":F
    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static shrinkToDimension(Landroid/content/Context;Landroid/net/Uri;IIII)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxHeight"    # I
    .param p3, "maxWidth"    # I
    .param p4, "srcHeight"    # I
    .param p5, "srcWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/conversations/util/ResizeException;
        }
    .end annotation

    .prologue
    .line 333
    const/4 v1, 0x0

    .line 335
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_9

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 338
    .local v2, "cr":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 340
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 341
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v12, -0x1

    move/from16 v0, p4

    if-eq v0, v12, :cond_0

    const/4 v12, -0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_1

    .line 343
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 344
    const/4 v12, 0x1

    iput-boolean v12, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 345
    const/4 v12, 0x0

    invoke-static {v4, v12, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 346
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 p4, v0

    .line 347
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 p5, v0

    .line 348
    if-eqz v4, :cond_1

    .line 349
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 355
    :cond_1
    if-lez p2, :cond_7

    add-int v12, p4, p2

    add-int/lit8 v12, v12, -0x1

    div-int v3, v12, p2

    .line 356
    .local v3, "heightFactor":I
    :goto_0
    if-lez p3, :cond_8

    add-int v12, p5, p3

    add-int/lit8 v12, v12, -0x1

    div-int v11, v12, p3

    .line 358
    .local v11, "widthFactor":I
    :goto_1
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 359
    const/4 v12, 0x0

    iput-boolean v12, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 361
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 362
    const/4 v12, 0x0

    invoke-static {v4, v12, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_6

    .line 370
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 371
    .local v5, "newHeight":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 372
    .local v6, "newWidth":I
    if-lez p2, :cond_2

    move/from16 v0, p2

    if-gt v5, v0, :cond_3

    :cond_2
    if-lez p3, :cond_6

    move/from16 v0, p3

    if-le v6, v0, :cond_6

    .line 374
    :cond_3
    const/high16 v10, 0x3f800000

    .line 375
    .local v10, "requiredScaling":F
    if-lez p2, :cond_4

    move/from16 v0, p2

    if-le v5, v0, :cond_4

    .line 376
    move/from16 v0, p2

    int-to-float v12, v0

    int-to-float v13, v5

    div-float v10, v12, v13

    .line 378
    :cond_4
    if-lez p3, :cond_5

    move/from16 v0, p3

    if-le v6, v0, :cond_5

    .line 379
    move/from16 v0, p3

    int-to-float v12, v0

    int-to-float v13, v6

    div-float/2addr v12, v13

    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 381
    :cond_5
    int-to-float v12, v6

    mul-float/2addr v12, v10

    float-to-int v12, v12

    int-to-float v13, v5

    mul-float/2addr v13, v10

    float-to-int v13, v13

    const/4 v14, 0x0

    invoke-static {v1, v12, v13, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 383
    .local v7, "newbmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    move-object v1, v7

    .line 397
    .end local v5    # "newHeight":I
    .end local v6    # "newWidth":I
    .end local v7    # "newbmp":Landroid/graphics/Bitmap;
    .end local v10    # "requiredScaling":F
    :cond_6
    invoke-static {v4}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    .line 400
    if-nez v1, :cond_9

    .line 401
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Could not decode bitmap"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 355
    .end local v3    # "heightFactor":I
    .end local v11    # "widthFactor":I
    :cond_7
    const/4 v3, 0x1

    goto :goto_0

    .line 356
    .restart local v3    # "heightFactor":I
    :cond_8
    const/4 v11, 0x1

    goto :goto_1

    .line 394
    .end local v3    # "heightFactor":I
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v8

    .line 395
    .local v8, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_1
    new-instance v12, Lcom/sonyericsson/conversations/util/ResizeException;

    const/4 v13, 0x3

    invoke-direct {v12, v13}, Lcom/sonyericsson/conversations/util/ResizeException;-><init>(I)V

    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    .end local v8    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v12

    invoke-static {v4}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    throw v12

    .line 405
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_9
    return-object v1
.end method

.method private static writeBitmapToFile(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/String;IJ)Landroid/net/Uri;
    .locals 36
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "maxFileSize"    # I
    .param p5, "srcFileSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/conversations/util/ResizeException;
        }
    .end annotation

    .prologue
    .line 582
    const/16 v30, 0x0

    .line 583
    .local v30, "resizedUri":Landroid/net/Uri;
    const/16 v21, 0x64

    .line 584
    .local v21, "quality":I
    const-wide/16 v34, 0x1

    .line 585
    .local v34, "sizeJpg":J
    const-wide/16 v32, 0x1

    .line 586
    .local v32, "sizeBmpFull":J
    const/4 v4, 0x0

    .line 587
    .local v4, "bmpOrig":Landroid/graphics/Bitmap;
    const/16 v26, 0x1

    .line 589
    .local v26, "firstTime":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/MediaUtil;->getCompressFormat(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v23

    .line 591
    .local v23, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    if-eqz p1, :cond_0

    .line 592
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-long v0, v5

    move-wide/from16 v32, v0

    .line 595
    move-object/from16 v4, p1

    .line 596
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 601
    :cond_0
    const/16 v31, 0x0

    .line 602
    .local v31, "rotatedBmp":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_2

    .line 603
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/util/ExifUtil;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v29

    .line 604
    .local v29, "orientation":I
    invoke-static/range {v29 .. v29}, Lcom/sonyericsson/conversations/util/ExifUtil;->getTransformationMatrix(I)Landroid/graphics/Matrix;

    move-result-object v9

    .line 605
    .local v9, "m":Landroid/graphics/Matrix;
    invoke-virtual {v9}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_2

    .line 606
    if-eqz v4, :cond_1

    .line 607
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 610
    :cond_1
    if-eqz v31, :cond_2

    .line 611
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 612
    move-object/from16 v4, v31

    .line 623
    .end local v9    # "m":Landroid/graphics/Matrix;
    .end local v29    # "orientation":I
    :cond_2
    new-instance v15, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;

    invoke-direct {v15}, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;-><init>()V

    .line 626
    .local v15, "cr":Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;
    :cond_3
    if-nez p1, :cond_7

    .line 695
    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 696
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 697
    :cond_5
    if-eqz v4, :cond_6

    .line 698
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 703
    :cond_6
    if-eqz v30, :cond_e

    .line 708
    return-object v30

    .line 628
    :cond_7
    const/16 v24, 0x0

    .line 629
    .local v24, "file":Ljava/io/File;
    const/16 v27, 0x0

    .line 631
    .local v27, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v23

    if-ne v0, v5, :cond_8

    const-string v25, ".png"

    .line 633
    .local v25, "fileExtension":Ljava/lang/String;
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getTempDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v24

    .line 634
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->deleteOnExit()V

    .line 635
    new-instance v28, Ljava/io/FileOutputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 639
    .end local v27    # "fos":Ljava/io/FileOutputStream;
    .local v28, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v21

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 640
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v34

    .line 654
    move/from16 v0, p4

    int-to-long v5, v0

    cmp-long v5, v34, v5

    if-gtz v5, :cond_9

    if-nez v26, :cond_9

    .line 656
    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v30

    .line 685
    invoke-static/range {v28 .. v28}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    .line 686
    if-nez v30, :cond_4

    if-eqz v24, :cond_4

    .line 690
    :goto_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 631
    .end local v25    # "fileExtension":Ljava/lang/String;
    .end local v28    # "fos":Ljava/io/FileOutputStream;
    .restart local v27    # "fos":Ljava/io/FileOutputStream;
    :cond_8
    :try_start_2
    const-string v25, ".jpg"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 658
    .end local v27    # "fos":Ljava/io/FileOutputStream;
    .restart local v25    # "fileExtension":Ljava/lang/String;
    .restart local v28    # "fos":Ljava/io/FileOutputStream;
    :cond_9
    :try_start_3
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v23

    if-ne v0, v5, :cond_b

    move/from16 v0, p4

    int-to-long v5, v0

    cmp-long v5, v34, v5

    if-lez v5, :cond_b

    .line 661
    new-instance v5, Lcom/sonyericsson/conversations/util/ResizeException;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/sonyericsson/conversations/util/ResizeException;-><init>(I)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 685
    :catchall_0
    move-exception v5

    move-object/from16 v27, v28

    .end local v25    # "fileExtension":Ljava/lang/String;
    .end local v28    # "fos":Ljava/io/FileOutputStream;
    .restart local v27    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    invoke-static/range {v27 .. v27}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    .line 686
    if-nez v30, :cond_a

    if-eqz v24, :cond_a

    .line 690
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 685
    :cond_a
    throw v5

    .line 668
    .end local v27    # "fos":Ljava/io/FileOutputStream;
    .restart local v25    # "fileExtension":Ljava/lang/String;
    .restart local v28    # "fos":Ljava/io/FileOutputStream;
    :cond_b
    if-eqz v26, :cond_d

    .line 671
    move-wide/from16 v0, v34

    long-to-double v11, v0

    move-wide/from16 v0, v32

    long-to-double v13, v0

    move/from16 v10, p4

    :try_start_4
    invoke-static/range {v10 .. v15}, Lcom/sonyericsson/conversations/util/MediaUtil;->getStartQuality(IDDLcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;)I

    move-result v21

    .line 672
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 673
    move-object/from16 p1, v4

    .line 674
    const/16 v26, 0x0

    .line 685
    :goto_4
    invoke-static/range {v28 .. v28}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    .line 686
    if-nez v30, :cond_c

    if-eqz v24, :cond_c

    .line 690
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 693
    :cond_c
    if-gez v21, :cond_3

    goto/16 :goto_0

    .line 681
    :cond_d
    move-wide/from16 v0, v34

    long-to-double v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v19, v0

    move/from16 v16, p4

    move-object/from16 v22, v15

    :try_start_5
    invoke-static/range {v16 .. v22}, Lcom/sonyericsson/conversations/util/MediaUtil;->getNextQuality(IDDILcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v21

    goto :goto_4

    .line 710
    .end local v24    # "file":Ljava/io/File;
    .end local v25    # "fileExtension":Ljava/lang/String;
    .end local v28    # "fos":Ljava/io/FileOutputStream;
    :cond_e
    if-gez v21, :cond_f

    .line 713
    new-instance v5, Lcom/sonyericsson/conversations/util/ResizeException;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/sonyericsson/conversations/util/ResizeException;-><init>(I)V

    throw v5

    .line 717
    :cond_f
    new-instance v5, Lcom/sonyericsson/conversations/util/ResizeException;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/sonyericsson/conversations/util/ResizeException;-><init>(I)V

    throw v5

    .line 685
    .restart local v24    # "file":Ljava/io/File;
    .restart local v25    # "fileExtension":Ljava/lang/String;
    .restart local v28    # "fos":Ljava/io/FileOutputStream;
    :cond_10
    invoke-static/range {v28 .. v28}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    .line 686
    if-nez v30, :cond_4

    if-eqz v24, :cond_4

    goto :goto_2

    .line 685
    .end local v25    # "fileExtension":Ljava/lang/String;
    .end local v28    # "fos":Ljava/io/FileOutputStream;
    .restart local v27    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    goto :goto_3
.end method
