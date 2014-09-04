.class public Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;
.super Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
.source "ImageSlave.java"


# instance fields
.field private mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 39
    return-void
.end method


# virtual methods
.method public getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayedImageBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getDisplayedImageBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getFilteredImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHistory()Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getHistory()Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v0

    return-object v0
.end method

.method public getImageRotation()F
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImageRotation()F

    move-result v0

    return v0
.end method

.method public getImageRotationZoomFactor()F
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImageRotationZoomFactor()F

    move-result v0

    return v0
.end method

.method public getMaster()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    return-object v0
.end method

.method public getPanelController()Lcom/sonymobile/china/photoeditor/filtershow/PanelController;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getPanelController()Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-result-object v0

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    return-void
.end method

.method public requestFilteredImages()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->requestFilteredImages()V

    .line 102
    return-void
.end method

.method public resetImageCaches(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V
    .locals 1
    .param p1, "caller"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->resetImageCaches(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V

    .line 57
    return-void
.end method

.method public setCurrentFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setCurrentFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)V

    .line 77
    return-void
.end method

.method public setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Z)V
    .locals 1
    .param p1, "preset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .param p2, "addToHistory"    # Z

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Z)V

    .line 72
    return-void
.end method

.method public setMaster(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V
    .locals 0
    .param p1, "master"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 47
    return-void
.end method

.method public setPanelController(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)V
    .locals 1
    .param p1, "controller"    # Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setPanelController(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)V

    .line 127
    return-void
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public updateImage()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->updateImage()V

    .line 92
    return-void
.end method

.method public updateImagePresets(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->mMasterImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->updateImagePresets(Z)V

    .line 97
    return-void
.end method
