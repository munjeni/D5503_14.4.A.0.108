.class public Lcom/android/phone/SomcSlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SomcSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcSlidingDrawer$1;,
        Lcom/android/phone/SomcSlidingDrawer$SlidingHandler;,
        Lcom/android/phone/SomcSlidingDrawer$OnDrawerCloseListener;,
        Lcom/android/phone/SomcSlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# instance fields
.field private mAllowFlingOpen:Z

.field private mAllowSingleTap:Z

.field private mAllowSingleTapClose:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Lcom/android/phone/SomcSlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/android/phone/SomcSlidingDrawer$OnDrawerOpenListener;

.field private final mTapThreshold:I

.field private mTipsEnabled:Z

.field private mTipsShown:Z

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/SomcSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v10, 0x447a0000

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/high16 v7, 0x3f000000

    const/4 v6, 0x0

    .line 192
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 115
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 129
    new-instance v4, Lcom/android/phone/SomcSlidingDrawer$SlidingHandler;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/phone/SomcSlidingDrawer$SlidingHandler;-><init>(Lcom/android/phone/SomcSlidingDrawer;Lcom/android/phone/SomcSlidingDrawer$1;)V

    iput-object v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandler:Landroid/os/Handler;

    .line 193
    sget-object v4, Lcom/android/phone/R$styleable;->SomcSlidingDrawer:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mBottomOffset:I

    .line 196
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    .line 197
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mAllowSingleTap:Z

    .line 198
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mAllowSingleTapClose:Z

    .line 199
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mAllowFlingOpen:Z

    .line 200
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mTipsEnabled:Z

    .line 201
    iput-boolean v8, p0, Lcom/android/phone/SomcSlidingDrawer;->mTipsShown:Z

    .line 203
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 204
    .local v3, "handleId":I
    const/4 v1, 0x0

    .line 206
    .local v1, "contentId":I
    if-nez v3, :cond_0

    .line 207
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v4

    .line 211
    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 212
    if-nez v1, :cond_1

    .line 213
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The content attribute is required and must refer to a valid child."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 217
    :cond_1
    if-ne v3, v1, :cond_2

    .line 218
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The content and handle attributes must refer to different children."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    iput v3, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandleId:I

    .line 225
    iput v1, p0, Lcom/android/phone/SomcSlidingDrawer;->mContentId:I

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 228
    .local v2, "density":F
    const/high16 v4, 0x40c00000

    mul-float/2addr v4, v2

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mTapThreshold:I

    .line 229
    const/high16 v4, 0x42c80000

    mul-float/2addr v4, v2

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumTapVelocity:I

    .line 230
    const/high16 v4, 0x43160000

    mul-float/2addr v4, v2

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumMinorVelocity:I

    .line 231
    const/high16 v4, 0x43480000

    mul-float/2addr v4, v2

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumMajorVelocity:I

    .line 232
    mul-float v4, v10, v2

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumAcceleration:I

    .line 233
    mul-float v4, v10, v2

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mVelocityUnits:I

    .line 235
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 236
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/SomcSlidingDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcSlidingDrawer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/android/phone/SomcSlidingDrawer;->prepareTracking(I)V

    .line 449
    iget v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/phone/SomcSlidingDrawer;->performFling(IFZ)V

    .line 450
    return-void
.end method

