.class public Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePresetOld;
.super Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
.source "ImagePresetOld.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;-><init>()V

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "Old"

    return-object v0
.end method

.method public setup()V
    .locals 5

    .prologue
    .line 40
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;-><init>()V

    .line 41
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;
    const/high16 v1, -0x1000000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->addColor(IF)V

    .line 42
    const/16 v1, 0xff

    const/16 v2, 0xe4

    const/16 v3, 0xe7

    const/16 v4, 0xc1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGradient;->addColor(IF)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePresetOld;->addFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)V

    .line 44
    return-void
.end method
