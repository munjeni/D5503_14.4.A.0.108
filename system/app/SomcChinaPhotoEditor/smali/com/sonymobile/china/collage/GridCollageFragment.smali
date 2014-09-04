.class public Lcom/sonymobile/china/collage/GridCollageFragment;
.super Lcom/sonymobile/china/collage/BaseCollageFragment;
.source "GridCollageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;,
        Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;,
        Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final NO_SPEED:F = 0.0f

.field private static final SCROLL_SPEED:F = 0.005f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCollageAdapter:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

.field private mCrossClickPosition:I

.field private mCurBgResStr:Ljava/lang/String;

.field private mCurHeight:I

.field private mCurTemplateId:I

.field private mCurWidth:I

.field public mDropIndex:I

.field private mHeight:I

.field public mHintItem:Lcom/sonymobile/china/collage/grid/model/PaneData;

.field private mLongClickIndex:I

.field public mLongPressing:Z

.field private mModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/china/collage/grid/model/PaneData;",
            ">;"
        }
    .end annotation
.end field

.field private mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;

.field private mRenderFactory:Lcom/sonymobile/movablepanes/util/BasicRendererFactory;

.field private mTransferSource:Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;

.field private mTransferTarget:Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;

.field private mTransferView:Lcom/sonymobile/movablepanes/transfer/TransferView;

.field private mWidth:I

.field private previousFocusItem:Lcom/sonymobile/china/collage/grid/GridPaneItemView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/sonymobile/china/collage/GridCollageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/collage/GridCollageFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/sonymobile/china/collage/BaseCollageFragment;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCrossClickPosition:I

    .line 106
    new-instance v0, Lcom/sonymobile/movablepanes/util/BasicRendererFactory;

    invoke-direct {v0}, Lcom/sonymobile/movablepanes/util/BasicRendererFactory;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mRenderFactory:Lcom/sonymobile/movablepanes/util/BasicRendererFactory;

    .line 107
    new-instance v0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;-><init>(Lcom/sonymobile/china/collage/GridCollageFragment;Lcom/sonymobile/china/collage/GridCollageFragment$1;)V

    iput-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mTransferSource:Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;

    .line 108
    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/transfer/TransferView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/GridCollageFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mTransferView:Lcom/sonymobile/movablepanes/transfer/TransferView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/china/collage/grid/GridPaneItemView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/GridCollageFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->previousFocusItem:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonymobile/china/collage/GridCollageFragment;Lcom/sonymobile/china/collage/grid/GridPaneItemView;)Lcom/sonymobile/china/collage/grid/GridPaneItemView;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/GridCollageFragment;
    .param p1, "x1"    # Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->previousFocusItem:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonymobile/china/collage/GridCollageFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/GridCollageFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/GridCollageFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCollageAdapter:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonymobile/china/collage/GridCollageFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/GridCollageFragment;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCrossClickPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/sonymobile/china/collage/GridCollageFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/GridCollageFragment;

    .prologue
    .line 51
    iget v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mLongClickIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/sonymobile/china/collage/GridCollageFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/GridCollageFragment;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mLongClickIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/util/BasicRendererFactory;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/GridCollageFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mRenderFactory:Lcom/sonymobile/movablepanes/util/BasicRendererFactory;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/GridCollageFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mTransferSource:Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/paneview/PaneView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/GridCollageFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;

    return-object v0
.end method

