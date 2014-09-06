.class public Lcom/sonymobile/cameracommon/opengl/BlurredYuvFrame;
.super Lcom/sonymobile/cameracommon/opengl/YuvFrame;
.source "BlurredYuvFrame.java"


# static fields
.field public static final BLUR_SPREAD_LEVEL:F = 8.444f

.field public static final CENTER_WEIGHT:F = 1.0f

.field public static final LOD:F = 4.2660003f

.field public static final SPREAD_OFFSET:F = 0.5688f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mImageHeight:I

.field private mImageWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/cameracommon/opengl/BlurredYuvFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/BlurredYuvFrame;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 30
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/BlurredYuvFrame;->mImageWidth:I

    .line 31
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/BlurredYuvFrame;->mImageHeight:I

    .line 41
    return-void
.end method

.method private updateTexCoord(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "targetArea"    # Landroid/graphics/Rect;
    .param p2, "root"    # Landroid/graphics/Rect;

    .prologue
    const v9, 0x8892

    const/4 v8, 0x0

    .line 119
    iget v6, p1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 120
    .local v5, "top":F
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 121
    .local v1, "bottom":F
    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 122
    .local v2, "left":F
    iget v6, p1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 124
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

    .line 130
    .local v0, "TEXCOORD":[F
    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    .line 133
    .local v4, "texCoordBuf":Ljava/nio/FloatBuffer;
    iget-object v6, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mTexCoordBuffers:[I

    aget v6, v6, v8

    invoke-static {v9, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 134
    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    const v7, 0x88e8

    invoke-static {v9, v6, v4, v7}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 139
    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 140
    return-void
.end method

.method private updateVertex(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "targetArea"    # Landroid/graphics/Rect;
    .param p2, "root"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v8, 0x40000000

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 145
    .local v4, "scaleX":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 146
    .local v5, "scaleY":F
    const/high16 v6, 0x3f800000

    invoke-virtual {p0, v4, v5, v6}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->scale(FFF)V

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v2, v6, v7

    .line 150
    .local v2, "difPixX":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    sub-int v3, v6, v7

    .line 151
    .local v3, "difPixY":I
    int-to-float v6, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v0, v6, v7

    .line 152
    .local v0, "difNormX":F
    int-to-float v6, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 154
    .local v1, "difNormY":F
    mul-float v6, v0, v8

    mul-float v7, v1, v8

    const v8, 0x3dcccccd

    invoke-virtual {p0, v6, v7, v8}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->translate(FFF)V

    .line 155
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

    .line 168
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 171
    const v2, 0x8192

    const/16 v3, 0x1102

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glHint(II)V

    .line 174
    const/16 v2, 0xcf5

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 177
    const/16 v2, 0x2800

    const v3, 0x46180400

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 182
    const/16 v2, 0x2801

    const v3, 0x461c0c00

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 187
    const/16 v2, 0x2802

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 192
    const/16 v2, 0x2803

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 198
    const/16 v7, 0x1401

    move v2, p5

    move v3, p2

    move v4, p3

    move v5, v1

    move v6, p5

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 210
    invoke-static {v0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 213
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 214
    return-void
.end method

.method protected doRender()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->doRender()V

    .line 71
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->release()V

    .line 46
    return-void
.end method

.method public setBokehArea(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "area"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/RenderBase;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    .local v0, "root":Landroid/graphics/Rect;
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/cameracommon/opengl/BlurredYuvFrame;->updateTexCoord(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 115
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/cameracommon/opengl/BlurredYuvFrame;->updateVertex(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 116
    return-void
.end method

.method public setTextureYvu(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bufferY"    # Ljava/nio/ByteBuffer;
    .param p4, "bufferVu"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 58
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/BlurredYuvFrame;->mImageWidth:I

    .line 59
    iput p2, p0, Lcom/sonymobile/cameracommon/opengl/BlurredYuvFrame;->mImageHeight:I

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setTextureYvu(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 66
    return-void
.end method

.method protected setupParameter(I)V
    .locals 7
    .param p1, "shaderProgramObject"    # I

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setupParameter(I)V

    .line 78
    const-string v6, "uTextureWidth"

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    .line 81
    .local v5, "textureWidth":I
    iget v6, p0, Lcom/sonymobile/cameracommon/opengl/BlurredYuvFrame;->mImageWidth:I

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 82
    const-string v6, "uTextureHeight"

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    .line 85
    .local v4, "textureHeight":I
    iget v6, p0, Lcom/sonymobile/cameracommon/opengl/BlurredYuvFrame;->mImageHeight:I

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 88
    const-string v6, "uBlurSpread"

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 91
    .local v0, "blurSpread":I
    const v6, 0x41071aa0

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 92
    const-string v6, "uLod"

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    .line 95
    .local v2, "lod":I
    const v6, 0x40888313

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 96
    const-string v6, "uSpreadOffset"

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    .line 99
    .local v3, "spreadOffset":I
    const v6, 0x3f119ce0

    invoke-static {v3, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 100
    const-string v6, "uCenterWeight"

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 103
    .local v1, "centerWeight":I
    const/high16 v6, 0x3f800000

    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 104
    return-void
.end method
