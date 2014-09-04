.class public Lcom/sonymobile/china/photoeditor/crop/ui/ResourceTexture;
.super Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;
.source "ResourceTexture.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/ResourceTexture;->mContext:Landroid/content/Context;

    .line 35
    iput p2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/ResourceTexture;->mResId:I

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/ResourceTexture;->setOpaque(Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic draw(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;II)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 27
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
    .line 27
    invoke-super/range {p0 .. p5}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->draw(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;IIII)V

    return-void
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureHeight()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getTextureHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureWidth()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getTextureWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasBorder()Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->hasBorder()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isContentValid(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z
    .locals 1
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->isContentValid(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLoaded(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z
    .locals 1
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->isLoaded(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpaque()Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->isOpaque()Z

    move-result v0

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/ui/ResourceTexture;->inFinalizer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    :cond_0
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 42
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 43
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/ResourceTexture;->mResId:I

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic recycle()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->recycle()V

    return-void
.end method

.method public bridge synthetic setOpaque(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->setOpaque(Z)V

    return-void
.end method

.method public bridge synthetic updateContent(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->updateContent(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V

    return-void
.end method

.method public bridge synthetic yield()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;->yield()V

    return-void
.end method