.method private getBackgroundResource(Ljava/lang/String;)I
    .locals 3
    .param p1, "bgId"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "bgIds":[Ljava/lang/String;
    iget v1, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurWidth:I

    iget v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurHeight:I

    if-le v1, v2, :cond_0

    .line 321
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 326
    .end local v0    # "bgIds":[Ljava/lang/String;
    :goto_0
    return v1

    .line 323
    .restart local v0    # "bgIds":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 326
    .end local v0    # "bgIds":[Ljava/lang/String;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private initIrregularItem(III)Ljava/util/List;
    .locals 6
    .param p1, "paneViewWidth"    # I
    .param p2, "paneViewHeight"    # I
    .param p3, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/china/collage/ImageElement;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/GridCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/sonymobile/china/collage/svg/SVGParser;->getInstance(Landroid/content/Context;II)Lcom/sonymobile/china/collage/svg/SVGParser;

    move-result-object v0

    .line 212
    .local v0, "im":Lcom/sonymobile/china/collage/svg/SVGParser;
    invoke-virtual {v0, p3}, Lcom/sonymobile/china/collage/svg/SVGParser;->parseSVG(I)Ljava/util/List;

    move-result-object v1

    .line 213
    .local v1, "pos":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/china/collage/ImageElement;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 214
    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCollageAdapter:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/ImageElement;->getParentWidth()I

    move-result v4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/collage/ImageElement;

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/ImageElement;->getParentHeight()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->updateWAndH(II)V

    .line 216
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected getScreenshotBitmap()Landroid/graphics/Bitmap;
    .locals 17

    .prologue
    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/collage/GridCollageFragment;->getPerferSaveSize()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/collage/GridCollageFragment;->getPerferSaveSize()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurTemplateId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/sonymobile/china/collage/GridCollageFragment;->initIrregularItem(III)Ljava/util/List;

    move-result-object v16

    .line 547
    .local v16, "srcPos":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/china/collage/ImageElement;>;"
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/collage/ImageElement;

    iget v2, v2, Lcom/sonymobile/china/collage/ImageElement;->mParentWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurWidth:I

    .line 548
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/collage/ImageElement;

    iget v2, v2, Lcom/sonymobile/china/collage/ImageElement;->mParentHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurHeight:I

    .line 549
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 550
    .local v12, "destBitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 551
    .local v10, "canvas":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    .line 552
    .local v8, "bg":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurHeight:I

    if-le v2, v3, :cond_2

    const/4 v15, 0x1

    .line 553
    .local v15, "isLand":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurBgResStr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 554
    if-eqz v15, :cond_3

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/collage/BaseCollageFragment;->mInfoInterface:Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;

    invoke-interface {v2}, Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;->getBgPicBitmaps()[Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v8, v2, v3

    .line 570
    :goto_1
    if-eqz v8, :cond_0

    .line 571
    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurHeight:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    invoke-virtual {v10, v8, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 574
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .local v14, "i":I
    :goto_2
    if-ltz v14, :cond_6

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonymobile/china/collage/grid/model/PaneData;

    .line 576
    .local v11, "data":Lcom/sonymobile/china/collage/grid/model/PaneData;
    invoke-virtual {v11}, Lcom/sonymobile/china/collage/grid/model/PaneData;->getDataType()Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->PICTURE:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    if-ne v2, v3, :cond_1

    .line 577
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonymobile/china/collage/ImageElement;

    .line 578
    .local v13, "element":Lcom/sonymobile/china/collage/ImageElement;
    new-instance v1, Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/collage/GridCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v13}, Lcom/sonymobile/china/collage/ImageElement;->getPositionRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v13}, Lcom/sonymobile/china/collage/ImageElement;->getPositionRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;-><init>(Landroid/content/Context;II)V

    .line 580
    .local v1, "item":Lcom/sonymobile/china/collage/grid/GridPaneItemView;
    invoke-virtual {v1, v13}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->setImageElement(Lcom/sonymobile/china/collage/ImageElement;)V

    .line 581
    invoke-virtual {v11}, Lcom/sonymobile/china/collage/grid/model/PaneData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v11}, Lcom/sonymobile/china/collage/grid/model/PaneData;->getDataType()Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    move-result-object v3

    invoke-virtual {v11}, Lcom/sonymobile/china/collage/grid/model/PaneData;->getScaleFactor()F

    move-result v4

    invoke-virtual {v11}, Lcom/sonymobile/china/collage/grid/model/PaneData;->getLeft()F

    move-result v5

    invoke-virtual {v11}, Lcom/sonymobile/china/collage/grid/model/PaneData;->getTop()F

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->setBitmap(Landroid/graphics/Bitmap;Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;FFFZ)V

    .line 583
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->setFlagForScreenshot(Z)V

    .line 584
    invoke-virtual {v1, v10}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->drawByParent(Landroid/graphics/Canvas;)V

    .line 574
    .end local v1    # "item":Lcom/sonymobile/china/collage/grid/GridPaneItemView;
    .end local v13    # "element":Lcom/sonymobile/china/collage/ImageElement;
    :cond_1
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 552
    .end local v11    # "data":Lcom/sonymobile/china/collage/grid/model/PaneData;
    .end local v14    # "i":I
    .end local v15    # "isLand":Z
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 557
    .restart local v15    # "isLand":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/collage/BaseCollageFragment;->mInfoInterface:Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;

    invoke-interface {v2}, Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;->getBgPicBitmaps()[Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v8, v2, v3

    goto/16 :goto_1

    .line 561
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurBgResStr:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurBgResStr:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->getBackgroundResource(Ljava/lang/String;)I

    move-result v9

    .line 563
    .local v9, "bgResId":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/collage/GridCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 564
    goto/16 :goto_1

    .line 565
    .end local v9    # "bgResId":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurBgResStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/collage/GridCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3, v15}, Lcom/sonymobile/china/collage/utils/ImageUtils;->getBgByFill(ILandroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    goto/16 :goto_1

    .line 587
    .restart local v14    # "i":I
    :cond_6
    return-object v12
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-super {p0, p1}, Lcom/sonymobile/china/collage/BaseCollageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 133
    new-instance v0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;

    iget v1, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mHeight:I

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;-><init>(Lcom/sonymobile/china/collage/GridCollageFragment;I)V

    iput-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mTransferTarget:Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;

    .line 134
    new-instance v0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;-><init>(Lcom/sonymobile/china/collage/GridCollageFragment;Lcom/sonymobile/china/collage/GridCollageFragment$1;)V

    iput-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mTransferSource:Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;

    .line 136
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;

    iget-object v1, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mRenderFactory:Lcom/sonymobile/movablepanes/util/BasicRendererFactory;

    invoke-virtual {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setRendererFactory(Lcom/sonymobile/movablepanes/paneview/RendererFactory;)V

    .line 137
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;

    new-instance v1, Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;-><init>(Lcom/sonymobile/china/collage/GridCollageFragment;Lcom/sonymobile/china/collage/GridCollageFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;

    new-instance v1, Lcom/sonymobile/china/collage/GridCollageFragment$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/china/collage/GridCollageFragment$1;-><init>(Lcom/sonymobile/china/collage/GridCollageFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;

    new-instance v1, Lcom/sonymobile/china/collage/GridCollageFragment$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/china/collage/GridCollageFragment$2;-><init>(Lcom/sonymobile/china/collage/GridCollageFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setDeleteItemListener(Lcom/sonymobile/movablepanes/paneview/PaneView$ItemDeleteListener;)V

    .line 181
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;

    sget v1, Lcom/sonymobile/movablepanes/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mTransferTarget:Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setTag(ILjava/lang/Object;)V

    .line 184
    new-instance v0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/GridCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;

    iget v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mWidth:I

    iget v4, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mHeight:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    iput-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCollageAdapter:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    .line 186
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;

    iget-object v1, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCollageAdapter:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setAdapter(Lcom/sonymobile/movablepanes/paneview/PaneAdapter;)V

    .line 187
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 231
    if-nez p2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 236
    :pswitch_0
    if-eqz p3, :cond_0

    .line 237
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 238
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 239
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/collage/GridCollageFragment;->addPicture([Landroid/net/Uri;)V

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/sonymobile/china/collage/BaseCollageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/GridCollageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pane_size"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 114
    .local v0, "size":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 115
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mWidth:I

    .line 116
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mHeight:I

    .line 118
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    const v0, 0x7f030008

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/movablepanes/transfer/TransferView;

    iput-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mTransferView:Lcom/sonymobile/movablepanes/transfer/TransferView;

    .line 124
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mTransferView:Lcom/sonymobile/movablepanes/transfer/TransferView;

    const v1, 0x7f0c008c

    invoke-virtual {v0, v1}, Lcom/sonymobile/movablepanes/transfer/TransferView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/movablepanes/paneview/PaneView;

    iput-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;

    .line 125
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 126
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mTransferView:Lcom/sonymobile/movablepanes/transfer/TransferView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->onDestroy()V

    .line 227
    return-void
.end method

.method public onPictureAdded(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pictures":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v4, -0x1

    .line 191
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 192
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 193
    new-instance v1, Lcom/sonymobile/china/collage/grid/model/PaneData;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    sget-object v3, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->PICTURE:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/china/collage/grid/model/PaneData;-><init>(Landroid/graphics/Bitmap;Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;)V

    .line 194
    .local v1, "pd":Lcom/sonymobile/china/collage/grid/model/PaneData;
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCrossClickPosition:I

    if-eq v2, v4, :cond_0

    .line 195
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;

    iget v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCrossClickPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 196
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;

    iget v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCrossClickPosition:I

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 205
    .end local v1    # "pd":Lcom/sonymobile/china/collage/grid/model/PaneData;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCollageAdapter:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->notifyDataSetChanged()V

    .line 207
    :cond_1
    iput v4, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCrossClickPosition:I

    .line 208
    return-void

    .line 199
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 200
    new-instance v1, Lcom/sonymobile/china/collage/grid/model/PaneData;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    sget-object v3, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->PICTURE:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/china/collage/grid/model/PaneData;-><init>(Landroid/graphics/Bitmap;Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;)V

    .line 201
    .restart local v1    # "pd":Lcom/sonymobile/china/collage/grid/model/PaneData;
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;

    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->onResume()V

    .line 222
    return-void
.end method

.method public updateBackground(Ljava/lang/String;)V
    .locals 7
    .param p1, "bgId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 281
    iget v5, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurWidth:I

    iget v6, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurHeight:I

    if-le v5, v6, :cond_1

    move v1, v3

    .line 282
    .local v1, "isLand":Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 283
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 284
    invoke-direct {p0, p1}, Lcom/sonymobile/china/collage/GridCollageFragment;->getBackgroundResource(Ljava/lang/String;)I

    move-result v2

    .line 285
    .local v2, "resId":I
    if-lez v2, :cond_0

    .line 286
    iput-object p1, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurBgResStr:Ljava/lang/String;

    .line 287
    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;

    invoke-virtual {v3, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setBackgroundResource(I)V

    .line 309
    .end local v2    # "resId":I
    :cond_0
    :goto_1
    return-void

    .end local v1    # "isLand":Z
    :cond_1
    move v1, v4

    .line 281
    goto :goto_0

    .line 290
    .restart local v1    # "isLand":Z
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/GridCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/sonymobile/china/collage/utils/ImageUtils;->getBgByFill(ILandroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 293
    iput-object p1, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurBgResStr:Ljava/lang/String;

    .line 294
    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/GridCollageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 298
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v0, 0x0

    .line 299
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    .line 300
    iget-object v3, p0, Lcom/sonymobile/china/collage/BaseCollageFragment;->mInfoInterface:Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;

    invoke-interface {v3}, Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;->getBgPicBitmaps()[Landroid/graphics/Bitmap;

    move-result-object v3

    aget-object v0, v3, v4

    .line 304
    :goto_2
    if-eqz v0, :cond_0

    .line 305
    const-string v3, ""

    iput-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurBgResStr:Ljava/lang/String;

    .line 306
    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/GridCollageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 302
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/china/collage/BaseCollageFragment;->mInfoInterface:Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;

    invoke-interface {v4}, Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;->getBgPicBitmaps()[Landroid/graphics/Bitmap;

    move-result-object v4

    aget-object v0, v4, v3

    goto :goto_2
.end method

.method public updateTemplate(ILjava/lang/String;)V
    .locals 9
    .param p1, "templateId"    # I
    .param p2, "bgId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 253
    sget-object v6, Lcom/sonymobile/china/collage/GridCollageFragment;->TAG:Ljava/lang/String;

    const-string v7, "updateTemplate"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iput p1, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurTemplateId:I

    .line 258
    iget v6, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mWidth:I

    iget v7, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mHeight:I

    invoke-direct {p0, v6, v7, p1}, Lcom/sonymobile/china/collage/GridCollageFragment;->initIrregularItem(III)Ljava/util/List;

    move-result-object v5

    .line 261
    .local v5, "srcPos":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/china/collage/ImageElement;>;"
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/china/collage/ImageElement;

    iget v6, v6, Lcom/sonymobile/china/collage/ImageElement;->mParentWidth:I

    iput v6, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurWidth:I

    .line 262
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/china/collage/ImageElement;

    iget v6, v6, Lcom/sonymobile/china/collage/ImageElement;->mParentHeight:I

    iput v6, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurHeight:I

    .line 263
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurWidth:I

    add-int/lit8 v6, v6, 0x3

    iget v7, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCurHeight:I

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 265
    .local v3, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 266
    iget-object v6, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;

    invoke-virtual {v6, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v6, p0, Lcom/sonymobile/china/collage/BaseCollageFragment;->mInfoInterface:Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;

    invoke-interface {v6}, Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;->getPicBitmaps()Ljava/util/ArrayList;

    move-result-object v4

    .line 268
    .local v4, "srcData":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    iget-object v6, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 269
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 270
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;

    new-instance v7, Lcom/sonymobile/china/collage/grid/model/PaneData;

    sget-object v8, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->PICTURE:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    invoke-direct {v7, v0, v8}, Lcom/sonymobile/china/collage/grid/model/PaneData;-><init>(Landroid/graphics/Bitmap;Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 273
    iget-object v6, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;

    new-instance v7, Lcom/sonymobile/china/collage/grid/model/PaneData;

    sget-object v8, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->CROSS:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    invoke-direct {v7, v8}, Lcom/sonymobile/china/collage/grid/model/PaneData;-><init>(Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 275
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCollageAdapter:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    iget-object v7, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;

    invoke-virtual {v6, v5, v7}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->setPositionAndData(Ljava/util/List;Ljava/util/List;)V

    .line 276
    iget-object v6, p0, Lcom/sonymobile/china/collage/GridCollageFragment;->mCollageAdapter:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    invoke-virtual {v6}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->notifyDataSetChanged()V

    .line 277
    invoke-virtual {p0, p2}, Lcom/sonymobile/china/collage/GridCollageFragment;->updateBackground(Ljava/lang/String;)V

    .line 278
    return-void
.end method
