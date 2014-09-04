.class public Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;
.super Ljava/lang/Object;
.source "DirectPresetCache.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    }
.end annotation


# instance fields
.field private final mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final mCache:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheSize:I

.field private mGlobalAge:J

.field private mLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

.field private final mNotifyObserversRunnable:Ljava/lang/Runnable;

.field private final mObservers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;I)V
    .locals 3
    .param p1, "loader"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;
    .param p2, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mObservers:Ljava/util/Vector;

    .line 41
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mCache:Ljava/util/Vector;

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mCacheSize:I

    .line 45
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mGlobalAge:J

    .line 49
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    .line 84
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$1;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mNotifyObserversRunnable:Ljava/lang/Runnable;

    .line 70
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    .line 71
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mCacheSize:I

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mObservers:Ljava/util/Vector;

    return-object v0
.end method

.method private getCachedPreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    .locals 3
    .param p1, "preset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .prologue
    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;

    .line 105
    .local v0, "cache":Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$100(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->same(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    .end local v0    # "cache":Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    :goto_1
    return-object v0

    .line 103
    .restart local v0    # "cache":Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "cache":Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getOldestCachedPreset()Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    .locals 7

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "found":Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 133
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;

    .line 134
    .local v0, "cache":Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$200(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_1
    if-nez v1, :cond_2

    .line 138
    move-object v1, v0

    goto :goto_1

    .line 140
    :cond_2
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mAge:J
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$400(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)J

    move-result-wide v3

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mAge:J
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$400(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 141
    move-object v1, v0

    goto :goto_1

    .line 145
    .end local v0    # "cache":Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    :cond_3
    return-object v1
.end method


# virtual methods
.method public addObserver(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V
    .locals 1
    .param p1, "observer"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    return-void
.end method

.method protected compute(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)V
    .locals 5
    .param p1, "cache"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;

    .prologue
    .line 163
    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, v1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$302(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 164
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, v1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$302(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 165
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$300(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 167
    .local v0, "scaleFactor":F
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-static {}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getZoomOrientation()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-static {}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getZoomOrientation()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-static {}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getZoomOrientation()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-static {}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getZoomOrientation()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 171
    :cond_0
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$300(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 174
    :cond_1
    const/high16 v1, 0x3f800000

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 175
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$100(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setIsHighQuality(Z)V

    .line 177
    :cond_2
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$100(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setScaleFactor(F)V

    .line 178
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$100(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v1

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$300(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, v1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$302(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 179
    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mGlobalAge:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mGlobalAge:J

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mAge:J
    invoke-static {p1, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$402(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;J)J

    .line 180
    return-void
.end method

.method protected didCompute(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)V
    .locals 1
    .param p1, "cache"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;

    .prologue
    .line 158
    const/4 v0, 0x0

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z
    invoke-static {p1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$202(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;Z)Z

    .line 159
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->notifyObservers()V

    .line 160
    return-void
.end method

.method public get(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "preset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->getCachedPreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;

    move-result-object v0

    .line 115
    .local v0, "cache":Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    if-eqz v0, :cond_0

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$200(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$300(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 118
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCacheBusy(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Z
    .locals 2
    .param p1, "preset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->getCachedPreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;

    move-result-object v0

    .line 205
    .local v0, "cache":Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    if-nez v0, :cond_0

    .line 206
    const/4 v1, 0x0

    .line 208
    :goto_0
    return v1

    :cond_0
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$200(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)Z

    move-result v1

    goto :goto_0
.end method

.method public notifyObservers()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getImageLoaderCallback()Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mNotifyObserversRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public prepare(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V
    .locals 3
    .param p1, "preset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->getCachedPreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;

    move-result-object v0

    .line 185
    .local v0, "cache":Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    if-eqz v0, :cond_0

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$300(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$200(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 186
    :cond_0
    if-nez v0, :cond_1

    .line 187
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mCacheSize:I

    if-ge v1, v2, :cond_3

    .line 188
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;

    .end local v0    # "cache":Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;-><init>()V

    .line 189
    .restart local v0    # "cache":Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 195
    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    invoke-static {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$102(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 196
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->willCompute(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)V

    .line 200
    :cond_2
    return-void

    .line 191
    :cond_3
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->getOldestCachedPreset()Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;

    move-result-object v0

    goto :goto_0
.end method

.method public reset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V
    .locals 2
    .param p1, "preset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->getCachedPreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;

    move-result-object v0

    .line 124
    .local v0, "cache":Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    if-eqz v0, :cond_0

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$200(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$302(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 126
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->willCompute(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)V

    .line 128
    :cond_0
    return-void
.end method

.method public setOriginalBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 77
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->notifyObservers()V

    .line 78
    return-void
.end method

.method protected willCompute(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)V
    .locals 1
    .param p1, "cache"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x1

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z
    invoke-static {p1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->access$202(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;Z)Z

    .line 153
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->compute(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;->didCompute(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)V

    goto :goto_0
.end method
