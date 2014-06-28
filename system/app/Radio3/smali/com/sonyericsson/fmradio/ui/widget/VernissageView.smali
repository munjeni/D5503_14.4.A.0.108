.class public Lcom/sonyericsson/fmradio/ui/widget/VernissageView;
.super Landroid/view/View;
.source "VernissageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;,
        Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;,
        Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;,
        Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;
    }
.end annotation


# static fields
.field private static final DEBUG_FPS:Z = false

.field private static final GUIDE_WIDTH:I = 0x1

.field private static final ID_DYNAMICS_UPDATE:I = 0x0

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field private static final POSITION_TOLERANCE:F = 0.5f

.field private static final TILE_WIDTH:I = 0x3e8

.field private static final TOUCH_STATE_CLICK:I = 0x1

.field private static final TOUCH_STATE_RESTING:I = 0x0

.field private static final TOUCH_STATE_SCROLL:I = 0x2

.field private static final VELOCITY_TOLERANCE:F = 0.5f


# instance fields
.field private mAdapter:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;

.field private mDebugAverageFps:I

.field private mDebugFpsPaint:Landroid/graphics/Paint;

.field private mDebugTimeOfLastDraw:J

.field private mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

.field private mGuidePaint:Landroid/graphics/Paint;

.field private mHandler:Landroid/os/Handler;

.field private mListPosition:I

.field private mMinimumFlingVelocity:I

.field private mMovementSource:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

.field private mOnLayoutChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;

.field private mOnPositionChangedListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRebuildTiles:Z

.field private mScrollStart:I

