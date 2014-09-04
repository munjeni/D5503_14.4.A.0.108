.class public Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$1;,
        Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;,
        Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;
    }
.end annotation


# static fields
.field private static final BOX_COORDINATES:[F

.field private static final MSCALE_X:I = 0x0

.field private static final MSCALE_Y:I = 0x5

.field private static final MSKEW_X:I = 0x4

.field private static final MSKEW_Y:I = 0x1

.field private static final OFFSET_DRAW_LINE:I = 0x4

.field private static final OFFSET_DRAW_RECT:I = 0x6

.field private static final OFFSET_FILL_RECT:I = 0x0

.field private static final OPAQUE_ALPHA:F = 0.95f


# instance fields
.field private mAlpha:F

.field private mAnimationTime:J

.field private mBlendEnabled:Z

.field private mBoxCoords:I

.field private final mClipRect:Landroid/graphics/Rect;

.field mCountDrawLine:I

.field mCountDrawMesh:I

.field mCountFillRect:I

.field mCountTextureOES:I

.field mCountTextureRect:I

.field private final mDeleteBuffers:Lcom/sonymobile/china/photoeditor/crop/util/IntArray;

.field private final mDrawTextureSourceRect:Landroid/graphics/RectF;

.field private final mDrawTextureTargetRect:Landroid/graphics/RectF;

.field private final mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

.field private mHeight:I

.field private final mMapPointsBuffer:[F

.field private final mMatrixValues:[F

.field private mRecycledRestoreAction:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;

.field private final mRestoreStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempMatrix:[F

.field private final mTextureColor:[F

.field private final mTextureMatrixValues:[F

.field private final mUnboundTextures:Lcom/sonymobile/china/photoeditor/crop/util/IntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000
        0x0
        0x0
        0x3f800000
        0x3f800000
        0x3f800000
        0x0
        0x0
        0x3f800000
        0x3f800000
        0x0
        0x0
        0x0
        0x3f800000
        0x3f800000
        0x3f800000
        0x3f800000
        0x0
    .end array-data
.end method

.method constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL11;

    .prologue
    const/16 v1, 0x10

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    .line 56
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    .line 59
    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMapPointsBuffer:[F

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mTextureColor:[F

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mClipRect:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/Stack;

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 81
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mTempMatrix:[F

    .line 83
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/util/IntArray;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/crop/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mUnboundTextures:Lcom/sonymobile/china/photoeditor/crop/util/IntArray;

    .line 85
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/util/IntArray;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/crop/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/sonymobile/china/photoeditor/crop/util/IntArray;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mBlendEnabled:Z

    .line 103
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 104
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    invoke-direct {v0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    .line 105
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->initialize()V

    .line 106
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;)Ljavax/microedition/khronos/opengles/GL11;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;)[F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    return-object v0
.end method

.method private static allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 149
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private bindTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;)Z
    .locals 4
    .param p1, "texture"    # Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;

    .prologue
    const/4 v0, 0x1

    .line 458
    invoke-virtual {p1, p0}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->onBind(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    const/4 v0, 0x0

    .line 462
    :goto_0
    return v0

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    invoke-virtual {v1, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setTexture2DEnabled(Z)V

    .line 461
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v2, 0xde1

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    goto :goto_0
.end method

.method private convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;)V
    .locals 9
    .param p1, "source"    # Landroid/graphics/RectF;
    .param p2, "target"    # Landroid/graphics/RectF;
    .param p3, "texture"    # Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;

    .prologue
    .line 425
    invoke-virtual {p3}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getWidth()I

    move-result v3

    .line 426
    .local v3, "width":I
    invoke-virtual {p3}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getHeight()I

    move-result v0

    .line 427
    .local v0, "height":I
    invoke-virtual {p3}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getTextureWidth()I

    move-result v2

    .line 428
    .local v2, "texWidth":I
    invoke-virtual {p3}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getTextureHeight()I

    move-result v1

    .line 430
    .local v1, "texHeight":I
    iget v6, p1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->left:F

    .line 431
    iget v6, p1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->right:F

    .line 432
    iget v6, p1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->top:F

    .line 433
    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->bottom:F

    .line 436
    int-to-float v6, v3

    int-to-float v7, v2

    div-float v4, v6, v7

    .line 437
    .local v4, "xBound":F
    iget v6, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    .line 438
    iget v6, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p1, Landroid/graphics/RectF;->left:F

    sub-float v8, v4, v8

    mul-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/RectF;->right:F

    .line 439
    iput v4, p1, Landroid/graphics/RectF;->right:F

    .line 441
    :cond_0
    int-to-float v6, v0

    int-to-float v7, v1

    div-float v5, v6, v7

    .line 442
    .local v5, "yBound":F
    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    .line 443
    iget v6, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p1, Landroid/graphics/RectF;->top:F

    sub-float v8, v5, v8

    mul-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/RectF;->bottom:F

    .line 444
    iput v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 446
    :cond_1
    return-void
.end method

.method private drawBoundTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IIII)V
    .locals 8
    .param p1, "texture"    # Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000

    .line 357
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->isMatrixRotatedOrFlipped([F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->hasBorder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getTextureWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getTextureHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v4, v1

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getTextureWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getTextureHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    .line 367
    :goto_0
    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->textureRect(FFFF)V

    .line 380
    :cond_0
    :goto_1
    return-void

    .line 364
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getTextureWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getTextureHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v3, v3, v0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    goto :goto_0

    .line 370
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    add-int v3, p3, p5

    add-int v4, p2, p4

    move-object v0, p0

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mapPoints([FIIII)[F

    move-result-object v6

    .line 371
    .local v6, "points":[F
    aget v0, v6, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 372
    const/4 v0, 0x1

    aget v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 373
    const/4 v0, 0x2

    aget v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int p4, v0, p2

    .line 374
    const/4 v0, 0x3

    aget v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int p5, v0, p3

    .line 375
    if-lez p4, :cond_0

    if-lez p5, :cond_0

    .line 376
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p2

    move v2, p3

    move v3, v7

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 377
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mCountTextureOES:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mCountTextureOES:I

    goto :goto_1
.end method

.method private drawMixed(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IFIIIIF)V
    .locals 11
    .param p1, "from"    # Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
    .param p2, "toColor"    # I
    .param p3, "ratio"    # F
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "alpha"    # F

    .prologue
    .line 476
    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_1

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 477
    invoke-virtual/range {v1 .. v7}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->drawTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IIIIF)V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    const/high16 v1, 0x3f800000

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_2

    .line 480
    int-to-float v2, p4

    move/from16 v0, p5

    int-to-float v3, v0

    move/from16 v0, p6

    int-to-float v4, v0

    move/from16 v0, p7

    int-to-float v5, v0

    move-object v1, p0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->fillRect(FFFFI)V

    goto :goto_0

    .line 484
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    iget-boolean v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->isOpaque(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3f733333

    cmpg-float v1, p8, v1

    if-gez v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 487
    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 488
    .local v10, "gl":Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->bindTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    const/high16 v1, 0x3f800000

    mul-float v2, p8, p3

    sub-float v9, v1, v2

    .line 503
    .local v9, "comboRatio":F
    const v1, 0x3f733333

    cmpg-float v1, p8, v1

    if-gez v1, :cond_5

    .line 504
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    const/high16 v2, 0x3f800000

    sub-float/2addr v2, p3

    mul-float v2, v2, p8

    div-float/2addr v2, v9

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 510
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    const v2, 0x8570

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    .line 514
    ushr-int/lit8 v1, p2, 0x18

    int-to-float v1, v1

    const v2, 0x477e0100

    div-float v8, v1, v2

    .line 515
    .local v8, "colorAlpha":F
    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v8

    ushr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v8

    and-int/lit16 v3, p2, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v8

    invoke-direct {p0, v1, v2, v3, v9}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->setTextureColor(FFFF)V

    .line 517
    const/16 v1, 0x2300

    const/16 v2, 0x2201

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mTextureColor:[F

    const/4 v4, 0x0

    invoke-interface {v10, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    .line 519
    const/16 v1, 0x2300

    const v2, 0x8571

    const v3, 0x47057500

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 520
    const/16 v1, 0x2300

    const v2, 0x8572

    const v3, 0x47057500

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 521
    const/16 v1, 0x2300

    const v2, 0x8581

    const v3, 0x47057600

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 522
    const/16 v1, 0x2300

    const v2, 0x8591

    const/high16 v3, 0x44400000

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 523
    const/16 v1, 0x2300

    const v2, 0x8589

    const v3, 0x47057600

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 524
    const/16 v1, 0x2300

    const v2, 0x8599

    const v3, 0x44408000

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 527
    const/16 v1, 0x2300

    const v2, 0x8582

    const v3, 0x47057600

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 528
    const/16 v1, 0x2300

    const v2, 0x8592

    const v3, 0x44408000

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 531
    const/16 v1, 0x2300

    const v2, 0x858a

    const v3, 0x47057600

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 532
    const/16 v1, 0x2300

    const v2, 0x859a

    const v3, 0x44408000

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 534
    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->drawBoundTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IIII)V

    .line 535
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    const/16 v2, 0x1e01

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto/16 :goto_0

    .line 484
    .end local v8    # "colorAlpha":F
    .end local v9    # "comboRatio":F
    .end local v10    # "gl":Ljavax/microedition/khronos/opengles/GL11;
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 506
    .restart local v9    # "comboRatio":F
    .restart local v10    # "gl":Ljavax/microedition/khronos/opengles/GL11;
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    goto/16 :goto_2
.end method

.method private drawMixed(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;FIIIIF)V
    .locals 9
    .param p1, "from"    # Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
    .param p2, "to"    # Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
    .param p3, "ratio"    # F
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "alpha"    # F

    .prologue
    .line 541
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 542
    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->drawTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IIIIF)V

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    const/high16 v0, 0x3f800000

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_2

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 545
    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->drawTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IIIIF)V

    goto :goto_0

    .line 551
    :cond_2
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 553
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x3f733333

    cmpg-float v0, p8, v0

    if-gez v0, :cond_5

    :cond_3
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 556
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 557
    .local v8, "gl":Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->bindTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    const/high16 v0, 0x3f800000

    mul-float v1, p8, p3

    sub-float v7, v0, v1

    .line 572
    .local v7, "comboRatio":F
    const v0, 0x3f733333

    cmpg-float v0, p8, v0

    if-gez v0, :cond_6

    .line 573
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    const/high16 v1, 0x3f800000

    sub-float/2addr v1, p3

    mul-float v1, v1, p8

    div-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 578
    :goto_3
    const v0, 0x84c1

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    .line 579
    invoke-direct {p0, p2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->bindTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 581
    const/16 v0, 0xde1

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 583
    const v0, 0x84c0

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    goto :goto_0

    .line 551
    .end local v7    # "comboRatio":F
    .end local v8    # "gl":Ljavax/microedition/khronos/opengles/GL11;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 553
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 575
    .restart local v7    # "comboRatio":F
    .restart local v8    # "gl":Ljavax/microedition/khronos/opengles/GL11;
    :cond_6
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    goto :goto_3

    .line 586
    :cond_7
    const/16 v0, 0xde1

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 589
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    const v1, 0x8570

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    .line 590
    const/16 v0, 0x2300

    const v1, 0x8571

    const v2, 0x47057500

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 591
    const/16 v0, 0x2300

    const v1, 0x8572

    const v2, 0x47057500

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 596
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->setTextureColor(FFFF)V

    .line 597
    const/16 v0, 0x2300

    const/16 v1, 0x2201

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mTextureColor:[F

    const/4 v3, 0x0

    invoke-interface {v8, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    .line 600
    const/16 v0, 0x2300

    const v1, 0x8582

    const v2, 0x47057600

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 601
    const/16 v0, 0x2300

    const v1, 0x8592

    const v2, 0x44408000

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 604
    const/16 v0, 0x2300

    const v1, 0x858a

    const v2, 0x47057600

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 605
    const/16 v0, 0x2300

    const v1, 0x859a

    const v2, 0x44408000

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    .line 608
    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->drawBoundTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IIII)V

    .line 611
    const/16 v0, 0xde1

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 613
    const v0, 0x84c0

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    goto/16 :goto_0
.end method

.method private freeRestoreConfig(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;)V
    .locals 1
    .param p1, "action"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;

    .prologue
    .line 882
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;

    iput-object v0, p1, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;->mNextFree:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;

    .line 883
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;

    .line 884
    return-void
.end method

.method private initialize()V
    .locals 11

    .prologue
    const v10, 0x8892

    const/4 v9, 0x1

    const/16 v8, 0x1406

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 153
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 156
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    sget-object v4, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x20

    div-int/lit8 v2, v4, 0x8

    .line 157
    .local v2, "size":I
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 158
    .local v3, "xyBuffer":Ljava/nio/FloatBuffer;
    sget-object v4, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    sget-object v5, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    array-length v5, v5

    invoke-virtual {v3, v4, v6, v5}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 160
    new-array v1, v9, [I

    .line 161
    .local v1, "name":[I
    invoke-interface {v0, v9, v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 162
    aget v4, v1, v6

    iput v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mBoxCoords:I

    .line 164
    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mBoxCoords:I

    invoke-interface {v0, v10, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 165
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e4

    invoke-interface {v0, v10, v4, v3, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 168
    invoke-interface {v0, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 169
    invoke-interface {v0, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 172
    const v4, 0x84c1

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 173
    invoke-interface {v0, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 174
    const v4, 0x84c0

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 175
    const v4, 0x8078

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 178
    const/high16 v4, 0x3f800000

    iput v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mAlpha:F

    .line 179
    return-void
.end method

.method private static isMatrixRotatedOrFlipped([F)Z
    .locals 6
    .param p0, "matrix"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const v5, 0x3727c5ac

    .line 626
    const v0, 0x3727c5ac

    .line 627
    .local v0, "eps":F
    const/4 v3, 0x4

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    aget v3, p0, v1

    const v4, -0x48d83a54

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    const/4 v3, 0x5

    aget v3, p0, v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private mapPoints([FIIII)[F
    .locals 10
    .param p1, "matrix"    # [F
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x5

    const/4 v3, 0x0

    const/4 v7, 0x3

    .line 303
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMapPointsBuffer:[F

    .line 304
    .local v0, "point":[F
    const/4 v5, 0x6

    .line 305
    .local v5, "srcOffset":I
    int-to-float v2, p2

    aput v2, v0, v5

    .line 306
    int-to-float v2, p3

    aput v2, v0, v9

    .line 307
    const/16 v2, 0x8

    const/4 v4, 0x0

    aput v4, v0, v2

    .line 308
    const/16 v2, 0x9

    const/high16 v4, 0x3f800000

    aput v4, v0, v2

    .line 310
    const/4 v1, 0x0

    .local v1, "resultOffset":I
    move-object v2, p1

    move-object v4, v0

    .line 311
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 312
    aget v2, v0, v1

    aget v4, v0, v7

    div-float/2addr v2, v4

    aput v2, v0, v1

    .line 313
    const/4 v2, 0x1

    aget v4, v0, v2

    aget v6, v0, v7

    div-float/2addr v4, v6

    aput v4, v0, v2

    .line 316
    int-to-float v2, p4

    aput v2, v0, v5

    .line 317
    int-to-float v2, p5

    aput v2, v0, v9

    .line 318
    const/4 v1, 0x2

    move-object v2, p1

    move-object v4, v0

    .line 319
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 320
    aget v2, v0, v1

    aget v3, v0, v8

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 321
    aget v2, v0, v7

    aget v3, v0, v8

    div-float/2addr v2, v3

    aput v2, v0, v7

    .line 323
    return-object v0
.end method

.method private obtainRestoreConfig()Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;
    .locals 2

    .prologue
    .line 887
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;

    if-eqz v1, :cond_0

    .line 888
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;

    .line 889
    .local v0, "result":Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;
    iget-object v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;->mNextFree:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;

    .line 892
    .end local v0    # "result":Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$1;)V

    goto :goto_0
.end method

.method private restoreTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 931
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mTempMatrix:[F

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 932
    return-void
.end method

.method private saveTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 927
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mTempMatrix:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 928
    return-void
.end method

.method private setTextureColor(FFFF)V
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 466
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mTextureColor:[F

    .line 467
    .local v0, "color":[F
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 468
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 469
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 470
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 471
    return-void
.end method

.method private setTextureCoords(FFFF)V
    .locals 5
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000

    .line 800
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 801
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    sub-float v1, p3, p1

    aput v1, v0, v4

    .line 802
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/4 v1, 0x5

    sub-float v2, p4, p2

    aput v2, v0, v1

    .line 803
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 804
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 805
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 806
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 807
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 808
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 809
    return-void
.end method

.method private setTextureCoords(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "source"    # Landroid/graphics/RectF;

    .prologue
    .line 796
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    .line 797
    return-void
.end method

.method private textureRect(FFFF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const/4 v3, 0x0

    .line 254
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 256
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->saveTransform()V

    .line 257
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->translate(FFF)V

    .line 258
    const/high16 v1, 0x3f800000

    invoke-virtual {p0, p3, p4, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->scale(FFF)V

    .line 260
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 261
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 263
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->restoreTransform()V

    .line 264
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mCountTextureRect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mCountTextureRect:I

    .line 265
    return-void
.end method


# virtual methods
.method public clearBuffer()V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 793
    return-void
.end method

.method public clipRect(IIII)Z
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 327
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mapPoints([FIIII)[F

    move-result-object v8

    .line 331
    .local v8, "point":[F
    const/4 v0, 0x0

    aget v0, v8, v0

    const/4 v1, 0x2

    aget v1, v8, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 332
    const/4 v0, 0x2

    aget v0, v8, v0

    float-to-int p1, v0

    .line 333
    const/4 v0, 0x0

    aget v0, v8, v0

    float-to-int p3, v0

    .line 338
    :goto_0
    const/4 v0, 0x1

    aget v0, v8, v0

    const/4 v1, 0x3

    aget v1, v8, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 339
    const/4 v0, 0x3

    aget v0, v8, v0

    float-to-int p2, v0

    .line 340
    const/4 v0, 0x1

    aget v0, v8, v0

    float-to-int p4, v0

    .line 345
    :goto_1
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mClipRect:Landroid/graphics/Rect;

    .line 347
    .local v6, "clip":Landroid/graphics/Rect;
    invoke-virtual {v6, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v7

    .line 348
    .local v7, "intersect":Z
    if-nez v7, :cond_0

    .line 349
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    .line 351
    return v7

    .line 335
    .end local v6    # "clip":Landroid/graphics/Rect;
    .end local v7    # "intersect":Z
    :cond_1
    const/4 v0, 0x0

    aget v0, v8, v0

    float-to-int p1, v0

    .line 336
    const/4 v0, 0x2

    aget v0, v8, v0

    float-to-int p3, v0

    goto :goto_0

    .line 342
    :cond_2
    const/4 v0, 0x1

    aget v0, v8, v0

    float-to-int p2, v0

    .line 343
    const/4 v0, 0x3

    aget v0, v8, v0

    float-to-int p4, v0

    goto :goto_1
.end method

.method public copyTexture(IIII)Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
    .locals 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 633
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->isMatrixRotatedOrFlipped([F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "cannot support rotated matrix"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 636
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    add-int v5, p2, p4

    add-int v6, p1, p3

    move-object v2, p0

    move v4, p1

    move/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mapPoints([FIIII)[F

    move-result-object v12

    .line 637
    .local v12, "points":[F
    const/4 v3, 0x0

    aget v3, v12, v3

    float-to-int p1, v3

    .line 638
    const/4 v3, 0x1

    aget v3, v12, v3

    float-to-int v0, v3

    move/from16 p2, v0

    .line 639
    const/4 v3, 0x2

    aget v3, v12, v3

    float-to-int v3, v3

    sub-int p3, v3, p1

    .line 640
    const/4 v3, 0x3

    aget v3, v12, v3

    float-to-int v3, v3

    sub-int p4, v3, p2

    .line 642
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 644
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL11;
    invoke-static {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/RawTexture;->newInstance(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Lcom/sonymobile/china/photoeditor/crop/ui/RawTexture;

    move-result-object v13

    .line 645
    .local v13, "texture":Lcom/sonymobile/china/photoeditor/crop/ui/RawTexture;
    const/16 v3, 0xde1

    invoke-virtual {v13}, Lcom/sonymobile/china/photoeditor/crop/ui/RawTexture;->getId()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 646
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v13, v0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/RawTexture;->setSize(II)V

    .line 648
    const/4 v3, 0x4

    new-array v11, v3, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v11, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v11, v3

    const/4 v3, 0x2

    aput p3, v11, v3

    const/4 v3, 0x3

    aput p4, v11, v3

    .line 651
    .local v11, "cropRect":[I
    const/16 v3, 0xde1

    const v4, 0x8b9d

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v11, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 652
    const/16 v3, 0xde1

    const/16 v4, 0x2802

    const v5, 0x812f

    invoke-interface {v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 653
    const/16 v3, 0xde1

    const/16 v4, 0x2803

    const v5, 0x812f

    invoke-interface {v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 654
    const/16 v3, 0xde1

    const/16 v4, 0x2801

    const v5, 0x46180400

    invoke-interface {v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 655
    const/16 v3, 0xde1

    const/16 v4, 0x2800

    const v5, 0x46180400

    invoke-interface {v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 656
    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1907

    invoke-virtual {v13}, Lcom/sonymobile/china/photoeditor/crop/ui/RawTexture;->getTextureWidth()I

    move-result v8

    invoke-virtual {v13}, Lcom/sonymobile/china/photoeditor/crop/ui/RawTexture;->getTextureHeight()I

    move-result v9

    const/4 v10, 0x0

    move v6, p1

    move/from16 v7, p2

    invoke-interface/range {v2 .. v10}, Ljavax/microedition/khronos/opengles/GL11;->glCopyTexImage2D(IIIIIIII)V

    .line 659
    return-object v13
.end method

.method public currentAnimationTimeMillis()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mAnimationTime:J

    return-wide v0
.end method

.method public deleteBuffer(I)V
    .locals 2
    .param p1, "bufferId"    # I

    .prologue
    .line 823
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mUnboundTextures:Lcom/sonymobile/china/photoeditor/crop/util/IntArray;

    monitor-enter v1

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/sonymobile/china/photoeditor/crop/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/crop/util/IntArray;->add(I)V

    .line 825
    monitor-exit v1

    .line 826
    return-void

    .line 825
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteRecycledResources()V
    .locals 6

    .prologue
    .line 829
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mUnboundTextures:Lcom/sonymobile/china/photoeditor/crop/util/IntArray;

    monitor-enter v2

    .line 830
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mUnboundTextures:Lcom/sonymobile/china/photoeditor/crop/util/IntArray;

    .line 831
    .local v0, "ids":Lcom/sonymobile/china/photoeditor/crop/util/IntArray;
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 832
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/util/IntArray;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/util/IntArray;->getInternalArray()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V

    .line 833
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/util/IntArray;->clear()V

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/sonymobile/china/photoeditor/crop/util/IntArray;

    .line 837
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 838
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/util/IntArray;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/util/IntArray;->getInternalArray()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 839
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/util/IntArray;->clear()V

    .line 841
    :cond_1
    monitor-exit v2

    .line 842
    return-void

    .line 841
    .end local v0    # "ids":Lcom/sonymobile/china/photoeditor/crop/util/IntArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public drawLine(FFFFLcom/sonymobile/china/photoeditor/crop/ui/GLPaint;)V
    .locals 4
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "paint"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 202
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setColorMode(IF)V

    .line 203
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setLineWidth(F)V

    .line 204
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->getAntiAlias()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setLineSmooth(Z)V

    .line 206
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->saveTransform()V

    .line 207
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->translate(FFF)V

    .line 208
    sub-float v1, p3, p1

    sub-float v2, p4, p2

    const/high16 v3, 0x3f800000

    invoke-virtual {p0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->scale(FFF)V

    .line 210
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 211
    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 213
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->restoreTransform()V

    .line 214
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mCountDrawLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mCountDrawLine:I

    .line 215
    return-void
.end method

.method public drawMesh(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IIIIII)V
    .locals 8
    .param p1, "tex"    # Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xyBuffer"    # I
    .param p5, "uvBuffer"    # I
    .param p6, "indexBuffer"    # I
    .param p7, "indexCount"    # I

    .prologue
    const v7, 0x8892

    const/4 v4, 0x0

    const/16 v6, 0x1406

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 269
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mAlpha:F

    .line 270
    .local v0, "alpha":F
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->bindTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    iget-boolean v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f733333

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 274
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    invoke-virtual {v1, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 278
    const/high16 v1, 0x3f800000

    const/high16 v3, 0x3f800000

    invoke-direct {p0, v4, v4, v1, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    .line 280
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->saveTransform()V

    .line 281
    int-to-float v1, p2

    int-to-float v3, p3

    invoke-virtual {p0, v1, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->translate(FFF)V

    .line 283
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 285
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v7, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 286
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 288
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v7, p5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 289
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 291
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v3, 0x8893

    invoke-interface {v1, v3, p6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 292
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v3, 0x5

    const/16 v4, 0x1401

    invoke-interface {v1, v3, p7, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 294
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mBoxCoords:I

    invoke-interface {v1, v7, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 295
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 296
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 298
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->restoreTransform()V

    .line 299
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mCountDrawMesh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mCountDrawMesh:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 273
    goto :goto_1
.end method

.method public drawMixed(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IFIIII)V
    .locals 9
    .param p1, "from"    # Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
    .param p2, "toColor"    # I
    .param p3, "ratio"    # F
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I

    .prologue
    .line 449
    iget v8, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->drawMixed(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IFIIIIF)V

    .line 450
    return-void
.end method

.method public drawMixed(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;FIIII)V
    .locals 9
    .param p1, "from"    # Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
    .param p2, "to"    # Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
    .param p3, "ratio"    # F
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I

    .prologue
    .line 454
    iget v8, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->drawMixed(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;FIIIIF)V

    .line 455
    return-void
.end method

.method public drawRect(FFFFLcom/sonymobile/china/photoeditor/crop/ui/GLPaint;)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "paint"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 184
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setColorMode(IF)V

    .line 185
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setLineWidth(F)V

    .line 186
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->getAntiAlias()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setLineSmooth(Z)V

    .line 188
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->saveTransform()V

    .line 189
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->translate(FFF)V

    .line 190
    const/high16 v1, 0x3f800000

    invoke-virtual {p0, p3, p4, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->scale(FFF)V

    .line 192
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 193
    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 195
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->restoreTransform()V

    .line 196
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mCountDrawLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mCountDrawLine:I

    .line 197
    return-void
.end method

.method public drawTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IIII)V
    .locals 7
    .param p1, "texture"    # Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 383
    iget v6, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->drawTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IIIIF)V

    .line 384
    return-void
.end method

.method public drawTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IIIIF)V
    .locals 2
    .param p1, "texture"    # Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "alpha"    # F

    .prologue
    .line 391
    if-lez p4, :cond_0

    if-gtz p5, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x3f733333

    cmpg-float v0, p6, v0

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 395
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->bindTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    invoke-virtual {v0, p6}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 398
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->drawBoundTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IIII)V

    goto :goto_0

    .line 394
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public drawTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "texture"    # Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "target"    # Landroid/graphics/RectF;

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 407
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 408
    iget-object p2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 409
    iget-object p3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 411
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mAlpha:F

    const v2, 0x3f733333

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 412
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->bindTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0, p2, p3, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;)V

    .line 415
    invoke-direct {p0, p2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->setTextureCoords(Landroid/graphics/RectF;)V

    .line 416
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 417
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->textureRect(FFFF)V

    goto :goto_0

    .line 411
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public dumpStatisticsAndClear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 919
    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mCountDrawMesh:I

    .line 920
    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mCountTextureRect:I

    .line 921
    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mCountTextureOES:I

    .line 922
    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mCountFillRect:I

    .line 923
    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mCountDrawLine:I

    .line 924
    return-void
.end method

.method public fillRect(FFFFI)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "color"    # I

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGLState:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, p5, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setColorMode(IF)V

    .line 219
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 221
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->saveTransform()V

    .line 222
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->translate(FFF)V

    .line 223
    const/high16 v1, 0x3f800000

    invoke-virtual {p0, p3, p4, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->scale(FFF)V

    .line 225
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 226
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 228
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->restoreTransform()V

    .line 229
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mCountFillRect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mCountFillRect:I

    .line 230
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mAlpha:F

    return v0
.end method

.method public getGLInstance()Ljavax/microedition/khronos/opengles/GL11;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method

.method public multiplyAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 140
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 141
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mAlpha:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mAlpha:F

    .line 142
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiplyMatrix([FI)V
    .locals 6
    .param p1, "matrix"    # [F
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mTempMatrix:[F

    .line 249
    .local v0, "temp":[F
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 250
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    return-void
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 874
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 875
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 876
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;

    .line 877
    .local v0, "config":Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;
    invoke-virtual {v0, p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;->restore(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;)V

    .line 878
    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->freeRestoreConfig(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;)V

    .line 879
    return-void
.end method

.method public rotate(FFFF)V
    .locals 9
    .param p1, "angle"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mTempMatrix:[F

    .local v0, "temp":[F
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 242
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 243
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    move-object v2, v0

    move v3, v8

    move v5, v1

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 244
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-static {v0, v8, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    return-void
.end method

.method public save()I
    .locals 1

    .prologue
    .line 845
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->save(I)I

    move-result v0

    return v0
.end method

.method public save(I)I
    .locals 5
    .param p1, "saveFlags"    # I

    .prologue
    const/4 v4, 0x0

    .line 849
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->obtainRestoreConfig()Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;

    move-result-object v0

    .line 851
    .local v0, "config":Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 852
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mAlpha:F

    iput v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;->mAlpha:F

    .line 857
    :goto_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 858
    iget-object v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 863
    :goto_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 864
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    iget-object v2, v0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 869
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 854
    :cond_0
    const/high16 v1, -0x40800000

    iput v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;->mAlpha:F

    goto :goto_0

    .line 860
    :cond_1
    iget-object v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;->mRect:Landroid/graphics/Rect;

    const v2, 0x7fffffff

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 866
    :cond_2
    iget-object v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    const/high16 v2, -0x800000

    aput v2, v1, v4

    goto :goto_2
.end method

.method public scale(FFF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "sz"    # F

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 238
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 135
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 136
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mAlpha:F

    .line 137
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBlendEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mBlendEnabled:Z

    .line 388
    return-void
.end method

.method public setCurrentAnimationTimeMillis(J)V
    .locals 2
    .param p1, "time"    # J

    .prologue
    .line 787
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 788
    iput-wide p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mAnimationTime:J

    .line 789
    return-void

    .line 787
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v6, 0x3f800000

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 109
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 110
    iput p2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mHeight:I

    .line 112
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 113
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    invoke-interface {v0, v3, v3, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    .line 114
    const/16 v2, 0x1701

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 115
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 116
    int-to-float v2, p1

    int-to-float v4, p2

    invoke-static {v0, v5, v2, v5, v4}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 118
    const/16 v2, 0x1700

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 119
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 120
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    .line 122
    .local v1, "matrix":[F
    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 123
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mHeight:I

    int-to-float v2, v2

    invoke-static {v1, v3, v5, v2, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 124
    const/high16 v2, -0x40800000

    invoke-static {v1, v3, v6, v2, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 126
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 127
    invoke-interface {v0, v3, v3, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    .line 128
    return-void

    .end local v0    # "gl":Ljavax/microedition/khronos/opengles/GL11;
    .end local v1    # "matrix":[F
    :cond_0
    move v2, v3

    .line 109
    goto :goto_0
.end method

.method public translate(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 234
    return-void
.end method

.method public unloadTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;)Z
    .locals 3
    .param p1, "t"    # Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;

    .prologue
    .line 814
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mUnboundTextures:Lcom/sonymobile/china/photoeditor/crop/util/IntArray;

    monitor-enter v1

    .line 815
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->isLoaded(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    const/4 v0, 0x0

    monitor-exit v1

    .line 818
    :goto_0
    return v0

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mUnboundTextures:Lcom/sonymobile/china/photoeditor/crop/util/IntArray;

    iget v2, p1, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mId:I

    invoke-virtual {v0, v2}, Lcom/sonymobile/china/photoeditor/crop/util/IntArray;->add(I)V

    .line 818
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 819
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
