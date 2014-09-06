.class public Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;
.super Lcom/sonymobile/cameracommon/opengl/YuvFrame;
.source "AlphaMaskedYuvFrame.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TEXTURE_INDEX_MASK:I = 0x3


# instance fields
.field private mMaskBmp:Landroid/graphics/Bitmap;

.field private mMaskTexture:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "maskResId"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    .line 42
    invoke-direct {p0, p3}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->initializeMaskTexture(I)V

    .line 43
    return-void
.end method

.method private finalizeMaskTexture()V
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 135
    return-void
.end method

.method private initializeMaskTexture(I)V
    .locals 4
    .param p1, "maskResId"    # I

    .prologue
    const/4 v3, 0x0

    .line 100
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 103
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 104
    .local v0, "option":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 105
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 106
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    .line 111
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->prepareMaskTexture()V

    .line 112
    return-void
.end method

.method private prepareMaskTexture()V
    .locals 5

    .prologue
    const v4, 0x47012f00

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 116
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->bindTextureAndBitmap(ILandroid/graphics/Bitmap;)V

    .line 119
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 121
    const/16 v0, 0x2802

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 125
    const/16 v0, 0x2803

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 130
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 131
    return-void
.end method


# virtual methods
.method protected doRender()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->prepareMaskTexture()V

    .line 66
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->doRender()V

    .line 67
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->release()V

    .line 50
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->finalizeMaskTexture()V

    .line 53
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    .line 59
    :cond_1
    return-void
.end method

.method protected setupParameter(I)V
    .locals 2
    .param p1, "shaderProgramObject"    # I

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setupParameter(I)V

    .line 93
    const-string v1, "uAlphaMaskTexture"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 95
    .local v0, "textureMask":I
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 96
    return-void
.end method

.method protected setupTexture(II[II)Z
    .locals 3
    .param p1, "vertexBufObj"    # I
    .param p2, "texCoordBufObj"    # I
    .param p3, "yuvTextures"    # [I
    .param p4, "shaderProgramObject"    # I

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setupTexture(II[II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    :goto_0
    return v0

    .line 79
    :cond_0
    const v1, 0x84c3

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 80
    const/16 v1, 0xde1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    aget v2, v2, v0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 81
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->TAG:Ljava/lang/String;

    const-string v2, ".draw():[Texture binder Error]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
