.class public Lcom/sonymobile/cameracommon/opengl/CopiedFrame;
.super Lcom/sonymobile/cameracommon/opengl/RenderBase;
.source "CopiedFrame.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInputTexture:I

.field private mInputTextureInGLSL:I

.field private mMvpMatrixInGLSL:I

.field private mShaderProgram:I

.field private mTexCoordBuffer:[I

.field private mTexCoordInGLSL:I

.field private mVertexBuffer:[I

.field private mVertexInGLSL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->TAG:Ljava/lang/String;

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
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mShaderProgram:I

    .line 32
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mInputTexture:I

    .line 35
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mVertexInGLSL:I

    .line 36
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mTexCoordInGLSL:I

    .line 37
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mMvpMatrixInGLSL:I

    .line 38
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mInputTextureInGLSL:I

    .line 41
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mVertexBuffer:[I

    .line 42
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mTexCoordBuffer:[I

    .line 53
    return-void
.end method

.method private disableLocalFunctions()Z
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mVertexInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 155
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method private doRender()V
    .locals 8

    .prologue
    const/16 v2, 0x1406

    const v6, 0x8892

    const/4 v3, 0x0

    .line 163
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mVertexBuffer:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 164
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mVertexInGLSL:I

    const/4 v1, 0x3

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 171
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 174
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mTexCoordBuffer:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 175
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mTexCoordInGLSL:I

    const/4 v1, 0x2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 182
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 185
    const/16 v0, 0x10

    new-array v2, v0, [F

    .line 186
    .local v2, "mvpMatrix":[F
    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 189
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 190
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mGlobalMatrix:[F

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 192
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mMvpMatrixInGLSL:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 200
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 201
    const/16 v0, 0xde1

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mInputTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 202
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mInputTextureInGLSL:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 205
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 206
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->TAG:Ljava/lang/String;

    const-string v1, "doRender():[Draw frame Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    return-void
.end method

.method private enableLocalFunctions()Z
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mVertexInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 124
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 127
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->enableShaderProgram()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->TAG:Ljava/lang/String;

    const-string v1, "enableLocalFunctions():[Enable shader program failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x0

    .line 133
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

    .line 138
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mShaderProgram:I

    if-nez v1, :cond_0

    .line 139
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->TAG:Ljava/lang/String;

    const-string v2, "enableShaderProgram():[Program is Invalid]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return v0

    .line 142
    :cond_0
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 143
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    .line 144
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->TAG:Ljava/lang/String;

    const-string v2, "enableShaderProgram():[Program Error]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private finalizeShaderProgram()V
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mShaderProgram:I

    .line 312
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->finalizeVertexAndTextureCoordinatesBuffer()V

    .line 313
    return-void
.end method

.method private finalizeVertexAndTextureCoordinatesBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mVertexBuffer:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mVertexBuffer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 321
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mTexCoordBuffer:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mTexCoordBuffer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 325
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

    .line 222
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mShaderProgram:I

    const-string v3, "aVertex"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mVertexInGLSL:I

    .line 225
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 228
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mShaderProgram:I

    const-string v3, "aTexCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mTexCoordInGLSL:I

    .line 231
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 234
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mShaderProgram:I

    const-string v3, "uMvpMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mMvpMatrixInGLSL:I

    .line 237
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 240
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mShaderProgram:I

    const-string v3, "sTexture"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mInputTextureInGLSL:I

    .line 243
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 246
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 247
    .local v1, "statusChecker":[I
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mShaderProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 253
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 256
    aget v2, v1, v4

    if-nez v2, :cond_0

    .line 257
    const-string v0, "SimpleFrame.initializeShaderProgram():[Program link Error]"

    .line 258
    .local v0, "message":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v2, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v2, v0}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->initializeVertexAndTextureCoordinatesBuffer()V

    .line 268
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

    .line 271
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

    .line 277
    .local v1, "VERTEX_BACKGROUND":[F
    invoke-static {v1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 278
    .local v3, "vertexBuf":Ljava/nio/FloatBuffer;
    const/16 v4, 0x8

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    .line 284
    .local v0, "TEXCOORD_BACKGROUND":[F
    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 287
    .local v2, "texCoordBuf":Ljava/nio/FloatBuffer;
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mVertexBuffer:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mVertexBuffer:[I

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 288
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mTexCoordBuffer:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mTexCoordBuffer:[I

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 291
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mVertexBuffer:[I

    aget v4, v4, v6

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 292
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e8

    invoke-static {v7, v4, v3, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 297
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 299
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mTexCoordBuffer:[I

    aget v4, v4, v6

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 300
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e8

    invoke-static {v7, v4, v2, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 305
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 306
    return-void

    .line 278
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

.method private updateVertexBuffer(Ljava/nio/FloatBuffer;)V
    .locals 4
    .param p1, "vertexBuf"    # Ljava/nio/FloatBuffer;

    .prologue
    const/4 v3, 0x0

    const v2, 0x8892

    .line 371
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mVertexBuffer:[I

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 372
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x88e8

    invoke-static {v2, v0, p1, v1}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 377
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 378
    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->release()V

    .line 91
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->finalizeShaderProgram()V

    .line 92
    return-void
.end method

.method public render()V
    .locals 2

    .prologue
    const/16 v1, 0x303

    .line 99
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->enableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->TAG:Ljava/lang/String;

    const-string v1, "render():[Enable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 111
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->doRender()V

    .line 113
    const/16 v0, 0x302

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 115
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->disableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->TAG:Ljava/lang/String;

    const-string v1, "render():[Disable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAlignXYAxisCoordinates()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000

    const/4 v5, 0x0

    const/high16 v4, -0x40800000

    .line 358
    const/16 v2, 0xc

    new-array v0, v2, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getWidthNorm()F

    move-result v3

    mul-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getHeightNorm()F

    move-result v3

    mul-float/2addr v3, v6

    aput v3, v0, v2

    const/4 v2, 0x2

    aput v5, v0, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getWidthNorm()F

    move-result v3

    mul-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getHeightNorm()F

    move-result v3

    mul-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x5

    aput v5, v0, v2

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getWidthNorm()F

    move-result v3

    mul-float/2addr v3, v6

    aput v3, v0, v2

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getHeightNorm()F

    move-result v3

    mul-float/2addr v3, v6

    aput v3, v0, v2

    const/16 v2, 0x8

    aput v5, v0, v2

    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getWidthNorm()F

    move-result v3

    mul-float/2addr v3, v6

    aput v3, v0, v2

    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getHeightNorm()F

    move-result v3

    mul-float/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0xb

    aput v5, v0, v2

    .line 364
    .local v0, "VERTEX_BACKGROUND":[F
    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 366
    .local v1, "vertexBuf":Ljava/nio/FloatBuffer;
    invoke-direct {p0, v1}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->updateVertexBuffer(Ljava/nio/FloatBuffer;)V

    .line 367
    return-void
.end method

.method public setInputTexture(I)V
    .locals 0
    .param p1, "textureId"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mInputTexture:I

    .line 80
    return-void
.end method

.method public setNormalizedXYAxisToScreen()V
    .locals 3

    .prologue
    .line 337
    const/16 v2, 0xc

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    .line 343
    .local v0, "VERTEX_BACKGROUND":[F
    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 345
    .local v1, "vertexBuf":Ljava/nio/FloatBuffer;
    invoke-direct {p0, v1}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->updateVertexBuffer(Ljava/nio/FloatBuffer;)V

    .line 346
    return-void

    .line 337
    nop

    :array_0
    .array-data 4
        -0x40800000
        0x3f800000
        0x0
        -0x40800000
        -0x40800000
        0x0
        0x3f800000
        0x3f800000
        0x0
        0x3f800000
        -0x40800000
        0x0
    .end array-data
.end method

.method public setShaderProgram(I)V
    .locals 3
    .param p1, "shaderProgram"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mShaderProgram:I

    .line 66
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->initializeShaderProgram()V
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
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->TAG:Ljava/lang/String;

    const-string v2, "OpenGL initialize Error."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
