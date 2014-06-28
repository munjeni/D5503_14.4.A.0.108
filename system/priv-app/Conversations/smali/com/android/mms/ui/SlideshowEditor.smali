.class public Lcom/android/mms/ui/SlideshowEditor;
.super Ljava/lang/Object;
.source "SlideshowEditor.java"


# static fields
.field public static final MAX_SLIDE_NUM:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Mms:slideshow"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mModel:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    .line 58
    return-void
.end method


# virtual methods
.method public addNewSlide(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 68
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 69
    .local v0, "size":I
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 70
    new-instance v1, Lcom/android/mms/model/SlideModel;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v1, v3}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 72
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    new-instance v2, Lcom/android/mms/model/TextModel;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    const-string v4, "text/plain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "text_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 75
    .local v2, "text":Lcom/android/mms/model/TextModel;
    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 77
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, p1, v1}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 78
    const/4 v3, 0x1

    .line 81
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v2    # "text":Lcom/android/mms/model/TextModel;
    :goto_0
    return v3

    .line 80
    :cond_0
    const-string v3, "Mms:slideshow"

    const-string v4, "The limitation of the number of slides is reached."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public changeAudio(ILandroid/net/Uri;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "newAudio"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/android/mms/model/AudioModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 142
    .local v0, "audio":Lcom/android/mms/model/AudioModel;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 143
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 144
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 145
    return-void
.end method

.method public changeDuration(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "dur"    # I

    .prologue
    .line 156
    if-ltz p2, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public changeImage(ILandroid/net/Uri;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "newImage"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    new-instance v1, Lcom/android/mms/model/ImageModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 138
    return-void
.end method

.method public changeLayout(I)V
    .locals 1
    .param p1, "layout"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    .line 163
    return-void
.end method

.method public changeText(ILjava/lang/String;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "newText"    # Ljava/lang/String;

    .prologue
    .line 116
    if-eqz p2, :cond_1

    .line 117
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 118
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    .line 119
    .local v1, "text":Lcom/android/mms/model/TextModel;
    if-nez v1, :cond_2

    .line 120
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v2

    .line 121
    .local v2, "textRegion":Lcom/android/mms/model/RegionModel;
    invoke-virtual {v2}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v3

    if-nez v3, :cond_0

    .line 122
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getTextHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/model/RegionModel;->setHeight(I)V

    .line 125
    :cond_0
    new-instance v1, Lcom/android/mms/model/TextModel;

    .end local v1    # "text":Lcom/android/mms/model/TextModel;
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    const-string v4, "text/plain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "text_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 127
    .restart local v1    # "text":Lcom/android/mms/model/TextModel;
    invoke-virtual {v1, p2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 133
    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v1    # "text":Lcom/android/mms/model/TextModel;
    .end local v2    # "textRegion":Lcom/android/mms/model/RegionModel;
    :cond_1
    :goto_0
    return-void

    .line 129
    .restart local v0    # "slide":Lcom/android/mms/model/SlideModel;
    .restart local v1    # "text":Lcom/android/mms/model/TextModel;
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    invoke-virtual {v1, p2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public changeVideo(ILandroid/net/Uri;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "newVideo"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v1, Lcom/android/mms/model/VideoModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 150
    .local v1, "video":Lcom/android/mms/model/VideoModel;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 151
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 152
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 153
    return-void
.end method

.method public removeAllSlides()V
    .locals 1

    .prologue
    .line 98
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method public removeAudio(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    move-result v0

    return v0
.end method

.method public removeImage(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    move-result v0

    return v0
.end method

.method public removeSlide(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 92
    return-void
.end method

.method public removeVideo(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    move-result v0

    return v0
.end method
