.class public Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;
.super Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
.source "ImageFilterText.java"


# instance fields
.field private mCanShown:Z

.field private mContext:Landroid/content/Context;

.field private mDisplayBounds:Landroid/graphics/RectF;

.field private mItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mItems:Ljava/util/Vector;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mCanShown:Z

    .line 38
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->setFilterType(B)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public addTextItem(Ljava/util/Vector;)V
    .locals 1
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
    .line 47
    .local p1, "items":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;>;"
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 50
    :cond_0
    return-void
.end method

.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 28
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "highQuality"    # Z

    .prologue
    .line 61
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mCanShown:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v22

    if-nez v22, :cond_0

    .line 63
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 65
    :cond_0
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 67
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Rect;

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 68
    .local v10, "cropBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getCropBounds(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object v9

    .line 69
    .local v9, "crop":Landroid/graphics/RectF;
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_1

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_1

    .line 70
    invoke-static {v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->roundNearest(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v10

    .line 71
    :cond_1
    const/16 v19, 0x0

    .line 72
    .local v19, "temp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->hasSwitchedWidthHeight()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 73
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v22

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v23

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v22 .. v24}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 79
    :goto_0
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v11, v0, [F

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    aput v23, v11, v22

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    aput v23, v11, v22

    .line 83
    .local v11, "displayCenter":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v11}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->buildTotalXform(FF[F)Landroid/graphics/Matrix;

    move-result-object v15

    .line 86
    .local v15, "m1":Landroid/graphics/Matrix;
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    .line 87
    .local v16, "m2":Landroid/graphics/Matrix;
    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/high16 v23, 0x7f030000

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    .line 93
    .local v8, "container":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setDrawingCacheEnabled(Z)V

    .line 95
    new-instance v17, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;-><init>(IIII)V

    .line 98
    .local v17, "params":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mDisplayBounds:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->width:I

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mDisplayBounds:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->height:I

    .line 101
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mItems:Ljava/util/Vector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;

    .line 103
    .local v13, "item":Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f030009

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    .line 106
    .local v21, "v":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;
    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->init()V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090024

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setMinimumWidth(I)V

    .line 110
    new-instance v14, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    iget v0, v13, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mX:I

    move/from16 v24, v0

    iget v0, v13, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mY:I

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;-><init>(IIII)V

    .line 114
    .local v14, "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    const/16 v22, -0x2

    move/from16 v0, v22

    iput v0, v14, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->width:I

    .line 115
    const/16 v22, -0x2

    move/from16 v0, v22

    iput v0, v14, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->height:I

    .line 116
    const v22, 0x7f0c008d

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    .line 117
    .local v20, "text":Landroid/widget/EditText;
    const/16 v22, 0x13

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 118
    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 119
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 120
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 121
    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 122
    iget v0, v13, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextPaddingLeft:I

    move/from16 v22, v0

    iget v0, v13, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextPaddingTop:I

    move/from16 v23, v0

    iget v0, v13, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextPaddingRight:I

    move/from16 v24, v0

    iget v0, v13, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextPaddingBottom:I

    move/from16 v25, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 124
    const/16 v22, 0x13

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setGravity(I)V

    .line 125
    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v14}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v18, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    iget v0, v13, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextColor:I

    move/from16 v22, v0

    iget v0, v13, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextPortSize:F

    move/from16 v23, v0

    iget v0, v13, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextLandSize:F

    move/from16 v24, v0

    iget v0, v13, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextFont:I

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;-><init>(IFFI)V

    .line 128
    .local v18, "property":Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->applyProperty(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V

    .line 129
    iget v0, v13, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mBackgroundRes:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setBackgroundResource(I)V

    .line 130
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setViewFocus(Z)V

    .line 131
    iget v0, v13, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mScaleX:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setScaleX(F)V

    .line 132
    iget v0, v13, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mScaleY:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setScaleY(F)V

    .line 133
    iget v0, v13, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mRotation:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setRotation(F)V

    .line 134
    iget v0, v13, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mRotationX:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setRotationX(F)V

    .line 135
    iget v0, v13, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mRotationY:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setRotationY(F)V

    .line 136
    iget-object v0, v13, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mText:[C

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 76
    .end local v8    # "container":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;
    .end local v11    # "displayCenter":[F
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "item":Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;
    .end local v14    # "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    .end local v15    # "m1":Landroid/graphics/Matrix;
    .end local v16    # "m2":Landroid/graphics/Matrix;
    .end local v17    # "params":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    .end local v18    # "property":Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;
    .end local v20    # "text":Landroid/widget/EditText;
    .end local v21    # "v":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;
    :cond_2
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v22

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v23

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v22 .. v24}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    goto/16 :goto_0

    .line 140
    .restart local v8    # "container":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;
    .restart local v11    # "displayCenter":[F
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v15    # "m1":Landroid/graphics/Matrix;
    .restart local v16    # "m2":Landroid/graphics/Matrix;
    .restart local v17    # "params":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    :cond_3
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->width:I

    move/from16 v22, v0

    const/high16 v23, 0x40000000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->height:I

    move/from16 v23, v0

    const/high16 v24, 0x40000000

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->measure(II)V

    .line 144
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->width:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->height:I

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->layout(IIII)V

    .line 146
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setDrawingCacheEnabled(Z)V

    .line 147
    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 148
    .local v5, "b":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 149
    .local v6, "c":Landroid/graphics/Canvas;
    if-eqz v5, :cond_4

    .line 150
    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->width:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->height:I

    move/from16 v26, v0

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v23, Landroid/graphics/Rect;

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    invoke-direct/range {v23 .. v27}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v6, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 152
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 154
    :cond_4
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 157
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v6    # "c":Landroid/graphics/Canvas;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "container":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;
    .end local v9    # "crop":Landroid/graphics/RectF;
    .end local v10    # "cropBounds":Landroid/graphics/Rect;
    .end local v11    # "displayCenter":[F
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "m1":Landroid/graphics/Matrix;
    .end local v16    # "m2":Landroid/graphics/Matrix;
    .end local v17    # "params":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    .end local v19    # "temp":Landroid/graphics/Bitmap;
    :cond_5
    return-object p1
.end method

.method public clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;

    .line 191
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->setDisplayBounds(Landroid/graphics/RectF;)V

    .line 192
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
    .line 27
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public isNil()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mItems:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public same(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)Z
    .locals 5
    .param p1, "filter"    # Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->same(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)Z

    move-result v0

    .line 171
    .local v0, "isTextFilter":Z
    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v2

    .line 174
    :cond_1
    instance-of v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 177
    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;

    .line 178
    .local v1, "textFilter":Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mItems:Ljava/util/Vector;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mItems:Ljava/util/Vector;

    iget-object v4, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mItems:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mDisplayBounds:Landroid/graphics/RectF;

    iget-object v4, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mCanShown:Z

    iget-boolean v4, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mCanShown:Z

    xor-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 185
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setDisplayBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "bound"    # Landroid/graphics/RectF;

    .prologue
    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mDisplayBounds:Landroid/graphics/RectF;

    .line 44
    return-void
.end method

.method public setTextItem(Ljava/util/Vector;)V
    .locals 1
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
    .line 53
    .local p1, "items":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;>;"
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 55
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 57
    :cond_0
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->mCanShown:Z

    .line 197
    return-void
.end method
