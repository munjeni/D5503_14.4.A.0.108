.class Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;
.super Ljava/lang/Object;
.source "PanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/filtershow/PanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UtilityPanel"
.end annotation


# instance fields
.field firstTimeCropDisplayed:Z

.field private mAspectButton:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mEffectName:Ljava/lang/String;

.field private mFaceClickListener:Landroid/view/View$OnClickListener;

.field private mParameterValue:I

.field private mSelected:Z

.field private mShowParameterValue:Z

.field private final mTextView:Landroid/widget/TextView;

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "textView"    # Landroid/view/View;
    .param p5, "aspectButton"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 201
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mSelected:Z

    .line 191
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mEffectName:Ljava/lang/String;

    .line 193
    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mParameterValue:I

    .line 195
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mShowParameterValue:Z

    .line 197
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mAspectButton:Landroid/view/View;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->firstTimeCropDisplayed:Z

    .line 451
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$6;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$6;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mFaceClickListener:Landroid/view/View$OnClickListener;

    .line 202
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    .line 203
    iput-object p3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    .line 204
    check-cast p4, Landroid/widget/TextView;

    .end local p4    # "textView":Landroid/view/View;
    iput-object p4, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mTextView:Landroid/widget/TextView;

    .line 205
    iput-object p5, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mAspectButton:Landroid/view/View;

    .line 206
    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;IIII)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 182
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->uiToParameter(IIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    return-object v0
.end method

.method private getFaceBmpList(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;)Ljava/util/ArrayList;
    .locals 27
    .param p1, "styleFilter"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getSmallFaceRects()Ljava/util/ArrayList;

    move-result-object v19

    .line 474
    .local v19, "smallFaceRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/facebeauty/engine/FaceRect;>;"
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 475
    .local v6, "destination":Landroid/graphics/Rect;
    const/16 v13, 0xc

    .line 476
    .local v13, "margin":I
    const/16 v22, 0x18

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v23

    sub-int v23, v23, v13

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v6, v13, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 478
    const/4 v7, 0x0

    .line 479
    .local v7, "faceBmp":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 480
    .local v3, "allFaceBmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 481
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_a

    .line 482
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_a

    .line 483
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .line 484
    .local v17, "rect":Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->width()I

    move-result v22

    div-int/lit8 v21, v22, 0x6

    .line 485
    .local v21, "wOffset":I
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->height()I

    move-result v22

    mul-int v22, v22, v21

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->width()I

    move-result v23

    div-int v10, v22, v23

    .line 486
    .local v10, "hOffset":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->left:I

    move/from16 v22, v0

    div-int/lit8 v23, v21, 0x2

    sub-int v12, v22, v23

    .line 487
    .local v12, "left":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->top:I

    move/from16 v20, v0

    .line 488
    .local v20, "top":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->right:I

    move/from16 v22, v0

    div-int/lit8 v23, v21, 0x2

    add-int v18, v22, v23

    .line 489
    .local v18, "right":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->bottom:I

    move/from16 v22, v0

    add-int v5, v22, v10

    .line 491
    .local v5, "bottom":I
    if-gez v12, :cond_1

    .line 492
    sub-int v18, v18, v12

    .line 493
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 494
    :cond_0
    const/4 v12, 0x0

    .line 496
    :cond_1
    if-gez v20, :cond_3

    .line 497
    sub-int v5, v5, v20

    .line 498
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    if-le v5, v0, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 499
    :cond_2
    const/16 v20, 0x0

    .line 501
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    .line 502
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    sub-int v22, v22, v18

    add-int v12, v12, v22

    .line 503
    if-gez v12, :cond_4

    const/4 v12, 0x0

    .line 504
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 506
    :cond_5
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    if-le v5, v0, :cond_7

    .line 507
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    sub-int v22, v22, v5

    add-int v20, v20, v22

    .line 508
    if-gez v20, :cond_6

    const/16 v20, 0x0

    .line 509
    :cond_6
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 511
    :cond_7
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3f800000

    mul-float v22, v22, v23

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v16, v22, v23

    .line 512
    .local v16, "propDes":F
    sub-int v22, v18, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3f800000

    mul-float v22, v22, v23

    sub-int v23, v5, v20

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v15, v22, v23

    .line 513
    .local v15, "prop":F
    cmpl-float v22, v15, v16

    if-lez v22, :cond_9

    .line 514
    sub-int v22, v18, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-int v23, v5, v20

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v16

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v14, v0

    .line 515
    .local v14, "offset":I
    div-int/lit8 v22, v14, 0x2

    add-int v12, v12, v22

    .line 516
    div-int/lit8 v22, v14, 0x2

    sub-int v18, v18, v22

    .line 522
    .end local v14    # "offset":I
    :cond_8
    :goto_1
    sub-int v22, v18, v12

    sub-int v23, v5, v20

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v22 .. v24}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 524
    new-instance v9, Landroid/graphics/Rect;

    move/from16 v0, v20

    move/from16 v1, v18

    invoke-direct {v9, v12, v0, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 525
    .local v9, "faceRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 526
    .local v8, "faceCanvas":Landroid/graphics/Canvas;
    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v4, v9, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 528
    invoke-virtual {v3, v11, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 482
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 517
    .end local v8    # "faceCanvas":Landroid/graphics/Canvas;
    .end local v9    # "faceRect":Landroid/graphics/Rect;
    :cond_9
    cmpg-float v22, v15, v16

    if-gez v22, :cond_8

    .line 518
    sub-int v22, v5, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-int v23, v18, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f800000

    mul-float v23, v23, v24

    div-float v23, v23, v16

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v14, v0

    .line 519
    .restart local v14    # "offset":I
    div-int/lit8 v22, v14, 0x2

    add-int v20, v20, v22

    .line 520
    div-int/lit8 v22, v14, 0x2

    sub-int v5, v5, v22

    goto :goto_1

    .line 531
    .end local v5    # "bottom":I
    .end local v10    # "hOffset":I
    .end local v11    # "i":I
    .end local v12    # "left":I
    .end local v14    # "offset":I
    .end local v15    # "prop":F
    .end local v16    # "propDes":F
    .end local v17    # "rect":Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    .end local v18    # "right":I
    .end local v20    # "top":I
    .end local v21    # "wOffset":I
    :cond_a
    return-object v3
.end method

.method private parameterToUI(IIII)I
    .locals 2
    .param p1, "parameter"    # I
    .param p2, "minp"    # I
    .param p3, "maxp"    # I
    .param p4, "uimax"    # I

    .prologue
    .line 397
    sub-int v0, p1, p2

    mul-int/2addr v0, p4

    sub-int v1, p3, p2

    div-int/2addr v0, v1

    return v0
.end method

.method private uiToParameter(IIII)I
    .locals 1
    .param p1, "ui"    # I
    .param p2, "minp"    # I
    .param p3, "maxp"    # I
    .param p4, "uimax"    # I

    .prologue
    .line 400
    sub-int v0, p3, p2

    mul-int/2addr v0, p1

    div-int/2addr v0, p4

    add-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method public disableEditToolbar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 536
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    const v1, 0x7f0c0035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    const v1, 0x7f0c0038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    const v1, 0x7f0c0041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 540
    return-void
.end method

.method public hideAspectButtons()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mAspectButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mAspectButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    :cond_0
    return-void
.end method

.method public onNewValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 281
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mParameterValue:I

    .line 282
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->updateText()V

    .line 283
    return-void
.end method

.method public select()Landroid/view/ViewPropertyAnimator;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 581
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$000(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 583
    .local v1, "h":I
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setX(F)V

    .line 584
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 585
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->updateText()V

    .line 586
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 587
    .local v0, "anim":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 588
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 589
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mSelected:Z

    .line 590
    return-object v0
.end method

.method public selected()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mSelected:Z

    return v0
.end method

.method public setAspectButton(I)V
    .locals 9
    .param p1, "itemId"    # I

    .prologue
    const/high16 v8, 0x41800000

    const/high16 v7, 0x41100000

    const/high16 v6, 0x40800000

    const/high16 v5, 0x40400000

    const/high16 v4, 0x3f800000

    .line 213
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$400(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v2

    instance-of v2, v2, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$400(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;

    .line 215
    .local v0, "imageCrop":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;
    packed-switch p1, :pswitch_data_0

    .line 264
    :goto_0
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 266
    .end local v0    # "imageCrop":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;
    :cond_0
    return-void

    .line 217
    .restart local v0    # "imageCrop":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;
    :pswitch_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f07001e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "t":Ljava/lang/String;
    invoke-virtual {v0, v4, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 220
    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    .end local v1    # "t":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f07001f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .restart local v1    # "t":Ljava/lang/String;
    invoke-virtual {v0, v6, v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 227
    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    .end local v1    # "t":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f070020

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    .restart local v1    # "t":Ljava/lang/String;
    invoke-virtual {v0, v5, v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 234
    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    .end local v1    # "t":Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f070025

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    .restart local v1    # "t":Ljava/lang/String;
    invoke-virtual {v0, v7, v8}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 240
    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    .end local v1    # "t":Ljava/lang/String;
    :pswitch_4
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f070024

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    .restart local v1    # "t":Ljava/lang/String;
    invoke-virtual {v0, v8, v7}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 246
    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .end local v1    # "t":Ljava/lang/String;
    :pswitch_5
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f070026

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 252
    .restart local v1    # "t":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->applyClear()V

    .line 253
    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    .end local v1    # "t":Ljava/lang/String;
    :pswitch_6
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f070027

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 259
    .restart local v1    # "t":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->applyOriginal()V

    .line 260
    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c003a
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setCropToolbar()V
    .locals 12

    .prologue
    .line 296
    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    const v11, 0x7f0c0038

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 297
    .local v8, "editButtonList":Landroid/view/View;
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->hideAspectButtons()V

    .line 300
    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v10}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$400(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v9

    check-cast v9, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;

    .line 301
    .local v9, "imageCrop":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;
    invoke-virtual {v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->addTempPreset()V

    .line 302
    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$1;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;)V

    .line 308
    .local v1, "cropOnClickListener":Landroid/view/View$OnClickListener;
    const v10, 0x7f0c003a

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 310
    .local v0, "cropFreeButton":Landroid/widget/ImageButton;
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const v10, 0x7f0c003b

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 313
    .local v2, "cropOriginalButton":Landroid/widget/ImageButton;
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    const v10, 0x7f0c003c

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 316
    .local v4, "crop_1_1_Button":Landroid/widget/ImageButton;
    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    const v10, 0x7f0c003d

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 319
    .local v5, "crop_3_4_Button":Landroid/widget/ImageButton;
    invoke-virtual {v5, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    const v10, 0x7f0c003e

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 322
    .local v6, "crop_4_3_Button":Landroid/widget/ImageButton;
    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    const v10, 0x7f0c0040

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 325
    .local v3, "crop_16_9_Button":Landroid/widget/ImageButton;
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    const v10, 0x7f0c003f

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 328
    .local v7, "crop_9_16_Button":Landroid/widget/ImageButton;
    invoke-virtual {v7, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    return-void
.end method

.method public setEffectName(Ljava/lang/String;)V
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mEffectName:Ljava/lang/String;

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 288
    return-void
.end method

.method public setRotateToolbar()V
    .locals 9

    .prologue
    .line 332
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    const v8, 0x7f0c0041

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 333
    .local v1, "editButtonList":Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mTextView:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->hideAspectButtons()V

    .line 336
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v7}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$400(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;

    .line 337
    .local v4, "imageRotate":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$2;

    invoke-direct {v0, p0, v4}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$2;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;)V

    .line 344
    .local v0, "cropOnClickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->addTempPreset()V

    .line 345
    const v7, 0x7f0c0043

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 347
    .local v5, "rotareLeftButton":Landroid/widget/ImageButton;
    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    const v7, 0x7f0c0044

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 350
    .local v6, "rotareRightButton":Landroid/widget/ImageButton;
    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    const v7, 0x7f0c0046

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 352
    .local v3, "flipVButton":Landroid/widget/ImageButton;
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    const v7, 0x7f0c0045

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 354
    .local v2, "flipHButton":Landroid/widget/ImageButton;
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    return-void
.end method

.method public setSelectFaceToolbar(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;)V
    .locals 17
    .param p1, "styleFilter"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    .prologue
    .line 404
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    const v16, 0x7f0c0037

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 405
    .local v3, "applyButton":Landroid/view/View;
    new-instance v15, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$4;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;)V

    invoke-virtual {v3, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    const v16, 0x7f0c0035

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 413
    .local v14, "styleSelectList":Landroid/view/View;
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
    invoke-static {v15}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getAllFaceRec()Ljava/util/ArrayList;

    move-result-object v2

    .line 415
    .local v2, "allFaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;>;"
    new-instance v5, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$5;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;)V

    .line 421
    .local v5, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;>;"
    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
    invoke-static {v15}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090043

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 424
    .local v9, "facePadding":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
    invoke-static {v15}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f09001c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 426
    .local v4, "buttonWidth":I
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 427
    .local v13, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13, v9, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 428
    const/4 v8, 0x0

    .line 429
    .local v8, "faceBmp":Landroid/graphics/Bitmap;
    const v15, 0x7f0c0036

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 430
    .local v12, "listFaces":Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 431
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->getFaceBmpList(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;)Ljava/util/ArrayList;

    move-result-object v1

    .line 432
    .local v1, "allFaceBmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v10, v15, :cond_1

    .line 433
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;

    .line 434
    .local v11, "item":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "faceBmp":Landroid/graphics/Bitmap;
    check-cast v8, Landroid/graphics/Bitmap;

    .line 435
    .restart local v8    # "faceBmp":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 436
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
    invoke-static {v15}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    move-result-object v15

    invoke-direct {v7, v15}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 437
    .local v7, "fView":Landroid/widget/ImageButton;
    invoke-virtual {v11}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->isSelected()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v11}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->getVisibility()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 438
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 440
    :cond_0
    invoke-virtual {v7, v13}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 442
    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
    invoke-static {v15}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f02007d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mFaceClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    invoke-virtual {v12, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 432
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 449
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "fView":Landroid/widget/ImageButton;
    .end local v11    # "item":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    :cond_1
    return-void
.end method

.method public setShowParameter(Z)V
    .locals 0
    .param p1, "s"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mShowParameterValue:Z

    .line 292
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->updateText()V

    .line 293
    return-void
.end method

.method public setStraightenToolbar()V
    .locals 9

    .prologue
    .line 359
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    const v7, 0x7f0c0047

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 360
    .local v0, "editButtonList":Landroid/view/View;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mTextView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->hideAspectButtons()V

    .line 363
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v6}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$400(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;

    .line 364
    .local v1, "imageStraighten":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->addTempPreset()V

    .line 365
    new-instance v4, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$3;

    invoke-direct {v4, p0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$3;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;)V

    .line 386
    .local v4, "seekbarListener":Landroid/widget/SeekBar$OnSeekBarChangeListener;
    const v6, 0x7f0c004a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 388
    .local v5, "straightenSeekBar":Landroid/widget/SeekBar;
    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 389
    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    .line 390
    .local v3, "seekMax":I
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->getLocalStraighten()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->getMinStraightenAngle()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->getMaxStraightenAngle()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {p0, v6, v7, v8, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->parameterToUI(IIII)I

    move-result v2

    .line 393
    .local v2, "progress":I
    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 395
    return-void
.end method

.method public showAspectButtons()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mAspectButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mAspectButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :cond_0
    return-void
.end method

.method public unselect()Landroid/view/ViewPropertyAnimator;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 559
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 560
    .local v0, "anim":Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 561
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 562
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$000(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 563
    .local v1, "h":I
    neg-int v2, v1

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 564
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$7;

    invoke-direct {v3, p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$7;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 570
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mSelected:Z

    .line 571
    return-object v0
.end method

.method public updateText()V
    .locals 4

    .prologue
    .line 543
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f07001d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "apply":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mShowParameterValue:Z

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mEffectName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mParameterValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mEffectName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
