.class public Lcom/sonymobile/china/collage/free/model/FreeCollage;
.super Ljava/lang/Object;
.source "FreeCollage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/collage/free/model/FreeCollage$FreeCollageListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INVALID_LAYER:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundLayer:Lcom/sonymobile/china/collage/free/model/BackgroundLayer;

.field private mHeight:I

.field private mInitialColor:I

.field private mIsDirty:Z

.field private mLayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/china/collage/free/model/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/china/collage/free/model/FreeCollage$FreeCollageListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNextIndex:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mListeners:Ljava/util/List;

    .line 71
    iput p1, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mWidth:I

    .line 72
    iput p2, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mHeight:I

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mIsDirty:Z

    .line 74
    return-void
.end method

.method private handleChanged()V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mIsDirty:Z

    .line 411
    invoke-direct {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->updateNextIndex()V

    .line 412
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->notifyChanged()V

    .line 413
    return-void
.end method

.method private hasDirtyLayer()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 395
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mBackgroundLayer:Lcom/sonymobile/china/collage/free/model/BackgroundLayer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mBackgroundLayer:Lcom/sonymobile/china/collage/free/model/BackgroundLayer;

    invoke-virtual {v3}, Lcom/sonymobile/china/collage/free/model/BackgroundLayer;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    :goto_0
    return v2

    .line 398
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/collage/free/model/Layer;

    .line 399
    .local v1, "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    invoke-virtual {v1}, Lcom/sonymobile/china/collage/free/model/Layer;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 403
    .end local v1    # "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateNextIndex()V
    .locals 4

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, "highest":I
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mBackgroundLayer:Lcom/sonymobile/china/collage/free/model/BackgroundLayer;

    if-eqz v3, :cond_0

    .line 421
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mBackgroundLayer:Lcom/sonymobile/china/collage/free/model/BackgroundLayer;

    invoke-virtual {v3}, Lcom/sonymobile/china/collage/free/model/BackgroundLayer;->getId()I

    move-result v0

    .line 423
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/collage/free/model/Layer;

    .line 424
    .local v2, "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    invoke-virtual {v2}, Lcom/sonymobile/china/collage/free/model/Layer;->getId()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 426
    .end local v2    # "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    :cond_1
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mNextIndex:I

    .line 427
    return-void
.end method


# virtual methods
.method public addLayer(ILcom/sonymobile/china/collage/free/model/Layer;)V
    .locals 2
    .param p1, "location"    # I
    .param p2, "layer"    # Lcom/sonymobile/china/collage/free/model/Layer;

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getTopLayer()Lcom/sonymobile/china/collage/free/model/Layer;

    move-result-object v0

    .line 245
    .local v0, "topLayer":Lcom/sonymobile/china/collage/free/model/Layer;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getLayerCount()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/sonymobile/china/collage/free/model/Layer;->shrink()V

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 249
    invoke-direct {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->handleChanged()V

    .line 250
    return-void
.end method

.method public addLayer(Lcom/sonymobile/china/collage/free/model/Layer;)V
    .locals 2
    .param p1, "layer"    # Lcom/sonymobile/china/collage/free/model/Layer;

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getTopLayer()Lcom/sonymobile/china/collage/free/model/Layer;

    move-result-object v0

    .line 230
    .local v0, "topLayer":Lcom/sonymobile/china/collage/free/model/Layer;
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Lcom/sonymobile/china/collage/free/model/Layer;->shrink()V

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-direct {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->handleChanged()V

    .line 235
    return-void
.end method

.method public addListener(Lcom/sonymobile/china/collage/free/model/FreeCollage$FreeCollageListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/china/collage/free/model/FreeCollage$FreeCollageListener;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 190
    invoke-direct {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->handleChanged()V

    .line 192
    :cond_0
    return-void
.end method

.method public getBackgroundLayer()Lcom/sonymobile/china/collage/free/model/BackgroundLayer;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mBackgroundLayer:Lcom/sonymobile/china/collage/free/model/BackgroundLayer;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mHeight:I

    return v0
.end method

.method public getInitialColor()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mInitialColor:I

    return v0
.end method

.method public getLayer(I)Lcom/sonymobile/china/collage/free/model/Layer;
    .locals 1
    .param p1, "layerIndex"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/free/model/Layer;

    return-object v0
.end method

.method public getLayerCount()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNewIndex()I
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mNextIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mNextIndex:I

    return v0
.end method

.method public getTopLayer()Lcom/sonymobile/china/collage/free/model/Layer;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/free/model/Layer;

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mWidth:I

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mIsDirty:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->hasDirtyLayer()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 175
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/collage/free/model/Layer;

    .line 176
    .local v1, "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    invoke-virtual {v1}, Lcom/sonymobile/china/collage/free/model/Layer;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    const/4 v2, 0x0

    .line 180
    .end local v1    # "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public moveLayerDown(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 308
    move v1, p1

    .line 309
    .local v1, "newIndex":I
    if-lez p1, :cond_1

    .line 310
    add-int/lit8 v1, v1, -0x1

    .line 311
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getLayerCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_2

    const/4 v2, 0x1

    .line 312
    .local v2, "removedTopLayer":Z
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/free/model/Layer;

    .line 313
    .local v0, "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getTopLayer()Lcom/sonymobile/china/collage/free/model/Layer;

    move-result-object v3

    .line 314
    .local v3, "topLayer":Lcom/sonymobile/china/collage/free/model/Layer;
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {v3}, Lcom/sonymobile/china/collage/free/model/Layer;->expand()V

    .line 317
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 318
    invoke-direct {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->handleChanged()V

    .line 320
    .end local v0    # "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    .end local v2    # "removedTopLayer":Z
    .end local v3    # "topLayer":Lcom/sonymobile/china/collage/free/model/Layer;
    :cond_1
    return v1

    .line 311
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public moveLayerTop(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getLayerCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 356
    .local v1, "newlayerIndex":I
    if-ge p1, v1, :cond_1

    .line 357
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/free/model/Layer;

    .line 358
    .local v0, "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getTopLayer()Lcom/sonymobile/china/collage/free/model/Layer;

    move-result-object v2

    .line 359
    .local v2, "topLayer":Lcom/sonymobile/china/collage/free/model/Layer;
    if-eqz v2, :cond_0

    .line 360
    invoke-virtual {v2}, Lcom/sonymobile/china/collage/free/model/Layer;->shrink()V

    .line 362
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 363
    invoke-direct {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->handleChanged()V

    .line 365
    .end local v0    # "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    .end local v2    # "topLayer":Lcom/sonymobile/china/collage/free/model/Layer;
    :cond_1
    return v1
.end method

.method public moveLayerUp(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 332
    move v1, p1

    .line 333
    .local v1, "newIndex":I
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge p1, v3, :cond_1

    .line 334
    add-int/lit8 v1, v1, 0x1

    .line 335
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/free/model/Layer;

    .line 336
    .local v0, "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getTopLayer()Lcom/sonymobile/china/collage/free/model/Layer;

    move-result-object v2

    .line 337
    .local v2, "topLayer":Lcom/sonymobile/china/collage/free/model/Layer;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getLayerCount()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 338
    invoke-virtual {v2}, Lcom/sonymobile/china/collage/free/model/Layer;->shrink()V

    .line 340
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 341
    invoke-direct {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->handleChanged()V

    .line 343
    .end local v0    # "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    .end local v2    # "topLayer":Lcom/sonymobile/china/collage/free/model/Layer;
    :cond_1
    return v1
.end method

.method public notifyChanged()V
    .locals 3

    .prologue
    .line 384
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/collage/free/model/FreeCollage$FreeCollageListener;

    .line 385
    .local v1, "listener":Lcom/sonymobile/china/collage/free/model/FreeCollage$FreeCollageListener;
    invoke-interface {v1}, Lcom/sonymobile/china/collage/free/model/FreeCollage$FreeCollageListener;->onFreeCollageUpdated()V

    goto :goto_0

    .line 387
    .end local v1    # "listener":Lcom/sonymobile/china/collage/free/model/FreeCollage$FreeCollageListener;
    :cond_0
    return-void
.end method

.method public removeAllLayer()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 287
    invoke-direct {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->handleChanged()V

    .line 288
    return-void
.end method

.method public removeLayer(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getLayerCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    .line 277
    .local v0, "removedTopLayer":Z
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 278
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getTopLayer()Lcom/sonymobile/china/collage/free/model/Layer;

    move-result-object v1

    .line 279
    .local v1, "topLayer":Lcom/sonymobile/china/collage/free/model/Layer;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v1}, Lcom/sonymobile/china/collage/free/model/Layer;->expand()V

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->handleChanged()V

    .line 283
    return-void

    .line 273
    .end local v0    # "removedTopLayer":Z
    .end local v1    # "topLayer":Lcom/sonymobile/china/collage/free/model/Layer;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(Lcom/sonymobile/china/collage/free/model/FreeCollage$FreeCollageListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/china/collage/free/model/FreeCollage$FreeCollageListener;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public removeTopLayer()V
    .locals 3

    .prologue
    .line 256
    iget-object v1, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 260
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getTopLayer()Lcom/sonymobile/china/collage/free/model/Layer;

    move-result-object v0

    .line 261
    .local v0, "topLayer":Lcom/sonymobile/china/collage/free/model/Layer;
    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0}, Lcom/sonymobile/china/collage/free/model/Layer;->expand()V

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->handleChanged()V

    goto :goto_0
.end method

.method public resetDirty()V
    .locals 3

    .prologue
    .line 159
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mIsDirty:Z

    .line 160
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mBackgroundLayer:Lcom/sonymobile/china/collage/free/model/BackgroundLayer;

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mBackgroundLayer:Lcom/sonymobile/china/collage/free/model/BackgroundLayer;

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/free/model/BackgroundLayer;->resetDirty()V

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/collage/free/model/Layer;

    .line 164
    .local v1, "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    invoke-virtual {v1}, Lcom/sonymobile/china/collage/free/model/Layer;->resetDirty()V

    goto :goto_0

    .line 166
    .end local v1    # "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    :cond_1
    return-void
.end method

.method public setBackgroundLayer(Lcom/sonymobile/china/collage/free/model/BackgroundLayer;)V
    .locals 1
    .param p1, "layer"    # Lcom/sonymobile/china/collage/free/model/BackgroundLayer;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mBackgroundLayer:Lcom/sonymobile/china/collage/free/model/BackgroundLayer;

    if-eq v0, p1, :cond_0

    .line 141
    iput-object p1, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mBackgroundLayer:Lcom/sonymobile/china/collage/free/model/BackgroundLayer;

    .line 142
    invoke-direct {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->handleChanged()V

    .line 144
    :cond_0
    return-void
.end method

.method public setInitialColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 435
    iput p1, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mInitialColor:I

    .line 436
    return-void
.end method

.method public setLayers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/china/collage/free/model/Layer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/china/collage/free/model/Layer;>;"
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/FreeCollage;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    invoke-direct {p0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->handleChanged()V

    .line 104
    return-void
.end method
