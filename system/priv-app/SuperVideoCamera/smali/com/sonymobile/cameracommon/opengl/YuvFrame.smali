.class public Lcom/sonymobile/cameracommon/opengl/YuvFrame;
.super Lcom/sonymobile/cameracommon/opengl/RenderBase;
.source "YuvFrame.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;


# static fields
.field private static final NUM_OF_FRAME_TEXTURES:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field protected static final TEXTURE_INDEX_VU:I = 0x1

.field protected static final TEXTURE_INDEX_Y:I


# instance fields
.field protected mAlpha:F

.field protected mFrameMvpMatrixInGLSL:I

.field protected mFrameTexCoordInGLSL:I

.field private mFrameTextures:[I

.field protected mFrameVertexInGLSL:I

.field protected mShaderProgram:I

.field protected mTexCoordBuffers:[I

.field protected mVertexBuffers:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/RenderBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShaderProgram:I

    .line 43
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mVertexBuffers:[I

    .line 44
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mTexCoordBuffers:[I

    .line 51
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mAlpha:F

    .line 63
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->initializeTextures()V

    .line 64
    return-void
.end method

.method private disableLocalFunctions()Z
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameVertexInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 173
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method private enableLocalFunctions()Z
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameVertexInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 142
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 145
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->enableShaderProgram()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->TAG:Ljava/lang/String;

    const-string v1, "enableFunctions():[Enable shader program failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x0

    .line 151
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

    .line 156
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShaderProgram:I

    if-nez v1, :cond_0

    .line 157
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->TAG:Ljava/lang/String;

    const-string v2, ".enableYuv2RgbShaderProgram():[Program is Invalid]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return v0

    .line 160
    :cond_0
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 161
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    .line 162
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->TAG:Ljava/lang/String;

    const-string v2, ".enableYuv2RgbShaderProgram():[Program Error]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private finalizeShaderProgram()V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShaderProgram:I

    .line 387
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->finalizeVertexAndTextureCoordinatesBuffer()V

    .line 388
    return-void
.end method

.method private finalizeVertexAndTextureCoordinatesBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 391
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mVertexBuffers:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mVertexBuffers:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 395
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mTexCoordBuffers:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mTexCoordBuffers:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 399
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

    .line 301
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShaderProgram:I

    const-string v3, "vertex"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameVertexInGLSL:I

    .line 304
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 307
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShaderProgram:I

    const-string v3, "texCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTexCoordInGLSL:I

    .line 310
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 313
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShaderProgram:I

    const-string v3, "mvpMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameMvpMatrixInGLSL:I

    .line 316
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 319
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 320
    .local v1, "statusChecker":[I
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShaderProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 326
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 329
    aget v2, v1, v4

    if-nez v2, :cond_0

    .line 330
    const-string v0, "TimeShiftSlider.initializeYuv2RgbShader():[Program link Error]"

    .line 331
    .local v0, "message":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v2, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v2, v0}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->initializeVertexAndTextureCoordinatesBuffer()V

    .line 341
    return-void
.end method

.method private initializeTextures()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 403
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTextures:[I

    if-nez v0, :cond_0

    .line 404
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTextures:[I

    .line 405
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTextures:[I

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 407
    :cond_0
    return-void
.end method

.method private setFrameTextures(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)V
    .locals 6
    .param p1, "bufferY"    # Ljava/nio/ByteBuffer;
    .param p2, "bufferVu"    # Ljava/nio/ByteBuffer;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTextures:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/16 v5, 0x1909

    move-object v0, p0

    move v2, p3

    move v3, p4

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->createTextureAndSetTo(IIILjava/nio/ByteBuffer;I)V

    .line 436
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTextures:[I

    const/4 v1, 0x1

    aget v1, v0, v1

    div-int/lit8 v2, p3, 0x2

    div-int/lit8 v3, p4, 0x2

    const/16 v5, 0x190a

    move-object v0, p0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->createTextureAndSetTo(IIILjava/nio/ByteBuffer;I)V

    .line 442
    return-void
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
    const v3, 0x46180400

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 451
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 454
    const/16 v2, 0x2800

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 459
    const/16 v2, 0x2801

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 465
    const/16 v7, 0x1401

    move v2, p5

    move v3, p2

    move v4, p3

    move v5, v1

    move v6, p5

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 477
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 478
    return-void
.end method

.method protected doRender()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mVertexBuffers:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mTexCoordBuffers:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTextures:[I

    iget v3, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShaderProgram:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->renderYuvFrame(II[II)Z

    .line 185
    return-void
.end method

.method public finalizeTextures()V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTextures:[I

    if-eqz v0, :cond_0

    .line 412
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTextures:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 414
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTextures:[I

    .line 415
    return-void
.end method

.method protected initializeVertexAndTextureCoordinatesBuffer()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000

    const/4 v9, 0x0

    const/high16 v8, -0x40800000

    const v7, 0x8892

    const/4 v6, 0x0

    .line 345
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

    .line 351
    .local v1, "VERTEX":[F
    invoke-static {v1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 352
    .local v3, "vertexBuf":Ljava/nio/FloatBuffer;
    const/16 v4, 0x8

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    .line 358
    .local v0, "TEXCOORD":[F
    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 361
    .local v2, "texCoordBuf":Ljava/nio/FloatBuffer;
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mVertexBuffers:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mVertexBuffers:[I

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 362
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mTexCoordBuffers:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mTexCoordBuffers:[I

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 365
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mVertexBuffers:[I

    aget v4, v4, v6

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 366
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e8

    invoke-static {v7, v4, v3, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 371
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 374
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mTexCoordBuffers:[I

    aget v4, v4, v6

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 375
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e8

    invoke-static {v7, v4, v2, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 380
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 381
    return-void

    .line 352
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

.method public release()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->release()V

    .line 88
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->finalizeShaderProgram()V

    .line 90
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->finalizeTextures()V

    .line 91
    return-void
.end method

.method public render()V
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->enableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->TAG:Ljava/lang/String;

    const-string v1, "render():[Enable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->doRender()V

    .line 133
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->disableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->TAG:Ljava/lang/String;

    const-string v1, "render():[Disable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected renderYuvFrame(II[II)Z
    .locals 3
    .param p1, "vertexBufObj"    # I
    .param p2, "texCoordBufObj"    # I
    .param p3, "yuvTextures"    # [I
    .param p4, "shaderProgramObject"    # I

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setupTexture(II[II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    :goto_0
    return v0

    .line 208
    :cond_0
    invoke-virtual {p0, p4}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setupParameter(I)V

    .line 211
    invoke-virtual {p0, p4}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setupMvpMatrix(I)V

    .line 214
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 215
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->TAG:Ljava/lang/String;

    const-string v2, ".render():[Draw frame Error]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 488
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mAlpha:F

    .line 489
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 3
    .param p1, "shaderProgram"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShaderProgram:I

    .line 72
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->initializeShaderProgram()V
    :try_end_0
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lcom/sonymobile/cameracommon/opengl/OpenGlException;
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->TAG:Ljava/lang/String;

    const-string v2, "OpenGL initialize Error."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setTextureYvu(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bufferY"    # Ljava/nio/ByteBuffer;
    .param p4, "bufferVu"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->initializeTextures()V

    .line 109
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setFrameTextures(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)V

    .line 114
    return-void
.end method

.method protected setupMvpMatrix(I)V
    .locals 6
    .param p1, "shaderProgramObject"    # I

    .prologue
    const/4 v1, 0x0

    .line 280
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 281
    .local v0, "mvpMatrix":[F
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 284
    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    move v3, v1

    move-object v4, v0

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 285
    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mGlobalMatrix:[F

    move v3, v1

    move-object v4, v0

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 287
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameMvpMatrixInGLSL:I

    const/4 v3, 0x1

    invoke-static {v2, v3, v1, v0, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 293
    return-void
.end method

.method protected setupParameter(I)V
    .locals 2
    .param p1, "shaderProgramObject"    # I

    .prologue
    .line 273
    const-string v1, "uAlpha"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 275
    .local v0, "alpha":I
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mAlpha:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 276
    return-void
.end method

.method protected setupTexture(II[II)Z
    .locals 11
    .param p1, "vertexBufObj"    # I
    .param p2, "texCoordBufObj"    # I
    .param p3, "yuvTextures"    # [I
    .param p4, "shaderProgramObject"    # I

    .prologue
    const/16 v2, 0x1406

    const/16 v10, 0xde1

    const v9, 0x8892

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 231
    invoke-static {v9, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 232
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameVertexInGLSL:I

    const/4 v1, 0x3

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 239
    invoke-static {v9, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 240
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTexCoordInGLSL:I

    const/4 v1, 0x2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 247
    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 250
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 251
    aget v0, p3, v3

    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 252
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 253
    aget v0, p3, v8

    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 254
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->TAG:Ljava/lang/String;

    const-string v1, ".draw():[Texture binder Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_0
    return v3

    .line 260
    :cond_0
    const-string v0, "textureY"

    invoke-static {p4, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    .line 262
    .local v7, "textureY":I
    const-string v0, "textureVu"

    invoke-static {p4, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    .line 264
    .local v6, "textureVu":I
    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 265
    invoke-static {v6, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    move v3, v8

    .line 268
    goto :goto_0
.end method
