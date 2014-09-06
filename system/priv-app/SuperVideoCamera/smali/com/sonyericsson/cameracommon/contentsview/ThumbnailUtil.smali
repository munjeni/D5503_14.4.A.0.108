.class public Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;
.super Ljava/lang/Object;
.source "ThumbnailUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createThumbnailViewFromJpeg(Landroid/app/Activity;[BI)Landroid/widget/RelativeLayout;
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "data"    # [B
    .param p2, "orientationDegree"    # I

    .prologue
    .line 34
    const/4 v5, 0x0

    .line 35
    .local v5, "thumbnailContainer":Landroid/widget/RelativeLayout;
    if-nez p1, :cond_0

    .line 36
    sget-object v9, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->TAG:Ljava/lang/String;

    const-string v10, "data is null"

    invoke-static {v9, v10}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 83
    .end local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .local v6, "thumbnailContainer":Landroid/widget/RelativeLayout;
    :goto_0
    return-object v6

    .line 41
    .end local v6    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .restart local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    :cond_0
    const/4 v7, 0x0

    .line 42
    .local v7, "thumbnailImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 43
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v9, Lcom/sonyericsson/cameracommon/R$layout;->content_early_thumbnail:I

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 45
    .restart local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    sget v9, Lcom/sonyericsson/cameracommon/R$id;->early_thumbnail_image:I

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "thumbnailImage":Landroid/widget/ImageView;
    check-cast v7, Landroid/widget/ImageView;

    .line 48
    .restart local v7    # "thumbnailImage":Landroid/widget/ImageView;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 49
    .local v3, "option":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 50
    const/4 v9, 0x0

    array-length v10, p1

    invoke-static {p1, v9, v10, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 52
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 53
    .local v8, "width":I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 54
    .local v1, "height":I
    if-le v8, v1, :cond_2

    .line 55
    int-to-float v9, v1

    const/high16 v10, 0x42c00000

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 63
    :goto_1
    const/4 v9, 0x0

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 64
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v9, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 65
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 66
    const/4 v9, 0x0

    array-length v10, p1

    invoke-static {p1, v9, v10, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/16 v9, 0x60

    const/16 v10, 0x60

    invoke-static {v0, v9, v10}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    const/4 v4, 0x0

    .line 74
    .local v4, "result":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 75
    invoke-static {v0, p2}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 77
    :cond_1
    if-eqz v4, :cond_3

    .line 78
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    move-object v6, v5

    .line 83
    .end local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .restart local v6    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    goto :goto_0

    .line 58
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "result":Landroid/graphics/Bitmap;
    .end local v6    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .restart local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    :cond_2
    int-to-float v9, v8

    const/high16 v10, 0x42c00000

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 80
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "result":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public static createThumbnailViewFromUri(Landroid/app/Activity;Landroid/net/Uri;)Landroid/widget/RelativeLayout;
    .locals 14
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 113
    const/4 v7, 0x0

    .line 114
    .local v7, "thumbnailContainer":Landroid/widget/RelativeLayout;
    if-nez p1, :cond_0

    .line 115
    sget-object v11, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->TAG:Ljava/lang/String;

    const-string v12, "uri is null"

    invoke-static {v11, v12}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v7

    .line 177
    .end local v7    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .local v8, "thumbnailContainer":Landroid/widget/RelativeLayout;
    :goto_0
    return-object v8

    .line 120
    .end local v8    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .restart local v7    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    :cond_0
    const/4 v9, 0x0

    .line 121
    .local v9, "thumbnailImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 122
    .local v5, "inflater":Landroid/view/LayoutInflater;
    sget v11, Lcom/sonyericsson/cameracommon/R$layout;->content_early_thumbnail:I

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .end local v7    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    check-cast v7, Landroid/widget/RelativeLayout;

    .line 124
    .restart local v7    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    sget v11, Lcom/sonyericsson/cameracommon/R$id;->early_thumbnail_image:I

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "thumbnailImage":Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 127
    .restart local v9    # "thumbnailImage":Landroid/widget/ImageView;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 128
    .local v6, "option":Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    iput-boolean v11, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 129
    const/4 v4, 0x0

    .line 131
    .local v4, "iStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 135
    :goto_1
    const/4 v11, 0x0

    invoke-static {v4, v11, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 137
    if-eqz v4, :cond_1

    .line 138
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    :cond_1
    :goto_2
    iget v10, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 144
    .local v10, "width":I
    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 145
    .local v3, "height":I
    if-le v10, v3, :cond_3

    .line 146
    int-to-float v11, v3

    const/high16 v12, 0x42c00000

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 154
    :goto_3
    const/4 v11, 0x0

    iput-boolean v11, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 155
    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v11, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 156
    const/4 v11, 0x1

    iput-boolean v11, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 158
    :try_start_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 162
    :goto_4
    const/4 v11, 0x0

    invoke-static {v4, v11, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 165
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 172
    :cond_2
    :goto_5
    const/16 v11, 0x60

    const/16 v12, 0x60

    invoke-static {v0, v11, v12}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v8, v7

    .line 177
    .end local v7    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .restart local v8    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    goto :goto_0

    .line 132
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "height":I
    .end local v8    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .end local v10    # "width":I
    .restart local v7    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v11, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileNotFoundException :  = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 140
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 141
    .local v1, "e":Ljava/io/IOException;
    sget-object v11, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException :  = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 149
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "height":I
    .restart local v10    # "width":I
    :cond_3
    int-to-float v11, v10

    const/high16 v12, 0x42c00000

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_3

    .line 159
    :catch_2
    move-exception v2

    .line 160
    .local v2, "e1":Ljava/io/FileNotFoundException;
    sget-object v11, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileNotFoundException :  = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 167
    .end local v2    # "e1":Ljava/io/FileNotFoundException;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v1

    .line 168
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v11, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException :  = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private static rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degree"    # I

    .prologue
    const/high16 v10, 0x40000000

    .line 87
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 88
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 89
    .local v4, "h":I
    move-object v0, p0

    .line 91
    .local v0, "result":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 92
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 93
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v1, p1

    int-to-float v2, v3

    div-float/2addr v2, v10

    int-to-float v6, v4

    div-float/2addr v6, v10

    invoke-virtual {v5, v1, v2, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 94
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 95
    .local v9, "temp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    move-object v0, v9

    .line 103
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v9    # "temp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v8

    .line 99
    .local v8, "exArg":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException : width = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", height = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    .end local v8    # "exArg":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 101
    .local v7, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : width = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", height = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
