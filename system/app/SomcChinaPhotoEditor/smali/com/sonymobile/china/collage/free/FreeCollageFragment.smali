.class public Lcom/sonymobile/china/collage/free/FreeCollageFragment;
.super Lcom/sonymobile/china/collage/BaseCollageFragment;
.source "FreeCollageFragment.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionRecevierState:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

.field private mFreeCollageView:Lcom/sonymobile/china/collage/free/FreeCollageView;

.field private mTotalH:I

.field private mTotalW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sonymobile/china/collage/BaseCollageFragment;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mActionRecevierState:Z

    .line 123
    new-instance v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/collage/free/FreeCollageFragment$1;-><init>(Lcom/sonymobile/china/collage/free/FreeCollageFragment;)V

    iput-object v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/china/collage/free/FreeCollageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/free/FreeCollageFragment;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mActionRecevierState:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/china/collage/free/FreeCollageFragment;)Lcom/sonymobile/china/collage/free/model/FreeCollage;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/free/FreeCollageFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/china/collage/free/FreeCollageFragment;)Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/free/FreeCollageFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonymobile/china/collage/BaseCollageFragment;->mInfoInterface:Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/china/collage/free/FreeCollageFragment;)Lcom/sonymobile/china/collage/free/FreeCollageView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/free/FreeCollageFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollageView:Lcom/sonymobile/china/collage/free/FreeCollageView;

    return-object v0
.end method

