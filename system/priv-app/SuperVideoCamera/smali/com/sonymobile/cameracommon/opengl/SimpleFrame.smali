.class public Lcom/sonymobile/cameracommon/opengl/SimpleFrame;
.super Lcom/sonymobile/cameracommon/opengl/RenderBase;
.source "SimpleFrame.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mBackgroundTexCoordBuffer:[I

.field protected mBackgroundVertexBuffer:[I

.field private mColor:[F

.field private mMvpMatrixInGLSL:I

.field private mShaderProgram:I

.field private mSimpleColorInGLSL:I

.field private mTexCoordInGLSL:I

.field private mVertexInGLSL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/RenderBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 29
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mShaderProgram:I

    .line 32
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mVertexInGLSL:I

    .line 33
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mTexCoordInGLSL:I

    .line 34
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mMvpMatrixInGLSL:I

    .line 35
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mSimpleColorInGLSL:I

    .line 38
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mBackgroundVertexBuffer:[I

    .line 39
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mBackgroundTexCoordBuffer:[I

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    .line 53
    return-void
.end method

.method private disableLocalFunctions()Z
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mVertexInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 168
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method private doRender()V
    .locals 13

    .prologue
    const/4 v1, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const v10, 0x8892

    const/4 v3, 0x0

    .line 176
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mBackgroundVertexBuffer:[I

    aget v0, v0, v3

    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 177
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mVertexInGLSL:I

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 184
    invoke-static {v10, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 187
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mBackgroundTexCoordBuffer:[I

    aget v0, v0, v3

    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 188
    iget v4, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mTexCoordInGLSL:I

    const/16 v6, 0x1406

    move v5, v12

    move v7, v3

    move v8, v3

    move v9, v3

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 195
    invoke-static {v10, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 198
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mSimpleColorInGLSL:I

    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    aget v4, v4, v3

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    aget v5, v5, v11

    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    aget v6, v6, v12

    iget-object v7, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    aget v1, v7, v1

    invoke-static {v0, v4, v5, v6, v1}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 200
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->TAG:Ljava/lang/String;

    const-string v1, "clearAndResetSurface():[Texture binder Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    const/16 v0, 0x10

    new-array v2, v0, [F

    .line 206
    .local v2, "mvpMatrix":[F
    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 209
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 210
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mGlobalMatrix:[F

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 212
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mMvpMatrixInGLSL:I

    invoke-static {v0, v11, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 220
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 221
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->TAG:Ljava/lang/String;

    const-string v1, "clearAndResetSurface():[Draw frame Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
    return-void
.end method

.method private enableLocalFunctions()Z
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mVertexInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 137
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 140
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->enableShaderProgram()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->TAG:Ljava/lang/String;

    const-string v1, "enableFunctions():[Enable shader program failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    .line 146
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

    .line 151
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mShaderProgram:I

    if-nez v1, :cond_0

    .line 152
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->TAG:Ljava/lang/String;

    const-string v2, "enableRgb2RgbShaderProgram():[Program is Invalid]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    return v0

    .line 155
    :cond_0
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 156
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    .line 157
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->TAG:Ljava/lang/String;

    const-string v2, "enableRgb2RgbShaderProgram():[Program Error]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private finalizeShaderProgram()V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mShaderProgram:I

    .line 327
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->finalizeVertexAndTextureCoordinatesBuffer()V

    .line 328
    return-void
.end method

.method private finalizeVertexAndTextureCoordinatesBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 332
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mBackgroundVertexBuffer:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mBackgroundVertexBuffer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 336
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mBackgroundTexCoordBuffer:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mBackgroundTexCoordBuffer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 340
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

    .line 237
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mShaderProgram:I

    const-string v3, "vertex"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mVertexInGLSL:I

    .line 240
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 243
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mShaderProgram:I

    const-string v3, "texCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mTexCoordInGLSL:I

    .line 246
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 249
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mShaderProgram:I

    const-string v3, "mvpMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mMvpMatrixInGLSL:I

    .line 252
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 255
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mShaderProgram:I

    const-string v3, "simpleColor"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mSimpleColorInGLSL:I

    .line 258
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 261
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 262
    .local v1, "statusChecker":[I
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mShaderProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 268
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 271
    aget v2, v1, v4

    if-nez v2, :cond_0

    .line 272
    const-string v0, "SimpleFrame.initializeShaderProgram():[Program link Error]"

    .line 273
    .local v0, "message":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v2, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v2, v0}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->initializeVertexAndTextureCoordinatesBuffer()V

    .line 283
    return-void
.end method


# virtual methods
.method protected initializeVertexAndTextureCoordinatesBuffer()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000

    const/4 v9, 0x0

    const/high16 v8, -0x40800000

    const v7, 0x8892

    const/4 v6, 0x0

    .line 286
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

    .line 292
    .local v1, "VERTEX_BACKGROUND":[F
    invoke-static {v1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 293
    .local v3, "vertexBuf":Ljava/nio/FloatBuffer;
    const/16 v4, 0x8

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    .line 299
    .local v0, "TEXCOORD_BACKGROUND":[F
    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 302
    .local v2, "texCoordBuf":Ljava/nio/FloatBuffer;
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mBackgroundVertexBuffer:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mBackgroundVertexBuffer:[I

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 303
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mBackgroundTexCoordBuffer:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mBackgroundTexCoordBuffer:[I

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 306
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mBackgroundVertexBuffer:[I

    aget v4, v4, v6

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 307
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e8

    invoke-static {v7, v4, v3, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 312
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 314
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mBackgroundTexCoordBuffer:[I

    aget v4, v4, v6

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 315
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e8

    invoke-static {v7, v4, v2, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 320
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 321
    return-void

    .line 293
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
    .line 105
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->release()V

    .line 108
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->finalizeShaderProgram()V

    .line 109
    return-void
.end method

.method public render()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->enableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->TAG:Ljava/lang/String;

    const-string v1, "render():[Enable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->doRender()V

    .line 128
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->disableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->TAG:Ljava/lang/String;

    const-string v1, "render():[Disable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 97
    return-void
.end method

.method public setColor(FFFF)V
    .locals 2
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 83
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 84
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 85
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 86
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 3
    .param p1, "shaderProgram"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mShaderProgram:I

    .line 66
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->initializeShaderProgram()V
    :try_end_0
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lcom/sonymobile/cameracommon/opengl/OpenGlException;
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->TAG:Ljava/lang/String;

    const-string v2, "OpenGL initialize Error."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
