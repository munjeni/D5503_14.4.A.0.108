.class public Lcom/sonyericsson/fmradio/ui/widget/StairView;
.super Landroid/view/ViewGroup;
.source "StairView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;,
        Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;
    }
.end annotation


# static fields
.field public static final CHILD_DEFAULT_OFFSET:I = -0x80000000

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private mOnTapListener:Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;

.field private mStairHeight:I

.field private mTapSlop:I

.field private mTotalScroll:I

.field private mWrap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mStairHeight:I

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mTapSlop:I

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/fmradio/ui/widget/StairView;)Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/widget/StairView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mOnTapListener:Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;

    return-object v0
.end method

.method private addViewInLayoutWithParams(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 353
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->generateDefaultLayoutParams()Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;

    move-result-object v0

    .line 355
    if-nez v0, :cond_0

    .line 356
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 360
    return-void
.end method

.method private createClusterWindow(Ljava/util/List;II)V
    .locals 2
    .param p2, "rawX"    # I
    .param p3, "rawY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v0, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    .line 545
    .local v0, "w":Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;
    new-instance v1, Lcom/sonyericsson/fmradio/ui/widget/StairView$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/ui/widget/StairView$1;-><init>(Lcom/sonyericsson/fmradio/ui/widget/StairView;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->setOnViewSelectedListener(Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow$OnViewSelectedListener;)V

    .line 554
    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/ui/widget/ClusterWindow;->show()V

    .line 555
    return-void
.end method

.method private findOverlapping(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "childRect"    # Landroid/graphics/Rect;

    .prologue
    .line 257
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 258
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 259
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;

    .line 262
    .local v2, "params":Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;
    iget-object v3, v2, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mPreStretchRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mPreStretchRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, p1}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->intersectWithWrap(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    const/4 v3, 0x1

    .line 267
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "params":Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;
    :goto_1
    return v3

    .line 257
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "params":Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "params":Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private findOverlappingWithStretch(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "childRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 271
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 272
    .local v0, "hitRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 273
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 274
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->intersectWithWrap(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    const/4 v2, 0x1

    .line 278
    :cond_0
    return v2

    .line 272
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getPreferredHeight(I)I
    .locals 6
    .param p1, "measureSpec"    # I

    .prologue
    .line 390
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 391
    .local v3, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 395
    .local v4, "specSize":I
    sparse-switch v3, :sswitch_data_0

    .line 409
    move v2, v4

    .line 413
    .local v2, "result":I
    :cond_0
    return v2

    .line 399
    .end local v2    # "result":I
    :sswitch_0
    const/4 v2, 0x0

    .line 400
    .restart local v2    # "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 401
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 402
    .local v0, "bottom":I
    if-ge v0, v4, :cond_1

    .line 403
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 400
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private intersectWithWrap(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "a"    # Landroid/graphics/Rect;
    .param p2, "b"    # Landroid/graphics/Rect;

    .prologue
    .line 286
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->intersects(IIII)Z

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


# virtual methods
.method public addChildView(Landroid/view/View;IIIZLjava/lang/String;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "offset"    # I
    .param p4, "stairLevel"    # I
    .param p5, "resolveCollisions"    # Z
    .param p6, "displayName"    # Ljava/lang/String;

    .prologue
    .line 310
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->addChildView(Landroid/view/View;IIIZLjava/lang/String;Ljava/lang/Integer;)V

    .line 311
    return-void
.end method

.method public addChildView(Landroid/view/View;IIIZLjava/lang/String;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "offset"    # I
    .param p4, "stairLevel"    # I
    .param p5, "resolveCollisions"    # Z
    .param p6, "displayName"    # Ljava/lang/String;
    .param p7, "displayColor"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, -0x1

    .line 333
    invoke-direct {p0, p1, v6}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->addViewInLayoutWithParams(Landroid/view/View;I)V

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;

    .line 336
    .local v7, "params":Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;
    iput p2, v7, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mPosition:I

    .line 337
    iput p3, v7, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mOffset:I

    .line 338
    iput p4, v7, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mStairLevel:I

    .line 339
    iput-boolean p5, v7, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mResolveCollisions:Z

    .line 340
    iput-object p6, v7, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mDisplayName:Ljava/lang/String;

    .line 341
    iput-object p7, v7, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mDisplayColor:Ljava/lang/Integer;

    .line 343
    iget v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v6, :cond_0

    .line 348
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 346
    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->setupChild(Landroid/view/View;IIIZI)V

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 428
    instance-of v0, p1, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;

    return v0
.end method

.method public dispatchTap(IILandroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 522
    const/4 v1, 0x0

    .line 523
    .local v1, "result":Z
    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mOnTapListener:Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;

    if-eqz v4, :cond_0

    .line 524
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 525
    .local v3, "targets":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Landroid/view/View;>;"
    iget v4, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mTapSlop:I

    invoke-virtual {p0, p1, p2, v4, v3}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->findChildrenCloseTo(IIILjava/util/SortedMap;)V

    .line 527
    invoke-interface {v3}, Ljava/util/SortedMap;->size()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 528
    invoke-interface {v3}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 529
    .local v2, "target":Landroid/view/View;
    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mOnTapListener:Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;

    invoke-interface {v4, v2}, Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;->onTapped(Landroid/view/View;)V

    .line 530
    const/4 v1, 0x1

    .line 540
    .end local v2    # "target":Landroid/view/View;
    .end local v3    # "targets":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Landroid/view/View;>;"
    :cond_0
    :goto_0
    return v1

    .line 531
    .restart local v3    # "targets":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Landroid/view/View;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/SortedMap;->size()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 534
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 535
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 536
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    aget v6, v0, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->createClusterWindow(Ljava/util/List;II)V

    .line 537
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public findChildrenCloseTo(IIILjava/util/SortedMap;)V
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "slop"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p4, "results":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Landroid/view/View;>;"
    new-instance v1, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v1, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 481
    .local v1, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 482
    .local v6, "width":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 483
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 484
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;

    .line 485
    .local v3, "params":Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;
    iget v7, v3, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mRight:I

    if-lt v7, v6, :cond_0

    iget v7, v3, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mLeft:I

    if-ge v7, v6, :cond_2

    :cond_0
    const/4 v5, 0x1

    .line 486
    .local v5, "visible":Z
    :goto_1
    iget-object v4, v3, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mPreStretchRect:Landroid/graphics/Rect;

    .line 488
    .local v4, "ps":Landroid/graphics/Rect;
    if-eqz v4, :cond_1

    if-nez v5, :cond_3

    .line 482
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 485
    .end local v4    # "ps":Landroid/graphics/Rect;
    .end local v5    # "visible":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 495
    .restart local v4    # "ps":Landroid/graphics/Rect;
    .restart local v5    # "visible":Z
    :cond_3
    iget v7, v3, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mLeft:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, v3, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mRight:I

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 496
    neg-int v7, p3

    neg-int v8, p3

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 497
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 499
    iget v7, v3, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mPosition:I

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p4, v7, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 502
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "params":Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;
    .end local v4    # "ps":Landroid/graphics/Rect;
    .end local v5    # "visible":Z
    :cond_4
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->generateDefaultLayoutParams()Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 418
    new-instance v0, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 433
    new-instance v0, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 423
    new-instance v0, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 91
    const/high16 v0, 0x3f800000

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 96
    const/high16 v0, 0x3f800000

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 366
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 367
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 368
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;

    .line 370
    .local v8, "lp":Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;
    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 371
    iget v2, v8, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mPosition:I

    iget v3, v8, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mOffset:I

    iget v4, v8, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mStairLevel:I

    iget-boolean v5, v8, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mResolveCollisions:Z

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->setupChild(Landroid/view/View;IIIZI)V

    .line 375
    :cond_0
    if-eqz p1, :cond_1

    .line 378
    iget v0, v8, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mLeft:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLeft(I)V

    .line 379
    iget v0, v8, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mRight:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setRight(I)V

    .line 366
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 382
    .end local v1    # "child":Landroid/view/View;
    .end local v8    # "lp":Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 385
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->getDefaultSize(II)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->getPreferredHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 387
    return-void
.end method

.method public scroll(I)V
    .locals 13
    .param p1, "dx"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 128
    iget v12, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mTotalScroll:I

    add-int/2addr v12, p1

    iput v12, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mTotalScroll:I

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 131
    .local v9, "width":I
    div-int/lit8 v0, v9, 0x2

    .line 132
    .local v0, "center":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 134
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_9

    .line 135
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;

    .line 139
    .local v5, "params":Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;
    iget v4, v5, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mLeft:I

    .line 140
    .local v4, "l":I
    iget v6, v5, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mRight:I

    .line 142
    .local v6, "r":I
    if-lt v6, v9, :cond_0

    if-ge v4, v9, :cond_5

    :cond_0
    move v8, v11

    .line 144
    .local v8, "visBefore":Z
    :goto_1
    add-int/2addr v4, p1

    .line 145
    add-int/2addr v6, p1

    .line 146
    iget v12, v5, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mLeft:I

    add-int/2addr v12, p1

    iput v12, v5, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mLeft:I

    .line 147
    iget v12, v5, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mRight:I

    add-int/2addr v12, p1

    iput v12, v5, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mRight:I

    .line 152
    iget v12, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    if-le v6, v12, :cond_6

    .line 153
    iget v12, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    sub-int/2addr v6, v12

    .line 154
    iget v12, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    sub-int/2addr v4, v12

    .line 160
    :cond_1
    :goto_2
    if-le v6, v9, :cond_2

    if-gt v4, v9, :cond_7

    :cond_2
    move v7, v11

    .line 162
    .local v7, "visAfter":Z
    :goto_3
    iput v4, v5, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mLeft:I

    .line 163
    iput v6, v5, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mRight:I

    .line 166
    if-nez v8, :cond_3

    if-eqz v7, :cond_4

    .line 167
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int v12, v4, v12

    invoke-virtual {v1, v12}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 168
    if-gt v4, v0, :cond_8

    if-lt v6, v0, :cond_8

    move v12, v11

    :goto_4
    invoke-virtual {v1, v12}, Landroid/view/View;->setSelected(Z)V

    .line 134
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v7    # "visAfter":Z
    .end local v8    # "visBefore":Z
    :cond_5
    move v8, v10

    .line 142
    goto :goto_1

    .line 155
    .restart local v8    # "visBefore":Z
    :cond_6
    if-gez v6, :cond_1

    .line 156
    iget v12, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    add-int/2addr v6, v12

    .line 157
    iget v12, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    add-int/2addr v4, v12

    goto :goto_2

    :cond_7
    move v7, v10

    .line 160
    goto :goto_3

    .restart local v7    # "visAfter":Z
    :cond_8
    move v12, v10

    .line 168
    goto :goto_4

    .line 173
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "l":I
    .end local v5    # "params":Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;
    .end local v6    # "r":I
    .end local v7    # "visAfter":Z
    .end local v8    # "visBefore":Z
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 174
    return-void
.end method

.method public setOnTapListener(Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mOnTapListener:Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;

    .line 519
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 182
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mTotalScroll:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->scroll(I)V

    .line 183
    return-void
.end method

.method public setStairHeight(I)V
    .locals 0
    .param p1, "stairHeight"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mStairHeight:I

    .line 109
    return-void
.end method

.method public setWrap(I)V
    .locals 0
    .param p1, "wrap"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    .line 120
    return-void
.end method

.method public setupChild(Landroid/view/View;IIIZI)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "offset"    # I
    .param p4, "stairLevel"    # I
    .param p5, "resolveCollisions"    # Z
    .param p6, "fixedHeight"    # I

    .prologue
    .line 190
    const/4 v7, -0x1

    move/from16 v0, p6

    if-eq v0, v7, :cond_1

    .line 191
    const/high16 v7, 0x40000000

    or-int v3, v7, p6

    .line 198
    .local v3, "heightMeasureSpec":I
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v3}, Landroid/view/View;->measure(II)V

    .line 200
    const/high16 v7, -0x80000000

    if-ne p3, v7, :cond_0

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 p3, v7, 0x2

    .line 208
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 209
    .local v2, "childRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 210
    .local v6, "w":I
    sub-int v7, p2, p3

    iget v8, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mTotalScroll:I

    add-int v1, v7, v8

    .line 211
    .local v1, "childLeft":I
    :goto_1
    neg-int v7, v6

    if-ge v1, v7, :cond_3

    .line 212
    iget v7, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    add-int/2addr v1, v7

    goto :goto_1

    .line 192
    .end local v1    # "childLeft":I
    .end local v2    # "childRect":Landroid/graphics/Rect;
    .end local v3    # "heightMeasureSpec":I
    .end local v6    # "w":I
    :cond_1
    iget v7, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mStairHeight:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 193
    const/high16 v7, -0x80000000

    iget v8, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mStairHeight:I

    or-int v3, v7, v8

    .restart local v3    # "heightMeasureSpec":I
    goto :goto_0

    .line 195
    .end local v3    # "heightMeasureSpec":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "heightMeasureSpec":I
    goto :goto_0

    .line 214
    .restart local v1    # "childLeft":I
    .restart local v2    # "childRect":Landroid/graphics/Rect;
    .restart local v6    # "w":I
    :cond_3
    :goto_2
    add-int v7, v1, v6

    iget v8, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    if-le v7, v8, :cond_4

    .line 215
    iget v7, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    sub-int/2addr v1, v7

    goto :goto_2

    .line 217
    :cond_4
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 218
    iget v7, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v2, Landroid/graphics/Rect;->right:I

    .line 220
    if-eqz p5, :cond_5

    iget v7, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mStairHeight:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 223
    iget v7, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mStairHeight:I

    mul-int/2addr v7, p4

    iput v7, v2, Landroid/graphics/Rect;->top:I

    .line 224
    iget v7, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 225
    :goto_3
    invoke-direct {p0, v2}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->findOverlapping(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 226
    const/4 v7, 0x0

    iget v8, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mStairHeight:I

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 229
    :cond_5
    const/4 v7, 0x0

    iput v7, v2, Landroid/graphics/Rect;->top:I

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 234
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;

    .line 235
    .local v4, "params":Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v7, v4, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mPreStretchRect:Landroid/graphics/Rect;

    .line 239
    const/high16 v7, 0x40000000

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    or-int v3, v7, v8

    .line 240
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v3}, Landroid/view/View;->measure(II)V

    .line 246
    const v7, 0x7f0c001d

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 247
    .local v5, "text":Landroid/view/View;
    if-eqz v5, :cond_7

    invoke-direct {p0, v2}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->findOverlappingWithStretch(Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 248
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    :cond_7
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iput v7, v4, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mLeft:I

    .line 252
    iget v7, v2, Landroid/graphics/Rect;->right:I

    iput v7, v4, Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;->mRight:I

    .line 253
    iget v7, v2, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 254
    return-void
.end method
