.class public Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridCollageAdapter.java"

# interfaces
.implements Lcom/sonymobile/movablepanes/paneview/PaneAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field static final Z_ORDER_DEFAULT:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlagForScreenshot:Z

.field private mHeight:I

.field private mPaneModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/china/collage/grid/model/PaneData;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/china/collage/ImageElement;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatePaneDataCallback:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/china/collage/grid/model/PaneData;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "model":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/china/collage/grid/model/PaneData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mFlagForScreenshot:Z

    .line 50
    new-instance v0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$1;-><init>(Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;)V

    iput-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mUpdatePaneDataCallback:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;

    .line 64
    iput-object p1, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPaneModel:Ljava/util/List;

    .line 66
    iput p3, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mWidth:I

    .line 67
    iput p4, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mHeight:I

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPaneModel:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected bindPaneView(ILcom/sonymobile/china/collage/grid/GridPaneItemView;Lcom/sonymobile/china/collage/ImageElement;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "view"    # Lcom/sonymobile/china/collage/grid/GridPaneItemView;
    .param p3, "imgElement"    # Lcom/sonymobile/china/collage/ImageElement;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPaneModel:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/china/collage/grid/model/PaneData;

    .line 121
    .local v7, "data":Lcom/sonymobile/china/collage/grid/model/PaneData;
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mUpdatePaneDataCallback:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;

    invoke-virtual {p2, v0}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->setPaneDataCallback(Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;)V

    .line 122
    invoke-virtual {p2, p3}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->setImageElement(Lcom/sonymobile/china/collage/ImageElement;)V

    .line 124
    invoke-virtual {v7}, Lcom/sonymobile/china/collage/grid/model/PaneData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v7}, Lcom/sonymobile/china/collage/grid/model/PaneData;->getDataType()Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    move-result-object v2

    invoke-virtual {v7}, Lcom/sonymobile/china/collage/grid/model/PaneData;->getScaleFactor()F

    move-result v3

    invoke-virtual {v7}, Lcom/sonymobile/china/collage/grid/model/PaneData;->getLeft()F

    move-result v4

    invoke-virtual {v7}, Lcom/sonymobile/china/collage/grid/model/PaneData;->getTop()F

    move-result v5

    invoke-virtual {v7}, Lcom/sonymobile/china/collage/grid/model/PaneData;->needUpdateDefaultLeftAndTop()Z

    move-result v6

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->setBitmap(Landroid/graphics/Bitmap;Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;FFFZ)V

    .line 126
    iget-boolean v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mFlagForScreenshot:Z

    invoke-virtual {p2, v0}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->setFlagForScreenshot(Z)V

    .line 127
    invoke-virtual {p2}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->invalidate()V

    .line 129
    .end local v7    # "data":Lcom/sonymobile/china/collage/grid/model/PaneData;
    :cond_0
    return-void
.end method

.method public clearForScreenshot()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mFlagForScreenshot:Z

    .line 200
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPaneModel:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPaneModel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 80
    :goto_0
    return v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPaneModel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/sonymobile/china/collage/grid/model/PaneData;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 86
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 87
    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPaneModel:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/grid/model/PaneData;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->getItem(I)Lcom/sonymobile/china/collage/grid/model/PaneData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 94
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 95
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 97
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPaneModel:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/grid/model/PaneData;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/grid/model/PaneData;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLocation(ILcom/sonymobile/movablepanes/paneview/PaneLocation;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "location"    # Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    .prologue
    .line 133
    iget-object v1, p2, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/ImageElement;->getPositionRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 134
    iget-object v1, p2, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/ImageElement;->getPositionRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 135
    iget-object v1, p2, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/ImageElement;->getPositionRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 136
    iget-object v1, p2, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/ImageElement;->getPositionRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 145
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/ImageElement;->getId()I

    move-result v0

    iput v0, p2, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->zOrder:I

    .line 146
    iget-object v1, p2, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->containRegion:Landroid/graphics/Region;

    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/ImageElement;->getContainRegion()Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 147
    const/4 v0, 0x0

    iput v0, p2, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    .line 148
    return-void
.end method

.method public getLocationIndex(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 165
    const/4 v1, -0x1

    .line 168
    .local v1, "itemIndex":I
    if-ltz p1, :cond_2

    iget v3, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mWidth:I

    if-gt p1, v3, :cond_2

    if-ltz p2, :cond_2

    iget v3, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mHeight:I

    if-gt p2, v3, :cond_2

    .line 169
    const/4 v2, -0x1

    .line 170
    .local v2, "zOrder":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 171
    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v3, p1, p2}, Lcom/sonymobile/china/collage/ImageElement;->containsWithNoOffset(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v3}, Lcom/sonymobile/china/collage/ImageElement;->getId()I

    move-result v3

    if-lt v3, v2, :cond_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 173
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v3}, Lcom/sonymobile/china/collage/ImageElement;->getId()I

    move-result v2

    .line 174
    move v1, v0

    .line 170
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "i":I
    .end local v2    # "zOrder":I
    :cond_2
    return v1
.end method

.method public getNumberOfPanes()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 103
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 104
    check-cast v0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getPositionRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v2, v1

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getPositionRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->updateWAndH(II)V

    .line 112
    :goto_0
    invoke-virtual {p2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, p2

    .line 113
    check-cast v0, Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->bindPaneView(ILcom/sonymobile/china/collage/grid/GridPaneItemView;Lcom/sonymobile/china/collage/ImageElement;)V

    .line 114
    return-object p2

    .line 108
    :cond_0
    new-instance p2, Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/ImageElement;->getPositionRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v2, v0

    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/ImageElement;->getPositionRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p2, v1, v2, v0}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;-><init>(Landroid/content/Context;II)V

    .restart local p2    # "convertView":Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public isInteractive(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public setPositionAndData(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/china/collage/ImageElement;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/china/collage/grid/model/PaneData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "position":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/china/collage/ImageElement;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/china/collage/grid/model/PaneData;>;"
    iput-object p1, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPosition:Ljava/util/List;

    .line 72
    iput-object p2, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPaneModel:Ljava/util/List;

    .line 73
    return-void
.end method

.method public updateWAndH(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mWidth:I

    .line 192
    iput p2, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mHeight:I

    .line 193
    return-void
.end method
