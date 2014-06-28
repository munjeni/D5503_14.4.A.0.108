.class public Lcom/android/mms/ui/SlideshowPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "SlideshowPresenter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideshowPresenter"


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field protected mHeightTransformRatio:F

.field protected mLocation:I

.field protected final mSlideNumber:I

.field private final mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field protected mWidthTransformRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/mms/ui/ViewInterface;
    .param p3, "model"    # Lcom/android/mms/model/Model;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/android/mms/ui/SlideshowPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowPresenter$1;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    .line 72
    instance-of v0, p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_0

    .line 73
    check-cast p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .end local p2    # "view":Lcom/android/mms/ui/ViewInterface;
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    invoke-interface {p2, v0}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V

    .line 76
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowPresenter;II)F
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideshowPresenter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->getWidthTransformRatio(II)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowPresenter;II)F
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideshowPresenter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->getHeightTransformRatio(II)F

    move-result v0

    return v0
.end method

.method private getHeightTransformRatio(II)F
    .locals 2
    .param p1, "height"    # I
    .param p2, "layoutHeight"    # I

    .prologue
    .line 98
    if-lez p1, :cond_0

    .line 99
    int-to-float v1, p2

    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideView;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideView;->getAudioInfoHeight()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000

    goto :goto_0
.end method

.method private getWidthTransformRatio(II)F
    .locals 2
    .param p1, "width"    # I
    .param p2, "layoutWidth"    # I

    .prologue
    .line 91
    if-lez p1, :cond_0

    .line 92
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000

    goto :goto_0
.end method

.method private transformHeight(I)I
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 109
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private transformWidth(I)I
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 105
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getLocation()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    return v0
.end method

.method public goBackward()V
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    if-lez v0, :cond_0

    .line 262
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 264
    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 268
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 270
    :cond_0
    return-void
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 3
    .param p1, "model"    # Lcom/android/mms/model/Model;
    .param p2, "dataChanged"    # Z

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    .line 276
    .local v0, "view":Lcom/android/mms/ui/SlideViewInterface;
    instance-of v1, p1, Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    instance-of v1, p1, Lcom/android/mms/model/SlideModel;

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 279
    check-cast v1, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/SlideshowPresenter$2;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideshowPresenter$3;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 292
    :cond_3
    instance-of v1, p1, Lcom/android/mms/model/MediaModel;

    if-eqz v1, :cond_5

    .line 293
    instance-of v1, p1, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v1, :cond_4

    .line 294
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$4;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$4;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    move-object v1, p1

    .line 299
    check-cast v1, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$5;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$5;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 306
    :cond_5
    instance-of v1, p1, Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public present()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    if-gt v0, v1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    goto :goto_0
.end method

.method protected presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V
    .locals 4
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "audio"    # Lcom/android/mms/model/AudioModel;
    .param p3, "dataChanged"    # Z

    .prologue
    .line 156
    if-eqz p3, :cond_0

    .line 157
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    .line 160
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 161
    .local v0, "action":Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_2

    .line 162
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startAudio()V

    .line 170
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_3

    .line 164
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseAudio()V

    goto :goto_0

    .line 165
    :cond_3
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_4

    .line 166
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopAudio()V

    goto :goto_0

    .line 167
    :cond_4
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_1

    .line 168
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSeekTo()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->seekAudio(I)V

    goto :goto_0
.end method