.method private convertToLayer(Lcom/sonymobile/china/collage/ImageElement;)Lcom/sonymobile/china/collage/free/model/ImageLayer;
    .locals 20
    .param p1, "element"    # Lcom/sonymobile/china/collage/ImageElement;

    .prologue
    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    .line 269
    .local v13, "activity":Landroid/app/Activity;
    if-nez v13, :cond_0

    .line 270
    const/4 v2, 0x0

    .line 294
    :goto_0
    return-object v2

    .line 272
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v3}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getWidth()I

    move-result v10

    .line 273
    .local v10, "totalWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v3}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getHeight()I

    move-result v11

    .line 275
    .local v11, "totalHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/china/collage/ImageElement;->getOrignalRect()Landroid/graphics/RectF;

    move-result-object v19

    .line 276
    .local v19, "rect":Landroid/graphics/RectF;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    .line 277
    .local v15, "cx":F
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->centerY()F

    move-result v16

    .line 278
    .local v16, "cy":F
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v0, v3

    move/from16 v18, v0

    .line 279
    .local v18, "dstWidth":I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v0, v3

    move/from16 v17, v0

    .line 281
    .local v17, "dstHeight":I
    move/from16 v0, v18

    int-to-float v3, v0

    const/high16 v7, 0x40000000

    div-float/2addr v3, v7

    sub-float v5, v15, v3

    .line 282
    .local v5, "startX":F
    move/from16 v0, v17

    int-to-float v3, v0

    const/high16 v7, 0x40000000

    div-float/2addr v3, v7

    sub-float v6, v16, v3

    .line 283
    .local v6, "startY":F
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 284
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 285
    .local v14, "canvas":Landroid/graphics/Canvas;
    const v3, -0x777778

    invoke-virtual {v14, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 286
    new-instance v2, Lcom/sonymobile/china/collage/free/model/ImageLayer;

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/china/collage/ImageElement;->getRotation()F

    move-result v7

    const/high16 v8, 0x3f800000

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v9}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getNewIndex()I

    move-result v9

    const/4 v12, 0x1

    invoke-direct/range {v2 .. v12}, Lcom/sonymobile/china/collage/free/model/ImageLayer;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;FFFFIIIZ)V

    .line 291
    .local v2, "imageLayer":Lcom/sonymobile/china/collage/free/model/ImageLayer;
    sget-object v3, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "convertToLayer imageLayerId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", layerCnt:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v8}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getLayerCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 99
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 100
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;

    if-nez v3, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v0

    .line 104
    check-cast v3, Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;

    iput-object v3, p0, Lcom/sonymobile/china/collage/BaseCollageFragment;->mInfoInterface:Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;

    .line 105
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "pane_size"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 106
    .local v2, "size":[I
    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 107
    aget v3, v2, v6

    iput v3, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mTotalH:I

    .line 108
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mTotalW:I

    .line 111
    :cond_2
    sget-object v3, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size in init mTotalH:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mTotalH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTotalW:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mTotalW:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0, v6}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->setHasOptionsMenu(Z)V

    .line 114
    invoke-virtual {p0, v6}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->setRetainInstance(Z)V

    .line 115
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.sonymobile.photoeditor.collage.free.replaceWithNew"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.sonymobile.photoeditor.collage.free.deleteLayer"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private insertBitmap(Landroid/graphics/Bitmap;Lcom/sonymobile/china/collage/free/model/Layer;)V
    .locals 27
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "layer"    # Lcom/sonymobile/china/collage/free/model/Layer;

    .prologue
    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    .line 212
    .local v19, "activity":Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollageView:Lcom/sonymobile/china/collage/free/FreeCollageView;

    if-eqz v2, :cond_0

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 215
    :cond_0
    sget-object v3, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertBitmap return mFreeCollage == null:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", mFreeCollageView == null :"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollageView:Lcom/sonymobile/china/collage/free/FreeCollageView;

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_1
    :goto_2
    return-void

    .line 215
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 222
    :cond_4
    if-eqz p1, :cond_1

    .line 223
    if-eqz p2, :cond_6

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    .line 225
    .local v26, "socW":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    .line 226
    .local v25, "socH":I
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/china/collage/free/model/Layer;->getWidth()I

    move-result v24

    .line 227
    .local v24, "layerW":I
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/china/collage/free/model/Layer;->getHeight()I

    move-result v23

    .line 228
    .local v23, "layerH":I
    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/china/collage/free/model/Layer;->getScaleFactor()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v22, v0

    .line 230
    .local v22, "dstSide":I
    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    .line 231
    move/from16 v0, v22

    int-to-float v2, v0

    move/from16 v0, v25

    int-to-float v3, v0

    div-float v7, v2, v3

    .line 236
    .local v7, "scale":F
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/china/collage/free/model/Layer;->getX()F

    move-result v4

    .line 237
    .local v4, "startX":F
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/china/collage/free/model/Layer;->getY()F

    move-result v5

    .line 239
    .local v5, "startY":F
    move/from16 v0, v24

    int-to-float v2, v0

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    add-float v20, v4, v2

    .line 240
    .local v20, "centerX":F
    move/from16 v0, v23

    int-to-float v2, v0

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    add-float v21, v5, v2

    .line 242
    .local v21, "centerY":F
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/china/collage/free/model/Layer;->getRotationAngle()F

    move-result v6

    .line 244
    .local v6, "rotate":F
    move/from16 v0, v26

    int-to-float v2, v0

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sub-float v4, v20, v2

    .line 245
    move/from16 v0, v25

    int-to-float v2, v0

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sub-float v5, v21, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    .line 246
    invoke-virtual/range {v2 .. v7}, Lcom/sonymobile/china/collage/free/model/Layer;->resetBitmap(Landroid/graphics/Bitmap;FFFF)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->notifyChanged()V

    goto :goto_2

    .line 233
    .end local v4    # "startX":F
    .end local v5    # "startY":F
    .end local v6    # "rotate":F
    .end local v7    # "scale":F
    .end local v20    # "centerX":F
    .end local v21    # "centerY":F
    :cond_5
    move/from16 v0, v22

    int-to-float v2, v0

    move/from16 v0, v26

    int-to-float v3, v0

    div-float v7, v2, v3

    .restart local v7    # "scale":F
    goto :goto_3

    .line 249
    .end local v7    # "scale":F
    .end local v22    # "dstSide":I
    .end local v23    # "layerH":I
    .end local v24    # "layerW":I
    .end local v25    # "socH":I
    .end local v26    # "socW":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getWidth()I

    move-result v16

    .line 250
    .local v16, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getHeight()I

    move-result v17

    .line 251
    .local v17, "height":I
    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v16, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v11, v2

    .line 252
    .local v11, "x":F
    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v17, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v12, v2

    .line 253
    .local v12, "y":F
    new-instance v8, Lcom/sonymobile/china/collage/free/model/ImageLayer;

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getNewIndex()I

    move-result v15

    const/16 v18, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v8 .. v18}, Lcom/sonymobile/china/collage/free/model/ImageLayer;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;FFFFIIIZ)V

    .line 255
    .local v8, "imageLayer":Lcom/sonymobile/china/collage/free/model/Layer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v2, v8}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->addLayer(Lcom/sonymobile/china/collage/free/model/Layer;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollageView:Lcom/sonymobile/china/collage/free/FreeCollageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v3}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getLayerCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/china/collage/free/FreeCollageView;->enterSelectMode(I)V

    goto/16 :goto_2
