.class public Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;
.super Ljava/lang/Object;
.source "ZoomCache.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBounds:Landroid/graphics/Rect;

.field private mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 28
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;->mBitmap:Landroid/graphics/Bitmap;

    .line 30
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getImage(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "preset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 34
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;->mBounds:Landroid/graphics/Rect;

    if-eq v1, p2, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v0

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-virtual {v1, p1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->same(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public reset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V
    .locals 1
    .param p1, "imagePreset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    if-ne p1, v0, :cond_0

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;->mBitmap:Landroid/graphics/Bitmap;

    .line 56
    :cond_0
    return-void
.end method

.method public setImage(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "preset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    iput-object p3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;->mBitmap:Landroid/graphics/Bitmap;

    .line 48
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;->mBounds:Landroid/graphics/Rect;

    .line 49
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ZoomCache;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 50
    return-void
.end method
