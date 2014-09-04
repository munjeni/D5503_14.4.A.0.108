.class public Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;
.super Ljava/lang/Object;
.source "BitmapTileProvider.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;


# instance fields
.field private final mBackup:Landroid/graphics/Bitmap;

.field private final mConfig:Landroid/graphics/Bitmap$Config;

.field private final mImageHeight:I

.field private final mImageWidth:I

.field private final mMipmaps:[Landroid/graphics/Bitmap;

.field private mRecycled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "maxBackupSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;->mRecycled:Z

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;->mImageWidth:I

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;->mImageHeight:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, p2, :cond_1

    .line 46
    :cond_0
    const/high16 v1, 0x3f000000

    invoke-static {p1, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;->mBackup:Landroid/graphics/Bitmap;

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;->mMipmaps:[Landroid/graphics/Bitmap;

    .line 52
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 53
    return-void
.end method


# virtual methods
.method public getBackupImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;->mBackup:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;->mImageWidth:I

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;->mMipmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getTile(IIII)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "level"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "tileSize"    # I

    .prologue
    .line 72
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 73
    .local v1, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 74
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;->mMipmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, p1

    shr-int v3, p2, p1

    neg-int v3, v3

    int-to-float v3, v3

    shr-int v4, p3, p1

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 75
    return-object v1
.end method

.method public isFailedToLoad()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .locals 5

    .prologue
    .line 79
    iget-boolean v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;->mRecycled:Z

    .line 82
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;->mMipmaps:[Landroid/graphics/Bitmap;

    .local v0, "arr$":[Landroid/graphics/Bitmap;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 83
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->recycleSilently(Landroid/graphics/Bitmap;)V

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTileProvider;->mBackup:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->recycleSilently(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