.end method

.method private scaleLayer(Lcom/sonymobile/china/collage/free/model/Layer;F)V
    .locals 10
    .param p1, "layer"    # Lcom/sonymobile/china/collage/free/model/Layer;
    .param p2, "scale"    # F

    .prologue
    const/high16 v9, 0x40000000

    .line 507
    invoke-virtual {p1}, Lcom/sonymobile/china/collage/free/model/Layer;->getWidth()I

    move-result v3

    .line 508
    .local v3, "layerW":I
    invoke-virtual {p1}, Lcom/sonymobile/china/collage/free/model/Layer;->getHeight()I

    move-result v2

    .line 510
    .local v2, "layerH":I
    invoke-virtual {p1}, Lcom/sonymobile/china/collage/free/model/Layer;->getX()F

    move-result v6

    .line 511
    .local v6, "startX":F
    invoke-virtual {p1}, Lcom/sonymobile/china/collage/free/model/Layer;->getY()F

    move-result v7

    .line 513
    .local v7, "startY":F
    int-to-float v8, v3

    div-float/2addr v8, v9

    add-float/2addr v8, v6

    mul-float v0, v8, p2

    .line 514
    .local v0, "centerX":F
    int-to-float v8, v2

    div-float/2addr v8, v9

    add-float/2addr v8, v7

    mul-float v1, v8, p2

    .line 516
    .local v1, "centerY":F
    invoke-virtual {p1}, Lcom/sonymobile/china/collage/free/model/Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 517
    .local v5, "socW":I
    invoke-virtual {p1}, Lcom/sonymobile/china/collage/free/model/Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 519
    .local v4, "socH":I
    int-to-float v8, v5

    div-float/2addr v8, v9

    sub-float v6, v0, v8

    .line 520
    int-to-float v8, v4

    div-float/2addr v8, v9

    sub-float v7, v1, v8

    .line 522
    invoke-virtual {p1, v6, v7}, Lcom/sonymobile/china/collage/free/model/Layer;->setPosition(FF)V

    .line 524
    invoke-virtual {p1}, Lcom/sonymobile/china/collage/free/model/Layer;->getScaleFactor()F

    move-result v8

    mul-float/2addr v8, p2

    invoke-virtual {p1, v8}, Lcom/sonymobile/china/collage/free/model/Layer;->setScaleFactor(F)V

    .line 525
    return-void
.end method


