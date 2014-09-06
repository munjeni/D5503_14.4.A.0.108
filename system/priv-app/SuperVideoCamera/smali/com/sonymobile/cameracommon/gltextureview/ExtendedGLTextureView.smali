.class public Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;
.super Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;
.source "ExtendedGLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;
    }
.end annotation


# instance fields
.field private mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

.field private final mIsContinuousRenderingRequired:Z

.field private final mRequiredRenderingInterval:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;-><init>(Landroid/content/Context;)V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    .line 92
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mIsContinuousRenderingRequired:Z

    .line 93
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mRequiredRenderingInterval:I

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    .line 106
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mIsContinuousRenderingRequired:Z

    .line 107
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mRequiredRenderingInterval:I

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isContinuousRenderingRequired"    # Z
    .param p3, "requiredFps"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;-><init>(Landroid/content/Context;)V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    .line 124
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mIsContinuousRenderingRequired:Z

    .line 125
    const/16 v0, 0x3e8

    div-int/2addr v0, p3

    iput v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mRequiredRenderingInterval:I

    .line 126
    return-void
.end method

.method public static allocFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .param p0, "array"    # [F

    .prologue
    .line 203
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 206
    .local v0, "fBuf":Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 207
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 209
    return-object v0
.end method

.method public static bindTextureAndBitmap(ILandroid/graphics/Bitmap;)V
    .locals 5
    .param p0, "textureObject"    # I
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const v4, 0x812f

    const v3, 0x46180400

    const/4 v2, 0x0

    const/16 v1, 0xde1

    .line 357
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 360
    const/16 v0, 0x2800

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 364
    const/16 v0, 0x2801

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 370
    const/16 v0, 0x2802

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 374
    const/16 v0, 0x2803

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 380
    const/16 v0, 0x1908

    invoke-static {v1, v2, v0, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;I)V

    .line 388
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 389
    return-void
.end method

.method public static checkGlErrorWithException()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 175
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 176
    const-string v2, "OpenGL error [0x%08x]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v2, v1}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static get4x4RotationMatrix(FFFF)[F
    .locals 6
    .param p0, "rotDeg"    # F
    .param p1, "vecX"    # F
    .param p2, "vecY"    # F
    .param p3, "vecZ"    # F

    .prologue
    const/4 v1, 0x0

    .line 268
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 271
    .local v0, "rotMatrix":[F
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 276
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 284
    return-object v0
.end method

.method private static get4x4ScalingMatrix(FFF)[F
    .locals 3
    .param p0, "scaleX"    # F
    .param p1, "scaleY"    # F
    .param p2, "scaleZ"    # F

    .prologue
    const/4 v2, 0x0

    .line 288
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 291
    .local v0, "scalingMatrix":[F
    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 296
    invoke-static {v0, v2, p0, p1, p2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 303
    return-object v0
.end method

.method private static get4x4TranslationMatrix(FFF)[F
    .locals 3
    .param p0, "transX"    # F
    .param p1, "transY"    # F
    .param p2, "transZ"    # F

    .prologue
    const/4 v2, 0x0

    .line 250
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 253
    .local v0, "transMatrix":[F
    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 257
    invoke-static {v0, v2, p0, p1, p2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 264
    return-object v0
.end method

.method public static isGlErrorOccured()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 188
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 189
    const-string v3, "TraceLog"

    const-string v4, "OpenGL error [0x%08x]."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static loadBitmapFromResourceAs9Patch(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "resId"    # I
    .param p3, "ninePatchBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 406
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 407
    .local v7, "option":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 408
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 414
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p2, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 419
    .local v2, "rawBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    if-nez v3, :cond_0

    .line 421
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 440
    :goto_0
    return v1

    .line 426
    :cond_0
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 432
    .local v0, "npd":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 435
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 436
    .local v6, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 438
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 440
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static loadShaderSourceCodesFrom(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "glslFileId"    # I

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 224
    .local v2, "buf":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 225
    .local v5, "res":Landroid/content/res/Resources;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "line":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    .line 230
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    goto :goto_0

    .line 237
    :cond_0
    if-eqz v1, :cond_3

    .line 239
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 246
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/res/Resources;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 240
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 241
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 242
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 233
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v3

    .line 234
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v6, "TraceLog"

    const-string v7, "Can not load shader file."

    invoke-static {v6, v7}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    if-eqz v0, :cond_1

    .line 239
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 240
    :catch_2
    move-exception v3

    .line 241
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 237
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_2

    .line 239
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 242
    :cond_2
    :goto_4
    throw v6

    .line 240
    :catch_3
    move-exception v3

    .line 241
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 237
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "res":Landroid/content/res/Resources;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 233
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_3
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static rotate([FFFF)V
    .locals 12
    .param p0, "matrix"    # [F
    .param p1, "rotRadX"    # F
    .param p2, "rotRadY"    # F
    .param p3, "rotRadZ"    # F

    .prologue
    .line 326
    const/high16 v0, 0x43340000

    mul-float/2addr v0, p1

    const v1, 0x40490fdb

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->get4x4RotationMatrix(FFFF)[F

    move-result-object v2

    .line 328
    .local v2, "rotX":[F
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 329
    const/high16 v0, 0x43340000

    mul-float/2addr v0, p2

    const v1, 0x40490fdb

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->get4x4RotationMatrix(FFFF)[F

    move-result-object v5

    .line 331
    .local v5, "rotY":[F
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v7, p0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 332
    const/high16 v0, 0x43340000

    mul-float/2addr v0, p3

    const v1, 0x40490fdb

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000

    invoke-static {v0, v1, v3, v4}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->get4x4RotationMatrix(FFFF)[F

    move-result-object v8

    .line 334
    .local v8, "rotZ":[F
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v10, p0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 335
    return-void
.end method

.method public static scale([FFFF)V
    .locals 6
    .param p0, "matrix"    # [F
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "scaleZ"    # F

    .prologue
    const/4 v1, 0x0

    .line 345
    invoke-static {p1, p2, p3}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->get4x4ScalingMatrix(FFF)[F

    move-result-object v2

    .local v2, "scaleMat":[F
    move-object v0, p0

    move v3, v1

    move-object v4, p0

    move v5, v1

    .line 346
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 347
    return-void
.end method

.method public static translate([FFFF)V
    .locals 6
    .param p0, "matrix"    # [F
    .param p1, "transX"    # F
    .param p2, "transY"    # F
    .param p3, "transZ"    # F

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-static {p1, p2, p3}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->get4x4TranslationMatrix(FFF)[F

    move-result-object v2

    .local v2, "transMat":[F
    move-object v0, p0

    move v3, v1

    move-object v4, p0

    move v5, v1

    .line 315
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 316
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 4

    .prologue
    .line 153
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->release()V

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    .line 163
    :cond_0
    invoke-super {p0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->onPause()V

    .line 166
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->onResume()V

    .line 137
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mIsContinuousRenderingRequired:Z

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    iget v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mRequiredRenderingInterval:I

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;-><init>(Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;I)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    .line 139
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 140
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    :cond_0
    return-void
.end method
