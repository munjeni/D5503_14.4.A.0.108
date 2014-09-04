.class public abstract Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;
.super Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;
.source "FullscreenToolViewContainer.java"


# instance fields
.field protected displayBounds:Landroid/graphics/RectF;

.field private photoBounds:Landroid/graphics/RectF;

.field private final photoMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->displayBounds:Landroid/graphics/RectF;

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->photoMatrix:Landroid/graphics/Matrix;

    .line 42
    return-void
.end method


# virtual methods
.method public getDisplayBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->displayBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPhotoBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->photoBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected getPhotoHeight()F
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    return v0
.end method

.method protected getPhotoWidth()F
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    return v0
.end method

.method protected mapPhotoPoint(FFLandroid/graphics/PointF;)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "dst"    # Landroid/graphics/PointF;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 61
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p3, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [F

    aput p1, v0, v3

    aput p2, v0, v4

    .line 65
    .local v0, "point":[F
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->photoMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 66
    aget v1, v0, v3

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    aget v2, v0, v4

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0
.end method

.method protected mapPhotoRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->photoMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 76
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method public setDisplayBounds(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->displayBounds:Landroid/graphics/RectF;

    .line 93
    return-void
.end method

.method public setPhotoBounds(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "photoBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->photoBounds:Landroid/graphics/RectF;

    .line 50
    return-void
.end method
