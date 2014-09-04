.class public Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;
.super Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;
.source "BitmapTexture.java"


# instance fields
.field protected mContentBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "hasBorder"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p2}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;-><init>(Z)V

    .line 37
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 38
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    .line 39
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic draw(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;II)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->draw(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;II)V

    return-void
.end method

.method public bridge synthetic draw(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;IIII)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 28
    invoke-super/range {p0 .. p5}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->draw(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;IIII)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureHeight()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getTextureHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureWidth()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getTextureWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasBorder()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->hasBorder()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isContentValid(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z
    .locals 1
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->isContentValid(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLoaded(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z
    .locals 1
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->isLoaded(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpaque()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->isOpaque()Z

    move-result v0

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic recycle()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->recycle()V

    return-void
.end method

.method public bridge synthetic setOpaque(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->setOpaque(Z)V

    return-void
.end method

.method public bridge synthetic updateContent(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->updateContent(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V

    return-void
.end method

.method public bridge synthetic yield()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->yield()V

    return-void
.end method
