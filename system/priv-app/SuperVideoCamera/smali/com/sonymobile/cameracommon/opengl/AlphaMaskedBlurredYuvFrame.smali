.class public Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;
.super Lcom/sonymobile/cameracommon/opengl/YuvFrame;
.source "AlphaMaskedBlurredYuvFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;
    }
.end annotation


# static fields
.field private static final BLUR_SPREAD_LEVEL:F = 8.444f

.field private static final CENTER_WEIGHT:F = 1.0f

.field private static final LOD:F = 4.2660003f

.field private static final SPREAD_OFFSET:F = 0.5688f

.field private static final TAG:Ljava/lang/String;

.field private static final TEXTURE_INDEX_MASK:I = 0x2


# instance fields
.field private mBlurLevel:F

.field private mImageHeight:I

.field private mImageWidth:I

.field private mMaskTexCoordBuffer:[I

.field private mMaskTexCoordInGLSL:I

.field private mMaskTexture:[I

.field private mShaderMaskBmp:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 33
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mImageWidth:I

    .line 34
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mImageHeight:I

    .line 37
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mMaskTexCoordInGLSL:I

    .line 38
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mMaskTexCoordBuffer:[I

    .line 41
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mMaskTexture:[I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mShaderMaskBmp:Landroid/graphics/Bitmap;

    .line 50
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mBlurLevel:F

    .line 64
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->initializeMaskTexture()V

    .line 65
    return-void
.end method

.method private finalizeMaskTexture()V
    .locals 3

    .prologue
    .line 369
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mMaskTexture:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 370
    return-void
.end method

.method private initializeMaskTexture()V
    .locals 3

    .prologue
    .line 341
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mMaskTexture:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 342
    return-void
.end method

.method private prepareMaskTexture(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "maskBmp"    # Landroid/graphics/Bitmap;

    .prologue
    const v3, 0x47012f00

    const/4 v2, 0x0

    const/16 v1, 0xde1

    .line 345
    if-nez p1, :cond_0

    .line 366
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mMaskTexture:[I

    aget v0, v0, v2

    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->bindTextureAndBitmap(ILandroid/graphics/Bitmap;)V

    .line 354
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mMaskTexture:[I

    aget v0, v0, v2

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 356
    const/16 v0, 0x2802

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 360
    const/16 v0, 0x2803

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 365
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0
.end method

.method private updateTexCoord(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "targetArea"    # Landroid/graphics/Rect;
    .param p2, "root"    # Landroid/graphics/Rect;

    .prologue
    const v9, 0x8892

    const/4 v8, 0x0

    .line 241
    iget v6, p1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 242
    .local v5, "top":F
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 243
    .local v1, "bottom":F
    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 244
    .local v2, "left":F
    iget v6, p1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 246
    .local v3, "right":F
    const/16 v6, 0x8

    new-array v0, v6, [F

    aput v2, v0, v8

    const/4 v6, 0x1

    aput v5, v0, v6

    const/4 v6, 0x2

    aput v2, v0, v6

    const/4 v6, 0x3

    aput v1, v0, v6

    const/4 v6, 0x4

    aput v3, v0, v6

    const/4 v6, 0x5

    aput v5, v0, v6

    const/4 v6, 0x6

    aput v3, v0, v6

    const/4 v6, 0x7

    aput v1, v0, v6

    .line 252
    .local v0, "TEXCOORD":[F
    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    .line 255
    .local v4, "texCoordBuf":Ljava/nio/FloatBuffer;
    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mTexCoordBuffers:[I

    aget v6, v6, v8

    invoke-static {v9, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 256
    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    const v7, 0x88e8

    invoke-static {v9, v6, v4, v7}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 261
    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 262
    return-void
.end method

.method private updateVertex(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "targetArea"    # Landroid/graphics/Rect;
    .param p2, "root"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v8, 0x40000000

    .line 266
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 267
    .local v4, "scaleX":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 268
    .local v5, "scaleY":F
    const/high16 v6, 0x3f800000

    invoke-virtual {p0, v4, v5, v6}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->scale(FFF)V

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    sub-int v2, v6, v7

    .line 272
    .local v2, "difPixX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/lit8 v3, v6, -0x1

    .line 273
    .local v3, "difPixY":I
    int-to-float v6, v2

    iget-object v7, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    div-float v0, v6, v7

    .line 274
    .local v0, "difNormX":F
    int-to-float v6, v3

    iget-object v7, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    div-float v1, v6, v7

    .line 276
    .local v1, "difNormY":F
    const v6, 0x3dcccccd

    invoke-virtual {p0, v0, v1, v6}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->translate(FFF)V

    .line 277
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
    const v4, 0x47012f00

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 290
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 294
    const v2, 0x8192

    const/16 v3, 0x1102

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glHint(II)V

    .line 297
    const/16 v2, 0xcf5

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 300
    const/16 v2, 0x2800

    const v3, 0x46180400

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 305
    const/16 v2, 0x2801

    const v3, 0x461c0c00

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 310
    const/16 v2, 0x2802

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 315
    const/16 v2, 0x2803

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 321
    const/16 v7, 0x1401

    move v2, p5

    move v3, p2

    move v4, p3

    move v5, v1

    move v6, p5

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 333
    invoke-static {v0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 336
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 337
    return-void
.end method

.method protected doRender()V
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mMaskTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 145
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->doRender()V

    .line 148
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mMaskTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 149
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->release()V

    .line 109
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->finalizeMaskTexture()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mShaderMaskBmp:Landroid/graphics/Bitmap;

    .line 114
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mMaskTexCoordBuffer:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mMaskTexCoordBuffer:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 118
    return-void
.end method

.method public setBlurArea(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "blurArea"    # Landroid/graphics/Rect;
    .param p2, "baseArea"    # Landroid/graphics/Rect;
    .param p3, "maskBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 226
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 227
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 228
    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_2

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 229
    :cond_2
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_3

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 231
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->updateTexCoord(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->updateVertex(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 234
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mShaderMaskBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 235
    iput-object p3, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mShaderMaskBmp:Landroid/graphics/Bitmap;

    .line 236
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mShaderMaskBmp:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->prepareMaskTexture(Landroid/graphics/Bitmap;)V

    .line 238
    :cond_4
    return-void
.end method

.method public setBlurLevel(F)V
    .locals 0
    .param p1, "blurLevel"    # F

    .prologue
    .line 379
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mBlurLevel:F

    .line 380
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 7
    .param p1, "shaderProgram"    # I

    .prologue
    const v6, 0x8892

    const/4 v5, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setShaderProgram(I)V

    .line 73
    :try_start_0
    iget v3, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShaderProgram:I

    const-string v4, "aMaskTexCoord"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mMaskTexCoordInGLSL:I

    .line 76
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V
    :try_end_0
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    const/16 v3, 0x8

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    .line 89
    .local v0, "TEXCOORD":[F
    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 92
    .local v2, "texCoordBuf":Ljava/nio/FloatBuffer;
    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mMaskTexCoordBuffer:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mMaskTexCoordBuffer:[I

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 95
    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mMaskTexCoordBuffer:[I

    aget v3, v3, v5

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 96
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    const v4, 0x88e8

    invoke-static {v6, v3, v2, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 101
    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 102
    return-void

    .line 77
    .end local v0    # "TEXCOORD":[F
    .end local v2    # "texCoordBuf":Ljava/nio/FloatBuffer;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Lcom/sonymobile/cameracommon/opengl/OpenGlException;
    sget-object v3, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->TAG:Ljava/lang/String;

    const-string v4, "OpenGL initialize Error."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 83
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

.method public setTextureYvu(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bufferY"    # Ljava/nio/ByteBuffer;
    .param p4, "bufferVu"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 130
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mImageWidth:I

    .line 131
    iput p2, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mImageHeight:I

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setTextureYvu(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 138
    return-void
.end method

.method protected setupParameter(I)V
    .locals 9
    .param p1, "shaderProgramObject"    # I

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setupParameter(I)V

    .line 187
    const-string v7, "uTextureWidth"

    invoke-static {p1, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    .line 190
    .local v6, "textureWidth":I
    iget v7, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mImageWidth:I

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 191
    const-string v7, "uTextureHeight"

    invoke-static {p1, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    .line 194
    .local v4, "textureHeight":I
    iget v7, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mImageHeight:I

    invoke-static {v4, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 197
    const-string v7, "uBlurSpread"

    invoke-static {p1, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 200
    .local v0, "blurSpread":I
    const v7, 0x41071aa0

    iget v8, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mBlurLevel:F

    mul-float/2addr v7, v8

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 201
    const-string v7, "uLod"

    invoke-static {p1, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    .line 204
    .local v2, "lod":I
    const v7, 0x40888313

    iget v8, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mBlurLevel:F

    mul-float/2addr v7, v8

    invoke-static {v2, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 205
    const-string v7, "uSpreadOffset"

    invoke-static {p1, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    .line 208
    .local v3, "spreadOffset":I
    const v7, 0x3f119ce0

    invoke-static {v3, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 209
    const-string v7, "uCenterWeight"

    invoke-static {p1, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 212
    .local v1, "centerWeight":I
    const/high16 v7, 0x3f800000

    invoke-static {v1, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 215
    const-string v7, "uAlphaMaskTexture"

    invoke-static {p1, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    .line 217
    .local v5, "textureMask":I
    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 218
    return-void
.end method

.method protected setupTexture(II[II)Z
    .locals 7
    .param p1, "vertexBufObj"    # I
    .param p2, "texCoordBufObj"    # I
    .param p3, "yuvTextures"    # [I
    .param p4, "shaderProgramObject"    # I

    .prologue
    const v6, 0x8892

    const/4 v3, 0x0

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setupTexture(II[II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return v3

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mMaskTexCoordBuffer:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 162
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mMaskTexCoordInGLSL:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 169
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 172
    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 173
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->mMaskTexture:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 174
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->TAG:Ljava/lang/String;

    const-string v1, ".draw():[Texture binder Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method