.method private animateOpen(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/android/phone/SomcSlidingDrawer;->prepareTracking(I)V

    .line 454
    iget v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/phone/SomcSlidingDrawer;->performFling(IFZ)V

    .line 455
    return-void
.end method

.method private closeDrawer()V
    .locals 2

    .prologue
    .line 679
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/android/phone/SomcSlidingDrawer;->moveHandle(I)V

    .line 680
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 683
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mExpanded:Z

    .line 688
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/phone/SomcSlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/phone/SomcSlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/android/phone/SomcSlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 604
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimating:Z

    if-nez v0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 606
    :cond_0
    iget v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/android/phone/SomcSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 607
    iput-boolean v3, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimating:Z

    .line 608
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingDrawer;->closeDrawer()V

    .line 622
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingDrawer;->incrementAnimation()V

    goto :goto_0

    .line 609
    :cond_1
    iget v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 610
    iput-boolean v3, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimating:Z

    .line 611
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingDrawer;->openDrawer()V

    goto :goto_1

    .line 613
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/android/phone/SomcSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_3

    .line 615
    iget v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimationPosition:F

    .line 617
    :cond_3
    iget v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcSlidingDrawer;->moveHandle(I)V

    .line 618
    iget-wide v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mCurrentAnimationTime:J

    .line 619
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private incrementAnimation()V
    .locals 8

    .prologue
    .line 626
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 627
    .local v1, "now":J
    iget-wide v6, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a0000

    div-float v4, v6, v7

    .line 628
    .local v4, "t":F
    iget v3, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimationPosition:F

    .line 629
    .local v3, "position":F
    iget v5, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimatedVelocity:F

    .line 630
    .local v5, "v":F
    iget v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimatedAcceleration:F

    .line 631
    .local v0, "a":F
    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f000000

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimationPosition:F

    .line 632
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimatedVelocity:F

    .line 633
    iput-wide v1, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimationLastTime:J

    .line 634
    return-void
.end method

.method private moveHandle(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    .line 536
    iget-object v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandle:Landroid/view/View;

    .line 538
    .local v2, "handle":Landroid/view/View;
    const/16 v5, -0x2711

    if-ne p1, v5, :cond_0

    .line 539
    iget v5, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 540
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 567
    :goto_0
    return-void

    .line 541
    :cond_0
    const/16 v5, -0x2712

    if-ne p1, v5, :cond_1

    .line 542
    iget v5, p0, Lcom/android/phone/SomcSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 544
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 546
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 547
    .local v4, "top":I
    sub-int v0, p1, v4

    .line 548
    .local v0, "deltaY":I
    iget v5, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    if-ge p1, v5, :cond_3

    .line 549
    iget v5, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    sub-int v0, v5, v4

    .line 553
    :cond_2
    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 555
    iget-object v1, p0, Lcom/android/phone/SomcSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 556
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/phone/SomcSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 558
    .local v3, "region":Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 559
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 561
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v0

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v0

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    .line 562
    const/4 v5, 0x0

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    .line 565
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 550
    .end local v1    # "frame":Landroid/graphics/Rect;
    .end local v3    # "region":Landroid/graphics/Rect;
    :cond_3
    iget v5, p0, Lcom/android/phone/SomcSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    if-le v0, v5, :cond_2

    .line 551
    iget v5, p0, Lcom/android/phone/SomcSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v5, v6

    sub-int v0, v5, v4

    goto :goto_1
.end method

.method private openDrawer()V
    .locals 2

    .prologue
    .line 694
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/android/phone/SomcSlidingDrawer;->moveHandle(I)V

    .line 695
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 697
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mExpanded:Z

    .line 703
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/phone/SomcSlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/phone/SomcSlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/android/phone/SomcSlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method private performCloseOrFling(IF)V
    .locals 1
    .param p1, "top"    # I
    .param p2, "velocity"    # F

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mAllowSingleTapClose:Z

    if-eqz v0, :cond_0

    .line 441
    invoke-direct {p0, p1}, Lcom/android/phone/SomcSlidingDrawer;->animateClose(I)V

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/SomcSlidingDrawer;->performFling(IFZ)V

    goto :goto_0
.end method

.method private performFling(IFZ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "always"    # Z

    .prologue
    const/16 v6, 0x3e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 458
    int-to-float v2, p1

    iput v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimationPosition:F

    .line 459
    iput p2, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimatedVelocity:F

    .line 461
    iget-boolean v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_3

    .line 462
    if-nez p3, :cond_0

    iget v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    iget v3, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandleHeight:I

    add-int/2addr v2, v3

    if-le p1, v2, :cond_2

    iget v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2

    .line 466
    :cond_0
    iget v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimatedAcceleration:F

    .line 467
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 468
    iput v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimatedVelocity:F

    .line 502
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 503
    .local v0, "now":J
    iput-wide v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimationLastTime:J

    .line 504
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mCurrentAnimationTime:J

    .line 505
    iput-boolean v5, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimating:Z

    .line 506
    iget-object v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 507
    iget-object v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 508
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingDrawer;->stopTracking()V

    .line 509
    return-void

    .line 473
    .end local v0    # "now":J
    :cond_2
    iget v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimatedAcceleration:F

    .line 474
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 475
    iput v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_0

    .line 479
    :cond_3
    if-nez p3, :cond_5

    iget v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mAllowFlingOpen:Z

    if-nez v2, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    if-ge p1, v2, :cond_6

    iget v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_6

    .line 483
    :cond_5
    iget v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimatedAcceleration:F

    .line 484
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 485
    iput v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_0

    .line 490
    :cond_6
    iget v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimatedAcceleration:F

    .line 491
    cmpg-float v2, p2, v4

    if-gez v2, :cond_7

    .line 492
    iput v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimatedVelocity:F

    .line 494
    :cond_7
    iget-boolean v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mTipsEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mTipsShown:Z

    if-eqz v2, :cond_1

    .line 495
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b010e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 497
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mTipsShown:Z

    goto/16 :goto_0
.end method

.method private prepareContent()V
    .locals 8

    .prologue
    const/high16 v5, 0x40000000

    .line 570
    iget-boolean v3, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimating:Z

    if-eqz v3, :cond_0

    .line 591
    :goto_0
    return-void

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SomcSlidingDrawer;->mContent:Landroid/view/View;

    .line 577
    .local v1, "content":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 578
    iget v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandleHeight:I

    .line 579
    .local v0, "childHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    sub-int v2, v3, v4

    .line 580
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 582
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    add-int/2addr v4, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 587
    .end local v0    # "childHeight":I
    .end local v2    # "height":I
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 590
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private prepareTracking(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/16 v7, 0x3e8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 512
    iput-boolean v3, p0, Lcom/android/phone/SomcSlidingDrawer;->mTracking:Z

    .line 513
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/SomcSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 514
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_0

    move v2, v3

    .line 515
    .local v2, "opening":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 516
    iget v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v4, v4

    iput v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimatedAcceleration:F

    .line 517
    iget v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v4, v4

    iput v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimatedVelocity:F

    .line 518
    iget v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimationPosition:F

    .line 519
    iget v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimationPosition:F

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/android/phone/SomcSlidingDrawer;->moveHandle(I)V

    .line 520
    iput-boolean v3, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimating:Z

    .line 521
    iget-object v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 522
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 523
    .local v0, "now":J
    iput-wide v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimationLastTime:J

    .line 524
    const-wide/16 v4, 0x10

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mCurrentAnimationTime:J

    .line 525
    iput-boolean v3, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimating:Z

    .line 533
    .end local v0    # "now":J
    :goto_1
    return-void

    .end local v2    # "opening":Z
    :cond_0
    move v2, v4

    .line 514
    goto :goto_0

    .line 527
    .restart local v2    # "opening":Z
    :cond_1
    iget-boolean v3, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimating:Z

    if-eqz v3, :cond_2

    .line 528
    iput-boolean v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimating:Z

    .line 529
    iget-object v3, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/SomcSlidingDrawer;->moveHandle(I)V

    goto :goto_1
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 594
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 595
    iput-boolean v1, p0, Lcom/android/phone/SomcSlidingDrawer;->mTracking:Z

    .line 597
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 601
    :cond_0
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 1

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingDrawer;->prepareContent()V

    .line 660
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcSlidingDrawer;->animateClose(I)V

    .line 661
    return-void
.end method

.method public animateOpen()V
    .locals 1

    .prologue
    .line 673
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingDrawer;->prepareContent()V

    .line 674
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcSlidingDrawer;->animateOpen(I)V

    .line 675
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 676
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingDrawer;->closeDrawer()V

    .line 645
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 646
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 647
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 287
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v1

    .line 288
    .local v1, "drawingTime":J
    iget-object v3, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandle:Landroid/view/View;

    .line 290
    .local v3, "handle":Landroid/view/View;
    invoke-virtual {p0, p1, v3, v1, v2}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 292
    iget-boolean v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mTracking:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_3

    .line 293
    :cond_0
    iget-object v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 294
    .local v0, "cache":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 295
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v6, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 305
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 297
    .restart local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 298
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 299
    iget-object v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v4, v1, v2}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 300
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 302
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_3
    iget-boolean v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mExpanded:Z

    if-eqz v4, :cond_1

    .line 303
    iget-object v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v4, v1, v2}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public getTopOffset()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mExpanded:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 248
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 249
    iget v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandle:Landroid/view/View;

    .line 250
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    iget v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mContent:Landroid/view/View;

    .line 256
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 338
    iget-boolean v8, p0, Lcom/android/phone/SomcSlidingDrawer;->mLocked:Z

    if-eqz v8, :cond_1

    .line 369
    :cond_0
    :goto_0
    return v6

    .line 342
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 344
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 345
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 347
    .local v5, "y":F
    iget-object v1, p0, Lcom/android/phone/SomcSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 348
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandle:Landroid/view/View;

    .line 350
    .local v2, "handle":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 351
    iget-boolean v8, p0, Lcom/android/phone/SomcSlidingDrawer;->mTracking:Z

    if-nez v8, :cond_2

    float-to-int v8, v4

    float-to-int v9, v5

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 355
    :cond_2
    if-nez v0, :cond_3

    .line 356
    iput-boolean v7, p0, Lcom/android/phone/SomcSlidingDrawer;->mTracking:Z

    .line 358
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 360
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingDrawer;->prepareContent()V

    .line 362
    iget-object v6, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v3

    .line 363
    .local v3, "top":I
    float-to-int v6, v5

    sub-int/2addr v6, v3

    iput v6, p0, Lcom/android/phone/SomcSlidingDrawer;->mTouchDelta:I

    .line 364
    invoke-direct {p0, v3}, Lcom/android/phone/SomcSlidingDrawer;->prepareTracking(I)V

    .line 366
    iget-object v6, p0, Lcom/android/phone/SomcSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .end local v3    # "top":I
    :cond_3
    move v6, v7

    .line 369
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 309
    iget-boolean v8, p0, Lcom/android/phone/SomcSlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    .line 334
    :goto_0
    return-void

    .line 313
    :cond_0
    sub-int v7, p4, p2

    .line 314
    .local v7, "width":I
    sub-int v6, p5, p3

    .line 316
    .local v6, "height":I
    iget-object v5, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandle:Landroid/view/View;

    .line 318
    .local v5, "handle":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 319
    .local v3, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 324
    .local v0, "childHeight":I
    iget-object v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mContent:Landroid/view/View;

    .line 326
    .local v4, "content":Landroid/view/View;
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 327
    .local v1, "childLeft":I
    iget-boolean v8, p0, Lcom/android/phone/SomcSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    iget v2, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    .line 329
    .local v2, "childTop":I
    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 332
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 333
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandleHeight:I

    goto :goto_0

    .line 327
    .end local v2    # "childTop":I
    :cond_1
    sub-int v8, v6, v0

    iget v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mBottomOffset:I

    add-int v2, v8, v9

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000

    .line 265
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 266
    .local v4, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 268
    .local v5, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 269
    .local v2, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 271
    .local v3, "heightSpecSize":I
    if-eqz v4, :cond_0

    if-nez v2, :cond_1

    .line 272
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "SomcSlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandle:Landroid/view/View;

    .line 276
    .local v0, "handle":Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 278
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int v6, v3, v6

    iget v7, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    sub-int v1, v6, v7

    .line 279
    .local v1, "height":I
    iget-object v6, p0, Lcom/android/phone/SomcSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 282
    invoke-virtual {p0, v5, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 283
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 374
    iget-boolean v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_0

    .line 436
    :goto_0
    return v8

    .line 378
    :cond_0
    iget-boolean v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mTracking:Z

    if-eqz v9, :cond_1

    .line 379
    iget-object v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 381
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 436
    .end local v0    # "action":I
    :cond_1
    :goto_1
    iget-boolean v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mTracking:Z

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimating:Z

    if-nez v9, :cond_2

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    move v7, v8

    :cond_3
    move v8, v7

    goto :goto_0

    .line 383
    .restart local v0    # "action":I
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    iget v10, p0, Lcom/android/phone/SomcSlidingDrawer;->mTouchDelta:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/android/phone/SomcSlidingDrawer;->moveHandle(I)V

    goto :goto_1

    .line 387
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/SomcSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 388
    .local v4, "velocityTracker":Landroid/view/VelocityTracker;
    iget v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v4, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 390
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    .line 391
    .local v6, "yVelocity":F
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    .line 394
    .local v5, "xVelocity":F
    cmpg-float v9, v6, v10

    if-gez v9, :cond_9

    move v1, v8

    .line 395
    .local v1, "negative":Z
    :goto_2
    cmpg-float v9, v5, v10

    if-gez v9, :cond_4

    .line 396
    neg-float v5, v5

    .line 398
    :cond_4
    iget v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v5, v9

    if-lez v9, :cond_5

    .line 399
    iget v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v5, v9

    .line 402
    :cond_5
    float-to-double v9, v5

    float-to-double v11, v6

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v3, v9

    .line 403
    .local v3, "velocity":F
    if-eqz v1, :cond_6

    .line 404
    neg-float v3, v3

    .line 407
    :cond_6
    iget-object v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    .line 409
    .local v2, "top":I
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/android/phone/SomcSlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_d

    .line 410
    iget-boolean v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_7

    iget v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v2, v9, :cond_8

    :cond_7
    iget-boolean v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_c

    iget v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/phone/SomcSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-le v2, v9, :cond_c

    .line 414
    :cond_8
    iget-boolean v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mAllowSingleTap:Z

    if-eqz v9, :cond_b

    .line 415
    invoke-virtual {p0, v7}, Landroid/view/View;->playSoundEffect(I)V

    .line 417
    iget-boolean v9, p0, Lcom/android/phone/SomcSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_a

    .line 418
    invoke-direct {p0, v2}, Lcom/android/phone/SomcSlidingDrawer;->animateClose(I)V

    goto/16 :goto_1

    .end local v1    # "negative":Z
    .end local v2    # "top":I
    .end local v3    # "velocity":F
    :cond_9
    move v1, v7

    .line 394
    goto :goto_2

    .line 420
    .restart local v1    # "negative":Z
    .restart local v2    # "top":I
    .restart local v3    # "velocity":F
    :cond_a
    invoke-direct {p0, v2}, Lcom/android/phone/SomcSlidingDrawer;->animateOpen(I)V

    goto/16 :goto_1

    .line 423
    :cond_b
    invoke-direct {p0, v2, v3}, Lcom/android/phone/SomcSlidingDrawer;->performCloseOrFling(IF)V

    goto/16 :goto_1

    .line 426
    :cond_c
    invoke-direct {p0, v2, v3}, Lcom/android/phone/SomcSlidingDrawer;->performCloseOrFling(IF)V

    goto/16 :goto_1

    .line 429
    :cond_d
    invoke-direct {p0, v2, v3}, Lcom/android/phone/SomcSlidingDrawer;->performCloseOrFling(IF)V

    goto/16 :goto_1

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetStatus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 736
    iput-boolean v1, p0, Lcom/android/phone/SomcSlidingDrawer;->mExpanded:Z

    .line 737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mTipsShown:Z

    .line 738
    iput-boolean v1, p0, Lcom/android/phone/SomcSlidingDrawer;->mTracking:Z

    .line 739
    iput v1, p0, Lcom/android/phone/SomcSlidingDrawer;->mTouchDelta:I

    .line 740
    iput-boolean v1, p0, Lcom/android/phone/SomcSlidingDrawer;->mAnimating:Z

    .line 741
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 742
    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/android/phone/SomcSlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .param p1, "onDrawerCloseListener"    # Lcom/android/phone/SomcSlidingDrawer$OnDrawerCloseListener;

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/phone/SomcSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/phone/SomcSlidingDrawer$OnDrawerCloseListener;

    .line 724
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/android/phone/SomcSlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .param p1, "onDrawerOpenListener"    # Lcom/android/phone/SomcSlidingDrawer$OnDrawerOpenListener;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/phone/SomcSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/phone/SomcSlidingDrawer$OnDrawerOpenListener;

    .line 715
    return-void
.end method

.method public setTopOffset(I)V
    .locals 0
    .param p1, "topOffset"    # I

    .prologue
    .line 239
    iput p1, p0, Lcom/android/phone/SomcSlidingDrawer;->mTopOffset:I

    .line 240
    return-void
.end method
