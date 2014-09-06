.class public Lcom/sonymobile/cameracommon/opengl/TextFrame;
.super Lcom/sonymobile/cameracommon/opengl/RenderBase;
.source "TextFrame.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/opengl/TextFrame$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TEXTURE_INDEX_0:I


# instance fields
.field private mAlpha:F

.field private mBackgroundTexCoordBuffer:[I

.field private mBackgroundVertexBuffer:[I

.field private mBgMvpMatrixInGLSL:I

.field private mBgTexCoordInGLSL:I

.field private mBgVertexInGLSL:I

.field private mShaderProgram:I

.field private mTextBitmap:Landroid/graphics/Bitmap;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextCanvas:Landroid/graphics/Canvas;

.field private mTextPaint:Landroid/graphics/Paint;

.field private final mTexture:[I

.field private mTextureRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sonymobile/cameracommon/opengl/TextFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "textureRect"    # Landroid/graphics/Rect;
    .param p4, "textPaint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/RenderBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 35
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mShaderProgram:I

    .line 38
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBgVertexInGLSL:I

    .line 39
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBgTexCoordInGLSL:I

    .line 40
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBgMvpMatrixInGLSL:I

    .line 43
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTexture:[I

    .line 44
    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextureRect:Landroid/graphics/Rect;

    .line 45
    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    .line 46
    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextCanvas:Landroid/graphics/Canvas;

    .line 47
    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBounds:Landroid/graphics/Rect;

    .line 51
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBackgroundVertexBuffer:[I

    .line 52
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBackgroundTexCoordBuffer:[I

    .line 58
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mAlpha:F

    .line 75
    iput-object p3, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextureRect:Landroid/graphics/Rect;

    .line 76
    iput-object p4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextPaint:Landroid/graphics/Paint;

    .line 79
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/TextFrame;->initializeTextures()V

    .line 80
    return-void
.end method

.method private disableLocalFunctions()Z
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBgVertexInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 249
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBgTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method private doRender()V
    .locals 10

    .prologue
    const/16 v2, 0x1406

    const v6, 0x8892

    const/4 v3, 0x0

    .line 257
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBackgroundVertexBuffer:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 258
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBgVertexInGLSL:I

    const/4 v1, 0x3

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 265
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 268
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBackgroundTexCoordBuffer:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 269
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBgTexCoordInGLSL:I

    const/4 v1, 0x2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 276
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 279
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 280
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTexture:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 282
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->TAG:Ljava/lang/String;

    const-string v1, "doRender():[Texture binder Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mShaderProgram:I

    const-string v1, "uTextureRgb"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v9

    .line 289
    .local v9, "textureRgb":I
    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 292
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mShaderProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v8

    .line 294
    .local v8, "alpha":I
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mAlpha:F

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 297
    const/16 v0, 0x10

    new-array v2, v0, [F

    .line 298
    .local v2, "mvpMatrix":[F
    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 301
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 302
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mGlobalMatrix:[F

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 304
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBgMvpMatrixInGLSL:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 312
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 313
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->TAG:Ljava/lang/String;

    const-string v1, "clearAndResetSurface():[Draw frame Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_1
    return-void
.end method

.method private enableLocalFunctions()Z
    .locals 2

    .prologue
    .line 217
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBgVertexInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 218
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBgTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 221
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/TextFrame;->enableShaderProgram()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->TAG:Ljava/lang/String;

    const-string v1, "enableFunctions():[Enable shader program failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v0, 0x0

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private enableShaderProgram()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 232
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mShaderProgram:I

    if-nez v1, :cond_0

    .line 233
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/TextFrame;->TAG:Ljava/lang/String;

    const-string v2, "enableShaderProgram():[Program is Invalid]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    return v0

    .line 236
    :cond_0
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 237
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    .line 238
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/TextFrame;->TAG:Ljava/lang/String;

    const-string v2, "enableShaderProgram():[Program Error]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private finalizeShaderProgram()V
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mShaderProgram:I

    .line 414
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/TextFrame;->finalizeVertexAndTextureCoordinatesBuffer()V

    .line 415
    return-void
.end method

.method private finalizeTextures()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 449
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTexture:[I

    aget v0, v0, v2

    if-eqz v0, :cond_0

    .line 450
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTexture:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 451
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTexture:[I

    aput v2, v0, v2

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 456
    :cond_1
    iput-object v3, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    .line 457
    iput-object v3, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextCanvas:Landroid/graphics/Canvas;

    .line 458
    iput-object v3, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextureRect:Landroid/graphics/Rect;

    .line 459
    return-void
.end method

.method private finalizeVertexAndTextureCoordinatesBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 419
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBackgroundVertexBuffer:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBackgroundVertexBuffer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 423
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBackgroundTexCoordBuffer:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBackgroundTexCoordBuffer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 427
    return-void
.end method

.method private initializeShaderProgram()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 330
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mShaderProgram:I

    const-string v3, "vertex"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBgVertexInGLSL:I

    .line 333
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 336
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mShaderProgram:I

    const-string v3, "texCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBgTexCoordInGLSL:I

    .line 339
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 342
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mShaderProgram:I

    const-string v3, "mvpMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBgMvpMatrixInGLSL:I

    .line 345
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 348
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 349
    .local v1, "statusChecker":[I
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mShaderProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 355
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 358
    aget v2, v1, v4

    if-nez v2, :cond_0

    .line 359
    const-string v0, "TimeShiftSlider.initializeRgb2RgbShader():[Program link Error]"

    .line 360
    .local v0, "message":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/cameracommon/opengl/TextFrame;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v2, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v2, v0}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 365
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/TextFrame;->initializeVertexAndTextureCoordinatesBuffer()V

    .line 370
    return-void
.end method

.method private initializeTextures()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 431
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTexture:[I

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 434
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    .line 438
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextCanvas:Landroid/graphics/Canvas;

    .line 439
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 441
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/TextFrame;->reloadBitmapToTexture()V

    .line 442
    return-void
.end method

.method private initializeVertexAndTextureCoordinatesBuffer()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000

    const/4 v9, 0x0

    const/high16 v8, -0x40800000

    const v7, 0x8892

    const/4 v6, 0x0

    .line 373
    const/16 v4, 0xc

    new-array v1, v4, [F

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getWidthNorm()F

    move-result v4

    mul-float/2addr v4, v8

    aput v4, v1, v6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getHeightNorm()F

    move-result v5

    mul-float/2addr v5, v10

    aput v5, v1, v4

    const/4 v4, 0x2

    aput v9, v1, v4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getWidthNorm()F

    move-result v5

    mul-float/2addr v5, v8

    aput v5, v1, v4

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getHeightNorm()F

    move-result v5

    mul-float/2addr v5, v8

    aput v5, v1, v4

    const/4 v4, 0x5

    aput v9, v1, v4

    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getWidthNorm()F

    move-result v5

    mul-float/2addr v5, v10

    aput v5, v1, v4

    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getHeightNorm()F

    move-result v5

    mul-float/2addr v5, v10

    aput v5, v1, v4

    const/16 v4, 0x8

    aput v9, v1, v4

    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getWidthNorm()F

    move-result v5

    mul-float/2addr v5, v10

    aput v5, v1, v4

    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getHeightNorm()F

    move-result v5

    mul-float/2addr v5, v8

    aput v5, v1, v4

    const/16 v4, 0xb

    aput v9, v1, v4

    .line 379
    .local v1, "VERTEX_BACKGROUND":[F
    invoke-static {v1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 380
    .local v3, "vertexBuf":Ljava/nio/FloatBuffer;
    const/16 v4, 0x8

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    .line 386
    .local v0, "TEXCOORD_BACKGROUND":[F
    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 389
    .local v2, "texCoordBuf":Ljava/nio/FloatBuffer;
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBackgroundVertexBuffer:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBackgroundVertexBuffer:[I

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 390
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBackgroundTexCoordBuffer:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBackgroundTexCoordBuffer:[I

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 393
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBackgroundVertexBuffer:[I

    aget v4, v4, v6

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 394
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e8

    invoke-static {v7, v4, v3, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 399
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 401
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mBackgroundTexCoordBuffer:[I

    aget v4, v4, v6

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 402
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e8

    invoke-static {v7, v4, v2, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 407
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 408
    return-void

    .line 380
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000
        0x3f800000
        0x0
        0x3f800000
        0x3f800000
    .end array-data
.end method

.method private reloadBitmapToTexture()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTexture:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->bindTextureAndBitmap(ILandroid/graphics/Bitmap;)V

    .line 446
    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->release()V

    .line 187
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/TextFrame;->finalizeShaderProgram()V

    .line 189
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/TextFrame;->finalizeTextures()V

    .line 190
    return-void
.end method

.method public render()V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/TextFrame;->enableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->TAG:Ljava/lang/String;

    const-string v1, "render():[Enable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/TextFrame;->doRender()V

    .line 209
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/TextFrame;->disableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->TAG:Ljava/lang/String;

    const-string v1, "render():[Disable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 175
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mAlpha:F

    .line 176
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 3
    .param p1, "shaderProgram"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mShaderProgram:I

    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/TextFrame;->initializeShaderProgram()V
    :try_end_0
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Lcom/sonymobile/cameracommon/opengl/OpenGlException;
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/TextFrame;->TAG:Ljava/lang/String;

    const-string v2, "OpenGL initialize Error."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 106
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, v8, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 113
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextCanvas:Landroid/graphics/Canvas;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "anchorX":F
    sget-object v4, Lcom/sonymobile/cameracommon/opengl/TextFrame$1;->$SwitchMap$android$graphics$Paint$Align:[I

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 134
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v4, p1, v5, v6, v7}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v1

    .line 136
    .local v1, "firstLineLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 138
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, p1, v0, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 164
    :goto_1
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/TextFrame;->reloadBitmapToTexture()V

    .line 165
    return-void

    .line 118
    .end local v1    # "firstLineLength":I
    :pswitch_0
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    .line 119
    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    .line 123
    goto :goto_0

    .line 126
    :pswitch_2
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v0, v4

    goto :goto_0

    .line 146
    .restart local v1    # "firstLineLength":I
    :cond_0
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "line1":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "line2":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2, v0, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 156
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/TextFrame;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v0, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
