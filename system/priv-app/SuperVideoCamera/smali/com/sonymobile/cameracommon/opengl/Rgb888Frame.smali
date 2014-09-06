.class public Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;
.super Lcom/sonymobile/cameracommon/opengl/RenderBase;
.source "Rgb888Frame.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TEXTURE_COUNT:I = 0x1

.field private static final TEXTURE_INDEX_0:I


# instance fields
.field private mAlpha:F

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mMvpMatrixInGLSL:I

.field private mRgb888Buffer:Ljava/nio/ByteBuffer;

.field private mShaderProgram:I

.field private mTexCoordBuffer:[I

.field private mTexCoordInGLSL:I

.field private final mTexture:[I

.field private mVertexBuffer:[I

.field private mVertexInGLSL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/RenderBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 30
    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mShaderProgram:I

    .line 33
    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mVertexInGLSL:I

    .line 34
    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexCoordInGLSL:I

    .line 35
    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mMvpMatrixInGLSL:I

    .line 38
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mVertexBuffer:[I

    .line 39
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexCoordBuffer:[I

    .line 45
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexture:[I

    .line 51
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mAlpha:F

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mRgb888Buffer:Ljava/nio/ByteBuffer;

    .line 55
    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mFrameWidth:I

    .line 56
    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mFrameHeight:I

    .line 68
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->initializeTextures()V

    .line 69
    return-void
.end method

.method private disableLocalFunctions()Z
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mVertexInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 223
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method private doRender()V
    .locals 10

    .prologue
    const/16 v2, 0x1406

    const v6, 0x8892

    const/4 v3, 0x0

    .line 231
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mVertexBuffer:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 232
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mVertexInGLSL:I

    const/4 v1, 0x3

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 239
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 242
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexCoordBuffer:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 243
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexCoordInGLSL:I

    const/4 v1, 0x2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 250
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 253
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 254
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexture:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 256
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->TAG:Ljava/lang/String;

    const-string v1, "doRender():[Texture binder Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mShaderProgram:I

    const-string v1, "uTextureRgb"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v9

    .line 263
    .local v9, "textureRgb":I
    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 266
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mShaderProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v8

    .line 268
    .local v8, "alpha":I
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mAlpha:F

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 271
    const/16 v0, 0x10

    new-array v2, v0, [F

    .line 272
    .local v2, "mvpMatrix":[F
    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 275
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 276
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mGlobalMatrix:[F

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 278
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mMvpMatrixInGLSL:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 286
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 287
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->TAG:Ljava/lang/String;

    const-string v1, "clearAndResetSurface():[Draw frame Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    return-void
.end method

.method private enableLocalFunctions()Z
    .locals 2

    .prologue
    .line 191
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mVertexInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 192
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 195
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->enableShaderProgram()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->TAG:Ljava/lang/String;

    const-string v1, "enableFunctions():[Enable shader program failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    .line 201
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

    .line 206
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mShaderProgram:I

    if-nez v1, :cond_0

    .line 207
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->TAG:Ljava/lang/String;

    const-string v2, "enableShaderProgram():[Program is Invalid]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return v0

    .line 210
    :cond_0
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 211
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    .line 212
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->TAG:Ljava/lang/String;

    const-string v2, "enableShaderProgram():[Program Error]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private finalizeShaderProgram()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mShaderProgram:I

    .line 388
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->finalizeVertexAndTextureCoordinatesBuffer()V

    .line 389
    return-void
.end method

.method private finalizeTextures()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 409
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexture:[I

    aget v0, v0, v2

    if-eqz v0, :cond_0

    .line 410
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexture:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 411
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexture:[I

    aput v2, v0, v2

    .line 413
    :cond_0
    return-void
.end method

.method private finalizeVertexAndTextureCoordinatesBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 393
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mVertexBuffer:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mVertexBuffer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 397
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexCoordBuffer:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexCoordBuffer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 401
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

    .line 304
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mShaderProgram:I

    const-string v3, "vertex"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mVertexInGLSL:I

    .line 307
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 310
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mShaderProgram:I

    const-string v3, "texCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexCoordInGLSL:I

    .line 313
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 316
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mShaderProgram:I

    const-string v3, "mvpMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mMvpMatrixInGLSL:I

    .line 319
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 322
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 323
    .local v1, "statusChecker":[I
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mShaderProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 329
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 332
    aget v2, v1, v4

    if-nez v2, :cond_0

    .line 333
    const-string v0, "TimeShiftSlider.initializeRgb2RgbShader():[Program link Error]"

    .line 334
    .local v0, "message":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v2, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v2, v0}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->initializeVertexAndTextureCoordinatesBuffer()V

    .line 344
    return-void
.end method

.method private initializeTextures()V
    .locals 3

    .prologue
    .line 405
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexture:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 406
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

    .line 347
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

    .line 353
    .local v1, "VERTEX_BACKGROUND":[F
    invoke-static {v1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 354
    .local v3, "vertexBuf":Ljava/nio/FloatBuffer;
    const/16 v4, 0x8

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    .line 360
    .local v0, "TEXCOORD_BACKGROUND":[F
    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 363
    .local v2, "texCoordBuf":Ljava/nio/FloatBuffer;
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mVertexBuffer:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mVertexBuffer:[I

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 364
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexCoordBuffer:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexCoordBuffer:[I

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 367
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mVertexBuffer:[I

    aget v4, v4, v6

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 368
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e8

    invoke-static {v7, v4, v3, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 373
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 375
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexCoordBuffer:[I

    aget v4, v4, v6

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 376
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e8

    invoke-static {v7, v4, v2, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 381
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 382
    return-void

    .line 354
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


# virtual methods
.method protected createTextureAndSetTo(IIILjava/nio/ByteBuffer;I)V
    .locals 9
    .param p1, "textureId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "buffer"    # Ljava/nio/ByteBuffer;
    .param p5, "dataType"    # I

    .prologue
    const v4, 0x46180400

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 134
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 137
    const/16 v2, 0xcf5

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 140
    const/16 v2, 0x2800

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 145
    const/16 v2, 0x2801

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 151
    const/16 v7, 0x1401

    move v2, p5

    move v3, p2

    move v4, p3

    move v5, v1

    move v6, p5

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 163
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 164
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->release()V

    .line 109
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->finalizeShaderProgram()V

    .line 111
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->finalizeTextures()V

    .line 112
    return-void
.end method

.method public render()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->enableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->TAG:Ljava/lang/String;

    const-string v1, "render():[Enable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->doRender()V

    .line 183
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->disableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->TAG:Ljava/lang/String;

    const-string v1, "render():[Disable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mAlpha:F

    .line 98
    return-void
.end method

.method public setRgb888Buffer(Ljava/nio/ByteBuffer;II)V
    .locals 6
    .param p1, "rgb888Buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mRgb888Buffer:Ljava/nio/ByteBuffer;

    .line 116
    iput p2, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mFrameWidth:I

    .line 117
    iput p3, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mFrameHeight:I

    .line 119
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mTexture:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mFrameWidth:I

    iget v3, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mFrameHeight:I

    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mRgb888Buffer:Ljava/nio/ByteBuffer;

    const/16 v5, 0x190a

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->createTextureAndSetTo(IIILjava/nio/ByteBuffer;I)V

    .line 125
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 3
    .param p1, "shaderProgram"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->mShaderProgram:I

    .line 82
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->initializeShaderProgram()V
    :try_end_0
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lcom/sonymobile/cameracommon/opengl/OpenGlException;
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/Rgb888Frame;->TAG:Ljava/lang/String;

    const-string v2, "OpenGL initialize Error."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
