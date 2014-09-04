.class public Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePresetFX;
.super Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
.source "ImagePresetFX.java"


# instance fields
.field mFxBitmap:Landroid/graphics/Bitmap;

.field mFxName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePresetFX;->mFxBitmap:Landroid/graphics/Bitmap;

    .line 43
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePresetFX;->mFxName:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePresetFX;->setup()V

    .line 45
    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePresetFX;->mFxName:Ljava/lang/String;

    return-object v0
.end method

.method public setup()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePresetFX;->mFxBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterFx;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePresetFX;->mFxBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePresetFX;->mFxName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterFx;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePresetFX;->addFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)V

    .line 52
    :cond_0
    return-void
.end method
