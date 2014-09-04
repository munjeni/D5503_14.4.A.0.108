.class public Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;
.super Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;
.source "ImageText.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextFilterDataChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getDisplayedImageBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public onTextFilterDataChanged(Ljava/util/Vector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "items":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;>;"
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    .line 32
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    instance-of v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;

    if-eqz v1, :cond_0

    .line 33
    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;

    .end local v0    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->setTextItem(Ljava/util/Vector;)V

    .line 35
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;->onVisibilityChanged(Landroid/view/View;I)V

    .line 47
    const/16 v1, 0x8

    if-ne p2, v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    .line 49
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    instance-of v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;

    if-eqz v1, :cond_0

    .line 50
    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;

    .end local v0    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->setVisibility(Z)V

    .line 53
    :cond_0
    return-void
.end method

.method public setFilterVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    .line 57
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    instance-of v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;

    if-eqz v1, :cond_0

    .line 58
    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;

    .end local v0    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->setVisibility(Z)V

    .line 60
    :cond_0
    return-void
.end method

.method public setTextItems(Ljava/util/Vector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "items":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;>;"
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    .line 39
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    instance-of v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;

    if-eqz v1, :cond_0

    .line 40
    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;

    .end local v0    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->setTextItem(Ljava/util/Vector;)V

    .line 42
    :cond_0
    return-void
.end method
