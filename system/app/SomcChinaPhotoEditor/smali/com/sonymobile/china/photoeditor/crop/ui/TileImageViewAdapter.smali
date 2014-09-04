.class public Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;
.super Ljava/lang/Object;
.source "TileImageViewAdapter.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;


# instance fields
.field protected mBackupImage:Landroid/graphics/Bitmap;

.field protected mFailedToLoad:Z

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private final mIntersectRect:Landroid/graphics/Rect;

.field protected mLevelCount:I

.field protected mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private final mRegionRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mIntersectRect:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mRegionRect:Landroid/graphics/Rect;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 1
    .param p1, "backup"    # Landroid/graphics/Bitmap;
    .param p2, "regionDecoder"    # Landroid/graphics/BitmapRegionDecoder;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mIntersectRect:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mRegionRect:Landroid/graphics/Rect;

    .line 52
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mBackupImage:Landroid/graphics/Bitmap;

    .line 53
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 54
    invoke-virtual {p2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mImageWidth:I

    .line 55
    invoke-virtual {p2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mImageHeight:I

    .line 56
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->calculateLevelCount()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mLevelCount:I

    .line 57
    return-void
.end method

.method private calculateLevelCount()I
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x0

    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mImageWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mBackupImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->ceilLog2(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mBackupImage:Landroid/graphics/Bitmap;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mImageWidth:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mImageHeight:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mLevelCount:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mFailedToLoad:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBackupImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mBackupImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mImageWidth:I

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mLevelCount:I

    return v0
.end method

.method public declared-synchronized getTile(IIII)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "level"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v6, :cond_1

    move-object v0, v5

    .line 131
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 94
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mRegionRect:Landroid/graphics/Rect;

    .line 95
    .local v4, "region":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mIntersectRect:Landroid/graphics/Rect;

    .line 96
    .local v2, "intersectRect":Landroid/graphics/Rect;
    shl-int v6, p4, p1

    add-int/2addr v6, p2

    shl-int v7, p4, p1

    add-int/2addr v7, p3

    invoke-virtual {v4, p2, p3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 97
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mImageWidth:I

    iget v9, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mImageHeight:I

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 100
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    invoke-static {v6}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 102
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 103
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 104
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 105
    shl-int v6, v10, p1

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 110
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    :try_start_2
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    :try_start_3
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v6

    if-nez v6, :cond_0

    .line 119
    if-nez v0, :cond_2

    move-object v0, v5

    .line 123
    goto :goto_0

    .line 112
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 91
    .end local v2    # "intersectRect":Landroid/graphics/Rect;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "region":Landroid/graphics/Rect;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 126
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "intersectRect":Landroid/graphics/Rect;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "region":Landroid/graphics/Rect;
    :cond_2
    :try_start_6
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 127
    .local v5, "tile":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 128
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    shr-int/2addr v6, p1

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    shr-int/2addr v7, p1

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 130
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, v5

    .line 131
    goto :goto_0
.end method

.method public isFailedToLoad()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mFailedToLoad:Z

    return v0
.end method

.method public declared-synchronized setBackupImage(Landroid/graphics/Bitmap;II)V
    .locals 1
    .param p1, "backup"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mBackupImage:Landroid/graphics/Bitmap;

    .line 70
    iput p2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mImageWidth:I

    .line 71
    iput p3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mImageHeight:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mLevelCount:I

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mFailedToLoad:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFailedToLoad()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mFailedToLoad:Z

    .line 156
    return-void
.end method

.method public declared-synchronized setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 1
    .param p1, "decoder"    # Landroid/graphics/BitmapRegionDecoder;

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 79
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mImageWidth:I

    .line 80
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mImageHeight:I

    .line 81
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->calculateLevelCount()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mLevelCount:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageViewAdapter;->mFailedToLoad:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