# virtual methods
.method protected getScreenshotBitmap()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    .line 466
    iget-object v11, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    if-nez v11, :cond_1

    .line 467
    const/4 v3, 0x0

    .line 497
    :cond_0
    return-object v3

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->getPerferSaveSize()I

    move-result v6

    .line 472
    .local v6, "largeSide":I
    iget-object v11, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v11}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getHeight()I

    move-result v4

    .line 473
    .local v4, "height":I
    iget-object v11, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v11}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getWidth()I

    move-result v10

    .line 475
    .local v10, "width":I
    int-to-float v11, v6

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-float v12, v12

    div-float v9, v11, v12

    .line 476
    .local v9, "scale":F
    int-to-float v11, v10

    mul-float/2addr v11, v9

    float-to-int v11, v11

    int-to-float v12, v4

    mul-float/2addr v12, v9

    float-to-int v12, v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 478
    .local v3, "destBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 479
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 480
    .local v0, "bitmapPaint":Landroid/graphics/Paint;
    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 482
    iget-object v11, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v11}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getBackgroundLayer()Lcom/sonymobile/china/collage/free/model/BackgroundLayer;

    move-result-object v1

    .line 483
    .local v1, "bkgrLayer":Lcom/sonymobile/china/collage/free/model/Layer;
    if-eqz v1, :cond_2

    .line 484
    invoke-direct {p0, v1, v9}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->scaleLayer(Lcom/sonymobile/china/collage/free/model/Layer;F)V

    .line 485
    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/china/collage/free/model/BackgroundLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 488
    :cond_2
    iget-object v11, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v11}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getLayerCount()I

    move-result v8

    .line 489
    .local v8, "layerCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_0

    .line 490
    iget-object v11, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v11, v5}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getLayer(I)Lcom/sonymobile/china/collage/free/model/Layer;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/china/collage/free/model/ImageLayer;

    .line 491
    .local v7, "layer":Lcom/sonymobile/china/collage/free/model/ImageLayer;
    invoke-virtual {v7}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getForNew()Z

    move-result v11

    if-nez v11, :cond_3

    .line 492
    invoke-direct {p0, v7, v9}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->scaleLayer(Lcom/sonymobile/china/collage/free/model/Layer;F)V

    .line 493
    invoke-virtual {v7, v2, v0}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 494
    invoke-virtual {v7, v2}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->drawBorder(Landroid/graphics/Canvas;)V

    .line 489
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/sonymobile/china/collage/BaseCollageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 199
    invoke-direct {p0}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->init()V

    .line 201
    sget-object v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 299
    if-nez p2, :cond_0

    .line 330
    :goto_0
    return-void

    .line 302
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 329
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/sonymobile/china/collage/BaseCollageFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 304
    :pswitch_0
    if-eqz p3, :cond_1

    .line 305
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 307
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 308
    new-array v1, v4, [Landroid/net/Uri;

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->addPicture([Landroid/net/Uri;)V

    goto :goto_1

    .line 316
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_1
    sget-object v1, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult REQUEST_PICK_IMAGE_FOR_EMPTY"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    if-eqz p3, :cond_1

    .line 319
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 321
    .restart local v0    # "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 322
    new-array v1, v4, [Landroid/net/Uri;

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->addPicture([Landroid/net/Uri;)V

    goto :goto_1

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    sget-object v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0, p1}, Lcom/sonymobile/china/collage/BaseCollageFragment;->onAttach(Landroid/app/Activity;)V

    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/sonymobile/china/collage/BaseCollageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    sget-object v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 190
    .local v0, "fragmentView":Landroid/view/ViewGroup;
    sget-object v1, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-super {p0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->onDestroy()V

    .line 157
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    invoke-super {p0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->onDestroyView()V

    .line 169
    sget-object v1, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-super {p0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->onDetach()V

    .line 77
    return-void
.end method

.method public onPictureAdded(Ljava/util/List;)V
    .locals 2
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
    .line 458
    .local p1, "pictures":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getTopLayer()Lcom/sonymobile/china/collage/free/model/Layer;

    move-result-object v0

    .line 459
    .local v0, "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 460
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->insertBitmap(Landroid/graphics/Bitmap;Lcom/sonymobile/china/collage/free/model/Layer;)V

    .line 462
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->onResume()V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mActionRecevierState:Z

    .line 177
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->onStop()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mActionRecevierState:Z

    .line 183
    return-void
.end method

.method public updateBackground(Ljava/lang/String;)V
    .locals 14
    .param p1, "bgId"    # Ljava/lang/String;

    .prologue
    .line 406
    const/4 v1, 0x0

    .line 407
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getWidth()I

    move-result v13

    .line 408
    .local v13, "width":I
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getHeight()I

    move-result v7

    .line 409
    .local v7, "height":I
    if-le v13, v7, :cond_2

    const/4 v8, 0x1

    .line 410
    .local v8, "isLand":Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 411
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 412
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 414
    .local v6, "bgIds":[Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBackground width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    if-eqz v8, :cond_3

    .line 417
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v6, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 436
    .end local v6    # "bgIds":[Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 454
    :cond_1
    :goto_2
    return-void

    .line 409
    .end local v8    # "isLand":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 420
    .restart local v6    # "bgIds":[Ljava/lang/String;
    .restart local v8    # "isLand":Z
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 424
    .end local v6    # "bgIds":[Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 425
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lcom/sonymobile/china/collage/utils/ImageUtils;->getBgByFill(ILandroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 429
    :cond_5
    if-eqz v8, :cond_6

    .line 430
    iget-object v2, p0, Lcom/sonymobile/china/collage/BaseCollageFragment;->mInfoInterface:Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;

    invoke-interface {v2}, Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;->getBgPicBitmaps()[Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    goto :goto_1

    .line 432
    :cond_6
    iget-object v2, p0, Lcom/sonymobile/china/collage/BaseCollageFragment;->mInfoInterface:Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;

    invoke-interface {v2}, Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;->getBgPicBitmaps()[Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v2, v3

    goto :goto_1

    .line 439
    :cond_7
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getBackgroundLayer()Lcom/sonymobile/china/collage/free/model/BackgroundLayer;

    move-result-object v0

    .line 440
    .local v0, "bgLayer":Lcom/sonymobile/china/collage/free/model/BackgroundLayer;
    if-nez v0, :cond_8

    .line 442
    sget-object v2, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    const-string v3, "initialize create BackgroundLayer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v0, Lcom/sonymobile/china/collage/free/model/BackgroundLayer;

    .end local v0    # "bgLayer":Lcom/sonymobile/china/collage/free/model/BackgroundLayer;
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getNewIndex()I

    move-result v2

    invoke-direct {v0, v2, v13, v7}, Lcom/sonymobile/china/collage/free/model/BackgroundLayer;-><init>(III)V

    .line 445
    .restart local v0    # "bgLayer":Lcom/sonymobile/china/collage/free/model/BackgroundLayer;
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v2, v0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->setBackgroundLayer(Lcom/sonymobile/china/collage/free/model/BackgroundLayer;)V

    .line 447
    :cond_8
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 448
    .local v10, "picW":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 449
    .local v9, "picH":I
    int-to-float v2, v13

    int-to-float v3, v10

    div-float v5, v2, v3

    .line 450
    .local v5, "scale":F
    div-int/lit8 v2, v13, 0x2

    div-int/lit8 v3, v10, 0x2

    sub-int v11, v2, v3

    .line 451
    .local v11, "startX":I
    div-int/lit8 v2, v7, 0x2

    div-int/lit8 v3, v9, 0x2

    sub-int v12, v2, v3

    .line 452
    .local v12, "startY":I
    int-to-float v2, v11

    int-to-float v3, v12

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/china/collage/free/model/BackgroundLayer;->resetBitmap(Landroid/graphics/Bitmap;FFFF)V

    .line 453
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->notifyChanged()V

    goto :goto_2
.end method

.method public updateTemplate(ILjava/lang/String;)V
    .locals 17
    .param p1, "xmlId"    # I
    .param p2, "bgId"    # Ljava/lang/String;

    .prologue
    .line 335
    sget-object v14, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateTemplate "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", bgId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 338
    .local v2, "activity":Landroid/app/Activity;
    if-nez v2, :cond_1

    .line 339
    sget-object v15, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateTemplate in free fail getActivity() == null:"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    if-nez v14, :cond_0

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_1
    return-void

    .line 339
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 344
    :cond_1
    const v14, 0x7f0c008a

    invoke-virtual {v2, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 345
    .local v6, "freeCollageViewContainer":Landroid/view/ViewGroup;
    if-nez v6, :cond_2

    .line 347
    sget-object v14, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    const-string v15, "can\'t retrive the view container in updateTemplate"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 351
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mTotalW:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mTotalH:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/sonymobile/china/collage/svg/SVGParser;->getInstance(Landroid/content/Context;II)Lcom/sonymobile/china/collage/svg/SVGParser;

    move-result-object v11

    .line 353
    .local v11, "parser":Lcom/sonymobile/china/collage/svg/SVGParser;
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/sonymobile/china/collage/svg/SVGParser;->parseSVG(I)Ljava/util/List;

    move-result-object v12

    .line 354
    .local v12, "pics":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/china/collage/ImageElement;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 355
    .local v4, "cnt":I
    if-nez v4, :cond_3

    .line 357
    sget-object v14, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "nothing has been parsed from xmlId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 361
    :cond_3
    const/4 v14, 0x0

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/china/collage/ImageElement;

    .line 362
    .local v5, "element":Lcom/sonymobile/china/collage/ImageElement;
    invoke-virtual {v5}, Lcom/sonymobile/china/collage/ImageElement;->getParentWidth()I

    move-result v10

    .line 363
    .local v10, "pWidth":I
    invoke-virtual {v5}, Lcom/sonymobile/china/collage/ImageElement;->getParentHeight()I

    move-result v9

    .line 364
    .local v9, "pHeight":I
    new-instance v14, Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-direct {v14, v10, v9}, Lcom/sonymobile/china/collage/free/model/FreeCollage;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    .line 365
    new-instance v14, Lcom/sonymobile/china/collage/free/FreeCollageView;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/sonymobile/china/collage/free/FreeCollageView;-><init>(Landroid/content/Context;Lcom/sonymobile/china/collage/free/model/FreeCollage;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollageView:Lcom/sonymobile/china/collage/free/FreeCollageView;

    .line 367
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/china/collage/BaseCollageFragment;->mInfoInterface:Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;

    invoke-interface {v14}, Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;->getPicBitmaps()Ljava/util/ArrayList;

    move-result-object v3

    .line 368
    .local v3, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 371
    .local v13, "size":I
    sget-object v14, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bitmaps size:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", pic size"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", w:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", h:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    add-int/lit8 v8, v4, -0x1

    .local v8, "index":I
    :goto_2
    if-ltz v8, :cond_5

    .line 377
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sonymobile/china/collage/ImageElement;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->convertToLayer(Lcom/sonymobile/china/collage/ImageElement;)Lcom/sonymobile/china/collage/free/model/ImageLayer;

    move-result-object v7

    .line 378
    .local v7, "imageLayer":Lcom/sonymobile/china/collage/free/model/ImageLayer;
    if-eqz v7, :cond_4

    .line 379
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v14, v7}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->addLayer(Lcom/sonymobile/china/collage/free/model/Layer;)V

    .line 381
    sget-object v14, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateTemplate addLayer:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->getId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", layerCnt:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getLayerCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-le v13, v8, :cond_4

    .line 385
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v7}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->insertBitmap(Landroid/graphics/Bitmap;Lcom/sonymobile/china/collage/free/model/Layer;)V

    .line 376
    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 389
    .end local v7    # "imageLayer":Lcom/sonymobile/china/collage/free/model/ImageLayer;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->updateBackground(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 391
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollageView:Lcom/sonymobile/china/collage/free/FreeCollageView;

    invoke-virtual {v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollageView:Lcom/sonymobile/china/collage/free/FreeCollageView;

    invoke-virtual {v14, v10, v9}, Lcom/sonymobile/china/collage/free/FreeCollageView;->setSize(II)V

    .line 393
    invoke-virtual {v6}, Landroid/view/ViewGroup;->invalidate()V

    .line 395
    sget-object v14, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateTemplate layerCnt:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getLayerCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", pWidth:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", pHeight:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
