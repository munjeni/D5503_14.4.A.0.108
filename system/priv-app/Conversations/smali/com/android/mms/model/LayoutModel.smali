.class public Lcom/android/mms/model/LayoutModel;
.super Lcom/android/mms/model/Model;
.source "LayoutModel.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_LAYOUT_TYPE:I = 0x0

.field public static final IMAGE_REGION_ID:Ljava/lang/String; = "Image"

.field public static final LAYOUT_BOTTOM_TEXT:I = 0x0

.field public static final LAYOUT_TOP_TEXT:I = 0x1

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "LayoutModel"

.field public static final TEXT_REGION_ID:Ljava/lang/String; = "Text"


# instance fields
.field private mImageRegion:Lcom/android/mms/model/RegionModel;

.field private mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

.field private mLayoutType:I

.field private mNonStdRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;"
        }
    .end annotation
.end field

.field private mRootLayout:Lcom/android/mms/model/RegionModel;

.field private mTextRegion:Lcom/android/mms/model/RegionModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 48
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 50
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultRootLayout()V

    .line 51
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultImageRegion()V

    .line 52
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultTextRegion()V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "rootLayout"    # Lcom/android/mms/model/RegionModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/RegionModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "regions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 83
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 84
    iput-object p1, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    .line 87
    invoke-direct {p0, p2}, Lcom/android/mms/model/LayoutModel;->setRegions(Ljava/util/ArrayList;)V

    .line 88
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->validateLayouts()V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "layouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    const/4 v5, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 40
    iput v5, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 56
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 58
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/RegionModel;

    iput-object v4, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    .line 59
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 62
    .local v3, "size":I
    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 63
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 64
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/RegionModel;

    .line 65
    .local v1, "r":Lcom/android/mms/model/RegionModel;
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "rId":Ljava/lang/String;
    const-string v4, "Image"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    iput-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    .line 63
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    const-string v4, "Text"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    iput-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    goto :goto_1

    .line 74
    :cond_1
    iget-object v4, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/android/mms/model/RegionModel;
    .end local v2    # "rId":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->validateLayouts()V

    .line 80
    return-void
.end method

.method private adjustRootLayout(Lcom/android/mms/model/RegionModel;)V
    .locals 5
    .param p1, "r"    # Lcom/android/mms/model/RegionModel;

    .prologue
    .line 272
    invoke-virtual {p1}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v1

    .line 273
    .local v1, "regiontop":I
    invoke-virtual {p1}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v0

    .line 274
    .local v0, "regionHeight":I
    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v2

    .line 275
    .local v2, "rootHeight":I
    add-int v3, v1, v0

    if-ge v2, v3, :cond_0

    .line 276
    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    add-int v4, v1, v0

    invoke-virtual {v3, v4}, Lcom/android/mms/model/RegionModel;->setHeight(I)V

    .line 278
    :cond_0
    return-void
.end method

.method private createDefaultImageRegion()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root-Layout uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_1

    .line 102
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const-string v1, "Image"

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v3

    iget-object v5, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v5}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    sub-int v5, v3, v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const-string v1, "Image"

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getImageHeight()I

    move-result v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    goto :goto_0
.end method

.method private createDefaultRootLayout()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v4

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    .line 94
    return-void
.end method

.method private createDefaultTextRegion()V
    .locals 7

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root-Layout uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const-string v1, "Text"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v4}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v5}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v6}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    .line 117
    return-void
.end method

.method private setRegions(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "regions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/RegionModel;

    .line 173
    .local v1, "r":Lcom/android/mms/model/RegionModel;
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "rId":Ljava/lang/String;
    const-string v3, "Image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    iput-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    goto :goto_0

    .line 176
    :cond_0
    const-string v3, "Text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    iput-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    goto :goto_0

    .line 182
    :cond_1
    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v1    # "r":Lcom/android/mms/model/RegionModel;
    .end local v2    # "rId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private validateLayouts()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultRootLayout()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultImageRegion()V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultTextRegion()V

    .line 131
    :cond_2
    return-void
.end method


# virtual methods
.method public changeRegionsTo(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "regions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-direct {p0, p1}, Lcom/android/mms/model/LayoutModel;->setRegions(Ljava/util/ArrayList;)V

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 194
    return-void
.end method

.method public changeTo(I)V
    .locals 4
    .param p1, "layout"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 228
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root-Layout uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    iget v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    if-eq v0, p1, :cond_1

    .line 233
    packed-switch p1, :pswitch_data_0

    .line 249
    const-string v0, "LayoutModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown layout type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 259
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-direct {p0, v0}, Lcom/android/mms/model/LayoutModel;->adjustRootLayout(Lcom/android/mms/model/RegionModel;)V

    .line 264
    :cond_2
    :goto_1
    return-void

    .line 235
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, v2}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    .line 236
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getImageHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    .line 237
    iput p1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 238
    invoke-virtual {p0, v3}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    goto :goto_0

    .line 242
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getTextHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    .line 243
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, v2}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    .line 244
    iput p1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 245
    invoke-virtual {p0, v3}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    goto :goto_0

    .line 260
    :cond_3
    if-ne p1, v3, :cond_2

    .line 261
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-direct {p0, v0}, Lcom/android/mms/model/LayoutModel;->adjustRootLayout(Lcom/android/mms/model/RegionModel;)V

    goto :goto_1

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;
    .locals 3
    .param p1, "rId"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string v2, "Image"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    .line 211
    :goto_0
    return-object v1

    .line 199
    :cond_0
    const-string v2, "Text"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    goto :goto_0

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/RegionModel;

    .line 203
    .local v1, "r":Lcom/android/mms/model/RegionModel;
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 211
    .end local v1    # "r":Lcom/android/mms/model/RegionModel;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageRegion()Lcom/android/mms/model/RegionModel;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    return-object v0
.end method

.method public getLayoutHeight()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLayoutType()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    return v0
.end method

.method public getLayoutWidth()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v0

    return v0
.end method

.method public getRegions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, "regions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_1
    return-object v0
.end method

.method public getRootLayout()Lcom/android/mms/model/RegionModel;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    return-object v0
.end method

.method public getTextRegion()Lcom/android/mms/model/RegionModel;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    return-object v0
.end method

.method public hasNonStdRegions()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/mms/model/IModelChangedObserver;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 298
    :cond_2
    return-void
.end method

.method public setImageRegion(Lcom/android/mms/model/RegionModel;)V
    .locals 0
    .param p1, "imageRegion"    # Lcom/android/mms/model/RegionModel;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    .line 147
    return-void
.end method

.method public setRootLayout(Lcom/android/mms/model/RegionModel;)V
    .locals 0
    .param p1, "rootLayout"    # Lcom/android/mms/model/RegionModel;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    .line 139
    return-void
.end method

.method public setTextRegion(Lcom/android/mms/model/RegionModel;)V
    .locals 0
    .param p1, "textRegion"    # Lcom/android/mms/model/RegionModel;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    .line 155
    return-void
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 329
    :cond_2
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/mms/model/IModelChangedObserver;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 314
    :cond_2
    return-void
.end method
