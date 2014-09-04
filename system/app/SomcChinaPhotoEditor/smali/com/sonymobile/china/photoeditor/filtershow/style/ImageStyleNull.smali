.class public Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleNull;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageStyleNull.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 15
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleNull;->setFilterType(B)V

    .line 16
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    .line 33
    return-object p1
.end method

.method public clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleNull;

    .line 22
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleNull;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleNull;->clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public isNil()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method