.method protected presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 6
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "image"    # Lcom/android/mms/model/ImageModel;
    .param p3, "r"    # Lcom/android/mms/model/RegionModel;
    .param p4, "dataChanged"    # Z

    .prologue
    .line 195
    if-eqz p4, :cond_0

    .line 196
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->createThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 199
    :cond_0
    instance-of v1, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 200
    check-cast v1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v2

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v4

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setImageRegion(IIII)V

    .line 206
    :cond_1
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->setImageRegionFit(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isVisible()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->setImageVisibility(Z)V

    .line 208
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 210
    .local v0, "action":Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_3

    .line 211
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startImageAnimation()V

    .line 218
    .end local v0    # "action":Lcom/android/mms/model/MediaModel$MediaAction;
    :cond_2
    :goto_0
    return-void

    .line 212
    .restart local v0    # "action":Lcom/android/mms/model/MediaModel$MediaAction;
    :cond_3
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_4

    .line 213
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseImageAnimation()V

    goto :goto_0

    .line 214
    :cond_4
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_2

    .line 215
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopImageAnimation()V

    goto :goto_0
.end method

.method protected presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V
    .locals 2
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "rMedia"    # Lcom/android/mms/model/RegionMediaModel;
    .param p3, "dataChanged"    # Z

    .prologue
    .line 143
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v0

    .line 144
    .local v0, "r":Lcom/android/mms/model/RegionModel;
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    check-cast p2, Lcom/android/mms/model/TextModel;

    .end local p2    # "rMedia":Lcom/android/mms/model/RegionMediaModel;
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 146
    .restart local p2    # "rMedia":Lcom/android/mms/model/RegionMediaModel;
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    check-cast p2, Lcom/android/mms/model/ImageModel;

    .end local p2    # "rMedia":Lcom/android/mms/model/RegionMediaModel;
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_0

    .line 148
    .restart local p2    # "rMedia":Lcom/android/mms/model/RegionMediaModel;
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    check-cast p2, Lcom/android/mms/model/VideoModel;

    .end local p2    # "rMedia":Lcom/android/mms/model/RegionMediaModel;
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_0
.end method

.method protected presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .locals 4
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "model"    # Lcom/android/mms/model/SlideModel;

    .prologue
    const/4 v3, 0x1

    .line 127
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 129
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 130
    .local v1, "media":Lcom/android/mms/model/MediaModel;
    instance-of v2, v1, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v2, :cond_1

    .line 131
    check-cast v1, Lcom/android/mms/model/RegionMediaModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/mms/ui/SlideshowPresenter;->presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V

    goto :goto_0

    .line 132
    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    check-cast v1, Lcom/android/mms/model/AudioModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/mms/ui/SlideshowPresenter;->presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V

    goto :goto_0

    .line 136
    :cond_2
    return-void
.end method

.method protected presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 5
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "text"    # Lcom/android/mms/model/TextModel;
    .param p3, "r"    # Lcom/android/mms/model/RegionModel;
    .param p4, "dataChanged"    # Z

    .prologue
    .line 174
    if-eqz p4, :cond_0

    .line 175
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/mms/ui/SlideViewInterface;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    instance-of v0, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 179
    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v1

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v2

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setTextRegion(IIII)V

    .line 185
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isVisible()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/mms/ui/SlideViewInterface;->setTextVisibility(Z)V

    .line 186
    return-void
.end method

.method protected presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 6
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "video"    # Lcom/android/mms/model/VideoModel;
    .param p3, "r"    # Lcom/android/mms/model/RegionModel;
    .param p4, "dataChanged"    # Z

    .prologue
    .line 227
    if-eqz p4, :cond_0

    .line 228
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setVideo(Ljava/lang/String;Landroid/net/Uri;)V

    .line 231
    :cond_0
    instance-of v1, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 232
    check-cast v1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v2

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v4

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setVideoRegion(IIII)V

    .line 238
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isVisible()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->setVideoVisibility(Z)V

    .line 240
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 241
    .local v0, "action":Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_3

    .line 242
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startVideo()V

    .line 250
    :cond_2
    :goto_0
    return-void

    .line 243
    :cond_3
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_4

    .line 244
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseVideo()V

    goto :goto_0

    .line 245
    :cond_4
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_5

    .line 246
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopVideo()V

    goto :goto_0

    .line 247
    :cond_5
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_2

    .line 248
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSeekTo()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->seekVideo(I)V

    goto :goto_0
.end method

.method public setLocation(I)V
    .locals 0
    .param p1, "location"    # I

    .prologue
    .line 253
    iput p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 254
    return-void
.end method
