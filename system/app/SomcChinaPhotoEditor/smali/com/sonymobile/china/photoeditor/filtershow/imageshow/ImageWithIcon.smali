.class public Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageWithIcon;
.super Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;
.source "ImageWithIcon.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final mDestination:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageWithIcon;->mDestination:Landroid/graphics/Rect;

    .line 42
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageWithIcon;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageWithIcon;->mDestination:Landroid/graphics/Rect;

    const/4 v1, 0x0

    sget v2, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageWithIcon;->mMargin:I

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageWithIcon;->getWidth()I

    move-result v3

    sget v4, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageWithIcon;->mMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageWithIcon;->getWidth()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 57
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageWithIcon;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageWithIcon;->mDestination:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageWithIcon;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 59
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageWithIcon;->bitmap:Landroid/graphics/Bitmap;

    .line 50
    return-void
.end method
