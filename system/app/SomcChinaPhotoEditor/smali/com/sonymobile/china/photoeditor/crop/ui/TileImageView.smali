.class public Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;
.super Lcom/sonymobile/china/photoeditor/crop/ui/GLView;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$1;,
        Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;,
        Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;,
        Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;,
        Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileUploader;,
        Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;
    }
.end annotation


# static fields
.field public static final SIZE_UNKNOWN:I = -0x1

.field private static final STATE_ACTIVATED:I = 0x1

.field private static final STATE_DECODED:I = 0x8

.field private static final STATE_DECODE_FAIL:I = 0x10

.field private static final STATE_DECODING:I = 0x4

.field private static final STATE_IN_QUEUE:I = 0x2

.field private static final STATE_RECYCLED:I = 0x40

.field private static final STATE_RECYCLING:I = 0x20

.field private static final TILE_BORDER:I = 0x1

.field private static final TILE_SIZE:I = 0xfe

.field private static final UPLOAD_LIMIT:I = 0x1


# instance fields
.field private final mActiveRange:[Landroid/graphics/Rect;

.field private final mActiveTiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundTileUploaded:Z

.field protected mBackupImage:Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;

.field protected mCenterX:I

.field protected mCenterY:I

.field private mDecodeQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private mIsTextureFreed:Z

.field private mLevel:I

.field protected mLevelCount:I

.field private mModel:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRecycledQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

.field private mRenderComplete:Z

.field protected mRotation:I

.field protected mScale:F

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private mThreadPool:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

.field private mTileDecoder:Lcom/sonymobile/china/photoeditor/crop/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/china/photoeditor/crop/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mTileRange:Landroid/graphics/Rect;

.field private final mTileUploader:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileUploader;

.field private mUploadQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

.field private mUploadQuota:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/GalleryContext;)V
    .locals 4
    .param p1, "context"    # Lcom/sonymobile/china/photoeditor/crop/GalleryContext;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 156
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;-><init>()V

    .line 86
    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevel:I

    .line 98
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    .line 100
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    .line 105
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    invoke-direct {v0, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mRecycledQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    .line 107
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    invoke-direct {v0, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mUploadQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    .line 109
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    invoke-direct {v0, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mDecodeQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    .line 112
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mImageWidth:I

    .line 114
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mImageHeight:I

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    .line 131
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileUploader;

    invoke-direct {v0, p0, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileUploader;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mTileUploader:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileUploader;

    .line 157
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/GalleryContext;->getThreadPool()Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mThreadPool:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

    .line 158
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mThreadPool:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

    new-instance v1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;

    invoke-direct {v1, p0, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$1;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;->submit(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;)Lcom/sonymobile/china/photoeditor/crop/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mTileDecoder:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    .line 159
    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;)Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mUploadQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;)Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mModel:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;III)Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->getTile(III)Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    .prologue
    .line 39
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevel:I

    return v0
.end method

.method static synthetic access$700(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;)Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mDecodeQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    return-object v0
.end method

.method private activateTile(III)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 495
    invoke-static {p1, p2, p3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->makeTileKey(III)Ljava/lang/Long;

    move-result-object v0

    .line 496
    .local v0, "key":Ljava/lang/Long;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    .line 497
    .local v1, "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    if-eqz v1, :cond_1

    .line 498
    iget v2, v1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 499
    const/4 v2, 0x1

    iput v2, v1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->obtainTile(III)Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    move-result-object v1

    .line 504
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static drawTile(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 6
    .param p0, "tile"    # Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "target"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v5, 0x3f800000

    const/high16 v4, 0x437e0000

    const/high16 v3, 0x40000000

    .line 581
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->isContentValid(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    invoke-virtual {p2, v5, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 584
    invoke-interface {p1, p0, p2, p3}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->drawTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 585
    const/4 v1, 0x1

    .line 591
    :goto_1
    return v1

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->getParentTile()Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    move-result-object v0

    .line 590
    .local v0, "parent":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    if-nez v0, :cond_1

    .line 591
    const/4 v1, 0x0

    goto :goto_1

    .line 592
    :cond_1
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mX:I

    iget v2, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mX:I

    if-ne v1, v2, :cond_2

    .line 593
    iget v1, p2, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 594
    iget v1, p2, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 599
    :goto_2
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mY:I

    iget v2, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mY:I

    if-ne v1, v2, :cond_3

    .line 600
    iget v1, p2, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 601
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 606
    :goto_3
    move-object p0, v0

    .line 607
    goto :goto_0

    .line 596
    :cond_2
    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 597
    iget v1, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 603
    :cond_3
    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 604
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_3
.end method

.method private getRange(Landroid/graphics/Rect;IIIFI)V
    .locals 25
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "cX"    # I
    .param p3, "cY"    # I
    .param p4, "level"    # I
    .param p5, "scale"    # F
    .param p6, "rotation"    # I

    .prologue
    .line 309
    move/from16 v0, p6

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 310
    .local v9, "radians":D
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 311
    .local v16, "w":D
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-double v5, v0

    .line 313
    .local v5, "h":D
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 314
    .local v3, "cos":D
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 315
    .local v12, "sin":D
    mul-double v19, v3, v16

    mul-double v21, v12, v5

    sub-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    mul-double v21, v3, v16

    mul-double v23, v12, v5

    add-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(DD)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v18, v0

    .line 317
    .local v18, "width":I
    mul-double v19, v12, v16

    mul-double v21, v3, v5

    add-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    mul-double v21, v12, v16

    mul-double v23, v3, v5

    sub-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(DD)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v7, v0

    .line 320
    .local v7, "height":I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000

    mul-float v21, v21, p5

    div-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->floor(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v8, v0

    .line 321
    .local v8, "left":I
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    const/high16 v21, 0x40000000

    mul-float v21, v21, p5

    div-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->floor(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v15, v0

    .line 322
    .local v15, "top":I
    int-to-float v0, v8

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v11, v0

    .line 323
    .local v11, "right":I
    int-to-float v0, v15

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v2, v0

    .line 326
    .local v2, "bottom":I
    const/16 v19, 0xfe

    shl-int v14, v19, p4

    .line 327
    .local v14, "size":I
    const/16 v19, 0x0

    div-int v20, v8, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 328
    const/16 v19, 0x0

    div-int v20, v15, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 329
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mImageWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mImageHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 332
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v15, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 333
    return-void
.end method

.method private getRange(Landroid/graphics/Rect;IIII)V
    .locals 7
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "cX"    # I
    .param p3, "cY"    # I
    .param p4, "level"    # I
    .param p5, "rotation"    # I

    .prologue
    .line 298
    const/high16 v0, 0x3f800000

    const/4 v1, 0x1

    add-int/lit8 v2, p4, 0x1

    shl-int/2addr v1, v2

    int-to-float v1, v1

    div-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 299
    return-void
.end method

.method private getTile(III)Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 508
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-static {p1, p2, p3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->makeTileKey(III)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    return-object v0
.end method

.method private layoutTiles(IIFI)V
    .locals 24
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "scale"    # F
    .param p4, "rotation"    # I

    .prologue
    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->getWidth()I

    move-result v21

    .line 218
    .local v21, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->getHeight()I

    move-result v14

    .line 226
    .local v14, "height":I
    const/high16 v3, 0x3f800000

    div-float v3, v3, p3

    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->floorLog2(F)I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevelCount:I

    invoke-static {v3, v5, v6}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->clamp(III)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevel:I

    .line 231
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevel:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevelCount:I

    if-eq v3, v5, :cond_1

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    .line 233
    .local v4, "range":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevel:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 234
    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v5, 0x40000000

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int v5, v5, p1

    int-to-float v5, v5

    mul-float v5, v5, p3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mOffsetX:I

    .line 235
    int-to-float v3, v14

    const/high16 v5, 0x40000000

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int v5, v5, p2

    int-to-float v5, v5

    mul-float v5, v5, p3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mOffsetY:I

    .line 236
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevel:I

    shl-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v3, v3, p3

    const/high16 v5, 0x3f400000

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevel:I

    add-int/lit8 v13, v3, -0x1

    .line 244
    .end local v4    # "range":Landroid/graphics/Rect;
    .local v13, "fromLevel":I
    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevelCount:I

    add-int/lit8 v5, v5, -0x2

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 245
    add-int/lit8 v3, v13, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevelCount:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 247
    .local v12, "endLevel":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    .line 248
    .local v4, "range":[Landroid/graphics/Rect;
    move v9, v13

    .local v9, "i":I
    :goto_1
    if-ge v9, v12, :cond_2

    .line 249
    sub-int v3, v9, v13

    aget-object v6, v4, v3

    move-object/from16 v5, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIII)V

    .line 248
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 236
    .end local v9    # "i":I
    .end local v12    # "endLevel":I
    .end local v13    # "fromLevel":I
    .local v4, "range":Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevel:I

    goto :goto_0

    .line 239
    .end local v4    # "range":Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevel:I

    add-int/lit8 v13, v3, -0x2

    .line 240
    .restart local v13    # "fromLevel":I
    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v5, 0x40000000

    div-float/2addr v3, v5

    move/from16 v0, p1

    int-to-float v5, v0

    mul-float v5, v5, p3

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mOffsetX:I

    .line 241
    int-to-float v3, v14

    const/high16 v5, 0x40000000

    div-float/2addr v3, v5

    move/from16 v0, p2

    int-to-float v5, v0

    mul-float v5, v5, p3

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mOffsetY:I

    goto :goto_0

    .line 253
    .local v4, "range":[Landroid/graphics/Rect;
    .restart local v9    # "i":I
    .restart local v12    # "endLevel":I
    :cond_2
    rem-int/lit8 v3, p4, 0x5a

    if-eqz v3, :cond_3

    .line 285
    :goto_2
    return-void

    .line 256
    :cond_3
    monitor-enter p0

    .line 257
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mDecodeQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->clean()V

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mUploadQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->clean()V

    .line 259
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mBackgroundTileUploaded:Z

    .line 260
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 265
    .local v15, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;>;>;"
    :cond_4
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 266
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    .line 267
    .local v20, "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileLevel:I

    move/from16 v16, v0

    .line 268
    .local v16, "level":I
    move/from16 v0, v16

    if-lt v0, v13, :cond_5

    move/from16 v0, v16

    if-ge v0, v12, :cond_5

    sub-int v3, v16, v13

    aget-object v3, v4, v3

    move-object/from16 v0, v20

    iget v5, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mX:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mY:I

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 270
    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->recycleTile(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;)V

    goto :goto_3

    .line 260
    .end local v15    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;>;>;"
    .end local v16    # "level":I
    .end local v20    # "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 275
    .restart local v15    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;>;>;"
    :cond_6
    move v9, v13

    :goto_4
    if-ge v9, v12, :cond_9

    .line 276
    const/16 v3, 0xfe

    shl-int v19, v3, v9

    .line 277
    .local v19, "size":I
    sub-int v3, v9, v13

    aget-object v17, v4, v3

    .line 278
    .local v17, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .local v23, "y":I
    move-object/from16 v0, v17

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .local v11, "bottom":I
    :goto_5
    move/from16 v0, v23

    if-ge v0, v11, :cond_8

    .line 279
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .local v22, "x":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    .local v18, "right":I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 280
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v9}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->activateTile(III)V

    .line 279
    add-int v22, v22, v19

    goto :goto_6

    .line 278
    :cond_7
    add-int v23, v23, v19

    goto :goto_5

    .line 275
    .end local v18    # "right":I
    .end local v22    # "x":I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 284
    .end local v11    # "bottom":I
    .end local v17    # "r":Landroid/graphics/Rect;
    .end local v19    # "size":I
    .end local v23    # "y":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->invalidate()V

    goto/16 :goto_2
.end method

.method private static makeTileKey(III)Ljava/lang/Long;
    .locals 7
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "level"    # I

    .prologue
    const/16 v6, 0x10

    .line 512
    int-to-long v0, p0

    .line 513
    .local v0, "result":J
    shl-long v2, v0, v6

    int-to-long v4, p1

    or-long v0, v2, v4

    .line 514
    shl-long v2, v0, v6

    int-to-long v4, p2

    or-long v0, v2, v4

    .line 515
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method private declared-synchronized obtainTile(III)Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mRecycledQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->pop()Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    move-result-object v0

    .line 476
    .local v0, "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    if-eqz v0, :cond_0

    .line 477
    const/4 v1, 0x1

    iput v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I

    .line 478
    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->update(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    .end local v0    # "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    .end local v0    # "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 475
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateBackupTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "backup"    # Landroid/graphics/Bitmap;

    .prologue
    .line 168
    if-nez p1, :cond_2

    .line 169
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mBackupImage:Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mBackupImage:Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;->recycle()V

    .line 171
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mBackupImage:Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mBackupImage:Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mBackupImage:Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mBackupImage:Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;->recycle()V

    .line 176
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mBackupImage:Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;

    goto :goto_0

    .line 179
    :cond_3
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mBackupImage:Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;

    goto :goto_0
.end method

.method private uploadBackgroundTiles(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V
    .locals 3
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    .line 431
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mBackgroundTileUploaded:Z

    .line 432
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    .line 433
    .local v1, "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    invoke-virtual {v1, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->isContentValid(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 434
    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->queueForDecode(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;)V

    goto :goto_0

    .line 436
    .end local v1    # "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    :cond_1
    return-void
.end method


# virtual methods
.method decodeTile(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;)Z
    .locals 4
    .param p1, "tile"    # Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    .prologue
    const/4 v1, 0x0

    .line 456
    monitor-enter p0

    .line 457
    :try_start_0
    iget v2, p1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 458
    monitor-exit p0

    move v0, v1

    .line 470
    :goto_0
    return v0

    .line 459
    :cond_0
    const/4 v2, 0x4

    iput v2, p1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I

    .line 460
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->decode()Z

    move-result v0

    .line 462
    .local v0, "decodeComplete":Z
    monitor-enter p0

    .line 463
    :try_start_1
    iget v2, p1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 464
    const/16 v2, 0x40

    iput v2, p1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I

    .line 465
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 466
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mRecycledQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    invoke-virtual {v2, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->push(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;)Z

    .line 467
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v1

    goto :goto_0

    .line 460
    .end local v0    # "decodeComplete":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 469
    .restart local v0    # "decodeComplete":Z
    :cond_1
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    :goto_1
    :try_start_3
    iput v1, p1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I

    .line 470
    monitor-exit p0

    goto :goto_0

    .line 471
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 469
    :cond_2
    const/16 v1, 0x10

    goto :goto_1
.end method

.method public drawTile(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;IIIFFF)V
    .locals 13
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;
    .param p2, "tx"    # I
    .param p3, "ty"    # I
    .param p4, "level"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "length"    # F

    .prologue
    .line 545
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    .line 546
    .local v6, "source":Landroid/graphics/RectF;
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    .line 547
    .local v7, "target":Landroid/graphics/RectF;
    add-float v9, p5, p7

    add-float v10, p6, p7

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v7, v0, v1, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 548
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x437e0000

    const/high16 v12, 0x437e0000

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 550
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, p2, v0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->getTile(III)Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    move-result-object v8

    .line 551
    .local v8, "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    if-eqz v8, :cond_4

    .line 552
    invoke-virtual {v8, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->isContentValid(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 553
    iget v9, v8, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_3

    .line 554
    iget v9, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mUploadQuota:I

    if-lez v9, :cond_2

    .line 555
    iget v9, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mUploadQuota:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mUploadQuota:I

    .line 556
    invoke-virtual {v8, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->updateContent(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V

    .line 565
    :cond_0
    :goto_0
    invoke-static {v8, p1, v6, v7}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->drawTile(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 576
    :cond_1
    :goto_1
    return-void

    .line 558
    :cond_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mRenderComplete:Z

    goto :goto_0

    .line 560
    :cond_3
    iget v9, v8, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I

    const/16 v10, 0x10

    if-eq v9, v10, :cond_0

    .line 561
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mRenderComplete:Z

    .line 562
    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->queueForDecode(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;)V

    goto :goto_0

    .line 568
    :cond_4
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mBackupImage:Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;

    if-eqz v9, :cond_1

    .line 569
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mBackupImage:Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;

    .line 570
    .local v2, "backup":Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
    const/16 v9, 0xfe

    shl-int v5, v9, p4

    .line 571
    .local v5, "size":I
    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mImageWidth:I

    int-to-float v10, v10

    div-float v3, v9, v10

    .line 572
    .local v3, "scaleX":F
    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mImageHeight:I

    int-to-float v10, v10

    div-float v4, v9, v10

    .line 573
    .local v4, "scaleY":F
    int-to-float v9, p2

    mul-float/2addr v9, v3

    move/from16 v0, p3

    int-to-float v10, v0

    mul-float/2addr v10, v4

    add-int v11, p2, v5

    int-to-float v11, v11

    mul-float/2addr v11, v3

    add-int v12, p3, v5

    int-to-float v12, v12

    mul-float/2addr v12, v4

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 574
    invoke-interface {p1, v2, v6, v7}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->drawTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method public freeTextures()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 348
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mIsTextureFreed:Z

    .line 350
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mTileDecoder:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    if-eqz v3, :cond_0

    .line 351
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mTileDecoder:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    invoke-interface {v3}, Lcom/sonymobile/china/photoeditor/crop/util/Future;->cancel()V

    .line 352
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mTileDecoder:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    invoke-interface {v3}, Lcom/sonymobile/china/photoeditor/crop/util/Future;->get()Ljava/lang/Object;

    .line 353
    iput-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mTileDecoder:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    .line 356
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    .line 357
    .local v1, "texture":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->recycle()V

    goto :goto_0

    .line 359
    .end local v1    # "texture":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 360
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 362
    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mUploadQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->clean()V

    .line 364
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mDecodeQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->clean()V

    .line 365
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mRecycledQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->pop()Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    move-result-object v2

    .line 366
    .local v2, "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    :goto_1
    if-eqz v2, :cond_2

    .line 367
    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->recycle()V

    .line 368
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mRecycledQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->pop()Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    move-result-object v2

    goto :goto_1

    .line 370
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    invoke-direct {p0, v5}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->updateBackupTexture(Landroid/graphics/Bitmap;)V

    .line 372
    return-void

    .line 370
    .end local v2    # "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected declared-synchronized invalidateTiles()V
    .locals 3

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mDecodeQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->clean()V

    .line 289
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mUploadQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->clean()V

    .line 291
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    .line 292
    .local v1, "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->recycleTile(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 288
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 294
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    monitor-exit p0

    return-void
.end method

.method public notifyModelInvalidated()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->invalidateTiles()V

    .line 186
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mModel:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mBackupImage:Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;

    .line 188
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mImageWidth:I

    .line 189
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mImageHeight:I

    .line 190
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevelCount:I

    .line 197
    :goto_0
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mCenterX:I

    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mCenterY:I

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mScale:F

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->layoutTiles(IIFI)V

    .line 198
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->invalidate()V

    .line 199
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mModel:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;->getBackupImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->updateBackupTexture(Landroid/graphics/Bitmap;)V

    .line 193
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mModel:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mImageWidth:I

    .line 194
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mModel:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mImageHeight:I

    .line 195
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mModel:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;->getLevelCount()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevelCount:I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changeSize"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 203
    invoke-super/range {p0 .. p5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->onLayout(ZIIII)V

    .line 204
    if-eqz p1, :cond_0

    .line 205
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mCenterX:I

    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mCenterY:I

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mScale:F

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->layoutTiles(IIFI)V

    .line 206
    :cond_0
    return-void
.end method

.method public prepareTextures()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 375
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mTileDecoder:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    if-nez v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mThreadPool:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

    new-instance v2, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$1;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;->submit(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;)Lcom/sonymobile/china/photoeditor/crop/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mTileDecoder:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    .line 378
    :cond_0
    iget-boolean v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mIsTextureFreed:Z

    if-eqz v1, :cond_2

    .line 379
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mCenterX:I

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mCenterY:I

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mScale:F

    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->layoutTiles(IIFI)V

    .line 380
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mIsTextureFreed:Z

    .line 381
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mModel:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mModel:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;->getBackupImage()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->updateBackupTexture(Landroid/graphics/Bitmap;)V

    .line 383
    :cond_2
    return-void
.end method

.method declared-synchronized queueForDecode(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;)V
    .locals 2
    .param p1, "tile"    # Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    .prologue
    .line 448
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 449
    const/4 v0, 0x2

    iput v0, p1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I

    .line 450
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mDecodeQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->push(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :cond_0
    monitor-exit p0

    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method queueForUpload(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;)V
    .locals 3
    .param p1, "tile"    # Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    .prologue
    .line 439
    monitor-enter p0

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mUploadQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->push(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;)Z

    .line 441
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mTileUploader:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileUploader;

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->getGLRoot()Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mTileUploader:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileUploader;

    invoke-interface {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;->addOnGLIdleListener(Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot$OnGLIdleListener;)V

    .line 445
    :cond_0
    return-void

    .line 441
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized recycleTile(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;)V
    .locals 2
    .param p1, "tile"    # Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 486
    const/16 v0, 0x20

    iput v0, p1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :goto_0
    monitor-exit p0

    return-void

    .line 489
    :cond_0
    const/16 v0, 0x40

    :try_start_1
    iput v0, p1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I

    .line 490
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 491
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mRecycledQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->push(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected render(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V
    .locals 22
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    .line 387
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mUploadQuota:I

    .line 388
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mRenderComplete:Z

    .line 390
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevel:I

    .line 391
    .local v5, "level":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mRotation:I

    move/from16 v20, v0

    .line 393
    .local v20, "rotation":I
    if-eqz v20, :cond_0

    .line 394
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->save(I)I

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->getWidth()I

    move-result v1

    div-int/lit8 v15, v1, 0x2

    .local v15, "centerX":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->getHeight()I

    move-result v1

    div-int/lit8 v16, v1, 0x2

    .line 396
    .local v16, "centerY":I
    int-to-float v1, v15

    move/from16 v0, v16

    int-to-float v2, v0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v9}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->translate(FFF)V

    .line 397
    move/from16 v0, v20

    int-to-float v1, v0

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v9, v10}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->rotate(FFFF)V

    .line 398
    neg-int v1, v15

    int-to-float v1, v1

    move/from16 v0, v16

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v9}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->translate(FFF)V

    .line 401
    .end local v15    # "centerX":I
    .end local v16    # "centerY":I
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevelCount:I

    if-eq v5, v1, :cond_2

    .line 402
    const/16 v1, 0xfe

    shl-int v21, v1, v5

    .line 403
    .local v21, "size":I
    move/from16 v0, v21

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mScale:F

    mul-float v8, v1, v2

    .line 404
    .local v8, "length":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 406
    .local v19, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->top:I

    .local v4, "ty":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move-object/from16 v0, v19

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v1, :cond_3

    .line 407
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mOffsetY:I

    int-to-float v1, v1

    move/from16 v0, v17

    int-to-float v2, v0

    mul-float/2addr v2, v8

    add-float v7, v1, v2

    .line 408
    .local v7, "y":F
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .local v3, "tx":I
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_1
    move-object/from16 v0, v19

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ge v3, v1, :cond_1

    .line 409
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mOffsetX:I

    int-to-float v1, v1

    move/from16 v0, v18

    int-to-float v2, v0

    mul-float/2addr v2, v8

    add-float v6, v1, v2

    .local v6, "x":F
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 410
    invoke-virtual/range {v1 .. v8}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->drawTile(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;IIIFFF)V

    .line 408
    add-int v3, v3, v21

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 406
    .end local v6    # "x":F
    :cond_1
    add-int v4, v4, v21

    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 413
    .end local v3    # "tx":I
    .end local v4    # "ty":I
    .end local v7    # "y":F
    .end local v8    # "length":F
    .end local v17    # "i":I
    .end local v18    # "j":I
    .end local v19    # "r":Landroid/graphics/Rect;
    .end local v21    # "size":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mBackupImage:Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;

    if-eqz v1, :cond_3

    .line 414
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mBackupImage:Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mOffsetX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mOffsetY:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mImageWidth:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mScale:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mImageHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mScale:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v14

    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;->draw(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    :cond_3
    if-eqz v20, :cond_4

    .line 419
    invoke-interface/range {p1 .. p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->restore()V

    .line 422
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mRenderComplete:Z

    if-eqz v1, :cond_7

    .line 423
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mBackgroundTileUploaded:Z

    if-nez v1, :cond_5

    .line 424
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->uploadBackgroundTiles(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V

    .line 428
    :cond_5
    :goto_2
    return-void

    .line 418
    :catchall_0
    move-exception v1

    if-eqz v20, :cond_6

    .line 419
    invoke-interface/range {p1 .. p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->restore()V

    :cond_6
    throw v1

    .line 426
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->invalidate()V

    goto :goto_2
.end method

.method public setModel(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;)V
    .locals 0
    .param p1, "model"    # Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mModel:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;

    .line 163
    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->notifyModelInvalidated()V

    .line 165
    :cond_0
    return-void
.end method

.method public setPosition(IIFI)Z
    .locals 1
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "scale"    # F
    .param p4, "rotation"    # I

    .prologue
    .line 336
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mCenterX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mCenterY:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mScale:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 344
    :goto_0
    return v0

    .line 338
    :cond_0
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mCenterX:I

    .line 339
    iput p2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mCenterY:I

    .line 340
    iput p3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mScale:F

    .line 341
    iput p4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mRotation:I

    .line 342
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->layoutTiles(IIFI)V

    .line 343
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->invalidate()V

    .line 344
    const/4 v0, 0x1

    goto :goto_0
.end method
