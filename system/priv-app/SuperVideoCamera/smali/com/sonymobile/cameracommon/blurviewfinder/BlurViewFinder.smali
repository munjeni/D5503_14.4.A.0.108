.class public Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;
.super Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;
.source "BlurViewFinder.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;
.implements Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;,
        Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;
    }
.end annotation


# static fields
.field private static final EYE_SIGHT_MATRIX:[F

.field private static final OVERLAY_FADE_IN_STEP:F = 0.1f

.field private static final PARALLEL_PROJECTION_MATRIX:[F

.field private static final PERSPECTIVE_PROJECTION_MATRIX:[F

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

.field private mHandler:Landroid/os/Handler;

.field private mInputImage:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;

.field private final mInputImageLock:Ljava/lang/Object;

.field private volatile mIsMirrored:Z

.field private volatile mIsReadyToRender:Z

.field private mMaskResId:I

.field private mOutputDrawArea:Landroid/graphics/Rect;

.field private mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

.field private final mOverlayBlurControllerLock:Ljava/lang/Object;

.field private mOverlayFrameShader:I

.field private mOverlayRendererList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewFrameShader:I

.field private mScreenHeightNorm:F

.field private mScreenWidthNorm:F


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x0

    const/high16 v14, -0x40800000

    const/high16 v9, 0x3f800000

    const/4 v2, 0x0

    .line 39
    const-string v0, "blurviewfinder"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 43
    const-class v0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->TAG:Ljava/lang/String;

    .line 59
    new-array v0, v3, [F

    sput-object v0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->EYE_SIGHT_MATRIX:[F

    .line 61
    new-array v0, v3, [F

    sput-object v0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->PERSPECTIVE_PROJECTION_MATRIX:[F

    .line 63
    new-array v0, v3, [F

    sput-object v0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->PARALLEL_PROJECTION_MATRIX:[F

    .line 67
    sget-object v0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->EYE_SIGHT_MATRIX:[F

    const/high16 v4, 0x42c80000

    move v3, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 74
    sget-object v6, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->PARALLEL_PROJECTION_MATRIX:[F

    const/high16 v13, 0x43480000

    move v7, v1

    move v8, v14

    move v10, v14

    move v11, v9

    move v12, v2

    invoke-static/range {v6 .. v13}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 84
    sget-object v0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->PERSPECTIVE_PROJECTION_MATRIX:[F

    const/high16 v6, 0x42480000

    const/high16 v7, 0x43160000

    move v2, v14

    move v3, v9

    move v4, v14

    move v5, v9

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;-><init>(Landroid/content/Context;I)V

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maskResId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 242
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurControllerLock:Ljava/lang/Object;

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mInputImageLock:Ljava/lang/Object;

    .line 177
    iput-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOutputDrawArea:Landroid/graphics/Rect;

    .line 180
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mIsReadyToRender:Z

    .line 204
    iput-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayRendererList:Ljava/util/List;

    .line 210
    iput v3, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mScreenWidthNorm:F

    .line 211
    iput v3, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mScreenHeightNorm:F

    .line 214
    iput v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mPreviewFrameShader:I

    .line 215
    iput v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayFrameShader:I

    .line 217
    iput v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mMaskResId:I

    .line 220
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mIsMirrored:Z

    .line 243
    invoke-virtual {p0, p0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->setRenderer(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;)V

    .line 244
    invoke-virtual {p0, p0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->setSurfaceStateCallback(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;)V

    .line 245
    iput p2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mMaskResId:I

    .line 246
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mHandler:Landroid/os/Handler;

    .line 247
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mMaskResId:I

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Lcom/sonymobile/cameracommon/opengl/YuvFrame;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;Lcom/sonymobile/cameracommon/opengl/YuvFrame;)Lcom/sonymobile/cameracommon/opengl/YuvFrame;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayRendererList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurControllerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;)Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    .prologue
    .line 34
    iget v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayFrameShader:I

    return v0
.end method

.method static synthetic access$700(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->createMaskBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mIsReadyToRender:Z

    return v0
.end method

.method private clearSurface()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 691
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 693
    const/16 v0, 0x4500

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 696
    return-void
.end method

.method private createAllShaders()V
    .locals 1

    .prologue
    .line 830
    iget v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mPreviewFrameShader:I

    if-eqz v0, :cond_0

    .line 831
    iget v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mPreviewFrameShader:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->deleteShaderProgram(I)V

    .line 833
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createYuvFrameShaderProgram(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mPreviewFrameShader:I

    .line 835
    iget v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayFrameShader:I

    if-eqz v0, :cond_1

    .line 836
    iget v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayFrameShader:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->deleteShaderProgram(I)V

    .line 838
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createAlphaMaskedBlurredYuvFrameShaderProgram(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayFrameShader:I

    .line 840
    return-void
.end method

.method private createMaskBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "blurArea"    # Landroid/graphics/Rect;

    .prologue
    const/16 v4, 0x80

    const/4 v8, 0x0

    .line 534
    const/4 v2, 0x0

    .line 535
    .local v2, "maskBmp":Landroid/graphics/Bitmap;
    iget v3, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mMaskResId:I

    if-nez v3, :cond_1

    .line 537
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 538
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 539
    .local v0, "c":Landroid/graphics/Canvas;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 563
    .end local v0    # "c":Landroid/graphics/Canvas;
    :cond_0
    :goto_0
    return-object v2

    .line 542
    :cond_1
    if-eqz p1, :cond_0

    .line 545
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 549
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mMaskResId:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v3, v2, v4, v5}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->loadBitmapFromResourceAs9Patch(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)Z

    move-result v1

    .line 555
    .local v1, "isSuccess":Z
    if-nez v1, :cond_0

    .line 557
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mMaskResId:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private doRender()V
    .locals 15

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->clearSurface()V

    .line 707
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 708
    .local v0, "rootGM":[F
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 709
    const/4 v1, 0x0

    sget-object v2, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->EYE_SIGHT_MATRIX:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 710
    const/4 v1, 0x0

    sget-object v2, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->PARALLEL_PROJECTION_MATRIX:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 725
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mInputImageLock:Ljava/lang/Object;

    monitor-enter v2

    .line 726
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mInputImage:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOutputDrawArea:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 731
    :cond_0
    monitor-exit v2

    .line 824
    :cond_1
    return-void

    .line 734
    :cond_2
    iget-object v11, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mInputImage:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;

    .line 735
    .local v11, "input":Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;
    iget-object v13, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOutputDrawArea:Landroid/graphics/Rect;

    .line 736
    .local v13, "outputArea":Landroid/graphics/Rect;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 739
    .local v9, "frameWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 740
    .local v8, "frameHeight":I
    iget-object v1, v11, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->size:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, v11, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->size:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v9, v8, v1, v2}, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->isSimilarAspect(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 751
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v9

    div-float v6, v1, v2

    .line 752
    .local v6, "baseScaleX":F
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v8

    div-float v7, v1, v2

    .line 753
    .local v7, "baseScaleY":F
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    if-eqz v1, :cond_4

    .line 754
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    iget-object v2, v11, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->size:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, v11, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->size:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, v11, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->bufferY:Ljava/nio/ByteBuffer;

    iget-object v5, v11, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->bufferVu:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setTextureYvu(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 760
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    invoke-virtual {v1, v0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->setGlobalMatrix([F)V

    .line 762
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v6, v7, v2}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->scale(FFF)V

    .line 764
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mIsMirrored:Z

    if-eqz v1, :cond_3

    .line 765
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    const/high16 v2, -0x40800000

    const/high16 v3, 0x3f800000

    const/high16 v4, 0x3f800000

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->scale(FFF)V

    .line 767
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v9

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    int-to-float v3, v9

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v8

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    int-to-float v4, v9

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->translate(FFF)V

    .line 771
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->render()V

    .line 777
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayRendererList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;

    .line 778
    .local v14, "renderer":Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;
    iget-object v1, v14, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->frame:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    iget-object v2, v11, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->size:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, v11, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->size:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, v11, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->bufferY:Ljava/nio/ByteBuffer;

    iget-object v5, v11, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->bufferVu:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->setTextureYvu(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 784
    iget-object v1, v14, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->frame:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    invoke-virtual {v1, v0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->setGlobalMatrix([F)V

    .line 785
    iget-object v1, v14, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->frame:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v9

    div-float/2addr v2, v3

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v8

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->scale(FFF)V

    .line 789
    iget-object v1, v14, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->frame:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->translate(FFF)V

    .line 791
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mIsMirrored:Z

    if-eqz v1, :cond_7

    .line 792
    new-instance v12, Landroid/graphics/Rect;

    int-to-float v1, v9

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iget-object v2, v14, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->sizeRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget-object v2, v14, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->sizeRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v9

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget-object v4, v14, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->sizeRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, v14, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->sizeRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v12, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 797
    .local v12, "mirrorRect":Landroid/graphics/Rect;
    iget-object v1, v14, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->frame:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    iget-object v2, v14, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v12, v13, v2}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->setBlurArea(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    .line 799
    iget-object v1, v14, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->frame:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    const/high16 v2, -0x40800000

    const/high16 v3, 0x3f800000

    const/high16 v4, 0x3f800000

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->scale(FFF)V

    .line 804
    .end local v12    # "mirrorRect":Landroid/graphics/Rect;
    :goto_1
    iget-object v1, v14, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->frame:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v9

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    int-to-float v3, v9

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v8

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    int-to-float v4, v9

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->translate(FFF)V

    .line 812
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurControllerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 813
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    if-eqz v1, :cond_6

    .line 814
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    iget-object v3, v14, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->frame:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    invoke-virtual {v1, v3}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->setTargetElement(Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;)V

    .line 815
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_5

    .line 816
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->update()V

    .line 818
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->applyActual()V

    .line 820
    :cond_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 822
    iget-object v1, v14, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->frame:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->render()V

    goto/16 :goto_0

    .line 736
    .end local v6    # "baseScaleX":F
    .end local v7    # "baseScaleY":F
    .end local v8    # "frameHeight":I
    .end local v9    # "frameWidth":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "input":Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;
    .end local v13    # "outputArea":Landroid/graphics/Rect;
    .end local v14    # "renderer":Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 801
    .restart local v6    # "baseScaleX":F
    .restart local v7    # "baseScaleY":F
    .restart local v8    # "frameHeight":I
    .restart local v9    # "frameWidth":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "input":Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;
    .restart local v13    # "outputArea":Landroid/graphics/Rect;
    .restart local v14    # "renderer":Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;
    :cond_7
    iget-object v1, v14, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->frame:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    iget-object v2, v14, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->sizeRect:Landroid/graphics/Rect;

    iget-object v3, v14, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v13, v3}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->setBlurArea(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 820
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private release()V
    .locals 2

    .prologue
    .line 331
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mInputImageLock:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mInputImage:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;

    .line 333
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    new-instance v0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$2;-><init>(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->requestAction(Ljava/lang/Runnable;)V

    .line 359
    return-void

    .line 333
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private releaseAllShaders()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 846
    iget v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mPreviewFrameShader:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->deleteShaderProgram(I)V

    .line 847
    iget v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayFrameShader:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->deleteShaderProgram(I)V

    .line 848
    iput v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mPreviewFrameShader:I

    .line 849
    iput v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayFrameShader:I

    .line 850
    return-void
.end method

.method private render()V
    .locals 4

    .prologue
    const/16 v3, 0xbe2

    const/16 v2, 0xb71

    .line 658
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 659
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 661
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 663
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->doRender()V

    .line 666
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 668
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 671
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurControllerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 672
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$5;

    invoke-direct {v2, p0}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$5;-><init>(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 682
    :cond_0
    monitor-exit v1

    .line 687
    return-void

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setupDynamicConfig(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000

    .line 449
    if-ge p2, p1, :cond_0

    .line 466
    sub-int v2, p1, p2

    div-int/lit8 v1, v2, 0x2

    .line 467
    .local v1, "verticalOffset":I
    mul-int/lit8 v2, v1, -0x1

    invoke-static {v3, v2, p1, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 470
    iput v4, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mScreenWidthNorm:F

    .line 471
    int-to-float v2, p2

    int-to-float v3, p1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mScreenHeightNorm:F

    .line 481
    .end local v1    # "verticalOffset":I
    :goto_0
    return-void

    .line 474
    :cond_0
    sub-int v2, p2, p1

    div-int/lit8 v0, v2, 0x2

    .line 475
    .local v0, "horizontalOffset":I
    mul-int/lit8 v2, v0, -0x1

    invoke-static {v3, v2, p2, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 478
    int-to-float v2, p2

    int-to-float v3, p1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mScreenWidthNorm:F

    .line 479
    iput v4, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mScreenHeightNorm:F

    goto :goto_0
.end method

.method private setupStaticConfig()V
    .locals 0

    .prologue
    .line 414
    return-void
.end method

.method private static native splitYuv(II[B[B[B[BI)V
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mIsReadyToRender:Z

    .line 577
    new-instance v0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$4;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$4;-><init>(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->requestAction(Ljava/lang/Runnable;)V

    .line 597
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 599
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->requestRender()V

    .line 600
    return-void
.end method

.method public onDrawFrame()V
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mIsReadyToRender:Z

    if-nez v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->clearSurface()V

    .line 379
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->render()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->clear()V

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mIsReadyToRender:Z

    .line 320
    invoke-super {p0}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->onPause()V

    .line 321
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 299
    invoke-super {p0}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->onResume()V

    .line 301
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->setupStaticConfig()V

    .line 303
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->clear()V

    .line 304
    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 429
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mIsReadyToRender:Z

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->setupDynamicConfig(II)V

    .line 434
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    if-eqz v2, :cond_0

    .line 435
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    invoke-virtual {v2, p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->updateRootView(Landroid/view/View;)V

    .line 436
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    iget v3, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mPreviewFrameShader:I

    invoke-virtual {v2, v3}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setShaderProgram(I)V

    .line 438
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayRendererList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;

    .line 439
    .local v1, "renderer":Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;
    iget-object v2, v1, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->frame:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    invoke-virtual {v2, p0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->updateRootView(Landroid/view/View;)V

    .line 440
    iget-object v2, v1, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->frame:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    iget v3, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayFrameShader:I

    invoke-virtual {v2, v3}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->setShaderProgram(I)V

    goto :goto_0

    .line 442
    .end local v1    # "renderer":Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;
    :cond_1
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 4

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->createAllShaders()V

    .line 395
    iget-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mBase:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    iget v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mPreviewFrameShader:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setShaderProgram(I)V

    .line 400
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurControllerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    if-nez v0, :cond_1

    .line 402
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    const/4 v2, 0x0

    const v3, 0x3dcccccd

    invoke-direct {v0, v2, v3}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;-><init>(FF)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    .line 406
    :cond_1
    monitor-exit v1

    .line 407
    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceDestroyed()V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->releaseAllShaders()V

    .line 491
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->release()V

    .line 492
    return-void
.end method

.method public request([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 621
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mInputImageLock:Ljava/lang/Object;

    monitor-enter v1

    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mInputImage:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;

    if-nez v0, :cond_1

    .line 623
    monitor-exit v1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mInputImage:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->write([B)V

    .line 626
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 628
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->requestRender()V

    .line 630
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mIsReadyToRender:Z

    if-nez v0, :cond_0

    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mIsReadyToRender:Z

    .line 632
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurControllerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 633
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v2}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->updateTarget(F)V

    .line 636
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 626
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public resetBlurRenderFadeIn()V
    .locals 2

    .prologue
    .line 606
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurControllerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 607
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOverlayBlurController:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->resetActual()V

    .line 610
    :cond_0
    monitor-exit v1

    .line 611
    return-void

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAlphaMaskResId(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mIsReadyToRender:Z

    .line 283
    new-instance v0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$1;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$1;-><init>(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;I)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->requestAction(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method public setBlurTargetAreas(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, "blurAreas":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 503
    .local v0, "requestedBlurAreas":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v1, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$3;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$3;-><init>(Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->requestAction(Ljava/lang/Runnable;)V

    .line 531
    return-void
.end method

.method public setMirrored(Z)V
    .locals 0
    .param p1, "isMirrored"    # Z

    .prologue
    .line 858
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mIsMirrored:Z

    .line 859
    return-void
.end method

.method public setParameters(Landroid/graphics/Rect;ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "inputImageSize"    # Landroid/graphics/Rect;
    .param p2, "inputImageFormat"    # I
    .param p3, "outputDrawArea"    # Landroid/graphics/Rect;

    .prologue
    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mIsReadyToRender:Z

    .line 269
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mInputImageLock:Ljava/lang/Object;

    monitor-enter v1

    .line 270
    :try_start_0
    new-instance v0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;-><init>(Landroid/graphics/Rect;I)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mInputImage:Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;

    .line 271
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->mOutputDrawArea:Landroid/graphics/Rect;

    .line 272
    monitor-exit v1

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
