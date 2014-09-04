.class public Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;
.super Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
.source "ImageSmallFilter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final SMALLFILTER_TYPE_FX:I = 0x1

.field public static final SMALLFILTER_TYPE_STYLE:I

.field static mBackgroundColor:I

.field static mMargin:I

.field static mTextMargin:I


# instance fields
.field private final mDestination:Landroid/graphics/Rect;

.field protected mImageFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

.field protected mIsSelected:Z

.field private mNullFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

.field protected final mPaint:Landroid/graphics/Paint;

.field protected final mSelectedBackgroundColor:I

.field mSelectedFaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/android/facebeauty/engine/FaceRect;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTextColor:I

.field private mSetBorder:Z

.field private mShowTitle:Z

.field protected final mTextColor:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0xc

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    .line 72
    const/16 v0, 0x8

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mTextMargin:I

    .line 74
    const v0, -0xffff01

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mBackgroundColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 108
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 61
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mShowTitle:Z

    .line 63
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSetBorder:Z

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    .line 67
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    .line 76
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSelectedBackgroundColor:I

    .line 78
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mTextColor:I

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mDestination:Landroid/graphics/Rect;

    .line 86
    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mType:I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSelectedFaces:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSelectedTextColor:I

    .line 111
    invoke-virtual {p0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 61
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mShowTitle:Z

    .line 63
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSetBorder:Z

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    .line 67
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    .line 76
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSelectedBackgroundColor:I

    .line 78
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mTextColor:I

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mDestination:Landroid/graphics/Rect;

    .line 86
    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mType:I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSelectedFaces:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method private checkRectCount(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/android/facebeauty/engine/FaceRect;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, "smallFaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/facebeauty/engine/FaceRect;>;"
    .local p2, "bigFaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 434
    .local v19, "smallCount":I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 435
    .local v5, "bigCount":I
    move/from16 v0, v19

    if-ne v0, v5, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v7, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/facebeauty/engine/FaceRect;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v18, "smallCenters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v4, "bigCenters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOriginalBitmapSmall()Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f800000

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v16, v20, v21

    .line 443
    .local v16, "scaleW":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOriginalBitmapSmall()Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f800000

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 446
    .local v15, "scaleH":F
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .line 447
    .local v13, "rect":Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    new-instance v20, Landroid/graphics/Point;

    iget v0, v13, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->left:I

    move/from16 v21, v0

    invoke-virtual {v13}, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->width()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    iget v0, v13, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->top:I

    move/from16 v22, v0

    invoke-virtual {v13}, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->height()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    invoke-direct/range {v20 .. v22}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 449
    .end local v13    # "rect":Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;

    .line 450
    .local v14, "rectItem":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    invoke-virtual {v14}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->getFaceRect()Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    move-result-object v13

    .line 451
    .restart local v13    # "rect":Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    new-instance v20, Landroid/graphics/Point;

    iget v0, v13, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->left:I

    move/from16 v21, v0

    invoke-virtual {v13}, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->width()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v16

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    iget v0, v13, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->top:I

    move/from16 v22, v0

    invoke-virtual {v13}, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->height()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v15

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 456
    .end local v13    # "rect":Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    .end local v14    # "rectItem":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    :cond_3
    move/from16 v0, v19

    if-le v0, v5, :cond_0

    .line 457
    const/4 v12, 0x0

    .line 458
    .local v12, "offsetW":I
    const/4 v11, 0x0

    .line 459
    .local v11, "offsetH":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 461
    .local v6, "centerRect":Landroid/graphics/Rect;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    move/from16 v0, v19

    if-ge v8, v0, :cond_6

    .line 462
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->width()I

    move-result v20

    div-int/lit8 v12, v20, 0x4

    .line 463
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->height()I

    move-result v20

    div-int/lit8 v11, v20, 0x4

    .line 464
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Point;

    .line 465
    .local v17, "smallCenterPoint":Landroid/graphics/Point;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    div-int/lit8 v21, v12, 0x2

    sub-int v20, v20, v21

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    div-int/lit8 v22, v11, 0x2

    sub-int v21, v21, v22

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    div-int/lit8 v23, v12, 0x2

    add-int v22, v22, v23

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    div-int/lit8 v24, v11, 0x2

    add-int v23, v23, v24

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 467
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_4
    if-ge v10, v5, :cond_5

    .line 468
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Point;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Point;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 469
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 461
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 474
    .end local v10    # "j":I
    .end local v17    # "smallCenterPoint":Landroid/graphics/Point;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 475
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method private mapFaceRects()V
    .locals 11

    .prologue
    .line 385
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getAllFaceRec()Ljava/util/ArrayList;

    move-result-object v0

    .line 386
    .local v0, "allFaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;>;"
    if-nez v0, :cond_1

    .line 387
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSmallFaceRects:Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSelectedFaces:Ljava/util/ArrayList;

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter$1;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;)V

    .line 397
    .local v1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;>;"
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 400
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v7, "selectedIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 402
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;

    .line 403
    .local v5, "item":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    invoke-virtual {v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->getVisibility()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 404
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 409
    .end local v5    # "item":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    :cond_3
    new-instance v6, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter$2;

    invoke-direct {v6, p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter$2;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;)V

    .line 416
    .local v6, "newComp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/android/facebeauty/engine/FaceRect;>;"
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSmallFaceRects:Ljava/util/ArrayList;

    invoke-static {v8, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 418
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSmallFaceRects:Ljava/util/ArrayList;

    invoke-direct {p0, v8, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->checkRectCount(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 420
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSmallFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSmallFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_5

    .line 421
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_4

    .line 422
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSelectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 424
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 425
    .local v4, "index":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSelectedFaces:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSmallFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 428
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "index":Ljava/lang/Integer;
    :cond_5
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSmallFaceRects:Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSelectedFaces:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public static setDefaultBackgroundColor(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 99
    sput p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mBackgroundColor:I

    .line 100
    return-void
.end method

.method public static setMargin(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 91
    sput p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    .line 92
    return-void
.end method

.method public static setTextMargin(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 95
    sput p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mTextMargin:I

    .line 96
    return-void
.end method


# virtual methods
.method protected createNullStyleBitmap(II)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 322
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 323
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 324
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 325
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2, v5, v5, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 326
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 327
    return-object v0
.end method

.method protected createSelectBitmap(II)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 331
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSelectedTextColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 332
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 333
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 334
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2, v5, v5, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 335
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 336
    return-object v0
.end method

.method public detect()V
    .locals 5

    .prologue
    .line 483
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mType:I

    if-nez v3, :cond_1

    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    if-eqz v3, :cond_0

    .line 486
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOriginalBitmapSmall()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 488
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 498
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 491
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 492
    .local v1, "bitmapLarge":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 493
    .local v2, "scale":F
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSmallFaceRects:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSmallFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 494
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getBaseFaceRects()[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    move-result-object v4

    invoke-static {v3, v0, v2, v4}, Lcom/sonymobile/china/photoeditor/util/StyleUtil;->detectFaces(Landroid/content/Context;Landroid/graphics/Bitmap;F[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSmallFaceRects:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "image"    # Landroid/graphics/Bitmap;
    .param p3, "destination"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v7, 0x40000000

    .line 340
    if-eqz p2, :cond_0

    .line 341
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 342
    .local v1, "iw":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 343
    .local v0, "ih":I
    const/4 v4, 0x0

    .line 344
    .local v4, "x":I
    const/4 v5, 0x0

    .line 345
    .local v5, "y":I
    const/4 v2, 0x0

    .line 346
    .local v2, "size":I
    const/4 v3, 0x0

    .line 347
    .local v3, "source":Landroid/graphics/Rect;
    if-le v1, v0, :cond_1

    .line 348
    move v2, v0

    .line 349
    sub-int v6, v1, v2

    int-to-float v6, v6

    div-float/2addr v6, v7

    float-to-int v4, v6

    .line 350
    const/4 v5, 0x0

    .line 356
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "source":Landroid/graphics/Rect;
    add-int v6, v4, v2

    add-int v7, v5, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 357
    .restart local v3    # "source":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v3, p3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 359
    .end local v0    # "ih":I
    .end local v1    # "iw":I
    .end local v2    # "size":I
    .end local v3    # "source":Landroid/graphics/Rect;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_0
    return-void

    .line 352
    .restart local v0    # "ih":I
    .restart local v1    # "iw":I
    .restart local v2    # "size":I
    .restart local v3    # "source":Landroid/graphics/Rect;
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    :cond_1
    move v2, v1

    .line 353
    const/4 v4, 0x0

    .line 354
    sub-int v6, v0, v2

    int-to-float v6, v6

    div-float/2addr v6, v7

    float-to-int v5, v6

    goto :goto_0
.end method

.method public getImageFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    return-object v0
.end method

.method public getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    return-object v0
.end method

.method public getSetBorder()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSetBorder:Z

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mType:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    if-eqz v0, :cond_2

    .line 169
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mNullFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSetBorder:Z

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->useImageFilter(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Z)V

    .line 173
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->setDefaultFaceRectItem()V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    if-eqz v0, :cond_0

    .line 176
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mNullFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    if-nez v0, :cond_0

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-virtual {v0, p0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->useImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 31
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->requestFilteredImages()V

    .line 229
    sget v26, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mBackgroundColor:I

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v21

    .line 231
    .local v21, "textWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v26, v26, v21

    const/high16 v27, 0x40000000

    div-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v24, v0

    .line 232
    .local v24, "x":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getHeight()I

    move-result v25

    .line 234
    .local v25, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mDestination:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    sget v27, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    sget v28, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    mul-int/lit8 v28, v28, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v29

    sget v30, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    sub-int v29, v29, v30

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v30

    invoke-virtual/range {v26 .. v30}, Landroid/graphics/Rect;->set(IIII)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 239
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 240
    .local v7, "faceBmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mType:I

    move/from16 v26, v0

    if-nez v26, :cond_c

    if-eqz v5, :cond_c

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSmallFaceRects:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSmallFaceRects:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_0

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mapFaceRects()V

    .line 244
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSelectedFaces:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSelectedFaces:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_c

    .line 245
    new-instance v17, Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    invoke-direct/range {v17 .. v17}, Lcom/sonymobile/android/facebeauty/engine/FaceRect;-><init>()V

    .line 246
    .local v17, "rect":Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 247
    .local v18, "rectLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSelectedFaces:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .line 248
    .local v16, "rec":Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->left:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 249
    move-object/from16 v17, v16

    .line 250
    move-object/from16 v0, v16

    iget v0, v0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->left:I

    move/from16 v18, v0

    goto :goto_0

    .line 253
    .end local v16    # "rec":Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->width()I

    move-result v26

    div-int/lit8 v23, v26, 0x6

    .line 254
    .local v23, "wOffset":I
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->height()I

    move-result v26

    mul-int v26, v26, v23

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->width()I

    move-result v27

    div-int v10, v26, v27

    .line 255
    .local v10, "hOffset":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->left:I

    move/from16 v26, v0

    div-int/lit8 v27, v23, 0x2

    sub-int v12, v26, v27

    .line 256
    .local v12, "left":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->top:I

    move/from16 v22, v0

    .line 257
    .local v22, "top":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->right:I

    move/from16 v26, v0

    div-int/lit8 v27, v23, 0x2

    add-int v19, v26, v27

    .line 258
    .local v19, "right":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->bottom:I

    move/from16 v26, v0

    add-int v6, v26, v10

    .line 260
    .local v6, "bottom":I
    if-gez v12, :cond_4

    .line 261
    sub-int v19, v19, v12

    .line 262
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    move/from16 v0, v19

    move/from16 v1, v26

    if-le v0, v1, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 263
    :cond_3
    const/4 v12, 0x0

    .line 265
    :cond_4
    if-gez v22, :cond_6

    .line 266
    sub-int v6, v6, v22

    .line 267
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move/from16 v0, v26

    if-le v6, v0, :cond_5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 268
    :cond_5
    const/16 v22, 0x0

    .line 270
    :cond_6
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    move/from16 v0, v19

    move/from16 v1, v26

    if-le v0, v1, :cond_8

    .line 271
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    sub-int v26, v26, v19

    add-int v12, v12, v26

    .line 272
    if-gez v12, :cond_7

    const/4 v12, 0x0

    .line 273
    :cond_7
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 275
    :cond_8
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move/from16 v0, v26

    if-le v6, v0, :cond_a

    .line 276
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    sub-int v26, v26, v6

    add-int v22, v22, v26

    .line 277
    if-gez v22, :cond_9

    const/16 v22, 0x0

    .line 278
    :cond_9
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 280
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mDestination:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->width()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x3f800000

    mul-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mDestination:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v15, v26, v27

    .line 281
    .local v15, "propDes":F
    sub-int v26, v19, v12

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x3f800000

    mul-float v26, v26, v27

    sub-int v27, v6, v22

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v14, v26, v27

    .line 282
    .local v14, "prop":F
    cmpl-float v26, v14, v15

    if-lez v26, :cond_10

    .line 283
    sub-int v26, v19, v12

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-int v27, v6, v22

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v15

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v13, v0

    .line 284
    .local v13, "offset":I
    div-int/lit8 v26, v13, 0x2

    add-int v12, v12, v26

    .line 285
    div-int/lit8 v26, v13, 0x2

    sub-int v19, v19, v26

    .line 292
    .end local v13    # "offset":I
    :cond_b
    :goto_1
    sub-int v26, v19, v12

    sub-int v27, v6, v22

    sget-object v28, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v26 .. v28}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 293
    new-instance v9, Landroid/graphics/Rect;

    move/from16 v0, v22

    move/from16 v1, v19

    invoke-direct {v9, v12, v0, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 294
    .local v9, "faceRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 295
    .local v8, "faceCanvas":Landroid/graphics/Canvas;
    new-instance v26, Landroid/graphics/Rect;

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    invoke-direct/range {v26 .. v30}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v8, v5, v9, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 297
    move-object v5, v7

    .line 300
    .end local v6    # "bottom":I
    .end local v8    # "faceCanvas":Landroid/graphics/Canvas;
    .end local v9    # "faceRect":Landroid/graphics/Rect;
    .end local v10    # "hOffset":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "left":I
    .end local v14    # "prop":F
    .end local v15    # "propDes":F
    .end local v17    # "rect":Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    .end local v18    # "rectLeft":I
    .end local v19    # "right":I
    .end local v22    # "top":I
    .end local v23    # "wOffset":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleNull;

    move/from16 v26, v0

    if-eqz v26, :cond_d

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mDestination:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->width()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mDestination:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->createNullStyleBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 303
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mDestination:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v5, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 304
    if-eqz v7, :cond_e

    .line 305
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 307
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    move/from16 v26, v0

    if-eqz v26, :cond_f

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mDestination:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->width()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mDestination:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->createSelectBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 309
    .local v20, "selectBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mDestination:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mDestination:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 311
    .end local v20    # "selectBitmap":Landroid/graphics/Bitmap;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    const-string v27, "sst"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    sget v27, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mTextSize:I

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 313
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    move/from16 v26, v0

    if-eqz v26, :cond_11

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSelectedTextColor:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v26

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    sget v28, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mTextMargin:I

    sub-int v28, v25, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 319
    return-void

    .line 286
    .restart local v6    # "bottom":I
    .restart local v10    # "hOffset":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "left":I
    .restart local v14    # "prop":F
    .restart local v15    # "propDes":F
    .restart local v17    # "rect":Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    .restart local v18    # "rectLeft":I
    .restart local v19    # "right":I
    .restart local v22    # "top":I
    .restart local v23    # "wOffset":I
    :cond_10
    cmpg-float v26, v14, v15

    if-gez v26, :cond_b

    .line 287
    sub-int v26, v6, v22

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-int v27, v19, v12

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f800000

    mul-float v27, v27, v28

    div-float v27, v27, v15

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v13, v0

    .line 288
    .restart local v13    # "offset":I
    div-int/lit8 v26, v13, 0x2

    add-int v22, v22, v26

    .line 289
    div-int/lit8 v26, v13, 0x2

    sub-int v6, v6, v26

    goto/16 :goto_1

    .line 316
    .end local v6    # "bottom":I
    .end local v10    # "hOffset":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "left":I
    .end local v13    # "offset":I
    .end local v14    # "prop":F
    .end local v15    # "propDes":F
    .end local v17    # "rect":Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    .end local v18    # "rectLeft":I
    .end local v19    # "right":I
    .end local v22    # "top":I
    .end local v23    # "wOffset":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    const/16 v27, -0x1

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 151
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 152
    .local v1, "parentHeight":I
    sget v2, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mTextSize:I

    sget v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mTextPadding:I

    add-int v0, v2, v3

    .line 153
    .local v0, "h":I
    sub-int v2, v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setMeasuredDimension(II)V

    .line 154
    return-void
.end method

.method public setBorder(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mSetBorder:Z

    .line 143
    return-void
.end method

.method public setController(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .line 147
    return-void
.end method

.method public setImageFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Z)Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .locals 3
    .param p1, "filter"    # Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .param p2, "isStyle"    # Z

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 116
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 117
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-virtual {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setEndpoint(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V

    .line 118
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setName(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-virtual {p1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 120
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->add(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Z)V

    .line 121
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-virtual {v0, p2}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setStyleSmallFilterFlag(Z)V

    .line 122
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    return-object v0
.end method

.method public setNulfilter(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;)V
    .locals 0
    .param p1, "nullFilter"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mNullFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    .line 163
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    if-eq v0, p1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->invalidate()V

    .line 138
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    .line 139
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mShowTitle:Z

    .line 195
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->invalidate()V

    .line 196
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 362
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mType:I

    .line 363
    return-void
.end method

.method public showControls()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public showHires()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mShowTitle:Z

    return v0
.end method

.method public updateFilteredImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    .line 372
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->detect()V

    .line 382
    return-void
.end method

.method public updateGeometryFlags()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public updateImagePresets(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v0

    .line 221
    .local v0, "preset":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    if-nez v0, :cond_0

    .line 224
    :cond_0
    return-void
.end method
