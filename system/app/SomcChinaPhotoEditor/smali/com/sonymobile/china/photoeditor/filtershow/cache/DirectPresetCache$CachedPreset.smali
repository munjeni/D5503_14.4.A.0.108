.class public Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
.super Ljava/lang/Object;
.source "DirectPresetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CachedPreset"
.end annotation


# instance fields
.field private mAge:J

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBusy:Z

.field private mPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;

    .line 54
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mAge:J

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    .param p1, "x1"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mAge:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    .param p1, "x1"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mAge:J

    return-wide p1
.end method


# virtual methods
.method public busy()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z

    return v0
.end method

.method public setBusy(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z

    .line 62
    return-void
.end method
