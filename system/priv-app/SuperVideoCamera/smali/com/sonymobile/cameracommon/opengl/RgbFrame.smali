.class public Lcom/sonymobile/cameracommon/opengl/RgbFrame;
.super Lcom/sonymobile/cameracommon/opengl/RenderBase;
.source "RgbFrame.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/opengl/RgbFrame$1;,
        Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TEXTURE_INDEX_0:I


# instance fields
.field private mAlpha:F

.field protected mBackgroundTexCoordBuffer:[I

.field protected mBackgroundVertexBuffer:[I

.field private mBgMvpMatrixInGLSL:I

.field private mBgTexCoordInGLSL:I

.field private mBgVertexInGLSL:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mNinePatchTextureRect:Landroid/graphics/Rect;

.field private final mResId:I

.field private mShaderProgram:I

.field private mTexture:[I

.field private final mType:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "resId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/RenderBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 34
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mShaderProgram:I

    .line 37
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgVertexInGLSL:I

    .line 38
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgTexCoordInGLSL:I

    .line 39
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgMvpMatrixInGLSL:I

    .line 45
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    .line 46
    iput-object v2, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 49
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundVertexBuffer:[I

    .line 50
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundTexCoordBuffer:[I

    .line 56
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mAlpha:F

    .line 80
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->NORMAL_RESOURCE:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mType:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    .line 81
    iput p3, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mResId:I

    .line 82
    iput-object v2, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mNinePatchTextureRect:Landroid/graphics/Rect;

    .line 85
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->initializeTextures()V

    .line 86
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->loadTexture()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "resId"    # I
    .param p4, "textureRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/RenderBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 34
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mShaderProgram:I

    .line 37
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgVertexInGLSL:I

    .line 38
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgTexCoordInGLSL:I

    .line 39
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgMvpMatrixInGLSL:I

    .line 45
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 49
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundVertexBuffer:[I

    .line 50
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundTexCoordBuffer:[I

    .line 56
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mAlpha:F

    .line 104
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->NINE_PATCH_RESOURCE:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mType:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    .line 105
    iput p3, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mResId:I

    .line 106
    iput-object p4, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mNinePatchTextureRect:Landroid/graphics/Rect;

    .line 109
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->initializeTextures()V

    .line 110
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->loadTexture()V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/RenderBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 34
    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mShaderProgram:I

    .line 37
    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgVertexInGLSL:I

    .line 38
    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgTexCoordInGLSL:I

    .line 39
    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgMvpMatrixInGLSL:I

    .line 45
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    .line 46
    iput-object v3, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 49
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundVertexBuffer:[I

    .line 50
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundTexCoordBuffer:[I

    .line 56
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mAlpha:F

    .line 126
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->PRE_LOADED_BITMAP:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mType:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    .line 127
    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mResId:I

    .line 128
    iput-object v3, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mNinePatchTextureRect:Landroid/graphics/Rect;

    .line 130
    iput-object p3, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 133
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->initializeTextures()V

    .line 134
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->loadTexture()V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;[ILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "texture"    # [I
    .param p4, "textureRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/RenderBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 34
    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mShaderProgram:I

    .line 37
    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgVertexInGLSL:I

    .line 38
    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgTexCoordInGLSL:I

    .line 39
    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgMvpMatrixInGLSL:I

    .line 45
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    .line 46
    iput-object v3, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 49
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundVertexBuffer:[I

    .line 50
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundTexCoordBuffer:[I

    .line 56
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mAlpha:F

    .line 151
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->PRE_LOADED_TEXTURE:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mType:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    .line 152
    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mResId:I

    .line 153
    iput-object p4, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mNinePatchTextureRect:Landroid/graphics/Rect;

    .line 155
    iput-object v3, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 157
    iput-object p3, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    .line 158
    return-void
.end method

.method private disableLocalFunctions()Z
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgVertexInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 279
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method private doRender()V
    .locals 10

    .prologue
    const/16 v2, 0x1406

    const v6, 0x8892

    const/4 v3, 0x0

    .line 287
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundVertexBuffer:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 288
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgVertexInGLSL:I

    const/4 v1, 0x3

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 295
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 298
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundTexCoordBuffer:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 299
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgTexCoordInGLSL:I

    const/4 v1, 0x2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 306
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 309
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 310
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 312
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->TAG:Ljava/lang/String;

    const-string v1, "doRender():[Texture binder Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mShaderProgram:I

    const-string v1, "uTextureRgb"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v9

    .line 319
    .local v9, "textureRgb":I
    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 322
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mShaderProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v8

    .line 324
    .local v8, "alpha":I
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mAlpha:F

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 327
    const/16 v0, 0x10

    new-array v2, v0, [F

    .line 328
    .local v2, "mvpMatrix":[F
    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 331
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mSequencedLocalMatrix:[F

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 332
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mGlobalMatrix:[F

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 334
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgMvpMatrixInGLSL:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 342
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 343
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->TAG:Ljava/lang/String;

    const-string v1, "clearAndResetSurface():[Draw frame Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_1
    return-void
.end method

.method private enableLocalFunctions()Z
    .locals 2

    .prologue
    .line 247
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgVertexInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 248
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 251
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->enableShaderProgram()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->TAG:Ljava/lang/String;

    const-string v1, "enableFunctions():[Enable shader program failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v0, 0x0

    .line 257
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

    .line 262
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mShaderProgram:I

    if-nez v1, :cond_0

    .line 263
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->TAG:Ljava/lang/String;

    const-string v2, "enableShaderProgram():[Program is Invalid]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    return v0

    .line 266
    :cond_0
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 267
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    .line 268
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->TAG:Ljava/lang/String;

    const-string v2, "enableShaderProgram():[Program Error]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private finalizeShaderProgram()V
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mShaderProgram:I

    .line 444
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->finalizeVertexAndTextureCoordinatesBuffer()V

    .line 445
    return-void
.end method

.method private finalizeTextures()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 541
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    aget v0, v0, v2

    if-eqz v0, :cond_0

    .line 542
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 543
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    aput v2, v0, v2

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 548
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 549
    return-void
.end method

.method private finalizeVertexAndTextureCoordinatesBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 449
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundVertexBuffer:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundVertexBuffer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 453
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundTexCoordBuffer:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundTexCoordBuffer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 457
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

    .line 360
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mShaderProgram:I

    const-string v3, "vertex"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgVertexInGLSL:I

    .line 363
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 366
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mShaderProgram:I

    const-string v3, "texCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgTexCoordInGLSL:I

    .line 369
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 372
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mShaderProgram:I

    const-string v3, "mvpMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBgMvpMatrixInGLSL:I

    .line 375
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 378
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 379
    .local v1, "statusChecker":[I
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mShaderProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 385
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 388
    aget v2, v1, v4

    if-nez v2, :cond_0

    .line 389
    const-string v0, "TimeShiftSlider.initializeRgb2RgbShader():[Program link Error]"

    .line 390
    .local v0, "message":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v2, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v2, v0}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 395
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->initializeVertexAndTextureCoordinatesBuffer()V

    .line 400
    return-void
.end method

.method private initializeTextures()V
    .locals 3

    .prologue
    .line 461
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 462
    return-void
.end method

.method private loadNinePatchTexture()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 509
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 510
    .local v7, "option":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 511
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 512
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mResId:I

    invoke-static {v1, v3, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 518
    .local v2, "rawBmp":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 524
    .local v0, "npd":Landroid/graphics/drawable/NinePatchDrawable;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mNinePatchTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 527
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mNinePatchTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mNinePatchTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 531
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 532
    .local v6, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 534
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 537
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    aget v1, v1, v8

    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->bindTextureAndBitmap(ILandroid/graphics/Bitmap;)V

    .line 538
    return-void
.end method

.method private loadNormalTexture()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 495
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 496
    .local v0, "option":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 497
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 498
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mResId:I

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 504
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->bindTextureAndBitmap(ILandroid/graphics/Bitmap;)V

    .line 505
    return-void
.end method

.method private loadPreLoadedTexture()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mTexture:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->bindTextureAndBitmap(ILandroid/graphics/Bitmap;)V

    .line 491
    :cond_0
    return-void
.end method

.method private loadTexture()V
    .locals 2

    .prologue
    .line 465
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame$1;->$SwitchMap$com$sonymobile$cameracommon$opengl$RgbFrame$Type:[I

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mType:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 482
    :goto_0
    return-void

    .line 467
    :pswitch_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->loadPreLoadedTexture()V

    goto :goto_0

    .line 471
    :pswitch_1
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->loadNormalTexture()V

    goto :goto_0

    .line 475
    :pswitch_2
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->loadNinePatchTexture()V

    goto :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getOnScreenSize()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mNinePatchTextureRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mNinePatchTextureRect:Landroid/graphics/Rect;

    .line 171
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method protected initializeVertexAndTextureCoordinatesBuffer()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000

    const/4 v9, 0x0

    const/high16 v8, -0x40800000

    const v7, 0x8892

    const/4 v6, 0x0

    .line 403
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

    .line 409
    .local v1, "VERTEX_BACKGROUND":[F
    invoke-static {v1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 410
    .local v3, "vertexBuf":Ljava/nio/FloatBuffer;
    const/16 v4, 0x8

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    .line 416
    .local v0, "TEXCOORD_BACKGROUND":[F
    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 419
    .local v2, "texCoordBuf":Ljava/nio/FloatBuffer;
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundVertexBuffer:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundVertexBuffer:[I

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 420
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundTexCoordBuffer:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundTexCoordBuffer:[I

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 423
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundVertexBuffer:[I

    aget v4, v4, v6

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 424
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e8

    invoke-static {v7, v4, v3, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 429
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 431
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mBackgroundTexCoordBuffer:[I

    aget v4, v4, v6

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 432
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e8

    invoke-static {v7, v4, v2, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 437
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 438
    return-void

    .line 410
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
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->release()V

    .line 215
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->finalizeShaderProgram()V

    .line 217
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mType:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    sget-object v1, Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;->PRE_LOADED_TEXTURE:Lcom/sonymobile/cameracommon/opengl/RgbFrame$Type;

    if-eq v0, v1, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->finalizeTextures()V

    .line 220
    :cond_0
    return-void
.end method

.method public render()V
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->enableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->TAG:Ljava/lang/String;

    const-string v1, "render():[Enable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->doRender()V

    .line 239
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->disableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->TAG:Ljava/lang/String;

    const-string v1, "render():[Disable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 203
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mAlpha:F

    .line 204
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 3
    .param p1, "shaderProgram"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->mShaderProgram:I

    .line 186
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->initializeShaderProgram()V
    :try_end_0
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->loadTexture()V

    .line 193
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Lcom/sonymobile/cameracommon/opengl/OpenGlException;
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->TAG:Ljava/lang/String;

    const-string v2, "OpenGL initialize Error."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