.field private mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchStartX:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVirtualWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    iput v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchState:I

    .line 157
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mOnPositionChangedListeners:Ljava/util/LinkedList;

    .line 204
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 205
    .local v0, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mMinimumFlingVelocity:I

    .line 206
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 208
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mGuidePaint:Landroid/graphics/Paint;

    .line 209
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mGuidePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mGuidePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)Lcom/sonyericsson/fmradio/ui/widget/Dynamics;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    .prologue
    .line 58
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mScrollStart:I

    return v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/widget/VernissageView;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mScrollStart:I

    return p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    .prologue
    .line 58
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mListPosition:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/widget/VernissageView;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->scrollList(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private drawTiles(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 592
    iget v5, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVirtualWidth:I

    if-nez v5, :cond_3

    .line 594
    const/4 v2, 0x0

    .line 598
    .local v2, "start":I
    :goto_0
    if-gez v2, :cond_0

    .line 599
    iget v5, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVirtualWidth:I

    add-int/2addr v2, v5

    .line 601
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 603
    .local v4, "width":I
    iget-object v5, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;

    .line 604
    .local v3, "t":Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;
    iget v5, v3, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;->x:I

    sub-int v1, v5, v2

    .line 606
    .local v1, "left":I
    iget v5, v3, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;->width:I

    add-int/2addr v5, v1

    if-gez v5, :cond_2

    .line 607
    iget v5, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVirtualWidth:I

    add-int/2addr v1, v5

    .line 610
    :cond_2
    if-ge v1, v4, :cond_1

    .line 611
    iget-object v5, v3, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;->bitmap:Landroid/graphics/Bitmap;

    int-to-float v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 596
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "left":I
    .end local v2    # "start":I
    .end local v3    # "t":Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;
    .end local v4    # "width":I
    :cond_3
    iget v5, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mListPosition:I

    neg-int v5, v5

    iget v6, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVirtualWidth:I

    rem-int v2, v5, v6

    .restart local v2    # "start":I
    goto :goto_0

    .line 614
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v4    # "width":I
    :cond_4
    return-void
.end method

.method private endTouch(F)V
    .locals 5
    .param p1, "velocity"    # F

    .prologue
    const/4 v4, 0x0

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 375
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mMinimumFlingVelocity:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 376
    const/4 p1, 0x0

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    iget v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mListPosition:I

    int-to-float v1, v1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->setState(FFJ)V

    .line 385
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 389
    :cond_2
    iput v4, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchState:I

    .line 390
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->notifyOnPositionChangedListeners()V

    .line 391
    invoke-direct {p0, v4}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->notifyOnTouchState(Z)V

    .line 392
    return-void
.end method

.method private fillTile(Landroid/graphics/Canvas;II)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "bmWidth"    # I

    .prologue
    .line 561
    const/4 v4, 0x0

    .line 562
    .local v4, "i":I
    const/4 v1, 0x0

    .line 563
    .local v1, "cx":I
    iget-object v7, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;

    if-eqz v7, :cond_2

    .line 564
    iget-object v7, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;

    invoke-virtual {v7}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->getCount()I

    move-result v0

    .line 567
    .local v0, "childCount":I
    :goto_0
    iget-object v7, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;

    invoke-virtual {v7, v4}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->getWidth(I)I

    move-result v7

    add-int/2addr v7, v1

    if-ge v7, p2, :cond_0

    if-ge v4, v0, :cond_0

    .line 568
    iget-object v7, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;

    invoke-virtual {v7, v4}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->getWidth(I)I

    move-result v7

    add-int/2addr v1, v7

    .line 569
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 572
    :cond_0
    const/4 v5, 0x1

    .line 573
    .local v5, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/lit8 v3, v7, -0x2

    .line 576
    .local v3, "height":I
    :goto_1
    add-int v7, p2, p3

    if-ge v1, v7, :cond_2

    if-ge v4, v0, :cond_2

    .line 577
    iget-object v7, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;

    invoke-virtual {v7, v4}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 578
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;

    invoke-virtual {v7, v4}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->getWidth(I)I

    move-result v6

    .line 579
    .local v6, "w":I
    if-eqz v2, :cond_1

    .line 580
    sub-int v7, v1, p2

    sub-int v8, v1, p2

    add-int/2addr v8, v6

    invoke-virtual {v2, v7, v5, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 581
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 583
    :cond_1
    add-int/2addr v1, v6

    .line 584
    add-int/lit8 v4, v4, 0x1

    .line 585
    goto :goto_1

    .line 587
    .end local v0    # "childCount":I
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "height":I
    .end local v5    # "top":I
    .end local v6    # "w":I
    :cond_2
    return-void
.end method

.method private getVirtualWidth()I
    .locals 6

    .prologue
    .line 519
    const/4 v2, 0x0

    .line 520
    .local v2, "w":I
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;

    if-eqz v3, :cond_0

    .line 521
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->getCount()I

    move-result v0

    .line 522
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 523
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->getWidth(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Adapter is null"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    .line 528
    :cond_1
    return v2
.end method

.method private notifyOnPositionChangedListeners()V
    .locals 3

    .prologue
    .line 459
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mOnPositionChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;

    .line 460
    .local v1, "onPositionChangedListener":Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mMovementSource:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    invoke-interface {v1, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;->onPositionChanged(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;)V

    goto :goto_0

    .line 462
    .end local v1    # "onPositionChangedListener":Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;
    :cond_0
    return-void
.end method

.method private notifyOnTouchState(Z)V
    .locals 3
    .param p1, "isActive"    # Z

    .prologue
    .line 465
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mOnPositionChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;

    .line 466
    .local v1, "onPositionChangedListener":Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;
    invoke-interface {v1, p1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;->onTouchState(Z)V

    goto :goto_0

    .line 468
    .end local v1    # "onPositionChangedListener":Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;
    :cond_0
    return-void
.end method

.method private rebuildTiles()V
    .locals 8

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getVirtualWidth()I

    move-result v6

    iput v6, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVirtualWidth:I

    .line 534
    iget-object v6, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTiles:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 535
    iget-object v6, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;

    .line 536
    .local v4, "t":Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;
    iget-object v6, v4, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 539
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "t":Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTiles:Ljava/util/List;

    .line 542
    const/4 v5, 0x0

    .line 543
    .local v5, "x":I
    :goto_1
    iget v6, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVirtualWidth:I

    if-ge v5, v6, :cond_1

    .line 544
    iget v6, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVirtualWidth:I

    sub-int/2addr v6, v5

    const/16 v7, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 545
    .local v2, "curWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 546
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 548
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-direct {p0, v1, v5, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->fillTile(Landroid/graphics/Canvas;II)V

    .line 550
    new-instance v4, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;-><init>(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;)V

    .line 551
    .restart local v4    # "t":Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;
    iput-object v0, v4, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 552
    iput v5, v4, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;->x:I

    .line 553
    iput v2, v4, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;->width:I

    .line 554
    iget-object v6, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTiles:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    add-int/2addr v5, v2

    .line 557
    goto :goto_1

    .line 558
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v2    # "curWidth":I
    .end local v4    # "t":Lcom/sonyericsson/fmradio/ui/widget/VernissageView$Tile;
    :cond_1
    return-void
.end method

.method private scrollList(I)V
    .locals 1
    .param p1, "scrolledDistance"    # I

    .prologue
    .line 401
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mScrollStart:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->setPosition(I)V

    .line 402
    return-void
.end method

.method private startScroll()V
    .locals 2

    .prologue
    .line 474
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchState:I

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mMovementSource:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    sget-object v1, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;->ANIMATE_TO_POSITION:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    if-ne v0, v1, :cond_0

    .line 478
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    const/high16 v1, -0x31000000

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->setMinPosition(F)V

    .line 479
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    const/high16 v1, 0x4f000000

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->setMaxPosition(F)V

    .line 483
    :cond_0
    sget-object v0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;->TOUCH:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mMovementSource:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    .line 484
    return-void
.end method

.method private startTouch(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchStartX:I

    .line 349
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mListPosition:I

    iput v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mScrollStart:I

    .line 352
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 357
    iput v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchState:I

    .line 359
    invoke-direct {p0, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->notifyOnTouchState(Z)V

    .line 360
    return-void
.end method


# virtual methods
.method public addOnPositionChangedListener(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;)V
    .locals 1
    .param p1, "onPositionChangedListener"    # Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mOnPositionChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 443
    return-void
.end method

.method public animateToPosition(I)V
    .locals 6
    .param p1, "newListPosition"    # I

    .prologue
    const/4 v5, 0x0

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->setMinPosition(F)V

    .line 428
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->setMaxPosition(F)V

    .line 429
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    iget v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mListPosition:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->setState(FFJ)V

    .line 430
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 431
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 432
    sget-object v0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;->ANIMATE_TO_POSITION:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mMovementSource:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    .line 434
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 631
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 649
    return-void
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 215
    const/high16 v0, 0x3f800000

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mListPosition:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 220
    const/high16 v0, 0x3f800000

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAnimatingForTest()Z
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isTouchIdle()Z
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 618
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mRebuildTiles:Z

    if-eqz v0, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->rebuildTiles()V

    .line 620
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mRebuildTiles:Z

    .line 622
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->drawTiles(Landroid/graphics/Canvas;)V

    .line 624
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v5, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mGuidePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 625
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mGuidePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 627
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 321
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mOnLayoutChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mOnLayoutChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;

    invoke-interface {v0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;->onLayoutChanged()V

    .line 325
    :cond_0
    if-eqz p1, :cond_1

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mRebuildTiles:Z

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;

    if-nez v0, :cond_2

    .line 335
    :goto_0
    return-void

    .line 334
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 280
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;

    if-nez v2, :cond_1

    .line 281
    const/4 v1, 0x0

    .line 315
    :cond_0
    :goto_0
    return v1

    .line 284
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 312
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->endTouch(F)V

    goto :goto_0

    .line 286
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->startTouch(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 290
    :pswitch_1
    iget v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchState:I

    if-ne v2, v1, :cond_2

    .line 291
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->startScroll()V

    .line 293
    :cond_2
    iget v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchState:I

    if-ne v2, v3, :cond_0

    .line 294
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchStartX:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->scrollList(I)V

    goto :goto_0

    .line 302
    :pswitch_2
    const/4 v0, 0x0

    .line 303
    .local v0, "velocity":F
    iget v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchState:I

    if-ne v2, v3, :cond_3

    .line 304
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 305
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 306
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 308
    :cond_3
    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->endTouch(F)V

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeOnPositionChangedListener(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;)V
    .locals 1
    .param p1, "onPositionChangedListener"    # Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mOnPositionChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 452
    return-void
.end method

.method public setAdapter(Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mListPosition:I

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 227
    return-void
.end method

.method public setDynamics(Lcom/sonyericsson/fmradio/ui/widget/Dynamics;)V
    .locals 4
    .param p1, "dynamics"    # Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->getPosition()F

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->getVelocity()F

    move-result v1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->setState(FFJ)V

    .line 248
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 252
    new-instance v0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;-><init>(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;

    .line 276
    :cond_1
    return-void
.end method

.method public setOnLayoutChangedListener(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;)V
    .locals 0
    .param p1, "onLayoutChangedListener"    # Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mOnLayoutChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;

    .line 503
    return-void
.end method

.method public setPosition(I)V
    .locals 6
    .param p1, "newListPosition"    # I

    .prologue
    .line 410
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mListPosition:I

    if-eq p1, v0, :cond_0

    .line 411
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mListPosition:I

    .line 412
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->notifyOnPositionChangedListeners()V

    .line 414
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->onLayout(ZIIII)V

    .line 416
    :cond_0
    return-void
.end method

.method public stopFling()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    return-void
.end method
